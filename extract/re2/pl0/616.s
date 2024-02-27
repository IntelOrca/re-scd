.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24995, -16988, 1800, 2680, -25383, -18000, -3759, 232, 5, 14, 1, 10, 29, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14941, 4069, 2650, 1800, -14748, 0, -25474, 3336, 5, 18, 5, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 10159, -11431, 4230, 1800, -13422, 0, -26437, 3072, 5, 23, 0, 0, 38, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_1D70
    ck                      FG_COMMON, 164, 1
    set                     FG_STATUS, 12, 1
    endif
    nop

off_1D70:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, -8000, 0, -10750, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -16922, -25400, -25506, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -14496, -25400, -6910, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1DF4
    ck                      FG_ITEM_2, 14, 1
    ck                      FG_STATUS, F_SCENARIO, 0
    gosub                   main_03
    else                    0, off_1DF8

off_1DF4:
    gosub                   main_02
    nop
    nop

off_1DF8:
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8800, -20900, 1800, 1800, ITEM_HERBG, 1, 74, ID_OBJ_3, IF_FLOOR
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -7900, 0, -20000, 0, 640, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8800, -22900, 1800, 1800, ITEM_HERBG, 1, 75, ID_OBJ_4, IF_FLOOR
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -7900, 0, -22000, 0, 1284, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8800, -25900, 1800, 1800, ITEM_HERBG, 1, 81, ID_OBJ_5, IF_FLOOR
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 16, -7900, 0, -25000, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1F1A
    ck                      FG_COMMON, 149, 0
    if                      0, off_1EFC
    ck                      FG_STATUS, F_SCENARIO, 0
    aot_set                 ID_AOT_3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -10070, -11911, 2120, 1800, 10, 0, ITEM_MODISK, 0, aot, 0
    aot_set                 ID_AOT_9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10070, -11911, 2120, 1800, ID_MSG_2, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8740, -14651, 1800, 3500, ID_MSG_1, 0, 0, 0, 255, 255
    else                    0, off_1F12

off_1EFC:
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8740, -14651, 1800, 3500, ID_MSG_0, 0, 0, 0, 255, 255
    nop
    nop

off_1F12:
    sca_id_set              12, 128, 252
    else                    0, off_1F28

off_1F1A:
    sca_id_set              12, 0, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -32000
    nop
    nop

off_1F28:
    sce_espr3d_on           0, 21, 0, 8192, -9234, -2052, -10980, 0, 0, 0, 0
    if                      0, off_1F5A
    ck                      FG_STATUS, F_SCENARIO, 0
    ck                      FG_STATUS, F_PLAYER, 1
    ck                      FG_ITEM_2, 44, 0
    aot_reset               ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_4, 0, 0, 0, 255, 255
    endif
    nop

off_1F5A:
    set                     FG_PBF02, 2, 0
    set                     FG_PBF02, 3, 0
    evt_end                 0

.proc aot
    if                      0, off_1F74
    cmp                     0, V_USED_ITEM, CMP_EQ, 96
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_1F74:
    evt_end                 0

.proc main_02
    if                      0, off_1FC0
    ck                      FG_COMMON, 110, 0
    if                      0, off_1FBC
    cmp                     0, V_LAST_RDT, CMP_EQ, 1550
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_GREY, 3, AI_01 | AI_04, 0, SBK_51, 0, 27, 32000, -5400, 32000, 0, 0, 0
    aot_set                 ID_AOT_7, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -23000, -27866, 1500, 4600, 255, 0, I_GOSUB, main_07, 0, 0
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -5400
    endif
    nop

off_1FBC:
    else                    0, off_2078

off_1FC0:
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_GREY, 0, AI_DEFAULT, 0, SBK_51, 0, 27, -17128, 0, -25603, 2048, 0, 0
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -16922, 350, -25506
    dir_set                 0, 0, 1856, 0
    if                      0, off_1FFE
    ck                      FG_ENEMY_2, 27, 0
    ck                      FG_ENEMY_2, 163, 0
    ck                      FG_ENEMY_2, 172, 0
    else                    0, off_2076

off_1FFE:
    if                      0, off_2048
    ck                      FG_COMMON, 111, 0
    if                      0, off_2044
    cmp                     0, V_LAST_RDT, CMP_EQ, 1554
    sce_em_set              0, ID_EM_1, ENEMY_LICKER_GREY, 3, AI_01 | AI_04, 0, SBK_51, 0, 28, 32000, -5400, 32000, 3072, 0, 0
    aot_set                 ID_AOT_8, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -19110, -3866, 9000, 1800, 255, 0, I_GOSUB, main_09, 0, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Y_POS, -5400
    endif
    nop

off_2044:
    else                    0, off_2074

off_2048:
    sce_em_set              0, ID_EM_1, ENEMY_LICKER_GREY, 0, AI_DEFAULT, 0, SBK_51, 0, 28, -13662, 0, -7417, 3072, 0, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -14496, 350, -6910
    dir_set                 0, 0, 1152, 0
    nop
    nop

off_2074:
    nop
    nop

off_2076:
    nop
    nop

