.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23150, -342, 1800, 1800, -26300, 0, -18000, 0, 5, 19, 0, 0, 37, 0, 0, 151, ITEM_UMBRELLAKEYCARD, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20320, -26352, 1800, 4500, -25600, 0, -12110, 0, 5, 21, 0, 0, 38, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 2110, -16072, 1800, 2400, -25000, 0, -15200, 0, 5, 18, 0, 0, 37, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26950, -520, 2400, 2300, 16, 0, 0, 0, 255, 255
    if                      0, off_0D9C
    ck                      1, 1, 0
    if                      0, off_0D98
    ck                      34, 43, 1
    if                      0, off_0D16
    ck                      3, 66, 0
    sce_em_set              0, 0, ENEMY_ANNETTEBIRKIN2, 0, 8, 0, 0, 0, 255, -22710, 0, -22970, 150, 0, 0
    sce_em_set              0, 1, ENEMY_51, 2, 96, 0, 49, 0, 255, -6600, -9000, -14800, 2048, 0, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -15780, -17070, 1800, 5400, 255, 0, I_GOSUB, main_03, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_124, 1, 33, 255, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_02
    else                    0, off_0D96

off_0D16:
    sce_em_set              0, 0, ENEMY_ANNETTEBIRKIN2, 0, 9, 0, 0, 0, 255, -12300, 900, -15300, 3300, 280, 64
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -15780, -17070, 1800, 5400, 255, 0, I_GOSUB, main_03, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_124, 1, 33, 255, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_0D94
    ck                      3, 67, 1
    aot_reset               4, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_09
    endif
    nop

off_0D94:
    nop
    nop

off_0D96:
    endif
    nop

off_0D98:
    else                    0, off_0DBC

off_0D9C:
    sce_em_set              0, 0, ENEMY_MAGGOTS, 2, 96, 0, 40, 0, 255, -24500, -5400, -5500, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 0, 0
    nop
    nop

off_0DBC:
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -26450, 0, -26350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27200, -27200, 1200, 1200, ITEM_HERBR, 1, 56, 2, 1
    evt_end                 0

.proc main_01
    if                      0, off_0E2A
    ck                      1, 1, 0
    if                      0, off_0E26
    ck                      34, 43, 1
    ck                      3, 66, 1
    ck                      3, 68, 0
    ck                      5, 12, 1
    cmp                     0, 26, CMP_EQ, 2
    set                     3, 68, 1
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_0E26:
    else                    0, off_0E30

off_0E2A:
    evt_exec                255, I_GOSUB, main_0D
    nop
    nop

off_0E30:
    evt_end                 0

