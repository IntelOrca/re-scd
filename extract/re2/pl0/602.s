.version 2
.init
.proc init_00
    if                      0, off_0896
    ck                      4, 145, 1
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20476, -3492, 1410, 5080, -21113, 0, -23396, -2048, 5, 1, 0, 0, 39, 0, 0, 0, UNLOCKED, 0
    else                    0, off_08AC

off_0896:
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20476, -3492, 1410, 5080, 9, 0, 0, 0, 255, 255
    nop
    nop

off_08AC:
    door_aot_se             4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13436, -23732, 5900, 1080, -23437, -5400, -4400, 4712, 5, 3, 0, 3, 38, 0, 0, 0, UNLOCKED, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, -11282, 0, -583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 0, -10324, -18000, -9930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, -10214, 0, -15119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main_00
    if                      0, off_0990
    ck                      4, 254, 1
    set                     3, 106, 0
    set                     34, 43, 1
    set                     7, 17, 0
    endif
    nop

off_0990:
    gosub                   21
    if                      0, off_0ABE
    ck                      1, 1, 1
    if                      0, off_0AA2
    ck                      34, 43, 1
    if                      0, off_0A4C
    ck                      3, 106, 0
    sce_em_set              0, 0, ENEMY_ANNETTEBIRKIN1, 0, 8, 0, 0, 0, 255, 10817, 0, 7278, 1032, 777, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -25039, -18000, -9116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_em_set              0, 1, ENEMY_TYRANT1, 2, 64, 0, 18, 0, 17, 10324, -7200, -9930, 1024, 0, 0
    item_aot_set            0, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 195, -900, -900, 1800, 1800, ITEM_MAGNUMAMMO, 8, 73, 255, 1
    aot_reset               0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_set                 5, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -13796, -18182, 6460, 4880, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -10324, -5700, -9930
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -10324, -5700, -9930
    else                    0, off_0A9E

off_0A4C:
    if                      0, off_0A9C
    ck                      7, 17, 1
    if                      0, off_0A9A
    ck                      34, 73, 0
    item_aot_set            0, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12200, -12600, 1800, 1800, ITEM_MAGNUMAMMO, 8, 73, 4, 1
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -11300, 0, -11700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0A9A:
    endif
    nop

off_0A9C:
    nop
    nop

off_0A9E:
    else                    0, off_0ABC

off_0AA2:
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -10324, -5700, -9930
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -10324, -5700, -9930
    nop
    nop

off_0ABC:
    endif
    nop

off_0ABE:
    if                      0, off_0ACC
    ck                      7, 17, 1
    set                     5, 0, 1
    endif
    nop

off_0ACC:
    evt_end                 0

.proc main_01
    if                      0, off_0B04
    ck                      1, 1, 1
    if                      0, off_0B02
    ck                      3, 106, 0
    if                      0, off_0B00
    ck                      34, 43, 1
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_0AFE
    member_cmp              0, 9, 0, 5, 0
    set                     3, 106, 1
    evt_exec                255, I_GOSUB, main_03
    endif
    nop

off_0AFE:
    endif
    nop

off_0B00:
    endif
    nop

off_0B02:
    endif
    nop

off_0B04:
    gosub                   24
    if                      0, off_0B28
    ck                      7, 17, 1
    if                      0, off_0B26
    ck                      5, 0, 0
    set                     5, 0, 1
    sce_bgm_control         0, 5, 0, 0, 0
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_0B26:
    endif
    nop

off_0B28:
    evt_end                 0

.proc main_02
    sleep                   10, 151
    aot_reset               0, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 22, 0, 8, 0, 73, 0
    evt_end                 0

