// Acidic Beach

/turf/open/auto_turf/acidic_rock
	layer_name = list("Acid-washed schist", "Acid-marked basalt")
	icon = 'icons/turf/floors/river_toxic.dmi'
	icon_prefix = "acid"

/turf/open/auto_turf/acidic_rock/get_dirt_type()
	return DIRT_TYPE_SAND

/turf/open/auto_turf/acidic_rock/layer0
	icon_state = "acid_rock"
	bleed_layer = 0

/turf/open/auto_turf/acidic_rock/layer1
	icon_state = "acid_rock_1"
	bleed_layer = 1

/turf/open/gm/river/acidic
	name = "acidic river"
	icon = 'icons/turf/floors/river_toxic.dmi'
	icon_state = "seashallow"

/turf/open/gm/coast/acidic
	name = "acidic coastline"
	icon = 'icons/turf/floors/river_toxic.dmi'
	icon_state = "beach"
	baseturfs = /turf/open/gm/coast
	supports_surgery = FALSE

/turf/open/gm/coast/acidic/Initialize(mapload, ...)
	. = ..()
	overlays += image("icon"='icons/effects/effects.dmi',"icon_state"="greenglow","layer"=MOB_LAYER+0.1)

/turf/open/gm/coast/acidic/Entered(mob/living/M)
	..()
	if(istype(M)) M.apply_damage(55,TOX)

/turf/open/gm/coast/acidic/north

	dir = 2

/turf/open/gm/coast/acidic/east
	dir = 8

/turf/open/gm/coast/acidic/south
	dir = 1

/turf/open/gm/coast/acidic/west
	dir = 4

/turf/open/gm/coast/acidic/north_east
	dir = 10

/turf/open/gm/coast/acidic/north_west
	dir = 6

/turf/open/gm/coast/acidic/south_east
	dir = 9

/turf/open/gm/coast/acidic/south_west
	dir = 5

/turf/open/gm/coast/acidic/beachcorner
	icon_state = "beachcorner"

/turf/open/gm/coast/acidic/beachcorner/north

	dir = 2

/turf/open/gm/coast/acidic/beachcorner/east
	dir = 8

/turf/open/gm/coast/acidic/beachcorner/south
	dir = 1

/turf/open/gm/coast/acidic/beachcorner/west
	dir = 4

// LAVA FLOORS

/turf/open/lava
	name = "floor"
	icon_state = "full"
	icon = 'icons/turf/floors/lava/lava_turf.dmi'

/turf/open/lava/hot_lava
	icon_state = "full"
	baseturfs = /turf/open/liquid/lava

/turf/open/lava/hot_lava/Initialize(mapload, ...)
	. = ..()
	overlays += image("icon"='icons/mob/humans/onmob/OnFire.dmi',"icon_state"="Generic_mob_burning","layer"=MOB_LAYER+0.1)

/turf/open/lava/hot_lava/Entered(mob/living/M)
	..()
	if(istype(M)) M.apply_damage(85,BURN)

/turf/open/lava/hot_lava/catwalk
	icon_state = "lavacatwalk"

/turf/open/lava/hot_lava/L_piece
	icon_state = "lpiece"

/turf/open/lava/hot_lava/L_piece/north

	dir = 2

/turf/open/lava/hot_lava/L_piece/east
	dir = 8

/turf/open/lava/hot_lava/L_piece/south
	dir = 1

/turf/open/lava/hot_lava/L_piece/west
	dir = 4

/turf/open/lava/hot_lava/side
	icon_state = "side"

/turf/open/lava/hot_lava/side/north

	dir = 2

/turf/open/lava/hot_lava/side/east
	dir = 8

/turf/open/lava/hot_lava/side/south
	dir = 1

/turf/open/lava/hot_lava/side/west
	dir = 4

/turf/open/lava/hot_lava/corner
	icon_state = "corner"

/turf/open/lava/hot_lava/corner/north

	dir = 2

/turf/open/lava/hot_lava/corner/east
	dir = 8

/turf/open/lava/hot_lava/corner/south
	dir = 1

/turf/open/lava/hot_lava/corner/west
	dir = 4

/turf/open/lava/hot_lava/single_intersection
	icon_state = "single_intersection"

/turf/open/lava/hot_lava/single_intersection_direction
	icon_state = "single_intersection_direction"

/turf/open/lava/hot_lava/single_intersection_direction/north

	dir = 2

/turf/open/lava/hot_lava/single_intersection_direction/east
	dir = 8

/turf/open/lava/hot_lava/single_intersection_direction/south
	dir = 1

/turf/open/lava/hot_lava/single_intersection_direction/west
	dir = 4

/turf/open/lava/hot_lava/single_intersection_direction/north_east
	dir = 10

/turf/open/lava/hot_lava/single_intersection_direction/north_west
	dir = 6

