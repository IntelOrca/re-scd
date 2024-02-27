.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27713, -23125, 1240, 2470, -14423, 0, -7289, 2024, 1, 4, 4, 0, 8, 0, 0, 0, UNLOCKED, 0
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23098, -25955, 2460, 7900, ITEM_PATROLREPORT, 1, 153, ID_OBJ_255, IF_DEFAULT
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26643, -18975, 940, 1870, ITEM_INKRIBBON, 3, 35, ID_OBJ_1, IF_DEFAULT
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, 26219, -2209, 18285, 0, 0, 384, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23098, -25955, 2460, 7900, ID_MSG_0, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26108, -14745, 8150, 1200, ID_MSG_1, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27168, -18475, 1460, 1400, ID_MSG_2, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20913, -26525, 2840, 870, ID_MSG_3, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_13, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25598, -26565, 2460, 1200, ID_MSG_4, 0, 0, 0, 255, 255
    obj_model_set           ID_OBJ_0, 2, 0, 0, 0, 0, 0, 384, 0, -18673, 0, -21096, 0, -1024, 0, 50, -900, 0, 675, 132, 3, 88, 2
    evt_end                 0

.main
.proc main
    if                      0, off_0810
    ck                      FG_STATUS, F_SCENARIO, 0
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -20613, -26525, 2040, 870, ITEM_CRANK, 1, 188, ID_OBJ_4, IF_DEFAULT
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -19435, -4000, -26182, 0, -1216, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_084E

off_0810:
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -20613, -26525, 2040, 870, ITEM_LIGHTER, 1, 39, ID_OBJ_5, IF_DEFAULT
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 16, -19435, -4000, -26182, 0, -1216, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_084E:
    evt_end                 0

.proc aot
    evt_end                 0
    db                      0x04, 0x9A
