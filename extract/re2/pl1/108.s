.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 0, 0, -703, 0, -17020, 816, 0, 7, 3, 0, 14, 5, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11422, -18315, 1800, 1800, -4696, 0, -1380, 560, 0, 9, 0, 0, 7, 1, 0, 0, UNLOCKED, 0
    aot_set                 2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21840, -21955, 1350, 1620, 0, 0, 0, 0, 0, 255
    aot_set                 3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -21840, -21955, 1350, 1620, 10, 0, 50, 0, 1, 0
    aot_set                 4, SCE_STATUS, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set_4p              12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25794, -15338, -25280, -5800, -16240, -3500, -22990, -20090, 2, 0, 0, 0, 0, 255
    evt_end                 0

.main
.proc main_00
    if                      0, off_1A2E
    ck                      1, 1, 1
    if                      0, off_1A0E
    cmp                     0, 27, CMP_EQ, 263
    if                      0, off_1A0C
    ck                      4, 179, 0
    set                     5, 5, 1
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_1A0C:
    endif
    nop

off_1A0E:
    if                      0, off_1A2C
    ck                      4, 0, 1
    if                      0, off_1A2A
    ck                      4, 181, 0
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0E, 0, 0
    endif
    nop

off_1A2A:
    endif
    nop

off_1A2C:
    endif
    nop

off_1A2E:
    if                      0, off_1AC8
    ck                      4, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 6, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -20961, -17944, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 7, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -21787, -19536, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 8, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -20851, -18867, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 9, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -20558, -17337, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 10, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -20944, -16400, 1800, 1800, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0F
    else                    0, off_1AF2

off_1AC8:
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 0, 255
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sca_id_set              9, 0, 0
    sca_id_set              16, 0, 0
    cut_be_set              5, 1, 0
    cut_be_set              0, 2, 1
    cut_be_set              4, 3, 1
    nop
    nop

off_1AF2:
    aot_set                 11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5530, -4687, 1800, 1100, 255, 0, I_GOSUB, main_0D, 0, 0
    if                      0, off_1B86
    ck                      0, 25, 1
    if                      0, off_1B38
    ck                      1, 1, 0
    item_aot_set_4p         5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25048, -17910, -24130, -15260, -21500, -16600, -22610, -19310, ITEM_HANDGUNAMMO, 15, 213, 255, 0
    else                    0, off_1B84

off_1B38:
    if                      0, off_1B62
    ck                      1, 0, 0
    item_aot_set_4p         5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25048, -17910, -24130, -15260, -21500, -16600, -22610, -19310, ITEM_SHOTGUNAMMO, 7, 213, 255, 0
    else                    0, off_1B82

off_1B62:
    item_aot_set_4p         5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25048, -17910, -24130, -15260, -21500, -16600, -22610, -19310, ITEM_ACIDROUNDS, 6, 213, 255, 0
    nop
    nop

off_1B82:
    nop
    nop

off_1B84:
    endif
    nop

off_1B86:
    evt_exec                255, I_GOSUB, main_03
    evt_end                 0

.proc main_01
    if                      0, off_1BE2
    ck                      4, 0, 0
    if                      0, off_1BA4
    cmp                     0, 2, CMP_EQ, 50
    evt_exec                255, I_GOSUB, main_06
    endif
    nop

off_1BA4:
    switch                  26, off_1BDE
    case                    0, off_1BC2, 3
    if                      0, off_1BC0
    ck                      5, 0, 0
    set                     5, 0, 1
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_1BC0:
    break                   0

off_1BC2:
    case                    0, off_1BDC, 6
    if                      0, off_1BDA
    ck                      5, 0, 0
    set                     5, 0, 1
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_1BDA:
    break                   0

off_1BDC:
    eswitch                 0

off_1BDE:
    else                    0, off_1C1E