.proc main_03
    set                     2, 7, 1
    set                     1, 27, 1
    gosub                   4
    gosub                   5
    gosub                   6
    gosub                   7
    gosub                   8
    gosub                   9
    gosub                   10
    gosub                   11
    gosub                   12
    gosub                   15
    gosub                   16
    gosub                   17
    aot_reset               3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, 0, 0, 255, 255
    aot_reset               1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    sce_bgmtbl_set          0, 2, 6, 8222, 32832
    work_set                WK_PLAYER, 0
    plc_ret
    cut_chg                 2
    cut_auto                1
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_04
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 32, -10458, -21227
    se_on                   2, 266, 0, -10075, -1800, -5574
    sleep                   10, 2
    sce_espr_on             0, 24, 0, 8192, -10546, 0, -11540, 0
    se_on                   2, 267, 0, -10546, 0, -11540
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  255, 2, 0, 1, 0
    sleep                   10, 5
    sce_bgm_control         2, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -10075, -5574
    plc_rot                 0, 200
    gosub                   28
    evt_end                 0

.proc main_05
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10159, 0, -15180
    dir_set                 0, 0, -29528, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10075, 0, -5574
    dir_set                 0, 0, -31792, 0
    work_set                WK_OBJECT, 3
    nop
    super_set               0, 130, 142, 0, 177, 0, 0, 0, 1024
    cut_chg                 2
    evt_next
    nop
    xa_on                   0, 1
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 0
    plc_cnt                 2
    nop
    sleep                   10, 30
    wsleep
    wsleeping
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10159, 0, -15180
    dir_set                 0, 0, -29528, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10098, -100, -6995
    dir_set                 0, 0, 1104, 0
    cut_chg                 5
    evt_next
    nop
    xa_on                   0, 2
    message_on              0, 0, 0, 0, 0
    evt_next
    work_set                WK_ENEMY, 0
    plc_neck                2, 0, -128, 1024, 8, 8
    sleep                   10, 30
    plc_motion              0, 15, 144
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 60, 60
    plc_motion              0, 15, 8
    plc_cnt                 10
    sleep                   10, 40
    plc_motion              0, 19, 16
    plc_cnt                 5
    plc_neck                2, 0, 128, 1024, 32, 32
    sleep                   10, 8
    plc_neck                2, 0, -128, 1024, 32, 32
    sleep                   10, 16
    plc_neck                2, 0, 128, 1024, 32, 32
    sleep                   10, 16
    plc_neck                2, 0, -128, 1024, 32, 32
    sleep                   10, 30
    plc_motion              0, 15, 8
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 30
    plc_neck                2, 0, -360, 1024, 20, 20
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 20, 20
    sleep                   10, 30
    plc_neck                2, 0, 1024, 0, 16, 32
    sleep                   10, 25
    plc_neck                2, 0, -1024, 0, 16, 32
    sleep                   10, 25
    plc_neck                2, 0, 1024, 0, 32, 64
    sleep                   10, 6
    plc_neck                2, 0, -1024, 0, 32, 64
    sleep                   10, 6
    plc_motion              0, 18, 0
    for                     0, off_0D74, 10
    plc_neck                2, 0, -20, 1024, 200, 8
    evt_next
    nop
    plc_neck                2, 0, 20, 1024, 200, 8
    evt_next
    nop
    next                    0

off_0D74:
    for                     0, off_0D9A, 15
    plc_motion              0, 18, 0
    plc_cnt                 18
    plc_neck                2, 0, 128, 1024, 16, 8
    evt_next
    nop
    plc_neck                2, 0, -128, 1024, 8, 8
    evt_next
    nop
    next                    0

off_0D9A:
    plc_motion              0, 17, 0
    plc_neck                5, 1, 0, 0, 200, 200
    wsleep
    wsleeping
    evt_end                 0

