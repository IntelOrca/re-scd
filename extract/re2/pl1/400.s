.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -7391, -26655, 2100, 2900, -3107, 0, -12544, -8, 2, 10, 5, 0, 31, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, -26891, -14845, 2130, 1840, -20190, -7200, -22725, -927, 3, 1, 0, 4, 6, 1, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -24052, -14705, 2000, 1800, -17314, 0, -22704, -681, 3, 1, 8, 0, 6, 1, 0, 0, UNLOCKED, 0
    if                      0, off_15CE
    ck                      1, 0, 1
    if                      0, off_15C0
    ck                      1, 1, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_15B0
    member_cmp              0, 6, 0, 15, 0
    set                     30, 2, 1
    set                     30, 3, 1
    else                    0, off_15BA

off_15B0:
    set                     30, 0, 1
    set                     30, 1, 1
    nop
    nop

off_15BA:
    rbj_reset
    nop
    else                    0, off_15CC

off_15C0:
    set                     30, 0, 1
    set                     30, 1, 1
    rbj_reset
    nop
    nop
    nop

off_15CC:
    endif
    nop

off_15CE:
    evt_end                 0

.main
.proc main_00
    mizu_div_set            4
    obj_model_set           0, 1, 130, 4, 4, 0, 2, 10, 26, -27260, -8100, -23450, 0, -3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 1, 130, 4, 4, 0, 3, 10, 26, -10760, -900, -23450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0F
    if                      0, off_16DE
    ck                      3, 34, 0
    set                     1, 3, 0
    set                     3, 34, 1
    if                      0, off_1684
    ck                      1, 1, 0
    sce_em_set              0, 255, ENEMY_CLAIREREDFIELD, 0, 0, 4, 30, 0, 255, -8805, -7200, -26072, 2152, 0, 0
    cut_be_set              1, 1, 0
    evt_exec                255, I_GOSUB, main_02
    else                    0, off_16A0

off_1684:
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 8, 4, 32, 0, 255, -9279, -7200, -24607, 1024, 0, 0
    evt_exec                255, I_GOSUB, main_02
    nop
    nop

off_16A0:
    obj_model_set           2, 0, 0, 0, 0, 4, 0, 10, 16, -9080, -5900, -23000, 0, -3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 30, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -10013, -23798, 2640, 1100, 2, 0, 0, 0, 0, 255
    else                    0, off_16F4

off_16DE:
    aot_set                 30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -10013, -23798, 2640, 1100, 2, 0, 0, 0, 0, 255
    nop
    nop

off_16F4:
    aot_set                 3, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 4, 0, -26960, -27060, 19800, 3600, 92, 224, 0, 0, 0, 0
    aot_set                 4, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -10760, -23450, 3600, 9000, 124, 252, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_1734
    member_cmp              0, 17, 2, 4, 0
    gosub                   19
    evt_exec                255, I_GOSUB, main_10
    else                    0, off_173A

off_1734:
    evt_exec                255, I_GOSUB, main_12
    nop
    nop

off_173A:
    gosub                   13
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    set                     1, 27, 1
    set                     2, 7, 1
    evt_exec                255, I_GOSUB, main_05
    evt_exec                255, I_GOSUB, main_04
    while                   4, off_175C
    ck                      5, 1, 0
    evt_next
    nop
    ewhile                  0

off_175C:
    cut_chg                 2
    sleep                   10, 90
    evt_exec                255, I_GOSUB, main_03
    cut_chg                 10
    sleep                   10, 60
    cut_chg                 10
    sleep                   10, 10
    nop_8a                  0, 6, 0, 0, 0
    nop_8b                  100, 1, 0, 0, 0
    nop_8c                  0, 160, 140, 15, 0, 1, 0
    sce_bgm_control         2, 1, 0, 100, 64
    sleep                   10, 70
    if                      0, off_17AA
    ck                      1, 1, 0
    sce_bgmtbl_set          0, 0, 4, 5663, 32768
    cut_chg                 5
    sleep                   10, 150
    else                    0, off_17BC

off_17AA:
    sce_bgmtbl_set          0, 0, 4, 5887, 32768
    sce_bgmtbl_set          0, 1, 4, 65292, 64
    nop
    nop

off_17BC:
    while                   4, off_17C8
    ck                      5, 3, 0
    evt_next
    nop
    ewhile                  0

