.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 12864, -5227, 1800, 2300, -26435, 0, -25198, -440, 1, 17, 11, 0, 26, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23084, -4737, 1800, 2300, 4809, 0, -21018, 2133, 1, 25, 0, 0, 28, 1, 0, 0, UNLOCKED, 0
    if                      0, off_0F06
    ck                      FG_GAME, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_0F06:
    if                      0, off_0F14
    ck                      FG_ITEM, 119, 1
    set                     FG_GENERAL_2, 32, 1
    endif
    nop

off_0F14:
    if                      0, off_0F22
    ck                      FG_ITEM, 124, 1
    set                     FG_GENERAL_2, 32, 1
    endif
    nop

off_0F22:
    if                      0, off_0F62
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_0F60
    ck                      FG_GENERAL_2, 32, 1
    sce_em_set              0, 0, ENEMY_ZOMBIE_DOG, 0, 0, 0, 12, 0, 137, -2300, 0, -4160, 3375, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_DOG, 0, 0, 0, 12, 0, 138, -7400, 0, -2660, 1583, 0, 0
    endif
    nop

off_0F60:
    endif
    nop

off_0F62:
    evt_end                 0

.main
.proc main
    if                      0, off_0FFE
    ck                      FG_GAME, F_BONUS, 1
    set                     30, 1, 1
    rbj_reset
    nop
    sce_em_set              0, 0, ENEMY_ZOMBIE_DOG, 2, 0, 0, 12, 0, 81, -17217, 0, 4549, 1251, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_DOG, 2, 0, 0, 12, 0, 82, -6131, -20, -4790, 2467, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_DOG, 2, 0, 0, 12, 0, 83, -2121, -10, -2599, 2187, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 0, 18, -17634, 0, -11163, 0, -2048, 0, -800, -1800, 1820, 3000, 196, 9, 32, 13
    sca_id_set              19, 16, 190
    evt_end                 0
    endif
    nop

off_0FFE:
    if                      0, off_104A
    ck                      FG_3, 33, 0
    sce_em_set              0, 255, ENEMY_ADA_WONG_1, 0, 8, 0, 31, 0, 255, 20000, 20000, 20000, 3072, 777, 72
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -5763, -7401, 2990, 8180, 255, 0, I_GOSUB, main_07, 0, 0
    sca_id_set              19, 0, 0
    else                    0, off_10BC

off_104A:
    if                      0, off_1082
    ck                      FG_GENERAL_1, 89, 0
    sce_em_set              0, 255, ENEMY_ADA_WONG_1, 0, 8, 0, 31, 0, 255, -17119, 0, -2326, 224, 770, 4
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    sca_id_set              19, 0, 0
    else                    0, off_10BA

off_1082:
    if                      0, off_10B4
    ck                      FG_3, 67, 0
    sce_em_set              0, 255, ENEMY_ADA_WONG_1, 0, 12, 0, 31, 0, 255, -14856, 0, -631, 224, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    endif
    nop

off_10B4:
    sca_id_set              19, 16, 190
    nop
    nop

off_10BA:
    nop
    nop

off_10BC:
    if                      0, off_1132
    ck                      FG_GENERAL_1, 89, 0
    aot_reset               1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    obj_model_set           0, 2, 0, 0, 0, 0, 0, 128, 18, -17634, 900, -8100, 0, -2048, 0, -800, -900, 1820, 3000, 196, 9, 32, 13
    obj_model_set           1, 0, 0, 0, 0, 49152, 0, 2, 16, -1700, -850, -2850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -21500, -4500, 6500, 2000, 255, 0, I_GOSUB, main_02, 0, 0
    else                    0, off_1180

off_1132:
    obj_model_set           0, 2, 0, 0, 0, 0, 0, 128, 18, -17634, 900, -11163, 0, -2048, 0, -800, -900, 1820, 3000, 196, 9, 32, 13
    obj_model_set           1, 0, 0, 0, 0, 49152, 16, 2, 16, -1700, -850, -2850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1180:
    gosub                   main_0D
    gosub                   main_0C
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    cut_chg                 9
    se_on                   2, 268, 1, 0, -800, 0
    set                     FG_GENERAL_1, 89, 1
    set                     32, 13, 1
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               29, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sca_id_set              19, 16, 190
    set                     FG_GENERAL_2, 8, 0
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    set                     FG_GENERAL_2, 3, 1
    evt_exec                255, I_GOSUB, main_03
    evt_exec                255, I_GOSUB, main_04
    while                   4, off_11DA
    ck                      FG_GENERAL_2, 6, 0
    evt_next
    nop
    ewhile                  0