off_1BE2:
    switch                  26, off_1C1C
    case                    0, off_1C00, 3
    if                      0, off_1BFE
    ck                      5, 0, 0
    set                     5, 0, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_1BFE:
    break                   0

off_1C00:
    case                    0, off_1C1A, 6
    if                      0, off_1C18
    ck                      5, 0, 0
    set                     5, 0, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_1C18:
    break                   0

off_1C1A:
    eswitch                 0

off_1C1C:
    nop
    nop

off_1C1E:
    evt_end                 0

.proc main_02
    set                     4, 179, 1
    set                     1, 9, 1
    set                     2, 7, 1
    evt_next
    sce_bgm_control         0, 0, 1, 1, 49
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 35
    sce_bgm_control         0, 0, 4, 1, 50
    sce_bgm_control         0, 4, 0, 1, 65
    nop
    sce_fade_set            2, 2, 7, 0, 254
    movie_on                8
    sce_fade_adjust         2, 255, 127
    evt_next
    set                     5, 5, 0
    nop
    sleep                   10, 63
    sce_bgm_control         0, 3, 0, 128, 65
    set                     2, 7, 0
    evt_end                 0

.proc main_03
    evt_next
    nop
    while                   4, off_1C7C
    ck                      5, 5, 1
    evt_next
    nop
    ewhile                  0

off_1C7C:
    if                      0, off_1D6E

off_1C80:
    ck                      4, 0, 0
    switch                  26, off_1D6A
    case                    0, off_1CA8, 0
    sce_bgm_control         0, 0, 1, 73, 49
    sce_bgm_control         0, 0, 2, 58, 64
    sce_bgm_control         0, 0, 3, 30, 35
    sce_bgm_control         0, 0, 4, 10, 50
    break                   0

off_1CA8:
    case                    0, off_1CC8, 1
    sce_bgm_control         0, 0, 1, 93, 49
    sce_bgm_control         0, 0, 2, 50, 80
    sce_bgm_control         0, 0, 3, 30, 100
    sce_bgm_control         0, 0, 4, 15, 30
    break                   0

off_1CC8:
    case                    0, off_1CE8, 2
    sce_bgm_control         0, 0, 1, 102, 70
    sce_bgm_control         0, 0, 2, 60, 80
    sce_bgm_control         0, 0, 3, 30, 64
    sce_bgm_control         0, 0, 4, 10, 3
    break                   0

off_1CE8:
    case                    0, off_1D08, 3
    sce_bgm_control         0, 0, 1, 110, 64
    sce_bgm_control         0, 0, 2, 60, 80
    sce_bgm_control         0, 0, 3, 30, 127
    sce_bgm_control         0, 0, 4, 10, 3
    break                   0

off_1D08:
    case                    0, off_1D28, 4
    sce_bgm_control         0, 0, 1, 111, 125
    sce_bgm_control         0, 0, 2, 70, 80
    sce_bgm_control         0, 0, 3, 30, 34
    sce_bgm_control         0, 0, 4, 10, 3
    break                   0

off_1D28:
    case                    0, off_1D48, 5
    sce_bgm_control         0, 0, 1, 98, 77
    sce_bgm_control         0, 0, 2, 60, 80
    sce_bgm_control         0, 0, 3, 30, 34
    sce_bgm_control         0, 0, 4, 10, 3
    break                   0

off_1D48:
    case                    0, off_1D68, 6
    sce_bgm_control         0, 0, 1, 127, 85
    sce_bgm_control         0, 0, 2, 60, 80
    sce_bgm_control         0, 0, 3, 30, 34
    sce_bgm_control         0, 0, 4, 10, 3
    break                   0

off_1D68:
    eswitch                 0

off_1D6A:
    else                    0, off_1E0E

off_1D6E:
    sce_bgm_control         0, 0, 1, 1, 0
    sce_bgm_control         0, 0, 4, 1, 0
    switch                  26, off_1E0C
    case                    0, off_1D92, 9
    sce_bgm_control         0, 0, 2, 58, 64
    sce_bgm_control         0, 0, 3, 30, 35
    break                   0

