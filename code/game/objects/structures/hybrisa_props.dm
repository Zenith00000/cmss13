// Hybrisa props

/obj/structure/prop/hybrisa
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'
	icon_state = "pimp"

// Vehicles

/obj/structure/prop/hybrisa/vehicles
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'
	icon_state = "SUV"
	health = 3000
	var/damage_state = 0
	var/brute_multiplier = 1

/obj/structure/prop/hybrisa/vehicles/attack_alien(mob/living/carbon/xenomorph/user)
	user.animation_attack_on(src)
	take_damage( rand(user.melee_damage_lower, user.melee_damage_upper) * brute_multiplier)
	playsound(src, 'sound/effects/metalscrape.ogg', 25, 1)
	if(health <= 0)
		user.visible_message(SPAN_DANGER("[user] slices [src] apart!"), \
		SPAN_DANGER("We slice [src] apart!"), null, 5, CHAT_TYPE_XENO_COMBAT)
	else
		user.visible_message(SPAN_DANGER("[user] [user.slashes_verb] [src]!"), \
		SPAN_DANGER("We [user.slash_verb] [src]!"), null, 5, CHAT_TYPE_XENO_COMBAT)
	update_icon()
	return XENO_ATTACK_ACTION

/obj/structure/prop/hybrisa/vehicles/update_icon()
	switch(health)
		if(2500 to 3000)
			icon_state = initial(icon_state)
			return
		if(2000 to 2500)
			damage_state = 1
		if(1500 to 2000)
			damage_state = 2
		if(1000 to 1500)
			damage_state = 3
		if(500 to 1000)
			damage_state = 4
		if(0 to 500)
			damage_state = 5
	icon_state = "[initial(icon_state)]_damage_[damage_state]"

/obj/structure/prop/hybrisa/vehicles/proc/explode(dam, mob/M)
	src.visible_message(SPAN_DANGER("<B>[src] blows apart!</B>"), null, null, 1)
	playsound(loc, 'sound/effects/car_crush.ogg', 25)
	var/turf/Tsec = get_turf(src)
	new /obj/item/stack/rods(Tsec)
	new /obj/item/stack/rods(Tsec)
	new /obj/item/stack/sheet/metal(Tsec)
	new /obj/item/stack/sheet/metal(Tsec)
	new /obj/item/stack/cable_coil/cut(Tsec)

	new /obj/effect/spawner/gibspawner/robot(Tsec)
	new /obj/effect/decal/cleanable/blood/oil(src.loc)

	deconstruct(FALSE)
/obj/structure/prop/hybrisa/vehicles/proc/take_damage(dam, mob/M)
	if(health) //Prevents unbreakable objects from being destroyed
		health -= dam
		if(health <= 0)
			explode()
		else
			update_icon()

/obj/structure/prop/hybrisa/vehicles/bullet_act(obj/projectile/P)
	if(P.ammo.damage)
		take_damage(P.ammo.damage)
		update_icon()

/obj/structure/prop/hybrisa/vehicles/suv
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'
	icon_state = "SUV"

/obj/structure/prop/hybrisa/vehicles/suvdamaged
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'
	icon_state = "SUV_damaged"

/obj/structure/prop/hybrisa/vehicles/Car
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'
	icon_state = "MeridianCar_1"

// Very Large Vehicles

/obj/structure/prop/hybrisa/vehicles/large_vehicles
	icon = 'icons/obj/structures/props/128x32_vehiclesexpanded.dmi'
	icon_state = "armoredtruck_wy_security_1"
	density = TRUE
	layer = ABOVE_MOB_LAYER

// Misc
/obj/structure/prop/hybrisa/vehicles/large_vehicles/ambulance
	name = "ambulance"
	desc = "Seems to be broken down."
	icon_state = "ambulance"
	bound_height = 64
	bound_width = 96

// Armored Truck

/obj/structure/prop/hybrisa/vehicles/large_vehicles/armored_trucks
	icon_state = "armoredtruck_wy_security_1"
	bound_height = 64
	bound_width = 96

/obj/structure/prop/hybrisa/vehicles/large_vehicles/armored_trucks/WY_Security/Truck_1
	name = "Weyland-Yutani security truck"
	desc = "Seems to be broken down."
	icon_state = "armoredtruck_wy_security_1"

/obj/structure/prop/hybrisa/vehicles/large_vehicles/armored_trucks/WY_Security/Truck_2
	name = "Weyland-Yutani security truck"
	desc = "Seems to be broken down."
	icon_state = "armoredtruck_wy_security_2"

// Armored Truck Goods
/obj/structure/prop/hybrisa/vehicles/large_vehicles/armored_trucks/heavy_loader/white
	name = "heavy loader truck"
	desc = "Seems to be broken down."
	icon_state = "armoredtruck_white_white"

/obj/structure/prop/hybrisa/vehicles/large_vehicles/armored_trucks/heavy_loader/white_teal
	name = "heavy loader truck"
	desc = "Seems to be broken down."
	icon_state = "armoredtruck_white_teal"

/obj/structure/prop/hybrisa/vehicles/large_vehicles/armored_trucks/heavy_loader/blue_white
	name = "heavy loader truck"
	desc = "Seems to be broken down."
	icon_state = "armoredtruck_blue_white"

// Mega-Hauler Trucks 128x64

/obj/structure/prop/hybrisa/vehicles/large_vehicles/mega_hauler_truck
	name = "mega-hauler truck"
	icon_state = "longtruck_kellandmining"
	desc = "Seems to be broken down."
	icon = 'icons/obj/structures/props/128x32_vehiclesexpanded.dmi'
	bound_height = 64
	bound_width = 128
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/large_vehicles/mega_hauler_truck/kelland
	icon_state = "longtruck_kellandmining"

/obj/structure/prop/hybrisa/vehicles/large_vehicles/mega_hauler_truck/red_stripe
	icon_state = "longtruck_blue_redstripe"

/obj/structure/prop/hybrisa/vehicles/large_vehicles/mega_hauler_truck/blue_stripe
	icon_state = "longtruck_red_bluestripe"

/obj/structure/prop/hybrisa/vehicles/large_vehicles/mega_hauler_truck/brown
	icon_state = "longtruck_brown"

/obj/structure/prop/hybrisa/vehicles/large_vehicles/mega_hauler_truck/donk
	icon_state = "longtruck_donk"

//WY
/obj/structure/prop/hybrisa/vehicles/large_vehicles/mega_hauler_truck/wy_black
	name = "Weyland-Yutani mega-hauler truck"
	icon_state = "longtruck_wy_black"

/obj/structure/prop/hybrisa/vehicles/large_vehicles/mega_hauler_truck/wy_blue
	name = "Weyland-Yutani mega-hauler truck"
	icon_state = "longtruck_wy_blue"

// SUV

/obj/structure/prop/hybrisa/vehicles/suv
	name = "SUV"
	desc = "Seems to be broken down."
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'
	icon_state = "SUV"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/suv/suv_1
	icon_state = "SUV1"

/obj/structure/prop/hybrisa/vehicles/suv/suv_2
	icon_state = "SUV2"

/obj/structure/prop/hybrisa/vehicles/suv/suv_5
	icon_state = "SUV5"

/obj/structure/prop/hybrisa/vehicles/suv/suv_6
	icon_state = "SUV6"

/obj/structure/prop/hybrisa/vehicles/suv/suv_7
	icon_state = "SUV7"

/obj/structure/prop/hybrisa/vehicles/suv/suv_8
	icon_state = "SUV8"

// Meridian Cars - Damage States
/obj/structure/prop/hybrisa/vehicles/Meridian
	name = "Mono-Spectra"
	desc = "The 'Mono-Spectra', a mass-produced civilian vehicle for the colonial markets, in and outside of the United Americas. Produced by 'Meridian' a car marque and associated operating division of the Weyland-Yutani Corporation."
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_red.dmi'
	icon_state = "meridian_red"
	bound_height = 32
	bound_width = 64
	density = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/vehicles/Meridian/Red
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_red.dmi'
	icon_state = "meridian_red"

/obj/structure/prop/hybrisa/vehicles/Meridian/Black
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_black.dmi'
	icon_state = "meridian_black"

/obj/structure/prop/hybrisa/vehicles/Meridian/Blue
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_blue.dmi'
	icon_state = "meridian_blue"

