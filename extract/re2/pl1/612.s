.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26988, -15799, 1800, 2000, 1772, 0, -14819, 2048, 5, 20, 0, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16652, -27286, 2900, 1600, -14434, 0, 3227, 1008, 5, 22, 6, 0, 37, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    gosub                   13
    if                      0, off_1378
    ck                      1, 1, 1
    if                      0, off_1374
    ck                      34, 43, 1
    ck                      3, 133, 0
    aot_set_4p              5, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -21100, -4500, -18670, -2600, -13300, -9000, -15600, -10600, 255, 0, I_GOSUB, main_03, 0, 0
    sce_em_set              0, 0, ENEMY_ANNETTEBIRKIN1, 0, 72, 0, 0, 0, 255, 0, -20000, 0, 1500, 770, 4
    sce_em_set              0, 255, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 64, 10, 0, 0, 255, -12400, 0, -19880, 1024, 770, 4
    sce_em_set              0, 1, ENEMY_TYRANT1, 7, 64, 10, 18, 128, 255, -12307, 0, -15850, 1024, 0, 0
    obj_model_set           15, 0, 0, 0, 0, 0, 0, 10, 18, -15952, -6949, -16333, 960, 832, 1792, 0, 0, 0, 0, 0, 0, 0, 0
    set                     3, 134, 1
    endif
    nop

off_1374:
    else                    0, off_143C

off_1378:
    if                      0, off_143A
    ck                      3, 67, 1
    ck                      3, 132, 0
    aot_set                 5, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -26630, -12540, 6670, 1650, 255, 0, I_GOSUB, main_02, 0, 0
    sce_em_set              0, 0, ENEMY_LEONKENNEDYRPD, 0, 64, 3, 0, 0, 255, -3325, -5400, -3861, 2042, 770, 4
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    obj_model_set           13, 0, 0, 0, 0, 0, 0, 10, 16, 0, -20000, 0, 384, 0, 3776, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           14, 0, 0, 0, 0, 0, 0, 10, 16, 0, -20000, 0, 384, 0, 3776, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           15, 0, 0, 0, 0, 0, 0, 10, 18, -4624, -10761, -5176, -1088, -832, 1792, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_143A:
    nop
    nop

off_143C:
    if                      0, off_1484
    ck                      3, 134, 0
    if                      0, off_146A
    ck                      4, 165, 0
    aot_set_4p              6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28790, -8700, -25770, -5900, -22600, -8300, -25000, -10800, 255, 0, I_GOSUB, main_0E, 0, 0
    endif
    nop

off_146A:
    sce_espr3d_on2          0, 22, 10, 0, 0, 0, 18, 186, 160, 86, 248, 238, 219, 0, 0, 0, 4, 0, 0, 0, 0
    else                    0, off_14A2

off_1484:
    aot_set_4p              6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28790, -8700, -25770, -5900, -22600, -8300, -25000, -10800, 18, 0, 0, 0, 255, 239
    nop
    nop

