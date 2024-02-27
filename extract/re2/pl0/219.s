.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 5024, -22115, 1200, 1800, -20700, 0, -3700, 0, 1, 22, 3, 0, 28, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7256, -12055, 1800, 1200, -15300, 0, -9700, 3072, 1, 26, 0, 0, 26, 1, 0, 0, UNLOCKED, 0
    if                      0, off_09BA
    ck                      FG_STATUS, F_BONUS, 1
    aot_set                 ID_AOT_3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26566, -16105, 2400, 1200, ID_MSG_4, 0, 0, 0, 255, 255
    else                    0, off_09DC

off_09BA:
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26566, -16105, 2400, 1200, -25100, 0, -16450, 1024, 2, 1, 0, 0, 20, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_09DC:
    evt_end                 0
    db                      0x1A, 0x13

.main
.proc main
    if                      0, off_0A9A
    ck                      FG_STATUS, F_BONUS, 1
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 134, AI_DEFAULT, 0, SBK_5, 0, 95, -11536, 0, -13187, 159, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_5, 0, 96, -373, 0, -21443, 2653, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 3, AI_20, 0, SBK_5, 0, 140, -5728, 0, -18745, 3472, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 1, AI_20, 0, SBK_5, 0, 148, -4580, 0, -17700, 3136, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_5, 0, 161, 2292, 0, -21718, 3064, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 134, AI_DEFAULT, 0, SBK_5, 0, 162, -12406, 0, -14303, 4008, 0, 0
    evt_end                 0
    endif
    nop

off_0A9A:
    gosub                   main_07
    if                      0, off_0AE4
    ck                      FG_STATUS, F_SCENARIO, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -26000, -1500, -12500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27000, -12900, 1800, 1800, ITEM_HANDGUNAMMO, 15, 117, ID_OBJ_0, IF_DEFAULT
    else                    0, off_0B22

off_0AE4:
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -26000, -1600, -12500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27000, -12900, 1800, 1800, ITEM_FILMC, 1, 117, ID_OBJ_1, IF_DEFAULT
    nop
    nop

off_0B22:
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28600, -14800, 1800, 1400, ID_MSG_2, 0, 0, 0, 255, 255
    if                      0, off_0B5E
    ck                      FG_SCENARIO, 67, 0
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_DEFAULT, 0, SBK_0, 0, 255, 3220, 0, -19880, 2048, 0, 0
    set                     FG_SCENARIO, 67, 1
    evt_exec                255, I_GOSUB, main_03
    endif
    nop

off_0B5E:
    if                      0, off_0B76
    ck                      FG_SCENARIO, 66, 1
    ck                      FG_SCENARIO, 65, 0
    aot_reset               ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_0B76:
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    message_on              0, ID_MSG_0, 0, 255, 255
    evt_end                 0

.proc main_03
    gosub                   main_05
    sleep                   10, 30
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -4097
    member_set2             M_TYPE, V_TEMP
    nop
    plc_dest                0, 5, 41, -4600, -20750
    sleep                   10, 20
    sleep                   10, 1
    xa_on                   0, 32
    message_on              0, ID_MSG_1, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 19, 0
    nop
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 19, 128
    sleep                   10, 20
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 4096
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    pos_set                 0, 3000, 0, -13000
    wsleep
    wsleeping
    gosub                   main_06
    evt_end                 0

.proc main_04
    do                      0, off_0C22
    evt_next
    nop
    edwhile                 off_0C22
    ck                      FG_ROOM, 41, 0

off_0C22:
    evt_end                 0

.proc main_05
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_07
    if                      0, off_0C6E
    ck                      FG_COMMON, 254, 1
    set                     FG_COMMON, 55, 1
    set                     FG_SCENARIO, 98, 0
    if                      0, off_0C62
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_bgmtbl_set          0, 25, 2, 4863, 49152
    else                    0, off_0C6C

off_0C62:
    sce_bgmtbl_set          0, 25, 2, 4863, 49152
    nop
    nop

off_0C6C:
    endif
    nop

off_0C6E:
    if                      0, off_0C9C
    ck                      FG_COMMON, 55, 1
    if                      0, off_0C9A
    ck                      FG_SCENARIO, 67, 1
    if                      0, off_0C98
    ck                      FG_SCENARIO, 98, 1
    if                      0, off_0C96
    cmp                     0, V_LAST_RDT, CMP_EQ, 273
    evt_exec                255, I_GOSUB, main_08
    endif
    nop

off_0C96:
    endif
    nop

off_0C98:
    endif
    nop

off_0C9A:
    endif
    nop

