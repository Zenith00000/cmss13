//lv759 AREAS--------------------------------------//

/area/lv759
	icon_state = "lv-626"
	can_build_special = TRUE
	powernet_name = "ground"
	minimap_color = MINIMAP_AREA_COLONY

//parent types

/area/lv759/indoors
	name = "Hybrisa - Outdoors"
	icon_state = "cliff_blocked" //because this is a PARENT TYPE and you should not be using it and should also be changing the icon!!!
	ceiling = CEILING_METAL
	soundscape_playlist = SCAPE_PL_LV522_INDOORS


/area/lv759/outdoors
	name = "Hybrisa - Outdoors"
	icon_state = "cliff_blocked" //because this is a PARENT TYPE and you should not be using it and should also be changing the icon!!!
	ceiling = CEILING_NONE
	soundscape_playlist = SCAPE_PL_LV522_OUTDOORS

/area/lv759/oob
	name = "LV759 - Out Of Bounds"
	icon_state = "unknown"
	ceiling = CEILING_MAX
	is_resin_allowed = FALSE
	flags_area = AREA_NOTUNNEL

//Landing Zone 1

/area/lv759/landing_zone_1
	name = "Hybrisa - Landing Zone One"
	icon_state = "explored"
	is_resin_allowed =  FALSE
	is_landing_zone = TRUE
	minimap_color = MINIMAP_AREA_LZ

/area/lv759/landing_zone_1/ceiling
	ceiling = CEILING_METAL

/area/lv759/landing_zone_1/tunnel
	name = "Hybrisa - Landing Zone One Tunnels"
	ceiling = CEILING_METAL

/area/shuttle/drop1/lv759
	name = "Hybrisa - Dropship Alamo Landing Zone"
	icon_state = "shuttle"
	icon = 'icons/turf/area_shiva.dmi'

/area/lv759/landing_zone_1/lz1_console
	name = "Hybrisa - Dropship Alamo Console"
	icon_state = "tcomsatcham"
	requires_power = FALSE

//Landing Zone 2

/area/lv759/landing_zone_2
	name = "Hybrisa - Landing Zone Two"
	icon_state = "explored"
	is_resin_allowed =  FALSE
	is_landing_zone = TRUE
	minimap_color = MINIMAP_AREA_LZ

/area/lv759/landing_zone_2/ceiling
	ceiling = CEILING_METAL

/area/shuttle/drop2/lv759
	name = "Hybrisa - Dropship Normandy Landing Zone"
	icon_state = "shuttle2"
	icon = 'icons/turf/area_shiva.dmi'

/area/lv759/landing_zone_2/lz2_console
	name = "Hybrisa - Dropship Normandy Console"
	icon_state = "tcomsatcham"
	requires_power = FALSE

//Landing Zone 3 & 4

/area/lv759/landing_zone
	name = "Hybrisa - Shuttle"
	icon_state = "shuttle"
	ceiling =  CEILING_METAL

/area/lv759/landing_zone/landing_zone_3
	name = "Hybrisa - Landing Zone 3"
	icon_state = "blue"
	ceiling = CEILING_NONE

/area/lv759/landing_zone/landing_zone_4
	name = "Hybrisa - Landing Zone 4"
	icon_state = "blue"
	ceiling = CEILING_NONE

/area/lv759/landing_zone/UD10M_Bentley
	name = "Hybrisa - UD10M Bentley"
	requires_power = FALSE

/area/lv759/landing_zone/UD8M_Rover
	name = "Hybrisa - UD8M Rover"
	requires_power = FALSE

//Outdoors areas
/area/lv759/outdoors/colony_streets
	name = "Colony Streets"
	icon_state = "green"
	ceiling = CEILING_NONE

/area/lv759/outdoors/colony_streets/windbreaker
	name = "Colony Windbreakers"
	icon_state = "tcomsatcham"
	requires_power = FALSE
	ceiling = CEILING_NONE

/area/lv759/outdoors/colony_streets/windbreaker/observation
	name = "Colony Windbreakers - Observation"
	icon_state = "purple"
	requires_power = FALSE
	ceiling = CEILING_GLASS
	soundscape_playlist = SCAPE_PL_LV522_INDOORS

