//------------SUPPLY LINK FOR MEDICAL VENDORS---------------

/obj/structure/medical_supply_link
	name = "medilink supply port"
	desc = "A complex network of pipes and machinery, linking to large storage systems below the deck. Medical vendors linked to this port will be able to infinitely restock supplies."
	icon = 'icons/effects/warning_stripes.dmi'
	icon_state = "medlink_unclamped"
	var/base_state = "medlink"
	anchored = TRUE
	density = FALSE
	unslashable = TRUE
	unacidable = TRUE
	plane = FLOOR_PLANE
	layer = ABOVE_TURF_LAYER //It's the floor, man

/obj/structure/medical_supply_link/ex_act(severity, direction)
	return FALSE

/obj/structure/medical_supply_link/Initialize()
	. = ..()
	RegisterSignal(src, COMSIG_STRUCTURE_WRENCHED, PROC_REF(do_clamp_animation))
	RegisterSignal(src, COMSIG_STRUCTURE_UNWRENCHED, PROC_REF(do_unclamp_animation))
	update_icon()

/// Performs the clamping animation when a structure is anchored in our loc
/obj/structure/medical_supply_link/proc/do_clamp_animation()
	SIGNAL_HANDLER
	flick("[base_state]_clamping", src)
	addtimer(CALLBACK(src, PROC_REF(update_icon), 2.6 SECONDS))
	update_icon()

/// Performs the unclamping animation when a structure is unanchored in our loc
/obj/structure/medical_supply_link/proc/do_unclamp_animation()
	SIGNAL_HANDLER
	flick("[base_state]_unclamping", src)
	addtimer(CALLBACK(src, PROC_REF(update_icon), 2.6 SECONDS))
	update_icon()

/obj/structure/medical_supply_link/update_icon()
	var/obj/structure/machinery/cm_vending/sorted/medical/vendor = locate() in loc
	if(vendor && vendor.anchored)
		icon_state = "[base_state]_clamped"
	else
		icon_state = "[base_state]_unclamped"

// --- Green
/obj/structure/medical_supply_link/green
	icon_state = "medlink_green_unclamped"
	base_state = "medlink_green"

//------------SORTED MEDICAL VENDORS---------------

/obj/structure/machinery/cm_vending/sorted/medical
	name = "\improper Wey-Med Plus"
	desc = "Medical Pharmaceutical dispenser. Provided by Wey-Yu Pharmaceuticals Division(TM)."
	icon_state = "med"
	req_access = list(ACCESS_MARINE_MEDBAY)

	unacidable = TRUE
	unslashable = FALSE
	wrenchable = TRUE
	hackable = TRUE

	vendor_theme = VENDOR_THEME_COMPANY
	vend_delay = 0.5 SECONDS

	/// sets vendor to require a medlink to be able to resupply
	var/requires_supply_link_port = TRUE

	var/datum/health_scan/last_health_display

	var/healthscan = TRUE
	var/list/chem_refill = list(
		/obj/item/reagent_container/hypospray/autoinjector/bicaridine,
		/obj/item/reagent_container/hypospray/autoinjector/dexalinp,
		/obj/item/reagent_container/hypospray/autoinjector/adrenaline,,
		/obj/item/reagent_container/hypospray/autoinjector/inaprovaline,
		/obj/item/reagent_container/hypospray/autoinjector/kelotane,
		/obj/item/reagent_container/hypospray/autoinjector/oxycodone,
		/obj/item/reagent_container/hypospray/autoinjector/tramadol,
		/obj/item/reagent_container/hypospray/autoinjector/tricord,
		/obj/item/reagent_container/hypospray/autoinjector/skillless,
		/obj/item/reagent_container/hypospray/autoinjector/skillless/tramadol,

		/obj/item/reagent_container/hypospray/autoinjector/bicaridine/skillless,
		/obj/item/reagent_container/hypospray/autoinjector/kelotane/skillless,
		/obj/item/reagent_container/hypospray/autoinjector/tramadol/skillless,
		/obj/item/reagent_container/hypospray/autoinjector/tricord/skillless,

		/obj/item/reagent_container/glass/bottle/bicaridine,
		/obj/item/reagent_container/glass/bottle/antitoxin,
		/obj/item/reagent_container/glass/bottle/dexalin,
		/obj/item/reagent_container/glass/bottle/inaprovaline,
		/obj/item/reagent_container/glass/bottle/kelotane,
		/obj/item/reagent_container/glass/bottle/oxycodone,
		/obj/item/reagent_container/glass/bottle/peridaxon,
		/obj/item/reagent_container/glass/bottle/tramadol,
		)
	var/list/stack_refill = list(
		/obj/item/stack/medical/advanced/ointment,
		/obj/item/stack/medical/advanced/bruise_pack,
		/obj/item/stack/medical/ointment,
		/obj/item/stack/medical/bruise_pack,
		/obj/item/stack/medical/splint
		)

