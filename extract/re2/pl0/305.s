.version 2

.init
.proc init
    door_aot_se             ID_AOT_4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -8502, -9694, 2650, 1490, -16547, -5400, -26203, -1120, 2, 6, 0, 3, 7, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 3, 0, 2698, -26294, 2650, 2390, -17186, 0, 7676, 8607, 2, 7, 5, 0, 40, 5, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_6, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -28462, -26694, 2120, 2300, -1917, 0, -5364, 6209, 2, 11, 5, 0, 8, 1, 0, 0, UNLOCKED, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 3, 0, 10, 16, 3635, -5400, -25299, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0xC2, 0x90

.main
.proc main
    if                      0, off_179C
    ck                      FG_COMMON, 254, 1
    set                     FG_SCENARIO, 130, 0
    set                     FG_ITEM, 119, 1
    endif
    nop

off_179C:
    if                      0, off_17D4
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 3, SBK_12, 0, 103, -10354, -5400, -17822, -3791, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 3, SBK_12, 0, 104, -21136, -5400, -18005, -10479, 0, 0
    else                    0, off_182E

off_17D4:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 1, AI_DEFAULT, 3, SBK_5, 1, 103, -17562, -5400, -17346, 17, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 3, SBK_5, 1, 104, -14403, -5400, -18587, 4007, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 3, SBK_6, 0, 119, -25812, -5400, -21007, 4160, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 3, SBK_6, 0, 147, -9340, -5400, -13131, 3879, 0, 0
    nop
    nop

off_182E:
    if                      0, off_1856
    ck                      FG_SCENARIO, 130, 0
    if                      0, off_1854
    ck                      FG_ITEM, 119, 1
    aot_set                 ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -28462, -26694, 2120, 2300, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_1854:
    endif
    nop

off_1856:
    gosub                   main_03
    if                      0, off_1868
    cmp                     0, V_CUT, CMP_EQ, 0
    evt_exec                255, I_GOSUB, main_08
    endif
    nop

off_1868:
    evt_end                 0

.proc aot
    gosub                   main_07
    evt_end                 0

.proc main_02
    set                     FG_SCENARIO, 130, 1
    save                    V_NEXT_PLD, 0
    aot_on                  ID_AOT_3
    evt_end                 0

.proc main_03
    save                    V_04, 16
    gosub                   main_07
    aot_set                 ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -8502, -9694, 2650, 1490, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_UNDER, 3, 0, 2698, -26294, 2650, 2390, 255, 0, I_GOSUB, main_05, 0, 0
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -28462, -26694, 2120, 2300, 255, 0, I_GOSUB, main_06, 0, 0
    evt_end                 0

.proc main_04
    aot_on                  ID_AOT_4
    evt_end                 0

.proc main_05
    aot_on                  ID_AOT_5
    evt_end                 0

.proc main_06
    aot_on                  ID_AOT_6
    evt_end                 0

.proc main_07
    if                      0, off_1938
    work_copy               4, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    switch                  26, off_1932
    case                    0, off_18EA, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 64
    break                   0

off_18EA:
    case                    0, off_18F8, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_18F8:
    case                    0, off_1906, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_1906:
    case                    0, off_1914, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_1914:
    case                    0, off_1922, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_1922:
    case                    0, off_1930, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_1930:
    eswitch                 0

off_1932:
    copy                    V_04, V_CUT
    nop
    endif
    nop

off_1938:
    evt_end                 0

.proc main_08
    set                     FG_STOP, 7, 1
    evt_exec                255, I_GOSUB, main_09
    evt_exec                255, I_GOSUB, main_0A
    evt_exec                255, I_GOSUB, main_0B
    sleep                   10, 90
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_09
    evt_next
    nop
    nop_8b                  100, 90, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 87, 0
    nop_8a                  0, 3, 0, 85, 0
    se_on                   0, 1, 4, 0, 0, 0
    evt_end                 0

.proc main_0A
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -3000
    gosub                   main_0C
    evt_end                 0

.proc main_0B
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 3500, -3000, -25167
    member_set              M_Y_DIR, -2048
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    gosub                   main_0C
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    evt_end                 0

.proc main_0C
    speed_set               1, -40
    for                     0, off_19C2, 10
    add_speed
    evt_next
    next                    0

off_19C2:
    speed_set               1, -35
    for                     0, off_19D0, 20
    add_speed
    evt_next
    next                    0

off_19D0:
    speed_set               1, -30
    for                     0, off_19DE, 15
    add_speed
    evt_next
    next                    0

off_19DE:
    speed_set               1, -25
    for                     0, off_19EC, 15
    add_speed
    evt_next
    next                    0

off_19EC:
    speed_set               1, -20
    for                     0, off_19FA, 15
    add_speed
    evt_next
    next                    0

off_19FA:
    speed_set               1, -15
    for                     0, off_1A08, 10
    add_speed
    evt_next
    next                    0

off_1A08:
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    member_set2             M_Y_POS, V_TEMP
    nop
    sleep                   10, 5
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 35
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_end                 0
    db                      0x0C, 0x94