/area/lv759/outdoors/colony_streets/central_streets
	name = "Central Street - West"
	icon_state = "west"

/area/lv759/outdoors/colony_streets/east_central_street
	name = "Central Street - East"
	icon_state = "east"

/area/lv759/outdoors/colony_streets/south_street
	name = "Colony Streets - South"
	icon_state = "south"

/area/lv759/outdoors/colony_streets/south_east_street
	name = "Colony Streets - Southeast"
	icon_state = "southeast"

/area/lv759/outdoors/colony_streets/south_west_street
	name = "Colony Streets - Southwest"
	icon_state = "southwest"

/area/lv759/outdoors/colony_streets/north_west_street
	name = "Colony Streets - Northwest"
	icon_state = "northwest"

/area/lv759/outdoors/colony_streets/north_east_street
	name = "Colony Streets - Northeast"
	icon_state = "northeast"

/area/lv759/outdoors/colony_streets/north_street
	name = "Colony Streets - North"
	icon_state = "north"

/area/lv759/outdoors/colony_streets/winde
	name = "Colony Streets - Northwest"
	icon_state = "northwest"

//spaceport indoors

/area/lv759/indoors/spaceport
	name = "North LZ1 - Spaceport Auxiliary"
	icon_state = "green"
	minimap_color = MINIMAP_AREA_LZ

/area/lv759/indoors/spaceport/engineering
	name = "North LZ1 - Spaceport Engineering"
	icon_state = "engine_smes"
	minimap_color = MINIMAP_AREA_LZ

/area/lv759/indoors/spaceport/administration/east
	name = "North LZ1 - Spaceport West Administration"
	icon_state = "blue"
	minimap_color = MINIMAP_AREA_LZ

/area/lv759/indoors/spaceport/administration/west
	name = "North LZ1 - Spaceport East Administration"
	icon_state = "blue"
	minimap_color = MINIMAP_AREA_LZ

/area/lv759/indoors/spaceport/security
	name = "North LZ1 - Spaceport Engineering"
	icon_state = "red"
	minimap_color = MINIMAP_AREA_LZ

/area/lv759/indoors/spaceport/cargo
	name = "North LZ1 - Spaceport Cargo"
	icon_state = "red"
	minimap_color = MINIMAP_AREA_LZ

/area/lv759/indoors/spaceport/cuppajoes
	name = "North LZ1 - Spaceport Cuppajoes"
	icon_state = "red"
	minimap_color = MINIMAP_AREA_LZ

//misc indoors areas

/area/lv759/indoors/lone_buildings
	name = "LV759 - Lone buildings"
	icon_state = "green"

/area/lv759/indoors/toilet
	name = "LV759 - Outdoor Toilets"
	icon_state = "green"

/area/lv759/indoors/lone_buildings/engineering
	name = "Emergency Engineering"
	icon_state = "engine_smes"
	minimap_color = MINIMAP_AREA_ENGI

/area/lv759/indoors/lone_buildings/spaceport
	name = "North LZ1 - Spaceport Auxiliary"
	icon_state = "red"
	minimap_color = MINIMAP_AREA_LZ
	is_resin_allowed = FALSE

/area/lv759/indoors/lone_buildings/outdoor_bot
	name = "East LZ1 - Outdoor T-Comms"
	icon_state = "yellow"
	ceiling = CEILING_GLASS

/area/lv759/indoors/lone_buildings/storage_blocks
	name = "Outdoor Storage"
	icon_state = "blue"

/area/lv759/indoors/lone_buildings/chunk
	name = "Chunk 'N Dump"
	icon_state = "blue"

//A Block
/area/lv759/indoors/a_block
	name = "A-Block"
	icon_state = "blue"
	ceiling = CEILING_METAL

/area/lv759/indoors/a_block/admin
	name = "A-Block - Colony Operations Centre"
	icon_state = "mechbay"
	minimap_color = MINIMAP_AREA_COMMAND

/area/lv759/indoors/a_block/dorms
	name = "A-Block - Western Dorms And Offices"
	icon_state = "fitness"