off_2078:
    sce_em_set              0, ID_EM_2, ENEMY_LICKER_GREY, 0, AI_DEFAULT, 0, SBK_51, 0, 163, -10138, 0, -16466, 2195, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_LICKER_GREY, 0, AI_DEFAULT, 0, SBK_51, 0, 172, -9511, 0, -22824, 1879, 0, 0
    if                      0, off_20B4
    ck                      FG_COMMON, 110, 0
    flr_set                 5, 0
    nop
    else                    0, off_20BA

off_20B4:
    flr_set                 5, 1
    nop
    nop
    nop

off_20BA:
    evt_end                 0

.proc main_03
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_NAKED, 6, AI_DEFAULT, 0, SBK_46, 0, 173, -26240, 0, -26122, 3459, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_NAKED, 6, AI_DEFAULT, 0, SBK_46, 0, 174, -18330, 0, -25135, 1825, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 175, -12262, 0, -16213, 680, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 176, -8490, 0, -18400, 904, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 177, -9651, 0, -22540, 1896, 0, 0
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -16922, 350, -25506
    dir_set                 0, 0, 1856, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -14496, 350, -6910
    dir_set                 0, 0, 1152, 0
    evt_end                 0

.proc main_04
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_MAP_C, 7, 1
    sce_item_lost           ITEM_MODISK
    se_on                   2, 267, 1, 0, 0, 0
    set                     FG_COMMON, 149, 1
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_3, 0, 255, 255
    sleep                   10, 1
    sce_espr_kill           21, 0, 0, 0
    cut_chg                 7
    work_set                WK_ENEMY, ID_EM_0
    gosub                   main_05
    work_set                WK_ENEMY, ID_EM_1
    nop
    gosub                   main_05
    work_set                WK_ENEMY, ID_EM_2
    nop
    gosub                   main_05
    work_set                WK_ENEMY, ID_EM_3
    nop
    gosub                   main_05
    work_set                WK_ENEMY, ID_EM_4
    nop
    gosub                   main_05
    se_on                   2, 12, 4, 0, 0, 0
    nop_8b                  70, 108, 0, 0, 0
    nop_8a                  0, 4, 0, 100, 0
    nop_8b                  120, 8, 0, 100, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               1, -50
    for                     0, off_21EE, 108
    add_speed
    evt_next
    next                    0

off_21EE:
    member_set              M_Y_POS, -32000
    sca_id_set              12, 0, 0
    cut_old
    work_set                WK_ENEMY, ID_EM_0
    gosub                   main_06
    work_set                WK_ENEMY, ID_EM_1
    nop
    gosub                   main_06
    work_set                WK_ENEMY, ID_EM_2
    nop
    gosub                   main_06
    work_set                WK_ENEMY, ID_EM_3
    nop
    gosub                   main_06
    work_set                WK_ENEMY, ID_EM_4
    nop
    gosub                   main_06
    sce_espr3d_on           0, 21, 0, 8192, -9234, -2052, -10980, 0, 0, 0, 0
    set                     FG_STOP, 3, 0
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_05
    if                      0, off_2272
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_set              M_Y_POS, -30000
    endif
    nop

off_2272:
    evt_end                 0

.proc main_06
    if                      0, off_22AE
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_set              M_Y_POS, 0
    endif
    nop

off_22AE:
    evt_end                 0

.proc main_07
    set                     FG_COMMON, 110, 1
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 1
    pos_set                 0, -17128, -5400, -25603
    evt_exec                255, I_GOSUB, main_08
    evt_end                 0

.proc main_08
    se_on                   2, 266, 260, 0, 0, 0
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    speed_set               1, 500
    speed_set               7, 40
    speed_set               5, 64
    member_set              M_Y_DIR, 1856
    while                   6, off_2316
    member_cmp              0, 12, 3, 6, 255
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_2316:
    member_set              M_Y_POS, -250
    nop_8b                  150, 5, 0, 0, 0
    speed_set               1, 150
    speed_set               7, 0
    speed_set               5, -256
    for                     0, off_2336, 3
    add_speed
    evt_next
    next                    0

off_2336:
    speed_set               5, 128
    add_speed
    evt_next
    member_set              M_Z_DIR, 0
    flr_set                 5, 1
    nop
    evt_end                 0

.proc main_09
    set                     FG_COMMON, 111, 1
    aot_reset               ID_AOT_8, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 1
    pos_set                 0, -14362, -5400, -7417
    evt_exec                255, I_GOSUB, main_0A
    evt_end                 0

.proc main_0A
    se_on                   2, 266, 516, 0, 0, 0
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    speed_set               1, 500
    speed_set               7, 40
    speed_set               5, 64
    member_set              M_Y_DIR, 1152
    while                   6, off_23AC
    member_cmp              0, 12, 3, 6, 255
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_23AC:
    member_set              M_Y_POS, -250
    nop_8b                  150, 5, 0, 0, 0
    speed_set               1, 150
    speed_set               7, 0
    speed_set               5, -256
    for                     0, off_23CC, 3
    add_speed
    evt_next
    next                    0

off_23CC:
    speed_set               5, 128
    add_speed
    evt_next
    member_set              M_Z_DIR, 0
    evt_end                 0
