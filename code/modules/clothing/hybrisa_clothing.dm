///////////////////////
/////// HYBRISA ///////
///////////////////////


/////////////////////// UNDER ///////////////////////
////////////////////////////////////////////////////

// HYBRISA - GOONS

/obj/item/clothing/under/marine/veteran/pmc/corporate/hybrisa
	name = "\improper WY corporate security uniform"
	desc = "An armored uniform worn by Weyland-Yutani corporate security members. This variant is commonly worn by what are known as 'goons'."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_goons.dmi'
	icon_state = "hybrisa_uniform"
	worn_state = "hybrisa_uniform"
	contained_sprite = TRUE
	item_state_slots = null
	flags_jumpsuit = UNIFORM_SLEEVE_ROLLABLE

/obj/item/clothing/under/marine/veteran/pmc/corporate/hybrisa/lead
	desc = "An armored uniform worn by Weyland-Yutani corporate security members. This variant is commonly worn by the lead of the 'goonsquad', as they are colloquially known."
	icon_state = "lead_hybrisa_uniform"
	worn_state = "lead_hybrisa_uniform"
	contained_sprite = TRUE

// CMB Police Officer

/obj/item/clothing/under/hybrisa/cmb_officer
	name = "\improper Colonial Marshal uniform"
	desc = "A pair of grey slacks and a blue button-down shirt with a black tie; a non-standard uniform of the Colonial Marshals, specific to more urbanized colonies, resembling a uniform worn by more traditional policing forces on Earth."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "police_uniform"
	worn_state = "police_uniform"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_LOW

// WY - Pilot

/obj/item/clothing/under/hybrisa/wy_pilot
	name = "\improper Weyland-Yutani Pilot uniform"
	desc = "A pair of grey slacks and a white button-down shirt with a dark-grey tie and golden epaulettes signifying rank; a standard uniform for a commercial grade Weyland-Yutani affiliated Pilot."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "civilian_pilot_uniform"
	worn_state = "civilian_pilot_uniform"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_LOW
	flags_jumpsuit = UNIFORM_JACKET_REMOVABLE

// Paramedic

/obj/item/clothing/under/hybrisa/paramedic
	name = "\improper Nova Medica - EMT - Paramedic uniform"
	desc = "A set of Nova-Medica EMT - Paramedic fatigues, this one is green."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "paramedic_green_uniform"
	worn_state = "paramedic_green_uniform"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_LOW

/obj/item/clothing/under/hybrisa/paramedic/red
	name = "\improper Nova Medica - EMT - Paramedic uniform"
	desc = "A set of Nova-Medica EMT - Paramedic fatigues, this one is red."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "paramedic_redblack_uniform"
	worn_state = "paramedic_redblack_uniform"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_LOW

// Sanitation Worker

/obj/item/clothing/under/hybrisa/santiation
	name = "\improper Weyland-Yutani RFF - Sanitation uniform"
	desc = "A set of Weyland-Yutani RFF - Sanitation fatigues, a green pair of work slacks and a grey polo-shirt with green reflecting stripes."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "sanitation_worker_uniform"
	worn_state = "sanitation_worker_uniform"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_LOW
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_LOW
	flags_jumpsuit = UNIFORM_JACKET_REMOVABLE

//  Kelland Mining

/obj/item/clothing/under/hybrisa/kelland_mining
	name = "\improper Kelland-Mining uniform"
	desc = "A set of Kelland-Mining fatigues, a yellow pair of utility work slacks and a light-grey polo-shirt with red reflecting stripes."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "kellandmining_uniform"
	worn_state = "kellandmining_uniform"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_LOW
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_LOW
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_LOW
	flags_jumpsuit = UNIFORM_JACKET_REMOVABLE

// Weymart

/obj/item/clothing/under/hybrisa/weymart
	name = "\improper Weymart uniform"
	desc = "A pair of dark-grey slacks and an orange button-down shirt; a standard uniform for the Weyland-Yutani branded supermarket 'Weymart'."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "weymart_uniform"
	worn_state = "weymart_uniform"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_LOW
	flags_jumpsuit = UNIFORM_JACKET_REMOVABLE

// Pizza Galaxy

