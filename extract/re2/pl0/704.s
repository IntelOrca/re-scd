.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20065, -25080, 1800, 3400, -26380, 0, -23095, 0, 6, 3, 4, 0, 42, 2, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27300, -21820, 14500, 2500, 0, 0, 0, 0, 255, 255
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26960, -27175, 2200, 7600, 0, 0, 0, 0, 255, 255
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26960, -27175, 10500, 2500, 0, 0, 0, 0, 255, 255
    aot_set                 1, SCE_FLAG_CHG, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 1480, -27995, 2100, 9000, 5, 0, 1, 0, 1, 0
    if                      0, off_129E
    ck                      4, 137, 1
    aot_set                 10, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -32400, -29800, -7136, 16000, 1, 0, 24, 0, 0, 0
    sce_em_set              0, 0, ENEMY_54, 0, 128, 0, 39, 0, 255, -32000, 0, -32000, 0, 0, 0
    sce_em_set              0, 1, ENEMY_55, 1, 0, 0, 39, 0, 255, -32000, 0, -32000, 0, 0, 0
    sce_em_set              0, 2, ENEMY_55, 0, 0, 0, 39, 0, 255, -32000, 0, -32000, 0, 0, 0
    sce_em_set              0, 3, ENEMY_55, 0, 0, 0, 39, 0, 255, -32000, 0, -32000, 0, 0, 0
    sce_em_set              0, 4, ENEMY_55, 0, 0, 0, 39, 0, 255, -32000, 0, -32000, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, -11990, -4800, -23470, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 0, -32000, 0, -32000, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 0, -32000, 0, -32000, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    cut_replace             3, 8
    cut_replace             2, 13
    evt_exec                9, I_GOSUB, main_02
    evt_exec                6, I_GOSUB, main_0F
    else                    0, off_1388

off_129E:
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -25200, -1440, -23050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 4, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25475, -24452, 1800, 3800, 0, 0, 1, 0, 0, 0
    if                      0, off_12F8
    ck                      1, 4, 0
    aot_set                 5, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22835, -21810, 1800, 1800, 14, 0, 0, 0, 0, 0
    else                    0, off_130E

off_12F8:
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22835, -21810, 1800, 1800, 2, 0, 0, 0, 255, 255
    nop
    nop

off_130E:
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -22175, -1700, -21200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -22675, 0, -24655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22835, -21810, 1800, 1800, ITEM_INKRIBBON, 3, 78, 5, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23335, -25710, 1500, 1400, ITEM_PLATFORMKEY, 1, 79, 6, 193
    nop
    nop

off_1388:
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    aot_reset               1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, 1, 0, 1, 0
    work_set                WK_PLAYER, 0
    nop
    do                      0, off_13A8
    evt_next
    nop
    edwhile                 off_13A8
    member_cmp              0, 11, 2, 144, 232

off_13A8:
    evt_chain               0, 24, 6
    evt_end                 0

.proc main_03
    work_set                WK_OBJECT, 2
    nop
    speed_set               1, 100
    speed_set               0, 400
    speed_set               7, 20
    for                     0, off_13D8, 2
    add_speed
    add_aspeed
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 60
    member_set2             16, 16
    nop
    evt_next
    nop
    next                    0

off_13D8:
    speed_set               2, 150
    speed_set               1, 600
    for                     0, off_13FA, 7
    add_speed
    add_aspeed
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 60
    member_set2             16, 16
    nop
    evt_next
    nop
    next                    0

off_13FA:
    se_on                   2, 10, 516, 0, 0, 0
    speed_set               0, 300
    speed_set               1, -246
    for                     0, off_1426, 3
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 300
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_1426:
    speed_set               1, -186
    for                     0, off_1442, 3
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 248
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_1442:
    speed_set               0, 300
    speed_set               1, 0
    while                   6, off_1466
    member_cmp              0, 11, 4, 52, 234
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 248
    member_set2             16, 16
    nop
    add_speed
    evt_next
    ewhile                  0