/obj/structure/prop/hybrisa/vehicles/Meridian/Brown
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_brown.dmi'
	icon_state = "meridian_brown"

/obj/structure/prop/hybrisa/vehicles/Meridian/Cop
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_cop.dmi'
	icon_state = "meridian_cop"

/obj/structure/prop/hybrisa/vehicles/Meridian/Desat_Blue
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_desatblue.dmi'
	icon_state = "meridian_desatblue"

/obj/structure/prop/hybrisa/vehicles/Meridian/Green
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_green.dmi'
	icon_state = "meridian_green"

/obj/structure/prop/hybrisa/vehicles/Meridian/Light_Blue
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_lightblue.dmi'
	icon_state = "meridian_lightblue"

/obj/structure/prop/hybrisa/vehicles/Meridian/Pink
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_pink.dmi'
	icon_state = "meridian_pink"

/obj/structure/prop/hybrisa/vehicles/Meridian/Purple
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_purple.dmi'
	icon_state = "meridian_purple"

/obj/structure/prop/hybrisa/vehicles/Meridian/Turquoise
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_turquoise.dmi'
	icon_state = "meridian_turquoise"

/obj/structure/prop/hybrisa/vehicles/Meridian/Orange
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_orange.dmi'
	icon_state = "meridian_orange"

/obj/structure/prop/hybrisa/vehicles/Meridian/WeylandYutani
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_wy.dmi'
	icon_state = "meridian_wy"

/obj/structure/prop/hybrisa/vehicles/Meridian/Taxi
	icon = 'icons/obj/structures/props/hybrisa_vehicles/meridian_taxi.dmi'
	icon_state = "meridian_taxi"

// Car Chassis

/obj/structure/prop/hybrisa/vehicles/Car/Car_chassis
	desc = "A Mono-Spectra chassis in the early stages of assembly."

/obj/structure/prop/hybrisa/vehicles/Car/Car_chassis
	name = "Mono-Spectra Chassis"
	icon_state = "MeridianCar_shell"

// damaged suv

/obj/structure/prop/hybrisa/vehicles/suvdamaged
	name = "heavily damaged SUV"
	desc = "A shell of a vehicle, broken down beyond repair."

/obj/structure/prop/hybrisa/vehicles/suvdamaged/suv_damaged0
	icon_state = "SUV_damaged"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/suvdamaged/suv_damaged1
	icon_state = "SUV1_damaged"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/suvdamaged/suv_damaged2
	icon_state = "SUV2_damaged"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

// small trucks

/obj/structure/prop/hybrisa/vehicles/truck
	name = "truck"
	icon_state = "zentruck1"
	desc = "Seems to be broken down."
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/truck/truck1
	icon_state = "zentruck2"

/obj/structure/prop/hybrisa/vehicles/truck/truck2
	icon_state = "zentruck3"

/obj/structure/prop/hybrisa/vehicles/truck/truck3
	icon_state = "zentruck4"

/obj/structure/prop/hybrisa/vehicles/truck/truck4
	icon_state = "zentruck5"

/obj/structure/prop/hybrisa/vehicles/truck/truck5
	icon_state = "truck_cargo"

/obj/structure/prop/hybrisa/vehicles/truck/truck6
	icon_state = "truck"

/obj/structure/prop/hybrisa/vehicles/truck/garbage
	name = "garbage truck"
	icon_state = "zengarbagetruck"
	desc = "Seems to be broken down."

/obj/structure/prop/hybrisa/vehicles/truck/mining
	name = "mining supply truck"
	icon_state = "truck_mining"
	desc = "Seems to be broken down."

// Colony Crawlers

/obj/structure/prop/hybrisa/vehicles/colonycrawlers
	icon_state = "crawler_wy2"
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/mining
	icon_state = "miningcrawler1"
	desc = "It is a tread bound crawler used in harsh conditions. Supplied by The Kelland Mining Company; A subsidiary of Weyland Yutani."
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/mining2
	icon_state = "crawler_fuel"
	desc = "It is a tread bound crawler used in harsh conditions. Supplied by The Kelland Mining Company; A subsidiary of Weyland Yutani."
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/mining3
	icon_state = "crawler_covered_bed"
	desc = "It is a tread bound crawler used in harsh conditions. Supplied by The Kelland Mining Company; A subsidiary of Weyland Yutani."
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/science
	icon_state = "crawler_wy2"
	desc = "It is a tread bound crawler used in harsh conditions. This one is designed for personnel transportation. Supplied by Orbital Blue International; 'Your friends, in the Aerospace business.' A subsidiary of Weyland Yutani."
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'

// science crawlers

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/science
	name = "weyland-yutani colony crawler"

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/science/science1
	icon_state = "crawler_wy1"
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/science/science2
	icon_state = "crawler_wy2"
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'

// Mining Crawlers

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/mining
	name = "kelland mining colony crawler"

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/mining/mining1
	desc = "It is a tread bound crawler used in harsh conditions. Supplied by The Kelland Mining Company; A subsidiary of Weyland Yutani."
	icon_state = "miningcrawler2"

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/mining/mining2
	desc = "It is a tread bound crawler used in harsh conditions. Supplied by The Kelland Mining Company; A subsidiary of Weyland Yutani."
	icon_state = "miningcrawler3"

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/mining/mining3
	desc = "It is a tread bound crawler used in harsh conditions. Supplied by The Kelland Mining Company; A subsidiary of Weyland Yutani."
	icon_state = "miningcrawler4"

/obj/structure/prop/hybrisa/vehicles/colonycrawlers/mining/mining4
	desc = "It is a tread bound crawler used in harsh conditions. Supplied by The Kelland Mining Company; A subsidiary of Weyland Yutani."
	icon_state = "miningcrawlerblank"

// Special SUV's

/obj/structure/prop/hybrisa/vehicles/suv/misc
	name = "Weyland-Yutani rapid response vehicle"
	desc = "Seems to be broken down."
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'
	icon_state = "WYSUV1"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/suv/misc/wy1
	icon_state = "WYSUV1"

/obj/structure/prop/hybrisa/vehicles/suv/misc/wy2
	icon_state = "WYSUV2"

/obj/structure/prop/hybrisa/vehicles/suv/misc/wy3
	icon_state = "WYSUV3"

/obj/structure/prop/hybrisa/vehicles/suv/misc/ambulance
	name = "emergency response medical van"
	desc = "Seems to be broken down."
	icon_state = "ambulance"

/obj/structure/prop/hybrisa/vehicles/suv/misc/whitevan
	name = "maintenance SUV"
	desc = "Seems to be broken down."
	icon_state = "whitevan"

/obj/structure/prop/hybrisa/vehicles/suv/misc/maintenance
	name = "maintenance SUV"
	desc = "Seems to be broken down."
	icon_state = "maintenaceSUV"

/obj/structure/prop/hybrisa/vehicles/suv/misc/marshalls
	name = "colonial marshalls rapid response SUV"
	desc = "Seems to be broken down."
	icon_state = "marshalls"

/obj/structure/prop/hybrisa/vehicles/suv/misc/marshalls2
	name = "colonial marshalls rapid response SUV"
	desc = "Seems to be broken down."
	icon_state = "marshalls2"

/obj/structure/prop/hybrisa/vehicles/suv/misc/expensive
	name = "Expensive looking SUV"
	desc = "Seems to be broken down."
	icon_state = "SUV9"

/obj/structure/prop/hybrisa/vehicles/suv/misc/expensive2
	name = "Expensive Weyland-Yutani SUV"
	desc = "Seems to be broken down."
	icon_state = "blackSUV"

/obj/structure/prop/hybrisa/vehicles/suv/misc/expensive3
	name = "The Pimp-Mobile"
	desc = "Seems to be broken down."
	icon_state = "pimpmobile"

// Vans

/obj/structure/prop/hybrisa/vehicles/van
	name = "van"
	desc = "Seems to be broken down."
	icon = 'icons/obj/structures/props/vehiclesexpanded.dmi'
	icon_state = "greyvan"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/van/vandamaged
	name = "van"
	desc = "A shell of a vehicle, broken down beyond repair."
	icon_state = "greyvan_damaged"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/van/vanpizza
	name = "pizza delivery van"
	desc = "Seems to be broken down."
	icon_state = "pizzavan"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/van/vanmining
	name = "Kelland Mining van"
	desc = "Seems to be broken down."
	icon_state = "kellandminingvan"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/van/hyperdynevan
	name = "Hyperdyne van"
	desc = "Seems to be broken down."
	icon_state = "hyperdynevan"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/vehicles/crashedcarsleft
	name = "car pileup"
	desc = "Burned out wrecked vehicles block your path."
	icon = 'icons/obj/structures/props/crashedcars.dmi'
	icon_state = "crashedcarsleft"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE
	layer = 5