/area/lv759/indoors/a_block/dorms/glass
	ceiling = CEILING_GLASS

/area/lv759/indoors/a_block/fitness
	name = "A-Block - Fitness Centre"
	icon_state = "fitness"

/area/lv759/indoors/a_block/fitness/glass
	ceiling = CEILING_GLASS

/area/lv759/indoors/a_block/hallway
	name = "A-Block - South Operations Hallway"
	icon_state = "green"

/area/lv759/indoors/a_block/hallway/damage
	ceiling = CEILING_NONE
	soundscape_playlist = SCAPE_PL_LV522_OUTDOORS

/area/lv759/indoors/a_block/medical
	name = "A-Block - Medical"
	icon_state = "medbay"
	minimap_color = MINIMAP_AREA_MEDBAY

/area/lv759/indoors/a_block/medical/glass
	ceiling = CEILING_GLASS

/area/lv759/indoors/a_block/security
	name = "A-Block - Security"
	icon_state = "head_quarters"
	minimap_color = MINIMAP_AREA_SEC

/area/lv759/indoors/a_block/security/glass
	ceiling = CEILING_GLASS

/area/lv759/indoors/a_block/kitchen
	name = "A-Block - Kitchen And Dining"
	icon_state = "kitchen"

/area/lv759/indoors/a_block/kitchen/glass
	ceiling = CEILING_GLASS

/area/lv759/indoors/a_block/kitchen/damage
	ceiling = CEILING_NONE
	soundscape_playlist = SCAPE_PL_LV522_OUTDOORS

/area/lv759/indoors/a_block/executive
	name = "A-Block - Executive Suite"
	icon_state = "captain"

/area/lv759/indoors/a_block/executive/glass
	ceiling = CEILING_GLASS

/area/lv759/indoors/a_block/dorm_north
	name = "A-Block - Northern Shared Dorms"
	icon_state = "fitness"

/area/lv759/indoors/a_block/bridges
	name = "A-Block - Western Dorms To Security Bridge"
	icon_state = "hallC1"
	ceiling = CEILING_GLASS

/area/lv759/indoors/a_block/bridges/dorms_fitness
	name = "A-Block - Corporate To Fitness Bridge"
	icon_state = "hallC1"
	ceiling = CEILING_GLASS

/area/lv759/indoors/a_block/bridges/corpo_fitness
	name = "A-Block - Western Dorms To Fitness"
	icon_state = "hallC1"
	ceiling = CEILING_GLASS


/area/lv759/indoors/a_block/bridges/corpo
	name = "A-Block - Security To Corporate Bridge"
	icon_state = "hallC1"

/area/lv759/indoors/a_block/bridges/op_centre
	name = "A-Block - Security To Operations Centre Bridge"
	icon_state = "hallC1"

/area/lv759/indoors/a_block/bridges/garden_bridge
	name = "A-Block - Garden Bridge"
	icon_state = "hallC2"
	soundscape_playlist = SCAPE_PL_ELEVATOR_MUSIC

/area/lv759/indoors/a_block/corpo
	name = "A-Block - Corporate Office"
	icon_state = "toxlab"

/area/lv759/indoors/a_block/corpo/glass
	ceiling =  CEILING_GLASS

/area/lv759/indoors/a_block/garden
	name = "A-Block - West Operations Garden"
	icon_state = "green"
	ceiling = CEILING_GLASS
	soundscape_playlist = SCAPE_PL_ELEVATOR_MUSIC

//B Block

/area/lv759/indoors/b_block
	name = "B-Block"
	icon_state = "red"
	ceiling =  CEILING_METAL

/area/lv759/indoors/b_block/hydro
	name = "B-Block - Hydroponics"
	icon_state = "hydro"
	minimap_color = MINIMAP_AREA_RESEARCH

/area/lv759/indoors/b_block/hydro/glass
	ceiling = CEILING_GLASS

/area/lv759/indoors/b_block/bar
	name = "B-Block - Bar"
	icon_state = "cafeteria"

/area/lv759/indoors/b_block/bridge
	name = "B-Block - Hydroponics Bridge Network"
	icon_state = "hallC1"
	ceiling = CEILING_GLASS