off_1466:
    speed_set               2, 0
    speed_set               0, -200
    speed_set               1, -200
    se_on                   2, 11, 516, 0, 0, 0
    for                     0, off_1496, 2
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 56
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_1496:
    speed_set               1, -150
    speed_set               0, -180
    for                     0, off_14B6, 3
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 56
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_14B6:
    speed_set               1, -100
    speed_set               0, -160
    for                     0, off_14D6, 3
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 56
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_14D6:
    speed_set               1, -50
    speed_set               0, -140
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 56
    member_set2             16, 16
    nop
    add_speed
    nop
    sleep                   10, 2
    speed_set               0, -100
    speed_set               1, 50
    speed_set               2, -10
    member_set              12, 60, 246
    for                     0, off_151A, 2
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 30
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_151A:
    speed_set               0, -60
    speed_set               1, 100
    speed_set               2, -30
    for                     0, off_153E, 4
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 30
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_153E:
    speed_set               0, -20
    speed_set               1, 150
    speed_set               2, -50
    for                     0, off_1562, 4
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 32
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_1562:
    speed_set               1, 200
    member_set              16, 0, 8
    for                     0, off_1574, 7
    add_speed
    evt_next
    next                    0

off_1574:
    se_on                   2, 11, 516, 0, 0, 0
    speed_set               0, 0
    speed_set               2, 0
    speed_set               1, -40
    for                     0, off_15A4, 3
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 20
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_15A4:
    speed_set               1, -20
    for                     0, off_15C0, 3
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 10
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_15C0:
    speed_set               1, 0
    for                     0, off_15CE, 2
    add_speed
    evt_next
    next                    0

off_15CE:
    speed_set               1, 0
    for                     0, off_15DC, 2
    add_speed
    evt_next
    next                    0

off_15DC:
    speed_set               1, 20
    for                     0, off_15F8, 3
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 10
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_15F8:
    speed_set               1, 40
    for                     0, off_1614, 3
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 20
    member_set2             16, 16
    nop
    add_speed
    evt_next
    next                    0

off_1614:
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 20
    member_set2             16, 16
    nop
    sleep                   10, 2
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 20
    member_set2             16, 16
    nop
    sleep                   10, 2
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 20
    member_set2             16, 16
    nop
    sleep                   10, 2
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 20
    member_set2             16, 16
    nop
    sleep                   10, 2
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 10
    member_set2             16, 16
    nop
    evt_next
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 10
    member_set2             16, 16
    nop
    evt_next
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 10
    member_set2             16, 16
    nop
    evt_next
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 10
    member_set2             16, 16
    nop
    evt_next
    nop
    evt_end                 0

.proc main_04
    evt_exec                8, I_GOSUB, main_05
    gosub                   14
    sce_shake_on            0, 253
    evt_next
    sce_shake_on            0, 251
    evt_next
    se_on                   2, 12, 1, 0, 0, 0
    for                     0, off_16C4, 5
    sce_shake_on            0, 249
    evt_next
    next                    0

off_16C4:
    sce_shake_on            0, 250
    evt_next
    sce_shake_on            0, 251
    evt_next
    sce_shake_on            0, 252
    evt_next
    sce_shake_on            0, 253
    evt_next
    sce_shake_on            0, 254
    evt_next
    sce_shake_on            0, 255
    evt_next
    evt_end                 0

.proc main_05
    sce_espr_on             0, 25, 0, 4096, 1060, -5040, -21520, 0
    sce_espr_on             0, 25, 0, 4096, 3000, -5040, -24545, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 4096, 2670, -5040, -23420, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 4096, 500, -5040, -25330, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 4096, 3000, -5040, -24545, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 4096, 2670, -5040, -23420, 0
    sce_espr_on             0, 25, 0, 4096, 2830, -5040, -21090, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 4096, 500, -5040, -25330, 0
    sleep                   10, 3
    evt_end                 0

