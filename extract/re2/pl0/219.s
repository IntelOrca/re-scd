.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 5024, -22115, 1200, 1800, -20700, 0, -3700, 0, 1, 22, 3, 0, 28, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7256, -12055, 1800, 1200, -15300, 0, -9700, 3072, 1, 26, 0, 0, 26, 1, 0, 0, UNLOCKED, 0
    if                      0, off_09BA
    ck                      1, 6, 1
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26566, -16105, 2400, 1200, 4, 0, 0, 0, 255, 255
    else                    0, off_09DC

off_09BA:
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26566, -16105, 2400, 1200, -25100, 0, -16450, 1024, 2, 1, 0, 0, 20, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_09DC:
    evt_end                 0
    db                      0x1A, 0x13

.main
.proc main_00
    if                      0, off_0A9A
    ck                      1, 6, 1
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 134, 0, 0, 5, 0, 95, -11536, 0, -13187, 159, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 5, 0, 96, -373, 0, -21443, 2653, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 3, 32, 0, 5, 0, 140, -5728, 0, -18745, 3472, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 1, 32, 0, 5, 0, 148, -4580, 0, -17700, 3136, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 0, 0, 5, 0, 161, 2292, 0, -21718, 3064, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 134, 0, 0, 5, 0, 162, -12406, 0, -14303, 4008, 0, 0
    evt_end                 0
    endif
    nop

off_0A9A:
    gosub                   7
    if                      0, off_0AE4
    ck                      1, 1, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -26000, -1500, -12500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27000, -12900, 1800, 1800, ITEM_HANDGUNAMMO, 15, 117, 0, 0
    else                    0, off_0B22

off_0AE4:
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -26000, -1600, -12500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27000, -12900, 1800, 1800, ITEM_FILMC, 1, 117, 1, 0
    nop
    nop

off_0B22:
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28600, -14800, 1800, 1400, 2, 0, 0, 0, 255, 255
    if                      0, off_0B5E
    ck                      3, 67, 0
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 0, 0, 0, 0, 255, 3220, 0, -19880, 2048, 0, 0
    set                     3, 67, 1
    evt_exec                255, I_GOSUB, main_03
    endif
    nop

off_0B5E:
    if                      0, off_0B76
    ck                      3, 66, 1
    ck                      3, 65, 0
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_0B76:
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    message_on              0, 0, 0, 255, 255
    evt_end                 0

.proc main_03
    gosub                   5
    sleep                   10, 30
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 41, -4600, -20750
    sleep                   10, 20
    sleep                   10, 1
    xa_on                   0, 32
    message_on              0, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 19, 0
    nop
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 19, 128
    sleep                   10, 20
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    pos_set                 0, 3000, 0, -13000
    wsleep
    wsleeping
    gosub                   6
    evt_end                 0

.proc main_04
    do                      0, off_0C22
    evt_next
    nop
    edwhile                 off_0C22
    ck                      5, 41, 0

off_0C22:
    evt_end                 0

.proc main_05
    set                     2, 7, 1
    set                     1, 27, 1
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_07
    if                      0, off_0C6E
    ck                      4, 254, 1
    set                     4, 55, 1
    set                     3, 98, 0
    if                      0, off_0C62
    ck                      1, 1, 0
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
    ck                      4, 55, 1
    if                      0, off_0C9A
    ck                      3, 67, 1
    if                      0, off_0C98
    ck                      3, 98, 1
    if                      0, off_0C96
    cmp                     0, 27, CMP_EQ, 273
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
    ck                      4, 55, 1
    if                      0, off_0D30
    ck                      3, 67, 1
    if                      0, off_0D2E
    ck                      3, 98, 0
    if                      0, off_0CD6
    cmp                     0, 27, CMP_EQ, 534
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -4336, -24035, 5000, 6300, 255, 0, I_GOSUB, main_09, 0, 0
    else                    0, off_0CDC

off_0CD6:
    evt_exec                255, I_GOSUB, main_0A
    nop
    nop

off_0CDC:
    sce_em_set              0, 0, ENEMY_BENBERTOLUCCI1, 0, 0, 0, 0, 0, 255, -22020, 0, -24446, 627, 0, 0
    if                      0, off_0D14
    ck                      1, 1, 0
    sce_em_set              0, 1, ENEMY_48, 2, 0, 0, 28, 0, 255, -20156, -500, -26707, 2489, 0, 0
    else                    0, off_0D2C