off_11DA:
    while                   4, off_11E6
    ck                      FG_GENERAL_2, 7, 0
    evt_next
    nop
    ewhile                  0

off_11E6:
    set                     FG_GENERAL_2, 8, 1
    sleep                   10, 15
    evt_exec                255, I_GOSUB, main_05
    evt_exec                255, I_GOSUB, main_06
    while                   4, off_1202
    ck                      FG_GENERAL_2, 3, 1
    evt_next
    nop
    ewhile                  0

off_1202:
    cut_chg                 3
    cut_auto                1
    set                     FG_GAME, 27, 0
    sleep                   10, 30
    set                     FG_STATE, 7, 0
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 201, 18, 0, 0, 230, 173
    evt_end                 0

.proc main_03
    set                     FG_GENERAL_2, 6, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_04, 11
    nop
    set                     FG_GENERAL_2, 1, 0
    work_copy               4, 4, 1
    plc_dest                0, 4, 1, 0, -2650
    while                   4, off_1246
    ck                      FG_GENERAL_2, 1, 0
    evt_next
    nop
    ewhile                  0

off_1246:
    set                     FG_GENERAL_2, 1, 0
    plc_dest                0, 21, 1, 1024, 40
    while                   4, off_125E
    ck                      FG_GENERAL_2, 1, 0
    evt_next
    nop
    ewhile                  0

off_125E:
    set                     FG_GENERAL_2, 6, 1
    while                   4, off_126E
    ck                      FG_GENERAL_2, 8, 0
    evt_next
    nop
    ewhile                  0

off_126E:
    plc_motion              1, 7, 0
    sleep                   10, 15
    save                    V_07, 0
    plc_motion              1, 8, 20
    for                     0, off_14A8, 8
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 6
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 6
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 12
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 12
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 15
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 15
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 15
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 18
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 18
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 20
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 20
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 25
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    if                      0, off_1416
    work_copy               7, 2, 0
    cmp                     0, V_00, CMP_GE, 2
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 26
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 27
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 25
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    else                    0, off_141C

off_1416:
    sleep                   10, 6
    nop
    nop

off_141C:
    if                      0, off_148C
    work_copy               7, 2, 0
    cmp                     0, V_00, CMP_GE, 1
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 18
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 17
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 17
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 16
    member_set2             13, V_TEMP
    nop
    else                    0, off_1492

off_148C:
    sleep                   10, 6
    nop
    nop

off_1492:
    evt_next
    nop
    sleep                   10, 18
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    next                    0

off_14A8:
    plc_motion              1, 7, 128
    sleep                   10, 15
    plc_ret
    set                     FG_GENERAL_2, 3, 0
    nop
    evt_end                 0

.proc main_04
    set                     FG_GENERAL_2, 7, 0
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_06, 11
    nop
    set                     FG_GENERAL_2, 2, 0
    work_copy               6, 4, 1
    plc_dest                0, 4, 2, 0, -2650
    while                   4, off_14E0
    ck                      FG_GENERAL_2, 2, 0
    evt_next
    nop
    ewhile                  0

off_14E0:
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 21, 2, 1024, 40
    while                   4, off_14F8
    ck                      FG_GENERAL_2, 2, 0
    evt_next
    nop
    ewhile                  0

off_14F8:
    set                     FG_GENERAL_2, 7, 1
    while                   4, off_1508
    ck                      FG_GENERAL_2, 8, 0
    evt_next
    nop
    ewhile                  0

off_1508:
    sleep                   10, 2
    plc_motion              0, 20, 0
    sleep                   10, 15
    plc_motion              0, 21, 20
    for                     0, off_1734, 8
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 6
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 6
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 12
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 12
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 15
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 15
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 15
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 18
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 18
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 20
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 20
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 25
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    if                      0, off_16B0
    work_copy               7, 2, 0
    cmp                     0, V_00, CMP_GE, 2
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 26
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 27
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 25
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    else                    0, off_16B6

off_16B0:
    sleep                   10, 6
    nop
    nop

