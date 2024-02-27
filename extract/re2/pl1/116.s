.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22772, -26469, 1800, 2700, -649, 0, -24332, 2568, 1, 11, 2, 0, 19, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -28342, -26486, 1800, 2800, -13894, 0, -25290, 2144, 0, 9, 5, 0, 8, 1, 0, 144, LOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21570, -23070, 1230, 1310, ITEM_HERBG, 1, 57, ID_OBJ_0, IF_FLOOR
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -22910, -26500, 1830, 1140, ITEM_HERBG, 1, 58, ID_OBJ_1, IF_FLOOR
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -21000, 0, -22400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 4, 0, 10, 16, -22200, -7200, -26050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21520, -23970, 1230, 1410, ITEM_HERBG, 1, 59, ID_OBJ_2, IF_FLOOR
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -20900, 0, -23250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    aot_set                 ID_AOT_5, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 4, 0, -27750, -27660, 6400, 8350, 35, 0, ITEM_HANDGUNCLAIRE, 0, aot, 0
    aot_set                 ID_AOT_8, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 4, 0, -27750, -27660, 6400, 8350, 9, 0, ITEM_81, 0, aot, 0
    aot_set                 ID_AOT_6, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -21750, -27460, 8500, 6250, 35, 0, ITEM_HANDGUNLEON, 0, aot, 0
    aot_set                 ID_AOT_9, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -21750, -27460, 8500, 6250, 9, 0, ITEM_82, 0, aot, 0
    aot_set                 ID_AOT_7, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 1, 0, -17050, -21770, 3160, 3690, 35, 0, ITEM_HANDGUNLEON, 0, aot, 0
    aot_set                 ID_AOT_10, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 1, 0, -17050, -21770, 3160, 3690, 9, 0, ITEM_82, 0, aot, 0
    evt_end                 0

.proc main_03

off_0B58:
    switch                  26, off_0B88
    case                    0, off_0B6A, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 100, 68
    break                   0

off_0B6A:
    case                    0, off_0B78, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 105, 58
    break                   0

off_0B78:
    case                    0, off_0B86, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 100, 65
    break                   0

off_0B86:
    eswitch                 0

off_0B88:
    do                      0, off_0B96
    sleep                   10, 1
    edwhile                 off_0B96
    ck                      FG_STATUS, 11, 0

off_0B96:
    goto                    255, 255, 0, off_0B58
    evt_end                 0
    db                      0xC2, 0x84
