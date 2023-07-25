.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22772, -26469, 1800, 2700, -649, 0, -24332, 2568, 1, 11, 2, 0, 19, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -28342, -26486, 1800, 2800, -13894, 0, -25290, 2144, 0, 9, 5, 0, 8, 1, 0, 144, LOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21570, -23070, 1230, 1310, ITEM_HERBG, 1, 57, 0, 1
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -22910, -26500, 1830, 1140, ITEM_HERBG, 1, 58, 1, 1
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -21000, 0, -22400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 4, 0, 10, 16, -22200, -7200, -26050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21520, -23970, 1230, 1410, ITEM_HERBG, 1, 59, 2, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -20900, 0, -23250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    aot_set                 5, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 4, 0, -27750, -27660, 6400, 8350, 35, 0, ITEM_HANDGUNCLAIRE, 0, aot, 0
    aot_set                 8, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 4, 0, -27750, -27660, 6400, 8350, 9, 0, ITEM_81, 0, aot, 0
    aot_set                 6, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -21750, -27460, 8500, 6250, 35, 0, ITEM_HANDGUNLEON, 0, aot, 0
    aot_set                 9, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -21750, -27460, 8500, 6250, 9, 0, ITEM_82, 0, aot, 0
    aot_set                 7, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 1, 0, -17050, -21770, 3160, 3690, 35, 0, ITEM_HANDGUNLEON, 0, aot, 0
    aot_set                 10, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 1, 0, -17050, -21770, 3160, 3690, 9, 0, ITEM_82, 0, aot, 0
    evt_end                 0

.proc main_03

off_0B58:
    switch                  26, off_0B88
    case                    0, off_0B6A, 0
    sce_bgm_control         0, 0, 2, 100, 68
    break                   0

off_0B6A:
    case                    0, off_0B78, 1
    sce_bgm_control         0, 0, 2, 105, 58
    break                   0

off_0B78:
    case                    0, off_0B86, 2
    sce_bgm_control         0, 0, 2, 100, 65
    break                   0

off_0B86:
    eswitch                 0

off_0B88:
    do                      0, off_0B96
    sleep                   10, 1
    edwhile                 off_0B96
    ck                      FG_GAME, 11, 0

off_0B96:
    goto                    255, 255, 0, off_0B58
    evt_end                 0