off_0D14:
    sce_em_set              0, 1, ENEMY_48, 4, 64, 0, 28, 0, 255, -20156, -500, -26707, 2489, 0, 0
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
    set                     2, 7, 1
    evt_next
    set                     2, 7, 1
    set                     1, 27, 1
    set                     3, 98, 1
    cut_chg                 1
    work_set                WK_PLAYER, 0
    pos_set                 0, 1325, -2500, -22023
    dir_set                 0, 0, 3193, 0
    plc_motion              0, 25, 0
    save                    8, 0
    for                     0, off_0D86, 7
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 8
    member_set2             12, 16
    nop
    evt_next
    nop
    copy                    16, 8
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    8, 16
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
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_09
    set                     2, 7, 1
    set                     1, 27, 1
    set                     3, 98, 1
    aot_reset               7, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 116, 49, 0, 0, 117, 240
    gosub                   11
    evt_end                 0

.proc main_0A
    set                     2, 7, 1
    evt_next
    set                     2, 7, 1
    set                     1, 27, 1
    set                     3, 98, 1
    cut_chg                 1
    work_set                WK_PLAYER, 0
    pos_set                 0, 1325, -2500, -22023
    dir_set                 0, 0, 3193, 0
    plc_motion              0, 25, 0
    save                    8, 0
    for                     0, off_0E2A, 7
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 8
    member_set2             12, 16
    nop
    evt_next
    nop
    copy                    16, 8
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    8, 16
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
    gosub                   11
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
    gosub                   19
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
    ck                      1, 1, 0
    sce_bgm_control         1, 1, 0, 0, 0
    gosub                   12
    else                    0, off_0EBC

off_0EB2:
    sce_bgm_control         2, 1, 0, 0, 0
    gosub                   17
    nop
    nop

off_0EBC:
    set                     3, 66, 1
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    sce_fade_set            1, 2, 7, 0, 2
    for                     0, off_0EDA, 64
    evt_next
    nop
    next                    0

off_0EDA:
    cut_chg                 1
    if                      0, off_0EF0
    ck                      1, 1, 0
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
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_0C
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -20110, -610, -25854
    dir_set                 0, 0, 2500, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 3, 1, 0, 96, 96
    pos_set                 0, -21322, 0, -25508
    dir_set                 0, 0, 627, 0
    xa_on                   0, 27
    work_set                WK_ENEMY, 0
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
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 1, 0
    set                     5, 0, 1
    se_on                   2, 10, 0, -21222, -1800, -25608
    sleep                   10, 6
    work_set                WK_ENEMY, 0
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
    work_set                WK_ENEMY, 0
    plc_motion              0, 16, 12
    nop
    sleep                   10, 10
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -22474, 500, -24245
    dir_set                 0, 0, 560, 0
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -20431, -70, -25582
    dir_set                 0, 0, 2372, 0
    cut_chg                 7
    evt_next
    nop
    xa_on                   0, 28
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    plc_motion              0, 17, 0
    nop
    wsleep
    wsleeping
    cut_chg                 8
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -21495, 0, -24546
    dir_set                 0, 0, 944, 0
    plc_motion              0, 18, 0
    work_set                WK_ENEMY, 1
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
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 4, 0
    sleep                   10, 70
    wsleep
    wsleeping
    cut_chg                 7
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -21357, -300, -24530
    dir_set                 0, 0, 1700, 0
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 2, 0
    sleep                   10, 1
    xa_on                   0, 29
    sleep                   10, 40
    member_set              23, 32, 0
    sleep                   10, 60
    member_set              23, 64, 0
    sleep                   10, 40
    member_set              23, 32, 0
    sleep                   10, 30
    member_set              23, 128, 0
    sleep                   10, 20
    member_set              23, 0, 1
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_0D
    wsleep
    wsleeping
    evt_end                 0

.proc main_0D
    work_set                WK_ENEMY, 1
    nop
    for                     0, off_118E, 130
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 15
    member_set2             11, 16
    nop
    evt_next
    nop
    next                    0

