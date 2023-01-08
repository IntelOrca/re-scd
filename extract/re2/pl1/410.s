.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -4748, -8646, 2400, 3900, -5146, -7200, -5988, 136, 3, 9, 0, 4, 22, 4, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 2112, -22556, 6100, 1500, 4451, -1800, -22484, 1128, 3, 10, 10, 1, 43, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    mizu_div_set            2
    obj_model_set           0, 1, 130, 4, 4, 0, 0, 10, 26, -3600, -1440, -21600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -2687, -21529, 14600, 12500, 96, 250, 0, 0, 0, 0
    if                      0, off_128C
    ck                      1, 1, 0
    ck                      4, 52, 0
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 0, 31, 32, 0, 255, 7770, -1800, -12642, 3072, 0, 0
    sce_em_set              0, 0, ENEMY_48, 5, 64, 31, 0, 0, 255, 20000, 20000, 20000, 2720, 0, 0
    evt_exec                255, I_GOSUB, main_02
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 5697, -15408, 2800, 6100, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_128C:
    if                      0, off_12D2
    ck                      1, 3, 1
    if                      0, off_12B8
    cmp                     0, 27, CMP_EQ, 1033
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 1, 32, 0, 255, -1040, -1800, -7058, -3496, 0, 0
    else                    0, off_12D0

off_12B8:
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 0, 32, 0, 255, 5172, 0, -21308, -1216, 0, 0
    nop
    nop

off_12D0:
    endif
    nop

off_12D2:
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 593, -15432, 1800, 2400, ITEM_FAIDSPRAY, 1, 180, 255, 0
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 6293, -17432, 1800, 2400, ITEM_INKRIBBON, 3, 181, 255, 0
    if                      0, off_1346
    ck                      1, 1, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, 6596, -2028, -10720, 512, 0, -256, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 5697, -11108, 2800, 1700, ITEM_WOLFMEDAL, 1, 182, 1, 160
    else                    0, off_1348

off_1346:
    nop
    nop

off_1348:
    evt_exec                255, I_GOSUB, main_0A
    gosub                   8
    gosub                   9
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_07, 0, 0
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    evt_next
    work_set                WK_SPLAYER, 0
    plc_motion              0, 15, 64
    evt_next
    plc_stop
    evt_end                 0

.proc main_03
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sce_bgmtbl_set          0, 16, 4, 65300, 49152
    set                     2, 7, 1
    set                     4, 52, 1
    set                     1, 27, 1
    evt_exec                255, I_GOSUB, main_05
    evt_exec                255, I_GOSUB, main_06
    evt_exec                255, I_GOSUB, main_04
    cut_chg                 3
    sce_espr_on             0, 25, 0, 4096, 11900, -5800, -11600, 0
    sleep                   10, 25
    sleep                   10, 5
    se_on                   2, 269, 0, 19404, -4000, -6096
    sleep                   10, 5
    sce_bgm_control         2, 1, 0, 0, 0
    sleep                   10, 115
    xa_on                   0, 49
    sleep                   10, 2
    evt_next
    nop
    sleep                   10, 5
    message_on              0, 8, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 5
    sleep                   10, 60
    while                   4, off_13F4
    ck                      5, 0, 0
    evt_next
    nop
    ewhile                  0

off_13F4:
    cut_chg                 3
    while                   4, off_1402
    ck                      5, 2, 0
    evt_next
    nop
    ewhile                  0

off_1402:
    message_on              0, 9, 0, 0, 0
    xa_on                   0, 50
    sleep                   10, 32
    message_on              0, 10, 0, 0, 0
    wsleep
    wsleeping
    while                   4, off_1424
    ck                      5, 2, 1
    evt_next
    nop
    ewhile                  0

off_1424:
    message_on              0, 11, 0, 0, 0
    xa_on                   0, 51
    sleep                   10, 72
    wsleep
    wsleeping
    message_on              0, 12, 0, 0, 0
    set                     5, 3, 1
    xa_on                   0, 52
    sleep                   10, 60
    wsleep
    wsleeping
    cut_chg                 1
    unk                     137
    set                     1, 3, 1
    set                     1, 27, 0
    set                     2, 7, 0
    cut_auto                1
    nop
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 0
    nop
    speed_set               0, 16
    speed_set               2, -8
    while                   6, off_1476
    cmp                     0, 26, CMP_NE, 5
    evt_next
    nop
    ewhile                  0

off_1476:
    pos_set                 0, 8881, 0, -12933
    for                     0, off_1524, 8
    speed_set               6, 2
    speed_set               8, -2
    for                     0, off_14C2, 4
    add_speed
    add_aspeed
    member_copy             16, 15
    nop
    calc                    0, OP_SUB, 16, 2
    member_set2             15, 16
    nop
    member_copy             16, 14
    nop
    calc                    0, OP_ADD, 16, 2
    member_set2             14, 16
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 2
    member_set2             16, 16
    nop
    evt_next
    nop
    next                    0

