// Isaac's Lament props

/obj/structure/prop/isaacs_lament

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_red"

// Arcade

/obj/structure/machinery/computer/arcade/back

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_back"

/obj/structure/machinery/computer/arcade/red

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_red"

/obj/structure/machinery/computer/arcade/red_back

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_red_back"

/obj/structure/machinery/computer/arcade/blue

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_blue"

/obj/structure/machinery/computer/arcade/blue_back

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_blue_back"

/obj/structure/machinery/computer/arcade/green

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_green"

/obj/structure/machinery/computer/arcade/green_back

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_green_back"

/obj/structure/machinery/computer/arcade/green_stripe

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_greenstripe"

/obj/structure/machinery/computer/arcade/green_stripe_back

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_greenstripe_back"

/obj/structure/machinery/computer/arcade/blue_stripe

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_bluestripe"

/obj/structure/machinery/computer/arcade/blue_stripe_back

	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "arcade_bluestripe_back"

// Tent props

/obj/structure/prop/isaacs_lament/large_tents

	icon = 'icons/obj/structures/props/large_tent_props.dmi'
	icon_state = "medical_tent"

/obj/structure/prop/isaacs_lament/large_tents/medical
	icon_state = "medical_tent"
/obj/structure/prop/isaacs_lament/large_tents/command
	icon_state = "command_tent"
/obj/structure/prop/isaacs_lament/large_tents/supply
	icon_state = "supply_tent"
/obj/structure/prop/isaacs_lament/large_tents/small
	icon_state = "small_tent"
/obj/structure/prop/isaacs_lament/large_tents/small_closed
	icon_state = "small_closed_tent"
/obj/structure/prop/isaacs_lament/large_tents/small_closed/back
	icon_state = "small_closed_tent_back"

// Flora

// Jungle Bushes 64x64

/obj/structure/flora/isaacs_lament/bush
	name = "bush"
	icon = 'icons/obj/structures/props/jungle_bushes.dmi'
	icon_state = "bush1"
	density = FALSE
	layer = ABOVE_XENO_LAYER
	fire_flag = FLORA_BURN_NO_SPREAD
	projectile_coverage = PROJECTILE_COVERAGE_NONE
	cut_level = PLANT_CUT_MACHETE

/obj/structure/flora/isaacs_lament/bush/bush_1
	icon_state = "bush1"
/obj/structure/flora/isaacs_lament/bush/bush_2
	icon_state = "bush2"
/obj/structure/flora/isaacs_lament/bush/bush_3
	icon_state = "bush3"

// Huge Trees

/obj/structure/prop/isaacs_lament/flora/huge_trees
	name = "huge tree"
	desc = "A giant jungle tree."
	icon = 'icons/obj/structures/props/blueish_jungletrees.dmi'
	icon_state = "tree"
	bound_height = 160
	bound_width = 128
	unslashable = TRUE
	unacidable = TRUE
	indestructible = TRUE
	density = FALSE
	layer = BILLBOARD_LAYER

/obj/structure/prop/isaacs_lament/flora/huge_trees/tree_1
	icon_state = "tree1"
/obj/structure/prop/isaacs_lament/flora/huge_trees/tree_2
	icon_state = "tree2"
/obj/structure/prop/isaacs_lament/flora/huge_trees/tree_3
	icon_state = "tree3"
/obj/structure/prop/isaacs_lament/flora/huge_trees/tree_4
	icon_state = "tree4"
/obj/structure/prop/isaacs_lament/flora/huge_trees/tree_5
	icon_state = "tree5"
/obj/structure/prop/isaacs_lament/flora/huge_trees/tree_6
	icon_state = "tree6"

// New Streamer Poles

/obj/structure/prop/isaacs_lament/streamer_poles
	name = "placeholder"
	desc = "This prop shouldn't be used, so please gitlab this and notify a mapper!"
	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	density = FALSE
	unacidable = TRUE
	unslashable = TRUE
	breakable = FALSE //can't destroy these
	flags_atom = NOINTERACT

/obj/structure/prop/isaacs_lament/streamer_poles/ex_act(severity, direction)
	return

/obj/structure/prop/isaacs_lament/streamer_poles/streamer
	name = "streamers"
	gender = PLURAL
	desc = "They flutter softly. Poignant."
	icon_state = "streamers_colorable"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/isaacs_lament/streamer_poles/pole
	name = "streamer pole"
	desc = "It connects streamer to streamer."
	icon_state = "post"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/isaacs_lament/streamer_poles/streamer/colorable
	name = "streamers"
	gender = PLURAL
	desc = "They flutter softly. Poignant."
	icon_state = "streamers_colorable"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/isaacs_lament/streamer_poles/pole/colorable
	name = "streamer pole"
	desc = "It connects streamer to streamer."
	icon_state = "post_colorable"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/isaacs_lament/streamer_poles/streamer/rbg
	name = "streamers"
	gender = PLURAL
	desc = "They flutter softly. Poignant."
	icon_state = "streamers_rbg"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/isaacs_lament/streamer_poles/pole/rbg
	name = "streamer pole"
	desc = "It connects streamer to streamer."
	icon_state = "post_rbg"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/isaacs_lament/streamer_poles/streamer/colored
	name = "streamers"
	gender = PLURAL
	desc = "They flutter softly. Poignant."
	icon_state = "streamers_colored"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/isaacs_lament/streamer_poles/pole/colored
	name = "streamer pole"
	desc = "It connects streamer to streamer."
	icon_state = "post_colored"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/isaacs_lament/streamer_poles/streamer/colored_alt
	name = "streamers"
	gender = PLURAL
	desc = "They flutter softly. Poignant."
	icon_state = "streamers_colored_alt"
	layer = ABOVE_MOB_LAYER

