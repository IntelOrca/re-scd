.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26988, -15799, 1800, 2000, 1772, 0, -14819, 2048, 5, 20, 0, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16652, -27286, 2900, 1600, -14434, 0, 3227, 1008, 5, 22, 6, 0, 37, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    if                      0, off_12CE
    ck                      FG_COMMON, 165, 0
    aot_set_4p              6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28790, -8700, -25770, -5900, -22600, -8300, -25000, -10800, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_12CE:
    sce_espr3d_on2          0, 22, 10, 0, 0, 0, 18, 186, 160, 86, 248, 238, 219, 0, 0, 0, 4, 0, 0, 0, 0
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    obj_model_set           ID_OBJ_0, 0, 130, 1, 15, 0, 0, 10, 18, -22150, -7884, -6615, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 130, 1, 15, 0, 0, 10, 18, -23086, -4176, -7636, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 130, 2, 15, 0, 0, 10, 18, -22025, -4176, -6574, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 130, 1, 15, 0, 0, 10, 18, -25224, -5412, -9760, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_4, 0, 130, 2, 15, 0, 0, 10, 18, -24226, -5418, -8715, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_5, 0, 130, 1, 15, 0, 0, 10, 18, -23116, -2970, -7662, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_6, 0, 130, 1, 15, 0, 0, 10, 18, -24167, -6649, -8708, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_7, 0, 130, 1, 15, 0, 0, 10, 18, -25136, -2970, -9710, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_8, 0, 130, 1, 15, 0, 0, 10, 18, -21004, -2970, -5549, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_9, 0, 130, 1, 15, 0, 0, 10, 18, -21036, -5412, -5562, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_10, 0, 130, 1, 15, 0, 0, 10, 18, -22050, -6660, -6624, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_11, 0, 0, 0, 0, 0, 0, 10, 16, -22622, -1459, -18360, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_3, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25801, -17916, 1660, 1350, 11, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_2, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23672, -17241, 2110, 1400, 11, 0, 12, 0, 0, 0
    evt_end                 0

.proc main_03
    set                     FG_STOP, 7, 1
    message_on              0, ID_MSG_0, 0, 255, 239
    sleep                   10, 1
    if                      0, off_1552
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   2, 266, 4, 0, 0, 0
    if                      0, off_1512
    ck                      FG_STATUS, F_SCENARIO, 1
    set                     FG_MAP_I, 13, 1
    set                     FG_MAP_I, 14, 1
    set                     FG_MAP_I, 15, 1
    endif
    nop

off_1512:
    set                     FG_MAP_I, 16, 1
    set                     FG_MAP_I, 17, 1
    if                      0, off_1530
    ck                      FG_STATUS, F_SCENARIO, 1
    set                     35, 13, 1
    set                     35, 14, 1
    set                     35, 15, 1
    endif
    nop

off_1530:
    set                     35, 16, 1
    set                     35, 17, 1
    set                     FG_COMMON, 165, 1
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_14, 0, 255, 239
    sleep                   10, 1
    endif
    nop

off_1552:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_04
    set                     FG_STOP, 7, 1
    message_on              0, ID_MSG_15, 0, 255, 239
    sleep                   10, 1
    if                      0, off_1598
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   2, 266, 4, 0, 0, 0
    set                     FG_COMMON, 164, 1
    if                      0, off_158C
    ck                      FG_STATUS, F_SCENARIO, 0
    set                     FG_ZAPPING, 14, 1
    endif
    nop

off_158C:
    aot_reset               ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_16, 0, 0, 0, 255, 239
    endif
    nop

off_1598:
    set                     FG_STOP, 7, 0
    evt_end                 0
    db                      0x00, 0x00