off_14C2:
    speed_set               6, -2
    speed_set               8, 2
    for                     0, off_1500, 4
    add_speed
    add_aspeed
    member_copy             16, 15
    nop
    calc                    0, OP_SUB, 16, 2
    member_set2             15, 16
    nop
    member_copy             16, 14
    nop
    calc                    0, OP_ADD, 16, 2
    member_set2             14, 16
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 2
    member_set2             16, 16
    nop
    evt_next
    nop
    next                    0

off_1500:
    if                      0, off_1510
    ck                      5, 30, 0
    set                     5, 30, 1
    else                    0, off_1522

off_1510:
    set                     5, 30, 0
    se_on                   2, 266, 3, 0, 0, 0
    nop
    nop

off_1522:
    next                    0

off_1524:
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_05
    work_set                WK_SPLAYER, 0
    nop
    while                   4, off_153E
    ck                      5, 1, 0
    evt_next
    nop
    ewhile                  0

off_153E:
    for                     0, off_155A, 2
    plc_cnt                 0
    plc_motion              0, 15, 80
    sleep                   10, 4
    plc_cnt                 66
    plc_flg                 1, 208
    sleep                   10, 4
    next                    0

off_155A:
    while                   6, off_1568
    cmp                     0, 26, CMP_NE, 5
    evt_next
    nop
    ewhile                  0

off_1568:
    plc_flg                 1, 80
    plc_neck                4, 3, 0, 0, 30, 30
    for                     0, off_1582, 60
    plc_cnt                 4
    evt_next
    nop
    next                    0

off_1582:
    plc_motion              0, 15, 80
    se_on                   2, 268, 2, 0, 0, 0
    plc_neck                5, 1, 0, 0, 80, 80
    plc_cnt                 0
    plc_flg                 1, 80
    sleep                   10, 76
    save                    4, 3072
    plc_flg                 1, 64
    for                     0, off_15CA, 32
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 32
    copy                    4, 16
    nop
    member_set2             15, 4
    nop
    evt_next
    nop
    next                    0

off_15CA:
    set                     5, 0, 1
    while                   6, off_15DC
    cmp                     0, 26, CMP_NE, 3
    evt_next
    nop
    ewhile                  0

off_15DC:
    pos_set                 0, 6890, 0, -12387
    plc_motion              0, 16, 64
    sleep                   10, 28
    plc_neck                2, 0, 0, 80, 40, 40
    for                     0, off_1602, 40
    plc_cnt                 28
    evt_next
    nop
    next                    0

off_1602:
    plc_neck                4, 3, 0, 0, 40, 40
    for                     0, off_1618, 132
    plc_cnt                 28
    evt_next
    nop
    next                    0

off_1618:
    plc_neck                5, 2, 0, 0, 40, 40
    plc_motion              0, 16, 64
    plc_cnt                 28
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 54
    member_set2             13, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 54
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 2
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 51
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 13
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 50
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 14
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 47
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 20
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 44
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 25
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 42
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 29
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 37
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 34
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 34
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 37
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 29
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 42
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 25
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 44
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 20
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 47
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 14
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 50
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 13
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 51
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 2
    member_set2             13, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 54
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 54
    member_set2             11, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    evt_next
    nop
    sleep                   10, 16
    while                   6, off_18DE
    cmp                     0, 26, CMP_NE, 1
    evt_next
    nop
    ewhile                  0

off_18DE:
    pos_set                 0, 5385, 0, -13448
    member_set              15, 0, 12
    member_set              17, 0, 0
    plc_motion              2, 2, 68
    evt_next
    splc_ret
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    nop
    member_set              17, 31, 0
    pos_set                 0, 6304, 0, -12387
    member_set              15, 0, 0
    plc_motion              0, 16, 80
    sleep                   10, 10
    plc_neck                2, 0, -40, -500, 4, 8
    sleep                   10, 22
    plc_neck                2, 0, -40, -500, 40, 80
    sleep                   10, 8
    sleep                   10, 24
    plc_motion              0, 16, 192
    sleep                   10, 16
    sleep                   10, 20
    sleep                   10, 50
    plc_neck                5, 2, 0, 0, 20, 20
    sleep                   10, 25
    plc_motion              0, 16, 80
    sleep                   10, 24
    set                     5, 1, 1
    plc_cnt                 8
    plc_flg                 1, 192
    sleep                   10, 12
    plc_motion              2, 2, 4
    while                   4, off_1976
    ck                      5, 0, 0
    evt_next
    nop
    ewhile                  0