off_14A2:
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    set                     3, 132, 1
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    set                     2, 7, 1
    set                     1, 27, 1
    nop
    se_on                   2, 269, 0, -19500, -3000, -1700
    sleep                   10, 10
    se_on                   2, 269, 0, -19500, -3000, -1700
    sleep                   10, 10
    se_on                   2, 269, 0, -19500, -3000, -1700
    plc_neck                1, -25000, -20000, -5550, 64, 64
    sleep                   10, 10
    se_on                   2, 269, 0, -19500, -3000, -1700
    sleep                   10, 50
    plc_dest                0, 4, 32, -19200, -6600
    gosub                   8
    cut_chg                 6
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -25200, -7700
    gosub                   8
    work_set                WK_ENEMY, 0
    plc_motion              0, 27, 0
    nop
    sleep                   10, 30
    cut_chg                 11
    sce_espr_on2            10, 48, 0, 0, 0, 0, 16, 77, 242, 148, 223, 178, 238, 0, 0
    plc_neck                1, -5000, -15400, -2850, 32, 0
    sleep                   10, 30
    plc_neck                1, -5700, -15400, -5950, 32, 0
    sleep                   10, 30
    plc_neck                1, -5000, -15400, -4950, 32, 0
    sleep                   10, 10
    sce_espr_kill2          10
    cut_chg                 6
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 64, 64
    plc_dest                0, 9, 32, -23000, -7000
    gosub                   8
    evt_exec                255, I_GOSUB, main_06
    plc_motion              0, 27, 17
    sleep                   10, 20
    se_on                   2, 267, 1, 0, 0, 0
    plc_motion              0, 28, 17
    sleep                   10, 20
    xa_on                   0, 29
    sleep                   10, 2
    message_on              0, 7, 0, 0, 0
    wsleep
    wsleeping
    evt_exec                255, I_GOSUB, main_0C
    sleep                   10, 5
    cut_chg                 11
    work_set                WK_ENEMY, 0
    nop
    sleep                   10, 20
    plc_motion              0, 34, 1
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_07
    plc_neck                0, 0, 0, 0, 64, 64
    plc_motion              0, 32, 17
    sleep                   10, 20
    xa_on                   0, 30
    sleep                   10, 2
    message_on              0, 8, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 5
    xa_on                   0, 31
    sleep                   10, 2
    message_on              0, 9, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    sleep                   10, 10
    sleep                   10, 10
    plc_neck                1, -5000, -15400, -2850, 96, 96
    sleep                   10, 30
    plc_neck                1, -5700, -15400, -5950, 64, 64
    sleep                   10, 30
    plc_neck                1, -5000, -15400, -4950, 96, 96
    sleep                   10, 10
    wsleep
    wsleeping
    cut_chg                 6
    sleep                   10, 5
    xa_on                   0, 34
    sleep                   10, 2
    message_on              0, 12, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                0, 0, 0, 0, 64, 64
    wsleep
    wsleeping
    cut_chg                 11
    sleep                   10, 5
    xa_on                   0, 32
    sleep                   10, 2
    message_on              0, 10, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 6
    sleep                   10, 5
    xa_on                   0, 33
    sleep                   10, 2
    message_on              0, 11, 0, 0, 0
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 10
    plc_motion              0, 27, 145
    sleep                   10, 20
    se_on                   2, 267, 1, 0, 0, 0
    sleep                   10, 20
    work_set                WK_OBJECT, 13
    nop
    super_reset             0, -1088, 0, -1856
    pos_set                 0, 0, -20000, 0
    work_set                WK_OBJECT, 15
    nop
    pos_set                 0, 0, -20000, 0
    cut_chg                 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    set                     5, 1, 1
    evt_end                 0