/obj/structure/prop/hybrisa/vehicles/crashedcarsright
	name = "car pileup"
	desc = "Burned out wrecked vehicles block your path."
	icon = 'icons/obj/structures/props/crashedcars.dmi'
	icon_state = "crashedcarsright"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE
	layer = 5

// Cave props

/obj/structure/prop/hybrisa/boulders
	icon = 'icons/obj/structures/props/boulder_largedark.dmi'
	icon_state = "boulder_largedark1"

/obj/structure/prop/hybrisa/boulders/large_boulderdark
	name = "boulder"
	desc = "A large rock. It's not cooking anything."
	icon = 'icons/obj/structures/props/boulder_largedark.dmi'
	icon_state = "boulder_largedark1"
	density = TRUE
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
/obj/structure/prop/hybrisa/boulders/large_boulderdark/boulder_dark1
	icon_state = "boulder_largedark1"

/obj/structure/prop/hybrisa/boulders/large_boulderdark/boulder_dark2
	icon_state = "boulder_largedark2"

/obj/structure/prop/hybrisa/boulders/large_boulderdark/boulder_dark3
	icon_state = "boulder_largedark3"

/obj/structure/prop/hybrisa/boulders/wide_boulderdark
	name = "boulder"
	desc = "A large rock. It's not cooking anything."
	icon = 'icons/obj/structures/props/boulder_widedark.dmi'
	icon_state = "boulderwidedark"
	density = TRUE
	bound_height = 32
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
/obj/structure/prop/hybrisa/boulders/wide_boulderdark/wide_boulder1
	icon_state = "boulderwidedark"

/obj/structure/prop/hybrisa/boulders/wide_boulderdark/wide_boulder2
	icon_state = "boulderwidedark2"

/obj/structure/prop/hybrisa/boulders/smallboulderdark
	name = "boulder"
	icon_state = "bouldersmalldark1"
	desc = "A large rock. It's not cooking anything."
	icon = 'icons/obj/structures/props/boulder_small.dmi'
	unslashable = TRUE
	unacidable = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/boulders/smallboulderdark/boulder_dark1
	icon_state = "bouldersmalldark1"

/obj/structure/prop/hybrisa/boulders/smallboulderdark/boulder_dark2
	icon_state = "bouldersmalldark2"

/obj/structure/prop/hybrisa/boulders/smallboulderdark/boulder_dark3
	icon_state = "bouldersmalldark3"


/obj/structure/prop/hybrisa/cavedecor
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	name = "stalagmite"
	icon_state = "stalagmite"
	desc = "A cave stalagmite."
	layer = TURF_LAYER
	plane = FLOOR_PLANE

/obj/structure/prop/hybrisa/cavedecor/stalagmite0
	icon_state = "stalagmite"

/obj/structure/prop/hybrisa/cavedecor/stalagmite1
	icon_state = "stalagmite1"

/obj/structure/prop/hybrisa/cavedecor/stalagmite2
	icon_state = "stalagmite2"

/obj/structure/prop/hybrisa/cavedecor/stalagmite3
	icon_state = "stalagmite3"

/obj/structure/prop/hybrisa/cavedecor/stalagmite4
	icon_state = "stalagmite4"

/obj/structure/prop/hybrisa/cavedecor/stalagmite5
	icon_state = "stalagmite5"



// Supermart

/obj/structure/prop/hybrisa/supermart
	name = "long rack"
	icon_state = "longrack1"
	desc = "A long shelf filled with various foodstuffs"
	icon = 'icons/obj/structures/props/supermart.dmi'
	density = TRUE

/obj/structure/prop/hybrisa/supermart/rack/longrackempty
	name = "shelf"
	desc = "A long empty shelf."
	icon_state = "longrackempty"

/obj/structure/prop/hybrisa/supermart/rack/longrack1
	name = "shelf"
	desc = "A long shelf filled with various foodstuffs"
	icon_state = "longrack1"

/obj/structure/prop/hybrisa/supermart/rack/longrack2
	name = "shelf"
	desc = "A long shelf filled with various foodstuffs"
	icon_state = "longrack2"

/obj/structure/prop/hybrisa/supermart/rack/longrack3
	name = "shelf"
	desc = "A long shelf filled with various foodstuffs"
	icon_state = "longrack3"

/obj/structure/prop/hybrisa/supermart/rack/longrack4
	name = "shelf"
	desc = "A long shelf filled with various foodstuffs"
	icon_state = "longrack4"

/obj/structure/prop/hybrisa/supermart/rack/longrack5
	name = "shelf"
	desc = "A long shelf filled with various foodstuffs"
	icon_state = "longrack5"

/obj/structure/prop/hybrisa/supermart/rack/longrack6
	name = "shelf"
	desc = "A long shelf filled with various foodstuffs"
	icon_state = "longrack6"

/obj/structure/prop/hybrisa/supermart/rack/longrack7
	name = "shelf"
	desc = "A long shelf filled with various foodstuffs"
	icon_state = "longrack7"

/obj/structure/prop/hybrisa/supermart/supermartbelt
	name = "conveyor belt"
	desc = "A conveyor belt."
	icon_state = "checkoutbelt"

/obj/structure/prop/hybrisa/supermart/freezer
	name = "commercial freezer"
	desc = "A commercial grade freezer."
	icon_state = "freezerupper"
	density = TRUE

/obj/structure/prop/hybrisa/supermart/freezer/supermartfreezer1
	icon_state = "freezerupper"

/obj/structure/prop/hybrisa/supermart/freezer/supermartfreezer2
	icon_state = "freezerlower"

/obj/structure/prop/hybrisa/supermart/freezer/supermartfreezer3
	icon_state = "freezermid"

/obj/structure/prop/hybrisa/supermart/freezer/supermartfreezer4
	icon_state = "freezerupper1"

/obj/structure/prop/hybrisa/supermart/freezer/supermartfreezer5
	icon_state = "freezerlower1"

/obj/structure/prop/hybrisa/supermart/freezer/supermartfreezer6
	icon_state = "freezermid1"

/obj/structure/prop/hybrisa/supermart/supermartfruitbasketempty
	name = "basket"
	desc = "A basket."
	icon_state = "supermarketbasketempty"

/obj/structure/prop/hybrisa/supermart/supermartfruitbasketoranges
	name = "basket"
	desc = "A basket full of oranges."
	icon_state = "supermarketbasket1"

/obj/structure/prop/hybrisa/supermart/supermartfruitbasketpears
	name = "basket"
	desc = "A basket full of pears."
	icon_state = "supermarketbasket2"

/obj/structure/prop/hybrisa/supermart/supermartfruitbasketcarrots
	name = "basket"
	desc = "A basket full of carrots."
	icon_state = "supermarketbasket3"

/obj/structure/prop/hybrisa/supermart/supermartfruitbasketmelons
	name = "basket"
	desc = "A basket full of melons."
	icon_state = "supermarketbasket4"

/obj/structure/prop/hybrisa/supermart/supermartfruitbasketapples
	name = "basket"
	desc = "A basket full of apples."
	icon_state = "supermarketbasket5"

// Furniture
/obj/structure/prop/hybrisa/furniture
	icon = 'icons/obj/structures/props/hybrisatables.dmi'
	icon_state = "blackmetaltable"

/obj/structure/prop/hybrisa/furniture/tables
	icon = 'icons/obj/structures/props/hybrisatables.dmi'
	icon_state = "table_pool"

/obj/structure/prop/hybrisa/furniture/tables/tableblack
	name = "large metal table"
	desc = "A large black metal table, looks very expensive."
	icon_state = "blackmetaltable"
	density = TRUE
	climbable = TRUE
	breakable = TRUE
	bound_height = 32
	bound_width = 64
	debris = list(/obj/item/stack/sheet/metal)