off_118E:
    evt_end                 0

.proc main_0E
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -20110, -610, -25854
    dir_set                 0, 0, 2500, 0
    while                   4, off_11CC
    ck                      5, 0, 0
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 16
    member_set2             11, 16
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_ADD, 16, 12
    member_set2             13, 16
    nop
    evt_next
    nop
    ewhile                  0

off_11CC:
    set                     5, 0, 0
    evt_end                 0

.proc main_0F
    work_set                WK_ENEMY, 0
    nop
    for                     0, off_11FC, 5
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 20
    member_set2             12, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 20
    member_set2             11, 16
    nop
    evt_next
    nop
    next                    0

off_11FC:
    evt_end                 0

.proc main_10
    work_set                WK_ENEMY, 0
    nop
    for                     0, off_121A, 5
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 10
    member_set2             11, 16
    nop
    evt_next
    nop
    next                    0

off_121A:
    evt_end                 0

.proc main_11
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -20480, -400, -26547
    dir_set                 0, 0, 3000, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 3, 1, 0, 96, 96
    pos_set                 0, -21222, 0, -25608
    dir_set                 0, 0, 627, 0
    xa_on                   0, 27
    evt_next
    work_set                WK_ENEMY, 0
    plc_dest                0, 8, 36, -22761, -23367
    sleep                   10, 5
    plc_neck                2, 0, -1024, 0, 96, 96
    sleep                   10, 7
    plc_neck                5, 3, 1, 0, 96, 96
    sleep                   10, 8
    plc_neck                2, 0, 1024, 0, 96, 96
    sleep                   10, 10
    plc_neck                5, 3, 1, 0, 96, 96
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 1, 0
    work_set                WK_ENEMY, 0
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
    work_set                WK_ENEMY, 1
    member_set              23, 2, 0
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, -320, -100, 96, 96
    sleep                   10, 3
    plc_neck                2, 0, 320, -100, 96, 96
    sleep                   10, 6
    plc_neck                2, 0, -320, -100, 96, 96
    sleep                   10, 10
    se_on                   2, 12, 0, -21222, -1800, -25608
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -22313, 0, -24069
    plc_neck                2, 0, -320, -1024, 128, 128
    sleep                   10, 2
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 256
    member_set2             7, 16
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
    work_set                WK_ENEMY, 0
    plc_motion              0, 20, 0
    nop
    evt_exec                255, I_GOSUB, main_10
    sce_espr_on             0, 512, 3, 12288, 500, -1800, 0, 0
    sleep                   10, 20
    wsleep
    wsleeping
    cut_chg                 8
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -21495, 0, -24546
    dir_set                 0, 0, 944, 0
    plc_motion              0, 18, 0
    work_set                WK_ENEMY, 1
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
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 4, 0
    sleep                   10, 70
    wsleep
    wsleeping
    member_set              23, 16, 0
    cut_chg                 7
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -21316, -200, -24476
    dir_set                 0, 0, 1280, 0
    evt_next
    work_set                WK_ENEMY, 1
    member_set              23, 8, 0
    sleep                   10, 1
    xa_on                   0, 29
    sleep                   10, 40
    member_set              23, 32, 0
    sleep                   10, 60
    member_set              23, 64, 0
    sleep                   10, 40
    member_set              23, 32, 0
    sleep                   10, 30
    member_set              23, 128, 0
    sleep                   10, 20
    member_set              23, 0, 1
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_0D
    wsleep
    wsleeping
    evt_end                 0

.proc main_12
    work_set                WK_ENEMY, 0
    nop
    save                    9, 300
    for                     0, off_14D8, 70
    copy                    16, 9
    nop
    calc                    0, OP_ADD, 16, 5
    copy                    9, 16
    nop
    work_copy               9, 12, 1
    work_copy               9, 6, 1
    kage_set                3, 0, 16, 191, 191, 0, 0, 0, 0, 0, 0, 244, 1
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
    ck                      5, 32, 0

off_14E6:
    evt_end                 0

.proc main_14
    do                      0, off_14F4
    evt_next
    nop
    edwhile                 off_14F4
    ck                      5, 36, 0

off_14F4:
    evt_end                 0
    db                      0x3A, 0x51
