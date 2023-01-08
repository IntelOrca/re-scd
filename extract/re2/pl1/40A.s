.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 2000, -22180, 5100, 1800, 3914, 0, -20802, 3144, 3, 16, 2, 0, 43, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -8522, -2619, 1800, 3400, -10359, -1800, 1460, -64, 3, 8, 3, 1, 28, 0, 0, 0, UNLOCKED, 0
    if                      0, off_2550
    ck                      29, 3, 0
    set                     5, 31, 1
    endif
    nop

off_2550:
    if                      0, off_25B8
    ck                      4, 51, 0
    ck                      5, 31, 1
    if                      0, off_257E
    ck                      1, 0, 0
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 8, 0, 0, 0, 0, -261, -1800, -7703, -3264, 0, 0
    else                    0, off_25A0

off_257E:
    if                      0, off_259E
    ck                      1, 1, 0
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 0, 0, 0, 0, 0, 7770, -1800, -12642, 3072, 0, 0
    endif
    nop

off_259E:
    nop
    nop

off_25A0:
    sce_em_set              0, 0, ENEMY_ALLIGATOR, 0, 0, 1, 22, 0, 0, 5706, 3000, -5316, 1024, 0, 0
    endif
    nop

off_25B8:
    set                     4, 32, 0
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main_00
    if                      0, off_2646
    ck                      1, 3, 1
    if                      0, off_262C
    cmp                     0, 27, CMP_EQ, 1032
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 1, 32, 0, 255, -8829, -1800, 417, 1904, 0, 0
    else                    0, off_2644

off_262C:
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 1, 32, 0, 255, 5556, -1800, -22220, -2921, 0, 0
    nop
    nop

off_2644:
    endif
    nop

off_2646:
    if                      0, off_265E
    ck                      1, 1, 1
    if                      0, off_265C
    ck                      3, 35, 1
    set                     3, 35, 0
    endif
    nop

off_265C:
    endif
    nop

off_265E:
    gosub                   5
    gosub                   6
    evt_end                 0

.proc main_01
    if                      0, off_267A
    ck                      1, 29, 1
    ck                      5, 16, 0
    set                     5, 16, 1
    evt_exec                255, I_GOSUB, main_0F
    endif
    nop

off_267A:
    evt_end                 0

.proc main_02
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     4, 51, 1
    set                     2, 7, 1
    set                     1, 27, 1
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_09, 0, 0
    if                      0, off_26AA
    ck                      1, 1, 0
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_26AA:
    evt_exec                255, I_GOSUB, main_03
    cut_chg                 10
    sleep                   10, 45
    if                      0, off_26CC
    ck                      1, 1, 0
    cut_chg                 12
    sleep                   10, 60
    cut_chg                 10
    sleep                   10, 2
    wsleep
    wsleeping
    endif
    nop

off_26CC:
    while                   4, off_26DA
    ck                      5, 11, 0
    sleep                   10, 1
    ewhile                  0

off_26DA:
    sleep                   10, 8
    nop_8c                  0, 100, 220, 10, 0, 0, 0
    nop_8c                  0, 200, 100, 10, 0, 10, 0
    evt_exec                255, I_GOSUB, main_1F
    evt_exec                255, I_GOSUB, main_0B
    evt_exec                255, I_GOSUB, main_0C
    sleep                   10, 40
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1A, 0, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_03
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 2958, -1800, -25874
    member_set              15, 183, 253
    plc_dest                0, 4, 10, 3640, -25016
    while                   4, off_2734
    ck                      5, 10, 0
    sleep                   10, 1
    ewhile                  0

off_2734:
    set                     5, 10, 0
    if                      0, off_2796
    ck                      1, 1, 0
    plc_motion              0, 15, 64
    sleep                   10, 1
    plc_flg                 1, 65
    plc_neck                5, 2, 0, 0, 60, 60
    sleep                   10, 12
    while                   6, off_2768
    cmp                     0, 26, CMP_NE, 12
    evt_next
    nop
    ewhile                  0