.proc main_06
    set                     2, 7, 1
    set                     1, 27, 1
    cut_auto                0
    cut_chg                 3
    evt_kill                6
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -7500, 0, -23570
    dir_set                 0, 0, 2048, 0
    evt_exec                7, I_GOSUB, main_03
    gosub                   13
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -12800, -7800, -23570
    member_set              23, 1, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -100, 30, 30
    plc_motion              10, 16, 0
    sleep                   10, 12
    plc_motion              11, 1, 16
    sleep                   10, 20
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 20
    member_set2             12, 16
    nop
    plc_stop
    work_set                WK_PLAYER, 0
    plc_neck                2, 0, 240, -100, 30, 0
    sleep                   10, 12
    plc_neck                2, 0, -240, -100, 30, 0
    sleep                   10, 24
    plc_neck                2, 0, 0, -240, 20, 30
    sleep                   10, 24
    plc_motion              0, 18, 0
    sleep                   10, 11
    cut_chg                 4
    work_set                WK_PLAYER, 0
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 300
    member_set2             11, 16
    nop
    dir_set                 0, 0, 2900, 0
    plc_motion              10, 18, 0
    sleep                   10, 12
    plc_motion              12, 1, 4
    do                      0, off_1856
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 150
    member_set2             15, 16
    nop
    evt_next
    nop
    edwhile                 off_1856
    member_cmp              0, 15, 4, 0, 16

off_1856:
    member_set              15, 0, 0
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 255, 255
    cut_be_set              6, 2, 1
    cut_be_set              6, 3, 0
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -32000, 0, -32000
    work_set                WK_PLAYER, 0
    plc_stop
    pos_set                 0, -3800, 0, -23570
    dir_set                 0, 0, 0, 0
    set                     1, 4, 0
    cut_auto                0
    cut_chg                 9
    evt_exec                7, I_GOSUB, main_09
    evt_next
    nop
    evt_exec                6, I_GOSUB, main_04
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -200, 0, 200, 100
    sleep                   10, 20
    plc_dest                0, 5, 32, 1400, -23570
    do                      0, off_18C4
    evt_next
    nop
    edwhile                 off_18C4
    ck                      5, 32, 0

off_18C4:
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 8
    nop
    plc_neck                2, 0, -512, 128, 100, 16
    sleep                   10, 11
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    member_set              7, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 128
    plc_cnt                 11
    sleep                   10, 11
    sce_bgm_control         0, 0, 1, 80, 64
    sce_bgm_control         0, 0, 2, 80, 64
    sce_bgm_control         1, 1, 0, 128, 64
    plc_motion              12, 1, 4
    sleep                   10, 60
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 0, 255, 255
    sleep                   10, 60
    xa_on                   0, 11
    wsleep
    wsleeping
    sleep                   10, 42
    pos_set                 0, 6500, 0, -23570
    dir_set                 0, 0, 2048, 0
    cut_chg                 10
    evt_exec                7, I_GOSUB, main_0A
    plc_motion              11, 1, 84
    evt_next
    nop
    xa_on                   0, 12
    wsleep
    wsleeping
    sleep                   10, 32
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 11340, 0, -23570
    sleep                   10, 355
    cut_chg                 6
    work_set                WK_PLAYER, 0
    plc_motion              2, 2, 68
    nop
    pos_set                 0, 14850, 0, -23570
    dir_set                 0, 0, 2048, 0
    plc_ret
    set                     1, 4, 1
    cut_auto                1
    set                     2, 7, 0
    set                     1, 27, 0
    nop
    evt_exec                5, I_GOSUB, main_07
    evt_end                 0

.proc main_07
    do                      0, off_19B2
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 23
    nop
    calc                    0, OP_AND, 16, 2
    copy                    4, 16
    nop
    evt_next
    nop
    edwhile                 off_19B2
    cmp                     0, 4, CMP_NE, 2