/obj/item/clothing/under/hybrisa/pizza_galaxy
	name = "\improper Pizza Galaxy uniform"
	desc = "A pair of red slacks and a white button-down shirt with a large 'Pizza Galaxy' logo on the back; a standard uniform for a Pizza Galaxy employee. Pizza Galaxy! To infinity and beyond!"
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "new_pizza_uniform"
	worn_state = "new_pizza_uniform"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_LOW
	flags_jumpsuit = UNIFORM_JACKET_REMOVABLE

// Cuppa Joe's

/obj/item/clothing/under/hybrisa/cuppa_joes
	name = "\improper Cuppa Joe's uniform"
	desc = "A pair of black slacks and a white short-sleeved button-down shirt; a standard uniform for a Cuppa Joe's employee. Have You Got The CuppaJoe Smile?"
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "cuppajoes_uniform"
	worn_state = "cuppajoes_uniform"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_NONE
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_NONE
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_LOW
	flags_jumpsuit = UNIFORM_JACKET_REMOVABLE

/////////////////////// Hats & Helmets ///////////////////////
/////////////////////////////////////////////////////////////

// HYBRISA - GOONS

/obj/item/clothing/head/helmet/marine/veteran/pmc/corporate/hybrisa
	name = "\improper WY corporate security helmet"
	desc = "A basic skull-helm with a orange saftey vison fitted. Worn by corporate security assets, graded to protect your head from an unruly scientist armed with a crowbar."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_goons.dmi'
	icon_state = "helmet_black"
	item_state = "helmet_black"
	contained_sprite = TRUE

/obj/item/clothing/head/helmet/marine/veteran/pmc/corporate/hybrisa/lead
	desc = "A basic skull-helm with a orange saftey vison fitted. Worn by corporate security assets. This variant is worn by low-level guards that have too much brainmatter to fit into the old one. Or so they say."
	icon_state = "lead_helmet_black"
	item_state = "lead_helmet_black"

/obj/item/clothing/head/helmet/marine/veteran/pmc/corporate/hybrisa/brown
	name = "\improper WY corporate security helmet"
	desc = "A basic skull-helm with a orange saftey vison fitted. Worn by corporate security assets, graded to protect your head from an unruly scientist armed with a crowbar."
	icon_state = "helmet_brown"
	item_state = "helmet_brown"
	contained_sprite = TRUE

/obj/item/clothing/head/hybrisa/wy_cap
	name = "\improper Weyland-Yutani cap"
	desc = "A dark cap enscribed with the Weyland-Yutani 'Wings' logo' representing corporate justice."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "newcorpo_cap"
	item_state = "newcorpo_cap"
	contained_sprite = TRUE
	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUMLOW
	armor_energy = CLOTHING_ARMOR_MEDIUMLOW
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_LOW
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMLOW
	flags_cold_protection = BODY_FLAG_HEAD
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROT
	flags_inventory = BLOCKSHARPOBJ
	flags_inv_hide = NO_FLAGS

// CMB Police Hats

/obj/item/clothing/head/hybrisa/cmb_cap_new
	name = "\improper Colonial Marshal Bureau cap"
	desc = "A dark cap enscribed with the powerful letters of 'MARSHAL' representing justice, authority, and protection in the outer rim. The laws of the Earth stretch beyond the Sol."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "cmb_cap"
	item_state = "cmb_cap"
	contained_sprite = TRUE
	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUMLOW
	armor_energy = CLOTHING_ARMOR_MEDIUMLOW
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_LOW
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMLOW
	flags_cold_protection = BODY_FLAG_HEAD
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROT
	flags_inventory = BLOCKSHARPOBJ
	flags_inv_hide = NO_FLAGS

/obj/item/clothing/head/hybrisa/cmb_peaked_cap
	name = "\improper Colonial Marshal Bureau cap"
	desc = "A dark peaked cap enscribed with the powerful star shaped emblem of the 'Colonial Marshalls Bureau' representing justice, authority, and protection in the outer rim. The laws of the Earth stretch beyond the Sol."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "police_cap_norim"
	item_state = "police_cap_norim"
	contained_sprite = TRUE
	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUMLOW
	armor_energy = CLOTHING_ARMOR_MEDIUMLOW
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_LOW
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMLOW
	flags_cold_protection = BODY_FLAG_HEAD
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROT
	flags_inventory = BLOCKSHARPOBJ
	flags_inv_hide = NO_FLAGS