off_16B6:
    if                      0, off_1726
    work_copy               7, 2, 0
    cmp                     0, V_00, CMP_GE, 1
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 18
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 17
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 17
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 16
    member_set2             13, V_TEMP
    nop
    else                    0, off_172C

off_1726:
    sleep                   10, 6
    nop
    nop

off_172C:
    evt_next
    nop
    sleep                   10, 16
    next                    0

off_1734:
    plc_motion              0, 20, 128
    sleep                   10, 15
    while                   4, off_1748
    ck                      FG_GENERAL_2, 3, 1
    evt_next
    nop
    ewhile                  0

off_1748:
    splc_ret
    nop
    evt_end                 0

.proc main_05
    work_set                WK_OBJECT, 0
    nop
    speed_set               3, 1
    for                     0, off_193A, 8
    se_on                   2, 261, 4, 0, 0, 0
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  5, 140, 0, 0, 0
    nop_8c                  0, 140, 0, 30, 0, 5, 0
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 12
    member_set2             13, V_TEMP
    nop
    add_speed
    evt_next
    add_speed
    evt_next
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             13, V_TEMP
    nop
    add_speed
    evt_next
    add_speed
    evt_next
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 28
    member_set2             13, V_TEMP
    nop
    add_speed
    nop
    sleep                   10, 2
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 29
    member_set2             13, V_TEMP
    nop
    sleep                   10, 2
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    member_set2             13, V_TEMP
    nop
    sleep                   10, 2
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 36
    member_set2             13, V_TEMP
    nop
    sleep                   10, 2
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 40
    member_set2             13, V_TEMP
    nop
    sleep                   10, 2
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 47
    member_set2             13, V_TEMP
    nop
    sleep                   10, 2
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 49
    member_set2             13, V_TEMP
    nop
    sleep                   10, 2
    if                      0, off_1890
    work_copy               7, 2, 0
    cmp                     0, V_00, CMP_GE, 2
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 26
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 27
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 25
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    else                    0, off_1896

off_1890:
    sleep                   10, 6
    nop
    nop

off_1896:
    if                      0, off_1906
    work_copy               7, 2, 0
    cmp                     0, V_00, CMP_GE, 1
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 18
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 17
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 17
    member_set2             13, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 16
    member_set2             13, V_TEMP
    nop
    else                    0, off_190C

off_1906:
    sleep                   10, 6
    nop
    nop

off_190C:
    speed_set               3, -1
    for                     0, off_191A, 7
    add_speed
    evt_next
    next                    0

off_191A:
    speed_set               3, 1
    for                     0, off_1928, 2
    add_speed
    evt_next
    next                    0

off_1928:
    se_on                   2, 256, 4, 0, 0, 0
    sleep                   10, 11
    next                    0

off_193A:
    evt_end                 0

.proc main_06
    work_set                WK_OBJECT, 1
    nop
    for                     0, off_1B5C, 8
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 6
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 6
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 12
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 12
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 14
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 15
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 15
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 15
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 18
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 18
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 20
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 20
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 25
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    if                      0, off_1AD8
    work_copy               7, 2, 0
    cmp                     0, V_00, CMP_GE, 2
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 26
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 27
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 25
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 24
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    else                    0, off_1ADE

off_1AD8:
    sleep                   10, 6
    nop
    nop

off_1ADE:
    if                      0, off_1B50
    work_copy               7, 2, 0
    cmp                     0, V_00, CMP_GE, 1
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 18
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 17
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 12
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_SUB, V_TEMP, 11
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    else                    0, off_1B56

off_1B50:
    sleep                   10, 6
    nop
    nop

off_1B56:
    sleep                   10, 20
    next                    0

off_1B5C:
    evt_end                 0

.proc main_07
    set                     FG_3, 33, 1
    set                     FG_GENERAL_2, 9, 0
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    set                     FG_GENERAL_2, 3, 1
    set                     FG_GENERAL_2, 0, 1
    evt_exec                255, I_GOSUB, main_08
    while                   4, off_1B90
    ck                      FG_GENERAL_2, 0, 1
    evt_next
    nop
    ewhile                  0

off_1B90:
    sleep                   10, 15
    sce_bgm_control         1, 1, 0, 90, 64
    evt_exec                255, I_GOSUB, main_09
    while                   4, off_1BAA
    ck                      FG_GENERAL_2, 3, 1
    evt_next
    nop
    ewhile                  0