off_17C8:
    sleep                   10, 10
    set                     1, 27, 0
    set                     2, 7, 0
    if                      0, off_17E4
    ck                      1, 1, 0
    sce_bgm_control         0, 1, 0, 100, 64
    endif
    nop

off_17E4:
    sleep                   10, 10
    cut_auto                1
    evt_end                 0

.proc main_03
    work_set                WK_OBJECT, 2
    evt_next
    pos_set                 0, -9150, -6800, -23150
    se_on                   2, 267, 516, 0, 0, 0
    sleep                   10, 35
    gosub                   11
    sleep                   10, 15
    se_on                   2, 268, 516, 0, 0, 0
    speed_set               1, -50
    speed_set               7, -5
    for                     0, off_182E, 20
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_182E:
    pos_set                 0, 20000, 20000, 20000
    aot_reset               30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_04
    if                      0, off_1852
    ck                      1, 1, 0
    work_set                WK_PLAYER, 0
    nop
    else                    0, off_1858

off_1852:
    work_set                WK_SPLAYER, 0
    nop
    nop
    nop

off_1858:
    pos_set                 0, -7512, -7200, -24259
    sleep                   10, 1
    plc_dest                0, 4, 1, -9279, -23914
    while                   4, off_1878
    ck                      5, 1, 0
    evt_next
    nop
    ewhile                  0

off_1878:
    set                     5, 1, 0
    evt_next
    nop
    pos_set                 0, -9279, -7200, -23914
    plc_dest                0, 21, 1, 1024, 40
    while                   4, off_189A
    ck                      5, 1, 0
    evt_next
    nop
    ewhile                  0

off_189A:
    set                     5, 1, 0
    plc_neck                2, 0, 500, 200, 20, 10
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
    while                   4, off_18D0
    ck                      5, 0, 0
    evt_next
    nop
    ewhile                  0

off_18D0:
    if                      0, off_18E8
    ck                      1, 1, 0
    se_on                   4, 257, 1, 0, 0, 0
    else                    0, off_18F6

off_18E8:
    se_on                   3, 273, 2, 0, 0, 0
    nop
    nop

off_18F6:
    plc_motion              0, 15, 64
    for                     0, off_1920, 2
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 32
    member_set2             16, 16
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_ADD, 16, 50
    member_set2             13, 16
    nop
    evt_next
    nop
    next                    0

off_1920:
    gosub                   10
    for                     0, off_1948, 9
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 64
    member_set2             16, 16
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_ADD, 16, 100
    member_set2             13, 16
    nop
    evt_next
    nop
    next                    0

off_1948:
    pos_set                 0, 20000, 20000, 20000
    while                   6, off_195E
    cmp                     0, 26, CMP_NE, 5
    evt_next
    nop
    ewhile                  0

off_195E:
    if                      0, off_196E
    ck                      1, 1, 0
    gosub                   8
    gosub                   17
    gosub                   18
    endif
    nop

off_196E:
    if                      0, off_197E
    ck                      1, 1, 0
    work_set                WK_PLAYER, 0
    nop
    else                    0, off_1984

off_197E:
    work_set                WK_SPLAYER, 0
    nop
    nop
    nop

off_1984:
    save                    4, 0
    member_set              16, 0, 0
    member_set              14, 0, 0
    member_set              14, 0, 0
    pos_set                 0, -8926, -7200, -21901
    sleep                   10, 3
    xa_on                   0, 3
    for                     0, off_19C8, 20
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 4
    member_set2             12, 16
    nop
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 20
    copy                    4, 16
    nop
    evt_next
    nop
    next                    0

off_19C8:
    evt_exec                255, I_GOSUB, main_09
    if                      0, off_19E6
    ck                      1, 1, 0
    nop_8c                  0, 100, 200, 16, 0, 0, 0
    nop_8c                  0, 200, 100, 16, 0, 16, 0
    endif
    nop