/obj/item/clothing/head/hybrisa/cmb_peaked_cap_gold
	name = "\improper Colonial Marshal Bureau cap"
	desc = "A dark peaked cap enscribed with the powerful star shaped emblem of the 'Colonial Marshalls Bureau' representing justice, authority, and protection in the outer rim. The laws of the Earth stretch beyond the Sol."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "police_cap"
	item_state = "police_cap"
	contained_sprite = TRUE
	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUMLOW
	armor_energy = CLOTHING_ARMOR_MEDIUMLOW
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_LOW
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMLOW
	flags_cold_protection = BODY_FLAG_HEAD
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROT
	flags_inventory = BLOCKSHARPOBJ
	flags_inv_hide = NO_FLAGS

// WY-Pilot Cap

/obj/item/clothing/head/hybrisa/wy_po_cap
	name = "\improper Weyland-Yutani Pilots cap"
	desc = "A dark peaked cap enscribed with the Weyland-Yutani 'Wings' logo. A formal cap for qualified civillian Pilots, akin to old Earth formal Pilots-wear."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "civilian_pilot_cap"
	item_state = "civilian_pilot_cap"
	contained_sprite = TRUE
	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUMLOW
	armor_energy = CLOTHING_ARMOR_MEDIUMLOW
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_LOW
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMLOW
	flags_cold_protection = BODY_FLAG_HEAD
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROT
	flags_inventory = BLOCKSHARPOBJ
	flags_inv_hide = NO_FLAGS

// Weymart Cap

/obj/item/clothing/head/soft/hybrisa/weymart
	name = "orange cap"
	desc = "It's a baseball style cap in the 'Weymart' orange color, with the 'Weymart' logo on the front."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "weymart_cap"
	item_state = "weymart_cap"
	contained_sprite = TRUE

// Pizza Galaxy Cap

/obj/item/clothing/head/soft/hybrisa/pizza_galaxy
	name = "pizza galaxy red cap"
	desc = "It's a baseball style cap in a red color, with the 'Pizza Galaxy' logo on the front."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "pizzagalaxy_cap"
	item_state = "pizzagalaxy_cap"
	contained_sprite = TRUE

// Helmets

// Firefighter

/obj/item/clothing/head/helmet/hybrisa/medtech
	name = "MT-SHIELD-X 525 helmet"
	desc = "The MT-SHIELD-X 525 (MedTech - Safety Helmet Integrated for Extreme Danger). A closed helmet designed to protect the wearer from hazardous environments, this specific model is designed to be effective in a variety of hazardous environments and protects the user from potential biohazards. This helmet was designed by Hyperdyne Systems, in collabaration with MedTech."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "firefighter_helmet"
	item_state = "firefighter_helmet"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_LOW
	armor_energy = CLOTHING_ARMOR_LOW
	armor_bomb = CLOTHING_ARMOR_NONE
	armor_bio = CLOTHING_ARMOR_MEDIUM
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_HIGH
	flags_inventory = COVEREYES|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDETOPHAIR

/obj/item/clothing/head/helmet/hybrisa/firefighter
	name = "HS-SHIELD-X 500 helmet"
	desc = "The HS-SHIELD-X 500 (Hyperdyne Systems - Safety Helmet Integrated for Extreme Danger). A closed helmet designed to protect the wearer from hazardous environments, this specific model is designed to be effective in high heat environments and protect the user from smoke inhalation. It has a built in semi-closed breathing system. This helmet was designed by Hyperdyne Systems."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "firefighter_alt_helmet"
	item_state = "firefighter_alt_helmet"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_MEDIUMLOW
	armor_energy = CLOTHING_ARMOR_MEDIUM
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_LOW
	armor_rad = CLOTHING_ARMOR_LOW
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH
	flags_inventory = COVEREYES|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDETOPHAIR

// Kelland Mining

