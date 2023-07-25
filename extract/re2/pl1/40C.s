.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20800, -23555, 3200, 2700, -26344, 0, -25179, -16, 3, 15, 3, 0, 30, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 30000, 30000, 100, 100, -8391, -7200, -25888, -648, 3, 0, 0, 4, 33, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    sce_em_set              0, 0, ENEMY_BIRKIN_1, 1, 0, 31, 0, 0, 255, 2602, 0, -21667, 3088, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -25600, 980, -26850, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -25600, 980, -18550, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -23150, 0, -22350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 0, -25317, -200, -25550, -768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 0, -23037, -200, -24490, 832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 0, -25053, -200, -21306, -1152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 0, -22734, -200, -21246, -896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 0, -24245, -200, -24767, 1024, 0, 1536, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 10, 0, -23403, -200, -21872, 2944, -64, 576, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 0, -24379, -80, -22092, -768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           10, 0, 0, 0, 0, 0, 0, 10, 0, -22157, -80, -23507, 832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           11, 0, 0, 0, 0, 0, 0, 10, 0, -26900, -800, -26900, -1728, 0, 2176, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           12, 0, 0, 0, 0, 0, 0, 10, 0, -26299, -250, -20000, -448, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           13, 0, 0, 0, 0, 0, 0, 10, 0, -25800, -7600, -25400, -1152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           14, 0, 0, 0, 0, 0, 0, 10, 0, -26950, -2950, -20350, -1728, 0, -128, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           15, 0, 0, 0, 0, 0, 0, 10, 0, -23400, -7000, -21000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           16, 0, 0, 0, 0, 0, 0, 10, 0, -22157, -6500, -23507, -1024, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           17, 0, 0, 0, 0, 0, 0, 10, 0, -24245, -6750, -23417, 1024, 0, 1536, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           18, 0, 0, 0, 0, 0, 0, 10, 0, -23103, -6600, -21872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    mizu_div_set            1
    obj_model_set           21, 1, 130, 4, 4, 31, 0, 10, 26, -3600, -1440, -21600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23650, -22880, 900, 900, ITEM_WOLFMEDAL, 1, 45, 2, 161
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -23100, -25250, 1500, 5200, 255, 0, I_GOSUB, main_02, 0, 0
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_03
    evt_end                 0

.proc aot
    if                      0, off_102E
    ck                      FG_ITEM, 45, 1
    ck                      FG_GENERAL_2, 3, 0
    set                     FG_GENERAL_2, 3, 1
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_102E:
    evt_end                 0

.proc main_02
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    set                     FG_3, 36, 1
    sce_bgmtbl_set          0, 1, 4, 65292, 64
    sce_bgmtbl_set          0, 0, 4, 5887, 32768
    sce_bgmtbl_set          0, 15, 4, 8991, 32768
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop_8c                  0, 200, 160, 9, 0, 15, 0
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 18
    evt_exec                255, I_GOSUB, main_07
    se_on                   2, 266, 1, 0, 0, 0
    set                     FG_GAME, 28, 1
    sleep                   10, 8
    set                     FG_GAME, 28, 0
    sleep                   10, 18
    xa_on                   0, 41
    sleep                   10, 8
    nop_8c                  0, 100, 200, 12, 0, 0, 0
    nop_8c                  0, 200, 100, 16, 0, 12, 0
    evt_exec                255, I_GOSUB, main_0C
    evt_exec                255, I_GOSUB, main_0D
    set                     FG_GENERAL_2, 0, 1
    evt_exec                255, I_GOSUB, main_09
    sleep                   10, 4
    evt_exec                255, I_GOSUB, main_0A
    sleep                   10, 1
    evt_exec                255, I_GOSUB, main_0B
    sleep                   10, 16
    sleep                   10, 32
    sce_fade_set            2, 2, 7, 0, 2
    sleep                   10, 63
    while                   4, off_10E8
    ck                      FG_GAME, 26, 1
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    ewhile                  0

off_10E8:
    cut_chg                 2
    sce_fade_set            2, 2, 7, 0, 248
    sleep                   10, 60
    cut_chg                 3
    evt_next
    nop
    message_on              0, 0, 0, 0, 0
    xa_on                   0, 42
    wsleep
    wsleeping
    cut_chg                 2
    sleep                   10, 30
    evt_exec                255, I_GOSUB, main_04
    evt_exec                255, I_GOSUB, main_05
    sleep                   10, 160
    cut_chg                 3
    sleep                   10, 30
    set                     FG_GENERAL_2, 2, 1
    if                      0, off_1130
    ck                      FG_LOCK, 1, 1
    save                    V_20, 3
    else                    0, off_1136

