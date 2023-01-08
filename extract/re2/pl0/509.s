.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 11238, -17701, 1800, 2200, -12007, 0, -25230, 2040, 4, 5, 0, 0, 7, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    gosub                   2
    evt_end                 0

.proc main_01
    gosub                   3
    evt_end                 0

.proc main_02
    set                     5, 2, 1
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, 18000, 0, -14400, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, 18000, 0, -18900, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 26, 16, 8500, 0, -30900, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 26, 16, 1900, 0, -30900, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -9600, 0, -18900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -9600, 0, -14400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, 1900, 0, -2300, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 16, 8500, 0, -2300, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 10, 16, 18000, 0, -14400, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 16, 18000, 0, -18900, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           10, 0, 0, 0, 0, 0, 0, 10, 16, 8500, 0, -30900, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           11, 0, 0, 0, 0, 0, 0, 10, 16, 1900, 0, -30900, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           12, 0, 0, 0, 0, 0, 0, 10, 16, -9600, 0, -18900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           13, 0, 0, 0, 0, 0, 0, 10, 16, -9600, 0, -14400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           14, 0, 0, 0, 0, 0, 0, 10, 16, 1900, 0, -2300, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           15, 0, 0, 0, 0, 0, 0, 10, 16, 8500, 0, -2300, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           16, 0, 0, 0, 0, 0, 0, 10, 0, 6313, -6000, -14000, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1C96
    ck                      1, 1, 0
    sce_em_set              0, 0, ENEMY_49, 0, 0, 0, 33, 0, 23, 32000, 0, 32000, 0, 0, 0
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, 7505, -13822, 1850, 8900, 255, 0, I_GOSUB, main_04, 0, 0
    else                    0, off_1CC2

off_1C96:
    sce_em_set              0, 0, ENEMY_51, 0, 96, 0, 34, 0, 23, 32000, 0, 32000, 0, 0, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -6595, -15122, 5850, 1900, 255, 0, I_GOSUB, main_07, 0, 0
    nop
    nop

off_1CC2:
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 12648, -15122, 1830, 1380, 1, 0, 0, 0, 255, 255
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_13, 0, 0
    sca_id_set              11, 0, 0
    gosub                   8
    evt_exec                9, I_GOSUB, main_0A
    sce_bgm_control         0, 0, 1, 91, 64
    evt_exec                255, I_GOSUB, main_11
    evt_exec                7, I_GOSUB, main_12
    evt_end                 0

.proc main_03
    if                      0, off_1D0E
    ck                      5, 0, 0
    ck                      7, 23, 1
    set                     5, 0, 1
    gosub                   16
    endif
    nop

off_1D0E:
    if                      0, off_1D1A
    ck                      1, 11, 1
    gosub                   8
    endif
    nop

off_1D1A:
    gosub                   9
    evt_end                 0

.proc main_04
    aot_reset               1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    set                     1, 27, 1
    evt_exec                255, I_GOSUB, main_06
    while                   4, off_1D40
    ck                      5, 1, 0
    evt_next
    nop
    ewhile                  0

off_1D40:
    set                     5, 1, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 32, 1255, 256
    plc_neck                1, 6660, -5796, -16110, 96, 96
    gosub                   20
    plc_motion              1, 1, 8
    sleep                   10, 8
    plc_stop
    nop
    while                   4, off_1D72
    ck                      5, 1, 0
    evt_next
    nop
    ewhile                  0

off_1D72:
    set                     5, 1, 0
    evt_kill                9
    evt_exec                9, I_GOSUB, main_0C
    evt_kill                8
    evt_exec                8, I_GOSUB, main_0E
    cut_chg                 6
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    pos_set                 0, 6660, -5796, -16110
    member_set              15, 32, 11
    sleep                   10, 60
    set                     5, 2, 0
    cut_chg                 7
    evt_next
    sce_bgm_control         0, 0, 1, 61, 64
    nop
    gosub                   21
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    if                      0, off_1DD6

off_1DC8:
    member_cmp              0, 23, 6, 2, 0
    goto                    255, 255, 0, off_1DE2
    endif
    nop

off_1DD6:
    evt_next
    nop
    goto                    255, 255, 0, off_1DC8
    sleep                   10, 60