/obj/structure/machinery/cm_vending/sorted/medical/Destroy()
	QDEL_NULL(last_health_display)
	. = ..()

/obj/structure/machinery/cm_vending/sorted/medical/get_examine_text(mob/living/carbon/human/user)
	. = ..()
	if(healthscan)
		. += SPAN_NOTICE("The [src.name] offers assisted medical scan, for ease of usage with minimal training. Present the target in front of the scanner to scan.")

/// checks if there is a supply link in our location and we are anchored to it
/obj/structure/machinery/cm_vending/sorted/medical/proc/get_supply_link()
	if(!anchored)
		return FALSE
	var/obj/structure/medical_supply_link/linkpoint = locate() in loc
	if(!linkpoint)
		return FALSE
	return TRUE

/obj/structure/machinery/cm_vending/sorted/medical/additional_restock_checks(obj/item/item_to_stock, mob/user)
	if(istype(item_to_stock, /obj/item/reagent_container/hypospray/autoinjector) || istype(item_to_stock, /obj/item/reagent_container/glass/bottle))
		if(requires_supply_link_port && !get_supply_link())
			var/obj/item/reagent_container/container = item_to_stock
			if(container.reagents.total_volume < container.reagents.maximum_volume)
				if(user)
					to_chat(user, SPAN_WARNING("[src] makes a buzzing noise as it rejects [container.name]. Looks like this vendor cannot refill these without a connected supply link."))
					playsound(src, 'sound/machines/buzz-sigh.ogg', 15, TRUE)
				return FALSE

	//stacked items handling if the vendor cannot restock partial stacks
	else if(istype(item_to_stock, /obj/item/stack))
		if(requires_supply_link_port && !get_supply_link())
			var/obj/item/stack/restock_stack = item_to_stock
			if(restock_stack.amount < restock_stack.max_amount) // if the stack is not full
				if(user)
					to_chat(user, SPAN_WARNING("[src] makes a buzzing noise as it rejects [restock_stack]. Looks like this vendor cannot restock these without a connected supply link."))
					playsound(src, 'sound/machines/buzz-sigh.ogg', 15, TRUE)
				return FALSE
	return TRUE