off_0C9C:
    if                      0, off_0D32
    ck                      FG_COMMON, 55, 1
    if                      0, off_0D30
    ck                      FG_SCENARIO, 67, 1
    if                      0, off_0D2E
    ck                      FG_SCENARIO, 98, 0
    if                      0, off_0CD6
    cmp                     0, V_LAST_RDT, CMP_EQ, 534
    aot_set                 ID_AOT_7, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -4336, -24035, 5000, 6300, 255, 0, I_GOSUB, main_09, 0, 0
    else                    0, off_0CDC

off_0CD6:
    evt_exec                255, I_GOSUB, main_0A
    nop
    nop

off_0CDC:
    sce_em_set              0, ID_EM_0, ENEMY_BEN_BERTOLUCCI_1, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -22020, 0, -24446, 627, 0, 0
    if                      0, off_0D14
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_em_set              0, ID_EM_1, ENEMY_BIRKIN_1, 2, AI_DEFAULT, 0, SBK_28, 0, 255, -20156, -500, -26707, 2489, 0, 0
    else                    0, off_0D2C

off_0D14:
    sce_em_set              0, ID_EM_1, ENEMY_BIRKIN_1, 4, AI_40, 0, SBK_28, 0, 255, -20156, -500, -26707, 2489, 0, 0
    nop
    nop

off_0D2C:
    endif
    nop

off_0D2E:
    endif
    nop

off_0D30:
    endif
    nop

off_0D32:
    evt_end                 0

.proc main_08
    set                     FG_STOP, 7, 1
    evt_next
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_SCENARIO, 98, 1
    cut_chg                 1
    work_set                WK_PLAYER, 0
    pos_set                 0, 1325, -2500, -22023
    dir_set                 0, 0, 3193, 0
    plc_motion              0, 25, 0
    save                    V_08, 0
    for                     0, off_0D86, 7
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_08
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_08, V_TEMP
    nop
    next                    0

off_0D86:
    se_on                   2, 29, 0, 1325, 0, -22023
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  255, 3, 0, 0, 0
    pos_set                 0, 1325, 0, -22023
    plc_motion              0, 24, 0
    sleep                   10, 50
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_STATUS, 27, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_09
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_SCENARIO, 98, 1
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 116, 49, 0, 0, 117, 240
    gosub                   main_0B
    evt_end                 0

.proc main_0A
    set                     FG_STOP, 7, 1
    evt_next
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_SCENARIO, 98, 1
    cut_chg                 1
    work_set                WK_PLAYER, 0
    pos_set                 0, 1325, -2500, -22023
    dir_set                 0, 0, 3193, 0
    plc_motion              0, 25, 0
    save                    V_08, 0
    for                     0, off_0E2A, 7
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_08
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_08, V_TEMP
    nop
    next                    0

off_0E2A:
    se_on                   2, 29, 0, 1325, 0, -22023
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  255, 3, 0, 0, 0
    pos_set                 0, 1325, 0, -22023
    plc_motion              0, 24, 0
    sleep                   10, 50
    plc_motion              0, 23, 0
    sleep                   10, 40
    gosub                   main_0B
    evt_end                 0

.proc main_0B
    evt_next
    nop
    xa_on                   0, 26
    xa_vol                  70
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -6864, -1800, -20701, 96, 96
    sleep                   10, 10
    plc_dest                0, 9, 32, -6864, -20701
    gosub                   main_13
    plc_dest                0, 8, 32, 14084, -20728
    sleep                   10, 10
    plc_stop
    nop
    wsleep
    wsleeping
    xa_vol                  120
    cut_chg                 6
    sleep                   10, 1
    if                      0, off_0EB2
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    gosub                   main_0C
    else                    0, off_0EBC

off_0EB2:
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    gosub                   main_11
    nop
    nop

off_0EBC:
    set                     FG_SCENARIO, 66, 1
    aot_reset               ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    sce_fade_set            1, 2, 7, 0, 2
    for                     0, off_0EDA, 64
    evt_next
    nop
    next                    0

off_0EDA:
    cut_chg                 1
    if                      0, off_0EF0
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_bgmtbl_set          0, 25, 2, 65283, 0
    else                    0, off_0EFA

off_0EF0:
    sce_bgmtbl_set          0, 25, 2, 65283, 0
    nop
    nop

