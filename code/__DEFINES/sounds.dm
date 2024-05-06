#define FALLOFF_SOUNDS 1

#define FREE_CHAN_END 1016
#define INITIAL_SOUNDSCAPE_COOLDOWN 20

#define EAR_DEAF_MUTE 1

#define VOLUME_SFX 1
#define VOLUME_AMB 2
#define VOLUME_ADM 3
#define VOLUME_LOBBY 4
#define VOLUME_ANNOUNCEMENT 5

#define MUFFLE_LOW -500
#define MUFFLE_MEDIUM -2000
#define MUFFLE_HIGH -10000

#define SOUND_FREQ_HIGH 55000
#define SOUND_FREQ_LOW 32000

#define ITEM_EQUIP_VOLUME 50

//Reserved channels
#define SOUND_CHANNEL_NOTIFY 1016
#define SOUND_CHANNEL_VOX    1017
#define SOUND_CHANNEL_MUSIC 1018
#define SOUND_CHANNEL_AMBIENCE 1019
#define SOUND_CHANNEL_WALKMAN 1020
#define SOUND_CHANNEL_SOUNDSCAPE 1021
//#define SOUND_CHANNEL_ADMIN_MIDI 1022
#define SOUND_CHANNEL_LOBBY 1023
#define SOUND_CHANNEL_Z 1024

//default byond sound environments
#define SOUND_ENVIRONMENT_NONE -1
#define SOUND_ENVIRONMENT_GENERIC 0
#define SOUND_ENVIRONMENT_PADDED_CELL 1
#define SOUND_ENVIRONMENT_ROOM 2
#define SOUND_ENVIRONMENT_BATHROOM 3
#define SOUND_ENVIRONMENT_LIVINGROOM 4
#define SOUND_ENVIRONMENT_STONEROOM 5
#define SOUND_ENVIRONMENT_AUDITORIUM 6
#define SOUND_ENVIRONMENT_CONCERT_HALL 7
#define SOUND_ENVIRONMENT_CAVE 8
#define SOUND_ENVIRONMENT_ARENA 9
#define SOUND_ENVIRONMENT_HANGAR 10
#define SOUND_ENVIRONMENT_CARPETED_HALLWAY 11
#define SOUND_ENVIRONMENT_HALLWAY 12
#define SOUND_ENVIRONMENT_STONE_CORRIDOR 13
#define SOUND_ENVIRONMENT_ALLEY 14
#define SOUND_ENVIRONMENT_FOREST 15
#define SOUND_ENVIRONMENT_CITY 16
#define SOUND_ENVIRONMENT_MOUNTAINS 17
#define SOUND_ENVIRONMENT_QUARRY 18
#define SOUND_ENVIRONMENT_PLAIN 19
#define SOUND_ENVIRONMENT_PARKING_LOT 20
#define SOUND_ENVIRONMENT_SEWER_PIPE 21
#define SOUND_ENVIRONMENT_UNDERWATER 22
#define SOUND_ENVIRONMENT_DRUGGED 23
#define SOUND_ENVIRONMENT_DIZZY 24
#define SOUND_ENVIRONMENT_PSYCHOTIC 25

#define AMBIENCE_SHIP 'sound/ambience/shipambience.ogg'
#define AMBIENCE_JUNGLE 'sound/ambience/ambienceLV624.ogg'
#define AMBIENCE_RIVER  'sound/ambience/ambienceriver.ogg'
#define AMBIENCE_MALL 'sound/ambience/medbay1.ogg'
#define AMBIENCE_CAVE 'sound/ambience/desert.ogg'
#define AMBIENCE_YAUTJA 'sound/ambience/yautja_ship.ogg'

#define SOUND_MARINE_DRUMS 'sound/effects/drums.ogg'

#define AMBIENCE_ALMAYER 'sound/ambience/almayerambience.ogg'
#define AMBIENCE_LV624 'sound/ambience/ambienceLV624.ogg'
#define AMBIENCE_BIGRED 'sound/ambience/desert.ogg'
#define AMBIENCE_NV 'sound/ambience/ambienceNV.ogg'
#define AMBIENCE_PRISON 'sound/ambience/shipambience.ogg'
#define AMBIENCE_TRIJENT 'sound/ambience/desert.ogg'