/obj/structure/machinery/cm_vending/sorted/medical/attackby(obj/item/I, mob/user)
	if(stat == WORKING && LAZYLEN(chem_refill) && (istype(I, /obj/item/reagent_container/hypospray/autoinjector) || istype(I, /obj/item/reagent_container/glass/bottle))) // only if we are completely fine and working
		if(!hacked)
			if(!allowed(user))
				to_chat(user, SPAN_WARNING("Access denied."))
				return

			if(LAZYLEN(vendor_role) && !vendor_role.Find(user.job))
				to_chat(user, SPAN_WARNING("This machine isn't for you."))
				return

		var/obj/item/reagent_container/C = I
		if(!(C.type in chem_refill))
			to_chat(user, SPAN_WARNING("[src] cannot refill the [C.name]."))
			return

		if(C.reagents.total_volume == C.reagents.maximum_volume)
			to_chat(user, SPAN_WARNING("[src] makes a warning noise. The [C.name] is currently full."))
			return

		if(requires_supply_link_port && !get_supply_link())
			to_chat(user, SPAN_WARNING("[src] makes a buzzing noise as it rejects [C.name]. Looks like this vendor cannot refill these without a connected supply link."))
			playsound(src, 'sound/machines/buzz-sigh.ogg', 15, TRUE)
			return

		to_chat(user, SPAN_NOTICE("[src] makes a whirring noise as it refills your [C.name]."))
		// Since the reagent is deleted on use it's easier to make a new one instead of snowflake checking
		var/obj/item/reagent_container/new_container = new C.type(src)
		qdel(C)
		user.put_in_hands(new_container)
	else if(stat == WORKING && LAZYLEN(stack_refill) && (istype(I, /obj/item/stack)))
		if(!hacked)
			if(!allowed(user))
				to_chat(user, SPAN_WARNING("Access denied."))
				return

			if(LAZYLEN(vendor_role) && !vendor_role.Find(user.job))
				to_chat(user, SPAN_WARNING("This machine isn't for you."))
				return

		var/obj/item/stack/S = I
		if(!(S.type in stack_refill))
			to_chat(user, SPAN_WARNING("[src] cannot restock the [S.name]."))
			return

		if(S.amount == S.max_amount)
			to_chat(user, SPAN_WARNING("[src] makes a warning noise. The [S.name] is currently fully stacked."))
			return

		if(requires_supply_link_port && !get_supply_link())
			to_chat(user, SPAN_WARNING("[src] makes a buzzing noise as it rejects [S.name]. Looks like this vendor cannot restock these without a connected supply link."))
			playsound(src, 'sound/machines/buzz-sigh.ogg', 15, TRUE)
			return

		to_chat(user, SPAN_NOTICE("[src] makes a whirring noise as it restocks your [S.name]."))
		S.amount = S.max_amount
		S.update_icon()
	else
		. = ..()

/obj/structure/machinery/cm_vending/sorted/medical/MouseDrop(obj/over_object as obj)
	if(stat == WORKING && over_object == usr && CAN_PICKUP(usr, src))
		var/mob/living/carbon/human/user = usr
		if(!hacked && !allowed(user))
			to_chat(user, SPAN_WARNING("Access denied."))
			return

		if(!healthscan)
			to_chat(user, SPAN_WARNING("\The [src] does not have health scanning function."))
			return

		if (!last_health_display)
			last_health_display = new(user)
		else
			last_health_display.target_mob = user

		last_health_display.look_at(user, DETAIL_LEVEL_HEALTHANALYSER, bypass_checks = TRUE)
		return

