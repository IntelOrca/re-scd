.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 728, -15037, 2500, 1100, 24730, 0, -15507, 5344, 1, 27, 15, 0, 16, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17672, -6137, 2100, 1200, -10883, 0, -6299, 1008, 2, 0, 0, 0, 23, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_0A82
    ck                      FG_STATUS, F_SCENARIO, 0
    ck                      FG_SCENARIO, 9, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -4048, -18868, 1710, 6000, 255, 0, I_GOSUB, main_06, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_CHIEF_IRONS_1, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -11963, 0, -16685, 2392, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    sce_em_set              0, ID_EM_1, ENEMY_BIRKIN_1, 2, AI_DEFAULT, 0, SBK_0, 0, 255, -13071, 0, -15890, 480, 0, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    endif
    nop

off_0A82:
    if                      0, off_0ABE
    ck                      FG_STATUS, 3, 1
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 0, SBK_32, 0, 255, 2805, 0, -15094, -2688, 0, 0
    if                      0, off_0ABC
    cmp                     0, V_LAST_RDT, CMP_EQ, 768
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -17091, 0, -4734
    member_set              M_Y_DIR, -824
    endif
    nop

off_0ABC:
    endif
    nop

off_0ABE:
    gosub                   main_02
    gosub                   main_03
    evt_end                 0

.proc aot
    if                      0, off_0AD0
    ck                      FG_STATUS, 11, 1
    gosub                   main_03
    endif
    nop

off_0AD0:
    evt_end                 0

.proc main_02
    sce_espr_on             0, 5, 0, 2048, -14886, -2664, -4995, 0
    sce_espr_on             0, 5, 0, 2816, -14886, -2754, -4950, 0
    sce_espr_on             0, 5, 0, 3584, -14886, -2844, -4905, 0
    sce_espr_on             0, 5, 0, 2048, -17514, -2664, -4995, 0
    sce_espr_on             0, 5, 0, 2816, -17514, -2754, -4950, 0
    sce_espr_on             0, 5, 0, 3584, -17514, -2844, -4905, 0
    evt_end                 0

.proc main_03
    if                      0, off_0B46
    cmp                     0, V_CUT, CMP_EQ, 5
    evt_exec                9, I_GOSUB, main_04
    else                    0, off_0B4A

off_0B46:
    evt_kill                9
    nop
    nop

off_0B4A:
    gosub                   main_05
    evt_end                 0

.proc main_04

off_0B4E:
    light_kido_set          1, 4000
    sleep                   10, 3
    light_kido_set          1, 2500
    sleep                   10, 2
    light_kido_set          1, 3500
    sleep                   10, 1
    goto                    255, 255, 0, off_0B4E
    evt_end                 0

.proc main_05
    switch                  26, off_0BF2
    case                    0, off_0B80, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 64
    break                   0

off_0B80:
    case                    0, off_0B8E, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 64
    break                   0

off_0B8E:
    case                    0, off_0B9C, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 64
    break                   0

off_0B9C:
    case                    0, off_0BAA, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 64
    break                   0

off_0BAA:
    case                    0, off_0BB8, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_0BB8:
    case                    0, off_0BC6, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 55
    break                   0

off_0BC6:
    case                    0, off_0BD4, 6
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 64
    break                   0

off_0BD4:
    case                    0, off_0BE2, 7
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 64
    break                   0

off_0BE2:
    case                    0, off_0BF0, 8
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 64
    break                   0

off_0BF0:
    eswitch                 0

off_0BF2:
    evt_end                 0

.proc main_06
    set                     FG_SCENARIO, 9, 1
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_next
    nop
    xa_on                   0, 44
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 33, 1779, 64
    gosub                   main_09
    plc_motion              1, 1, 8
    sleep                   10, 10
    plc_stop
    nop
    wsleep
    wsleeping
    sleep                   10, 30
    cut_chg                 6
    gosub                   main_05
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    pos_set                 0, -11963, 0, -16685
    member_set              M_Y_DIR, 2392
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    pos_set                 0, -13311, -270, -15710
    member_set              M_Y_DIR, 416
    evt_next
    nop
    xa_on                   0, 41
    evt_exec                255, I_GOSUB, main_07
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 90, 64
    sce_bgmtbl_set          0, 8, 3, 65284, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_dest                0, 8, 32, -11528, -16935
    gosub                   main_08
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    se_on                   2, 266, 259, 0, 0, 0
    sleep                   10, 8
    plc_motion              0, 5, 8
    sleep                   10, 10
    se_on                   2, 267, 259, 0, 0, 0
    plc_motion              0, 0, 0
    sleep                   10, 15
    wsleep
    wsleeping
    cut_chg                 7
    evt_next
    nop
    xa_on                   0, 42
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 1, 4
    nop
    sleep                   10, 30
    plc_motion              0, 2, 0
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 8
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -13012, 0, -16661
    member_set              M_Y_DIR, 2439
    evt_next
    nop
    xa_on                   0, 43
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 3, 0
    nop
    sleep                   10, 20
    se_on                   2, 269, 3, 0, 0, 0
    sleep                   10, 25
    se_on                   2, 269, 3, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 60
    cut_chg                 6
    evt_next
    work_set                WK_ENEMY, ID_EM_1
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    pos_set                 0, -13084, -200, -17366
    member_set              M_Y_DIR, 2880
    sleep                   10, 20
    xa_on                   0, 45
    member_set              M_SCE_FREE0, 2
    sleep                   10, 90
    member_set              M_SCE_FREE0, 32
    sleep                   10, 20
    member_set              M_SCE_FREE0, 64
    sleep                   10, 20
    member_set              M_SCE_FREE0, 128
    sleep                   10, 40
    member_set              M_SCE_FREE0, 256
    sleep                   10, 60
    member_set              M_SCE_FREE0, 4
    sleep                   10, 15
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    wsleep
    wsleeping
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    plc_ret
    cut_chg                 1
    cut_auto                1
    gosub                   main_05
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_07
    work_set                WK_ENEMY, ID_EM_1
    nop
    speed_set               0, 8
    speed_set               2, -6
    for                     0, off_0DFE, 40
    add_speed
    evt_next
    next                    0

off_0DFE:
    evt_end                 0

.proc main_08
    do                      0, off_0E0C
    evt_next
    nop
    edwhile                 off_0E0C
    ck                      FG_ROOM, 32, 0

off_0E0C:
    evt_end                 0

.proc main_09
    do                      0, off_0E1A
    evt_next
    nop
    edwhile                 off_0E1A
    ck                      FG_ROOM, 33, 0

off_0E1A:
    evt_end                 0