.proc main_07
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10159, 0, -15180
    dir_set                 0, 0, -29528, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10714, 0, -7261
    dir_set                 0, 0, 816, 0
    cut_chg                 8
    evt_next
    nop
    xa_on                   0, 3
    message_on              0, 1, 0, 0, 0
    evt_next
    work_set                WK_ENEMY, 0
    plc_neck                2, 0, 0, 1024, 32, 32
    plc_motion              0, 23, 0
    sleep                   10, 42
    plc_motion              0, 16, 0
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 32, 32
    plc_neck                2, 0, 128, 1024, 8, 8
    sleep                   10, 25
    plc_neck                5, 1, 0, 0, 8, 8
    sleep                   10, 25
    plc_motion              0, 16, 144
    sleep                   10, 40
    plc_motion              0, 15, 0
    plc_neck                2, 0, 0, 1024, 8, 8
    sleep                   10, 20
    plc_motion              0, 19, 0
    plc_cnt                 5
    sleep                   10, 5
    plc_neck                2, 0, 0, -128, 32, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_08
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10159, 0, -15180
    dir_set                 0, 0, -29528, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10075, 0, -5574
    dir_set                 0, 0, -31792, 0
    cut_chg                 2
    evt_next
    nop
    xa_on                   0, 4
    message_on              0, 2, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_09
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10159, 0, -15180
    dir_set                 0, 0, -1024, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10714, 0, -7261
    dir_set                 0, 0, 816, 0
    cut_chg                 8
    evt_next
    nop
    xa_on                   0, 5
    message_on              0, 3, 0, 0, 0
    evt_next
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 16
    plc_neck                2, 0, 128, 1024, 16, 4
    sleep                   10, 20
    plc_neck                2, 0, -128, 1024, 16, 4
    sleep                   10, 20
    plc_neck                2, 0, 128, 1024, 16, 4
    sleep                   10, 20
    plc_neck                2, 0, -128, 1024, 16, 4
    sleep                   10, 18
    plc_motion              0, 24, 0
    plc_cnt                 5
    sleep                   10, 42
    plc_motion              0, 15, 16
    plc_cnt                 5
    plc_neck                5, 1, 0, 0, 32, 32
    sleep                   10, 50
    plc_motion              0, 16, 16
    sleep                   10, 70
    plc_motion              0, 16, 128
    sleep                   10, 10
    plc_motion              0, 16, 0
    plc_cnt                 20
    sleep                   10, 30
    plc_motion              0, 15, 16
    sleep                   10, 40
    for                     0, off_0F76, 10
    plc_motion              0, 15, 0
    plc_cnt                 18
    plc_neck                2, 0, 128, 1024, 16, 8
    evt_next
    nop
    plc_neck                2, 0, -128, 1024, 8, 8
    evt_next
    nop
    next                    0

off_0F76:
    plc_motion              0, 15, 144
    sleep                   10, 20
    plc_motion              0, 15, 8
    plc_cnt                 10
    plc_neck                5, 1, 0, 0, 64, 64
    wsleep
    wsleeping
    evt_end                 0

.proc main_0A
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10159, 0, -15180
    dir_set                 0, 0, -29528, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10075, 0, -5574
    dir_set                 0, 0, -31792, 0
    cut_chg                 2
    evt_next
    nop
    xa_on                   0, 6
    message_on              0, 4, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 0
    plc_neck                2, 0, 1024, 0, 200, 64
    sleep                   10, 4
    plc_neck                2, 0, -1024, 0, 200, 64
    sleep                   10, 8
    plc_neck                2, 0, 1024, 0, 200, 64
    sleep                   10, 8
    plc_neck                5, 3, 0, 0, 200, 32
    wsleep
    wsleeping
    cut_chg                 5
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10098, -100, -6995
    dir_set                 0, 0, 1104, 0
    evt_next
    nop
    xa_on                   0, 7
    message_on              0, 5, 0, 0, 0
    evt_next
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 0
    plc_neck                2, 0, -1024, 0, 16, 8
    sleep                   10, 10
    plc_neck                2, 0, 1024, 0, 16, 8
    sleep                   10, 28
    plc_neck                5, 1, 0, 0, 32, 32
    sleep                   10, 12
    plc_motion              0, 18, 16
    plc_cnt                 12
    sleep                   10, 25
    plc_motion              0, 16, 0
    sleep                   10, 30
    plc_motion              0, 16, 128
    sleep                   10, 10
    plc_motion              0, 16, 16
    plc_cnt                 20
    sleep                   10, 30
    plc_motion              0, 15, 16
    plc_cnt                 10
    sleep                   10, 40
    plc_motion              0, 16, 16
    sleep                   10, 40
    plc_neck                2, 0, 1024, 0, 16, 32
    sleep                   10, 20
    plc_neck                2, 0, -1024, 0, 16, 32
    sleep                   10, 20
    plc_motion              0, 15, 0
    sleep                   10, 25
    plc_neck                2, 0, -400, 1024, 16, 8
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 32, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_0B
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10195, 0, -16245
    dir_set                 0, 0, -29688, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10075, 0, -5574
    dir_set                 0, 0, -31792, 0
    cut_chg                 6
    evt_next
    nop
    xa_on                   0, 8
    message_on              0, 6, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_neck                2, 0, 1024, 1024, 64, 64
    for                     0, off_1126, 5
    plc_motion              0, 20, 0
    plc_cnt                 8
    sleep                   10, 2
    next                    0