off_19B2:
    set                     2, 7, 1
    set                     1, 27, 1
    set                     1, 4, 0
    sce_bgm_control         1, 5, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              2, 2, 4
    evt_next
    cut_auto                0
    cut_chg                 11
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -32000, 0, -32000
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 9000, 0, -23570
    evt_next
    nop
    xa_on                   0, 13
    sleep                   10, 120
    wsleep
    wsleeping
    evt_next
    cut_chg                 6
    work_set                WK_ENEMY, 0
    pos_set                 0, 11000, 0, -23570
    evt_next
    nop
    xa_on                   0, 14
    sleep                   10, 200
    wsleep
    wsleeping
    cut_chg                 7
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -32000, 0, -32000
    work_set                WK_ENEMY, 3
    nop
    pos_set                 0, -32000, 0, -32000
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 17400, 0, -23570
    dir_set                 0, 0, 2048, 0
    plc_motion              2, 8, 68
    evt_next
    nop
    xa_on                   0, 15
    plc_neck                2, 0, 200, 200, 20, 20
    sleep                   10, 10
    plc_neck                2, 0, -200, 200, 20, 0
    sleep                   10, 20
    plc_neck                2, 0, 0, 200, 20, 0
    sleep                   10, 120
    plc_motion              11, 1, 20
    sleep                   10, 80
    plc_motion              0, 17, 16
    plc_neck                2, 0, -210, 120, 15, 20
    sleep                   10, 14
    plc_neck                2, 0, 210, 120, 15, 0
    sleep                   10, 28
    plc_neck                2, 0, 0, 120, 15, 0
    sleep                   10, 14
    sleep                   10, 30
    sleep                   10, 59
    sce_bgm_control         1, 2, 0, 0, 0
    set                     4, 191, 1
    evt_exec                2, I_GOSUB, main_08
    sca_id_set              13, 0, 128
    sca_id_set              14, 0, 128
    sca_id_set              15, 0, 128
    sca_id_set              16, 0, 128
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 244, 152, 0, 0, 201, 165
    evt_exec                6, I_GOSUB, main_0F
    plc_ret
    set                     1, 4, 1
    set                     2, 7, 0
    set                     1, 27, 0
    nop
    evt_end                 0

.proc main_08
    save                    8, 80
    do                      0, off_1B1E
    evt_next
    nop
    copy                    16, 8
    nop
    calc                    0, OP_ADD, 16, 2
    copy                    8, 16
    nop
    work_copy               8, 4, 0
    sce_bgm_control         0, 0, 1, 0, 64
    work_copy               8, 4, 0
    sce_bgm_control         0, 0, 2, 0, 64
    edwhile                 off_1B1E
    cmp                     0, 8, CMP_LT, 128

off_1B1E:
    evt_end                 0

.proc main_09
    evt_exec                4, I_GOSUB, main_0B
    sleep                   10, 10
    evt_exec                3, I_GOSUB, main_0C
    evt_end                 0

.proc main_0A
    evt_kill                3
    evt_kill                4
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -32000, 0, -32000
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -32000, 0, -32000
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 0, -4400, -16800
    dir_set                 0, 3072, 3072, 1024
    work_set                WK_OBJECT, 3
    nop

off_1B64:
    if                      0, off_1B7C
    member_cmp              0, 11, 4, 224, 177
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 0, -4400, -16800
    endif
    nop

off_1B7C:
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 1000
    member_set2             11, 16
    nop
    evt_next
    nop
    goto                    255, 255, 0, off_1B64
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, 0, -4400, -16800
    dir_set                 0, 3072, 3072, 1024
    work_set                WK_OBJECT, 4
    nop

off_1BB0:
    if                      0, off_1BC8
    member_cmp              0, 11, 4, 224, 177
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, 0, -4400, -16800
    endif
    nop

off_1BC8:
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 1000
    member_set2             11, 16
    nop
    evt_next
    nop
    goto                    255, 255, 0, off_1BB0
    evt_end                 0

.proc main_0D
    nop_8a                  0, 13, 0, 1, 0
    nop_8b                  150, 2, 0, 0, 0
    nop_8c                  0, 150, 250, 5, 0, 2, 0
    nop_8c                  0, 250, 200, 10, 0, 7, 0
    evt_end                 0

.proc main_0E
    nop_8c                  0, 100, 200, 7, 0, 0, 0
    nop_8b                  250, 5, 0, 2, 0
    nop_8c                  0, 200, 50, 17, 0, 5, 0
    evt_end                 0

.proc main_0F

off_1C1A:
    nop_8b                  110, 3, 0, 0, 0
    nop_8b                  70, 3, 0, 7, 0
    nop_8b                  70, 3, 0, 20, 0
    nop_8b                  110, 3, 0, 32, 0
    nop_8b                  70, 3, 0, 39, 0
    nop_8b                  70, 3, 0, 52, 0
    sleep                   10, 52
    goto                    255, 255, 0, off_1C1A + 4
    evt_end                 0
    db                      0x00, 0x00