off_1976:
    while                   6, off_1984
    cmp                     0, 26, CMP_NE, 3
    evt_next
    nop
    ewhile                  0

off_1984:
    plc_neck                5, 2, 0, 0, 80, 80
    plc_motion              0, 15, 64
    sleep                   10, 28
    plc_stop
    set                     5, 2, 1
    nop
    for                     0, off_19A8, 172
    plc_cnt                 28
    evt_next
    nop
    next                    0

off_19A8:
    plc_motion              0, 15, 64
    plc_cnt                 28
    save                    4, 0
    for                     0, off_19CE, 16
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 64
    copy                    4, 16
    nop
    member_set2             15, 4
    nop
    evt_next
    nop
    next                    0

off_19CE:
    sleep                   10, 16
    set                     5, 2, 0
    plc_motion              0, 16, 17
    plc_neck                2, 0, 200, 0, 25, 10
    sleep                   10, 8
    plc_neck                2, 0, -200, 0, 25, 10
    sleep                   10, 8
    plc_neck                5, 2, 0, 0, 25, 10
    plc_motion              0, 16, 145
    plc_cnt                 8
    while                   4, off_1A12
    ck                      5, 3, 0
    evt_next
    nop
    ewhile                  0

off_1A12:
    plc_motion              0, 17, 1
    sleep                   10, 30
    plc_motion              0, 17, 129
    sleep                   10, 30
    while                   6, off_1A30
    cmp                     0, 26, CMP_NE, 1
    evt_next
    nop
    ewhile                  0

off_1A30:
    pos_set                 0, 5385, 0, -12878
    member_set              17, 0, 0
    plc_ret
    nop
    evt_end                 0

.proc main_07
    message_on              0, 15, 0, 0, 255
    evt_next
    nop
    if                      0, off_1A78
    ck                      11, 31, 0
    se_on                   4, 6, 0, 0, 0, 0
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 230, 235, 224, 227, 156, 232
    aot_on                  0
    evt_next
    nop
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_07, 0, 0
    else                    0, off_1A86

off_1A78:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_1A86:
    evt_end                 0

.proc main_08
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6567, 1910, 1000, 1000, ITEM_INKRIBBON, 3, 255, 255, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6567, 1910, 1000, 1000, ITEM_FAIDSPRAY, 1, 255, 255, 0
    evt_end                 0

.proc main_09
    aot_set_4p              30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2723, -9858, 477, -9858, 3477, -17058, -1823, -27458, 13, 0, 0, 0, 0, 255
    aot_set_4p              31, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 5697, -9358, 10697, -9358, 11187, -23258, 7277, -20478, 13, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_0A
    switch                  26, off_1BA2

off_1AF4:
    case                    0, off_1B02, 0
    sce_bgm_control         0, 0, 1, 81, 65
    break                   0

off_1B02:
    case                    0, off_1B10, 1
    sce_bgm_control         0, 0, 1, 91, 65
    break                   0

off_1B10:
    case                    0, off_1B1E, 2
    sce_bgm_control         0, 0, 1, 86, 65
    break                   0

off_1B1E:
    case                    0, off_1B2C, 3
    sce_bgm_control         0, 0, 1, 91, 65
    break                   0

off_1B2C:
    case                    0, off_1B4E, 4
    if                      0, off_1B44
    ck                      5, 8, 0
    sce_bgm_control         0, 0, 1, 91, 65
    else                    0, off_1B4C

off_1B44:
    sce_bgm_control         0, 0, 1, 1, 65
    nop
    nop

off_1B4C:
    break                   0

off_1B4E:
    case                    0, off_1B5C, 5
    sce_bgm_control         0, 0, 1, 91, 65
    break                   0

off_1B5C:
    case                    0, off_1B7E, 6
    if                      0, off_1B74
    ck                      5, 8, 0
    sce_bgm_control         0, 0, 1, 91, 65
    else                    0, off_1B7C

off_1B74:
    sce_bgm_control         0, 0, 1, 1, 65
    nop
    nop

off_1B7C:
    break                   0

off_1B7E:
    case                    0, off_1BA0, 7
    if                      0, off_1B96
    ck                      5, 8, 0
    sce_bgm_control         0, 0, 1, 91, 65
    else                    0, off_1B9E

off_1B96:
    sce_bgm_control         0, 0, 1, 1, 65
    nop
    nop

off_1B9E:
    break                   0

off_1BA0:
    eswitch                 0

off_1BA2:
    do                      0, off_1BAE
    evt_next
    nop
    edwhile                 off_1BAE
    ck                      1, 11, 0

off_1BAE:
    goto                    255, 255, 0, off_1AF4
    evt_end                 0
    db                      0x00, 0x00