off_1126:
    plc_neck                5, 3, 0, 0, 96, 96
    sleep                   10, 20
    plc_motion              0, 21, 8
    sleep                   10, 10
    plc_motion              0, 22, 0
    plc_cnt                 5
    sleep                   10, 12
    plc_neck                2, 0, 0, 1024, 32, 24
    sleep                   10, 4
    plc_neck                5, 3, 0, 0, 32, 32
    sleep                   10, 12
    plc_motion              0, 18, 0
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 10
    plc_neck                2, 0, -1024, 0, 32, 32
    sleep                   10, 18
    plc_neck                2, 0, 1024, 0, 64, 64
    sleep                   10, 7
    plc_neck                2, 0, -1024, 0, 64, 64
    sleep                   10, 5
    plc_neck                2, 0, 0, 124, 16, 16
    for                     0, off_11BA, 5
    plc_motion              0, 18, 0
    plc_cnt                 18
    sleep                   10, 2
    next                    0

off_11BA:
    plc_motion              0, 20, 0
    sleep                   10, 2
    plc_neck                5, 3, 0, 0, 32, 32
    sleep                   10, 28
    for                     0, off_11E2, 5
    plc_motion              0, 20, 0
    plc_cnt                 28
    sleep                   10, 2
    next                    0

off_11E2:
    wsleep
    wsleeping
    evt_end                 0

.proc main_0C
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10159, 0, -15180
    dir_set                 0, 0, -29528, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10098, -100, -6995
    dir_set                 0, 0, 1104, 0
    cut_chg                 5
    evt_next
    nop
    xa_on                   0, 9
    message_on              0, 7, 0, 0, 0
    evt_next
    work_set                WK_ENEMY, 0
    plc_motion              0, 23, 0
    plc_neck                2, 0, -128, 128, 8, 8
    sleep                   10, 30
    plc_neck                2, 0, 128, 128, 8, 8
    plc_motion              0, 20, 0
    sleep                   10, 30
    plc_neck                2, 0, -128, 128, 8, 8
    sleep                   10, 15
    plc_motion              0, 15, 0
    plc_neck                5, 1, 0, 0, 32, 32
    sleep                   10, 20
    plc_motion              0, 17, 0
    sleep                   10, 25
    plc_motion              2, 9, 0
    plc_neck                2, 0, -128, 128, 64, 64
    sleep                   10, 10
    plc_neck                2, 0, -128, 256, 64, 32
    se_on                   2, 273, 0, -10098, -2100, -6995
    sleep                   10, 5
    plc_neck                2, 0, -128, 128, 64, 32
    wsleep
    wsleeping
    sleep                   10, 30
    evt_end                 0

.proc main_0D
    set                     1, 29, 1
    se_on                   2, 271, 0, -10324, -5700, -9930
    sleep                   10, 5
    set                     1, 29, 0
    sleep                   10, 3
    se_on                   2, 16, 0, -11324, -5700, -11900
    sce_espr_on             0, 25, 0, 5120, -11324, -5700, -11900, 0
    set                     1, 28, 1
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 5120, -10324, -5700, -11800, 0
    sce_espr_on             0, 25, 0, 5120, -11324, -5700, -11900, 0
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 5120, -11000, -5700, -11591, 0
    sce_espr_on             0, 25, 0, 5120, -10324, -5700, -11800, 0
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 5120, -11000, -5700, -11591, 0
    sce_espr_on             0, 25, 0, 5120, -9200, -5700, -11391, 0
    sce_espr_on             0, 25, 0, 5120, -10902, -5700, -11997, 0
    set                     1, 28, 0
    sce_espr_on             0, 25, 0, 5120, -12084, -5700, -13195, 0
    sce_espr_on             0, 25, 0, 5120, -9200, -5700, -11391, 0
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 5120, -9000, -5700, -11991, 0
    sce_espr_on             0, 25, 0, 5120, -12084, -5700, -13195, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 5120, -10184, -5700, -12195, 0
    sce_espr_on             0, 25, 0, 5120, -9000, -5700, -11991, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 5120, -12300, -5700, -12898, 0
    sce_espr_on             0, 25, 0, 5120, -10184, -5700, -12195, 0
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 5120, -12300, -5700, -12898, 0
    sleep                   10, 1
    sce_espr_on             0, 25, 0, 5120, -13184, -5700, -11995, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 5120, -12002, -5700, -13091, 0
    sleep                   10, 1
    sce_espr_on             0, 25, 0, 5120, -9002, -5700, -11091, 0
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 5120, -10100, -5700, -11898, 0
    evt_end                 0