/turf/open/lava/hot_lava/single_intersection_direction/south_east
	dir = 9

/turf/open/lava/hot_lava/single_intersection_direction/south_west
	dir = 5

/turf/open/lava/hot_lava/single_middle
	icon_state = "single_middle"

/turf/open/lava/hot_lava/single_middle/north

	dir = 2

/turf/open/lava/hot_lava/single_middle/east
	dir = 8

/turf/open/lava/hot_lava/single_middle/south
	dir = 1

/turf/open/lava/hot_lava/single_middle/west
	dir = 4

/turf/open/lava/hot_lava/single
	icon_state = "single"

/turf/open/lava/hot_lava/single_end
	icon_state = "single_end"

/turf/open/lava/hot_lava/single_end/north

	dir = 2

/turf/open/lava/hot_lava/single_end/east
	dir = 8

/turf/open/lava/hot_lava/single_end/south
	dir = 1

/turf/open/lava/hot_lava/single_end/west
	dir = 4

/turf/open/lava/hot_lava/single_corners
	icon_state = "single_corners"

/turf/open/lava/hot_lava/single_corners/north

	dir = 2

/turf/open/lava/hot_lava/single_corners/east
	dir = 8

/turf/open/lava/hot_lava/single_corners/south
	dir = 1

/turf/open/lava/hot_lava/single_corners/west
	dir = 4

// Decals - For edges

/obj/effect/lava
	icon = 'icons/turf/floors/lava/lava_turf.dmi'
	layer = TURF_LAYER
	plane = FLOOR_PLANE
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

/obj/effect/lava/edges/brock_side
	icon_state = "brock_side"

/obj/effect/lava/edges/basalt/l_piece
	icon_state = "lpiece_rock"

/obj/effect/lava/edges/basalt/side_rock
	icon_state = "side_rock"

/obj/effect/lava/edges/basalt/corner_rock
	icon_state = "corner_rock"

// Lava Rock & Dirt

/turf/open/lava/basalt/cave
	icon_state = "basalt_to_cave"

/turf/open/lava/basalt/cave/north

	dir = 2

/turf/open/lava/basalt/cave/east
	dir = 8

/turf/open/lava/basalt/cave/south
	dir = 1

/turf/open/lava/basalt/cave/west
	dir = 4

/turf/open/lava/basalt/cave/north_east
	dir = 10

/turf/open/lava/basalt/cave/north_west
	dir = 6

/turf/open/lava/basalt/cave/south_east
	dir = 9

/turf/open/lava/basalt/cave/south_west
	dir = 5

/turf/open/lava/basalt/cave/corner
	icon_state = "basalt_to_cave_corner"

/turf/open/lava/basalt/cave/corner/north

	dir = 2

/turf/open/lava/basalt/cave/corner/east
	dir = 8

/turf/open/lava/basalt/cave/corner/south
	dir = 1

/turf/open/lava/basalt/cave/corner/west
	dir = 4

/turf/open/lava/basalt/dirt
	icon_state = "basalt_to_dirt"

/turf/open/lava/basalt/dirt/north

	dir = 2

/turf/open/lava/basalt/dirt/east
	dir = 8

/turf/open/lava/basalt/dirt/south
	dir = 1

/turf/open/lava/basalt/dirt/west
	dir = 4

/turf/open/lava/basalt/dirt/north_east
	dir = 10

/turf/open/lava/basalt/dirt/north_west
	dir = 6

/turf/open/lava/basalt/dirt/south_east
	dir = 9

/turf/open/lava/basalt/dirt/south_west
	dir = 5

/turf/open/lava/basalt/dirt/corner
	icon_state = "basalt_to_dirt_corner"

/turf/open/lava/basalt/dirt/corner/north

	dir = 2

/turf/open/lava/basalt/dirt/corner/east
	dir = 8

/turf/open/lava/basalt/dirt/corner/south
	dir = 1

/turf/open/lava/basalt/dirt/corner/west
	dir = 4

/turf/open/lava/basalt
	icon_state = "basalt"

/turf/open/lava/basalt/glowing
	icon_state = "basaltglow"
	light_system = STATIC_LIGHT
	light_range = 4
	light_power = 0.75
	light_color = LIGHT_COLOR_LAVA

/turf/open/lava/dirt
	icon_state = "dirt"

/turf/open/lava/dirt/update_direction()
	setDir(pick(NORTH, SOUTH, EAST, WEST))

/turf/open/lava/sand
	icon_state = "sand"

/turf/open/lava/sand/update_direction()
	setDir(pick(NORTH, SOUTH, EAST, WEST))

/turf/open/lava/brock
	icon_state = "brock"

/turf/open/lava/brock/update_direction()
	setDir(pick(NORTH, SOUTH, EAST, WEST))