off_2768:
    while                   6, off_2776
    cmp                     0, 26, CMP_NE, 10
    evt_next
    nop
    ewhile                  0

off_2776:
    sleep                   10, 1
    message_on              0, 9, 0, 0, 0
    xa_on                   0, 40
    wsleep
    wsleeping
    plc_motion              0, 15, 193
    sleep                   10, 17
    sleep                   10, 30
    else                    0, off_27A0

off_2796:
    sleep                   10, 17
    sleep                   10, 30
    nop
    nop

off_27A0:
    plc_neck                5, 3, 0, 0, 60, 60
    set                     5, 11, 1
    sleep                   10, 46
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
    plc_motion              10, 18, 64
    plc_neck                2, 0, 400, 200, 60, 40
    se_on                   4, 256, 1, 0, 0, 0
    for                     0, off_280E, 10
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             15, 16
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 300
    member_set2             11, 16
    nop
    evt_next
    nop
    next                    0

off_280E:
    for                     0, off_283A, 20
    plc_motion              10, 18, 64
    plc_cnt                 8
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 300
    member_set2             11, 16
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 20
    member_set2             13, 16
    nop
    evt_next
    nop
    next                    0

off_283A:
    plc_neck                0, 0, 0, 0, 60, 40
    pos_set                 0, -3413, -1800, -25554
    member_set              15, 0, 255
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -11
    member_set2             0, 16
    nop
    pos_set                 0, -9600, -1800, -25800
    plc_motion              1, 6, 192
    evt_next
    plc_stop
    while                   6, off_287A
    cmp                     0, 26, CMP_NE, 1
    evt_next
    nop
    ewhile                  0

off_287A:
    plc_neck                4, 3, 0, 0, 70, 70
    sleep                   10, 60
    plc_motion              1, 6, 208
    sleep                   10, 50
    set                     5, 17, 1
    plc_dest                0, 8, 10, -10800, -25800
    while                   4, off_28A8
    ck                      5, 10, 0
    evt_next
    nop
    ewhile                  0

off_28A8:
    set                     5, 10, 0
    plc_dest                0, 21, 10, 2048, 128
    while                   4, off_28C0
    ck                      5, 10, 0
    evt_next
    nop
    ewhile                  0

off_28C0:
    set                     5, 10, 0
    plc_ret
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_04
    work_set                WK_SPLAYER, 0
    plc_motion              0, 0, 64
    evt_next
    plc_stop
    nop
    evt_end                 0

.proc main_05
    if                      0, off_28EE
    ck                      29, 16, 1
    cut_replace             6, 13
    cut_replace             7, 14
    sca_id_set              0, 0, 208
    else                    0, off_28F4

off_28EE:
    sca_id_set              0, 0, 0
    nop
    nop

off_28F4:
    mizu_div_set            2
    obj_model_set           0, 1, 130, 4, 4, 0, 0, 10, 26, -3600, -1620, -21600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_296E
    ck                      4, 156, 0
    ck                      29, 3, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 0, -21320, -1800, -9268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_296C
    ck                      4, 155, 1
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -22816, -1984, -9500
    dir_set                 0, 1680, 0, -1024
    endif
    nop

off_296C:
    endif
    nop

off_296E:
    if                      0, off_29C0
    ck                      4, 51, 0
    ck                      29, 3, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, 20000, 20000, 20000, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set_4p              5, SCE_EVENT, SAT_PL | SAT_UNDER, 1, 0, 4175, -28295, -400, -21700, 3700, -21700, 8800, -28600, 255, 0, I_GOSUB, main_02, 0, 0
    else                    0, off_29E8