.proc main_0E
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10159, 0, -15180
    dir_set                 0, 0, -29528, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10714, 0, -7261
    dir_set                 0, 0, 816, 0
    cut_chg                 8
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_0D
    xa_on                   0, 10
    message_on              0, 8, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_neck                2, 0, 0, -1024, 32, 200
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, 0, -1024, 32, 200
    sleep                   10, 30
    plc_neck                2, 0, -1024, -1024, 64, 32
    sleep                   10, 5
    plc_neck                2, 0, 1024, -1024, 64, 32
    sleep                   10, 5
    plc_neck                2, 0, -1024, -1024, 64, 32
    work_set                WK_ENEMY, 0
    plc_motion              1, 1, 0
    nop
    sleep                   10, 5
    plc_stop
    nop
    wsleep
    wsleeping
    evt_exec                255, I_GOSUB, main_12
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              1, 1, 0
    nop
    plc_neck                2, 0, 0, 0, 200, 200
    sleep                   10, 5
    plc_stop
    work_set                WK_ENEMY, 0
    plc_motion              1, 1, 0
    plc_neck                2, 0, 0, 0, 200, 200
    sleep                   10, 5
    plc_stop
    nop
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    plc_motion              1, 1, 144
    plc_cnt                 29
    nop
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 32, -10589, -3030
    evt_end                 0

.proc main_0F
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_13
    sleep                   10, 3
    cut_chg                 7
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10214, 0, -13527
    dir_set                 0, 0, 3275, 0
    plc_neck                5, 3, 1, 0, 96, 96
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10075, 0, -5574
    dir_set                 0, 0, -31792, 0
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 1, 0
    pos_set                 0, -10214, 0, -15119
    dir_set                 0, 0, 0, 0
    sleep                   10, 10
    set                     1, 29, 1
    se_on                   2, 269, 0, -10214, 0, -15119
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  255, 5, 0, 1, 0
    nop_8c                  0, 255, 50, 15, 0, 6, 0
    nop_8c                  0, 50, 0, 35, 0, 21, 0
    sleep                   10, 5
    set                     1, 29, 0
    sce_bgm_control         2, 2, 0, 0, 0
    sce_bgm_control         0, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -10686, -22432
    plc_rot                 0, 200
    work_set                WK_ENEMY, 0
    plc_motion              1, 1, 0
    plc_cnt                 10
    plc_stop
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    nop
    dir_set                 0, 0, 1024, 0
    plc_motion              1, 1, 0
    plc_cnt                 10
    sleep                   10, 5
    plc_stop
    nop
    sleep                   10, 30
    evt_end                 0

.proc main_10
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10718, 0, -11895
    dir_set                 0, 0, 1024, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -10277, 0, -7093
    dir_set                 0, 0, 816, 0
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -10355, 0, -14147
    cut_chg                 1
    sleep                   10, 10
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 8, 35, -10848, -158
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 35, -10848, -158
    plc_rot                 0, 200
    sleep                   10, 15
    evt_end                 0

.proc main_11
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 1, 0, 32, 32
    sleep                   10, 10
    plc_dest                0, 8, 32, -10539, 296
    sleep                   10, 15
    work_set                WK_ENEMY, 1
    nop
    member_set              24, 1, 0
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 6, 35, -10848, -158
    pos_set                 0, 0, 0, 0
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 0, 200, 200
    evt_end                 0