off_1BAA:
    cut_chg                 6
    sce_scr_move            0, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 755, 0, -4107
    member_set              15, 224, 7
    while                   4, off_1BCC
    ck                      FG_GENERAL_2, 5, 0
    evt_next
    nop
    ewhile                  0

off_1BCC:
    sleep                   10, 19
    cut_chg                 10
    sleep                   10, 3
    message_on              0, 3, 0, 0, 0
    xa_on                   0, 20
    wsleep
    wsleeping
    sleep                   10, 2
    sleep                   10, 30
    cut_chg                 9
    sleep                   10, 18
    message_on              0, 4, 0, 0, 0
    xa_on                   0, 21
    wsleep
    wsleeping
    sleep                   10, 14
    cut_chg                 10
    sleep                   10, 3
    message_on              0, 5, 0, 0, 0
    xa_on                   0, 22
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 9
    sleep                   10, 3
    message_on              0, 6, 0, 0, 0
    xa_on                   0, 23
    sleep                   10, 82
    message_on              0, 7, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 11
    sleep                   10, 3
    set                     FG_GENERAL_2, 9, 1
    message_on              0, 8, 0, 0, 0
    xa_on                   0, 24
    sleep                   10, 155
    set                     FG_GENERAL_2, 9, 1
    set                     FG_GENERAL_2, 13, 1
    message_on              0, 9, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 9
    sleep                   10, 3
    while                   4, off_1C74
    ck                      FG_GENERAL_2, 12, 0
    evt_next
    nop
    ewhile                  0

off_1C74:
    message_on              0, 10, 0, 0, 0
    xa_on                   0, 25
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 3
    cut_auto                1
    sleep                   10, 60
    sce_bgmtbl_set          0, 22, 2, 65283, 0
    set                     FG_GAME, 27, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_08
    work_set                WK_PLAYER, 0
    set                     FG_GENERAL_2, 5, 0
    nop
    nop_8a                  0, 2, 0, 2, 0
    nop_8b                  220, 5, 0, 2, 0
    sce_espr_on             0, 24, 1, 8192, -800, -200, 800, 0
    se_on                   2, 266, 1, -800, -200, 800
    sleep                   10, 2
    sce_espr_on             0, 2051, 1, 2048, -800, -200, 800, 0
    sleep                   10, 2
    se_on                   2, 267, 1, -1800, -1800, -1800
    sleep                   10, 2
    plc_motion              1, 3, 1
    sleep                   10, 1
    plc_ret
    nop
    plc_neck                2, 0, -200, 0, 80, 80
    sleep                   10, 20
    plc_neck                1, 3695, -1800, -3921, 40, 40
    set                     FG_GENERAL_2, 1, 0
    plc_dest                0, 9, 1, 3695, -3921
    plc_rot                 0, 184
    while                   4, off_1D34
    ck                      FG_GENERAL_2, 1, 0
    evt_next
    nop
    ewhile                  0

off_1D34:
    wsleep
    wsleeping
    set                     FG_GENERAL_2, 0, 0
    while                   6, off_1D48
    cmp                     0, V_CUT, CMP_NE, 6
    evt_next
    nop
    ewhile                  0

off_1D48:
    pos_set                 0, -4271, 0, -3282
    member_set              15, 248, 0
    set                     FG_GENERAL_2, 1, 0
    plc_dest                0, 4, 1, -2494, -3892
    while                   4, off_1D6C
    ck                      FG_GENERAL_2, 1, 0
    evt_next
    nop
    ewhile                  0

off_1D6C:
    while                   4, off_1D78
    ck                      FG_GENERAL_2, 5, 0
    evt_next
    nop
    ewhile                  0

off_1D78:
    set                     FG_GENERAL_2, 1, 0
    plc_dest                0, 7, 1, -3009, -4771
    sleep                   10, 10
    plc_neck                5, 2, 0, 0, 60, 60
    set                     FG_GENERAL_2, 1, 0
    plc_dest                0, 9, 1, -12615, -4452
    while                   6, off_1DAC
    cmp                     0, V_CUT, CMP_NE, 10
    evt_next
    nop
    ewhile                  0