off_29C0:
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, 1836, -1800, -21254, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_29E8:
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -22000, -9175, 2350, 2350, 255, 0, I_GOSUB, main_09, 0, 0
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, 0, 0, 0, 255
    if                      0, off_2A1A
    ck                      4, 156, 1
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2A1A:
    if                      0, off_2A2E
    ck                      29, 3, 1
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2A2E:
    if                      0, off_2A56
    ck                      4, 155, 1
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 129, -2300, -200, 1900, 1600, 5, 0, 0, 0, 0, 255
    endif
    nop

off_2A56:
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 6700, -23638, 1100, 1600, 255, 0, I_GOSUB, main_1A, 0, 0
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -27322, 1281, 5000, 1300, 0, 0, 0, 0, 0, 0
    if                      0, off_2A9E
    ck                      29, 16, 1
    aot_reset               6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 0, 255
    else                    0, off_2AAA

off_2A9E:
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_2AAA:
    sca_id_set              12, 0, 0
    sca_id_set              14, 0, 0
    evt_exec                255, I_GOSUB, main_16
    evt_exec                255, I_GOSUB, main_19
    evt_end                 0

.proc main_06
    evt_end                 0

.proc main_07
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_08
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, 3
    nop
    speed_set               0, -10
    speed_set               6, -9
    sca_id_set              12, 0, 128
    se_on                   2, 268, 772, 0, 0, 0
    for                     0, off_2AF6, 12
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2AF6:
    speed_set               6, 8
    for                     0, off_2B06, 3
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2B06:
    sca_id_set              12, 0, 64
    sca_id_set              14, 0, 0
    evt_end                 0

.proc main_09
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    se_on                   2, 275, 260, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0A
    evt_end                 0

.proc main_0A
    work_set                WK_OBJECT, 1
    set                     5, 1, 1
    nop
    member_set              14, 0, 0
    member_set              15, 32, 1
    member_set              16, 0, 0
    speed_set               1, -8
    speed_set               11, -4
    speed_set               0, -40
    for                     0, off_2B58, 23
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2B58:
    member_set              16, 0, 252
    se_on                   2, 267, 260, 0, 0, 0
    speed_set               3, 64
    speed_set               4, -24
    speed_set               5, 0
    speed_set               11, 0
    speed_set               0, -36
    speed_set               1, 0
    for                     0, off_2B8E, 12
    add_speed
    nop
    sleep                   10, 1
    next                    0

off_2B8E:
    speed_set               4, 0
    for                     0, off_2BA0, 4
    add_speed
    nop
    sleep                   10, 1
    next                    0

off_2BA0:
    speed_set               0, 0
    speed_set               4, 0
    speed_set               3, 64
    speed_set               9, -4
    speed_set               2, -26
    speed_set               8, 2
    for                     0, off_2BC6, 8
    add_speed
    add_aspeed
    sleep                   10, 1
    next                    0

off_2BC6:
    for                     0, off_2BD4, 8
    add_speed
    nop
    sleep                   10, 1
    next                    0

off_2BD4:
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 129, -2300, -200, 1900, 1600, 5, 0, 0, 0, 0, 255
    set                     5, 0, 1
    set                     4, 155, 1
    evt_end                 0

.proc main_0B
    work_set                WK_ENEMY, 0
    sce_bgm_control         0, 1, 0, 120, 64
    nop
    member_copy             16, 23
    nop
    calc                    0, OP_OR, 16, 1
    member_set2             23, 16
    nop
    evt_next
    nop
    pos_set                 0, 4557, -1800, -18237
    set                     5, 2, 1
    se_on                   2, 266, 3, 0, 0, 0
    while                   4, off_2C90
    ck                      5, 20, 0
    if                      0, off_2C42
    ck                      7, 0, 1
    set                     5, 20, 1
    sce_bgm_control         0, 5, 0, 0, 0
    else                    0, off_2C8C

off_2C42:
    if                      0, off_2C6C
    ck                      5, 21, 0
    if                      0, off_2C68
    cmp                     0, 26, CMP_EQ, 9
    set                     5, 21, 1
    set                     2, 7, 1
    evt_exec                255, I_GOSUB, main_0D
    sce_bgm_control         0, 5, 0, 0, 0
    endif
    nop