off_0EFA:
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_STATUS, 27, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0C
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -20110, -610, -25854
    dir_set                 0, 0, 2500, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                5, 3, 1, 0, 96, 96
    pos_set                 0, -21322, 0, -25508
    dir_set                 0, 0, 627, 0
    xa_on                   0, 27
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_dest                0, 8, 36, -22761, -23367
    sleep                   10, 5
    plc_neck                2, 0, -1024, 0, 96, 96
    sleep                   10, 7
    plc_neck                5, 3, 1, 0, 96, 96
    sleep                   10, 8
    plc_neck                2, 0, 1024, 0, 96, 96
    sleep                   10, 10
    plc_neck                5, 3, 1, 0, 96, 96
    sleep                   10, 5
    plc_dest                0, 4, 36, -22248, -24114
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 2
    plc_neck                2, 0, 0, 1024, 64, 64
    sleep                   10, 1
    plc_motion              1, 1, 8
    sleep                   10, 2
    plc_neck                5, 3, 1, 0, 128, 128
    plc_stop
    plc_motion              0, 19, 0
    nop
    sleep                   10, 5
    plc_neck                2, 0, -320, -100, 96, 96
    sleep                   10, 3
    plc_neck                2, 0, 320, -100, 96, 96
    sleep                   10, 6
    plc_neck                2, 0, -320, -100, 96, 96
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 1
    set                     FG_ROOM, 0, 1
    se_on                   2, 10, 0, -21222, -1800, -25608
    sleep                   10, 6
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -22313, 0, -24069
    plc_neck                2, 0, -320, -1024, 128, 128
    sleep                   10, 2
    plc_motion              0, 22, 8
    plc_neck                2, 0, 320, 1024, 128, 128
    se_on                   2, 13, 0, -22761, -1800, -23367
    evt_exec                255, I_GOSUB, main_0F
    sleep                   10, 2
    plc_neck                2, 0, 0, -1024, 128, 128
    plc_motion              0, 20, 8
    sleep                   10, 4
    plc_motion              0, 15, 8
    sleep                   10, 8
    se_on                   2, 11, 0, -21222, -1800, -25608
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 16, 12
    nop
    sleep                   10, 10
    wsleep
    wsleeping
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -22474, 500, -24245
    dir_set                 0, 0, 560, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -20431, -70, -25582
    dir_set                 0, 0, 2372, 0
    cut_chg                 7
    evt_next
    nop
    xa_on                   0, 28
    sleep                   10, 20
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 17, 0
    nop
    wsleep
    wsleeping
    cut_chg                 8
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -21495, 0, -24546
    dir_set                 0, 0, 944, 0
    plc_motion              0, 18, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -18175, 0, -24879
    dir_set                 0, 0, 2020, 0
    evt_next
    nop
    xa_on                   0, 30
    sleep                   10, 25
    se_on                   2, 31, 0, -21222, 0, -25608
    sleep                   10, 15
    se_on                   2, 13, 0, -21222, 0, -25608
    sleep                   10, 10
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 4
    sleep                   10, 70
    wsleep
    wsleeping
    cut_chg                 7
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -21357, -300, -24530
    dir_set                 0, 0, 1700, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 2
    sleep                   10, 1
    xa_on                   0, 29
    sleep                   10, 40
    member_set              M_SCE_FREE0, 32
    sleep                   10, 60
    member_set              M_SCE_FREE0, 64
    sleep                   10, 40
    member_set              M_SCE_FREE0, 32
    sleep                   10, 30
    member_set              M_SCE_FREE0, 128
    sleep                   10, 20
    member_set              M_SCE_FREE0, 256
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_0D
    wsleep
    wsleeping
    evt_end                 0

.proc main_0D
    work_set                WK_ENEMY, ID_EM_1
    nop
    for                     0, off_118E, 130
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 15
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_118E:
    evt_end                 0

.proc main_0E
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -20110, -610, -25854
    dir_set                 0, 0, 2500, 0
    while                   4, off_11CC
    ck                      FG_ROOM, 0, 0
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 16
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 12
    member_set2             M_Z_POS, V_TEMP
    nop
    evt_next
    nop
    ewhile                  0

off_11CC:
    set                     FG_ROOM, 0, 0
    evt_end                 0

.proc main_0F
    work_set                WK_ENEMY, ID_EM_0
    nop
    for                     0, off_11FC, 5
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 20
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 20
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_11FC:
    evt_end                 0

.proc main_10
    work_set                WK_ENEMY, ID_EM_0
    nop
    for                     0, off_121A, 5
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_121A:
    evt_end                 0