off_1DAC:
    plc_neck                1, -14671, 0, -4276, 80, 80
    pos_set                 0, -2094, 0, -3989
    while                   4, off_1DCA
    ck                      FG_GENERAL_2, 1, 0
    evt_next
    nop
    ewhile                  0

off_1DCA:
    while                   6, off_1DD8
    cmp                     0, V_CUT, CMP_NE, 9
    evt_next
    nop
    ewhile                  0

off_1DD8:
    member_set              15, 160, 7
    while                   6, off_1DEA
    cmp                     0, V_CUT, CMP_NE, 10
    evt_next
    nop
    ewhile                  0

off_1DEA:
    sleep                   10, 54
    set                     FG_GENERAL_2, 1, 0
    plc_dest                0, 4, 1, -12381, -5525
    while                   4, off_1E06
    ck                      FG_GENERAL_2, 1, 0
    evt_next
    nop
    ewhile                  0

off_1E06:
    plc_neck                5, 2, 0, 0, 40, 40
    while                   4, off_1E1C
    ck                      FG_GENERAL_2, 13, 0
    evt_next
    nop
    ewhile                  0

off_1E1C:
    plc_neck                0, 0, 0, 0, 40, 40
    while                   6, off_1E34
    cmp                     0, V_CUT, CMP_NE, 3
    evt_next
    nop
    ewhile                  0

off_1E34:
    plc_ret
    nop
    evt_end                 0

.proc main_09
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 2091, -300, -4222
    member_set              15, 192, 7
    member_set              16, 240, 0
    cut_chg                 8
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_0B
    sce_scr_move            0, 0
    set                     FG_GENERAL_2, 4, 1
    save                    V_04, 0
    for                     0, off_1E82, 220
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 2, 1
    sce_scr_move            0, 0
    evt_next
    nop
    next                    0

off_1E82:
    set                     FG_GENERAL_2, 4, 0
    sleep                   10, 30
    set                     FG_GENERAL_2, 3, 0
    evt_end                 0

.proc main_0A
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 80, 80
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 9, 2, -19060, -2447
    while                   4, off_1EC0
    ck                      FG_GENERAL_2, 2, 0
    evt_next
    nop
    ewhile                  0

off_1EC0:
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 4, 2, -19060, -2447
    while                   4, off_1ED8
    ck                      FG_GENERAL_2, 2, 0
    evt_next
    nop
    ewhile                  0

off_1ED8:
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 21, 2, 1024, 40
    while                   4, off_1EF0
    ck                      FG_GENERAL_2, 2, 0
    evt_next
    nop
    ewhile                  0

off_1EF0:
    plc_motion              2, 2, 4
    evt_end                 0

.proc main_0B
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 80, 80
    do                      0, off_1F10
    evt_next
    nop
    edwhile                 off_1F10
    ck                      FG_GENERAL_2, 4, 0

off_1F10:
    save                    V_05, -300
    save                    V_06, 240
    for                     0, off_1F4E, 220
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 8
    copy                    V_05, V_TEMP
    nop
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_06, V_TEMP
    nop
    work_copy               5, 2, 1
    member_set              12, 0, 0
    work_copy               6, 2, 1
    member_set              16, 0, 0
    evt_next
    nop
    next                    0

off_1F4E:
    sleep                   10, 20
    plc_motion              2, 9, 144
    sleep                   10, 20
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 4, 2, -697, -4154
    while                   4, off_1F74
    ck                      FG_GENERAL_2, 2, 0
    sleep                   10, 1
    ewhile                  0

off_1F74:
    message_on              0, 1, 0, 0, 0
    xa_on                   0, 19
    plc_neck                1, -5032, -1800, -2804, 0, 60
    plc_motion              0, 15, 0
    sleep                   10, 10
    plc_neck                5, 1, 0, 0, 60, 60
    sleep                   10, 10
    plc_motion              0, 15, 144
    sleep                   10, 40
    plc_motion              0, 16, 0
    sleep                   10, 12
    message_on              0, 2, 0, 0, 0
    sleep                   10, 18
    plc_motion              0, 16, 128
    sleep                   10, 30
    wsleep
    wsleeping
    plc_neck                6, 0, 0, 0, 60, 60
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 4, 2, -5032, -2804
    sleep                   10, 10
    set                     FG_GENERAL_2, 5, 1
    while                   6, off_1FF0
    cmp                     0, V_CUT, CMP_NE, 9
    sleep                   10, 1
    ewhile                  0