off_1D92:
    case                    0, off_1DA6, 10
    sce_bgm_control         0, 0, 2, 50, 80
    sce_bgm_control         0, 0, 3, 30, 100
    break                   0

off_1DA6:
    case                    0, off_1DBA, 11
    sce_bgm_control         0, 0, 2, 60, 80
    sce_bgm_control         0, 0, 3, 30, 64
    break                   0

off_1DBA:
    case                    0, off_1DCE, 12
    sce_bgm_control         0, 0, 2, 60, 80
    sce_bgm_control         0, 0, 3, 30, 127
    break                   0

off_1DCE:
    case                    0, off_1DE2, 13
    sce_bgm_control         0, 0, 2, 70, 80
    sce_bgm_control         0, 0, 3, 30, 34
    break                   0

off_1DE2:
    case                    0, off_1DF6, 14
    sce_bgm_control         0, 0, 2, 75, 80
    sce_bgm_control         0, 0, 3, 30, 34
    break                   0

off_1DF6:
    case                    0, off_1E0A, 15
    sce_bgm_control         0, 0, 2, 60, 80
    sce_bgm_control         0, 0, 3, 30, 34
    break                   0

off_1E0A:
    eswitch                 0

off_1E0C:
    nop
    nop

off_1E0E:
    do                      0, off_1E1A
    evt_next
    nop
    edwhile                 off_1E1A
    ck                      1, 11, 0

off_1E1A:
    goto                    255, 255, 0, off_1C80
    evt_end                 0

.proc main_04
    light_kido_set          1, 8600
    for                     0, off_1E30, 3
    evt_next
    nop
    next                    0

off_1E30:
    light_kido_set          1, 12000
    evt_next
    nop
    light_kido_set          1, 10000
    for                     0, off_1E44, 2
    evt_next
    nop
    next                    0

off_1E44:
    set                     5, 0, 0
    evt_end                 0

.proc main_05
    light_kido_set          1, 0
    set                     5, 0, 0
    evt_end                 0

.proc main_06
    set                     5, 1, 0
    evt_exec                255, I_GOSUB, main_07
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    do                      0, off_1E74
    sleep                   10, 1
    edwhile                 off_1E74
    ck                      5, 1, 0

off_1E74:
    evt_end                 0

.proc main_07
    set                     2, 7, 1
    set                     1, 27, 1
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               8, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_next
    set                     5, 2, 0
    nop
    evt_exec                255, I_GOSUB, main_08
    set                     5, 3, 0
    evt_exec                255, I_GOSUB, main_09
    sleep                   10, 10
    sca_id_set              9, 0, 0
    sca_id_set              16, 0, 0
    sleep                   10, 10
    do                      0, off_1EE8
    evt_next
    nop
    edwhile                 off_1EE8
    ck                      5, 2, 0