off_19E6:
    se_on                   2, 258, 1, 0, 0, 0
    pos_set                 0, -8926, 0, -21901
    member_set              15, 0, 4
    plc_motion              0, 16, 64
    sleep                   10, 70
    member_set              15, 0, 252
    plc_motion              2, 2, 64
    sleep                   10, 30
    member_set              17, 0, 0
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -11
    member_set2             0, 16
    nop
    if                      0, off_1B0A
    ck                      1, 1, 0
    cut_chg                 6
    sleep                   10, 2
    xa_vol                  50
    xa_on                   0, 0
    message_on              0, 0, 0, 0, 0
    plc_neck                2, 0, 200, 300, 40, 40
    sleep                   10, 5
    plc_neck                2, 0, -200, 260, 40, 40
    sleep                   10, 5
    plc_neck                2, 0, 200, 220, 40, 40
    sleep                   10, 5
    plc_neck                2, 0, -200, 180, 40, 40
    sleep                   10, 5
    sleep                   10, 10
    plc_neck                2, 0, -200, 260, 40, 40
    sleep                   10, 8
    plc_neck                2, 0, 200, 220, 40, 40
    sleep                   10, 8
    wsleep
    wsleeping
    xa_on                   0, 4
    message_on              0, 4, 0, 0, 0
    wsleep
    wsleeping
    xa_vol                  120
    xa_on                   0, 1
    plc_neck                2, 0, -100, -200, 40, 40
    message_on              0, 1, 0, 0, 0
    sleep                   10, 10
    plc_motion              0, 17, 0
    sleep                   10, 30
    wsleep
    wsleeping
    plc_motion              0, 17, 144
    sleep                   10, 20
    plc_flg                 1, 128
    plc_neck                2, 0, 200, 200, 40, 40
    sleep                   10, 10
    plc_neck                2, 0, -200, 200, 40, 40
    sleep                   10, 10
    plc_neck                2, 0, 200, 200, 40, 40
    sleep                   10, 30
    set                     5, 3, 1
    set                     35, 8, 1
    plc_ret
    nop
    endif
    nop

off_1B0A:
    evt_end                 0

.proc main_05
    if                      0, off_1B1C
    ck                      1, 1, 0
    work_set                WK_SPLAYER, 0
    nop
    else                    0, off_1B22

off_1B1C:
    work_set                WK_PLAYER, 0
    nop
    nop
    nop

off_1B22:
    evt_next
    nop
    pos_set                 0, -8355, -7200, -25670
    member_set              15, 40, 6
    plc_dest                0, 4, 2, -8805, -26072
    while                   4, off_1B44
    ck                      5, 2, 0
    evt_next
    nop
    ewhile                  0

off_1B44:
    pos_set                 0, -8805, -7200, -26072
    member_set              15, 40, 6
    while                   4, off_1B5C
    ck                      5, 1, 0
    evt_next
    nop
    ewhile                  0

off_1B5C:
    while                   6, off_1B6A
    cmp                     0, 26, CMP_NE, 10
    evt_next
    nop
    ewhile                  0

off_1B6A:
    plc_neck                2, 0, -100, -400, 8, 8
    sleep                   10, 30
    plc_neck                2, 0, 300, -350, 4, 2
    sleep                   10, 30
    plc_neck                2, 0, 0, -400, 8, 8
    sleep                   10, 8
    set                     5, 0, 1
    sleep                   10, 3
    if                      0, off_1BAA
    ck                      1, 1, 1
    gosub                   12
    else                    0, off_1BCA

off_1BAA:
    sleep                   10, 30
    plc_neck                2, 0, 800, 40, 40, 40
    sleep                   10, 10
    plc_motion              0, 17, 72
    plc_rot                 1, 2048
    sleep                   10, 20
    nop
    nop

off_1BCA:
    evt_end                 0

.proc main_06
    set                     1, 27, 1
    set                     2, 7, 1
    evt_exec                255, I_GOSUB, main_07
    cut_chg                 10
    sleep                   10, 60
    while                   4, off_1BEA
    ck                      5, 3, 0
    evt_next
    nop
    ewhile                  0

off_1BEA:
    cut_chg                 0
    cut_auto                1
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_07
    work_set                WK_PLAYER, 0
    evt_next
    pos_set                 0, -8805, -7200, -26072
    member_set              15, 40, 6
    gosub                   12
    set                     5, 3, 1
    evt_end                 0

.proc main_08
    if                      0, off_1C2C
    ck                      8, 186, 0
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    endif
    nop

off_1C2C:
    if                      0, off_1C48
    ck                      8, 187, 0
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    endif
    nop

off_1C48:
    evt_end                 0