/obj/structure/prop/hybrisa/furniture/tables/tableblack/blacktablecomputer
	icon = 'icons/obj/structures/props/hybrisatables.dmi'
	icon_state = "blackmetaltable_computer"

/obj/structure/prop/hybrisa/furniture/tables/tablewood
	name = "large wood table"
	desc = "A large wooden table, looks very expensive."
	icon_state = "brownlargetable"
	density = TRUE
	climbable = TRUE
	breakable = TRUE
	bound_height = 32
	bound_width = 64
	debris = list(/obj/item/stack/sheet/wood)

/obj/structure/prop/hybrisa/furniture/tables/tablewood/woodtablecomputer
	icon = 'icons/obj/structures/props/hybrisatables.dmi'
	icon_state = "brownlargetable_computer"

/obj/structure/prop/hybrisa/furniture/tables/tablepool
	name = "pool table"
	desc = "A large table used for Pool."
	icon = 'icons/obj/structures/props/hybrisatables.dmi'
	icon_state = "table_pool"
	density = TRUE
	bound_height = 32
	bound_width = 64
	climbable = TRUE
	breakable = TRUE
	debris = list(/obj/item/stack/sheet/wood)

/obj/structure/prop/hybrisa/furniture/tables/tablegambling
	name = "gambling table"
	desc = "A large table used for gambling."
	icon = 'icons/obj/structures/props/hybrisatables.dmi'
	icon_state = "table_cards"
	density = TRUE
	bound_height = 32
	bound_width = 64
	climbable = TRUE
	breakable = TRUE
	debris = list(/obj/item/stack/sheet/wood)

// Chairs
/obj/structure/bed/hybrisa/chairs
	name = "expensive chair"
	desc = "A expensive looking chair"

/obj/structure/bed/hybrisa/chairs/black
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "comfychair_hybrisablack"

/obj/structure/bed/hybrisa/chairs/red
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "comfychair_hybrisared"

/obj/structure/bed/hybrisa/chairs/blue
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "comfychair_hybrisablue"

/obj/structure/bed/hybrisa/chairs/brown
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "comfychair_hybrisabrown"

// Beds

/obj/structure/bed/hybrisa
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "hybrisa"

/obj/structure/bed/hybrisa/prisonbed
	name = "bunk bed"
	desc = "A sorry looking bunk-bed."
	icon_state = "prisonbed"

/obj/structure/bed/hybrisa/bunkbed1
	name = "bunk bed"
	desc = "A comfy looking bunk-bed."
	icon_state = "zbunkbed"

/obj/structure/bed/hybrisa/bunkbed2
	name = "bunk bed"
	desc = "A comfy looking bunk-bed."
	icon_state = "zbunkbed2"

/obj/structure/bed/hybrisa/bunkbed3
	name = "bunk bed"
	desc = "A comfy looking bunk-bed."
	icon_state = "zbunkbed3"

/obj/structure/bed/hybrisa/bunkbed4
	name = "bunk bed"
	desc = "A comfy looking bunk-bed."
	icon_state = "zbunkbed4"

// Xenobiology

/obj/structure/prop/hybrisa/xenobiology
	icon = 'icons/obj/structures/props/hybrisaxenocryogenics.dmi'
	icon_state = "xenocellemptyon"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/xenobiology/small/empty
	name = "specimen containment cell"
	desc = "It's empty."
	icon_state = "xenocellemptyon"
	density = TRUE

/obj/structure/prop/hybrisa/xenobiology/small/offempty
	name = "specimen containment cell"
	desc = "It's turned off and empty."
	icon_state = "xenocellemptyoff"
	density = TRUE

/obj/structure/prop/hybrisa/xenobiology/small/larva
	name = "specimen containment cell"
	desc = "There is something worm-like inside..."
	icon_state = "xenocelllarva"
	density = TRUE

/obj/structure/prop/hybrisa/xenobiology/small/egg
	name = "specimen containment cell"
	desc = "There is, what looks like some sort of egg inside..."
	icon_state = "xenocellegg"
	density = TRUE

/obj/structure/prop/hybrisa/xenobiology/small/hugger
	name = "specimen containment cell"
	desc = "There's something spider-like inside..."
	icon_state = "xenocellhugger"
	density = TRUE

/obj/structure/prop/hybrisa/xenobiology/small/cracked1
	name = "specimen containment cell"
	desc = "Looks like something broke it...from the inside."
	icon_state = "xenocellcrackedempty"
	density = TRUE

/obj/structure/prop/hybrisa/xenobiology/small/cracked2
	name = "specimen containment cell"
	desc = "Looks like something broke it...from the inside."
	icon_state = "xenocellcrackedempty2"
	density = TRUE

/obj/structure/prop/hybrisa/xenobiology/small/crackedegg
	name = "specimen containment cell"
	desc = "Looks like something broke it, there's a giant empty egg inside."
	icon_state = "xenocellcrackedegg"
	density = TRUE

/obj/structure/prop/hybrisa/xenobiology/big
	icon = 'icons/obj/structures/props/hybrisaxenocryogenics2.dmi'
	name = "specimen containment cell"
	desc = "A giant tube with a hulking monstrosity inside, is this thing alive?"
	icon_state = "bigqueencryo1"
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE

/obj/structure/prop/hybrisa/xenobiology/big/bigleft
	icon_state = "bigqueencryo1"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/xenobiology/big/bigright
	icon_state = "bigqueencryo2"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/xenobiology/big/bigbottomleft
	icon_state = "bigqueencryo3"
	density = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/xenobiology/big/bigbottomright
	icon_state = "bigqueencryo4"
	density = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/xenobiology/misc
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	name = "strange egg"
	desc = "A strange ancient looking egg, it seems to be inert."
	icon_state = "inertegg"
	unslashable = TRUE
	indestructible = TRUE
	layer = 2

// Engineer

/obj/structure/prop/hybrisa/engineer
	icon = 'icons/obj/structures/props/engineerJockey.dmi'
	icon_state = "spacejockey"

/obj/structure/prop/hybrisa/engineer/spacejockey
	name = "Giant Pilot"
	desc = "A Giant Alien life form. Looks like it's been dead a long time. Fossilized. Looks like it's growing out of the chair. Bones are bent outward, like it exploded from inside."
	icon = 'icons/obj/structures/props/engineerJockey.dmi'
	icon_state = "spacejockey"
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/engineer/giantpodbroken
	name = "Giant Hypersleep Chamber"
	desc = "What looks to be a Giant Hypersleep Chamber, this one appears to contain a Alien life form. it looks like it's been dead for a long time, Fossilized. From what you can see it's bones are bent outwards, the chambers outer shell has holes melted, pushing outwards. "
	icon = 'icons/obj/structures/props/engineerPod.dmi'
	icon_state = "pod_broken"
	bound_height = 96
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE
	layer = ABOVE_MOB_LAYER
	density = TRUE

/obj/structure/prop/hybrisa/engineer/giantpod
	name = "Giant Hypersleep Chamber"
	desc = "What looks to be a Giant Hypersleep Chamber, a strange alien design, unlike anything you've ever seen before. It's empty."
	icon = 'icons/obj/structures/props/engineerPod.dmi'
	icon_state = "pod"
	bound_height = 96
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/engineer/giantconsole
	name = "Giant Alien Console"
	desc = "A Giant Alien console of some kind, unlike anything you've ever seen before. Who knows the purpose of this strange technology..."
	icon = 'icons/obj/structures/props/64x64_hybrisarandomprops.dmi'
	icon_state = "engineerconsole"
	bound_height = 32
	bound_width = 32
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE
	density = TRUE

/obj/structure/prop/hybrisa/engineer/engineerpillar
	icon = 'icons/obj/structures/props/hybrisaengineerpillarangled.dmi'
	icon_state = "engineerpillar_SW1fade"
	bound_height = 64
	bound_width = 128
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/engineer/engineerpillar/northwesttop
	name = "strange pillar"
	icon_state = "engineerpillar_NW1"

/obj/structure/prop/hybrisa/engineer/engineerpillar/northwestbottom
	name = "strange pillar"
	icon_state = "engineerpillar_NW2"

/obj/structure/prop/hybrisa/engineer/engineerpillar/southwesttop
	name = "strange pillar"
	icon_state = "engineerpillar_SW1"

/obj/structure/prop/hybrisa/engineer/engineerpillar/southwestbottom
	name = "strange pillar"
	icon_state = "engineerpillar_SW2"