#define SCAPE_PL_WIND list('sound/soundscape/wind1.ogg','sound/soundscape/wind2.ogg')
#define SCAPE_PL_LV522_OUTDOORS list('sound/soundscape/lv522/outdoors/wind1.ogg','sound/soundscape/lv522/outdoors/wind2.ogg','sound/soundscape/lv522/outdoors/wind3.ogg',)
#define SCAPE_PL_LV522_INDOORS list('sound/soundscape/lv522/indoors/indoor_wind.ogg','sound/soundscape/lv522/indoors/indoor_wind2.ogg')
#define SCAPE_PL_CAVE list('sound/soundscape/rocksfalling1.ogg', 'sound/soundscape/rocksfalling2.ogg')
#define SCAPE_PL_ELEVATOR_MUSIC list('sound/soundscape/medbay1.ogg','sound/soundscape/medbay2.ogg', 'sound/soundscape/medbay3.ogg')
#define SCAPE_PL_THUNDER list('sound/soundscape/thunderclap1.ogg', 'sound/soundscape/thunderclap2.ogg')
#define SCAPE_PL_DESERT_STORM list('sound/soundscape/thunderclap1.ogg', 'sound/soundscape/thunderclap2.ogg', 'sound/soundscape/wind1.ogg','sound/soundscape/wind2.ogg')
#define SCAPE_PL_CIC list('sound/soundscape/cicamb2.ogg', 'sound/soundscape/cicamb3.ogg', 'sound/soundscape/cicamb4.ogg', 'sound/soundscape/cicamb5.ogg', 'sound/soundscape/cicamb6.ogg', )
#define SCAPE_PL_ENG list('sound/soundscape/engamb1.ogg', 'sound/soundscape/engamb2.ogg', 'sound/soundscape/engamb3.ogg', 'sound/soundscape/engamb4.ogg', 'sound/soundscape/engamb5.ogg', 'sound/soundscape/engamb6.ogg', 'sound/soundscape/engamb7.ogg', )
#define SCAPE_PL_HANGAR list('sound/soundscape/hangaramb1.ogg', 'sound/soundscape/hangaramb2.ogg', 'sound/soundscape/hangaramb3.ogg', 'sound/soundscape/hangaramb4.ogg', 'sound/soundscape/hangaramb5.ogg', 'sound/soundscape/hangaramb6.ogg', 'sound/soundscape/hangaramb7.ogg', 'sound/soundscape/hangaramb8.ogg', 'sound/soundscape/hangaramb9.ogg', 'sound/soundscape/hangaramb10.ogg', )
#define SCAPE_PL_ARES list('sound/soundscape/mother.ogg')

// Hybrisa Soundscapes

#define SCAPE_PL_LV759_OUTDOORS list('sound/soundscape/lv759/outdoors/wind4.ogg','sound/soundscape/lv759/outdoors/wind5.ogg','sound/soundscape/lv759/outdoors/wind6.ogg','sound/soundscape/lv759/outdoors/wind7.ogg','sound/soundscape/lv759/outdoors/wind8.ogg','sound/soundscape/lv759/outdoors/wind9.ogg','sound/soundscape/lv759/outdoors/wind10.ogg','sound/soundscape/lv759/outdoors/wind11.ogg','sound/soundscape/lv759/outdoors/wind12.ogg','sound/soundscape/lv759/outdoors/wind13.ogg','sound/soundscape/lv759/outdoors/wind14.ogg','sound/soundscape/lv759/outdoors/wind15.ogg','sound/soundscape/lv759/outdoors/wind16.ogg','sound/soundscape/lv759/outdoors/wind17.ogg','sound/soundscape/lv759/outdoors/wind18.ogg','sound/soundscape/lv759/outdoors/wind19.ogg','sound/soundscape/lv759/outdoors/wind20.ogg','sound/soundscape/lv759/outdoors/wind21.ogg','sound/soundscape/lv759/outdoors/wind22.ogg','sound/soundscape/lv759/outdoors/wind23.ogg','sound/soundscape/lv759/outdoors/wind24.ogg','sound/soundscape/lv759/outdoors/wind25.ogg','sound/soundscape/lv759/outdoors/wind26.ogg','sound/soundscape/lv759/outdoors/wind27.ogg','sound/soundscape/lv759/outdoors/wind28.ogg',)
#define SCAPE_PL_LV759_INDOORS list('sound/soundscape/lv522/indoors/indoor_wind.ogg','sound/soundscape/lv522/indoors/indoor_wind2.ogg')
#define SCAPE_PL_LV759_DERELICTSHIP list('sound/soundscape/lv759/indoors/derelict1.ogg','sound/soundscape/lv759/indoors/derelict2.ogg','sound/soundscape/lv759/indoors/derelict3.ogg','sound/soundscape/lv759/indoors/derelict4.ogg','sound/soundscape/lv759/indoors/derelict5.ogg','sound/soundscape/lv759/indoors/derelict6.ogg','sound/soundscape/lv759/indoors/derelict7.ogg','sound/soundscape/lv759/indoors/derelict8.ogg')
#define SCAPE_PL_LV759_CAVES list('sound/soundscape/lv759/outdoors/deepcave1.ogg','sound/soundscape/lv759/outdoors/deepcave2.ogg')
#define SCAPE_PL_LV759_WEYMART list('sound/soundscape/lv759/indoors/weymart1.ogg','sound/soundscape/lv759/indoors/weymart2.ogg','sound/soundscape/lv759/indoors/weymart3.ogg','sound/soundscape/lv759/indoors/weymart4.ogg')
#define SCAPE_PL_LV759_PLATEAU_OUTDOORS list('sound/soundscape/lv759/outdoors/derelict_plateau_1.ogg','sound/soundscape/lv759/outdoors/derelict_plateau_2.ogg',)