off_1130:
    save                    V_20, 1
    nop
    nop

off_1136:
    aot_on                  1
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_03
    evt_next
    work_set                WK_ENEMY, 0
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_ADD, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_SUB, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    for                     0, off_1176, 160
    member_set              15, 16, 13
    evt_next
    nop
    next                    0

off_1176:
    pos_set                 0, 6273, -400, -14780
    member_set              15, 96, 15
    member_set              3, 12, 0
    member_set              4, 0, 0
    sleep                   10, 30
    se_on                   2, 271, 3, 0, 0, 0
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, 0
    nop
    sleep                   10, 22
    se_on                   2, 270, 3, 0, 0, 0
    sce_espr_on             0, 26, 202, 4096, -450, 0, -100, 512
    sleep                   10, 2
    sce_espr_on             0, 26, 202, 4608, -450, 0, -100, 1280
    for                     0, off_1248, 3
    sleep                   10, 33
    se_on                   2, 270, 3, 0, 0, 0
    sce_espr_on             0, 26, 205, 4096, -450, 0, -100, 2048
    sleep                   10, 2
    sce_espr_on             0, 26, 205, 4096, -450, 0, -100, 1280
    evt_exec                255, I_GOSUB, main_06
    sleep                   10, 31
    se_on                   2, 270, 3, 0, 0, 0
    sce_espr_on             0, 26, 202, 4096, -450, 0, -100, 512
    sleep                   10, 2
    sce_espr_on             0, 26, 202, 4608, -450, 0, -100, 1280
    next                    0

off_1248:
    evt_end                 0

.proc main_06
    sleep                   10, 15
    sce_espr_on             0, 26, 198, 3072, 200, 400, 300, 2304
    evt_next
    nop
    sce_espr_on             0, 26, 198, 3200, 200, 380, 300, 2048
    evt_next
    nop
    sce_espr_on             0, 26, 198, 3328, 200, 370, 300, 2048
    evt_next
    nop
    sce_espr_on             0, 26, 198, 3584, 200, 360, 300, 1792
    evt_next
    nop
    sce_espr_on             0, 26, 198, 4096, 200, 350, 300, 1536
    sleep                   10, 24
    sce_espr_on             0, 26, 198, 4096, 200, 400, 300, 0
    sce_espr_on             0, 26, 198, 4096, 200, 400, 300, -256
    evt_next
    nop
    evt_end                 0

.proc main_07
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -128, 40, 80
    sleep                   10, 20
    plc_neck                4, 3, 0, 0, 40, 40
    sleep                   10, 13
    sce_bgm_control         0, 2, 0, 100, 64
    evt_next
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    sce_bgm_control         1, 1, 0, 100, 64
    plc_motion              0, 15, 64
    sleep                   10, 12
    member_set              12, 0, 0
    for                     0, off_132E, 15
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 300
    member_set2             12, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_132E:
    while                   6, off_133C
    cmp                     0, V_CUT, CMP_NE, 2
    evt_next
    nop
    ewhile                  0

off_133C:
    sce_bgm_control         2, 1, 1, 100, 64
    member_set              11, 4, 41
    member_set              13, 182, 202
    save                    V_05, 0
    save                    V_06, 0
    save                    V_07, 0
    member_set              15, 0, 12
    member_set              12, 20, 211
    for                     0, off_13A8, 15
    member_copy             V_TEMP, 11
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             11, V_TEMP
    nop
    member_copy             V_TEMP, 12
    nop
    calc2                   OP_SUB, V_TEMP, V_07
    member_set2             12, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc2                   OP_ADD, V_TEMP, V_06
    copy                    V_05, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_MUL, V_TEMP, 2
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_SUB, V_TEMP, 6
    copy                    V_06, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_13A8:
    member_set              12, 104, 247
    nop_8a                  0, 3, 0, 0, 0
    nop_8c                  0, 200, 160, 12, 0, 3, 0
    se_on                   2, 267, 1, 0, 0, 0
    plc_motion              0, 16, 64
    sleep                   10, 37
    while                   6, off_13DC
    cmp                     0, V_CUT, CMP_NE, 3
    evt_next
    nop
    ewhile                  0

