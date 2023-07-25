.version 2

.init
.proc init
    door_aot_se             4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -8502, -9694, 2650, 1490, -16547, -5400, -26203, -1120, 2, 6, 0, 3, 7, 0, 0, 0, UNLOCKED, 0
    door_aot_se             5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 3, 0, 2698, -26294, 2650, 2390, -17186, 0, 7676, 8607, 2, 7, 5, 0, 40, 5, 0, 0, UNLOCKED, 0
    door_aot_se             6, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -28462, -26694, 2120, 2300, -1917, 0, -5364, 6209, 2, 11, 5, 0, 8, 1, 0, 0, UNLOCKED, 0
    obj_model_set           0, 0, 0, 0, 0, 3, 0, 10, 16, 3635, -5400, -25299, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main
    if                      0, off_179C
    ck                      FG_GENERAL_1, 254, 1
    set                     FG_3, 130, 0
    set                     FG_ITEM, 119, 1
    endif
    nop

off_179C:
    if                      0, off_17D4
    ck                      FG_GAME, F_SCENARIO, 0
    sce_em_set              0, 0, ENEMY_ZOMBIE_DOG, 0, 0, 3, 12, 0, 103, -10354, -5400, -17822, -3791, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_DOG, 0, 0, 3, 12, 0, 104, -21136, -5400, -18005, -10479, 0, 0
    else                    0, off_1818

off_17D4:
    sce_em_set              0, 1, ENEMY_ZOMBIE_RANDOM, 6, 0, 3, 5, 1, 104, -14230, -5400, -18702, 4079, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_RANDOM, 6, 0, 3, 5, 0, 119, -19965, -5400, -16910, 848, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_RANDOM, 6, 0, 3, 6, 0, 147, -9639, -5400, -13300, 3975, 0, 0
    nop
    nop

off_1818:
    if                      0, off_1836
    ck                      FG_3, 130, 0
    if                      0, off_1834
    ck                      FG_ITEM, 119, 1
    aot_reset               5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_1834:
    endif
    nop

off_1836:
    save                    V_04, 16
    gosub                   main_07
    if                      0, off_184C
    cmp                     0, V_CUT, CMP_EQ, 0
    evt_exec                255, I_GOSUB, main_08
    endif
    nop

off_184C:
    evt_end                 0

.proc aot
    gosub                   main_07
    evt_end                 0

.proc main_02
    set                     FG_3, 130, 1
    save                    V_20, 1
    aot_reset               5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 222, 188, 0, 0, 252, 29
    aot_on                  5
    evt_end                 0

.proc main_03
    save                    V_04, 16
    gosub                   main_07
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -8502, -9694, 2650, 1490, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_UNDER, 3, 0, 2698, -26294, 2650, 2390, 255, 0, I_GOSUB, main_05, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -28462, -26694, 2120, 2300, 255, 0, I_GOSUB, main_06, 0, 0
    evt_end                 0

.proc main_04
    aot_on                  4
    evt_end                 0

.proc main_05
    aot_on                  5
    evt_end                 0

.proc main_06
    aot_on                  6
    evt_end                 0

.proc main_07
    if                      0, off_1926
    work_copy               4, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    switch                  26, off_1920
    case                    0, off_18D8, 0
    sce_bgm_control         0, 0, 1, 40, 64
    break                   0

off_18D8:
    case                    0, off_18E6, 1
    sce_bgm_control         0, 0, 1, 80, 64
    break                   0

off_18E6:
    case                    0, off_18F4, 2
    sce_bgm_control         0, 0, 1, 80, 64
    break                   0

off_18F4:
    case                    0, off_1902, 3
    sce_bgm_control         0, 0, 1, 80, 64
    break                   0

off_1902:
    case                    0, off_1910, 4
    sce_bgm_control         0, 0, 1, 80, 64
    break                   0

off_1910:
    case                    0, off_191E, 5
    sce_bgm_control         0, 0, 1, 80, 64
    break                   0

off_191E:
    eswitch                 0

off_1920:
    copy                    V_04, V_CUT
    nop
    endif
    nop

off_1926:
    evt_end                 0

.proc main_08
    set                     FG_STATE, 7, 1
    evt_exec                255, I_GOSUB, main_09
    evt_exec                255, I_GOSUB, main_0A
    evt_exec                255, I_GOSUB, main_0B
    sleep                   10, 90
    set                     FG_STATE, 7, 0
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
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 72, 244
    gosub                   main_0C
    evt_end                 0

.proc main_0B
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 3500, -3000, -25167
    member_set              15, 0, 248
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    gosub                   main_0C
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             0, V_TEMP
    nop
    evt_end                 0

.proc main_0C
    speed_set               1, -40
    for                     0, off_19B0, 10
    add_speed
    evt_next
    next                    0

off_19B0:
    speed_set               1, -35
    for                     0, off_19BE, 20
    add_speed
    evt_next
    next                    0

off_19BE:
    speed_set               1, -30
    for                     0, off_19CC, 15
    add_speed
    evt_next
    next                    0

off_19CC:
    speed_set               1, -25
    for                     0, off_19DA, 15
    add_speed
    evt_next
    next                    0

off_19DA:
    speed_set               1, -20
    for                     0, off_19E8, 15
    add_speed
    evt_next
    next                    0

off_19E8:
    speed_set               1, -15
    for                     0, off_19F6, 10
    add_speed
    evt_next
    next                    0

off_19F6:
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    member_set2             12, V_TEMP
    nop
    sleep                   10, 5
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 35
    member_set2             12, V_TEMP
    nop
    evt_end                 0
