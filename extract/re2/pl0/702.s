.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9800, -14500, 1800, 1800, -26100, 0, -23200, 0, 6, 1, 6, 0, 26, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, -26500, -12600, -19500, -1024, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27350, -27250, 1800, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 ID_AOT_11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28250, -25750, 1800, 2400, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9800, -14500, 1800, 1800, 255, 0, I_GOSUB, main_06, 0, 0
    aot_set                 ID_AOT_3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -27350, -27250, 1800, 1800, 10, 0, ITEM_JOINTPLUGBLUE, 0, aot, 0
    aot_set                 ID_AOT_13, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -28250, -25750, 1800, 2400, 10, 0, ITEM_JOINTPLUGBLUE, 0, aot, 0
    aot_set                 ID_AOT_4, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -27350, -27250, 1800, 1800, 10, 0, ITEM_JOINTPLUGRED, 0, aot, 0
    aot_set                 ID_AOT_14, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -28250, -25750, 1800, 2400, 10, 0, ITEM_JOINTPLUGRED, 0, aot, 0
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26200, -23200, 3400, 2500, ITEM_ROCKETLAUNCHER, 2, 40, ID_OBJ_0, IF_FLOOR
    if                      0, off_1262
    ck                      FG_COMMON, 151, 0
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_02, 6, SBK_0, 0, 255, -28000, -12600, -17900, 1600, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_TYRANT_2, 0, AI_DEFAULT, 0, SBK_26, 0, 40, -8000, 9000, -25000, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    gosub                   main_11
    endif
    nop

off_1262:
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_12AC
    ck                      FG_COMMON, 136, 1
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_13, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_14, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_PBF02, 6, 1
    set                     FG_PBF03, 1, 1
    set                     FG_PBF04, 1, 1
    else                    0, off_12BA

off_12AC:
    set                     FG_PBF02, 6, 0
    set                     FG_PBF03, 1, 0
    set                     FG_PBF04, 1, 0
    nop
    nop

off_12BA:
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_12D2
    ck                      FG_COMMON, 160, 0
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_12D2:
    sce_espr3d_on           0, 534, 0, 3328, -26370, -1700, -26262, -256, 0, 0, 0
    evt_exec                255, I_GOSUB, main_09
    gosub                   main_13
    evt_end                 0

.proc aot
    if                      0, off_12FC
    ck                      FG_STATUS, 11, 1
    gosub                   main_13
    endif
    nop

off_12FC:
    if                      0, off_134A
    ck                      FG_COMMON, 136, 0
    if                      0, off_1326
    cmp                     0, V_USED_ITEM, CMP_EQ, 84
    if                      0, off_131E
    keep_item_ck            ITEM_JOINTPLUGBLUE
    keep_item_ck            ITEM_JOINTPLUGRED
    evt_exec                255, I_GOSUB, main_04
    else                    0, off_1324

off_131E:
    evt_exec                255, I_GOSUB, main_05
    nop
    nop

off_1324:
    endif
    nop

off_1326:
    if                      0, off_1348
    cmp                     0, V_USED_ITEM, CMP_EQ, 85
    if                      0, off_1340
    keep_item_ck            ITEM_JOINTPLUGBLUE
    keep_item_ck            ITEM_JOINTPLUGRED
    evt_exec                255, I_GOSUB, main_04
    else                    0, off_1346

off_1340:
    evt_exec                255, I_GOSUB, main_05
    nop
    nop

off_1346:
    endif
    nop

off_1348:
    endif
    nop

off_134A:
    if                      0, off_1360
    ck                      FG_ENEMY_2, 40, 0
    ck                      FG_COMMON, 151, 0
    ck                      FG_ROOM, 13, 0
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_1360:
    if                      0, off_1376
    ck                      FG_ENEMY_2, 40, 0
    ck                      FG_COMMON, 151, 0
    ck                      FG_ROOM, 11, 0
    evt_exec                255, I_GOSUB, main_0E
    endif
    nop