off_2C68:
    else                    0, off_2C8A

off_2C6C:
    if                      0, off_2C88
    ck                      1, 27, 0
    set                     5, 20, 1
    set                     2, 7, 0
    aot_reset               6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 0, 255
    endif
    nop

off_2C88:
    nop
    nop

off_2C8A:
    nop
    nop

off_2C8C:
    evt_next
    nop
    ewhile                  0

off_2C90:
    if                      0, off_2C9E
    ck                      7, 0, 1
    set                     2, 7, 1
    endif
    nop

off_2C9E:
    do                      0, off_2CAA
    evt_next
    nop
    edwhile                 off_2CAA
    ck                      5, 30, 0

off_2CAA:
    set                     2, 7, 0
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, 2
    nop
    while                   4, off_2CCA
    ck                      5, 17, 0
    evt_next
    nop
    ewhile                  0

off_2CCA:
    pos_set                 0, 2636, -5150, -21254
    speed_set               1, 100
    speed_set               7, 10
    se_on                   2, 274, 516, 0, 0, 0
    for                     0, off_2CF2, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2CF2:
    for                     0, off_2CFC, 10
    add_speed
    evt_next
    next                    0

off_2CFC:
    gosub                   23
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1D, 0, 0
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1E, 0, 0
    while                   6, off_2D20
    cmp                     0, 26, CMP_NE, 2
    evt_next
    nop
    ewhile                  0

off_2D20:
    member_set              11, 44, 7
    evt_end                 0

.proc main_0D
    cut_replace             6, 13
    cut_replace             7, 14
    sca_id_set              0, 0, 208
    set                     29, 16, 1
    nop_8a                  0, 5, 0, 170, 0
    nop_8c                  0, 220, 140, 20, 0, 170, 0
    sleep                   10, 170
    for                     0, off_2D50, 6
    gosub                   14
    next                    0

off_2D50:
    evt_end                 0

.proc main_0E
    sce_espr_on             0, 4100, 0, 3584, -24200, -3500, 1300, 824
    sce_espr_on             0, 2052, 0, 4096, -23800, -2000, 1400, 474
    sleep                   10, 2
    sce_espr_on             0, 2052, 0, 4096, -25500, -3800, 1300, 1024
    evt_next
    nop
    sce_espr_on             0, 2052, 0, 4608, -23800, -2000, 1400, 474
    evt_next
    nop
    sce_espr_on             0, 4100, 0, 2048, -24200, -4400, 1350, 1124
    evt_next
    nop
    sce_espr_on             0, 4100, 0, 8192, -25400, -4000, 1300, 974
    sleep                   10, 2
    sce_espr_on             0, 2052, 0, 5120, -23800, -3500, 1300, 1074
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 8704, -24200, -3000, 1500, 1524
    sce_espr_on             0, 4100, 0, 7680, -25000, -2400, 1300, 1024
    sleep                   10, 5
    evt_end                 0

.proc main_0F
    evt_next
    nop
    switch                  26, off_2E4A
    case                    0, off_2E06, 0

off_2E06:
    case                    0, off_2E0C, 1

off_2E0C:
    case                    0, off_2E16, 2
    gosub                   16
    break                   0

off_2E16:
    case                    0, off_2E1C, 3

off_2E1C:
    case                    0, off_2E22, 4

off_2E22:
    case                    0, off_2E28, 5

off_2E28:
    case                    0, off_2E32, 6
    gosub                   18
    break                   0

off_2E32:
    case                    0, off_2E38, 7

off_2E38:
    case                    0, off_2E3E, 8

off_2E3E:
    case                    0, off_2E48, 9
    gosub                   20
    break                   0

off_2E48:
    eswitch                 0

off_2E4A:
    set                     5, 16, 0
    evt_end                 0