.proc main_02
    set                     2, 7, 1
    set                     1, 27, 1
    sce_bgm_control         0, 2, 0, 0, 0
    sleep                   10, 1
    cut_chg                 7
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 130, 142, 10, 150, 0, 0, 0, 1024
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 60, 30
    pos_set                 0, -21060, 0, -23320
    dir_set                 0, 0, 2048, 0
    sleep                   10, 20
    sce_bgm_control         1, 1, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 42
    message_on              0, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              1, 1, 0
    nop
    sleep                   10, 10
    plc_dest                0, 20, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 8
    sleep                   10, 1
    xa_on                   0, 43
    message_on              0, 1, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 18, 0
    nop
    sleep                   10, 19
    se_on                   2, 11, 0, 0, 0, 0
    plc_motion              0, 19, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 9
    sleep                   10, 1
    xa_on                   0, 44
    message_on              0, 2, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 12, 0
    nop
    sleep                   10, 20
    wsleep
    wsleeping
    sleep                   10, 30
    cut_chg                 8
    plc_motion              0, 12, 128
    sleep                   10, 1
    xa_on                   0, 45
    message_on              0, 3, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                1, -21910, 0, -22670, 60, 30
    plc_motion              0, 23, 0
    sleep                   10, 20
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 10
    sleep                   10, 10
    sleep                   10, 30
    plc_motion              0, 19, 20
    sleep                   10, 30
    plc_neck                5, 1, 0, 0, 60, 30
    sleep                   10, 20
    sleep                   10, 30
    sleep                   10, 20
    plc_motion              0, 19, 20
    sleep                   10, 50
    sleep                   10, 30
    sleep                   10, 10
    sleep                   10, 30
    plc_motion              0, 23, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 23, 128
    sleep                   10, 30
    plc_motion              0, 19, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 9
    sleep                   10, 1
    xa_on                   0, 46
    message_on              0, 4, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 12, 0
    nop
    sleep                   10, 30
    plc_motion              0, 12, 128
    sleep                   10, 30
    plc_motion              0, 11, 0
    sleep                   10, 30
    sleep                   10, 30
    plc_motion              0, 11, 128
    sleep                   10, 30
    plc_motion              0, 10, 0
    sleep                   10, 30
    plc_motion              0, 10, 128
    sleep                   10, 30
    sleep                   10, 20
    plc_motion              0, 13, 128
    sleep                   10, 30
    plc_motion              0, 13, 128
    sleep                   10, 30
    plc_motion              0, 10, 0
    plc_neck                1, -22710, 0, -22970, 60, 30
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 8
    sleep                   10, 1
    xa_on                   0, 47
    message_on              0, 5, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 7
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_bgm_control         1, 2, 0, 0, 0
    se_on                   3, 11, 0, 0, 0, 0
    sleep                   10, 30
    sce_bgm_control         2, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -6600, 0, -14800, 60, 30
    work_set                WK_ENEMY, 0
    nop
    plc_neck                1, -6600, 0, -14800, 60, 30
    sleep                   10, 40
    sleep                   10, 1
    xa_on                   0, 48
    message_on              0, 17, 0, 0, 0
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    plc_neck                0, 0, 0, 0, 60, 30
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 35, -20000, -15400
    plc_flg                 1, 4
    gosub                   10
    wsleep
    wsleeping
    cut_chg                 2
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 35, -15000, -15000
    plc_flg                 1, 4
    gosub                   10
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 1, 0
    se_on                   2, 10, 0, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 35, -11000, -15000
    gosub                   10
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 0
    plc_motion              0, 12, 0
    nop
    sleep                   10, 30
    cut_chg                 10
    se_on                   2, 12, 0, 0, 0, 0
    sleep                   10, 60
    cut_chg                 11
    sleep                   10, 1
    xa_on                   0, 49
    message_on              0, 6, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                1, -6600, -4500, -14800, 30, 10
    sleep                   10, 30
    wsleep
    wsleeping
    plc_motion              2, 2, 68
    cut_chg                 10
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 2, 0
    sleep                   10, 45
    cut_chg                 6
    sleep                   10, 1
    xa_on                   0, 50
    work_set                WK_ENEMY, 0
    nop
    plc_neck                0, 0, 0, 0, 60, 30
    pos_set                 0, -12300, 900, -15300
    dir_set                 0, 0, 3300, 0
    plc_motion              0, 24, 4
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 256
    member_set2             7, 16
    nop
    wsleep
    wsleeping
    set                     5, 12, 1
    set                     3, 66, 1
    gosub                   8
    evt_end                 0