off_1FF0:
    pos_set                 0, -7517, 0, -4310
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 9, 2, -6260, -5399
    sleep                   10, 5
    plc_neck                1, 6000, -3600, -4819, 80, 80
    while                   4, off_2020
    ck                      FG_GENERAL_2, 2, 0
    sleep                   10, 1
    ewhile                  0

off_2020:
    sleep                   10, 30
    set                     FG_GENERAL_2, 11, 1
    sleep                   10, 30
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 4, 2, -14471, -3569
    plc_neck                0, 0, 0, 0, 80, 80
    while                   4, off_2050
    ck                      FG_GENERAL_2, 2, 0
    sleep                   10, 1
    ewhile                  0

off_2050:
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 9, 2, -12731, -5359
    while                   4, off_206A
    ck                      FG_GENERAL_2, 2, 0
    sleep                   10, 1
    ewhile                  0

off_206A:
    plc_neck                5, 1, 0, 0, 60, 60
    while                   6, off_2082
    cmp                     0, V_CUT, CMP_NE, 11
    evt_next
    nop
    ewhile                  0

off_2082:
    pos_set                 0, -14509, 0, -5175
    plc_motion              0, 18, 0
    sleep                   10, 30
    plc_motion              0, 18, 128
    sleep                   10, 20
    plc_flg                 0, 16
    sleep                   10, 20
    plc_motion              0, 19, 16
    sleep                   10, 50
    plc_neck                1, -14671, -2000, -6274, 40, 40
    plc_motion              0, 19, 128
    sleep                   10, 25
    while                   4, off_20CA
    ck                      FG_GENERAL_2, 9, 0
    sleep                   10, 1
    ewhile                  0

off_20CA:
    set                     FG_GENERAL_2, 9, 0
    plc_motion              0, 22, 0
    sleep                   10, 30
    plc_neck                4, 3, 0, 0, 60, 60
    plc_motion              0, 19, 144
    sleep                   10, 60
    plc_neck                5, 1, 0, 0, 60, 60
    plc_motion              2, 2, 4
    while                   6, off_2104
    cmp                     0, V_CUT, CMP_NE, 9
    evt_next
    nop
    ewhile                  0

off_2104:
    pos_set                 0, -14471, 0, -3569
    member_set              15, 172, 13
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 21, 2, 3072, 40
    while                   4, off_2128
    ck                      FG_GENERAL_2, 2, 0
    evt_next
    nop
    ewhile                  0

off_2128:
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 4, 2, -17119, -2326
    plc_rot                 0, 20
    while                   4, off_2144
    ck                      FG_GENERAL_2, 2, 0
    evt_next
    nop
    ewhile                  0

off_2144:
    set                     FG_GENERAL_2, 2, 0
    plc_dest                0, 21, 2, 239, 40
    while                   4, off_215C
    ck                      FG_GENERAL_2, 2, 0
    evt_next
    nop
    ewhile                  0

off_215C:
    set                     FG_GENERAL_2, 12, 1
    plc_neck                1, -14671, -2000, -6274, 40, 40
    sleep                   10, 40
    plc_motion              0, 15, 0
    sleep                   10, 10
    plc_motion              0, 15, 128
    sleep                   10, 8
    plc_motion              0, 15, 0
    plc_cnt                 8
    sleep                   10, 2
    plc_motion              0, 15, 128
    plc_cnt                 8
    sleep                   10, 10
    plc_motion              0, 18, 0
    sleep                   10, 30
    sleep                   10, 20
    plc_motion              0, 18, 128
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 60, 60
    plc_motion              2, 2, 4
    evt_end                 0

.proc main_0C
    aot_set                 28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13203, 8442, 2400, 7300, 11, 0, 0, 0, 0, 255
    if                      0, off_21E8
    ck                      FG_GENERAL_1, 89, 0
    aot_set                 29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21303, -10788, 5750, 8100, 12, 0, 0, 0, 0, 255
    endif
    nop

off_21E8:
    evt_end                 0

.proc main_0D
    item_aot_set            27, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19300, 14572, 1200, 1200, ITEM_HERBG, 1, 144, 2, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -18660, 0, 15142, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