off_1EE8:
    cut_chg                 5
    sleep                   10, 90
    nop_8a                  0, 5, 0, 0, 0
    nop_8a                  0, 5, 0, 10, 0
    nop_8c                  0, 200, 240, 15, 0, 0, 0
    se_on                   2, 267, 0, -18762, -2800, -21034
    sce_bgm_control         1, 1, 1, 80, 64
    sce_espr_on             0, 4378, 0, 8192, -27100, -11900, -20000, 0
    sleep                   10, 7
    sce_espr_on             0, 4378, 0, 8192, -27100, -11900, -20000, 0
    sleep                   10, 3
    sce_espr_on             0, 4378, 0, 8704, -27100, -11700, -19600, 0
    sleep                   10, 2
    sce_espr_on             0, 4378, 0, 8704, -27100, -11500, -19200, 0
    sleep                   10, 2
    sce_espr_on             0, 4378, 0, 9216, -27100, -11500, -19300, 0
    sce_espr_on             0, 4378, 0, 9216, -27100, -11200, -18400, 0
    sleep                   10, 2
    sce_espr_on             0, 4378, 0, 9728, -27050, -11200, -18400, 0
    sce_espr_on             0, 4378, 0, 9728, -27100, -10800, -18200, 0
    sleep                   10, 2
    sce_espr_on             0, 4378, 0, 10240, -27100, -11900, -19950, 0
    sce_espr_on             0, 4378, 0, 10240, -27100, -11500, -19200, 0
    sce_espr_on             0, 4378, 0, 10240, -27100, -11200, -18450, 0
    sleep                   10, 2
    evt_exec                255, I_GOSUB, main_0A
    cut_chg                 3
    sce_espr_kill           26, 17, 0, 0
    nop
    sce_espr_on             0, 35, 0, 11008, -21900, -5700, -17100, 0
    evt_next
    nop
    sce_espr_on             0, 36, 0, 9216, -21900, -1600, -17300, 0
    evt_next
    nop
    sce_espr_on             0, 35, 0, 11008, -21905, -5800, -17100, 0
    evt_next
    nop
    sce_espr_on             0, 36, 0, 9216, -21905, -1600, -17300, 0
    sleep                   10, 30
    sce_bgm_control         1, 5, 0, 0, 0
    sleep                   10, 60
    cut_chg                 8
    sleep                   10, 90
    evt_exec                255, I_GOSUB, main_0B
    cut_chg                 7
    sce_espr_kill           35, 0, 0, 0
    sce_espr_kill           36, 0, 0, 0
    sleep                   10, 100
    set                     4, 0, 1
    if                      0, off_2072
    ck                      1, 1, 1
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0E, 0, 0
    endif
    nop

off_2072:
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 0, 255
    cut_chg                 15
    set                     1, 27, 0
    evt_exec                255, I_GOSUB, main_0C
    sleep                   10, 20
    cut_auto                1
    set                     2, 7, 0
    set                     5, 1, 1
    aot_on                  4
    sleep                   10, 1
    if                      0, off_20CC
    ck                      1, 1, 0
    if                      0, off_20BE
    ck                      1, 0, 0
    sce_bgmtbl_set          0, 8, 1, 65280, 0
    sce_bgmtbl_set          0, 10, 1, 255, 0
    else                    0, off_20C8

off_20BE:
    sce_bgmtbl_set          0, 8, 1, 65280, 0
    nop
    nop

off_20C8:
    else                    0, off_2104

off_20CC:
    if                      0, off_20F0
    ck                      1, 0, 0
    sce_bgmtbl_set          0, 8, 1, 65280, 0
    sce_bgmtbl_set          0, 9, 1, 1822, 64
    sce_bgmtbl_set          0, 10, 1, 255, 0
    else                    0, off_2102

off_20F0:
    sce_bgmtbl_set          0, 8, 1, 65280, 0
    sce_bgmtbl_set          0, 9, 1, 1822, 32832
    nop
    nop

off_2102:
    nop
    nop

off_2104:
    set                     5, 3, 1
    evt_end                 0

.proc main_08
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2122
    ck                      1, 0, 1
    pos_set                 0, -19920, 0, -21250
    else                    0, off_212C

off_2122:
    pos_set                 0, -19502, 0, -21200
    nop
    nop

off_212C:
    member_set              15, 0, 8
    sleep                   10, 20
    if                      0, off_2144
    ck                      1, 0, 1
    plc_motion              0, 15, 0
    else                    0, off_214A

off_2144:
    plc_motion              0, 15, 1
    nop
    nop

off_214A:
    sleep                   10, 30
    if                      0, off_215E
    ck                      1, 0, 1
    plc_motion              0, 16, 0
    else                    0, off_2164

off_215E:
    plc_motion              0, 16, 1
    nop
    nop