off_1376:
    if                      0, off_1390
    ck                      FG_ENEMY_2, 40, 1
    ck                      FG_COMMON, 151, 0
    ck                      FG_ROOM, 12, 0
    set                     FG_ROOM, 12, 1
    evt_exec                255, I_GOSUB, main_10
    endif
    nop

off_1390:
    evt_end                 0

.proc main_02
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    sleep                   10, 30
    nop_8a                  0, 10, 0, 0, 0
    nop_8b                  180, 10, 0, 5, 0
    nop_8b                  250, 5, 0, 10, 0
    set                     FG_STATUS, 29, 1
    se_on                   2, 17, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 30
    plc_neck                2, 0, -512, -512, 60, 30
    set                     FG_STATUS, 29, 0
    sleep                   10, 30
    plc_neck                2, 0, 512, -512, 60, 30
    wsleep
    wsleeping
    plc_neck                2, 0, 0, -256, 60, 30
    sleep                   10, 30
    plc_neck                2, 0, 0, -512, 60, 30
    set                     FG_COMMON, 160, 1
    gosub                   main_12
    evt_end                 0

.proc main_03
    if                      0, off_1420
    ck                      FG_COMMON, 136, 0
    cut_chg                 4
    message_on              0, ID_MSG_0, 0, 255, 255
    sleep                   10, 1
    cut_old
    nop
    else                    0, off_1456

off_1420:
    if                      0, off_1448
    ck                      FG_ENEMY_2, 40, 0
    sce_espr3d_on           0, 277, 0, 10240, -27900, -3900, -26800, -96, 288, 144, 0
    message_on              0, ID_MSG_1, 0, 255, 255
    else                    0, off_1450

off_1448:
    message_on              0, ID_MSG_3, 0, 255, 255
    nop
    nop

off_1450:
    sleep                   10, 1
    nop
    nop

off_1456:
    evt_end                 0

.proc main_04
    cut_chg                 4
    se_on                   2, 10, 0, 0, 0, 0
    set                     FG_COMMON, 136, 1
    set                     FG_PBF02, 6, 1
    set                     FG_PBF03, 1, 1
    set                     FG_PBF04, 1, 1
    sce_item_lost           ITEM_JOINTPLUGBLUE
    sce_item_lost           ITEM_JOINTPLUGRED
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_13, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_14, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    sleep                   10, 10
    se_on                   2, 12, 0, 0, 0, 0
    sleep                   10, 20
    cut_chg                 3
    set                     FG_STOP, 7, 0
    sce_espr3d_on           0, 21, 0, 10240, -27900, -3900, -26800, -96, 288, 144, 0
    sce_espr3d_on           0, 2070, 0, 10240, -27900, -3900, -26800, -96, 288, 144, 0
    se_on                   2, 19, 0, 0, 0, 0
    message_on              0, ID_MSG_1, 0, 255, 239
    sleep                   10, 1
    sce_espr_kill           21, 0, 0, 0
    sce_espr_kill           22, 8, 0, 0
    sleep                   10, 1
    aot_reset               ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    cut_replace             0, 12
    cut_replace             1, 13
    cut_replace             2, 14
    cut_replace             3, 15
    cut_chg                 15
    se_on                   2, 11, 0, 0, 0, 0
    cut_auto                1
    set                     FG_STOP, 7, 1
    evt_exec                255, I_GOSUB, main_07
    evt_end                 0

.proc main_05
    sce_espr3d_on           0, 21, 0, 10240, -27900, -3900, -26800, -96, 288, 144, 0
    sce_espr3d_on           0, 22, 0, 10240, -27900, -3900, -26800, -96, 288, 144, 0
    se_on                   2, 18, 0, 0, 0, 0
    message_on              0, ID_MSG_4, 0, 255, 239
    sleep                   10, 1
    sce_espr_kill           21, 0, 0, 0
    sce_espr_kill           22, 0, 0, 0
    evt_end                 0