/obj/item/clothing/head/helmet/hybrisa/kelland_mining_helmet
	name = "HS-KM-SHIELD-X 550 helmet"
	desc = "The HS-KM-SHIELD-X 550 (Hyperdyne Systems - Kelland Mining - Safety Helmet Integrated for Extreme Danger). A closed helmet designed to protect the wearer from hazardous environments, this specific model is designed to be effective in a variety of hazardous environments and protect the user from toxic fume inhalation. It has a built in semi-closed breathing system. This helmet was designed by Hyperdyne Systems, in collabaration with Kelland-Mining."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "kelland_mining_helmet"
	item_state = "kelland_mining_helmet"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_LOW
	armor_energy = CLOTHING_ARMOR_MEDIUM
	armor_bomb = CLOTHING_ARMOR_LOW
	armor_bio = CLOTHING_ARMOR_LOW
	armor_rad = CLOTHING_ARMOR_NONE
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH
	flags_inventory = COVEREYES|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDETOPHAIR

// Pizza Galaxy (Rare Helmet)

/obj/item/clothing/head/helmet/hybrisa/pizza_galaxy
	name = "HS-PG-SHIELD-X 575 helmet"
	desc = "The HS-PG-SHIELD-X 575 (Hyperdyne Systems - Pizza Galaxy - Safety Helmet Integrated for Extreme Danger). A closed prototype helmet was designed to protect the wearer from hazardous environments, this specific model is designed to be effective in low atmosphere environments. It has a built in closed breathing system. This helmet was designed by Hyperdyne Systems in collaboration with Pizza Galaxy."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "pizza_galaxy_helmet"
	item_state = "pizza_galaxy_helmet"
	contained_sprite = TRUE
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_MEDIUMLOW
	armor_energy = CLOTHING_ARMOR_MEDIUM
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_MEDIUMLOW
	armor_rad = CLOTHING_ARMOR_MEDIUM
	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH
	flags_inventory = COVEREYES|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDETOPHAIR

/////////////////////// Oversuits ///////////////////////
////////////////////////////////////////////////////////

// Fire-Fighter

/obj/item/clothing/suit/storage/marine/light/vest/fire_light

	name = "PT-LT firesuit"
	desc = "The 'PyroTex LT' is an advanced, lightweight firesuit developed by 'Watatsumi'. It provides protection against fire and heat, while also offering a degree of protection from blunt force trauma."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "firefighter_oversuit"
	item_state = "firefighter_oversuit"
	contained_sprite = TRUE
	uniform_restricted = null
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	fire_intensity_resistance = BURN_LEVEL_TIER_1
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_LEGS|BODY_FLAG_FEET|BODY_FLAG_ARMS|BODY_FLAG_HANDS
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_LOW
	armor_energy = CLOTHING_ARMOR_MEDIUM
	armor_bomb = CLOTHING_ARMOR_LOW
	armor_bio = CLOTHING_ARMOR_MEDIUMLOW
	armor_rad = CLOTHING_ARMOR_LOW
	armor_internaldamage = CLOTHING_ARMOR_LOW
	allowed = list(
		/obj/item/tool/extinguisher,
		/obj/item/device/flashlight,
		/obj/item/device/healthanalyzer,
		/obj/item/device/radio,
		/obj/item/tank/emergency_oxygen,
		/obj/item/tool/crowbar,
		/obj/item/tool/pen,
		/obj/item/weapon/gun,
		/obj/item/prop/prop_gun,
		/obj/item/tank/emergency_oxygen,
		/obj/item/device/flashlight,
		/obj/item/storage/fancy/cigarettes,
		/obj/item/tool/lighter,
		/obj/item/storage/bible,
		/obj/item/attachable/bayonet,
		/obj/item/storage/backpack/general_belt,
		/obj/item/storage/large_holster/machete,
		/obj/item/storage/belt/gun/type47,
		/obj/item/storage/belt/gun/m4a3,
		/obj/item/storage/belt/gun/m44,
		/obj/item/storage/belt/gun/smartpistol,
		/obj/item/storage/belt/gun/flaregun,
		/obj/item/device/motiondetector,
		/obj/item/device/walkman,
		/obj/item/storage/belt/gun/m39,
		/obj/item/storage/belt/gun/xm51,
	)
	valid_accessory_slots = list(ACCESSORY_SLOT_PONCHO)
	slowdown = 1
	flags_inventory = NOPRESSUREDMAGE
	flags_heat_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_LEGS|BODY_FLAG_FEET|BODY_FLAG_ARMS|BODY_FLAG_HANDS
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROT
	flags_cold_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_LEGS|BODY_FLAG_FEET|BODY_FLAG_ARMS|BODY_FLAG_HANDS