/obj/structure/prop/hybrisa/engineer/engineerpillar/smallsouthwest1
	name = "strange pillar"
	icon_state = "engineerpillar_SW1fade"

/obj/structure/prop/hybrisa/engineer/engineerpillar/smallsouthwest2
	name = "strange pillar"
	icon_state = "engineerpillar_SW2fade"

/obj/structure/prop/hybrisa/engineer/blackgoocontainer
	name = "strange container"
	icon_state = "blackgoocontainer1"
	desc = "A strange alien container, who knows what's inside..."
	icon = 'icons/obj/structures/props/blackgoocontainers.dmi'

// Airport

/obj/structure/prop/hybrisa/airport
	name = "nose cone"
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "dropshipfrontwhite1"
	unslashable = TRUE
	unacidable = TRUE

/obj/structure/prop/hybrisa/airport/dropshipnosecone
	name = "nose cone"
	icon_state = "dropshipfrontwhite1"
	indestructible = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/airport/dropshipwingleft
	name = "wing"
	icon_state = "dropshipwingtop1"
	indestructible = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/airport/dropshipwingright
	name = "wing"
	icon_state = "dropshipwingtop2"
	indestructible = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/airport/dropshipvent1left
	name = "vent"
	icon_state = "dropshipvent1"
	indestructible = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/airport/dropshipvent2right
	name = "vent"
	icon_state = "dropshipvent2"
	indestructible = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/airport/dropshipventleft
	name = "vent"
	icon_state = "dropshipvent3"
	indestructible = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/airport/dropshipventright
	name = "vent"
	icon_state = "dropshipvent4"
	indestructible = TRUE
	layer = ABOVE_MOB_LAYER

// Dropship damage

/obj/structure/prop/hybrisa/airport/dropshipenginedamage
	name = "dropship damage"
	desc = "the engine appears to have severe damage."
	icon = 'icons/obj/structures/props/64x96-hybrisarandomprops.dmi'
	icon_state = "dropship_engine_damage"
	bound_height = 64
	bound_width = 96
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE

/obj/structure/prop/hybrisa/airport/dropshipenginedamagenofire
	name = "dropship damage"
	desc = "the engine appears to have severe damage."
	icon = 'icons/obj/structures/props/64x96-hybrisarandomprops.dmi'
	icon_state = "dropship_engine_damage_nofire"
	bound_height = 64
	bound_width = 96
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE

/obj/structure/prop/hybrisa/airport/refuelinghose
	name = "refueling hose"
	desc = "A long refueling hose that connects to various types of dropships."
	icon = 'icons/obj/structures/props/64x96-hybrisarandomprops.dmi'
	icon_state = "fuelline1"
	bound_height = 64
	bound_width = 96
	unslashable = TRUE
	unacidable = TRUE

/obj/structure/prop/hybrisa/airport/refuelinghose2
	name = "refueling hose"
	desc = "A long refueling hose that connects to various types of dropships."
	icon = 'icons/obj/structures/props/64x96-hybrisarandomprops.dmi'
	icon_state = "fuelline2"
	bound_height = 64
	bound_width = 96
	unslashable = TRUE
	unacidable = TRUE

// Pilot body

/obj/structure/prop/hybrisa/airport/deadpilot1
	name = "decapitated Weyland-Yutani Pilot"
	desc = "What remains of a Weyland-Yutani Pilot. Their entire head is missing. Where'd it roll off to?..."
	icon = 'icons/obj/structures/props/64x96-hybrisarandomprops.dmi'
	icon_state = "pilotbody_decap1"
	bound_height = 64
	bound_width = 96
	unslashable = TRUE
	unacidable = TRUE

/obj/structure/prop/hybrisa/airport/deadpilot2
	name = "decapitated Weyland-Yutani Pilot"
	desc = "What remains of a Weyland-Yutani Pilot. Their entire head is missing. Where'd it roll off to?..."
	icon = 'icons/obj/structures/props/64x96-hybrisarandomprops.dmi'
	icon_state = "pilotbody_decap2"
	bound_height = 64
	bound_width = 96
	unslashable = TRUE
	unacidable = TRUE

// Misc

/obj/structure/prop/hybrisa/misc
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "roadbarrier"

// Floor props

/obj/structure/prop/hybrisa/misc/floorprops
	icon_state = "solidgrate1"
	layer = HATCH_LAYER

/obj/structure/prop/hybrisa/misc/floorprops/grate
	name = "solid metal grate"
	desc = "A metal grate."
	icon_state = "solidgrate1"

/obj/structure/prop/hybrisa/misc/floorprops/grate2
	name = "solid metal grate"
	desc = "A metal grate."
	icon_state = "solidgrate5"

/obj/structure/prop/hybrisa/misc/floorprops/grate3
	name = "solid metal grate"
	desc = "A metal grate."
	icon_state = "zhalfgrate1"

/obj/structure/prop/hybrisa/misc/floorprops/floorglass
	name = "reinforced glass floor"
	desc = "A heavily reinforced glass floor panel, this looks almost indestructible."
	icon_state = "solidgrate2"
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE

/obj/structure/prop/hybrisa/misc/floorprops/floorglass2
	name = "reinforced glass floor"
	desc = "A heavily reinforced glass floor panel, this looks almost indestructible."
	icon_state = "solidgrate3"
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE
	layer = ABOVE_TURF_LAYER

/obj/structure/prop/hybrisa/misc/floorprops/floorglass3
	name = "reinforced glass floor"
	desc = "A heavily reinforced glass floor panel, this looks almost indestructible."
	icon_state = "solidgrate4"
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE

// Graffiti

/obj/structure/prop/hybrisa/misc/graffiti
	name = "graffiti"
	icon = 'icons/obj/structures/props/64x96-hybrisarandomprops.dmi'
	icon_state = "zgraffiti4"
	bound_height = 64
	bound_width = 96
	unslashable = TRUE
	unacidable = TRUE
	breakable = TRUE

/obj/structure/prop/hybrisa/misc/graffiti/graffiti1
	icon_state = "zgraffiti1"

/obj/structure/prop/hybrisa/misc/graffiti/graffiti2
	icon_state = "zgraffiti2"

/obj/structure/prop/hybrisa/misc/graffiti/graffiti3
	icon_state = "zgraffiti3"

/obj/structure/prop/hybrisa/misc/graffiti/graffiti4
	icon_state = "zgraffiti4"

/obj/structure/prop/hybrisa/misc/graffiti/graffiti5
	icon_state = "zgraffiti5"

/obj/structure/prop/hybrisa/misc/graffiti/graffiti6
	icon_state = "zgraffiti6"

/obj/structure/prop/hybrisa/misc/graffiti/graffiti7
	icon_state = "zgraffiti7"

// Wall Blood

/obj/structure/prop/hybrisa/misc/blood
	name = "blood"
	icon = 'icons/obj/structures/props/64x96-hybrisarandomprops.dmi'
	icon_state = "wallblood_floorblood"
	unslashable = TRUE
	unacidable = TRUE
	breakable = TRUE

/obj/structure/prop/hybrisa/misc/blood/blood1
	icon_state = "wallblood_floorblood"

/obj/structure/prop/hybrisa/misc/blood/blood2
	icon_state = "wall_blood_1"

/obj/structure/prop/hybrisa/misc/blood/blood3
	icon_state = "wall_blood_2"

// Fire

/obj/structure/prop/hybrisa/misc/fire
	name = "fire"
	icon = 'icons/obj/structures/props/64x96-hybrisarandomprops.dmi'
	icon_state = "zfire_smoke"
	layer = 5
	light_on = TRUE
	light_power = 2
	light_range = 3

/obj/structure/prop/hybrisa/misc/fire/fire1
	icon_state = "zfire_smoke"

/obj/structure/prop/hybrisa/misc/fire/fire2
	icon_state = "zfire_smoke2"

/obj/structure/prop/hybrisa/misc/fire/firebarrel
	name = "barrel"
	icon_state = "zbarrelfireon"

// Misc

/obj/structure/prop/hybrisa/misc/commandosuitemptyprop
	name = "Weyland-Yutani 'Ape-Suit' Showcase"
	desc = "A display model of the Weyland-Yutani 'Apesuit', shame it's only a model..."
	icon_state = "dogcatchersuitempty1"

