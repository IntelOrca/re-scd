.version 2
.init
.proc init_00
    if                      0, off_251E
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_251E:
    if                      0, off_2538
    ck                      4, 254, 1
    set                     4, 72, 0
    set                     8, 93, 0
    set                     4, 102, 0
    set                     4, 7, 1
    endif
    nop

off_2538:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -16284, -28129, 4890, 1650, 13630, -5400, -10264, 1120, 0, 3, 10, 3, 12, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27214, -18759, 1860, 3280, -15773, 0, -21630, 2040, 1, 1, 0, 0, 13, 3, 0, 0, UNLOCKED, 0
    if                      0, off_25D2
    ck                      1, 1, 0
    if                      0, off_25AC
    ck                      4, 7, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -26464, -4289, 1430, 3660, -6330, 0, -10623, 1880, 1, 2, 0, 0, 13, 0, 0, 0, UNLOCKED, 0
    else                    0, off_25CE

off_25AC:
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -26464, -4289, 1430, 3660, -6330, 0, -10623, 1880, 1, 2, 0, 0, 13, 0, 0, 143, LOCKED, 0
    nop
    nop

off_25CE:
    else                    0, off_25F4

off_25D2:
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -26464, -4289, 1430, 3660, -6330, 0, -10623, 1880, 1, 2, 0, 0, 13, 0, 0, 143, LOCKED, 0
    nop
    nop

off_25F4:
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -2274, -25419, 1850, 2210, -15554, 0, -15268, -40, 1, 10, 0, 0, 13, 0, 0, 0, UNLOCKED, 0
    aot_set                 5, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -12549, -4749, 2840, 2380, 1, 0, 0, 0, 0, 0
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -17138, 3235, 2500, 920, 1, 0, 0, 0, 255, 255
    if                      0, off_265A
    ck                      4, 72, 0
    aot_set                 13, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -15948, -9485, 4460, 2310, 10, 0, 71, 0, 1, 0
    endif
    nop

off_265A:
    if                      0, off_267C
    ck                      1, 1, 0
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 15948, 9485, 1, 1, ITEM_SPADEKEY, 2, 93, 1, 160
    else                    0, off_2694

off_267C:
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 15948, 9485, 1, 1, ITEM_SPADEKEY, 1, 93, 1, 160
    nop
    nop

off_2694:
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -13778, -1647, -8168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -13712, -1538, -8936, 384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -11699, -4749, 2580, 2380, ITEM_INKRIBBON, 3, 166, 3, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -9931, -3200, -3111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_276C
    ck                      4, 148, 1
    obj_model_set           4, 0, 0, 0, 0, 1, 0, 10, 16, -14344, -1800, 7239, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    door_aot_se             17, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -14789, 6711, 2120, 2390, -13697, -7200, 8942, -872, 0, 16, 5, 4, 22, 4, 0, 0, UNLOCKED, 0
    endif
    nop

off_276C:
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main_00
    if                      0, off_2798
    ck                      1, 6, 1
    gosub                   12
    evt_end                 0
    endif
    nop

off_2798:
    if                      0, off_27B0
    ck                      4, 15, 1
    if                      0, off_27AE
    ck                      1, 1, 1
    set                     4, 33, 1
    endif
    nop

off_27AE:
    endif
    nop

off_27B0:
    if                      0, off_27F8
    ck                      1, 1, 0
    item_aot_set            19, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9794, -569, 1690, 1980, ITEM_HANDGUNAMMO, 30, 152, 5, 0
    obj_model_set           5, 0, 0, 0, 0, 1, 0, 10, 16, -8778, -3250, 463, 0, 576, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_2836

off_27F8:
    item_aot_set            19, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9794, -569, 1690, 1980, ITEM_GRENADELAUNCHEREXPLOSIVE, 6, 152, 6, 0
    obj_model_set           6, 0, 0, 0, 0, 1, 0, 10, 16, -8778, -3250, 663, 0, 576, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_2836:
    gosub                   2
    evt_end                 0

.proc main_01
    if                      0, off_2846
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_2846:
    gosub                   3
    evt_end                 0

.proc main_02
    if                      0, off_2868
    ck                      4, 148, 1
    aot_set                 16, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -14789, 6711, 2120, 2390, 255, 0, I_GOSUB, main_04, 0, 0
    endif
    nop

off_2868:
    aot_set                 8, SCE_WINDOWS, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 1, 1, 0, 0, 15, 0, 0, 0
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -17608, 815, 2720, 2250, 255, 0, I_GOSUB, main_06, 0, 0
    if                      0, off_28B2
    ck                      4, 72, 0
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, 10926, -2000, 8808
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 13771, -1438, 8818
    endif
    nop