off_1DE2:
    wsleep
    wsleeping
    evt_kill                9
    evt_exec                9, I_GOSUB, main_0B
    cut_chg                 2
    nop_8a                  0, 4, 0, 17, 0
    nop_8b                  255, 14, 0, 17, 0
    nop_8a                  0, 6, 0, 28, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 4, 0
    pos_set                 0, 4500, -5796, -15100
    member_set              15, 79, 13
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 7231, 0, -9385
    member_set              15, 0, 4
    sleep                   10, 18
    evt_exec                255, I_GOSUB, main_05
    sce_bgm_control         0, 0, 1, 1, 64
    sce_bgm_control         1, 1, 0, 101, 64
    plc_motion              10, 15, 0
    sleep                   10, 35
    member_set              12, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -11
    member_set2             0, 16
    nop
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     5, 2, 1
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_05
    sleep                   10, 4
    set                     1, 29, 1
    sleep                   10, 8
    set                     1, 29, 0
    evt_end                 0

.proc main_06
    work_set                WK_OBJECT, 16
    nop
    speed_set               2, 700
    speed_set               1, 800
    speed_set               7, 20
    speed_set               3, -64
    while                   6, off_1E9E
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1E9E:
    nop_8a                  0, 4, 0, 0, 0
    nop_8a                  0, 4, 0, 8, 0
    se_on                   2, 266, 4100, 0, 0, 0
    set                     5, 1, 1
    member_set              12, 12, 254
    speed_set               2, 350
    speed_set               1, -250
    speed_set               7, 20
    speed_set               3, -512
    speed_set               9, 8
    for                     0, off_1EDE, 8
    evt_next
    add_speed
    add_aspeed
    nop
    next                    0

off_1EDE:
    speed_set               2, 150
    speed_set               1, -100
    speed_set               7, 20
    speed_set               3, 256
    speed_set               9, -8
    while                   6, off_1F02
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1F02:
    pos_set                 0, 32000, 0, 32000
    set                     5, 1, 1
    evt_end                 0

.proc main_07
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 439, 0, -23018
    member_set              15, 240, 9
    member_set              23, 1, 0
    sleep                   10, 120
    member_set              23, 2, 0
    cut_chg                 8
    evt_kill                9
    evt_exec                9, I_GOSUB, main_0C
    evt_kill                8
    evt_exec                8, I_GOSUB, main_0F
    pos_set                 0, -3600, -500, -21420
    member_set              15, 80, 11
    sleep                   10, 20
    gosub                   22
    sce_bgm_control         0, 0, 1, 76, 64
    member_set              23, 3, 0
    if                      0, off_1F7A

off_1F6C:
    member_cmp              0, 24, 6, 1, 0
    goto                    255, 255, 0, off_1F86
    endif
    nop

off_1F7A:
    evt_next
    nop
    goto                    255, 255, 0, off_1F6C
    wsleep
    wsleeping
    evt_kill                9

off_1F86:
    evt_exec                9, I_GOSUB, main_0B
    sce_bgm_control         0, 0, 1, 1, 64
    sce_bgm_control         1, 1, 0, 101, 64
    cut_chg                 0
    cut_auto                1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -3600, 0, -21420
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_08
    save                    4, -9
    switch                  26, off_2992
    case                    0, off_20DC, 0
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 10
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 12
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 13
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 14
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 15
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_20DC:
    case                    0, off_21FC, 1
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 10
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 12
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 13
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 14
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 15
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_21FC:
    case                    0, off_231C, 2
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 10
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 12
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 13
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 14
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 15
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    break                   0

off_231C:
    case                    0, off_243C, 3
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 10
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 12
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 13
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 14
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 15
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_243C:
    case                    0, off_2558, 4
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 10
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 12
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 13
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 14
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 15
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_2558:
    case                    0, off_2678, 5
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 10
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 12
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 13
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 14
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 15
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_2678:
    case                    0, off_2780, 6
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 10
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 12
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 13
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 14
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 15
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    break                   0

off_2780:
    case                    0, off_2888, 7
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 10
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 12
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 13
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 14
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 15
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    break                   0

off_2888:
    case                    0, off_2990, 8
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 10
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 12
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 13
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 14
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 15
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    break                   0