/obj/structure/prop/hybrisa/misc/cabinet
	name = "cabinet"
	desc = "a small cabinet with drawers."
	icon_state = "sidecabinet"

/obj/structure/prop/hybrisa/misc/trash/green
	name = "trash bin"
	desc = "A Weyland-Yutani trash bin used for disposing your unwanted items, or you can just throw your shit on the ground like every other asshole."
	icon_state = "trashgreen"
	density = TRUE

/obj/structure/prop/hybrisa/misc/trash/blue
	name = "trash bin"
	desc = "A Weyland-Yutani trash bin used for disposing your unwanted items, or you can just throw your shit on the ground like every other asshole."
	icon_state = "trashblue"
	density = TRUE

/obj/structure/prop/hybrisa/misc/redmeter
	name = "meter"
	icon_state = "redmeter"

/obj/structure/prop/hybrisa/misc/firebarreloff
	name = "barrel"
	icon_state = "zfirebarreloff"

/obj/structure/prop/hybrisa/misc/trashbagfullprop
	name = "trash bag"
	icon_state = "ztrashbag"

/obj/structure/prop/hybrisa/misc/slotmachine
	name = "slot machine"
	desc = "A slot machine."
	icon = 'icons/obj/structures/props/64x64_hybrisarandomprops.dmi'
	icon_state = "slotmachine"
	bound_width = 32
	bound_height = 32
	anchored = TRUE
	density = TRUE
	layer = WINDOW_LAYER

/obj/structure/prop/hybrisa/misc/slotmachine_broken
	name = "slot machine"
	desc = "A broken slot machine."
	icon = 'icons/obj/structures/props/64x64_hybrisarandomprops.dmi'
	icon_state = "slotmachine_broken"
	bound_width = 32
	bound_height = 32
	anchored = TRUE
	density = TRUE
	layer = WINDOW_LAYER

/obj/structure/prop/hybrisa/misc/coffeestuff/coffeemachine1
	name = "coffee machine"
	desc = "A coffee machine."
	icon_state = "coffee"

/obj/structure/prop/hybrisa/misc/coffeestuff/coffeemachine2
	name = "coffee machine"
	desc = "A coffee machine."
	icon_state = "coffee_cup"

/obj/structure/prop/hybrisa/misc/machinery/computers
	name = "computer"
	icon_state = "mapping_comp"

/obj/structure/prop/hybrisa/misc/machinery/computers/computerwhite/computer1
	icon_state = "mapping_comp"

/obj/structure/prop/hybrisa/misc/machinery/computers/computerwhite/computer2
	icon_state = "mps"

/obj/structure/prop/hybrisa/misc/machinery/computers/computerwhite/computer3
	icon_state = "sensor_comp1"

/obj/structure/prop/hybrisa/misc/machinery/computers/computerwhite/computer4
	icon_state = "sensor_comp2"

/obj/structure/prop/hybrisa/misc/machinery/computers/computerwhite/computer5
	icon_state = "sensor_comp3"

/obj/structure/prop/hybrisa/misc/machinery/computers/computerblack/computer1
	icon_state = "blackmapping_comp"

/obj/structure/prop/hybrisa/misc/machinery/computers/computerblack/computer2
	icon_state = "blackmps"

/obj/structure/prop/hybrisa/misc/machinery/computers/computerblack/computer3
	icon_state = "blacksensor_comp1"

/obj/structure/prop/hybrisa/misc/machinery/computers/computerblack/computer4
	icon_state = "blacksensor_comp2"

/obj/structure/prop/hybrisa/misc/machinery/computers/computerblack/computer5
	icon_state = "blacksensor_comp3"

/obj/structure/prop/hybrisa/misc/machinery/screens
	name = "monitor"

/obj/structure/prop/hybrisa/misc/machinery/screens/frame
	icon_state = "frame"

/obj/structure/prop/hybrisa/misc/machinery/screens/security
	icon_state = "security"

/obj/structure/prop/hybrisa/misc/machinery/screens/evac
	icon_state = "evac"

/obj/structure/prop/hybrisa/misc/machinery/screens/redalert
	icon_state = "redalert"

/obj/structure/prop/hybrisa/misc/machinery/screens/redalertblank
	icon_state = "redalertblank"

/obj/structure/prop/hybrisa/misc/machinery/screens/entertainment
	icon_state = "entertainment"

/obj/structure/prop/hybrisa/misc/machinery/screens/telescreen
	icon_state = "telescreen"

/obj/structure/prop/hybrisa/misc/machinery/screens/telescreenbroke
	icon_state = "telescreenb"

/obj/structure/prop/hybrisa/misc/machinery/screens/telescreenbrokespark
	icon_state = "telescreenbspark"

// Multi-Monitor

//Green
/obj/structure/prop/hybrisa/misc/machinery/screens/multimonitorsmall_off
	icon_state = "multimonitorsmall_off"

/obj/structure/prop/hybrisa/misc/machinery/screens/multimonitorsmall_on
	icon_state = "multimonitorsmall_on"

/obj/structure/prop/hybrisa/misc/machinery/screens/multimonitormedium_off
	icon_state = "multimonitormedium_off"

/obj/structure/prop/hybrisa/misc/machinery/screens/multimonitormedium_on
	icon_state = "multimonitormedium_on"

/obj/structure/prop/hybrisa/misc/machinery/screens/multimonitorbig_off
	icon_state = "multimonitorbig_off"

/obj/structure/prop/hybrisa/misc/machinery/screens/multimonitorbig_on
	icon_state = "multimonitorbig_on"

// Blue

/obj/structure/prop/hybrisa/misc/machinery/screens/bluemultimonitorsmall_off
	icon_state = "bluemultimonitorsmall_off"

/obj/structure/prop/hybrisa/misc/machinery/screens/bluemultimonitorsmall_on
	icon_state = "bluemultimonitorsmall_on"

/obj/structure/prop/hybrisa/misc/machinery/screens/bluemultimonitormedium_off
	icon_state = "bluemultimonitormedium_off"

/obj/structure/prop/hybrisa/misc/machinery/screens/bluemultimonitormedium_on
	icon_state = "bluemultimonitormedium_on"

/obj/structure/prop/hybrisa/misc/machinery/screens/bluemultimonitorbig_off
	icon_state = "bluemultimonitorbig_off"

/obj/structure/prop/hybrisa/misc/machinery/screens/bluemultimonitorbig_on
	icon_state = "bluemultimonitorbig_on"

// Egg
/obj/structure/prop/hybrisa/misc/machinery/screens/wallegg_off
	icon_state = "wallegg_off"

/obj/structure/prop/hybrisa/misc/machinery/screens/wallegg_on
	icon_state = "wallegg_on"

/obj/structure/prop/hybrisa/misc/fake/pipes
	name = "disposal pipe"
	layer = TURF_LAYER
/obj/structure/prop/hybrisa/misc/fake/pipes/pipe1
	icon_state = "pipe-s"

/obj/structure/prop/hybrisa/misc/fake/pipes/pipe2
	icon_state = "pipe-c"

/obj/structure/prop/hybrisa/misc/fake/pipes/pipe3
	icon_state = "pipe-j1"

/obj/structure/prop/hybrisa/misc/fake/pipes/pipe4
	icon_state = "pipe-y"

/obj/structure/prop/hybrisa/misc/fake/pipes/pipe5
	icon_state = "pipe-b"

/obj/structure/prop/hybrisa/misc/fake/wire
	name = "power cable"
	layer = TURF_LAYER
/obj/structure/prop/hybrisa/misc/fake/wire/red
	icon_state = "intactred"

/obj/structure/prop/hybrisa/misc/fake/wire/yellow
	icon_state = "intactyellow"

/obj/structure/prop/hybrisa/misc/fake/wire/blue
	icon_state = "intactblue"

/obj/structure/prop/hybrisa/misc/fake/heavydutywire
	name = "heavy duty wire"
	layer = TURF_LAYER
/obj/structure/prop/hybrisa/misc/fake/heavydutywire/heavy1
	icon_state = "0-1"

/obj/structure/prop/hybrisa/misc/fake/heavydutywire/heavy2
	icon_state = "1-2"

/obj/structure/prop/hybrisa/misc/fake/heavydutywire/heavy3
	icon_state = "1-4"

/obj/structure/prop/hybrisa/misc/fake/heavydutywire/heavy4
	icon_state = "1-2-4"