off_2164:
    sleep                   10, 28
    se_on                   2, 261, 1, 6000, -200, 0
    sleep                   10, 22
    for                     0, off_21AA, 2
    if                      0, off_218E
    ck                      1, 0, 1
    plc_motion              0, 17, 0
    else                    0, off_2194

off_218E:
    plc_motion              0, 17, 1
    nop
    nop

off_2194:
    sleep                   10, 18
    se_on                   2, 261, 1, 6000, -200, 0
    sleep                   10, 12
    next                    0

off_21AA:
    set                     5, 2, 1
    for                     0, off_21CE, 2
    plc_motion              0, 17, 0
    sleep                   10, 18
    se_on                   2, 261, 1, 6000, -200, 0
    sleep                   10, 12
    next                    0

off_21CE:
    plc_motion              0, 17, 0
    sleep                   10, 18
    se_on                   2, 261, 1, 6000, -200, 0
    sleep                   10, 15
    sleep                   10, 12
    plc_cnt                 50
    plc_motion              0, 16, 192
    sleep                   10, 50
    plc_cnt                 30
    plc_motion              0, 15, 192
    sleep                   10, 30
    plc_neck                2, 0, 600, -512, 15, 20
    sleep                   10, 180
    plc_neck                0, 0, 0, 0, 40, 50
    sleep                   10, 60
    cut_be_set              5, 1, 0
    plc_ret
    nop
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -20880, -1800, -21245
    sleep                   10, 20
    sleep                   10, 30
    nop_8b                  100, 10, 0, 40, 0
    nop_8b                  110, 10, 0, 70, 0
    nop_8b                  120, 10, 0, 100, 0
    nop_8b                  130, 10, 0, 130, 0
    nop_8b                  140, 10, 0, 160, 0
    speed_set               3, 0
    speed_set               9, -1
    for                     0, off_2268, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2268:
    speed_set               3, -10
    speed_set               9, -1
    for                     0, off_227E, 5
    add_speed
    evt_next
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_227E:
    speed_set               9, -2
    for                     0, off_228E, 23
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_228E:
    speed_set               9, 10
    for                     0, off_229E, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_229E:
    for                     0, off_22CE, 5
    sleep                   10, 17
    speed_set               3, -32
    speed_set               9, -2
    for                     0, off_22BC, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_22BC:
    speed_set               9, 8
    for                     0, off_22CC, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_22CC:
    next                    0

off_22CE:
    while                   4, off_22DA
    ck                      5, 3, 0
    evt_next
    nop
    ewhile                  0

off_22DA:
    pos_set                 0, 0, 0, 0
    evt_end                 0

.proc main_0A
    sce_espr_kill           13, 0, 0, 0
    sce_espr_kill           14, 0, 0, 0
    evt_next
    nop
    sce_espr_on             0, 14, 0, 8192, -21241, 0, -16667, -512
    sce_espr_on             0, 14, 0, 6144, -20238, 0, -14337, 0
    sce_espr_on             0, 14, 0, 9216, -21754, 0, -14550, 0
    sce_espr_on             0, 13, 0, 8192, -22751, -5000, -15861, 512
    sce_espr_on             0, 13, 0, 10240, -22755, -4800, -16847, 512
    for                     0, off_2398, 3
    sce_espr_on             0, 4378, 0, 4996, -22000, -3200, -17300, 100
    sleep                   10, 4
    sce_espr_on             0, 4378, 0, 4096, -22000, -2900, -16600, -512
    sleep                   10, 10
    sce_espr_on             0, 4378, 0, 3296, -20900, -50, -16600, -3199
    sleep                   10, 2
    sce_espr_on             0, 4378, 0, 5096, -19400, -250, -16400, -2999
    sleep                   10, 4
    next                    0