off_2990:
    eswitch                 0

off_2992:
    evt_end                 0

.proc main_09
    switch                  26, off_2B4A
    case                    0, off_29C8, 0
    work_set                WK_OBJECT, 5
    nop
    member_copy             4, 11
    nop
    member_copy             5, 12
    nop
    member_copy             6, 13
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             7, 11
    nop
    member_copy             8, 13
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             9, 11
    nop
    member_copy             10, 13
    nop
    break                   0

off_29C8:
    case                    0, off_29F8, 1
    work_set                WK_OBJECT, 5
    nop
    member_copy             4, 11
    nop
    member_copy             5, 12
    nop
    member_copy             6, 13
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             7, 11
    nop
    member_copy             8, 13
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             9, 11
    nop
    member_copy             10, 13
    nop
    break                   0

off_29F8:
    case                    0, off_2A28, 2
    work_set                WK_OBJECT, 0
    nop
    member_copy             4, 11
    nop
    member_copy             5, 12
    nop
    member_copy             6, 13
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             7, 11
    nop
    member_copy             8, 13
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             9, 11
    nop
    member_copy             10, 13
    nop
    break                   0

off_2A28:
    case                    0, off_2A58, 3
    work_set                WK_OBJECT, 3
    nop
    member_copy             4, 11
    nop
    member_copy             5, 12
    nop
    member_copy             6, 13
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             7, 11
    nop
    member_copy             8, 13
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             9, 11
    nop
    member_copy             10, 13
    nop
    break                   0

off_2A58:
    case                    0, off_2A88, 4
    work_set                WK_OBJECT, 1
    nop
    member_copy             4, 11
    nop
    member_copy             5, 12
    nop
    member_copy             6, 13
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             7, 11
    nop
    member_copy             8, 13
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             9, 11
    nop
    member_copy             10, 13
    nop
    break                   0

off_2A88:
    case                    0, off_2AB8, 5
    work_set                WK_OBJECT, 1
    nop
    member_copy             4, 11
    nop
    member_copy             5, 12
    nop
    member_copy             6, 13
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             7, 11
    nop
    member_copy             8, 13
    nop
    work_set                WK_OBJECT, 0
    nop
    member_copy             9, 11
    nop
    member_copy             10, 13
    nop
    break                   0

off_2AB8:
    case                    0, off_2AE8, 6
    work_set                WK_OBJECT, 2
    nop
    member_copy             4, 11
    nop
    member_copy             5, 12
    nop
    member_copy             6, 13
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             7, 11
    nop
    member_copy             8, 13
    nop
    work_set                WK_OBJECT, 0
    nop
    member_copy             9, 11
    nop
    member_copy             10, 13
    nop
    break                   0

off_2AE8:
    case                    0, off_2B18, 7
    work_set                WK_OBJECT, 2
    nop
    member_copy             4, 11
    nop
    member_copy             5, 12
    nop
    member_copy             6, 13
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             7, 11
    nop
    member_copy             8, 13
    nop
    work_set                WK_OBJECT, 0
    nop
    member_copy             9, 11
    nop
    member_copy             10, 13
    nop
    break                   0

off_2B18:
    case                    0, off_2B48, 8
    work_set                WK_OBJECT, 2
    nop
    member_copy             4, 11
    nop
    member_copy             5, 12
    nop
    member_copy             6, 13
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             7, 11
    nop
    member_copy             8, 13
    nop
    work_set                WK_OBJECT, 0
    nop
    member_copy             9, 11
    nop
    member_copy             10, 13
    nop
    break                   0

off_2B48:
    eswitch                 0

off_2B4A:
    work_copy               4, 4, 1
    light_pos_set           0, 0, 11, 0
    work_copy               5, 4, 1
    light_pos_set           0, 0, 12, 0
    work_copy               6, 4, 1
    light_pos_set           0, 0, 13, 0
    work_copy               7, 4, 1
    light_pos_set           0, 1, 11, 0
    work_copy               5, 4, 1
    light_pos_set           0, 1, 12, 0
    work_copy               8, 4, 1
    light_pos_set           0, 1, 13, 0
    work_copy               9, 4, 1
    light_pos_set           0, 2, 11, 0
    work_copy               5, 4, 1
    light_pos_set           0, 2, 12, 0
    work_copy               10, 4, 1
    light_pos_set           0, 2, 13, 0
    evt_end                 0