.proc main_09
    se_on                   2, 266, 1, 0, 0, 0
    sce_espr_on             0, 1050, 1, 7680, 0, -100, -21900, 1024
    sleep                   10, 2
    sce_espr_on             0, 1050, 1, 8064, -100, -100, 100, 724
    sce_espr_on             0, 1050, 1, 7424, 0, -100, 0, 1024
    sce_espr_on             0, 1050, 1, 8064, 100, -100, -100, 1324
    evt_end                 0

.proc main_0A
    sce_espr_on             0, 538, 0, 4480, -8800, -8000, -23200, 5484
    sce_espr_on             0, 538, 0, 4352, -8800, -8000, -23200, 5796
    sce_espr_on             0, 538, 0, 4480, -9000, -8000, -23200, 5920
    evt_next
    nop
    sce_espr_on             0, 538, 0, 3840, -9000, -7800, -24000, 5484
    sce_espr_on             0, 538, 0, 3968, -9000, -7800, -24000, 5796
    sce_espr_on             0, 538, 0, 3840, -9200, -7800, -24000, 5900
    sce_espr_on             0, 538, 0, 3072, -9000, -8000, -24000, 5484
    sce_espr_on             0, 538, 0, 3200, -9000, -8000, -24000, 5796
    sce_espr_on             0, 538, 0, 3072, -9200, -8000, -24000, 5900
    evt_end                 0

.proc main_0B
    sce_espr_on             0, 538, 0, 2688, -8800, -8000, -23200, 5484
    sce_espr_on             0, 538, 0, 2816, -8800, -8000, -23200, 5796
    sce_espr_on             0, 538, 0, 2688, -9000, -8000, -23200, 5920
    sleep                   10, 2
    se_on                   2, 283, 0, -8800, -8000, -23200
    sce_espr_on             0, 538, 0, 4096, -9000, -8000, -24000, 5484
    sce_espr_on             0, 538, 0, 4224, -9000, -8000, -24000, 5796
    sce_espr_on             0, 538, 0, 4096, -9200, -8000, -24000, 5900
    evt_next
    nop
    evt_end                 0

.proc main_0C
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 30
    plc_neck                2, 0, 800, 40, 40, 40
    sleep                   10, 10
    plc_motion              0, 17, 72
    plc_rot                 1, 2048
    sleep                   10, 20
    message_on              0, 0, 0, 0, 0
    plc_motion              2, 2, 4
    plc_neck                4, 2, 0, 0, 40, 40
    xa_on                   0, 0
    wsleep
    wsleeping
    plc_neck                1, -9191, -7200, -23910, 40, 40
    set                     5, 2, 0
    plc_dest                0, 21, 2, 2584, 40
    while                   4, off_1E02
    ck                      5, 2, 0
    evt_next
    nop
    ewhile                  0

off_1E02:
    sleep                   10, 10
    message_on              0, 4, 0, 0, 0
    xa_on                   0, 4
    wsleep
    wsleeping
    sleep                   10, 2
    set                     5, 3, 1
    cut_chg                 0
    plc_ret
    nop
    evt_end                 0

.proc main_0D
    aot_set                 31, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -29523, -27258, 2900, 6800, 3, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_0E
    evt_next
    nop

off_1E38:
    switch                  26, off_1F48
    case                    0, off_1E42, 0

off_1E42:
    case                    0, off_1E5C, 10
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 101, 31
    sce_bgm_control         1, 0, 1, 1, 65
    break                   0

off_1E5C:
    case                    0, off_1E76, 1
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 101, 51
    sce_bgm_control         1, 0, 1, 1, 65
    break                   0

off_1E76:
    case                    0, off_1E90, 2
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 71, 65
    sce_bgm_control         1, 0, 1, 1, 65
    break                   0

off_1E90:
    case                    0, off_1EAA, 3
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 71, 81
    sce_bgm_control         1, 0, 1, 1, 65
    break                   0

off_1EAA:
    case                    0, off_1EC4, 4
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 61, 128
    sce_bgm_control         1, 0, 1, 1, 65
    break                   0

off_1EC4:
    case                    0, off_1EDE, 5
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 1, 65
    sce_bgm_control         1, 0, 1, 71, 65
    break                   0

off_1EDE:
    case                    0, off_1EF8, 6
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 1, 65
    sce_bgm_control         1, 0, 1, 51, 65
    break                   0

