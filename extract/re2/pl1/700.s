.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5829, -9353, 1800, 2600, -5875, 0, -7964, 2048, 6, 1, 0, 0, 46, 1, 0, 154, ITEM_PLATFORMKEY, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -329, -12253, 2200, 1800, -13568, 0, -20536, 1296, 6, 3, 0, 0, 42, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_14C4
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_14C2
    ck                      FG_GENERAL_1, 138, 0
    set                     FG_GENERAL_1, 138, 1
    sce_em_set              0, 255, ENEMY_SHERRY_JACKET, 0, 4, 0, 0, 0, 255, -1000, 0, -5975, 776, 0, 0
    evt_exec                255, I_GOSUB, main_08
    endif
    nop

off_14C2:
    endif
    nop

off_14C4:
    gosub                   main_02
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    if                      0, off_14E8
    ck                      FG_GAME, F_SCENARIO, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, 11652, -3348, 5800, 3000, 255, 0, I_GOSUB, main_07, 0, 0
    endif
    nop

off_14E8:
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 18760, -7398, 1800, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 3971, 27447, 4000, 1800, 0, 0, 0, 0, 255, 255
    aot_set                 5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4021, -5820, 3600, 1800, 0, 0, 0, 0, 255, 255
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, 20916, 3600, -10152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 0, 20916, 3600, -18540, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, 20916, -950, -10352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 0, 20916, 1100, -10352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 0, 20916, -950, -18340, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 0, 20916, 1100, -18340, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1628
    ck                      FG_GENERAL_1, 136, 1
    sce_espr3d_on           0, 2070, 0, 4096, 19512, -1494, -6318, 0, 1024, 0, 0
    endif
    nop

off_1628:
    if                      0, off_164A
    ck                      FG_GENERAL_1, 140, 0
    sce_espr3d_on           0, 1046, 0, 2560, 19872, -2440, -6380, 0, 1024, 0, 0
    else                    0, off_1672

off_164A:
    sce_espr3d_on           0, 5142, 0, 2560, 19872, -2440, -6630, 0, 1024, 0, 0
    work_set                WK_OBJECT, 0
    nop
    member_set              15, 0, 252
    work_set                WK_OBJECT, 1
    nop
    member_set              15, 0, 12
    nop
    nop

off_1672:
    if                      0, off_16EE
    ck                      FG_GAME, F_SCENARIO, 1
    ck                      FG_GENERAL_1, 136, 1
    sce_em_set              0, 0, ENEMY_ZOMBIE_NAKED, 6, 0, 0, 46, 0, 166, 5556, 0, -6591, 1931, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_NAKED, 6, 0, 0, 46, 0, 167, 13330, 0, 506, 1035, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_NAKED, 6, 0, 0, 46, 0, 168, 15219, 0, -1320, 1083, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_NAKED, 6, 0, 0, 46, 0, 169, 14263, 0, -5096, 843, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIE_NAKED, 6, 0, 0, 46, 0, 170, 18839, 0, -9470, 2011, 0, 0
    endif
    nop

off_16EE:
    evt_end                 0

.proc main_03
    if                      0, off_1702
    ck                      FG_GENERAL_1, 136, 0
    message_on              0, 1, 0, 255, 255
    else                    0, off_1722

off_1702:
    if                      0, off_1720
    ck                      FG_GENERAL_1, 140, 0
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    if                      0, off_171E
    ck                      FG_INPUT, F_QUESTION, 0
    gosub                   main_04
    endif
    nop

off_171E:
    endif
    nop

off_1720:
    nop
    nop

off_1722:
    evt_end                 0