.proc main_0A
    evt_next
    nop
    evt_chain               0, 24, 11
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 18000, 0, -14400
    member_set              15, 0, 8
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, 18000, 0, -18900
    member_set              15, 0, 8
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 8500, 0, -30900
    member_set              15, 0, 12
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 1900, 0, -30900
    member_set              15, 0, 12
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -9600, 0, -18900
    member_set              15, 0, 0
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -9600, 0, -14400
    member_set              15, 0, 0
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, 1900, 0, -2300
    member_set              15, 0, 4
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 8500, 0, -2300
    member_set              15, 0, 4
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, 18000, -10800, -14400
    member_set              15, 0, 8
    work_set                WK_OBJECT, 9
    nop
    pos_set                 0, 18000, -10800, -18900
    member_set              15, 0, 8
    work_set                WK_OBJECT, 10
    nop
    pos_set                 0, 8500, -10800, -30900
    member_set              15, 0, 12
    work_set                WK_OBJECT, 11
    nop
    pos_set                 0, 1900, -10800, -30900
    member_set              15, 0, 12
    work_set                WK_OBJECT, 12
    nop
    pos_set                 0, -9600, -10800, -18900
    member_set              15, 0, 0
    work_set                WK_OBJECT, 13
    nop
    pos_set                 0, -9600, -10800, -14400
    member_set              15, 0, 0
    work_set                WK_OBJECT, 14
    nop
    pos_set                 0, 1900, -10800, -2300
    member_set              15, 0, 4
    work_set                WK_OBJECT, 15
    nop
    pos_set                 0, 8500, -10800, -2300
    member_set              15, 0, 4
    evt_kill                8
    evt_exec                8, I_GOSUB, main_0D
    work_set                WK_OBJECT, 0
    nop

off_2CB8:
    member_set              12, 0, 0
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 0, 0
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 0, 0
    work_set                WK_OBJECT, 3
    nop
    member_set              12, 0, 0
    work_set                WK_OBJECT, 4
    nop
    member_set              12, 0, 0
    work_set                WK_OBJECT, 5
    nop
    member_set              12, 0, 0
    work_set                WK_OBJECT, 6
    nop
    member_set              12, 0, 0
    work_set                WK_OBJECT, 7
    nop
    member_set              12, 0, 0
    work_set                WK_OBJECT, 8
    nop
    member_set              12, 28, 213
    work_set                WK_OBJECT, 9
    nop
    member_set              12, 28, 213
    work_set                WK_OBJECT, 10
    nop
    member_set              12, 28, 213
    work_set                WK_OBJECT, 11
    nop
    member_set              12, 28, 213
    work_set                WK_OBJECT, 12
    nop
    member_set              12, 28, 213
    work_set                WK_OBJECT, 13
    nop
    member_set              12, 28, 213
    work_set                WK_OBJECT, 14
    nop
    member_set              12, 28, 213
    work_set                WK_OBJECT, 15
    nop
    member_set              12, 28, 213
    evt_next
    nop
    for                     0, off_2E60, 60
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 10
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 12
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 13
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 14
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 15
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_2E60:
    goto                    255, 255, 0, off_2CB8
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, 0
    nop
    member_set              15, 0, 8
    work_set                WK_OBJECT, 1
    nop
    member_set              15, 0, 12
    work_set                WK_OBJECT, 2
    nop
    member_set              15, 0, 12
    work_set                WK_OBJECT, 3
    nop
    member_set              15, 0, 4
    work_set                WK_OBJECT, 4
    nop
    member_set              15, 0, 8
    work_set                WK_OBJECT, 5
    nop
    member_set              15, 0, 12
    work_set                WK_OBJECT, 6
    nop
    member_set              15, 0, 12
    work_set                WK_OBJECT, 7
    nop
    member_set              15, 0, 4
    work_set                WK_OBJECT, 8
    nop
    member_set              15, 0, 8
    work_set                WK_OBJECT, 9
    nop
    member_set              15, 0, 12
    work_set                WK_OBJECT, 10
    nop
    member_set              15, 0, 12
    work_set                WK_OBJECT, 11
    nop
    member_set              15, 0, 4
    work_set                WK_OBJECT, 0
    nop