.proc main_12
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -10324, -5700, -9930
    dir_set                 0, 0, 0, 0
    save                    5, 0
    for                     0, off_1704, 8
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 180
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_1704:
    member_set              12, 0, 0
    se_on                   2, 270, 0, -10324, -5700, -9930
    member_set              16, 10, 0
    evt_next
    set                     1, 28, 1
    nop
    member_set              16, 0, 0
    evt_next
    nop
    member_set              16, 246, 255
    evt_next
    nop
    member_set              16, 5, 0
    evt_next
    nop
    member_set              16, 0, 0
    evt_next
    nop
    member_set              16, 251, 255
    evt_next
    set                     1, 28, 0
    nop
    sce_espr_on             0, 25, 0, 5120, -9324, -5700, -12903, 0
    member_set              16, 0, 0
    evt_next
    nop
    member_set              16, 2, 0
    evt_next
    nop
    sce_espr_on             0, 25, 0, 5120, -13324, -5700, -12830, 0
    sce_espr_on             0, 25, 0, 5120, -9324, -5700, -11903, 0
    member_set              16, 0, 0
    evt_next
    nop
    member_set              16, 254, 255
    evt_next
    nop
    member_set              16, 0, 0
    sce_espr_on             0, 25, 0, 5120, -13324, -5700, -11830, 0
    sleep                   10, 4
    sce_espr_on             0, 25, 0, 5120, -11324, -5700, -10783, 0
    evt_end                 0

.proc main_13
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -10214, -5700, -15119
    dir_set                 0, 0, 0, 0
    save                    5, 0
    for                     0, off_17EE, 8
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 180
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_17EE:
    member_set              12, 0, 0
    member_set              16, 10, 0
    evt_next
    set                     1, 28, 1
    nop
    member_set              16, 0, 0
    evt_next
    nop
    member_set              16, 246, 255
    evt_next
    nop
    member_set              16, 5, 0
    evt_next
    nop
    member_set              16, 0, 0
    evt_next
    nop
    member_set              16, 251, 255
    evt_next
    set                     1, 28, 0
    nop
    member_set              16, 0, 0
    evt_next
    nop
    member_set              16, 2, 0
    evt_next
    nop
    member_set              16, 0, 0
    evt_next
    nop
    member_set              16, 254, 255
    evt_next
    nop
    member_set              16, 0, 0
    evt_end                 0

.proc main_14
    do                      0, off_1848
    evt_next
    nop
    edwhile                 off_1848
    ck                      5, 35, 0

off_1848:
    evt_end                 0

.proc main_15
    if                      0, off_185A
    cmp                     0, 27, CMP_EQ, 1536
    evt_exec                255, I_GOSUB, main_19
    endif
    nop

off_185A:
    save                    6, 16
    gosub                   24
    if                      0, off_187E
    ck                      4, 145, 1
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20476, -3492, 1410, 5080, 255, 0, I_GOSUB, main_16, 0, 0
    endif
    nop

off_187E:
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13436, -23732, 5900, 1080, 255, 0, I_GOSUB, main_17, 0, 0
    evt_end                 0

.proc main_16
    aot_on                  3
    evt_end                 0

.proc main_17
    aot_on                  4
    evt_end                 0

.proc main_18
    if                      0, off_1934
    work_copy               6, 4, 1
    cmp                     0, 26, CMP_NE, 0
    switch                  26, off_192E
    case                    0, off_18BC, 0
    sce_bgm_control         1, 0, 1, 60, 64
    break                   0

off_18BC:
    case                    0, off_18CA, 1
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_18CA:
    case                    0, off_18D8, 2
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_18D8:
    case                    0, off_18E6, 3
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_18E6:
    case                    0, off_18F4, 4
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_18F4:
    case                    0, off_1902, 5
    sce_bgm_control         1, 0, 1, 40, 20
    break                   0

off_1902:
    case                    0, off_1910, 6
    sce_bgm_control         1, 0, 1, 60, 64
    break                   0