off_2398:
    sce_espr_on             0, 772, 0, 11776, -22751, -4900, -15486, 512
    se_on                   2, 266, 0, -22751, -4900, -15486
    sleep                   10, 10
    sce_espr_on             0, 772, 0, 10240, -23018, -500, -18726, -26
    se_on                   2, 266, 0, -23018, -500, -18726
    evt_next
    nop
    sce_espr_on             0, 772, 0, 11776, -22154, -100, -17286, 26
    se_on                   2, 266, 0, -22751, -4900, -15486
    evt_end                 0

.proc main_0B
    sce_espr_kill           13, 0, 0, 0
    sce_espr_kill           14, 0, 0, 0
    evt_next
    nop
    sce_espr_on             0, 14, 0, 6144, -21241, 0, -16667, -512
    sce_espr_on             0, 14, 0, 4096, -20238, 0, -14337, 0
    sce_espr_on             0, 14, 0, 8192, -21754, 0, -14550, 0
    sce_espr_on             0, 13, 0, 7680, -22751, -5000, -15861, 512
    sce_espr_on             0, 13, 0, 8192, -22755, -4800, -16847, 512
    sce_espr_on             0, 772, 0, 8192, -21586, 0, -19066, 26
    sce_espr_on             0, 772, 0, 9216, -20948, 0, -17079, 26
    sce_espr_on             0, 772, 0, 8704, -22100, 0, -16307, 26
    se_on                   2, 266, 0, -21241, 0, -16667
    sleep                   10, 8
    evt_end                 0

.proc main_0C
    sce_espr_kill           13, 0, 0, 0
    sce_espr_kill           14, 0, 0, 0
    sce_espr_kill           4, 3, 0, 0
    nop
    sleep                   10, 40
    evt_next
    nop
    sce_espr_on             0, 772, 0, 9216, -22154, -100, -17286, 26
    evt_end                 0

.proc main_0D
    if                      0, off_24CA
    ck                      4, 0, 0
    sce_bgm_control         0, 0, 1, 1, 64
    endif
    nop

off_24CA:
    aot_on                  0
    evt_end                 0

.proc main_0E
    set                     1, 27, 1
    set                     2, 7, 1
    set                     4, 181, 1
    sleep                   10, 8
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 10
    plc_dest                0, 9, 4, -10550, -18550
    while                   4, off_24FA
    ck                      5, 4, 0
    evt_next
    nop
    ewhile                  0

off_24FA:
    plc_motion              0, 18, 0
    sleep                   10, 9
    for                     0, off_250E, 30
    plc_cnt                 10
    evt_next
    nop
    next                    0

off_250E:
    plc_neck                2, 0, -800, -800, 10, 10
    for                     0, off_2524, 36
    plc_cnt                 10
    evt_next
    nop
    next                    0

off_2524:
    sce_bgm_control         0, 4, 0, 1, 65
    sce_fade_set            2, 2, 7, 0, 248
    movie_on                9
    sleep                   10, 1
    sce_bgm_control         0, 3, 0, 128, 65
    plc_motion              0, 18, 192
    plc_cnt                 10
    sleep                   10, 9
    plc_neck                0, 0, 0, 0, 10, 10
    sleep                   10, 30
    set                     1, 27, 0
    set                     2, 7, 0
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 168, 237, 0, 0, 156, 250
    plc_ret
    nop
    evt_end                 0

.proc main_0F
    while                   4, off_2576
    ck                      5, 5, 1
    evt_next
    nop
    ewhile                  0

off_2576:
    sce_espr_on             0, 14, 0, 11776, -25451, 0, -15224, -512
    sce_espr_on             0, 14, 0, 12288, -24587, 0, -16936, 0
    sce_espr_on             0, 14, 0, 12800, -21241, 0, -18267, -512
    sce_espr_on             0, 14, 0, 15872, -23238, 0, -16837, 0
    sce_espr_on             0, 14, 0, 10240, -20475, 0, -18572, 0
    sce_espr_on             0, 13, 0, 11776, -22751, -4600, -15861, 512
    sce_espr_on             0, 13, 0, 12800, -22755, -4000, -16847, 512
    evt_end                 0