off_2ECC:
    pos_set                 0, 18000, 0, -18900
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, 8500, 0, -30900
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 1900, 0, -30900
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 1900, 0, -2300
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, 18000, -10980, -18900
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, 8500, -10980, -30900
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, 1900, -10980, -30900
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 1900, -10980, -2300
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, 18000, -21780, -18900
    work_set                WK_OBJECT, 9
    nop
    pos_set                 0, 8500, -21780, -30900
    work_set                WK_OBJECT, 10
    nop
    pos_set                 0, 1900, -21780, -30900
    work_set                WK_OBJECT, 11
    nop
    pos_set                 0, 1900, -21780, -2300
    evt_next
    nop
    for                     0, off_303C, 60
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 10
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_303C:
    goto                    255, 255, 0, off_2ECC
    evt_end                 0

.proc main_0D
    save                    12, 0

off_3048:
    save                    13, 0
    save                    14, 0
    evt_next
    nop
    for                     0, off_309E, 9
    copy                    16, 12
    nop
    calc                    0, OP_ADD, 16, 2000
    copy                    12, 16
    nop
    copy                    16, 13
    nop
    calc                    0, OP_ADD, 16, 2000
    copy                    13, 16
    nop
    copy                    16, 14
    nop
    calc                    0, OP_ADD, 16, 2000
    copy                    14, 16
    nop
    work_copy               12, 2, 1
    light_kido_set          0, 0
    work_copy               13, 2, 1
    light_kido_set          1, 0
    work_copy               14, 2, 1
    light_kido_set          2, 0
    evt_next
    nop
    next                    0

off_309E:
    sleep                   10, 31
    for                     0, off_30EE, 20
    copy                    16, 12
    nop
    calc                    0, OP_SUB, 16, 720
    copy                    12, 16
    nop
    copy                    16, 13
    nop
    calc                    0, OP_SUB, 16, 720
    copy                    13, 16
    nop
    copy                    16, 14
    nop
    calc                    0, OP_SUB, 16, 720
    copy                    14, 16
    nop
    work_copy               12, 2, 1
    light_kido_set          0, 0
    work_copy               13, 2, 1
    light_kido_set          1, 0
    work_copy               14, 2, 1
    light_kido_set          2, 0
    evt_next
    nop
    next                    0

off_30EE:
    goto                    255, 255, 0, off_3048
    evt_end                 0

.proc main_0E
    light_kido_set          0, 0
    light_kido_set          1, 0
    light_kido_set          2, 0
    sleep                   10, 30
    save                    12, 0

off_310A:
    save                    13, 0
    save                    14, 0
    evt_next
    nop
    for                     0, off_3160, 18
    copy                    16, 12
    nop
    calc                    0, OP_ADD, 16, 2000
    copy                    12, 16
    nop
    copy                    16, 13
    nop
    calc                    0, OP_ADD, 16, 2000
    copy                    13, 16
    nop
    copy                    16, 14
    nop
    calc                    0, OP_ADD, 16, 2000
    copy                    14, 16
    nop
    work_copy               12, 2, 1
    light_kido_set          0, 0
    work_copy               13, 2, 1
    light_kido_set          1, 0
    work_copy               14, 2, 1
    light_kido_set          2, 0
    evt_next
    nop
    next                    0

off_3160:
    for                     0, off_3182, 12
    work_copy               12, 2, 1
    light_kido_set          0, 0
    work_copy               13, 2, 1
    light_kido_set          1, 0
    work_copy               14, 2, 1
    light_kido_set          2, 0
    evt_next
    nop
    next                    0

off_3182:
    for                     0, off_31CE, 30
    copy                    16, 12
    nop
    calc                    0, OP_SUB, 16, 720
    copy                    12, 16
    nop
    copy                    16, 13
    nop
    calc                    0, OP_SUB, 16, 720
    copy                    13, 16
    nop
    copy                    16, 14
    nop
    calc                    0, OP_SUB, 16, 720
    copy                    14, 16
    nop
    work_copy               12, 2, 1
    light_kido_set          0, 0
    work_copy               13, 2, 1
    light_kido_set          1, 0
    work_copy               14, 2, 1
    light_kido_set          2, 0
    evt_next
    nop
    next                    0