/obj/item/clothing/suit/storage/marine/light/vest/fire_light/equipped(mob/user, slot)
	if(slot == WEAR_JACKET)
		RegisterSignal(user, COMSIG_LIVING_FLAMER_CROSSED, PROC_REF(flamer_fire_crossed_callback))
	..()

/obj/item/clothing/suit/storage/marine/light/vest/fire_light/dropped(mob/user)
	UnregisterSignal(user, COMSIG_LIVING_FLAMER_CROSSED)
	..()

/obj/item/clothing/suit/storage/marine/light/vest/fire_light/proc/flamer_fire_crossed_callback(mob/living/L, datum/reagent/R)
	SIGNAL_HANDLER

	if(R.fire_penetrating)
		return

	return COMPONENT_NO_IGNITE

// Kelland Mining

/obj/item/clothing/suit/storage/marine/light/vest/hybrisa_kelland
	name = "\improper Kelland-Mining utility uniform"
	desc = "A set of standard issue Kelland-Mining utility fatigues, a yellow pair of utility work slacks and a black collard heavy padded jacket, which protects against various environmental hazards."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "kellandmining_oversuit"
	item_state = "kellandmining_oversuit"
	contained_sprite = TRUE
	uniform_restricted = null
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_LEGS|BODY_FLAG_ARMS
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_LOW
	armor_energy = CLOTHING_ARMOR_LOW
	armor_bomb = CLOTHING_ARMOR_LOW
	armor_bio = CLOTHING_ARMOR_MEDIUMLOW
	armor_rad = CLOTHING_ARMOR_LOW
	armor_internaldamage = CLOTHING_ARMOR_LOW
	allowed = list(
		/obj/item/weapon/gun,
		/obj/item/prop/prop_gun,
		/obj/item/tank/emergency_oxygen,
		/obj/item/device/flashlight,
		/obj/item/storage/fancy/cigarettes,
		/obj/item/tool/lighter,
		/obj/item/storage/bible,
		/obj/item/attachable/bayonet,
		/obj/item/storage/backpack/general_belt,
		/obj/item/storage/large_holster/machete,
		/obj/item/storage/belt/gun/type47,
		/obj/item/storage/belt/gun/m4a3,
		/obj/item/storage/belt/gun/m44,
		/obj/item/storage/belt/gun/smartpistol,
		/obj/item/storage/belt/gun/flaregun,
		/obj/item/device/motiondetector,
		/obj/item/device/walkman,
		/obj/item/storage/belt/gun/m39,
		/obj/item/storage/belt/gun/xm51,
	)
	valid_accessory_slots = list(ACCESSORY_SLOT_PONCHO)

/obj/item/clothing/suit/storage/marine/light/vest/hybrisa_kelland_alt
	name = "\improper Kelland-Mining utility uniform"
	desc = "A set of standard issue Kelland-Mining utility fatigues, a yellow pair of utility work slacks and a black collard heavy padded jacket, which protects against various environmental hazards."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "kellandmining_alt_oversuit"
	item_state = "kellandmining_alt_oversuit"
	contained_sprite = TRUE
	uniform_restricted = null
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_LEGS|BODY_FLAG_ARMS
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_LOW
	armor_energy = CLOTHING_ARMOR_LOW
	armor_bomb = CLOTHING_ARMOR_LOW
	armor_bio = CLOTHING_ARMOR_MEDIUMLOW
	armor_rad = CLOTHING_ARMOR_LOW
	armor_internaldamage = CLOTHING_ARMOR_LOW
	allowed = list(
		/obj/item/weapon/gun,
		/obj/item/prop/prop_gun,
		/obj/item/tank/emergency_oxygen,
		/obj/item/device/flashlight,
		/obj/item/storage/fancy/cigarettes,
		/obj/item/tool/lighter,
		/obj/item/storage/bible,
		/obj/item/attachable/bayonet,
		/obj/item/storage/backpack/general_belt,
		/obj/item/storage/large_holster/machete,
		/obj/item/storage/belt/gun/type47,
		/obj/item/storage/belt/gun/m4a3,
		/obj/item/storage/belt/gun/m44,
		/obj/item/storage/belt/gun/smartpistol,
		/obj/item/storage/belt/gun/flaregun,
		/obj/item/device/motiondetector,
		/obj/item/device/walkman,
		/obj/item/storage/belt/gun/m39,
		/obj/item/storage/belt/gun/xm51,
	)
	valid_accessory_slots = list(ACCESSORY_SLOT_PONCHO)