off_13DC:
    plc_motion              0, 17, 64
    sleep                   10, 74
    plc_flg                 1, 80
    sleep                   10, 10
    plc_flg                 1, 208
    plc_cnt                 11
    sleep                   10, 10
    plc_flg                 1, 80
    plc_cnt                 74
    sleep                   10, 10
    for                     0, off_141C, 4
    plc_flg                 1, 192
    plc_cnt                 11
    sleep                   10, 3
    plc_flg                 1, 64
    plc_cnt                 74
    sleep                   10, 3
    next                    0

off_141C:
    plc_flg                 1, 208
    plc_cnt                 11
    sleep                   10, 10
    plc_motion              0, 17, 80
    plc_cnt                 74
    sleep                   10, 32
    sce_item_lost           ITEM_WOLFMEDAL
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             0, V_TEMP
    nop
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, 14
    nop
    speed_set               7, 5
    speed_set               5, 6
    speed_set               11, 1
    for                     0, off_145E, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_145E:
    speed_set               1, 5
    speed_set               7, 8
    speed_set               5, 6
    speed_set               11, 1
    for                     0, off_147A, 60
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_147A:
    while                   6, off_1488
    cmp                     0, V_CUT, CMP_NE, 2
    evt_next
    nop
    ewhile                  0

off_1488:
    sleep                   10, 10
    pos_set                 0, 10400, -5550, -12900
    member_set              14, 64, 250
    member_set              15, 0, 0
    member_set              16, 128, 255
    speed_set               11, 0
    speed_set               1, 5
    speed_set               7, 16
    speed_set               3, -12
    speed_set               2, 8
    speed_set               0, -20
    for                     0, off_14C4, 20
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_14C4:
    se_on                   2, 268, 3588, 0, 0, 0
    speed_set               1, -120
    speed_set               7, 10
    speed_set               2, -16
    speed_set               0, 6
    speed_set               3, 0
    speed_set               5, -12
    for                     0, off_14F4, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_14F4:
    se_on                   2, 269, 3588, 0, 0, 0
    while                   6, off_1510
    cmp                     0, V_CUT, CMP_NE, 3
    add_speed
    add_aspeed
    evt_next
    nop
    ewhile                  0

off_1510:
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_09
    save                    V_04, 3
    save                    V_06, 0
    save                    V_05, 0
    for                     0, off_15A6, 40
    save                    V_04, 3
    for                     0, off_1578, 8
    work_copy               4, 2, 0
    work_set                WK_OBJECT, 0
    nop
    member_copy             V_TEMP, 12
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             12, V_TEMP
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    member_set2             14, V_TEMP
    nop
    if                      0, off_1568
    cmp                     0, V_0C, CMP_LE, -1000
    member_set              12, 24, 252
    endif
    nop

off_1568:
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    next                    0

off_1578:
    copy                    V_TEMP, V_05
    nop
    calc2                   OP_ADD, V_TEMP, V_06
    copy                    V_05, V_TEMP
    nop
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_ADD, V_TEMP, 4
    copy                    V_06, V_TEMP
    nop
    if                      0, off_15A2
    cmp                     0, V_05, CMP_GE, 800
    save                    V_05, 800
    endif
    nop

off_15A2:
    evt_next
    nop
    next                    0

off_15A6:
    evt_end                 0

.proc main_0A
    work_set                WK_OBJECT, 11
    nop
    speed_set               9, -2
    speed_set               7, 8
    speed_set               8, 5
    for                     0, off_15C4, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_15C4:
    speed_set               9, 1
    speed_set               8, -5
    for                     0, off_15D8, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_15D8:
    for                     0, off_15E2, 30
    add_speed
    evt_next
    next                    0

off_15E2:
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, 12
    nop
    speed_set               9, 4
    speed_set               7, 6
    for                     0, off_15FC, 8
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_15FC:
    speed_set               9, -2
    for                     0, off_160C, 8
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_160C:
    for                     0, off_1616, 30
    add_speed
    evt_next
    next                    0

off_1616:
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, 0
    nop
    speed_set               9, -4
    for                     0, off_162C, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_162C:
    for                     0, off_1636, 4
    add_speed
    evt_next
    next                    0

off_1636:
    speed_set               9, 8
    for                     0, off_1646, 12
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1646:
    speed_set               9, -8
    for                     0, off_1656, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1656:
    evt_end                 0

.proc main_0D
    work_set                WK_OBJECT, 1
    nop
    speed_set               9, 4
    for                     0, off_166C, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_166C:
    for                     0, off_1676, 4
    add_speed
    evt_next
    next                    0

off_1676:
    speed_set               9, -8
    for                     0, off_1686, 12
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1686:
    speed_set               9, 8
    for                     0, off_1696, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1696:
    evt_end                 0