off_28B2:
    aot_set                 10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15948, -9485, 4460, 2310, 255, 0, I_GOSUB, main_07, 0, 0
    sce_espr3d_on           0, 21, 0, 6806, -15880, -3630, 1840, 10, -1050, 0, 0
    if                      0, off_28F2
    ck                      4, 6, 0
    cmp                     0, 26, CMP_EQ, 0
    evt_exec                255, I_GOSUB, main_0B
    else                    0, off_28F8

off_28F2:
    set                     4, 6, 1
    nop
    nop

off_28F8:
    if                      0, off_292A
    ck                      4, 102, 0
    if                      0, off_2928
    cmp                     0, 26, CMP_EQ, 4
    if                      0, off_2926
    ck                      1, 1, 0
    if                      0, off_2924
    ck                      4, 7, 1
    set                     4, 102, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_2924:
    endif
    nop

off_2926:
    endif
    nop

off_2928:
    endif
    nop

off_292A:
    if                      0, off_2952
    ck                      4, 70, 0
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_09, 0, 0
    if                      0, off_2950
    ck                      31, 17, 0
    aot_reset               3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0A, 0, 0
    endif
    nop

off_2950:
    endif
    nop

off_2952:
    evt_end                 0

.proc main_03
    if                      0, off_2982
    ck                      4, 72, 0
    if                      0, off_2980
    cmp                     0, 2, CMP_EQ, 71
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_297E
    member_cmp              0, 9, 0, 13, 0
    set                     4, 72, 1
    evt_exec                255, I_GOSUB, main_08
    endif
    nop

off_297E:
    endif
    nop

off_2980:
    endif
    nop

off_2982:
    evt_end                 0

.proc main_04
    message_on              0, 6, 0, 255, 255
    evt_next
    nop
    if                      0, off_2998
    ck                      11, 31, 0
    aot_on                  17
    endif
    nop

off_2998:
    evt_end                 0

.proc main_05
    set                     2, 7, 1
    evt_next
    work_set                WK_PLAYER, 0
    pos_set                 0, -24117, -1800, -1600
    dir_set                 0, 0, 616, 0
    set                     1, 27, 1
    sleep                   10, 2
    se_on                   2, 17, 0, -25233, 0, -17529
    sleep                   10, 10
    plc_neck                1, -29493, -3200, -2721, 32, 32
    sleep                   10, 10
    plc_dest                0, 9, 32, -29493, -2721
    sleep                   10, 30
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    nop
    evt_end                 0

.proc main_06
    set                     2, 7, 1
    message_on              0, 5, 0, 255, 239
    evt_next
    nop
    if                      0, off_2A2C
    ck                      11, 31, 0
    aot_on                  8
    evt_next
    nop
    if                      0, off_2A2A
    ck                      4, 70, 1
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 99, 194, 0, 0, 130, 171
    aot_reset               3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 62, 195, 0, 0, 92, 196
    set                     31, 17, 1
    endif
    nop

off_2A2A:
    endif
    nop

off_2A2C:
    set                     2, 7, 0
    evt_end                 0

.proc main_07
    set                     2, 7, 1
    cut_chg                 13
    if                      0, off_2A4A
    ck                      4, 72, 0
    message_on              0, 0, 0, 255, 255
    else                    0, off_2A6A

off_2A4A:
    if                      0, off_2A60
    ck                      8, 93, 0
    sleep                   10, 30
    aot_on                  9
    set                     2, 7, 1
    else                    0, off_2A68

off_2A60:
    message_on              0, 3, 0, 255, 255
    nop
    nop

off_2A68:
    nop
    nop

off_2A6A:
    evt_next
    cut_chg                 8
    cut_auto                1
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_08
    set                     2, 7, 1
    se_on                   2, 13, 0, -13771, -1438, -8818
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -13712, -1538, -8936
    sce_bgm_control         0, 2, 0, 0, 0
    cut_chg                 14
    evt_next
    movie_on                5
    nop
    do                      0, off_2AAA
    evt_next
    nop
    edwhile                 off_2AAA
    ck                      0, 22, 1

off_2AAA:
    sleep                   10, 2
    aot_reset               13, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    if                      0, off_2ACE
    ck                      1, 1, 0
    aot_reset               9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 89, 0, 2, 0, 93, 0
    else                    0, off_2ADA

off_2ACE:
    aot_reset               9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 89, 0, 1, 0, 93, 0
    nop
    nop

off_2ADA:
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -13950, -5010, -7510
    dir_set                 0, 1152, -1024, 768
    save                    7, 0
    se_on                   2, 14, 0, -13950, -5010, -7510
    for                     0, off_2B3E, 10
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 10
    member_set2             13, 16
    nop
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 7
    member_set2             12, 16
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 100
    member_set2             16, 16
    nop
    copy                    16, 7
    nop
    calc                    0, OP_ADD, 16, 7
    copy                    7, 16
    nop
    evt_next
    nop
    next                    0