// EMT - Paramedic

/obj/item/clothing/suit/hybrisa/EMT_green_utility
	name = "\improper Nova Medica - EMT - Paramedic utility fatigues"
	desc = "A set of Nova-Medica EMT - Paramedic utility fatigues, this one is green."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "paramedic_green_oversuit"
	item_state = "paramedic_green_oversuit"
	contained_sprite = TRUE
	uniform_restricted = null

/obj/item/clothing/suit/hybrisa/EMT_red_utility
	name = "\improper Nova Medica - EMT - Paramedic utility fatigues"
	desc = "A set of Nova-Medica EMT - Paramedic utility fatigues, this one is red."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "paramedic_redblack_oversuit"
	item_state = "paramedic_redblack_oversuit"
	contained_sprite = TRUE
	uniform_restricted = null

// Sanitation

/obj/item/clothing/suit/hybrisa/sanitation_utility
	name = "\improper Sanitation utility uniform"
	desc = "A Sanitation utility uniform, used by the clean-up crews of the more prosperous colonies."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "sanitation_worker_oversuit"
	item_state = "sanitation_worker_oversuit"
	contained_sprite = TRUE
	uniform_restricted = null

// WY Pilot

/obj/item/clothing/suit/storage/hybrisa/wy_Pilot
	name = "\improper Weyland-Yutani Pilot formal-jacket"
	desc = "A suit-style jacket with a fur lined collar and golden epaulettes signifying rank. Worn by Weyland-Yutani qualified civillian Pilots, akin to old Earth formal Pilots-wear."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "civilian_pilot_jacket"
	item_state = "civilian_pilot_jacket"
	contained_sprite = TRUE
	uniform_restricted = null

// CMB Police Jackets & Armor

// CMB Jacket

/obj/item/clothing/suit/storage/cmb/hybrisa
	name = "\improper CMB Marshal jacket"
	desc = "A black polyester jacket with a Marshal's badge pinned to it. Representing justice, authority, and protection in the outer rim. The laws of the Earth stretch beyond the Sol."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "police_jacket"
	item_state = "police_jacket"
	contained_sprite = TRUE
	uniform_restricted = null

// CMB Vest

/obj/item/clothing/suit/armor/vest/hybrisa/cmb_vest
	name = "CMB armored vest"
	desc = "An CMB armored vest that protects against some damage."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "police_ballistic_armor"
	item_state = "police_ballistic_armor"
	contained_sprite = TRUE
	uniform_restricted = null
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUM
	armor_laser = CLOTHING_ARMOR_LOW
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_LOW
	armor_bio = CLOTHING_ARMOR_MEDIUM
	armor_rad = CLOTHING_ARMOR_LOW
	valid_accessory_slots = list(ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_ARMOR_S, ACCESSORY_SLOT_ARMOR_M)

/obj/item/clothing/suit/armor/vest/hybrisa/civilian_vest
	name = "armored vest"
	desc = "An civilian, unmarked armored vest that protects against some damage."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "generic_ballistic_armor"
	item_state = "generic_ballistic_armor"
	contained_sprite = TRUE
	uniform_restricted = null
	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUM
	armor_laser = CLOTHING_ARMOR_LOW
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_LOW
	armor_bio = CLOTHING_ARMOR_MEDIUM
	armor_rad = CLOTHING_ARMOR_LOW
	valid_accessory_slots = list(ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_ARMOR_S, ACCESSORY_SLOT_ARMOR_M)

// Hazard Vests

/obj/item/clothing/suit/storage/hazardvest/medical_green
	name = "EMT - green hazard vest"
	desc = "A green and white EMT high-visibility hazard vest used in work zones."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "medicalhazard_green"
	item_state = "medicalhazard_green"
	contained_sprite = TRUE