/obj/structure/prop/isaacs_lament/streamer_poles/pole/colored_alt
	name = "streamer pole"
	desc = "It connects streamer to streamer."
	icon_state = "post_colored_alt"
	layer = ABOVE_MOB_LAYER

// Ladder props

/obj/structure/prop/isaacs_lament/ladder_props
	name = "ladder"
	desc = "A sturdy metal ladder."
	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "ladder"
	density = FALSE
	anchored = TRUE
	unslashable = TRUE
	unacidable = TRUE
	layer = LADDER_LAYER

/obj/structure/prop/isaacs_lament/ladder_props/ladder_1
	icon_state = "ladder1"
/obj/structure/prop/isaacs_lament/ladder_props/ladder_2
	icon_state = "ladder2"
/obj/structure/prop/isaacs_lament/ladder_props/ladder_3
	icon_state = "ladder3"
/obj/structure/prop/isaacs_lament/ladder_props/ladder_4
	icon_state = "ladder4"
/obj/structure/prop/isaacs_lament/ladder_props/ladder_up
	icon_state = "ladderup"
/obj/structure/prop/isaacs_lament/ladder_props/ladder_down
	icon_state = "ladderdown"
/obj/structure/prop/isaacs_lament/ladder_props/ladder_step
	icon_state = "step_ladder"

// Boards

/obj/structure/prop/isaacs_lament/boards
	name = "boards"
	desc = "Salvaged wooden boards."
	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "boards"
	density = FALSE
	anchored = TRUE
	unslashable = FALSE
	health = 100
	layer = BELOW_MOB_LAYER

/obj/structure/prop/isaacs_lament/boards/boards_1
	icon_state = "boards_2"
/obj/structure/prop/isaacs_lament/boards/boards_2
	icon_state = "boards_3"

/obj/structure/prop/isaacs_lament/boards/bullet_act(obj/projectile/P)
	health -= P.damage
	playsound(src, 'sound/effects/woodhit.ogg', 35, 1)
	..()
	healthcheck()
	return TRUE

/obj/structure/prop/isaacs_lament/boards/proc/explode()
	visible_message(SPAN_DANGER("[src] crumbles!"), max_distance = 1)
	playsound(loc, 'sound/effects/woodhit.ogg', 25)

	deconstruct(FALSE)

/obj/structure/prop/isaacs_lament/boards/proc/healthcheck()
	if(health <= 0)
		explode()

/obj/structure/prop/isaacs_lament/boards/ex_act(severity)
	switch(severity)
		if(EXPLOSION_THRESHOLD_LOW to EXPLOSION_THRESHOLD_MEDIUM)
			if(prob(50))
				deconstruct(FALSE)
		if(EXPLOSION_THRESHOLD_MEDIUM to INFINITY)
			deconstruct(FALSE)

/obj/structure/prop/isaacs_lament/boards/attack_alien(mob/living/carbon/xenomorph/current_xenomorph)
	if(unslashable)
		return XENO_NO_DELAY_ACTION
	current_xenomorph.animation_attack_on(src)
	playsound(src, 'sound/effects/woodhit.ogg', 25, 1)
	current_xenomorph.visible_message(SPAN_DANGER("[current_xenomorph] slashes at [src]!"),
	SPAN_DANGER("You slash at [src]!"), null, 5, CHAT_TYPE_XENO_COMBAT)
	update_health(rand(current_xenomorph.melee_damage_lower, current_xenomorph.melee_damage_upper))
	return XENO_ATTACK_ACTION

// Curtains

/obj/structure/prop/isaacs_lament/curtain_pole
	name = "curtain pole"
	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	icon_state = "curtain_pole_metal"
	density = FALSE
	layer = ABOVE_TABLE_LAYER

/obj/structure/prop/isaacs_lament/curtain_pole/wood
	icon_state = "curtain_pole_wood"

// Egg Cluster

/obj/effect/eggs/eggcluster
	icon = 'icons/obj/structures/props/isaacs_lament_32x32_props.dmi'
	name = "egg cluster"
	desc = "They seem to pulse slightly with an inner life"
	icon_state = "eggs_white"