.proc main_03
    sce_bgm_control         0, 2, 1, 100, 64
    sce_bgm_control         0, 2, 2, 100, 64
    sce_bgm_control         0, 2, 3, 100, 64
    sce_bgm_control         1, 1, 1, 100, 64
    sce_bgm_control         1, 1, 2, 100, 64
    sce_bgm_control         1, 1, 3, 100, 64
    set                     3, 133, 1
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    pos_set                 0, -10070, 0, -6190
    dir_set                 0, 0, 2100, 0
    se_on                   2, 268, 3, 0, 0, 0
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -12516, -6800
    gosub                   8
    plc_neck                5, 3, 0, 0, 148, 206
    plc_motion              1, 1, 0
    sleep                   10, 5
    plc_motion              0, 13, 0
    sleep                   10, 25
    work_set                WK_ENEMY, 0
    plc_motion              10, 37, 0
    nop
    sleep                   10, 60
    cut_chg                 7
    work_set                WK_PLAYER, 0
    plc_motion              0, 23, 0
    work_set                WK_ENEMY, 0
    pos_set                 0, -11475, 0, -6408
    dir_set                 0, 0, 2600, 0
    sleep                   10, 5
    xa_on                   0, 41
    sleep                   10, 2
    message_on              0, 1, 0, 0, 0
    wsleep
    wsleeping
    xa_on                   0, 35
    sleep                   10, 2
    message_on              0, 2, 0, 0, 0
    plc_motion              0, 38, 0
    wsleep
    wsleeping
    plc_motion              0, 37, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -19145, 0, -6000
    dir_set                 0, 0, 4100, 0
    cut_chg                 6
    sleep                   10, 5
    plc_neck                1, -17000, 20000, -6150, 32, 24
    sleep                   10, 50
    plc_neck                4, 3, 0, 0, 64, 64
    sleep                   10, 30
    xa_on                   0, 36
    sleep                   10, 2
    message_on              0, 3, 0, 0, 0
    plc_motion              0, 17, 0
    sleep                   10, 25
    plc_motion              0, 20, 0
    sleep                   10, 35
    plc_motion              0, 26, 0
    wsleep
    wsleeping
    cut_chg                 1
    work_set                WK_ENEMY, 0
    nop
    dir_set                 0, 0, 1880, 0
    sleep                   10, 5
    xa_on                   0, 37
    sleep                   10, 2
    message_on              0, 4, 0, 0, 0
    sleep                   10, 15
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    plc_dest                0, 5, 33, -20600, -6550
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 7, 32, -20300, -7900
    gosub                   10
    wsleep
    wsleeping
    evt_exec                255, I_GOSUB, main_04
    cut_chg                 6
    work_set                WK_ENEMY, 0
    plc_motion              0, 31, 0
    nop
    sleep                   10, 5
    plc_motion              0, 36, 0
    sleep                   10, 10
    plc_motion              0, 36, 0
    sleep                   10, 10
    plc_motion              0, 36, 0
    sleep                   10, 5
    plc_motion              0, 31, 0
    sleep                   10, 5
    cut_chg                 6
    work_set                WK_ENEMY, 0
    nop
    plc_neck                1, -25000, -20000, -5550, 64, 64
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -25000, -20000, -5550, 64, 64
    sleep                   10, 10
    cut_chg                 10
    evt_exec                255, I_GOSUB, main_0C
    se_vol                  0
    work_set                WK_SPLAYER, 255
    nop
    plc_dest                0, 5, 34, -12000, -23500
    sleep                   10, 30
    cut_chg                 6
    sleep                   10, 5
    xa_on                   0, 38
    sleep                   10, 2
    message_on              0, 5, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 10
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 1, 0
    work_set                WK_SPLAYER, 255
    nop
    dir_set                 0, 0, 3072, 0
    sleep                   10, 30
    dir_set                 0, 0, 3072, 0
    plc_dest                0, 7, 34, -12000, -27000
    sleep                   10, 50
    cut_chg                 6
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 2, 0
    sleep                   10, 5
    xa_on                   0, 39
    wsleep
    wsleeping
    se_vol                  0
    cut_chg                 1
    work_set                WK_ENEMY, 0
    nop
    plc_neck                0, 0, 0, 0, 64, 64
    plc_dest                0, 5, 33, -10800, -5450
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 148, 206
    plc_dest                0, 9, 32, -14616, -6600
    gosub                   8
    plc_motion              0, 16, 0
    xa_on                   0, 41
    sleep                   10, 2
    message_on              0, 1, 0, 0, 0
    sleep                   10, 15
    work_set                WK_ENEMY, 0
    plc_motion              0, 25, 0
    nop
    sleep                   10, 20
    plc_stop
    nop
    wsleep
    wsleeping
    xa_on                   0, 40
    sleep                   10, 2
    message_on              0, 6, 0, 0, 0
    wsleep
    wsleeping
    plc_stop
    nop
    plc_neck                0, 0, 0, 0, 64, 64
    plc_motion              0, 25, 16
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_05
    sleep                   10, 50
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    set                     5, 1, 1
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, 0, -20000, 0
    work_set                WK_SPLAYER, 255
    nop
    pos_set                 0, 0, -20000, 0
    work_set                WK_OBJECT, 15
    nop
    pos_set                 0, 0, -20000, 0
    evt_end                 0

.proc main_04
    se_on                   2, 266, 0, -20800, 0, 6440
    sleep                   10, 20
    se_on                   2, 266, 0, -20800, 0, 6440
    sleep                   10, 10
    se_on                   2, 266, 0, -20800, 0, 6440
    sleep                   10, 5
    se_on                   2, 266, 0, -20800, 0, 6440
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 33, -9500, -8350
    gosub                   10
    pos_set                 0, 0, -20000, 0
    evt_end                 0

.proc main_06
    work_set                WK_OBJECT, 13
    nop
    super_set               0, 64, 142, 32, 218, 18, -1088, 0, -1856
    evt_end                 0

.proc main_07
    work_set                WK_OBJECT, 14
    nop
    super_set               0, 130, 142, 32, 218, 18, -1088, 0, -1856
    evt_end                 0

.proc main_08
    do                      0, off_1AA2
    evt_next
    nop
    edwhile                 off_1AA2
    ck                      5, 32, 0

off_1AA2:
    evt_end                 0

.proc main_09
    do                      0, off_1AB0
    evt_next
    nop
    edwhile                 off_1AB0
    ck                      5, 33, 0