off_1EF8:
    case                    0, off_1F12, 7
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 1, 65
    sce_bgm_control         1, 0, 1, 41, 65
    break                   0

off_1F12:
    case                    0, off_1F2C, 8
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 1, 65
    sce_bgm_control         1, 0, 1, 41, 21
    break                   0

off_1F2C:
    case                    0, off_1F46, 9
    sce_bgm_control         0, 0, 1, 71, 65
    sce_bgm_control         0, 0, 2, 1, 65
    sce_bgm_control         1, 0, 1, 21, 65
    break                   0

off_1F46:
    eswitch                 0

off_1F48:
    do                      0, off_1F54
    evt_next
    nop
    edwhile                 off_1F54
    ck                      1, 11, 0

off_1F54:
    goto                    255, 255, 0, off_1E38 + 3
    evt_end                 0

.proc main_0F
    evt_next
    nop

off_1F5E:
    switch                  26, off_2088
    case                    0, off_1F68, 0

off_1F68:
    case                    0, off_1F82, 10
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 101, 31
    sce_bgm_control         1, 0, 3, 1, 65
    break                   0

off_1F82:
    case                    0, off_1F9C, 1
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 101, 51
    sce_bgm_control         1, 0, 3, 1, 65
    break                   0

off_1F9C:
    case                    0, off_1FB6, 2
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 71, 81
    sce_bgm_control         1, 0, 3, 1, 65
    break                   0

off_1FB6:
    case                    0, off_1FD0, 3
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 71, 81
    sce_bgm_control         1, 0, 3, 1, 65
    break                   0

off_1FD0:
    case                    0, off_1FEA, 4
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 61, 128
    sce_bgm_control         1, 0, 3, 1, 65
    break                   0

off_1FEA:
    case                    0, off_2004, 4
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 71, 65
    break                   0

off_2004:
    case                    0, off_201E, 5
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 71, 65
    break                   0

off_201E:
    case                    0, off_2038, 6
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 51, 65
    break                   0

off_2038:
    case                    0, off_2052, 7
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 41, 65
    break                   0

off_2052:
    case                    0, off_206C, 8
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 41, 21
    break                   0

off_206C:
    case                    0, off_2086, 9
    sce_bgm_control         1, 0, 1, 71, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 21, 65
    break                   0

off_2086:
    eswitch                 0

off_2088:
    do                      0, off_2094
    evt_next
    nop
    edwhile                 off_2094
    ck                      1, 11, 0

off_2094:
    goto                    255, 255, 0, off_1F5E + 3
    evt_end                 0

.proc main_10
    evt_next
    nop
    sce_espr_on             0, 284, 0, 4096, -12900, -9600, -24200, 1024
    sce_espr_on             0, 34, 0, 4096, -7300, -11500, -25300, 0
    sce_espr_on             0, 34, 0, 4096, -7300, -11500, -25300, 0
    sce_espr_on             0, 34, 0, 4096, -26700, -13200, -19700, 0
    sce_espr_on             0, 34, 0, 4096, -26700, -13200, -19700, 0
    evt_end                 0

.proc main_11
    sce_espr_kill           34, 0, 0, 0
    sce_espr_kill           28, 1, 0, 0
    evt_end                 0

.proc main_12
    evt_next
    nop
    sce_espr_on             0, 34, 0, 4096, -22600, -5300, -16900, 0
    sce_espr_on             0, 34, 0, 4096, -22600, -5300, -16900, 0
    sce_espr_on             0, 284, 0, 4096, -9200, -7900, -23450, 3072
    sce_espr_on             0, 284, 0, 4096, -8920, -7850, -23450, 3072
    sce_espr_on             0, 284, 0, 4096, -8660, -7900, -23450, 3072
    sce_espr_on             0, 284, 0, 4096, -8400, -7900, -23450, 3072
    evt_end                 0

.proc main_13
    obj_model_set           3, 0, 0, 0, 0, 4, 0, 10, 16, -25226, -9000, -17689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, -25226, -17689, 1520, 1500, ITEM_HERBB, 1, 186, 3, 1
    obj_model_set           4, 0, 0, 0, 0, 4, 0, 10, 16, -25226, -9000, -19189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, -25226, -19189, 1520, 1500, ITEM_HERBB, 1, 187, 4, 1
    evt_end                 0
    db                      0x00, 0x00