.proc main_10
    gosub                   17
    sleep                   10, 1
    gosub                   17
    sleep                   10, 4
    se_on                   2, 269, 1, 0, 0, 0
    gosub                   17
    sleep                   10, 3
    gosub                   17
    sleep                   10, 4
    gosub                   17
    evt_end                 0

.proc main_11
    sce_rnd
    nop
    copy                    6, 29
    nop
    copy                    16, 6
    nop
    calc                    0, OP_AND, 16, 4095
    copy                    6, 16
    nop
    copy                    16, 6
    nop
    calc                    0, OP_SUB, 16, 26318
    copy                    6, 16
    nop
    sce_rnd
    nop
    copy                    5, 29
    nop
    copy                    16, 5
    nop
    calc                    0, OP_AND, 16, 16383
    copy                    5, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 19000
    copy                    5, 16
    nop
    work_copy               6, 16, 1
    work_copy               5, 8, 1
    sce_espr_on             0, 25, 0, 1536, 0, -5400, 0, 0
    evt_end                 0

.proc main_12
    gosub                   19
    sleep                   10, 1
    gosub                   19
    sleep                   10, 4
    se_on                   2, 269, 1, 0, 0, 0
    gosub                   19
    sleep                   10, 3
    gosub                   19
    sleep                   10, 4
    gosub                   19
    evt_end                 0

.proc main_13
    sce_rnd
    nop
    copy                    5, 29
    nop
    copy                    16, 5
    nop
    calc                    0, OP_AND, 16, 4095
    copy                    5, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 26318
    copy                    5, 16
    nop
    sce_rnd
    nop
    copy                    6, 29
    nop
    copy                    16, 6
    nop
    calc                    0, OP_AND, 16, 32767
    copy                    6, 16
    nop
    copy                    16, 6
    nop
    calc                    0, OP_SUB, 16, 21918
    copy                    6, 16
    nop
    work_copy               6, 16, 1
    work_copy               5, 8, 1
    sce_espr_on             0, 25, 0, 1536, 0, -5400, 0, 0
    evt_end                 0

.proc main_14
    gosub                   21
    sleep                   10, 1
    gosub                   21
    sleep                   10, 4
    se_on                   2, 269, 1, 0, 0, 0
    gosub                   21
    sleep                   10, 3
    gosub                   21
    sleep                   10, 4
    gosub                   21
    evt_end                 0

.proc main_15
    sce_rnd
    nop
    copy                    5, 29
    nop
    copy                    16, 5
    nop
    calc                    0, OP_AND, 16, 16383
    copy                    5, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 25000
    copy                    5, 16
    nop
    sce_rnd
    nop
    copy                    6, 29
    nop
    copy                    16, 6
    nop
    calc                    0, OP_AND, 16, 4095
    copy                    6, 16
    nop
    copy                    16, 6
    nop
    calc                    0, OP_SUB, 16, 2750
    copy                    6, 16
    nop
    work_copy               6, 16, 1
    work_copy               5, 8, 1
    sce_espr_on             0, 25, 0, 1536, 0, -5400, 0, 0
    evt_end                 0

.proc main_16
    if                      0, off_2FF6
    ck                      5, 18, 1
    sce_espr_kill           22, 0, 0, 0
    sce_espr_kill           22, 4, 0, 0
    endif
    nop

off_2FF6:
    sce_espr3d_on           0, 4118, 0, 2048, -8208, -3654, 270, 0, 1024, 0, 0
    sce_espr3d_on           0, 4118, 0, 2048, 7074, -3690, -23148, 0, 1024, 0, 0
    sce_espr3d_on           0, 5142, 0, 2048, -21534, -3978, -7800, 0, 1024, 0, 0
    set                     5, 19, 0
    evt_end                 0