/obj/structure/machinery/cm_vending/sorted/medical/populate_product_list(scale)
	listed_products = list(
		list("FIELD SUPPLIES", -1, null, null),
		list("Burn Kit", floor(scale * 6), /obj/item/stack/medical/advanced/ointment, VENDOR_ITEM_REGULAR),
		list("Trauma Kit", floor(scale * 6), /obj/item/stack/medical/advanced/bruise_pack, VENDOR_ITEM_REGULAR),
		list("Ointment", floor(scale * 6), /obj/item/stack/medical/ointment, VENDOR_ITEM_REGULAR),
		list("Roll of Gauze", floor(scale * 6), /obj/item/stack/medical/bruise_pack, VENDOR_ITEM_REGULAR),
		list("Splints", floor(scale * 6), /obj/item/stack/medical/splint, VENDOR_ITEM_REGULAR),

		list("AUTOINJECTORS", -1, null, null),
		list("Autoinjector (Bicaridine)", floor(scale * 3), /obj/item/reagent_container/hypospray/autoinjector/bicaridine, VENDOR_ITEM_REGULAR),
		list("Autoinjector (Dexalin+)", floor(scale * 3), /obj/item/reagent_container/hypospray/autoinjector/dexalinp, VENDOR_ITEM_REGULAR),
		list("Autoinjector (Epinephrine)", floor(scale * 3), /obj/item/reagent_container/hypospray/autoinjector/adrenaline, VENDOR_ITEM_REGULAR),
		list("Autoinjector (Inaprovaline)", floor(scale * 3), /obj/item/reagent_container/hypospray/autoinjector/inaprovaline, VENDOR_ITEM_REGULAR),
		list("Autoinjector (Kelotane)", floor(scale * 3), /obj/item/reagent_container/hypospray/autoinjector/kelotane, VENDOR_ITEM_REGULAR),
		list("Autoinjector (Oxycodone)", floor(scale * 3), /obj/item/reagent_container/hypospray/autoinjector/oxycodone, VENDOR_ITEM_REGULAR),
		list("Autoinjector (Tramadol)", floor(scale * 3), /obj/item/reagent_container/hypospray/autoinjector/tramadol, VENDOR_ITEM_REGULAR),
		list("Autoinjector (Tricord)", floor(scale * 3), /obj/item/reagent_container/hypospray/autoinjector/tricord, VENDOR_ITEM_REGULAR),

		list("LIQUID BOTTLES", -1, null, null),
		list("Bottle (Bicaridine)", floor(scale * 4), /obj/item/reagent_container/glass/bottle/bicaridine, VENDOR_ITEM_REGULAR),
		list("Bottle (Dylovene)", floor(scale * 4), /obj/item/reagent_container/glass/bottle/antitoxin, VENDOR_ITEM_REGULAR),
		list("Bottle (Dexalin)", floor(scale * 4), /obj/item/reagent_container/glass/bottle/dexalin, VENDOR_ITEM_REGULAR),
		list("Bottle (Inaprovaline)", floor(scale * 4), /obj/item/reagent_container/glass/bottle/inaprovaline, VENDOR_ITEM_REGULAR),
		list("Bottle (Kelotane)", floor(scale * 4), /obj/item/reagent_container/glass/bottle/kelotane, VENDOR_ITEM_REGULAR),
		list("Bottle (Oxycodone)", floor(scale * 4), /obj/item/reagent_container/glass/bottle/oxycodone, VENDOR_ITEM_REGULAR),
		list("Bottle (Peridaxon)", floor(scale * 4), /obj/item/reagent_container/glass/bottle/peridaxon, VENDOR_ITEM_REGULAR),
		list("Bottle (Tramadol)", floor(scale * 4), /obj/item/reagent_container/glass/bottle/tramadol, VENDOR_ITEM_REGULAR),

		list("PILL BOTTLES", -1, null, null),
		list("Pill Bottle (Bicaridine)", floor(scale * 2), /obj/item/storage/pill_bottle/bicaridine, VENDOR_ITEM_REGULAR),
		list("Pill Bottle (Dexalin)", floor(scale * 2), /obj/item/storage/pill_bottle/dexalin, VENDOR_ITEM_REGULAR),
		list("Pill Bottle (Dylovene)", floor(scale * 2), /obj/item/storage/pill_bottle/antitox, VENDOR_ITEM_REGULAR),
		list("Pill Bottle (Inaprovaline)", floor(scale * 2), /obj/item/storage/pill_bottle/inaprovaline, VENDOR_ITEM_REGULAR),
		list("Pill Bottle (Kelotane)", floor(scale * 2), /obj/item/storage/pill_bottle/kelotane, VENDOR_ITEM_REGULAR),
		list("Pill Bottle (Peridaxon)", floor(scale * 1), /obj/item/storage/pill_bottle/peridaxon, VENDOR_ITEM_REGULAR),
		list("Pill Bottle (Tramadol)", floor(scale * 2), /obj/item/storage/pill_bottle/tramadol, VENDOR_ITEM_REGULAR),

		list("MEDICAL UTILITIES", -1, null, null),
		list("Emergency Defibrillator", floor(scale * 3), /obj/item/device/defibrillator, VENDOR_ITEM_REGULAR),
		list("Surgical Line", floor(scale * 2), /obj/item/tool/surgery/surgical_line, VENDOR_ITEM_REGULAR),
		list("Synth-Graft", floor(scale * 2), /obj/item/tool/surgery/synthgraft, VENDOR_ITEM_REGULAR),
		list("Hypospray", floor(scale * 2), /obj/item/reagent_container/hypospray/tricordrazine, VENDOR_ITEM_REGULAR),
		list("Health Analyzer", floor(scale * 5), /obj/item/device/healthanalyzer, VENDOR_ITEM_REGULAR),
		list("M276 Pattern Medical Storage Rig", floor(scale * 2), /obj/item/storage/belt/medical, VENDOR_ITEM_REGULAR),
		list("Medical HUD Glasses", floor(scale * 3), /obj/item/clothing/glasses/hud/health, VENDOR_ITEM_REGULAR),
		list("Stasis Bag", floor(scale * 2), /obj/item/bodybag/cryobag, VENDOR_ITEM_REGULAR),
		list("Syringe", floor(scale * 7), /obj/item/reagent_container/syringe, VENDOR_ITEM_REGULAR)
	)