.proc main_03
    aot_reset               4, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    set                     1, 27, 1
    sce_bgm_control         0, 2, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                0, 0, 0, 0, 60, 30
    pos_set                 0, -12300, 900, -15300
    dir_set                 0, 0, 3300, 0
    plc_motion              0, 24, 20
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 60, 30
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 4, 33, -13450, -14650
    gosub                   5
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    pos_set                 0, -13450, 0, -14650
    dir_set                 0, 0, 640, 0
    cut_chg                 12
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 20
    wsleep
    wsleeping
    cut_chg                 13
    sleep                   10, 1
    xa_on                   0, 52
    message_on              0, 8, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                1, -13450, 0, -14650, 60, 30
    plc_motion              0, 24, 4
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 12
    sleep                   10, 1
    xa_on                   0, 53
    message_on              0, 9, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 20
    sleep                   10, 30
    plc_motion              0, 16, 128
    sleep                   10, 20
    plc_motion              0, 15, 0
    sleep                   10, 25
    plc_motion              0, 15, 128
    sleep                   10, 25
    wsleep
    wsleeping
    cut_chg                 13
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 130, 142, -8, 365, -75, -1024, -1024, 0
    sleep                   10, 1
    xa_on                   0, 54
    message_on              0, 10, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 25, 0
    nop
    sleep                   10, 20
    plc_dest                0, 20, 0, 0, 0
    wsleep
    wsleeping
    aot_on                  5
    sleep                   10, 1
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 192
    nop
    sleep                   10, 1
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 30
    sleep                   10, 1
    xa_on                   0, 55
    message_on              0, 11, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                1, -13450, 0, -14650, 60, 30
    plc_motion              0, 25, 128
    plc_cnt                 70
    sleep                   10, 20
    plc_motion              0, 24, 4
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 56
    work_set                WK_ENEMY, 0
    nop
    plc_neck                0, 0, 0, 0, 60, 30
    plc_motion              0, 24, 4
    sleep                   10, 50
    plc_motion              0, 25, 0
    evt_exec                255, I_GOSUB, main_0C
    sleep                   10, 90
    plc_neck                2, 0, 1028, -256, 60, 30
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 57
    message_on              0, 13, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 14, 0
    nop
    sleep                   10, 20
    sleep                   10, 30
    wsleep
    wsleeping
    sleep                   10, 30
    cut_chg                 2
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    sleep                   10, 30
    nop_8a                  0, 10, 0, 0, 0
    nop_8b                  180, 10, 0, 5, 0
    nop_8b                  250, 5, 0, 10, 0
    set                     1, 29, 1
    se_on                   2, 13, 0, 0, 0, 0
    sleep                   10, 30
    set                     1, 29, 0
    work_set                WK_PLAYER, 0
    plc_motion              2, 2, 20
    nop
    xa_on                   0, 11
    message_on              0, 14, 0, 0, 0
    sleep                   10, 30
    plc_neck                2, 0, -512, -512, 60, 30
    nop_8a                  0, 10, 0, 0, 0
    nop_8b                  180, 10, 0, 5, 0
    nop_8b                  250, 5, 0, 10, 0
    set                     1, 28, 1
    se_on                   2, 14, 0, 0, 0, 0
    sleep                   10, 30
    plc_neck                2, 0, 512, -512, 60, 30
    set                     1, 28, 0
    sleep                   10, 150
    message_on              0, 15, 0, 0, 0
    sleep                   10, 30
    plc_neck                2, 0, -512, -512, 60, 30
    sleep                   10, 30
    plc_neck                2, 0, 512, -512, 60, 30
    wsleep
    wsleeping
    sce_bgm_control         0, 1, 0, 0, 0
    sce_bgmtbl_set          0, 6, 6, 65297, 0
    sce_bgmtbl_set          0, 7, 6, 65297, 0
    sce_bgmtbl_set          0, 8, 6, 10001, 32768
    sce_bgmtbl_set          0, 9, 6, 65297, 0
    sce_bgmtbl_set          0, 10, 6, 65297, 0
    sce_bgmtbl_set          0, 11, 6, 65297, 0
    sce_bgmtbl_set          0, 12, 6, 65297, 0
    sce_bgmtbl_set          0, 13, 6, 65297, 0
    sce_bgmtbl_set          0, 14, 6, 65297, 0
    sce_bgmtbl_set          0, 15, 6, 65297, 0
    sce_bgmtbl_set          0, 16, 6, 65297, 0
    sce_bgmtbl_set          0, 18, 6, 65297, 0
    sce_bgmtbl_set          0, 19, 6, 65297, 0
    sce_bgmtbl_set          0, 20, 6, 65297, 0
    sce_bgmtbl_set          0, 21, 6, 11537, 32768
    sce_bgmtbl_set          0, 22, 6, 65297, 0
    sce_bgmtbl_set          0, 5, 5, 65297, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -256, 60, 30
    sleep                   10, 30
    plc_neck                2, 0, 0, -512, 60, 30
    set                     3, 67, 1
    gosub                   8
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 3, 0
    sleep                   10, 20
    se_on                   2, 10, 0, 0, 0, 0
    evt_end                 0

.proc main_05
    do                      0, off_1526
    evt_next
    nop
    edwhile                 off_1526
    ck                      5, 33, 0

off_1526:
    evt_end                 0

.proc main_06
    do                      0, off_1534
    evt_next
    nop
    edwhile                 off_1534
    ck                      5, 34, 0

off_1534:
    evt_end                 0

.proc main_07
    do                      0, off_1542
    evt_next
    nop
    edwhile                 off_1542
    ck                      5, 10, 0

off_1542:
    set                     5, 10, 0
    evt_end                 0

.proc main_08
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_09
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    sleep                   10, 1
    kage_set                3, 0, 16, 191, 191, 220, 5, 220, 5, 0, 0, 0, 0
    plc_motion              0, 25, 192
    sleep                   10, 1
    plc_neck                2, 0, 1028, -256, 60, 30
    plc_dest                0, 20, 0, 0, 0
    evt_end                 0

.proc main_0A
    do                      0, off_15A4
    evt_next
    nop
    edwhile                 off_15A4
    ck                      5, 35, 0

off_15A4:
    evt_end                 0

.proc main_0B
    do                      0, off_15B2
    evt_next
    nop
    edwhile                 off_15B2
    ck                      5, 11, 0

off_15B2:
    set                     5, 11, 0
    evt_end                 0

.proc main_0C
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    save                    4, 500
    save                    5, 500
    for                     0, off_160E, 90
    work_copy               5, 12, 1
    work_copy               4, 6, 1
    kage_set                3, 0, 16, 191, 191, 0, 0, 0, 0, 0, 0, 0, 0
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 10
    copy                    4, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 10
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_160E:
    evt_end                 0

.proc main_0D
    if                      0, off_1626
    cmp                     0, 26, CMP_EQ, 5
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    else                    0, off_1648

off_1626:
    if                      0, off_163C
    cmp                     0, 26, CMP_EQ, 4
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    else                    0, off_1646

off_163C:
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 0, 0
    nop
    nop

off_1646:
    nop
    nop

off_1648:
    evt_end                 0
    db                      0x63, 0x63
