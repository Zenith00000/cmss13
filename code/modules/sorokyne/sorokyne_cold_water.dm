#define HOT_WATER_DAMAGE 1.5
#define HOT_WATER_TEMP_EFFECT 5
#define HOT_WATER_TARGET_TEMP T90C
#define HOT_WATER_DAMAGE_TYPE BURN
#define SOURCE_EFFECT /obj/effect/blocker/sorokyne_hot_water

/obj/effect/blocker/sorokyne_hot_water
	anchored = TRUE
	density = FALSE
	opacity = FALSE
	unacidable = 1
	layer = ABOVE_FLY_LAYER //to make it visible in the map editor
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	icon = 'icons/landmarks.dmi'

	icon_state = "map_blocker_hazard"

/obj/effect/blocker/sorokyne_hot_water/Initialize(mapload, ...)
	. = ..()
	invisibility = 101


/obj/effect/blocker/sorokyne_hot_water/Crossed(mob/living/M as mob)

	if(!istype(M))
		return

	if(!istype(M.loc, /turf))
		return

	START_PROCESSING(SSobj, src)


/obj/effect/blocker/sorokyne_hot_water/process()
	var/mobs_present = 0
	var/dam_amount = HOT_WATER_DAMAGE
	var/dam_type = HOT_WATER_DAMAGE_TYPE
	var/target_temp = HOT_WATER_TARGET_TEMP
	var/temp_delta = HOT_WATER_TEMP_EFFECT
	var/cause = SOURCE_EFFECT
	for(var/mob/living/carbon/M in range(0, src))
		mobs_present++
		if(!M.GetExactComponent(/datum/component/damage_over_time))
			M.AddComponent(/datum/component/damage_over_time, dam_amount, dam_type, target_temp, temp_delta, cause)
	if(mobs_present < 1)
		STOP_PROCESSING(SSobj, src)

#undef HOT_WATER_DAMAGE
#undef HOT_WATER_TEMP_EFFECT
#undef HOT_WATER_TARGET_TEMP
#undef HOT_WATER_DAMAGE_TYPE
#undef SOURCE_EFFECT