/obj/structure/prop/hybrisa/misc/fake/heavydutywire/heavy5
	icon_state = "1-2-4-8"

/obj/structure/prop/hybrisa/misc/fake/lattice
	name = "structural lattice"
	layer = TURF_LAYER
/obj/structure/prop/hybrisa/misc/fake/lattice/full
	icon_state = "latticefull"

// Cargo Containers extended

/obj/structure/cargo_container/hybrisa/containersextended
	name = "cargo container"
	desc = "a cargo container."
	icon = 'icons/obj/structures/props/containersextended.dmi'
	icon_state = "blackwyleft"
	bound_height = 32
	bound_width = 32
	layer = ABOVE_MOB_LAYER

/obj/structure/cargo_container/hybrisa/containersextended/blueleft
	name = "cargo container"
	icon_state = "blueleft"

/obj/structure/cargo_container/hybrisa/containersextended/blueright
	name = "cargo container"
	icon_state = "blueright"

/obj/structure/cargo_container/hybrisa/containersextended/greenleft
	name = "cargo container"
	icon_state = "greenleft"

/obj/structure/cargo_container/hybrisa/containersextended/greenright
	name = "cargo container"
	icon_state = "greenright"

/obj/structure/cargo_container/hybrisa/containersextended/tanleft
	name = "cargo container"
	icon_state = "tanleft"

/obj/structure/cargo_container/hybrisa/containersextended/tanright
	name = "cargo container"
	icon_state = "tanright"

/obj/structure/cargo_container/hybrisa/containersextended/redleft
	name = "cargo container"
	icon_state = "redleft"

/obj/structure/cargo_container/hybrisa/containersextended/redright
	name = "cargo container"
	icon_state = "redright"

/obj/structure/cargo_container/hybrisa/containersextended/greywyleft
	name = "Weyland-Yutani cargo container"
	icon_state = "greywyleft"

/obj/structure/cargo_container/hybrisa/containersextended/greywyright
	name = "Weyland-Yutani cargo container"
	icon_state = "greywyright"

/obj/structure/cargo_container/hybrisa/containersextended/lightgreywyleft
	name = "Weyland-Yutani cargo container"
	icon_state = "lightgreywyleft"

/obj/structure/cargo_container/hybrisa/containersextended/lightgreywyright
	name = "Weyland-Yutani cargo container"
	icon_state = "lightgreywyright"

/obj/structure/cargo_container/hybrisa/containersextended/blackwyleft
	name = "Weyland-Yutani cargo container"
	icon_state = "blackwyleft"

/obj/structure/cargo_container/hybrisa/containersextended/blackwyright
	name = "Weyland-Yutani cargo container"
	icon_state = "blackwyright"

/obj/structure/cargo_container/hybrisa/containersextended/whitewyleft
	name = "Weyland-Yutani cargo container"
	icon_state = "whitewyleft"

/obj/structure/cargo_container/hybrisa/containersextended/whitewyright
	name = "Weyland-Yutani cargo container"
	icon_state = "whitewyright"

/obj/structure/cargo_container/hybrisa/containersextended/tanwywingsleft
	name = "cargo container"
	icon_state = "tanwywingsleft"

/obj/structure/cargo_container/hybrisa/containersextended/tanwywingsright
	name = "cargo container"
	icon_state = "tanwywingsright"

/obj/structure/cargo_container/hybrisa/containersextended/greenwywingsleft
	name = "cargo container"
	icon_state = "greenwywingsleft"

/obj/structure/cargo_container/hybrisa/containersextended/greenwywingsright
	name = "cargo container"
	icon_state = "greenwywingsright"

/obj/structure/cargo_container/hybrisa/containersextended/bluewywingsleft
	name = "cargo container"
	icon_state = "bluewywingsleft"

/obj/structure/cargo_container/hybrisa/containersextended/bluewywingsright
	name = "cargo container"
	icon_state = "bluewywingsright"

/obj/structure/cargo_container/hybrisa/containersextended/redwywingsleft
	name = "cargo container"
	icon_state = "redwywingsleft"

/obj/structure/cargo_container/hybrisa/containersextended/redwywingsright
	name = "cargo container"
	icon_state = "redwywingsright"

/obj/structure/cargo_container/hybrisa/containersextended/medicalleft
	name = "medical cargo containers"
	icon_state = "medicalleft"

/obj/structure/cargo_container/hybrisa/containersextended/medicalright
	name = "medical cargo containers"
	icon_state = "medicalright"

/obj/structure/cargo_container/hybrisa/containersextended/emptymedicalleft
	name = "medical cargo container"
	icon_state = "emptymedicalleft"

/obj/structure/cargo_container/hybrisa/containersextended/emptymedicalright
	name = "medical cargo container"
	icon_state = "emptymedicalright"

/// Fake Platforms

/obj/structure/prop/hybrisa/fakeplatforms
	name = "platform"
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'

/obj/structure/prop/hybrisa/fakeplatforms/platform1
	icon_state = "engineer_platform"
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE

/obj/structure/prop/hybrisa/fakeplatforms/platform2
	icon_state = "engineer_platform_platformcorners"
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE

/obj/structure/prop/hybrisa/fakeplatforms/platform3
	icon_state = "platform"
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE

/obj/structure/prop/hybrisa/fakeplatforms/platform4
	icon_state = "hybrisaplatform3"
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE

// Greeblies
/obj/structure/prop/hybrisa/misc/buildinggreeblies
	name = "machinery"
	icon = 'icons/obj/structures/props/64x64_hybrisarandomprops.dmi'
	icon_state = "buildingventbig1"
	bound_width = 64
	bound_height = 32
	density = TRUE
	health = 200
	anchored = TRUE
	layer = EXTERIOR_HIGHWALLMOUNT_LAYER

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble1
	icon_state = "buildingventbig2"

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble2
	icon_state = "buildingventbig3"

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble3
	icon_state = "buildingventbig4"

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble4
	icon_state = "buildingventbig5"

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble5
	icon_state = "buildingventbig6"

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble6
	icon_state = "buildingventbig7"

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble7
	icon_state = "buildingventbig8"

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble8
	icon_state = "buildingventbig9"

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble9
	icon_state = "buildingventbig10"

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble10
	density = FALSE
	icon_state = "buildingventbig11"

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble11
	density = FALSE
	icon_state = "buildingventbig12"

/obj/structure/prop/hybrisa/misc/buildinggreeblies/greeble12
	density = FALSE
	icon_state = "buildingventbig13"

/obj/structure/prop/hybrisa/misc/buildinggreebliessmall
	name = "wall vent"
	name = "wall vent"
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "smallwallvent1"
	density = FALSE

/obj/structure/prop/hybrisa/misc/buildinggreebliessmall/smallvent2
	name = "wall vent"
	icon_state = "smallwallvent2"

/obj/structure/prop/hybrisa/misc/buildinggreebliessmall/smallvent3
	name = "wall vent"
	icon_state = "smallwallvent3"

/obj/structure/prop/hybrisa/misc/buildinggreebliessmall/computer
	name = "machinery"
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "zcomputermachine"
	density = TRUE

/obj/structure/prop/hybrisa/misc/metergreen
	name = "meter"
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "biggreenmeter1"

// MISC

/obj/structure/prop/hybrisa/misc/stoneplanterseats
	name = "concrete seated planter"
	desc = "A decorative concrete planter with seating attached, the seats are fitted with synthetic leather, they've faded in time.."
	icon = 'icons/obj/structures/props/64x64_hybrisarandomprops.dmi'
	icon_state = "planterseats"
	bound_width = 32
	bound_height = 64
	density = TRUE
	health = 200
	anchored = TRUE

/obj/structure/prop/hybrisa/misc/stoneplanterseats/empty
	name = "concrete planter"
	desc = "A decorative concrete planter."
	icon_state = "planterempty"

/obj/structure/prop/hybrisa/misc/concretestatue
	name = "concrete statue"
	desc = "A decorative statue with the Weyland-Yutani 'Wings' adorned on it, A corporate brutalist piece of art."
	icon = 'icons/obj/structures/props/64x64_hybrisarandomprops.dmi'
	icon_state = "concretesculpture"
	bound_width = 64
	bound_height = 64
	density = TRUE
	anchored = TRUE
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE

/obj/structure/prop/hybrisa/misc/detonator
	name = "detonator"
	desc = "A detonator for explosives, armed and ready."
	icon_state = "detonator"
	density = FALSE
	anchored = TRUE
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE
	var/id = 1
	var/range = 15

/obj/structure/prop/hybrisa/misc/detonator/attack_hand(mob/user)
	for(var/obj/item/explosive/plastic/hybrisa/mining/explosive in range(range))
		if(explosive.id == id)
			var/turf/target_turf
			target_turf = get_turf(explosive.loc)
			var/datum/cause_data/temp_cause = create_cause_data(src, user)
			explosive.handle_explosion(target_turf,temp_cause)

/obj/structure/prop/hybrisa/misc/firehydrant
	name = "fire hydrant"
	desc = "A fire hydrant public water outlet, designed for quick access to water."
	icon_state = "firehydrant"
	density = TRUE
	anchored = TRUE
/obj/structure/prop/hybrisa/misc/bench
	name = "bench"
	desc = "A metal frame, with seats that are fitted with synthetic leather, they've faded in time."
	icon = 'icons/obj/structures/props/64x64_hybrisarandomprops.dmi'
	icon_state = "seatedbench"
	bound_width = 32
	bound_height = 64
	layer = BELOW_MOB_LAYER
	density = FALSE
	health = 200
	anchored = TRUE

// Phonebox Prop (Doesn't actually work a locker)
/obj/structure/prop/hybrisa/misc/phonebox
	name = "wrecked phonebox"
	desc = "It's a phonebox, outdated but realiable technology. These are used to communicate throughout the colony and connected colonies without interference. It seems it's completely wrecked, the glass is smashed, hiding inside would be pointless."
	icon = 'icons/obj/structures/props/phonebox.dmi'
	icon_state = "phonebox_off_broken"
	layer = ABOVE_MOB_LAYER
	bound_width = 32
	bound_height = 32
	density = TRUE
	anchored = TRUE
/obj/structure/prop/hybrisa/misc/phonebox/bloody
	name = "wrecked phonebox"
	desc = "It's a phonebox, outdated but realiable technology. These are used to communicate throughout the colony and connected colonies without interference. It seems it's completely wrecked, covered in blood and the glass is smashed. Hiding inside would be pointless."
	icon_state = "phonebox_bloody_off_broken"

// Signs

/obj/structure/prop/hybrisa/signs
	name = "neon sign"
	icon = 'icons/obj/structures/props/hybrisa64x64_signs.dmi'
	icon_state = "jacksopen_on"
	bound_height = 64
	bound_width = 64
	unslashable = TRUE
	unacidable = TRUE
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/hybrisa/signs/casniosign
	name = "casino sign"
	icon_state = "nightgoldcasinoopen_on"

/obj/structure/prop/hybrisa/signs/jackssign
	name = "jack's surplus sign"
	icon_state = "jacksopen_on"

/obj/structure/prop/hybrisa/signs/opensign
	name = "open sign"
	icon_state = "open_on"

/obj/structure/prop/hybrisa/signs/opensign2
	name = "open sign"
	icon_state = "open_on2"

/obj/structure/prop/hybrisa/signs/pizzasign
	name = "pizza sign"
	icon_state = "pizzaneon_on"

/obj/structure/prop/hybrisa/signs/weymartsign
	name = "weymart sign"
	icon_state = "weymartsign2"

/obj/structure/prop/hybrisa/signs/mechanicsign
	name = "mechanic sign"
	icon_state = "mechanicopen_on2"

/obj/structure/prop/hybrisa/signs/cuppajoessign
	name = "cuppa joe's sign"
	icon_state = "cuppajoes"

/obj/structure/prop/hybrisa/signs/barsign
	name = "bar sign"
	icon_state = "barsign_on"

// Small Sign
/obj/structure/prop/hybrisa/signs/high_voltage
	name = "warning sign"
	desc = "DANGER - HIGH VOLTAGE - DEATH!."
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "shockyBig"

/obj/structure/prop/hybrisa/signs/high_voltage/small
	name = "warning sign"
	desc = "DANGER - HIGH VOLTAGE - DEATH!."
	icon = 'icons/obj/structures/props/hybrisarandomprops.dmi'
	icon_state = "shockyTiny"

// Billboards, Signs and Posters

/// Alien Isolation - posters used as reference (direct downscale of the image for some) If anyone wants to name the billboards individually ///
/obj/structure/prop/hybrisa/billboardsandsigns/bigbillboards
	name = "billboard"
	desc = "A advertisement billboard."
	icon = 'icons/obj/structures/props/32x64_hybrisabillboards.dmi'
	icon_state = "billboard_bigger"
	bound_width = 64
	bound_height = 32
	density = FALSE
	health = 200
	anchored = TRUE

/obj/structure/prop/hybrisa/billboardsandsigns/billboardsmedium/billboard1
	name = "billboard"
	desc = "A advertisement billboard."
	icon = 'icons/obj/structures/props/32x64_hybrisabillboards.dmi'
	icon_state = "billboard1"

/obj/structure/prop/hybrisa/billboardsandsigns/billboardsmedium/billboard2
	name = "billboard"
	desc = "A advertisement billboard."
	icon = 'icons/obj/structures/props/32x64_hybrisabillboards.dmi'
	icon_state = "billboard2"

/obj/structure/prop/hybrisa/billboardsandsigns/billboardsmedium/billboard3
	name = "billboard"
	desc = "A advertisement billboard."
	icon = 'icons/obj/structures/props/32x64_hybrisabillboards.dmi'
	icon_state = "billboard3"

/obj/structure/prop/hybrisa/billboardsandsigns/billboardsmedium/billboard4
	name = "billboard"
	desc = "A advertisement billboard."
	icon = 'icons/obj/structures/props/32x64_hybrisabillboards.dmi'
	icon_state = "billboard4"

// Big Road Signs
/obj/structure/prop/hybrisa/billboardsandsigns/bigroadsigns
	name = "road sign"
	desc = "A road sign."
	icon = 'icons/obj/structures/props/64x64_hybrisarandomprops.dmi'
	icon_state = "roadsign_1"
	bound_width = 64
	bound_height = 32
	density = FALSE
	health = 200
	anchored = TRUE
	layer = 8
/obj/structure/prop/hybrisa/billboardsandsigns/bigroadsigns/road_sign_1
	icon_state = "roadsign_1"
/obj/structure/prop/hybrisa/billboardsandsigns/bigroadsigns/road_sign_2
	icon_state = "roadsign_2"

// Car Factory

/obj/structure/prop/hybrisa/Factory
	icon = 'icons/obj/structures/props/64x64_hybrisarandomprops.dmi'
	icon_state = "factory_roboticarm"

/obj/structure/prop/hybrisa/Factory/Robotic_arm
	name = "Robotic arm"
	desc = "A robotic arm used in the construction of 'Meridian' Automobiles."
	icon_state = "factory_roboticarm"
	bound_width = 64
	bound_height = 32
	anchored = TRUE

/obj/structure/prop/hybrisa/Factory/Robotic_arm/Flipped
	icon_state = "factory_roboticarm2"

/obj/structure/prop/hybrisa/Factory/Conveyor_belt
	name = "large conveyor belt"
	desc = "A large conveyor belt used in industrial factories."
	icon_state = "factory_conveyer"
	density = FALSE

// Hybrisa Lattice
/obj/structure/prop/hybrisa/lattice_prop
	desc = "A support lattice."
	name = "lattice"
	icon = 'icons/obj/structures/props/hybrisa_lattice.dmi'
	icon_state = "lattice1"
	density = FALSE
	layer = EXTERIOR_HIGHWALLMOUNT_LAYER
	health = 6000
/obj/structure/prop/hybrisa/lattice_prop/lattice_1
	icon_state = "lattice1"
/obj/structure/prop/hybrisa/lattice_prop/lattice_2
	icon_state = "lattice2"
/obj/structure/prop/hybrisa/lattice_prop/lattice_3
	icon_state = "lattice3"
/obj/structure/prop/hybrisa/lattice_prop/lattice_4
	icon_state = "lattice4"
/obj/structure/prop/hybrisa/lattice_prop/lattice_5
	icon_state = "lattice5"
/obj/structure/prop/hybrisa/lattice_prop/lattice_6
	icon_state = "lattice6"