/obj/structure/machinery/cm_vending/sorted/medical/chemistry
	name = "\improper Wey-Chem Plus"
	desc = "Medical chemistry dispenser. Provided by Wey-Yu Pharmaceuticals Division(TM)."
	icon_state = "chem"
	req_access = list(ACCESS_MARINE_CHEMISTRY)

	healthscan = FALSE
	chem_refill = list(
		/obj/item/reagent_container/glass/bottle/bicaridine,
		/obj/item/reagent_container/glass/bottle/antitoxin,
		/obj/item/reagent_container/glass/bottle/dexalin,
		/obj/item/reagent_container/glass/bottle/inaprovaline,
		/obj/item/reagent_container/glass/bottle/kelotane,
		/obj/item/reagent_container/glass/bottle/oxycodone,
		/obj/item/reagent_container/glass/bottle/peridaxon,
		/obj/item/reagent_container/glass/bottle/tramadol,
	)
	stack_refill = null

/obj/structure/machinery/cm_vending/sorted/medical/chemistry/populate_product_list(scale)
	listed_products = list(
		list("LIQUID BOTTLES", -1, null, null),
		list("Bicaridine Bottle", floor(scale * 5), /obj/item/reagent_container/glass/bottle/bicaridine, VENDOR_ITEM_REGULAR),
		list("Dylovene Bottle", floor(scale * 5), /obj/item/reagent_container/glass/bottle/antitoxin, VENDOR_ITEM_REGULAR),
		list("Dexalin Bottle", floor(scale * 5), /obj/item/reagent_container/glass/bottle/dexalin, VENDOR_ITEM_REGULAR),
		list("Inaprovaline Bottle", floor(scale * 5), /obj/item/reagent_container/glass/bottle/inaprovaline, VENDOR_ITEM_REGULAR),
		list("Kelotane Bottle", floor(scale * 5), /obj/item/reagent_container/glass/bottle/kelotane, VENDOR_ITEM_REGULAR),
		list("Oxycodone Bottle", floor(scale * 5), /obj/item/reagent_container/glass/bottle/oxycodone, VENDOR_ITEM_REGULAR),
		list("Peridaxon Bottle", floor(scale * 5), /obj/item/reagent_container/glass/bottle/peridaxon, VENDOR_ITEM_REGULAR),
		list("Tramadol Bottle", floor(scale * 5), /obj/item/reagent_container/glass/bottle/tramadol, VENDOR_ITEM_REGULAR),

		list("MISCELLANEOUS", -1, null, null),
		list("Beaker (60 Units)", floor(scale * 3), /obj/item/reagent_container/glass/beaker, VENDOR_ITEM_REGULAR),
		list("Beaker, Large (120 Units)", floor(scale * 3), /obj/item/reagent_container/glass/beaker/large, VENDOR_ITEM_REGULAR),
		list("Box of Pill Bottles", floor(scale * 2), /obj/item/storage/box/pillbottles, VENDOR_ITEM_REGULAR),
		list("Dropper", floor(scale * 3), /obj/item/reagent_container/dropper, VENDOR_ITEM_REGULAR),
		list("Syringe", floor(scale * 7), /obj/item/reagent_container/syringe, VENDOR_ITEM_REGULAR)
	)

/obj/structure/machinery/cm_vending/sorted/medical/no_access
	req_access = list()