.proc main_17
    sce_espr_kill           22, 16, 0, 0
    sce_espr_kill           22, 20, 0, 0
    sce_espr3d_on           0, 22, 0, 2048, -8208, -3528, 270, 0, 1024, 0, 0
    sce_espr3d_on           0, 22, 0, 2048, 7074, -3816, -23148, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -21534, -3978, -7800, 0, 1024, 0, 0
    set                     5, 19, 1
    evt_exec                255, I_GOSUB, main_18
    set                     5, 18, 1
    evt_end                 0

.proc main_18
    while                   4, off_3122
    ck                      5, 19, 1
    sce_espr_kill           22, 5, 0, 0
    nop
    sce_espr3d_on           0, 1302, 0, 2048, -21534, -3978, -7800, 0, 1024, 0, 0
    sleep                   10, 2
    sce_espr_kill           22, 5, 0, 0
    nop
    sce_espr3d_on           0, 1302, 0, 4608, -21534, -3978, -7800, 0, 1024, 0, 0
    sleep                   10, 2
    sce_espr_kill           22, 5, 0, 0
    nop
    sce_espr3d_on           0, 1302, 0, 5120, -21534, -3978, -7800, 0, 1024, 0, 0
    sleep                   10, 2
    sce_espr_kill           22, 5, 0, 0
    nop
    sce_espr3d_on           0, 1302, 0, 4608, -21534, -3978, -7800, 0, 1024, 0, 0
    sleep                   10, 2
    ewhile                  0

off_3122:
    evt_end                 0

.proc main_19

off_3124:
    light_color_set2        5, 0, 78, 168, 58
    while                   4, off_3154
    ck                      5, 19, 0
    light_kido_set2         0, 5, 0, 2000
    evt_next
    nop
    light_kido_set2         0, 5, 0, 3000
    evt_next
    nop
    light_kido_set2         0, 5, 0, 4000
    evt_next
    nop
    light_kido_set2         0, 5, 0, 3000
    evt_next
    nop
    ewhile                  0

off_3154:
    light_color_set2        5, 0, 168, 48, 28
    while                   4, off_31A4
    ck                      5, 19, 1
    light_kido_set2         0, 5, 0, 2000
    evt_next
    nop
    light_kido_set2         0, 5, 0, 3000
    evt_next
    nop
    light_kido_set2         0, 5, 0, 4000
    evt_next
    nop
    light_kido_set2         0, 5, 0, 5000
    evt_next
    nop
    light_kido_set2         0, 5, 0, 6000
    evt_next
    nop
    light_kido_set2         0, 5, 0, 5000
    evt_next
    nop
    light_kido_set2         0, 5, 0, 4000
    evt_next
    nop
    light_kido_set2         0, 5, 0, 3000
    evt_next
    nop
    ewhile                  0

off_31A4:
    goto                    255, 255, 0, off_3124 + 4
    evt_end                 0

.proc main_1A
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, 1, 0, 0, 255
    evt_next
    nop
    if                      0, off_31FA
    ck                      11, 31, 0
    se_on                   2, 272, 0, 6771, -2800, -22431
    evt_next
    nop
    se_on                   2, 273, 0, 6771, -2800, -22431
    gosub                   22
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1B, 0, 0
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1C, 0, 0
    else                    0, off_3212

off_31FA:
    se_on                   4, 5, 0, 0, 0, 0
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1A, 0, 0
    nop
    nop

off_3212:
    evt_end                 0

.proc main_1B
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 74, 15, 0, 0, 190, 174
    if                      0, off_3236
    ck                      1, 1, 0
    if                      0, off_3234
    ck                      7, 0, 1
    set                     29, 3, 1
    endif
    nop

off_3234:
    endif
    nop

off_3236:
    if                      0, off_3248
    ck                      5, 30, 1
    set                     4, 156, 1
    set                     4, 155, 0
    endif
    nop

off_3248:
    aot_on                  0
    if                      0, off_325E
    ck                      1, 0, 0
    sce_bgmtbl_set          0, 10, 4, 255, 0
    else                    0, off_3268

off_325E:
    sce_bgmtbl_set          0, 10, 4, 255, 0
    nop
    nop

