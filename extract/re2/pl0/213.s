.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21395, -28145, 4600, 1800, -12865, 0, -13165, 1024, 1, 17, 7, 0, 29, 3, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_0F1C
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_0EDC
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14870, -27180, 2330, 1650, ITEM_HANDGUNAMMO, 15, 24, ID_OBJ_225, IF_FLOOR
    else                    0, off_0F1A

off_0EDC:
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21380, -11080, 1240, 1120, ITEM_HANDGUNAMMO, 15, 24, ID_OBJ_1, IF_FLOOR
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -20550, 0, -10250, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0F1A:
    endif
    nop

off_0F1C:
    gosub                   main_03
    evt_end                 0

.proc aot
    gosub                   main_02
    evt_end                 0

.proc main_02
    if                      0, off_0F38
    ck                      FG_COMMON, 60, 1
    aot_reset               ID_AOT_3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_10, 0, 0, 0, 255, 255
    endif
    nop

off_0F38:
    gosub                   main_06
    evt_end                 0

.proc main_03
    if                      0, off_0F96
    ck                      FG_COMMON, 60, 1
    sce_espr_on2            1, 22, 2, 0, 0, 186, 2, 194, 160, 206, 245, 194, 212, 0, 0
    sce_espr_on2            2, 22, 2, 0, 0, 186, 2, 20, 161, 206, 245, 194, 212, 0, 0
    sce_espr_on2            3, 22, 2, 0, 0, 186, 2, 110, 161, 206, 245, 194, 212, 0, 0
    sce_espr_on2            4, 22, 2, 0, 0, 186, 2, 200, 161, 206, 245, 194, 212, 0, 0
    sce_espr_on2            5, 22, 2, 0, 0, 186, 2, 34, 162, 206, 245, 194, 212, 0, 0
    endif
    nop

off_0F96:
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24840, -11500, 1900, 1550, 255, 0, I_GOSUB, main_04, 0, 0
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25240, -26800, 1360, 1070, ITEM_HERBG, 1, 253, ID_OBJ_9, IF_FLOOR
    if                      0, off_1004
    ck                      FG_COMMON, 122, 0
    aot_set                 ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17000, -10900, 1200, 1070, 255, 0, I_GOSUB, main_05, 0, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -16900, -1200, -10400, 0, -896, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1004:
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -24660, -2754, -11070, 128, -1024, -1856, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -24390, -2428, -11070, -1024, -1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -24300, -2428, -11070, -1024, -1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 16, -24210, -2428, -11070, -1024, -1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 16, -24120, -2428, -11070, -1024, -1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 0, 0, 10, 16, -24030, -2428, -11070, -1024, -1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_9, 0, 0, 0, 0, 0, 0, 10, 16, -24814, 0, -26191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_04
    set                     FG_STOP, 7, 1
    message_on              0, ID_MSG_11, 0, 255, 239
    sleep                   10, 1
    cut_chg                 6
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 0, -2000, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -24660, -2754, -11070
    save                    V_05, 0
    save                    V_06, 0
    save                    V_07, -24660
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    dir_set                 0, -1024, -1024, 1024
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    dir_set                 0, -1024, -1024, 1024
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    dir_set                 0, -1024, -1024, 1024
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    dir_set                 0, -1024, -1024, 1024
    work_set                WK_OBJECT, ID_OBJ_7
    nop
    dir_set                 0, -1024, -1024, 1024
    sce_espr_kill2          1
    sce_espr_kill2          2
    sce_espr_kill2          3
    sce_espr_kill2          4
    sce_espr_kill2          5
    message_on              0, ID_MSG_1, 0, 255, 239
    evt_next
    nop
    se_on                   2, 266, 0, -24421, -1024, -11276
    if                      0, off_121E
    ck                      FG_MESSAGE, F_QUESTION, 0
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    dir_set                 0, -1024, -1024, 1600
    copy                    V_06, V_05
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 36
    copy                    V_05, V_TEMP
    nop
    if                      0, off_11D4
    cmp                     0, V_05, CMP_GE, 100
    save                    V_05, 100
    endif
    nop

off_11D4:
    copy                    V_TEMP, V_05
    nop
    calc2                   OP_SUB, V_TEMP, V_06
    copy                    V_04, V_TEMP
    nop
    while                   6, off_121A
    cmp                     0, V_04, CMP_GT, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 9
    copy                    V_07, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    work_copy               7, 2, 1
    pos_set                 0, 0, -2754, -11070
    evt_next
    nop
    ewhile                  0

off_121A:
    else                    0, off_1294

off_121E:
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    dir_set                 0, -1024, -1024, 515
    copy                    V_06, V_05
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    copy                    V_05, V_TEMP
    nop
    if                      0, off_124C
    cmp                     0, V_05, CMP_LE, 0
    save                    V_05, 0
    endif
    nop

off_124C:
    copy                    V_TEMP, V_06
    nop
    calc2                   OP_SUB, V_TEMP, V_05
    copy                    V_04, V_TEMP
    nop
    while                   6, off_1292
    cmp                     0, V_04, CMP_GT, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 9
    copy                    V_07, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    work_copy               7, 2, 1
    pos_set                 0, 0, -2754, -11070
    evt_next
    nop
    ewhile                  0

off_1292:
    nop
    nop

off_1294:
    sce_espr_on2            1, 22, 2, 0, 0, 186, 2, 194, 160, 206, 245, 194, 212, 0, 0
    sleep                   10, 30
    message_on              0, ID_MSG_2, 0, 255, 239
    evt_next
    nop
    se_on                   2, 266, 0, -24421, -1024, -11276
    if                      0, off_133C
    ck                      FG_MESSAGE, F_QUESTION, 0
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    dir_set                 0, -1024, -1024, 1600
    copy                    V_06, V_05
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 36
    copy                    V_05, V_TEMP
    nop
    if                      0, off_12F2
    cmp                     0, V_05, CMP_GE, 100
    save                    V_05, 100
    endif
    nop

off_12F2:
    copy                    V_TEMP, V_05
    nop
    calc2                   OP_SUB, V_TEMP, V_06
    copy                    V_04, V_TEMP
    nop
    while                   6, off_1338
    cmp                     0, V_04, CMP_GT, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 9
    copy                    V_07, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    work_copy               7, 2, 1
    pos_set                 0, 0, -2754, -11070
    evt_next
    nop
    ewhile                  0

off_1338:
    else                    0, off_13B2

off_133C:
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    dir_set                 0, -1024, -1024, 515
    copy                    V_06, V_05
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    copy                    V_05, V_TEMP
    nop
    if                      0, off_136A
    cmp                     0, V_05, CMP_LE, 0
    save                    V_05, 0
    endif
    nop

off_136A:
    copy                    V_TEMP, V_06
    nop
    calc2                   OP_SUB, V_TEMP, V_05
    copy                    V_04, V_TEMP
    nop
    while                   6, off_13B0
    cmp                     0, V_04, CMP_GT, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 9
    copy                    V_07, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    work_copy               7, 2, 1
    pos_set                 0, 0, -2754, -11070
    evt_next
    nop
    ewhile                  0

off_13B0:
    nop
    nop

off_13B2:
    sce_espr_on2            2, 22, 2, 0, 0, 186, 2, 20, 161, 206, 245, 194, 212, 0, 0
    sleep                   10, 30
    message_on              0, ID_MSG_3, 0, 255, 239
    evt_next
    nop
    se_on                   2, 266, 0, -24421, -1024, -11276
    if                      0, off_145A
    ck                      FG_MESSAGE, F_QUESTION, 0
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    dir_set                 0, -1024, -1024, 1600
    copy                    V_06, V_05
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 36
    copy                    V_05, V_TEMP
    nop
    if                      0, off_1410
    cmp                     0, V_05, CMP_GE, 100
    save                    V_05, 100
    endif
    nop

off_1410:
    copy                    V_TEMP, V_05
    nop
    calc2                   OP_SUB, V_TEMP, V_06
    copy                    V_04, V_TEMP
    nop
    while                   6, off_1456
    cmp                     0, V_04, CMP_GT, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 9
    copy                    V_07, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    work_copy               7, 2, 1
    pos_set                 0, 0, -2754, -11070
    evt_next
    nop
    ewhile                  0

off_1456:
    else                    0, off_14D0

off_145A:
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    dir_set                 0, -1024, -1024, 515
    copy                    V_06, V_05
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    copy                    V_05, V_TEMP
    nop
    if                      0, off_1488
    cmp                     0, V_05, CMP_LE, 0
    save                    V_05, 0
    endif
    nop

off_1488:
    copy                    V_TEMP, V_06
    nop
    calc2                   OP_SUB, V_TEMP, V_05
    copy                    V_04, V_TEMP
    nop
    while                   6, off_14CE
    cmp                     0, V_04, CMP_GT, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 9
    copy                    V_07, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    work_copy               7, 2, 1
    pos_set                 0, 0, -2754, -11070
    evt_next
    nop
    ewhile                  0

off_14CE:
    nop
    nop

off_14D0:
    sce_espr_on2            3, 22, 2, 0, 0, 186, 2, 110, 161, 206, 245, 194, 212, 0, 0
    sleep                   10, 30
    message_on              0, ID_MSG_4, 0, 255, 239
    evt_next
    nop
    se_on                   2, 266, 0, -24421, -1024, -11276
    if                      0, off_1578
    ck                      FG_MESSAGE, F_QUESTION, 0
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    dir_set                 0, -1024, -1024, 1600
    copy                    V_06, V_05
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 36
    copy                    V_05, V_TEMP
    nop
    if                      0, off_152E
    cmp                     0, V_05, CMP_GE, 100
    save                    V_05, 100
    endif
    nop

off_152E:
    copy                    V_TEMP, V_05
    nop
    calc2                   OP_SUB, V_TEMP, V_06
    copy                    V_04, V_TEMP
    nop
    while                   6, off_1574
    cmp                     0, V_04, CMP_GT, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 9
    copy                    V_07, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    work_copy               7, 2, 1
    pos_set                 0, 0, -2754, -11070
    evt_next
    nop
    ewhile                  0

off_1574:
    else                    0, off_15EE

off_1578:
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    dir_set                 0, -1024, -1024, 515
    copy                    V_06, V_05
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    copy                    V_05, V_TEMP
    nop
    if                      0, off_15A6
    cmp                     0, V_05, CMP_LE, 0
    save                    V_05, 0
    endif
    nop

off_15A6:
    copy                    V_TEMP, V_06
    nop
    calc2                   OP_SUB, V_TEMP, V_05
    copy                    V_04, V_TEMP
    nop
    while                   6, off_15EC
    cmp                     0, V_04, CMP_GT, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 9
    copy                    V_07, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    work_copy               7, 2, 1
    pos_set                 0, 0, -2754, -11070
    evt_next
    nop
    ewhile                  0

off_15EC:
    nop
    nop

off_15EE:
    sce_espr_on2            4, 22, 2, 0, 0, 186, 2, 200, 161, 206, 245, 194, 212, 0, 0
    sleep                   10, 30
    message_on              0, ID_MSG_5, 0, 255, 239
    evt_next
    nop
    se_on                   2, 266, 0, -24421, -1024, -11276
    if                      0, off_1696
    ck                      FG_MESSAGE, F_QUESTION, 0
    work_set                WK_OBJECT, ID_OBJ_7
    nop
    dir_set                 0, -1024, -1024, 1600
    copy                    V_06, V_05
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 36
    copy                    V_05, V_TEMP
    nop
    if                      0, off_164C
    cmp                     0, V_05, CMP_GE, 100
    save                    V_05, 100
    endif
    nop

off_164C:
    copy                    V_TEMP, V_05
    nop
    calc2                   OP_SUB, V_TEMP, V_06
    copy                    V_04, V_TEMP
    nop
    while                   6, off_1692
    cmp                     0, V_04, CMP_GT, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 9
    copy                    V_07, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    work_copy               7, 2, 1
    pos_set                 0, 0, -2754, -11070
    evt_next
    nop
    ewhile                  0

off_1692:
    else                    0, off_170C

off_1696:
    work_set                WK_OBJECT, ID_OBJ_7
    nop
    dir_set                 0, -1024, -1024, 515
    copy                    V_06, V_05
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    copy                    V_05, V_TEMP
    nop
    if                      0, off_16C4
    cmp                     0, V_05, CMP_LE, 0
    save                    V_05, 0
    endif
    nop

off_16C4:
    copy                    V_TEMP, V_06
    nop
    calc2                   OP_SUB, V_TEMP, V_05
    copy                    V_04, V_TEMP
    nop
    while                   6, off_170A
    cmp                     0, V_04, CMP_GT, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 9
    copy                    V_07, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    work_copy               7, 2, 1
    pos_set                 0, 0, -2754, -11070
    evt_next
    nop
    ewhile                  0

off_170A:
    nop
    nop

off_170C:
    sce_espr_on2            5, 22, 2, 0, 0, 186, 2, 34, 162, 206, 245, 194, 212, 0, 0
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -24485, 0, -11346
    cut_chg                 4
    if                      0, off_174E
    cmp                     0, V_05, CMP_EQ, 100
    message_on              0, ID_MSG_6, 0, 255, 255
    se_on                   2, 267, 0, -24421, -1024, -11276
    else                    0, off_1810

off_174E:
    if                      0, off_17D2
    cmp                     0, V_05, CMP_EQ, 80
    message_on              0, ID_MSG_7, 0, 255, 255
    set                     FG_COMMON, 60, 1
    se_on                   2, 268, 0, -24421, -1024, -11276
    sleep                   10, 20
    cut_chg                 8
    sce_espr_on2            11, 22, 0, 0, 0, 180, 11, 44, 162, 136, 245, 150, 206, 0, 0
    sce_espr_on2            12, 22, 0, 0, 0, 180, 11, 28, 163, 136, 245, 150, 206, 0, 0
    sleep                   10, 30
    se_on                   2, 271, 0, -24421, -1024, -11276
    sce_espr_kill2          11
    sce_espr_kill2          12
    sce_espr_on2            13, 22, 16, 0, 0, 180, 11, 44, 162, 136, 245, 150, 206, 0, 0
    sce_espr_on2            14, 22, 16, 0, 0, 180, 11, 28, 163, 136, 245, 150, 206, 0, 0
    sleep                   10, 30
    cut_chg                 4
    else                    0, off_180E

off_17D2:
    if                      0, off_17E4
    cmp                     0, V_05, CMP_EQ, 0
    message_on              0, ID_MSG_9, 0, 255, 255
    endif
    nop

off_17E4:
    if                      0, off_17F8
    cmp                     0, V_05, CMP_GT, 80
    message_on              0, ID_MSG_6, 0, 255, 255
    else                    0, off_1800

off_17F8:
    message_on              0, ID_MSG_8, 0, 255, 255
    nop
    nop

off_1800:
    se_on                   2, 267, 0, -24421, -1024, -11276
    nop
    nop

off_180E:
    nop
    nop

off_1810:
    sleep                   10, 1
    sce_espr_kill2          13
    sce_espr_kill2          14
    set                     FG_STOP, 7, 0
    cut_auto                1
    evt_end                 0

.proc main_05
    set                     FG_STOP, 7, 1
    message_on              0, ID_MSG_0, 0, 255, 239
    sleep                   10, 1
    if                      0, off_1864
    ck                      FG_MESSAGE, F_QUESTION, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, 0, -21024, 0
    set                     FG_MAP_I, 5, 1
    set                     35, 5, 1
    set                     FG_COMMON, 122, 1
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_12, 0, 255, 239
    sleep                   10, 1
    endif
    nop

off_1864:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_06

off_186A:
    switch                  26, off_18D2
    case                    0, off_187C, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 40
    break                   0

off_187C:
    case                    0, off_188A, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 110, 40
    break                   0

off_188A:
    case                    0, off_1898, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 110, 80
    break                   0

off_1898:
    case                    0, off_18A6, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 110, 80
    break                   0

off_18A6:
    case                    0, off_18B4, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 90
    break                   0

off_18B4:
    case                    0, off_18C2, 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 90
    break                   0

off_18C2:
    case                    0, off_18D0, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 90
    break                   0

off_18D0:
    eswitch                 0

off_18D2:
    do                      0, off_18E0
    sleep                   10, 1
    edwhile                 off_18E0
    ck                      FG_STATUS, 11, 0

off_18E0:
    goto                    255, 255, 0, off_186A
    evt_end                 0