.proc main_04
    set                     FG_STATE, 7, 1
    set                     FG_GENERAL_1, 140, 1
    se_on                   2, 10, 1, 0, 0, 0
    cut_chg                 9
    work_set                WK_ENEMY, 0
    nop
    gosub                   main_05
    work_set                WK_ENEMY, 1
    nop
    gosub                   main_05
    work_set                WK_ENEMY, 2
    nop
    gosub                   main_05
    work_set                WK_ENEMY, 3
    nop
    gosub                   main_05
    work_set                WK_ENEMY, 4
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
    for                     0, off_17FC, 16
    work_set                WK_OBJECT, 0
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_SUB, V_TEMP, 4
    member_set2             15, V_TEMP
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_ADD, V_TEMP, 4
    member_set2             15, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_17FC:
    for                     0, off_182A, 122
    work_set                WK_OBJECT, 0
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_SUB, V_TEMP, 8
    member_set2             15, V_TEMP
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_ADD, V_TEMP, 8
    member_set2             15, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_182A:
    for                     0, off_1858, 8
    work_set                WK_OBJECT, 0
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_ADD, V_TEMP, 2
    member_set2             15, V_TEMP
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_SUB, V_TEMP, 2
    member_set2             15, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1858:
    sleep                   10, 30
    sce_espr_kill           22, 4, 0, 0
    nop
    sce_espr3d_on           0, 5142, 0, 2560, 19872, -2440, -6630, 0, 1024, 0, 0
    work_set                WK_ENEMY, 0
    nop
    gosub                   main_06
    work_set                WK_ENEMY, 1
    nop
    gosub                   main_06
    work_set                WK_ENEMY, 2
    nop
    gosub                   main_06
    work_set                WK_ENEMY, 3
    nop
    gosub                   main_06
    work_set                WK_ENEMY, 4
    nop
    gosub                   main_06
    cut_chg                 6
    cut_auto                1
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_05
    if                      0, off_18D6
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    endif
    nop

off_18D6:
    evt_end                 0

.proc main_06
    if                      0, off_190E
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             7, V_TEMP
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             0, V_TEMP
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             1, V_TEMP
    nop
    endif
    nop

off_190E:
    evt_end                 0

.proc main_07
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_GAME, 4, 0
    set                     FG_STATE, 7, 1
    sce_bgm_control         0, 2, 0, 91, 65
    sce_bgm_control         1, 2, 0, 91, 65
    sce_bgm_control         2, 2, 0, 91, 65
    evt_next
    nop
    sce_fade_set            1, 2, 7, 17, 1
    sce_fade_adjust         1, 255, 127
    movie_on                12
    evt_next
    set                     FG_0, 10, 1

off_1947:
    nop
    sce_fade_adjust         1, 255, 127
    evt_next
    nop
    goto                    255, 255, 0, off_1947
    evt_end                 0

.proc main_08
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -1462, 0, -6125
    member_set              15, 99, 2
    evt_next
    cut_chg                 4
    plc_motion              0, 0, 0
    nop
    plc_neck                2, 0, 0, -256, 5, 5
    sleep                   10, 24
    plc_motion              0, 1, 16
    sleep                   10, 26
    plc_neck                2, 0, 512, -256, 10, 10
    sleep                   10, 40
    plc_neck                2, 0, -512, -256, 8, 8
    sleep                   10, 40
    cut_chg                 3
    sleep                   10, 20
    plc_neck                2, 0, -512, 0, 10, 10
    sleep                   10, 40
    plc_neck                2, 0, 512, 0, 16, 16
    sleep                   10, 40
    cut_chg                 4
    plc_dest                0, 5, 32, 708, -10035
    gosub                   main_09
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    set                     FG_GAME, 3, 0
    aot_on                  1
    evt_end                 0

.proc main_09
    do                      0, off_19F2
    evt_next
    nop
    edwhile                 off_19F2
    ck                      FG_GENERAL_2, 32, 0

off_19F2:
    evt_end                 0

.proc main_0A
    do                      0, off_1A00
    evt_next
    nop
    edwhile                 off_1A00
    ck                      FG_GENERAL_2, 33, 0

off_1A00:
    evt_end                 0