off_1910:
    case                    0, off_191E, 7
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_191E:
    case                    0, off_192C, 8
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_192C:
    eswitch                 0

off_192E:
    copy                    6, 26
    nop
    endif
    nop

off_1934:
    evt_end                 0

.proc main_19
    evt_next
    set                     2, 7, 1
    set                     1, 27, 1
    cut_chg                 3
    work_set                WK_PLAYER, 0
    pos_set                 0, -10105, -6000, -583
    dir_set                 0, 0, -1912, 0
    plc_motion              0, 15, 0
    evt_exec                255, I_GOSUB, main_1B
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_1A
    save                    4, 0
    for                     0, off_198C, 10
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 4
    member_set2             12, 16
    nop
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    4, 16
    nop
    evt_next
    nop
    next                    0

off_198C:
    plc_motion              0, 16, 0
    se_on                   2, 29, 0, -10105, 0, -583
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  255, 5, 0, 0, 0
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 4
    member_set2             12, 16
    nop
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    4, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 4
    member_set2             12, 16
    nop
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    4, 16
    nop
    evt_next
    nop
    pos_set                 0, -10105, 0, -583
    sleep                   10, 25
    plc_neck                2, 0, 0, -1024, 96, 96
    sleep                   10, 23
    plc_motion              0, 17, 0
    sleep                   10, 30
    plc_neck                2, 0, 0, 128, 16, 16
    plc_motion              0, 17, 128
    sleep                   10, 20
    se_on                   2, 12, 0, -10214, 0, -15119
    sleep                   10, 10
    plc_neck                2, 0, 0, 0, 96, 96
    sleep                   10, 20
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 20
    plc_neck                2, 0, -1024, 0, 32, 32
    sleep                   10, 20
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 40
    plc_dest                0, 9, 32, -5000, -367
    plc_rot                 0, 200
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 40
    plc_neck                2, 0, 0, -1024, 32, 32
    sleep                   10, 40
    sce_bgm_control         1, 2, 0, 0, 0
    evt_next
    movie_on                7
    evt_next
    sce_bgm_control         1, 1, 1, 40, 64
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -5000, -367
    sleep                   10, 8
    plc_dest                0, 6, 32, -5000, -367
    sleep                   10, 30
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_1A
    se_on                   2, 16, 0, -10105, -6000, -583
    sce_espr_on             0, 25, 0, 4096, -10105, -6000, -583, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 4096, -10105, -6000, -583, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 4096, -11105, -6000, -583, 0
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 4096, -11105, -6000, -583, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 4096, -9305, -6000, -1583, 0
    sleep                   10, 4
    evt_end                 0

.proc main_1B
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -10805, -5700, -583
    dir_set                 0, 0, 0, 0
    save                    5, 0
    for                     0, off_1B8A, 9
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 40
    member_set2             16, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_1B8A:
    for                     0, off_1BBC, 2
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 80
    member_set2             16, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_1BBC:
    se_on                   2, 270, 0, -10805, -5700, -583
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  250, 5, 0, 0, 0
    nop_8c                  0, 200, 50, 10, 0, 5, 0
    member_set              12, 0, 0
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 50
    member_set2             11, 16
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 80
    member_set2             16, 16
    nop
    evt_next
    nop
    save                    5, -320
    for                     0, off_1C42, 6
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 50
    member_set2             11, 16
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 80
    member_set2             16, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_1C42:
    for                     0, off_1C82, 2
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 40
    member_set2             11, 16
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 80
    member_set2             16, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_1C82:
    member_set              16, 0, 0
    member_set              12, 0, 0
    evt_next
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 80
    member_set2             16, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 10
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 0
    member_set2             16, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 10
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 80
    member_set2             16, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 10
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 40
    member_set2             16, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 0
    member_set2             16, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 40
    member_set2             16, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 20
    member_set2             16, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 2
    member_set2             11, 16
    nop
    evt_next
    nop
    member_set              16, 0, 0
    evt_end                 0

.proc main_1C
    do                      0, off_1D70
    evt_next
    nop
    edwhile                 off_1D70
    ck                      5, 32, 0

off_1D70:
    evt_end                 0
    db                      0xC8, 0xC8