off_1AB0:
    evt_end                 0

.proc main_0A
    do                      0, off_1ABE
    evt_next
    nop
    edwhile                 off_1ABE
    ck                      5, 33, 0

off_1ABE:
    evt_end                 0

.proc main_0B
    do                      0, off_1ACC
    evt_next
    nop
    edwhile                 off_1ACC
    ck                      5, 34, 0

off_1ACC:
    evt_end                 0

.proc main_0C
    save                    4, 30
    do                      0, off_1BDC
    if                      0, off_1BD4
    cmp                     0, 26, CMP_GE, 10
    light_kido_set          0, 5000
    sce_line_start          1, 1, 0
    work_copy               4, 1, 0
    sce_line_main           0, 255, 255, 0, 0
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 254, 255, 0, 0
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 253, 255, 0, 0
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 252, 255, 0, 0
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 251, 255, 0, 0
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 252, 255, 0, 0
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 253, 255, 0, 0
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 254, 255, 0, 0
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 255, 255, 0, 0
    sce_line_end
    nop
    copy                    16, 4
    nop
    calc                    0, OP_SUB, 16, 6
    copy                    4, 16
    nop
    if                      0, off_1BD2
    cmp                     0, 4, CMP_GE, 210
    save                    4, 30
    endif
    nop

off_1BD2:
    endif
    nop

off_1BD4:
    evt_next
    nop
    edwhile                 off_1BDC
    ck                      5, 1, 0

off_1BDC:
    evt_end                 0

.proc main_0D
    obj_model_set           0, 0, 130, 1, 15, 0, 0, 10, 18, -22150, -7884, -6615, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 130, 1, 15, 0, 0, 10, 18, -23086, -4176, -7636, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 130, 2, 15, 0, 0, 10, 18, -22025, -4176, -6574, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 130, 1, 15, 0, 0, 10, 18, -25224, -5412, -9760, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 130, 2, 15, 0, 0, 10, 18, -24226, -5418, -8715, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 130, 1, 15, 0, 0, 10, 18, -23116, -2970, -7662, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 130, 1, 15, 0, 0, 10, 18, -24167, -6649, -8708, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           7, 0, 130, 1, 15, 0, 0, 10, 18, -25136, -2970, -9710, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           8, 0, 130, 1, 15, 0, 0, 10, 18, -21004, -2970, -5549, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           9, 0, 130, 1, 15, 0, 0, 10, 18, -21036, -5412, -5562, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           10, 0, 130, 1, 15, 0, 0, 10, 18, -22050, -6660, -6624, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           11, 0, 0, 0, 0, 0, 0, 10, 16, -22622, -1459, -18360, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25801, -17916, 1660, 1350, 11, 0, 0, 0, 0, 0
    aot_set                 2, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23672, -17241, 2110, 1400, 11, 0, 12, 0, 0, 0
    evt_end                 0

.proc main_0E
    set                     2, 7, 1
    message_on              0, 0, 0, 255, 239
    sleep                   10, 1
    if                      0, off_1E48
    ck                      11, 31, 0
    se_on                   2, 266, 4, 0, 0, 0
    if                      0, off_1E08
    ck                      1, 1, 1
    set                     33, 13, 1
    set                     33, 14, 1
    set                     33, 15, 1
    endif
    nop

off_1E08:
    set                     33, 16, 1
    set                     33, 17, 1
    if                      0, off_1E26
    ck                      1, 1, 1
    set                     35, 13, 1
    set                     35, 14, 1
    set                     35, 15, 1
    endif
    nop

off_1E26:
    set                     35, 16, 1
    set                     35, 17, 1
    set                     4, 165, 1
    aot_reset               6, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    message_on              0, 14, 0, 255, 239
    sleep                   10, 1
    endif
    nop

off_1E48:
    set                     2, 7, 0
    evt_end                 0

.proc main_0F
    set                     2, 7, 1
    message_on              0, 15, 0, 255, 239
    sleep                   10, 1
    if                      0, off_1E8E
    ck                      11, 31, 0
    se_on                   2, 266, 4, 0, 0, 0
    set                     4, 164, 1
    if                      0, off_1E82
    ck                      1, 1, 0
    set                     29, 14, 1
    endif
    nop

off_1E82:
    aot_reset               7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 16, 0, 0, 0, 255, 239
    endif
    nop

off_1E8E:
    set                     2, 7, 0
    evt_end                 0