/obj/structure/machinery/cm_vending/sorted/medical/bolted
	wrenchable = FALSE

/obj/structure/machinery/cm_vending/sorted/medical/chemistry/no_access
	req_access = list()

/obj/structure/machinery/cm_vending/sorted/medical/antag
	name = "\improper Medical Equipment Vendor"
	desc = "A vending machine dispensing various pieces of medical equipment."
	req_one_access = list(ACCESS_ILLEGAL_PIRATE, ACCESS_UPP_GENERAL, ACCESS_CLF_GENERAL)
	requires_supply_link_port = FALSE
	req_access = null
	vendor_theme = VENDOR_THEME_CLF

/obj/structure/machinery/cm_vending/sorted/medical/marinemed
	name = "\improper ColMarTech MarineMed"
	desc = "Medical Pharmaceutical dispenser with basic medical supplies for marines."
	icon_state = "marinemed"
	req_access = list()
	req_one_access = list()
	vendor_theme = VENDOR_THEME_USCM

	chem_refill = list(
		/obj/item/reagent_container/hypospray/autoinjector/skillless,
		/obj/item/reagent_container/hypospray/autoinjector/skillless/tramadol,
	)
	stack_refill = list(
		/obj/item/stack/medical/ointment,
		/obj/item/stack/medical/bruise_pack,
		/obj/item/stack/medical/splint,
	)

/obj/structure/machinery/cm_vending/sorted/medical/marinemed/populate_product_list(scale)
	listed_products = list(
		list("AUTOINJECTORS", -1, null, null),
		list("First-Aid Autoinjector", floor(scale * 5), /obj/item/reagent_container/hypospray/autoinjector/skillless, VENDOR_ITEM_REGULAR),
		list("Pain-Stop Autoinjector", floor(scale * 5), /obj/item/reagent_container/hypospray/autoinjector/skillless/tramadol, VENDOR_ITEM_REGULAR),

		list("DEVICES", -1, null, null),
		list("Health Analyzer", floor(scale * 3), /obj/item/device/healthanalyzer, VENDOR_ITEM_REGULAR),

		list("FIELD SUPPLIES", -1, null, null),
		list("Fire Extinguisher (portable)", 5, /obj/item/tool/extinguisher/mini, VENDOR_ITEM_REGULAR),
		list("Ointment", floor(scale * 7), /obj/item/stack/medical/ointment, VENDOR_ITEM_REGULAR),
		list("Roll of Gauze", floor(scale * 7), /obj/item/stack/medical/bruise_pack, VENDOR_ITEM_REGULAR),
		list("Splints", floor(scale * 7), /obj/item/stack/medical/splint, VENDOR_ITEM_REGULAR)
	)

/obj/structure/machinery/cm_vending/sorted/medical/marinemed/antag
	name = "\improper Basic Medical Supplies Vendor"
	desc = "A vending machine dispensing basic medical supplies."
	req_one_access = list(ACCESS_ILLEGAL_PIRATE, ACCESS_UPP_GENERAL, ACCESS_CLF_GENERAL)
	requires_supply_link_port = FALSE
	req_access = null
	vendor_theme = VENDOR_THEME_CLF

/obj/structure/machinery/cm_vending/sorted/medical/blood
	name = "\improper MM Blood Dispenser"
	desc = "The Marine Med Brand Blood Pack Dispensary is the premier, top-of-the-line blood dispenser of 2105! Get yours today!" //Don't update this year, the joke is it's old.
	icon_state = "blood"
	wrenchable = TRUE
	hackable = TRUE

	listed_products = list(
		list("BLOOD PACKS", -1, null, null),
		list("A+ Blood Pack", 5, /obj/item/reagent_container/blood/APlus, VENDOR_ITEM_REGULAR),
		list("A- Blood Pack", 5, /obj/item/reagent_container/blood/AMinus, VENDOR_ITEM_REGULAR),
		list("B+ Blood Pack", 5, /obj/item/reagent_container/blood/BPlus, VENDOR_ITEM_REGULAR),
		list("B- Blood Pack", 5, /obj/item/reagent_container/blood/BMinus, VENDOR_ITEM_REGULAR),
		list("O+ Blood Pack", 5, /obj/item/reagent_container/blood/OPlus, VENDOR_ITEM_REGULAR),
		list("O- Blood Pack", 5, /obj/item/reagent_container/blood/OMinus, VENDOR_ITEM_REGULAR),

		list("MISCELLANEOUS", -1, null, null),
		list("Empty Blood Pack", 5, /obj/item/reagent_container/blood, VENDOR_ITEM_REGULAR)
	)

	healthscan = FALSE
	chem_refill = null
	stack_refill = null

