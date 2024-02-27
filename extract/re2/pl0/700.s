.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5829, -9353, 1800, 2600, -5875, 0, -7964, 2048, 6, 1, 0, 0, 46, 1, 0, 154, ITEM_PLATFORMKEY, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -329, -12253, 2200, 1800, -13568, 0, -20536, 1296, 6, 3, 0, 0, 42, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_14C6
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_14C4
    ck                      FG_COMMON, 138, 0
    set                     FG_COMMON, 138, 1
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_JACKET, 0, AI_40, 0, SBK_0, 0, 255, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_08
    evt_exec                255, I_GOSUB, main_09
    endif
    nop

off_14C4:
    endif
    nop

off_14C6:
    gosub                   main_02
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    if                      0, off_14EA
    ck                      FG_STATUS, F_SCENARIO, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, 11652, -3348, 5800, 3000, 255, 0, I_GOSUB, main_07, 0, 0
    endif
    nop

off_14EA:
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 18760, -7398, 1800, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 3971, 27447, 4000, 1800, ID_MSG_0, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4021, -5820, 3600, 1800, ID_MSG_0, 0, 0, 0, 255, 255
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, 20916, 3600, -10152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 0, 20916, 3600, -18540, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 0, 20916, -950, -10352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 0, 20916, 1100, -10352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 0, 20916, -950, -18340, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 0, 20916, 1100, -18340, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_162A
    ck                      FG_COMMON, 136, 1
    sce_espr3d_on           0, 2070, 0, 4096, 19512, -1494, -6318, 0, 1024, 0, 0
    endif
    nop

off_162A:
    if                      0, off_164C
    ck                      FG_COMMON, 140, 0
    sce_espr3d_on           0, 1046, 0, 2560, 19872, -2440, -6380, 0, 1024, 0, 0
    else                    0, off_1674

off_164C:
    sce_espr3d_on           0, 5142, 0, 2560, 19872, -2440, -6630, 0, 1024, 0, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_DIR, -1024
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_DIR, 3072
    nop
    nop

off_1674:
    if                      0, off_16F0
    ck                      FG_STATUS, F_SCENARIO, 1
    ck                      FG_COMMON, 136, 1
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_NAKED, 6, AI_DEFAULT, 0, SBK_46, 0, 166, 5556, 0, -6591, 1931, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_NAKED, 6, AI_DEFAULT, 0, SBK_46, 0, 167, 13330, 0, 506, 1035, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_NAKED, 6, AI_DEFAULT, 0, SBK_46, 0, 168, 15219, 0, -1320, 1083, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_NAKED, 6, AI_DEFAULT, 0, SBK_46, 0, 169, 14263, 0, -5096, 843, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_NAKED, 6, AI_DEFAULT, 0, SBK_46, 0, 170, 18839, 0, -9470, 2011, 0, 0
    endif
    nop

off_16F0:
    evt_end                 0

.proc main_03
    if                      0, off_1704
    ck                      FG_COMMON, 136, 0
    message_on              0, ID_MSG_1, 0, 255, 255
    else                    0, off_1724

off_1704:
    if                      0, off_1722
    ck                      FG_COMMON, 140, 0
    message_on              0, ID_MSG_2, 0, 255, 255
    evt_next
    nop
    if                      0, off_1720
    ck                      FG_MESSAGE, F_QUESTION, 0
    gosub                   main_04
    endif
    nop

off_1720:
    endif
    nop

off_1722:
    nop
    nop

off_1724:
    evt_end                 0

.proc main_04
    set                     FG_STOP, 7, 1
    set                     FG_COMMON, 140, 1
    se_on                   2, 10, 1, 0, 0, 0
    cut_chg                 9
    work_set                WK_ENEMY, ID_EM_0
    nop
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
    sleep                   10, 30
    nop_8b                  200, 5, 0, 0, 0
    nop_8b                  100, 33, 0, 5, 0
    nop_8c                  0, 100, 70, 20, 0, 38, 0
    nop_8c                  0, 70, 100, 20, 0, 58, 0
    nop_8c                  0, 100, 70, 20, 0, 78, 0
    nop_8c                  0, 70, 100, 20, 0, 98, 0
    nop_8c                  0, 100, 70, 20, 0, 118, 0
    nop_8a                  0, 2, 0, 25, 0
    nop_8a                  0, 2, 0, 65, 0
    nop_8a                  0, 2, 0, 70, 0
    nop_8a                  0, 3, 0, 93, 0
    nop_8a                  0, 2, 0, 120, 0
    nop_8a                  0, 4, 0, 130, 0
    nop_8b                  200, 10, 0, 130, 0
    nop_8c                  0, 200, 100, 10, 0, 140, 0
    se_on                   2, 267, 0, 20916, 3600, -14152
    for                     0, off_17FE, 16
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 4
    member_set2             M_Y_DIR, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 4
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_17FE:
    for                     0, off_182C, 122
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 8
    member_set2             M_Y_DIR, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 8
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_182C:
    for                     0, off_185A, 8
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 2
    member_set2             M_Y_DIR, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 2
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_185A:
    sleep                   10, 30
    sce_espr_kill           22, 4, 0, 0
    nop
    sce_espr3d_on           0, 5142, 0, 2560, 19872, -2440, -6630, 0, 1024, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
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
    cut_chg                 6
    cut_auto                1
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_05
    if                      0, off_18D8
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
    endif
    nop

off_18D8:
    evt_end                 0

.proc main_06
    if                      0, off_1910
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
    endif
    nop

off_1910:
    evt_end                 0

.proc main_07
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STATUS, 4, 0
    set                     FG_STOP, 7, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 91, 65
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 91, 65
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 91, 65
    evt_next
    nop
    sce_fade_set            1, 2, 7, 17, 1
    sce_fade_adjust         1, 255, 127
    movie_on                12
    evt_next
    set                     FG_SYSTEM, 10, 1

off_1949:
    nop
    sce_fade_adjust         1, 255, 127
    evt_next
    nop
    goto                    255, 255, 0, off_1949
    evt_end                 0

.proc main_08
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -1462, 0, -6125
    member_set              M_Y_DIR, 611
    evt_next
    cut_chg                 4
    plc_motion              10, 15, 68
    nop
    sleep                   10, 26
    plc_stop
    set                     FG_STOP, 1, 1
    set                     FG_STOP, 2, 1
    nop
    plc_neck                2, 0, 0, -256, 5, 5
    sleep                   10, 50
    plc_neck                2, 0, 512, -256, 10, 10
    sleep                   10, 40
    plc_neck                2, 0, -512, -256, 8, 8
    sleep                   10, 40
    cut_chg                 3
    sleep                   10, 18
    plc_neck                4, 4, 0, 0, 10, 10
    sleep                   10, 90
    plc_stop
    set                     FG_STOP, 1, 0
    set                     FG_STOP, 2, 0
    cut_chg                 4
    nop
    sleep                   10, 30
    aot_on                  ID_AOT_1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_09
    evt_next
    work_set                WK_SPLAYER, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    plc_motion              0, 0, 68

off_19FC:
    super_on                0, 64, 0, 97, 1, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0
    evt_next
    nop
    goto                    255, 255, 0, off_19FC
    evt_end                 0
    db                      0x10, 0x00