off_3268:
    evt_end                 0

.proc main_1C
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 137, 215, 248, 248, 180, 5
    if                      0, off_328C
    ck                      1, 1, 0
    if                      0, off_328A
    ck                      7, 0, 1
    set                     29, 3, 1
    endif
    nop

off_328A:
    endif
    nop

off_328C:
    if                      0, off_329E
    ck                      5, 30, 1
    set                     4, 156, 1
    set                     4, 155, 0
    endif
    nop

off_329E:
    aot_on                  1
    if                      0, off_32B4
    ck                      1, 0, 0
    sce_bgmtbl_set          0, 10, 4, 255, 0
    else                    0, off_32BE

off_32B4:
    sce_bgmtbl_set          0, 10, 4, 255, 0
    nop
    nop

off_32BE:
    evt_end                 0

.proc main_1D
    aot_reset               0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, 8, 0, 0, 255
    evt_next
    evt_next
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1D, 0, 0
    evt_end                 0

.proc main_1E
    aot_reset               1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    se_on                   2, 278, 0, 6771, -2800, -22431
    message_on              0, 0, 0, 0, 255
    evt_next
    nop
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1E, 0, 0
    evt_end                 0

.proc main_1F
    for                     0, off_338C, 3
    sce_espr_on             0, 26, 0, 9496, 3800, -1700, -17700, 2400
    sce_espr_on             0, 26, 0, 9496, 5000, -1700, -19000, 1800
    sce_espr_on             0, 26, 0, 9496, 6400, -1700, -19000, 3800
    sleep                   10, 2
    sce_espr_on             0, 26, 0, 9496, 5200, -1700, -18400, 4600
    sce_espr_on             0, 26, 0, 9496, 3400, -1700, -17500, 6300
    sleep                   10, 2
    sce_espr_on             0, 26, 0, 9496, 5200, -1700, -18400, 4600
    sce_espr_on             0, 26, 0, 9496, 3400, -1700, -17500, 6300
    sleep                   10, 2
    next                    0

off_338C:
    for                     0, off_3410, 2
    sce_espr_on             0, 26, 0, 10264, 3400, -1700, -17700, 2400
    sce_espr_on             0, 26, 0, 10264, 4600, -1700, -19000, 1800
    sce_espr_on             0, 26, 0, 10264, 6000, -1700, -19000, 3800
    sleep                   10, 2
    sce_espr_on             0, 26, 0, 10264, 4800, -1700, -18400, 4600
    sce_espr_on             0, 26, 0, 10264, 3000, -1700, -17500, 6300
    sleep                   10, 2
    sce_espr_on             0, 26, 0, 10264, 4800, -1700, -18400, 4600
    sce_espr_on             0, 26, 0, 10264, 3000, -1700, -17500, 6300
    sleep                   10, 2
    next                    0

off_3410:
    sce_espr_on             0, 26, 0, 10264, 3000, -1700, -17700, 2400
    sce_espr_on             0, 26, 0, 10264, 4200, -1700, -19000, 1800
    sce_espr_on             0, 26, 0, 10264, 5600, -1700, -19000, 3800
    sleep                   10, 2
    sce_espr_on             0, 26, 0, 10264, 4400, -1700, -18400, 4600
    sce_espr_on             0, 26, 0, 10264, 2600, -1700, -17500, 6300
    sleep                   10, 2
    sce_espr_on             0, 26, 0, 10264, 4400, -1700, -18400, 4600
    sce_espr_on             0, 26, 0, 10264, 2600, -1700, -17500, 6300
    sleep                   10, 2
    sce_espr_on             0, 26, 0, 6096, 5600, -3100, -23100, 0
    sce_espr_on             0, 26, 0, 5496, 4500, -4000, -23100, 501
    evt_next
    nop
    sce_espr_on             0, 26, 0, 5596, 3800, -3300, -20400, -2300
    evt_end                 0