/obj/structure/machinery/cm_vending/sorted/medical/blood/bolted
	wrenchable = FALSE

/obj/structure/machinery/cm_vending/sorted/medical/blood/populate_product_list(scale)
	return

/obj/structure/machinery/cm_vending/sorted/medical/blood/antag
	req_one_access = list(ACCESS_ILLEGAL_PIRATE, ACCESS_UPP_GENERAL, ACCESS_CLF_GENERAL)
	requires_supply_link_port = FALSE
	req_access = null
	vendor_theme = VENDOR_THEME_CLF

/obj/structure/machinery/cm_vending/sorted/medical/wall_med
	name = "\improper NanoMed"
	desc = "Wall-mounted Medical Equipment Dispenser."
	icon_state = "wallmed"
	vend_delay = 0.7 SECONDS
	requires_supply_link_port = FALSE

	req_access = list()

	density = FALSE
	wrenchable = FALSE
	listed_products = list(
		list("SUPPLIES", -1, null, null),
		list("First-Aid Autoinjector", 1, /obj/item/reagent_container/hypospray/autoinjector/skillless, VENDOR_ITEM_REGULAR),
		list("Pain-Stop Autoinjector", 1, /obj/item/reagent_container/hypospray/autoinjector/skillless/tramadol, VENDOR_ITEM_REGULAR),
		list("Roll Of Gauze", 2, /obj/item/stack/medical/bruise_pack, VENDOR_ITEM_REGULAR),
		list("Ointment", 2, /obj/item/stack/medical/ointment, VENDOR_ITEM_REGULAR),
		list("Medical Splints", 1, /obj/item/stack/medical/splint, VENDOR_ITEM_REGULAR),

		list("UTILITY", -1, null, null),
		list("HF2 Health Analyzer", 1, /obj/item/device/healthanalyzer, VENDOR_ITEM_REGULAR)
	)

	appearance_flags = TILE_BOUND

	chem_refill = list(
		/obj/item/reagent_container/hypospray/autoinjector/skillless,
		/obj/item/reagent_container/hypospray/autoinjector/skillless/tramadol,
		/obj/item/reagent_container/hypospray/autoinjector/tricord/skillless,
		/obj/item/reagent_container/hypospray/autoinjector/bicaridine/skillless,
		/obj/item/reagent_container/hypospray/autoinjector/kelotane/skillless,
		/obj/item/reagent_container/hypospray/autoinjector/tramadol/skillless,
	)
	stack_refill = list(
		/obj/item/stack/medical/bruise_pack,
		/obj/item/stack/medical/splint,
		/obj/item/stack/medical/ointment,
	)

/obj/structure/machinery/cm_vending/sorted/medical/wall_med/limited
	desc = "Wall-mounted Medical Equipment Dispenser. This version is more limited than standard USCM NanoMeds."

	chem_refill = list(
		/obj/item/reagent_container/hypospray/autoinjector/skillless,
		/obj/item/reagent_container/hypospray/autoinjector/skillless/tramadol,
	)
	stack_refill = list(
		/obj/item/stack/medical/bruise_pack,
		/obj/item/stack/medical/ointment,
	)