.proc main_06
    message_on              0, ID_MSG_2, 0, 255, 255
    se_on                   2, 22, 0, 0, 0, 0
    evt_end                 0

.proc main_07
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 33, 2048, 128
    plc_neck                2, 0, -512, -512, 60, 30
    sleep                   10, 30
    plc_neck                2, 0, 512, -512, 60, 30
    sleep                   10, 30
    plc_neck                2, 0, 0, -256, 60, 30
    sleep                   10, 30
    plc_neck                0, 0, 0, 0, 60, 30
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -19800, 0, -19600
    dir_set                 0, 0, 1400, 0
    member_set              M_SCA_OLD_X, -19800
    member_set              M_SCA_OLD_Z, -19600
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 1
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_08
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    se_on                   2, 13, 0, 0, 0, 0
    set                     FG_STATUS, 28, 1
    sleep                   10, 20
    set                     FG_STATUS, 28, 0
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -24500, 0, -25400
    dir_set                 0, 0, 2048, 0
    plc_dest                0, 21, 33, 3600, 128
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -18000, 0, -18000
    dir_set                 0, 0, 1400, 0
    member_set              M_SCA_OLD_X, -18000
    member_set              M_SCA_OLD_Z, -18000
    sleep                   10, 60
    cut_chg                 6
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 2
    set                     FG_STATUS, 4, 0
    sleep                   10, 1
    xa_on                   0, 5
    sleep                   10, 160
    sleep                   10, 40
    sleep                   10, 90
    wsleep
    wsleeping
    set                     FG_STATUS, 4, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 3
    cut_chg                 15
    evt_exec                255, I_GOSUB, main_0A
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    gosub                   main_12
    evt_end                 0

.proc main_08
    sleep                   10, 15
    se_on                   2, 16, 0, 0, 0, 0
    sce_espr_on             0, 3354, 0, 12288, -11500, -1000, -23000, 0
    sce_espr_on             0, 3354, 0, 8192, -12100, 300, -22000, 0
    sce_espr_on             0, 3354, 0, 8192, -12500, 300, -23000, 0
    sce_espr_on             0, 3354, 0, 8192, -12500, 300, -24000, 0
    evt_end                 0

.proc main_09
    copy                    V_TEMP, V_RNG
    nop
    calc                    0, OP_MOD, V_TEMP, 5
    copy                    V_0B, V_TEMP
    nop
    copy                    V_TEMP, V_0B
    nop
    calc                    0, OP_ADD, V_TEMP, 5
    copy                    V_0B, V_TEMP
    nop
    for                     0, off_1748, 11
    sleep                   10, 10
    next                    0

off_1748:
    sleep                   10, 90
    if                      0, off_1788
    ck                      FG_ROOM, 20, 0
    sce_espr_on             0, 3354, 0, 12288, -24000, 500, -13500, 0
    se_on                   2, 16, 0, 0, 0, 0
    set                     FG_STATUS, 28, 1
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  90, 1, 0, 0, 0
    nop_8b                  150, 5, 0, 1, 0
    endif
    nop

off_1788:
    copy                    V_TEMP, V_RNG
    nop
    calc                    0, OP_MOD, V_TEMP, 5
    copy                    V_0B, V_TEMP
    nop
    copy                    V_TEMP, V_0B
    nop
    calc                    0, OP_ADD, V_TEMP, 5
    copy                    V_0B, V_TEMP
    nop
    for                     0, off_17B0, 11
    sleep                   10, 4
    next                    0

off_17B0:
    if                      0, off_17C6
    ck                      FG_ROOM, 20, 0
    se_on                   2, 17, 0, 0, 0, 0
    endif
    nop

off_17C6:
    sleep                   10, 30
    set                     FG_STATUS, 28, 0
    evt_exec                255, I_GOSUB, main_09
    evt_end                 0

.proc main_0A
    sleep                   10, 1800
    set                     FG_ROOM, 15, 1
    evt_end                 0