.proc main_11
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -20480, -400, -26547
    dir_set                 0, 0, 3000, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                5, 3, 1, 0, 96, 96
    pos_set                 0, -21222, 0, -25608
    dir_set                 0, 0, 627, 0
    xa_on                   0, 27
    evt_next
    work_set                WK_ENEMY, ID_EM_0
    plc_dest                0, 8, 36, -22761, -23367
    sleep                   10, 5
    plc_neck                2, 0, -1024, 0, 96, 96
    sleep                   10, 7
    plc_neck                5, 3, 1, 0, 96, 96
    sleep                   10, 8
    plc_neck                2, 0, 1024, 0, 96, 96
    sleep                   10, 10
    plc_neck                5, 3, 1, 0, 96, 96
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    sleep                   10, 5
    plc_dest                0, 4, 36, -22248, -24114
    sleep                   10, 3
    plc_neck                2, 0, 0, 1024, 64, 64
    plc_motion              1, 1, 0
    sleep                   10, 2
    plc_neck                5, 3, 1, 0, 128, 128
    plc_stop
    plc_motion              0, 19, 0
    work_set                WK_ENEMY, ID_EM_1
    member_set              M_SCE_FREE0, 2
    sleep                   10, 5
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                2, 0, -320, -100, 96, 96
    sleep                   10, 3
    plc_neck                2, 0, 320, -100, 96, 96
    sleep                   10, 6
    plc_neck                2, 0, -320, -100, 96, 96
    sleep                   10, 10
    se_on                   2, 12, 0, -21222, -1800, -25608
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -22313, 0, -24069
    plc_neck                2, 0, -320, -1024, 128, 128
    sleep                   10, 2
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 256
    member_set2             M_TYPE, V_TEMP
    nop
    sce_espr_on             0, 256, 3, 12288, 500, -1800, 0, 0
    plc_motion              0, 22, 8
    plc_neck                2, 0, 320, 1024, 128, 128
    se_on                   2, 13, 0, -22761, -1800, -23367
    evt_exec                255, I_GOSUB, main_0F
    sleep                   10, 2
    sce_espr_on             0, 0, 3, 12288, 500, -1800, 0, 0
    plc_neck                2, 0, 0, -1024, 128, 128
    sleep                   10, 3
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 20, 0
    nop
    evt_exec                255, I_GOSUB, main_10
    sce_espr_on             0, 512, 3, 12288, 500, -1800, 0, 0
    sleep                   10, 20
    wsleep
    wsleeping
    cut_chg                 8
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -21495, 0, -24546
    dir_set                 0, 0, 944, 0
    plc_motion              0, 18, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -18175, 0, -24879
    dir_set                 0, 0, 2020, 0
    evt_next
    nop
    xa_on                   0, 30
    sleep                   10, 25
    se_on                   2, 31, 0, -21222, 0, -25608
    sleep                   10, 5
    sce_espr_on             0, 256, 3, 12288, 500, -500, 0, 0
    sleep                   10, 10
    sce_espr_on             0, 0, 3, 12288, 500, -100, 0, 0
    sleep                   10, 5
    se_on                   2, 13, 0, -21222, 0, -25608
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_12
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 4
    sleep                   10, 70
    wsleep
    wsleeping
    member_set              M_SCE_FREE0, 16
    cut_chg                 7
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -21316, -200, -24476
    dir_set                 0, 0, 1280, 0
    evt_next
    work_set                WK_ENEMY, ID_EM_1
    member_set              M_SCE_FREE0, 8
    sleep                   10, 1
    xa_on                   0, 29
    sleep                   10, 40
    member_set              M_SCE_FREE0, 32
    sleep                   10, 60
    member_set              M_SCE_FREE0, 64
    sleep                   10, 40
    member_set              M_SCE_FREE0, 32
    sleep                   10, 30
    member_set              M_SCE_FREE0, 128
    sleep                   10, 20
    member_set              M_SCE_FREE0, 256
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_0D
    wsleep
    wsleeping
    evt_end                 0

.proc main_12
    work_set                WK_ENEMY, ID_EM_0
    nop
    save                    V_09, 300
    for                     0, off_14D8, 70
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 5
    copy                    V_09, V_TEMP
    nop
    work_copy               9, 12, 1
    work_copy               9, 6, 1
    kage_set                3, 0, 16, 191, 191, 0, 0, 0, 500
    evt_next
    nop
    next                    0

off_14D8:
    evt_end                 0

.proc main_13
    do                      0, off_14E6
    evt_next
    nop
    edwhile                 off_14E6
    ck                      FG_ROOM, 32, 0

off_14E6:
    evt_end                 0

.proc main_14
    do                      0, off_14F4
    evt_next
    nop
    edwhile                 off_14F4
    ck                      FG_ROOM, 36, 0

off_14F4:
    evt_end                 0
    db                      0x3A, 0x51