off_31CE:
    goto                    255, 255, 0, off_310A
    evt_end                 0

.proc main_0F
    save                    12, 0

off_31DA:
    save                    13, 0
    save                    14, 0
    evt_next
    nop
    for                     0, off_3230, 18
    copy                    16, 12
    nop
    calc                    0, OP_ADD, 16, 2000
    copy                    12, 16
    nop
    copy                    16, 13
    nop
    calc                    0, OP_ADD, 16, 2000
    copy                    13, 16
    nop
    copy                    16, 14
    nop
    calc                    0, OP_ADD, 16, 2000
    copy                    14, 16
    nop
    work_copy               12, 2, 1
    light_kido_set          0, 0
    work_copy               13, 2, 1
    light_kido_set          1, 0
    work_copy               14, 2, 1
    light_kido_set          2, 0
    evt_next
    nop
    next                    0

off_3230:
    for                     0, off_3252, 12
    work_copy               12, 2, 1
    light_kido_set          0, 0
    work_copy               13, 2, 1
    light_kido_set          1, 0
    work_copy               14, 2, 1
    light_kido_set          2, 0
    evt_next
    nop
    next                    0

off_3252:
    for                     0, off_329E, 30
    copy                    16, 12
    nop
    calc                    0, OP_SUB, 16, 720
    copy                    12, 16
    nop
    copy                    16, 13
    nop
    calc                    0, OP_SUB, 16, 720
    copy                    13, 16
    nop
    copy                    16, 14
    nop
    calc                    0, OP_SUB, 16, 720
    copy                    14, 16
    nop
    work_copy               12, 2, 1
    light_kido_set          0, 0
    work_copy               13, 2, 1
    light_kido_set          1, 0
    work_copy               14, 2, 1
    light_kido_set          2, 0
    evt_next
    nop
    next                    0

off_329E:
    goto                    255, 255, 0, off_31DA
    evt_end                 0

.proc main_10
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 25, 209, 0, 0, 114, 157
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sca_id_set              11, 128, 252
    sce_bgm_control         0, 0, 1, 91, 64
    sce_bgm_control         1, 5, 0, 91, 64
    sce_bgmtbl_set          0, 9, 5, 65312, 0
    if                      0, off_32FC
    ck                      1, 0, 1
    ck                      1, 1, 1
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_32F4
    member_cmp              0, 6, 0, 1, 0
    save                    32, 5
    else                    0, off_32FA

off_32F4:
    save                    32, 7
    nop
    nop

off_32FA:
    endif
    nop

off_32FC:
    evt_end                 0

.proc main_11
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 5
    se_on                   2, 267, 1, 0, 0, 0
    sleep                   10, 5
    plc_motion              0, 16, 0
    sleep                   10, 60
    plc_motion              0, 16, 144
    sleep                   10, 24
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    nop
    evt_end                 0

.proc main_12
    sleep                   10, 90

off_333E:
    set                     1, 28, 1
    se_on                   2, 268, 0, 5525, 0, -16467
    if                      0, off_335E
    ck                      5, 2, 1
    nop_8b                  120, 4, 0, 0, 0
    endif
    nop

off_335E:
    sleep                   10, 4
    if                      0, off_3372
    ck                      5, 2, 1
    nop_8b                  150, 4, 0, 0, 0
    endif
    nop

off_3372:
    sleep                   10, 4
    if                      0, off_3386
    ck                      5, 2, 1
    nop_8b                  80, 4, 0, 0, 0
    endif
    nop

off_3386:
    sleep                   10, 4
    set                     1, 28, 0
    goto                    255, 255, 0, off_333E
    evt_end                 0

.proc main_13
    set                     1, 28, 0
    se_on                   2, 278, 1, 0, 0, 0
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    evt_end                 0

.proc main_14
    do                      0, off_33BC
    evt_next
    nop
    edwhile                 off_33BC
    ck                      5, 32, 0

off_33BC:
    evt_end                 0

.proc main_15
    xa_on                   0, 19
    evt_end                 0

.proc main_16
    xa_on                   0, 20
    evt_end                 0
    db                      0x96, 0x5C