//C Block

/area/lv759/indoors/c_block
	name = "C-Block"
	icon_state = "green"

/area/lv759/indoors/c_block/cargo
	name = "C-Block - Cargo"
	icon_state = "primarystorage"

/area/lv759/indoors/c_block/mining
	name = "C-Block - Mining"
	icon_state = "yellow"

/area/lv759/indoors/c_block/garage
	name = "C-Block - Garage"
	icon_state = "storage"

/area/lv759/indoors/c_block/casino
	name = "C-Block - Casino"
	icon_state = "purple"

/area/lv759/indoors/c_block/bridge
	name = "C-Block - Cargo To Garage Bridge"
	icon_state = "hallC1"
	ceiling = CEILING_GLASS

/area/lv759/indoors/c_block/t_comm
	name = "C-Block - West Garage T-comms"
	icon_state = "hallC1"

//Rockies

/area/lv759/outdoors/n_rockies
	name = "North Colony - Rockies"
	icon_state = "away"

/area/lv759/outdoors/nw_rockies
	name = "Northwest Colony - Rockies"
	icon_state = "away1"

/area/lv759/outdoors/w_rockies
	name = "West Colony - Rockies"
	icon_state = "away2"

/area/lv759/outdoors/p_n_rockies
	name = "North Processor - Rockies"
	icon_state = "away"

/area/lv759/outdoors/p_nw_rockies
	name = "Northwest Processor - Rockies"
	icon_state = "away1"

/area/lv759/outdoors/p_w_rockies
	name = "West Processor - Rockies"
	icon_state = "away2"

/area/lv759/outdoors/p_e_rockies
	name = "East Processor - Rockies"
	icon_state = "away3"

//ATMOS
/area/lv759/atmos
	name = "Atmospheric Processor"
	icon_state = "engineering"
	ceiling = CEILING_REINFORCED_METAL
	ambience_exterior = AMBIENCE_SHIP
	minimap_color = MINIMAP_AREA_ENGI

/area/lv759/atmos/outdoor
	name = "Atmospheric Processor - Outdoors"
	icon_state = "quart"
	ceiling = CEILING_NONE
	soundscape_playlist = SCAPE_PL_LV522_OUTDOORS

/area/lv759/atmos/east_reactor
	name = "Atmospheric Processor - Eastern Reactor"
	icon_state = "blue"

/area/lv759/atmos/east_reactor/north
	name = "Atmospheric Processor - Outer East Reactor - North"
	icon_state = "yellow"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS

/area/lv759/atmos/east_reactor/south
	name = "Atmospheric Processor - Outer East Reactor - south"
	icon_state = "red"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS

/area/lv759/atmos/east_reactor/south/cas
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS

/area/lv759/atmos/east_reactor/east
	name = "Atmospheric Processor - Outer East Reactor - east"
	icon_state = "green"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS

/area/lv759/atmos/east_reactor/west
	name = "Atmospheric Processor - Outer East Reactor - west"
	icon_state = "purple"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS

/area/lv759/atmos/west_reactor
	name = "Atmospheric Processor - Western Reactor"
	icon_state = "blue"

/area/lv759/atmos/cargo_intake
	name = "Atmospheric Processor - Cargo Intake"
	icon_state = "yellow"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS

/area/lv759/atmos/command_centre
	name = "Atmospheric Processor - Central Command"
	icon_state = "red"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS

/area/lv759/atmos/north_command_centre
	name = "Atmospheric Processor - North Command Centre Checkpoint"
	icon_state = "green"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS

/area/lv759/atmos/filt
	name = "Atmospheric Processor - Filtration System"
	icon_state = "mechbay"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS

/area/lv759/atmos/way_in_command_centre
	name = "Atmospheric Processor - North Corpo Reactor Entrance"
	icon_state = "blue"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS

/area/lv759/atmos/sewer
	name = "Atmospheric Processor - Sewer"
	icon_state = "red"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS

/area/lv759/atmos/reactor_garage
	name = "Atmospheric Processor - Garage"
	icon_state = "green"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS
