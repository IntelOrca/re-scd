.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 22211, -5411, 1800, 3400, -20729, 0, -24149, 2160, 5, 13, 0, 0, 49, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 6355, -11840, 8400, -9800, 9900, -11400, 7900, -13400, 3801, 0, -21601, 2703, 5, 8, 11, DOR_0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 14672, -19985, 16400, -18100, 17500, -19100, 15910, -20900, -24424, 0, -14288, 4017, 5, 16, 0, DOR_0, 41, 1, 0, 149, ITEM_UMBRELLAKEYCARD, 0
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 4700, -26761, 1480, 3250, -18910, 0, -14940, -2409, 5, 15, 1, 0, 38, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         ID_AOT_4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 6355, -11840, 8400, -9800, 9900, -11400, 7900, -13400, 3801, 0, -21601, 2703, 5, 17, 11, DOR_0, 37, 0, 0, 0, UNLOCKED, 0
    if                      0, off_0FD6
    ck                      FG_COMMON, 142, 0
    aot_reset               ID_AOT_3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_3, 0, 0, 0, 255, 255
    endif
    nop

off_0FD6:
    if                      0, off_0FE4
    ck                      FG_COMMON, 164, 1
    set                     FG_STATUS, 12, 1
    endif
    nop

off_0FE4:
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main
    gosub                   main_0B
    gosub                   main_02
    gosub                   main_05
    if                      0, off_103E
    ck                      FG_STATUS, F_SCENARIO, 0
    gosub                   main_0A
    endif
    nop

off_103E:
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, 11204, 0, -19510, 0, -2560, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 13950, -22566, 1200, 1600, 255, 0, I_GOSUB, main_03, 0, 0
    if                      0, off_10BE
    ck                      FG_COMMON, 96, 0
    aot_set_4p              10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 11042, -19597, 11550, -18770, 14500, -21830, 13950, -22660, 12, 0, 0, 0, 255, 255
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, 0, 0, 0
    sca_id_set              0, 16, 248
    sca_id_set              1, 0, 4
    cut_replace             5, 7
    cut_replace             3, 8
    else                    0, off_10DC

off_10BE:
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, 2000, 2000, 2000
    sca_id_set              0, 0, 0
    sca_id_set              1, 0, 0
    set                     FG_PBF03, 1, 0
    set                     FG_PBF03, 2, 0
    nop
    nop

off_10DC:
    if                      0, off_1120
    ck                      FG_COMMON, 106, 1
    if                      0, off_1106
    ck                      FG_COMMON, 96, 0
    sce_espr3d_on2          1, 22, 0, 0, 0, 0, 16, 254, 56, 78, 248, 118, 173, 0, 0, 0, 254, 0, 0, 0, 0
    else                    0, off_111E

off_1106:
    sce_espr3d_on2          1, 22, 16, 0, 0, 0, 16, 254, 56, 78, 248, 118, 173, 0, 0, 0, 254, 0, 0, 0, 0
    nop
    nop

off_111E:
    endif
    nop

off_1120:
    evt_end                 0

.proc main_03
    if                      0, off_1218
    ck                      FG_COMMON, 96, 0
    message_on              0, ID_MSG_0, 0, 255, 255
    evt_next
    nop
    if                      0, off_1206
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   2, 266, 1, 0, 0, 0
    if                      0, off_115A
    ck                      FG_COMMON, 106, 0
    message_on              0, ID_MSG_1, 0, 255, 255
    evt_next
    nop
    else                    0, off_1202

off_115A:
    nop_8c                  0, 30, 140, 100, 0, 0, 0
    nop_8b                  140, 75, 0, 100, 0
    nop_8a                  0, 8, 0, 175, 0
    nop_8c                  0, 160, 0, 50, 0, 175, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    aot_reset               ID_AOT_10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, 11204, 0, -19510
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 0, 0, 0
    cut_replace             8, 3
    cut_replace             7, 5
    cut_chg                 3
    sleep                   10, 20
    sce_espr_kill2          1
    sce_espr3d_on2          1, 22, 16, 0, 0, 0, 16, 254, 56, 78, 248, 118, 173, 0, 0, 0, 254, 0, 0, 0, 0
    se_on                   2, 11, 4, 0, 0, 0
    evt_exec                255, I_GOSUB, main_04
    while                   4, off_11E0
    ck                      FG_ROOM, 0, 0
    evt_next
    nop
    ewhile                  0

off_11E0:
    cut_chg                 5
    cut_auto                1
    set                     FG_PBF03, 1, 0
    set                     FG_PBF03, 2, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 13645, 0, -20252
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    nop
    nop

off_1202:
    else                    0, off_1214

off_1206:
    se_on                   4, 261, 1, 0, 0, 0
    nop
    nop

off_1214:
    else                    0, off_1222

off_1218:
    message_on              0, ID_MSG_2, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_1222:
    evt_end                 0

.proc main_04
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               1, -10
    speed_set               7, -2
    for                     0, off_123C, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_123C:
    for                     0, off_1264, 3
    speed_set               7, -2
    for                     0, off_1252, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1252:
    speed_set               7, 2
    for                     0, off_1262, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1262:
    next                    0

off_1264:
    set                     FG_COMMON, 96, 1
    set                     FG_MAP_C, 6, 1
    for                     0, off_1294, 7
    speed_set               7, -2
    for                     0, off_1282, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1282:
    speed_set               7, 2
    for                     0, off_1292, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1292:
    next                    0

off_1294:
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    sca_id_set              0, 0, 0
    sca_id_set              1, 0, 0
    speed_set               1, -30
    for                     0, off_12CC, 5
    speed_set               7, -2
    for                     0, off_12BA, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_12BA:
    speed_set               7, 2
    for                     0, off_12CA, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_12CA:
    next                    0

off_12CC:
    set                     FG_ROOM, 0, 1
    pos_set                 0, 2000, 2000, 2000
    evt_end                 0

.proc main_05
    aot_set                 ID_AOT_6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 6174, -28005, 870, 1110, 255, 0, I_GOSUB, main_06, 0, 0
    if                      0, off_1328
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_1312
    ck                      FG_COMMON, 143, 1
    sce_espr_on2            2, 22, 24, 0, 0, 0, 10, 122, 28, 38, 248, 106, 150, 0, 0
    else                    0, off_1324

off_1312:
    sce_espr_on2            2, 22, 0, 0, 0, 0, 10, 68, 27, 38, 248, 156, 150, 0, 0
    nop
    nop

off_1324:
    else                    0, off_1394

off_1328:
    if                      0, off_1362
    ck                      FG_ZAPPING, 2, 0
    if                      0, off_134C
    ck                      FG_COMMON, 143, 1
    sce_espr_on2            2, 22, 24, 0, 0, 0, 10, 122, 28, 38, 248, 106, 150, 0, 0
    else                    0, off_135E

off_134C:
    sce_espr_on2            2, 22, 0, 0, 0, 0, 10, 68, 27, 38, 248, 156, 150, 0, 0
    nop
    nop

off_135E:
    else                    0, off_1392

off_1362:
    if                      0, off_137E
    ck                      FG_COMMON, 143, 1
    sce_espr_on2            2, 22, 8, 0, 0, 0, 12, 20, 30, 48, 248, 156, 150, 0, 0
    else                    0, off_1390

off_137E:
    sce_espr_on2            2, 22, 24, 0, 0, 0, 10, 122, 28, 38, 248, 106, 150, 0, 0
    nop
    nop

off_1390:
    nop
    nop

off_1392:
    nop
    nop

off_1394:
    evt_end                 0

.proc main_06
    if                      0, off_14AA
    ck                      FG_STATUS, F_SCENARIO, 0
    message_on              0, ID_MSG_4, 0, 255, 255
    evt_next
    nop
    if                      0, off_146A
    ck                      FG_COMMON, 143, 0
    message_on              0, ID_MSG_5, 0, 255, 255
    evt_next
    nop
    if                      0, off_1458
    ck                      FG_MESSAGE, F_QUESTION, 0
    gosub                   main_08
    if                      0, off_13E8
    ck                      FG_COMMON, 91, 0
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, ID_MSG_6, 0, 255, 255
    evt_next
    nop
    gosub                   main_09
    goto                    255, 255, 0, off_165A
    else                    0, off_141A

off_13E8:
    se_on                   2, 19, 1, 0, 0, 0
    message_on              0, ID_MSG_7, 0, 255, 255
    evt_next
    set                     FG_ZAPPING, 2, 1
    set                     FG_COMMON, 143, 1
    sce_espr_kill2          2
    nop
    sce_espr_on2            2, 22, 24, 0, 0, 0, 10, 122, 28, 38, 248, 106, 150, 0, 0
    gosub                   main_09
    nop
    nop

off_141A:
    message_on              0, ID_MSG_8, 0, 255, 255
    evt_next
    nop
    if                      0, off_1446
    ck                      FG_MESSAGE, F_QUESTION, 0
    gosub                   main_08
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, ID_MSG_9, 0, 255, 255
    evt_next
    nop
    gosub                   main_09
    else                    0, off_1454

off_1446:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_1454:
    else                    0, off_1466

off_1458:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_1466:
    else                    0, off_14A6

off_146A:
    message_on              0, ID_MSG_8, 0, 255, 255
    evt_next
    nop
    if                      0, off_1496
    ck                      FG_MESSAGE, F_QUESTION, 0
    gosub                   main_08
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, ID_MSG_9, 0, 255, 255
    evt_next
    nop
    gosub                   main_09
    else                    0, off_14A4

off_1496:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_14A4:
    nop
    nop

off_14A6:
    else                    0, off_165A

off_14AA:
    if                      0, off_14BC
    ck                      FG_COMMON, 142, 0
    message_on              0, ID_MSG_4, 0, 255, 255
    evt_next
    nop
    endif
    nop

off_14BC:
    if                      0, off_15BE
    ck                      FG_ZAPPING, 2, 0
    if                      0, off_157E
    ck                      FG_COMMON, 143, 0
    message_on              0, ID_MSG_5, 0, 255, 255
    evt_next
    nop
    if                      0, off_156C
    ck                      FG_MESSAGE, F_QUESTION, 0
    gosub                   main_08
    if                      0, off_1500
    ck                      FG_COMMON, 91, 0
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, ID_MSG_6, 0, 255, 255
    evt_next
    nop
    gosub                   main_09
    else                    0, off_152E

off_1500:
    se_on                   2, 19, 1, 0, 0, 0
    message_on              0, ID_MSG_7, 0, 255, 255
    evt_next
    set                     FG_COMMON, 143, 1
    sce_espr_kill2          2
    nop
    sce_espr_on2            2, 22, 24, 0, 0, 0, 10, 122, 28, 38, 248, 106, 150, 0, 0
    gosub                   main_09
    nop
    nop

off_152E:
    message_on              0, ID_MSG_8, 0, 255, 255
    evt_next
    nop
    if                      0, off_155A
    ck                      FG_MESSAGE, F_QUESTION, 0
    gosub                   main_08
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, ID_MSG_9, 0, 255, 255
    evt_next
    nop
    gosub                   main_09
    else                    0, off_1568

off_155A:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_1568:
    else                    0, off_157A

off_156C:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_157A:
    else                    0, off_15BA

off_157E:
    message_on              0, ID_MSG_8, 0, 255, 255
    evt_next
    nop
    if                      0, off_15AA
    ck                      FG_MESSAGE, F_QUESTION, 0
    gosub                   main_08
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, ID_MSG_9, 0, 255, 255
    evt_next
    nop
    gosub                   main_09
    else                    0, off_15B8

off_15AA:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_15B8:
    nop
    nop

off_15BA:
    else                    0, off_1658

off_15BE:
    if                      0, off_164C
    ck                      FG_COMMON, 143, 0
    message_on              0, ID_MSG_8, 0, 255, 255
    evt_next
    nop
    if                      0, off_163A
    ck                      FG_MESSAGE, F_QUESTION, 0
    gosub                   main_08
    if                      0, off_161E
    ck                      FG_COMMON, 91, 1
    se_on                   2, 19, 1, 0, 0, 0
    message_on              0, ID_MSG_10, 0, 255, 255
    evt_next
    set                     FG_COMMON, 143, 1
    set                     FG_COMMON, 142, 1
    sce_espr_kill2          2
    nop
    sce_espr_on2            2, 22, 8, 0, 0, 0, 12, 20, 30, 48, 248, 156, 150, 0, 0
    aot_reset               ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 34, 182, 0, 0, 164, 197
    gosub                   main_09
    else                    0, off_1636

off_161E:
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, ID_MSG_6, 0, 255, 255
    evt_next
    nop
    gosub                   main_09
    nop
    nop

off_1636:
    else                    0, off_1648

off_163A:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_1648:
    else                    0, off_1656

off_164C:
    message_on              0, ID_MSG_11, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_1656:
    nop
    nop

off_1658:
    nop
    nop

off_165A:
    work_set                WK_PLAYER, 0
    plc_ret
    evt_end                 0

.proc main_07
    set                     FG_STOP, 7, 1
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 33, 6662, -26445
    do                      0, off_167C
    evt_next
    nop
    edwhile                 off_167C
    ck                      FG_ROOM, 33, 0

off_167C:
    sleep                   10, 4
    plc_dest                0, 9, 33, 6703, -32568
    do                      0, off_1694
    evt_next
    nop
    edwhile                 off_1694
    ck                      FG_ROOM, 33, 0

off_1694:
    member_set              M_Y_DIR, 1031
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_08
    set                     FG_STOP, 7, 1
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_16BC
    ck                      FG_STATUS, F_PLAYER, 0
    plc_motion              0, 26, 0
    sleep                   10, 20
    plc_stop
    nop
    else                    0, off_16C8

off_16BC:
    plc_motion              0, 15, 0
    sleep                   10, 20
    plc_stop
    nop
    nop
    nop

off_16C8:
    sleep                   10, 10
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_09
    set                     FG_STOP, 7, 1
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_16F0
    ck                      FG_STATUS, F_PLAYER, 0
    plc_motion              0, 26, 128
    plc_cnt                 70
    sleep                   10, 20
    else                    0, off_16FC

off_16F0:
    plc_motion              0, 15, 128
    plc_cnt                 70
    sleep                   10, 20
    nop
    nop

off_16FC:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0A
    if                      0, off_1818
    ck                      FG_ITEM_2, 14, 1
    if                      0, off_1816
    ck                      FG_SCENARIO, 36, 0
    sce_em_set              0, ID_EM_0, ENEMY_ANNETTEBIRKIN_1, 0, AI_08, 0, SBK_0, 0, 255, 12696, 0, -15440, 517, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 0, 12854, -5400, -16060, 0, -2560, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    super_set               0, 130, 142, 50, 200, 0, 1088, 0, 1024
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 0, 14144, -5400, -15960, 1408, 2752, 1472, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 0, 13094, -5400, -15010, -192, -896, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, ITEM_GVIRUS, 1, 16, ID_OBJ_2, IF_DEFAULT
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 217, 14, 0, 0, 159, 171
    evt_exec                255, I_GOSUB, main_16
    endif
    nop

off_1816:
    endif
    nop

off_1818:
    evt_end                 0

.proc main_0B
    if                      0, off_1830
    ck                      FG_SCENARIO, 36, 0
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    else                    0, off_183C

off_1830:
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_183C:
    evt_end                 0

.proc main_0C
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 127, 64
    xa_on                   0, 1
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 16, 0
    nop
    wsleep
    wsleeping
    cut_chg                 9
    evt_next
    nop
    xa_on                   0, 2
    sleep                   10, 2
    message_on              0, ID_MSG_13, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                2, 0, -128, 1024, 8, 8
    sleep                   10, 30
    plc_motion              0, 16, 144
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 60, 60
    plc_motion              0, 16, 8
    plc_cnt                 10
    sleep                   10, 40
    plc_motion              0, 19, 16
    plc_cnt                 5
    plc_neck                2, 0, 128, 1024, 32, 32
    sleep                   10, 8
    plc_neck                2, 0, -128, 1024, 32, 32
    sleep                   10, 16
    plc_neck                2, 0, 128, 1024, 32, 32
    sleep                   10, 16
    plc_neck                2, 0, -128, 1024, 32, 32
    sleep                   10, 30
    plc_motion              0, 16, 8
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 30
    plc_neck                2, 0, -360, 1024, 20, 20
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 20, 20
    sleep                   10, 30
    plc_neck                2, 0, 1024, 0, 16, 32
    sleep                   10, 25
    plc_neck                2, 0, -1024, 0, 16, 32
    sleep                   10, 25
    plc_neck                2, 0, 1024, 0, 32, 64
    sleep                   10, 6
    plc_neck                2, 0, -1024, 0, 32, 64
    sleep                   10, 6
    plc_motion              0, 18, 0
    for                     0, off_195A, 10
    plc_neck                2, 0, -20, 1024, 200, 8
    evt_next
    nop
    plc_neck                2, 0, 20, 1024, 200, 8
    evt_next
    nop
    next                    0

off_195A:
    for                     0, off_1980, 15
    plc_motion              0, 18, 0
    plc_cnt                 18
    plc_neck                2, 0, 128, 1024, 16, 8
    evt_next
    nop
    plc_neck                2, 0, -128, 1024, 8, 8
    evt_next
    nop
    next                    0

off_1980:
    plc_motion              0, 23, 0
    plc_neck                5, 1, 0, 0, 200, 200
    wsleep
    wsleeping
    evt_end                 0

.proc main_0D
    cut_chg                 6
    sleep                   10, 2
    xa_on                   0, 3
    sleep                   10, 2
    message_on              0, ID_MSG_14, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                2, 0, 0, 1024, 32, 32
    plc_motion              0, 21, 0
    sleep                   10, 42
    plc_motion              0, 17, 0
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 32, 32
    plc_neck                2, 0, 128, 1024, 8, 8
    sleep                   10, 25
    plc_neck                5, 1, 0, 0, 8, 8
    sleep                   10, 25
    plc_motion              0, 17, 144
    sleep                   10, 40
    plc_motion              0, 16, 0
    plc_neck                2, 0, 0, 1024, 8, 8
    sleep                   10, 20
    plc_motion              0, 19, 0
    plc_cnt                 5
    sleep                   10, 5
    plc_neck                2, 0, 0, -128, 32, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_0E
    gosub                   main_15
    evt_next
    nop
    xa_on                   0, 4
    sleep                   10, 2
    message_on              0, ID_MSG_15, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 0
    nop
    wsleep
    wsleeping
    evt_end                 0

.proc main_0F
    cut_chg                 6
    evt_next
    nop
    xa_on                   0, 5
    sleep                   10, 2
    message_on              0, ID_MSG_16, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 16, 16
    nop
    plc_neck                2, 0, 128, 1024, 16, 4
    sleep                   10, 20
    plc_neck                2, 0, -128, 1024, 16, 4
    sleep                   10, 20
    plc_neck                2, 0, 128, 1024, 16, 4
    sleep                   10, 20
    plc_neck                2, 0, -128, 1024, 16, 4
    sleep                   10, 18
    plc_motion              0, 26, 0
    plc_cnt                 5
    sleep                   10, 42
    plc_motion              0, 16, 16
    plc_cnt                 5
    plc_neck                5, 1, 0, 0, 32, 32
    sleep                   10, 50
    plc_motion              0, 17, 16
    sleep                   10, 70
    plc_motion              0, 17, 128
    sleep                   10, 10
    plc_motion              0, 17, 0
    plc_cnt                 20
    sleep                   10, 30
    plc_motion              0, 16, 16
    sleep                   10, 40
    for                     0, off_1AF2, 10
    plc_motion              0, 16, 0
    plc_cnt                 18
    plc_neck                2, 0, 128, 1024, 16, 8
    evt_next
    nop
    plc_neck                2, 0, -128, 1024, 8, 8
    evt_next
    nop
    next                    0

off_1AF2:
    plc_motion              0, 16, 144
    sleep                   10, 20
    plc_motion              0, 16, 8
    plc_cnt                 10
    plc_neck                5, 1, 0, 0, 64, 64
    wsleep
    wsleeping
    evt_end                 0

.proc main_10
    gosub                   main_15
    evt_next
    nop
    xa_on                   0, 6
    sleep                   10, 2
    message_on              0, ID_MSG_17, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 0
    nop
    plc_neck                2, 0, 1024, 0, 200, 64
    sleep                   10, 4
    plc_neck                2, 0, -1024, 0, 200, 64
    sleep                   10, 8
    plc_neck                2, 0, 1024, 0, 200, 64
    sleep                   10, 8
    plc_neck                5, 3, 0, 0, 200, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_11
    cut_chg                 6
    evt_next
    nop
    xa_on                   0, 7
    sleep                   10, 2
    message_on              0, ID_MSG_18, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 16, 0
    nop
    plc_neck                2, 0, -1024, 0, 16, 8
    sleep                   10, 15
    plc_neck                2, 0, 1024, 0, 16, 8
    sleep                   10, 30
    plc_neck                5, 1, 0, 0, 32, 32
    sleep                   10, 30
    plc_motion              0, 18, 16
    plc_cnt                 12
    sleep                   10, 25
    plc_motion              0, 19, 0
    sleep                   10, 30
    plc_motion              0, 19, 128
    sleep                   10, 10
    plc_motion              0, 19, 16
    plc_cnt                 20
    sleep                   10, 30
    plc_motion              0, 16, 16
    plc_cnt                 10
    sleep                   10, 40
    plc_motion              0, 19, 16
    sleep                   10, 40
    plc_neck                2, 0, 1024, 0, 16, 32
    sleep                   10, 20
    plc_neck                2, 0, -1024, 0, 16, 32
    sleep                   10, 20
    plc_motion              0, 16, 0
    sleep                   10, 25
    plc_neck                2, 0, 0, 1024, 16, 8
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 32, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_12
    gosub                   main_15
    evt_next
    nop
    xa_on                   0, 8
    sleep                   10, 2
    message_on              0, ID_MSG_19, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 32, 32
    sleep                   10, 40
    plc_motion              0, 17, 8
    sleep                   10, 10
    plc_motion              0, 19, 0
    plc_cnt                 5
    sleep                   10, 28
    plc_motion              0, 15, 0
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 10
    plc_neck                2, 0, -1024, 0, 32, 32
    sleep                   10, 18
    plc_neck                2, 0, 1024, 0, 64, 64
    sleep                   10, 7
    plc_neck                2, 0, -1024, 0, 64, 64
    sleep                   10, 5
    plc_motion              0, 22, 0
    sleep                   10, 2
    plc_neck                5, 3, 0, 0, 32, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_13
    cut_chg                 6
    evt_next
    nop
    xa_on                   0, 9
    sleep                   10, 2
    message_on              0, ID_MSG_20, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 21, 0
    nop
    plc_neck                2, 0, -128, 128, 8, 8
    sleep                   10, 30
    plc_neck                2, 0, 128, 128, 8, 8
    plc_motion              0, 20, 0
    sleep                   10, 30
    plc_neck                2, 0, -128, 128, 8, 8
    sleep                   10, 15
    plc_motion              0, 16, 0
    plc_neck                5, 1, 0, 0, 32, 32
    sleep                   10, 20
    plc_motion              0, 23, 0
    sleep                   10, 25
    plc_motion              2, 9, 16
    sleep                   10, 15
    se_on                   2, 9, 4, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 50
    evt_end                 0

.proc main_14
    xa_on                   0, 10
    sleep                   10, 2
    message_on              0, ID_MSG_21, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 15, 16
    nop
    wsleep
    wsleeping
    cut_chg                 9
    evt_end                 0

.proc main_15
    if                      0, off_1D4A
    ck                      FG_COMMON, 96, 0
    cut_chg                 7
    else                    0, off_1D4E

off_1D4A:
    cut_chg                 5
    nop
    nop

off_1D4E:
    evt_end                 0

.proc main_16
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 15109, 0, -18578
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    evt_exec                255, I_GOSUB, main_17
    sleep                   10, 10
    gosub                   main_0C
    gosub                   main_0D
    gosub                   main_0E
    gosub                   main_0F
    gosub                   main_10
    gosub                   main_11
    gosub                   main_12
    gosub                   main_13
    nop_8b                  90, 190, 0, 0, 0
    nop_8b                  130, 10, 0, 40, 0
    nop_8b                  130, 10, 0, 80, 0
    nop_8b                  130, 10, 0, 120, 0
    nop_8b                  130, 10, 0, 160, 0
    nop_8a                  0, 5, 0, 187, 0
    nop_8b                  200, 10, 0, 187, 0
    nop_8c                  0, 90, 0, 40, 0, 197, 0
    set                     FG_STATUS, 29, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 127, 64
    se_on                   2, 269, 1, 0, 0, 0
    evt_exec                255, I_GOSUB, main_1D
    gosub                   main_14
    set                     FG_ROOM, 1, 1
    sleep                   10, 20
    sleep                   10, 8
    sleep                   10, 30
    sleep                   10, 30
    plc_neck                6, 0, 0, 0, 50, 50
    sleep                   10, 6
    evt_exec                255, I_GOSUB, main_19
    evt_exec                255, I_GOSUB, main_18
    evt_exec                255, I_GOSUB, main_1A
    cut_chg                 6
    sleep                   10, 30
    sleep                   10, 30
    gosub                   main_15
    set                     FG_STATUS, 29, 0
    se_on                   2, 270, 1, 0, 0, 0
    sleep                   10, 55
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, 13866, -16619
    gosub                   main_21
    plc_motion              1, 6, 0
    sleep                   10, 50
    plc_neck                2, 0, 1024, 256, 32, 32
    sleep                   10, 10
    plc_neck                2, 0, -1024, 256, 32, 32
    sleep                   10, 18
    plc_neck                2, 0, 1024, 256, 64, 64
    sleep                   10, 7
    plc_neck                2, 0, -1024, 256, 64, 64
    sleep                   10, 5
    plc_neck                6, 0, 0, 0, 32, 32
    sleep                   10, 40
    sleep                   10, 50
    plc_neck                2, 0, 128, 0, 32, 32
    sleep                   10, 60
    aot_on                  ID_AOT_7
    while                   4, off_1E9A
    ck                      FG_STATUS, 16, 1
    evt_next
    nop
    ewhile                  0

off_1E9A:
    set                     FG_SCENARIO, 161, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 192
    plc_cnt                 0
    nop
    sleep                   10, 24
    gosub                   main_1C
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 127, 64
    gosub                   main_20
    cut_auto                1
    set                     FG_SCENARIO, 36, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_17
    work_set                WK_ENEMY, ID_EM_0
    nop
    while                   4, off_1EDA
    ck                      FG_ROOM, 1, 0
    evt_next
    nop
    ewhile                  0

off_1EDA:
    plc_motion              0, 15, 0
    plc_neck                6, 0, 0, 0, 40, 40
    sleep                   10, 200
    evt_end                 0

.proc main_18
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    speed_set               1, 50
    speed_set               7, 20
    while                   6, off_1F0A
    member_cmp              0, 12, 3, 192, 249
    add_speed
    add_aspeed
    evt_next
    nop
    ewhile                  0

off_1F0A:
    se_on                   2, 272, 260, 0, 0, 0
    se_on                   2, 273, 3, 0, 0, 0
    member_set              M_Y_POS, -1600
    speed_set               1, 50
    speed_set               7, 20
    speed_set               0, -60
    for                     0, off_1F4C, 11
    add_speed
    add_aspeed
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 192
    member_set2             M_Z_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1F4C:
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 256
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Z_DIR, 1728
    evt_next
    nop
    member_set              M_Z_DIR, 2048
    evt_next
    nop
    member_set              M_Z_DIR, 2304
    evt_next
    nop
    member_set              M_Z_DIR, 1856
    evt_next
    nop
    member_set              M_Z_DIR, 2240
    evt_next
    nop
    member_set              M_Z_DIR, 2048
    evt_next
    nop
    dir_set                 0, 0, -2560, 4224
    evt_end                 0

.proc main_19
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    speed_set               1, 50
    speed_set               7, 20
    while                   6, off_1FAC
    member_cmp              0, 12, 3, 0, 0
    add_speed
    add_aspeed
    evt_next
    nop
    ewhile                  0

off_1FAC:
    se_on                   2, 271, 772, 0, 0, 0
    member_set              M_Y_POS, 0
    member_set              M_X_DIR, 1048
    evt_next
    nop
    member_set              M_X_DIR, 1152
    evt_next
    nop
    member_set              M_X_DIR, 1408
    evt_next
    nop
    member_set              M_X_DIR, 1600
    evt_next
    nop
    member_set              M_X_DIR, 1280
    evt_next
    nop
    member_set              M_X_DIR, 1408
    evt_end                 0

.proc main_1A
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    speed_set               1, 50
    speed_set               7, 20
    while                   6, off_1FFC
    member_cmp              0, 12, 3, 6, 255
    add_speed
    add_aspeed
    evt_next
    nop
    ewhile                  0

off_1FFC:
    se_on                   2, 272, 1028, 0, 0, 0
    member_set              M_Y_POS, -250
    member_set              M_X_DIR, 0
    evt_next
    nop
    member_set              M_X_DIR, 128
    evt_next
    nop
    member_set              M_X_DIR, 0
    evt_next
    nop
    member_set              M_X_DIR, -128
    evt_end                 0

.proc main_1B
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    super_reset             0, -704, -768, -1024
    pos_set                 0, 13500, 0, -15500
    speed_set               0, 30
    speed_set               6, 5
    for                     0, off_204A, 30
    add_speed
    evt_next
    next                    0

off_204A:
    speed_set               0, 30
    speed_set               6, -5
    for                     0, off_205E, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_205E:
    set                     FG_ROOM, 3, 1
    evt_end                 0

.proc main_1C
    xa_on                   0, 28
    message_on              0, ID_MSG_22, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 4
    nop
    plc_neck                2, 0, -256, -1024, 32, 32
    sleep                   10, 70
    plc_neck                2, 0, 256, -1024, 32, 32
    sleep                   10, 50
    plc_neck                2, 0, -256, -1024, 32, 32
    sleep                   10, 60
    plc_motion              0, 25, 0
    sleep                   10, 12
    plc_neck                2, 0, 256, -1024, 32, 32
    sleep                   10, 70
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 50
    plc_neck                2, 0, 256, -1024, 32, 32
    sleep                   10, 70
    plc_motion              0, 25, 128
    plc_cnt                 0
    sleep                   10, 12
    plc_neck                6, 0, 0, 0, 20, 20
    wsleep
    wsleeping
    evt_end                 0

.proc main_1D
    for                     0, off_210A, 6
    sleep                   10, 5
    gosub                   main_1E
    sleep                   10, 10
    gosub                   main_1F
    sleep                   10, 17
    gosub                   main_1E
    sleep                   10, 9
    gosub                   main_1F
    next                    0

off_210A:
    evt_end                 0

.proc main_1E
    sce_espr_on             0, 281, 0, 5120, 10800, -5400, -16196, 0
    sce_espr_on             0, 25, 0, 4608, 13189, -5400, -17476, 0
    sce_espr_on             0, 281, 0, 4096, 13472, -5400, -20069, 0
    evt_end                 0

.proc main_1F
    sce_espr_on             0, 25, 0, 4608, 13189, -5400, -17476, 0
    sce_espr_on             0, 281, 0, 4096, 15386, -5400, -16307, 0
    sce_espr_on             0, 25, 0, 5120, 13589, -5400, -15234, 0
    sce_espr_on             0, 281, 0, 4608, 13786, -5400, -16510, 0
    evt_end                 0

.proc main_20
    sce_bgmtbl_set          0, 5, 5, 65297, 0
    sce_bgmtbl_set          0, 6, 6, 65297, 0
    sce_bgmtbl_set          0, 9, 6, 65297, 0
    sce_bgmtbl_set          0, 10, 6, 65297, 0
    sce_bgmtbl_set          0, 11, 6, 65297, 0
    sce_bgmtbl_set          0, 13, 6, 65297, 0
    sce_bgmtbl_set          0, 14, 6, 65297, 0
    sce_bgmtbl_set          0, 15, 6, 65297, 0
    sce_bgmtbl_set          0, 16, 6, 65297, 0
    sce_bgmtbl_set          0, 18, 6, 65297, 0
    sce_bgmtbl_set          0, 19, 6, 65297, 0
    sce_bgmtbl_set          0, 20, 6, 65297, 0
    sce_bgmtbl_set          0, 21, 6, 65297, 0
    sce_bgmtbl_set          0, 22, 6, 65297, 0
    sce_bgmtbl_set          0, 7, 6, 65297, 0
    sce_bgmtbl_set          0, 8, 6, 10001, 32768
    sce_bgmtbl_set          0, 12, 6, 65297, 0
    evt_end                 0

.proc main_21
    do                      0, off_2216
    evt_next
    nop
    edwhile                 off_2216
    ck                      FG_ROOM, 32, 0

off_2216:
    evt_end                 0