.proc main_0B
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_17FC
    member_cmp              0, 25, 0, 1, 0
    member_cmp              0, 26, 0, 1, 0
    set                     FG_ROOM, 13, 1
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_17FC:
    if                      0, off_1818
    ck                      FG_ROOM, 15, 1
    member_cmp              0, 26, 0, 1, 0
    ck                      FG_ROOM, 13, 0
    set                     FG_ROOM, 13, 1
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_1818:
    evt_end                 0

.proc main_0C
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_TYPE, -32768
    copy                    V_04, V_CUT
    nop
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_05, M_X_POS
    nop
    member_copy             V_06, M_Z_POS
    nop
    member_copy             V_07, M_Y_DIR
    nop
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_08, M_X_POS
    nop
    member_copy             V_09, M_Z_POS
    nop
    member_copy             V_0A, M_Y_DIR
    nop
    cut_chg                 7
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    super_set               0, 129, 138, 0, 600, -50, -896, 0, 1024
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -28000, -7500, -17900
    dir_set                 0, 0, 3700, 0
    plc_motion              10, 18, 64
    sleep                   10, 1
    plc_dest                0, 20, 0, 0, 0
    xa_on                   0, 0
    message_on              0, ID_MSG_5, 0, 0, 0
    sleep                   10, 30
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -28000, -7500, -17900
    dir_set                 0, 0, 3700, 0
    plc_motion              10, 18, 64
    sleep                   10, 20
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    super_reset             0, -1216, 576, 1024
    evt_exec                255, I_GOSUB, main_0D
    wsleep
    wsleeping
    do                      0, off_18D0
    evt_next
    nop
    edwhile                 off_18D0
    ck                      FG_ROOM, 14, 0

off_18D0:
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -18600, 0, -21700
    dir_set                 0, 0, -1800, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -8000, 0, -25000
    dir_set                 0, 0, 0, 0
    cut_chg                 11
    sleep                   10, 1
    if                      0, off_1918
    ck                      FG_STATUS, F_PLAYER, 0
    xa_on                   0, 1
    message_on              0, ID_MSG_6, 0, 0, 0
    else                    0, off_1924

off_1918:
    xa_on                   0, 1
    message_on              0, ID_MSG_8, 0, 0, 0
    nop
    nop

off_1924:
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -700, 60, 30
    plc_motion              0, 17, 64
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 21, 35, 1600, 96
    wsleep
    wsleeping
    work_copy               4, 1, 0
    cut_chg                 0
    aot_reset               ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 17, 0, 2, 0, 40, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -28000, -12600, -17900
    dir_set                 0, 0, 1600, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    nop
    member_set2             M_X_POS, V_05
    nop
    member_set2             M_Z_POS, V_06
    nop
    member_set2             M_Y_DIR, V_07
    nop
    member_set2             M_SCA_OLD_X, V_05
    nop
    member_set2             M_SCA_OLD_Z, V_06
    nop
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set2             M_X_POS, V_08
    nop
    member_set2             M_Z_POS, V_09
    nop
    member_set2             M_Y_DIR, V_0A
    nop
    member_set2             M_SCA_OLD_X, V_08
    nop
    member_set2             M_SCA_OLD_Z, V_09
    nop
    sleep                   10, 1
    gosub                   main_12
    evt_end                 0

.proc main_0D
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               2, 10
    speed_set               1, 20
    speed_set               0, 25
    speed_set               8, 0
    speed_set               7, 20
    speed_set               6, 5
    do                      0, off_19DE
    evt_next
    add_speed
    add_aspeed
    nop
    edwhile                 off_19DE
    member_cmp              0, 12, 3, 224, 252

off_19DE:
    set                     FG_ROOM, 14, 1
    se_on                   2, 14, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -24650, 0, -22000
    dir_set                 0, -1024, 0, 1024
    member_set              M_ATTRIBUTE, 16
    evt_end                 0

.proc main_0E
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_1A20
    member_cmp              0, 24, 0, 1, 0
    set                     FG_ROOM, 11, 1
    evt_exec                255, I_GOSUB, main_0F
    endif
    nop

off_1A20:
    evt_end                 0

.proc main_0F
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    set                     FG_ROOM, 20, 1
    set                     FG_STATUS, 4, 0
    sleep                   10, 15
    if                      0, off_1A4A
    ck                      FG_STATUS, F_PLAYER, 0
    xa_on                   0, 2
    message_on              0, ID_MSG_7, 0, 0, 0
    else                    0, off_1A56

off_1A4A:
    xa_on                   0, 2
    message_on              0, ID_MSG_9, 0, 0, 0
    nop
    nop

off_1A56:
    wsleep
    wsleeping
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE1, 2
    sleep                   10, 32
    sleep                   10, 5
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE1, 3
    evt_end                 0

.proc main_10
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_ROOM, 20, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE1, 4
    sleep                   10, 1
    set                     FG_STOP, 7, 1
    sleep                   10, 60
    cut_replace             12, 0
    cut_replace             13, 1
    cut_replace             14, 2
    cut_replace             15, 3
    set                     FG_STATUS, 4, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgmtbl_set          0, 2, 7, 12049, 32768
    sce_bgmtbl_set          0, 3, 7, 11299, 32832
    se_on                   2, 11, 0, 0, 0, 0
    if                      0, off_1AD2
    cmp                     0, V_CUT, CMP_EQ, 12
    cut_chg                 0
    endif
    nop

off_1AD2:
    if                      0, off_1AE0
    cmp                     0, V_CUT, CMP_EQ, 13
    cut_chg                 1
    endif
    nop

off_1AE0:
    if                      0, off_1AEE
    cmp                     0, V_CUT, CMP_EQ, 14
    cut_chg                 2
    endif
    nop

off_1AEE:
    if                      0, off_1AFC
    cmp                     0, V_CUT, CMP_EQ, 15
    cut_chg                 3
    endif
    nop

off_1AFC:
    aot_reset               ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 12, 154, 0, 0, 96, 165
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_COMMON, 151, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_PROG0_VOL, 127, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 127, 64
    gosub                   main_12
    evt_end                 0

.proc main_11
    save                    V_0B, 0
    for                     0, off_1B52, 15
    work_copy               11, 2, 0
    parts_set               0, 0, 0, 8224
    work_copy               11, 2, 0
    parts_set               0, 0, 1, 32
    copy                    V_TEMP, V_0B
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_0B, V_TEMP
    nop
    next                    0

off_1B52:
    evt_end                 0

.proc main_12
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_13
    if                      0, off_1BFC
    ck                      FG_COMMON, 151, 0
    switch                  26, off_1BFA
    case                    0, off_1B76, 0

off_1B76:
    case                    0, off_1B84, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    break                   0

off_1B84:
    case                    0, off_1B92, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 64
    break                   0

off_1B92:
    case                    0, off_1BA0, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_1BA0:
    case                    0, off_1BAE, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_1BAE:
    case                    0, off_1BB4, 5

off_1BB4:
    case                    0, off_1BBA, 6

off_1BBA:
    case                    0, off_1BC0, 7

off_1BC0:
    case                    0, off_1BC6, 8

off_1BC6:
    case                    0, off_1BCC, 9

off_1BCC:
    case                    0, off_1BD2, 10

off_1BD2:
    case                    0, off_1BD8, 11

off_1BD8:
    case                    0, off_1BDE, 12

off_1BDE:
    case                    0, off_1BE4, 13

off_1BE4:
    case                    0, off_1BEA, 14

off_1BEA:
    case                    0, off_1BF8, 15
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_STOP, BGM_TYPE_PROG0_VOL, 0, 64
    break                   0

off_1BF8:
    eswitch                 0

off_1BFA:
    endif
    nop

off_1BFC:
    evt_end                 0
    db                      0x39, 0x39