/obj/item/clothing/suit/storage/hazardvest/medical_red
	name = "EMT - red hazard vest"
	desc = "A red and white EMT high-visibility hazard vest used in work zones."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "medicalhazard_white"
	item_state = "medicalhazard_white"
	contained_sprite = TRUE

/obj/item/clothing/suit/storage/hazardvest/kelland_mining
	name = "Kelland-Mining hazard vest"
	desc = "A black high-visibility vest used in work zones."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "kellandmining_hazard"
	item_state = "kellandmining_hazard"
	contained_sprite = TRUE

/obj/item/clothing/suit/storage/hazardvest/sanitation
	name = "green hazard vest"
	desc = "A green and white high-visibility vest used in work zones."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "sanitation_hazard"
	item_state = "sanitation_hazard"
	contained_sprite = TRUE

/obj/item/clothing/suit/storage/hazardvest/weymart
	name = "Weymart vest"
	desc = "A blue 'Weymart' employee vest, with name tag and all."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "weymart_vest"
	item_state = "weymart_vest"
	contained_sprite = TRUE

// Civilian Coats

/obj/item/clothing/suit/storage/snow_suit/hybrisa/parka_blue
	name = "dark blue worn Parka"
	desc = "An old worn blue Parka, has seen better days..."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "hobocoat_blue"
	item_state = "hobocoat_blue"
	contained_sprite = TRUE

/obj/item/clothing/suit/storage/snow_suit/hybrisa/parka_brown
	name = "dark brown worn Parka"
	desc = "An old worn brown Parka, has seen better days..."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "hobocoat_brown"
	item_state = "hobocoat_brown"
	contained_sprite = TRUE

/obj/item/clothing/suit/storage/snow_suit/hybrisa/parka_green
	name = "dark green worn Parka"
	desc = "An old worn green Parka, has seen better days..."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "hobocoat_green"
	item_state = "hobocoat_green"
	contained_sprite = TRUE

/obj/item/clothing/suit/storage/snow_suit/hybrisa/polyester_jacket_brown
	name = "dark brown worn polyester jacket"
	desc = "An old worn brown polyester jacket, has seen better days..."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "hobocoat_dark"
	item_state = "hobocoat_dark"
	contained_sprite = TRUE

/obj/item/clothing/suit/storage/snow_suit/hybrisa/polyester_jacket_blue
	name = "dark blue worn polyester jacket"
	desc = "An old worn blue polyester jacket, has seen better days..."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "hobocoat_darkblue"
	item_state = "hobocoat_darkblue"
	contained_sprite = TRUE

/obj/item/clothing/suit/storage/snow_suit/hybrisa/polyester_jacket_red
	name = "dark red worn polyester jacket"
	desc = "An old worn red polyester jacket, has seen better days..."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "hobocoat_darkred"
	item_state = "hobocoat_darkred"
	contained_sprite = TRUE

// Cuppa Joe's Apron

/obj/item/clothing/suit/apron/cuppa_joes
	name = "Cuppa Joe's apron"
	desc = "A basic red apron."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "cuppajoes_apron"
	item_state = "cuppajoes_apron"
	contained_sprite = TRUE

/////////////////////// MISC ///////////////////////////
////////////////////////////////////////////////////////

// Glasses

/obj/item/clothing/glasses/sunglasses/aviator_silver
	name = "aviator shades"
	desc = "A pair of silver tinted sunglasses. You can faintly hear 80's music playing while wearing these."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "aviator_silver"
	item_state = "aviator_silver"
	contained_sprite = TRUE
	flags_equip_slot = SLOT_EYES|SLOT_FACE

/obj/item/clothing/glasses/sunglasses/sechud_blue
	name = "Security HUD-Glasses"
	desc = "Sunglasses wired up with the best nano-tech the USCM can muster out on the frontier. Displays information about any person you decree worthy of your gaze."
	icon = 'icons/mob/humans/onmob/contained/hybrisa_survivors.dmi'
	icon_state = "sunhud_blue"
	contained_sprite = TRUE
	eye_protection = EYE_PROTECTION_FLASH
	hud_type = MOB_HUD_SECURITY_ADVANCED