off_2B3E:
    for                     0, off_2B70, 8
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             13, 16
    nop
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 7
    member_set2             12, 16
    nop
    copy                    16, 7
    nop
    calc                    0, OP_ADD, 16, 7
    copy                    7, 16
    nop
    evt_next
    nop
    next                    0

off_2B70:
    cut_chg                 13
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -14078, -3530, -8168
    member_set              16, 0, 0
    for                     0, off_2BA6, 10
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 7
    member_set2             12, 16
    nop
    copy                    16, 7
    nop
    calc                    0, OP_ADD, 16, 7
    copy                    7, 16
    nop
    evt_next
    nop
    next                    0

off_2BA6:
    pos_set                 0, -14078, -1647, -8168
    save                    7, -70
    for                     0, off_2C00, 2
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 20
    member_set2             11, 16
    nop
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 7
    member_set2             12, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 68
    member_set2             15, 16
    nop
    member_copy             16, 14
    nop
    calc                    0, OP_SUB, 16, 76
    member_set2             14, 16
    nop
    copy                    16, 7
    nop
    calc                    0, OP_ADD, 16, 10
    copy                    7, 16
    nop
    evt_next
    nop
    next                    0

off_2C00:
    se_on                   2, 15, 0, -13771, -1438, -8818
    for                     0, off_2C5A, 13
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 20
    member_set2             11, 16
    nop
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 7
    member_set2             12, 16
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 68
    member_set2             15, 16
    nop
    member_copy             16, 14
    nop
    calc                    0, OP_SUB, 16, 76
    member_set2             14, 16
    nop
    copy                    16, 7
    nop
    calc                    0, OP_ADD, 16, 10
    copy                    7, 16
    nop
    evt_next
    nop
    next                    0

off_2C5A:
    member_set              15, 156, 255
    evt_next
    nop
    member_set              15, 100, 0
    evt_next
    nop
    member_set              15, 206, 255
    evt_next
    nop
    member_set              15, 50, 0
    evt_next
    nop
    member_set              15, 236, 255
    evt_next
    nop
    member_set              15, 20, 0
    evt_next
    nop
    member_set              15, 246, 255
    evt_next
    nop
    member_set              15, 10, 0
    evt_next
    nop
    dir_set                 0, 0, 0, 0
    sleep                   10, 30
    sce_item_lost           71
    cut_chg                 8
    cut_auto                1
    sce_bgm_control         0, 1, 0, 0, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_09
    set                     2, 7, 1
    se_on                   2, 22, 0, -25233, 0, -17529
    message_on              0, 2, 0, 255, 255
    evt_next
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_0A
    set                     2, 7, 1
    se_on                   2, 22, 0, -2465, -1800, -23977
    message_on              0, 2, 0, 255, 255
    evt_next
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_0B
    set                     2, 7, 1
    cut_chg                 11
    set                     1, 27, 1
    save                    4, 100
    work_copy               4, 2, 1
    sce_scr_move            0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_stop
    work_set                WK_PLAYER, 0
    save                    5, -1800
    work_copy               5, 4, 1
    pos_set                 0, -13885, 0, -23327
    dir_set                 0, 0, 2965, 0
    plc_neck                2, 0, 0, -200, 250, 250
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 0, 2, 2
    for                     0, off_2D74, 105
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    work_copy               4, 2, 1
    sce_scr_move            0, 0
    work_set                WK_PLAYER, 0
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 14
    copy                    5, 16
    nop
    work_copy               5, 4, 1
    pos_set                 0, -13885, 0, -23327
    evt_next
    nop
    next                    0

off_2D74:
    sleep                   10, 30
    cut_chg                 0
    sce_scr_move            0, 0
    cut_auto                1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13541, -1800, -25818
    dir_set                 0, 0, -955, 0
    set                     1, 27, 0
    plc_ret
    set                     4, 6, 1
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_0C
    aot_set                 0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -16284, -28129, 4890, 1650, 7, 0, 0, 0, 255, 255
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27214, -18759, 1860, 3280, -15773, 0, -21630, 2040, 1, 1, 0, 0, 13, 3, 0, 0, UNLOCKED, 0
    aot_set                 2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -26464, -4289, 1430, 3660, 7, 0, 0, 0, 255, 255
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -2274, -25419, 1850, 2210, -15554, 0, -15268, -40, 1, 10, 0, 0, 13, 0, 0, 0, UNLOCKED, 0
    evt_end                 0
    db                      0x00, 0x00