/obj/structure/machinery/cm_vending/sorted/medical/wall_med/lifeboat
	name = "Lifeboat Medical Cabinet"
	icon = 'icons/obj/structures/machinery/lifeboat.dmi'
	icon_state = "medcab"
	desc = "A wall-mounted cabinet containing medical supplies vital to survival. While better equipped, it can only refill basic supplies."
	listed_products = list(
		list("AUTOINJECTORS", -1, null, null),
		list("First-Aid Autoinjector", 8, /obj/item/reagent_container/hypospray/autoinjector/skillless, VENDOR_ITEM_REGULAR),
		list("Pain-Stop Autoinjector", 8, /obj/item/reagent_container/hypospray/autoinjector/skillless/tramadol, VENDOR_ITEM_REGULAR),

		list("DEVICES", -1, null, null),
		list("Health Analyzer", 8, /obj/item/device/healthanalyzer, VENDOR_ITEM_REGULAR),

		list("FIELD SUPPLIES", -1, null, null),
		list("Burn Kit", 8, /obj/item/stack/medical/advanced/ointment, VENDOR_ITEM_REGULAR),
		list("Trauma Kit", 8, /obj/item/stack/medical/advanced/bruise_pack, VENDOR_ITEM_REGULAR),
		list("Ointment", 8, /obj/item/stack/medical/ointment, VENDOR_ITEM_REGULAR),
		list("Roll of Gauze", 8, /obj/item/stack/medical/bruise_pack, VENDOR_ITEM_REGULAR),
		list("Splints", 8, /obj/item/stack/medical/splint, VENDOR_ITEM_REGULAR)
	)
	stack_refill = list(
		/obj/item/stack/medical/ointment,
		/obj/item/stack/medical/bruise_pack,
		/obj/item/stack/medical/splint,
	)

	unacidable = TRUE
	unslashable = TRUE
	wrenchable = FALSE
	hackable = FALSE

/obj/structure/machinery/cm_vending/sorted/medical/wall_med/populate_product_list(scale)
	return

/obj/structure/machinery/cm_vending/sorted/medical/wall_med/souto
	name = "\improper SoutoMed"
	desc = "In Soutoland (Trademark pending), one is never more than 6ft away from canned Havana goodness. Drink a Souto today! For a full selection of Souto products please visit a licensed retailer or vending machine. Also doubles as basic first aid station."
	icon_state = "soutomed"
	icon = 'icons/obj/structures/souto_land.dmi'
	listed_products = list(
		list("FIRST AID SUPPLIES", -1, null, null),
		list("First-Aid Autoinjector", 1, /obj/item/reagent_container/hypospray/autoinjector/skillless, VENDOR_ITEM_REGULAR),
		list("Pain-Stop Autoinjector", 1, /obj/item/reagent_container/hypospray/autoinjector/skillless/tramadol, VENDOR_ITEM_REGULAR),
		list("Roll Of Gauze", 2, /obj/item/stack/medical/bruise_pack, VENDOR_ITEM_REGULAR),
		list("Ointment", 2, /obj/item/stack/medical/ointment, VENDOR_ITEM_REGULAR),
		list("Medical Splints", 1, /obj/item/stack/medical/splint, VENDOR_ITEM_REGULAR),

		list("UTILITY", -1, null, null),
		list("HF2 Health Analyzer", 1, /obj/item/device/healthanalyzer, VENDOR_ITEM_REGULAR),

		list("SOUTO", -1, null, null),
		list("Souto Classic", 1, /obj/item/reagent_container/food/drinks/cans/souto/classic, VENDOR_ITEM_REGULAR),
		list("Diet Souto Classic", 1, /obj/item/reagent_container/food/drinks/cans/souto/diet/classic, VENDOR_ITEM_REGULAR),
		list("Souto Cranberry", 1, /obj/item/reagent_container/food/drinks/cans/souto/cranberry, VENDOR_ITEM_REGULAR),
		list("Diet Souto Cranberry", 1, /obj/item/reagent_container/food/drinks/cans/souto/diet/cranberry, VENDOR_ITEM_REGULAR),
		list("Souto Grape", 1, /obj/item/reagent_container/food/drinks/cans/souto/grape, VENDOR_ITEM_REGULAR),
		list("Diet Souto Grape", 1, /obj/item/reagent_container/food/drinks/cans/souto/diet/grape, VENDOR_ITEM_REGULAR)
	)
