.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -6921, -6976, 1100, 1800, -1630, -1800, -8424, 280, 3, 16, 0, 1, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 9179, -1776, 1100, 2300, -26597, 0, -25166, 0, 3, 11, 3, 0, 22, 4, 0, 0, UNLOCKED, 0
    aot_set                 4, SCE_STATUS, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_220E
    ck                      1, 0, 0
    if                      0, off_2204
    ck                      4, 31, 0
    set                     30, 0, 1
    rbj_reset
    nop
    else                    0, off_220C

off_2204:
    set                     30, 1, 1
    rbj_reset
    nop
    nop
    nop

off_220C:
    endif
    nop

off_220E:
    obj_model_set           0, 1, 130, 4, 4, 0, 4, 10, 26, -11200, -1820, -3150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, 9710, -15750, 1015, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_22A2
    ck                      1, 0, 0
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 10, 16, -10982, -11750, 1231, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -11982, 681, 1800, 1800, ITEM_121, 1, 183, 8, 0
    else                    0, off_22E0

off_22A2:
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -10982, -11750, 1231, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -11982, 681, 1800, 1800, ITEM_121, 1, 183, 5, 0
    nop
    nop

off_22E0:
    if                      0, off_2328
    ck                      1, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 16, -9174, -10800, -1422, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -10482, -2119, 1800, 1800, ITEM_EAGLEMEDAL, 1, 184, 7, 1
    else                    0, off_2366

off_2328:
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -9174, -10800, -1422, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -10482, -2119, 1800, 1800, ITEM_EAGLEMEDAL, 1, 184, 4, 1
    nop
    nop

off_2366:
    evt_end                 0

.main
.proc main_00
    if                      0, off_241A
    ck                      4, 31, 0
    set                     4, 32, 1
    if                      0, off_23C6
    ck                      1, 1, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_UNDER, 4, 0, 5140, 10127, 1800, 4200, 255, 0, I_GOSUB, main_02, 0, 0
    else                    0, off_23DC

off_23C6:
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_UNDER, 4, 0, 5140, 10127, 1800, 4200, 255, 0, I_GOSUB, main_02, 0, 0
    nop
    nop

off_23DC:
    sce_em_set              0, 0, ENEMY_ANNETTEBIRKIN1, 0, 8, 5, 0, 0, 255, 20000, 20000, 20000, 0, 0, 0
    obj_model_set           10, 0, 0, 0, 0, 0, 0, 10, 0, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_241A:
    if                      0, off_2460
    ck                      1, 3, 1
    if                      0, off_2446
    cmp                     0, 27, CMP_EQ, 1040
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 12, 4, 31, 0, 255, -4679, -7200, -5074, 0, 0, 0
    else                    0, off_245E

off_2446:
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 12, 4, 31, 0, 255, 8123, -7200, -1147, 2880, 0, 0
    nop
    nop

off_245E:
    endif
    nop

off_2460:
    if                      0, off_2504
    ck                      4, 31, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 0, 20000, 20000, 20000, -530, -462, -367, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 49920, 0, 10, 0, -30, -20, -68, 384, -1536, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 50176, 0, 10, 0, -32, -35, 3, 0, 0, 1244, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 50176, 0, 10, 0, -98, -34, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_2540

off_2504:
    aot_set                 3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 4, 0, 9669, 3786, 1800, 2000, 10, 0, 50, 0, 1, 0
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 0, 20000, 20000, 2000, 1024, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_2540:
    if                      0, off_2558
    ck                      4, 30, 0
    cut_be_set              0, 2, 0
    sca_id_set              0, 0, 0
    sca_id_set              25, 16, 252
    else                    0, off_2566

off_2558:
    cut_be_set              0, 2, 1
    sca_id_set              0, 0, 222
    sca_id_set              25, 0, 0
    nop
    nop

off_2566:
    if                      0, off_2584
    ck                      4, 32, 0
    aot_reset               1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 35, 0, 0, 0, 0, 255
    set                     5, 4, 1
    evt_exec                255, I_GOSUB, main_0D
    else                    0, off_25A2

off_2584:
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_18, 0, 0
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     5, 4, 1
    evt_exec                255, I_GOSUB, main_0E
    nop
    nop

off_25A2:
    if                      0, off_25C2
    cmp                     0, 32, CMP_EQ, 14
    aot_reset               10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 39, 0, 0, 0, 0, 255
    aot_reset               11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 38, 0, 0, 0, 0, 255
    endif
    nop

off_25C2:
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_17, 0, 0
    evt_exec                255, I_GOSUB, main_0C
    evt_exec                255, I_GOSUB, main_16
    gosub                   11
    evt_end                 0

.proc main_01
    if                      0, off_25E8
    cmp                     0, 2, CMP_EQ, 50
    evt_exec                255, I_GOSUB, main_0F
    endif
    nop

off_25E8:
    evt_end                 0

.proc main_02
    set                     2, 7, 1
    set                     1, 27, 1
    set                     4, 31, 1
    if                      0, off_260A
    ck                      1, 1, 0
    sce_bgmtbl_set          0, 9, 4, 6164, 32768
    else                    0, off_2614

off_260A:
    sce_bgmtbl_set          0, 9, 4, 6164, 32768
    nop
    nop

off_2614:
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2636
    member_cmp              0, 7, 6, 255, 15
    set                     5, 12, 1
    weapon_chg              0
    gosub                   3
    endif
    nop

off_2636:
    evt_exec                255, I_GOSUB, main_06
    evt_exec                255, I_GOSUB, main_07
    cut_chg                 13
    sleep                   10, 70
    sce_bgm_control         2, 1, 0, 100, 64
    cut_chg                 9
    sleep                   10, 2
    sleep                   10, 30
    sleep                   10, 45
    cut_chg                 11
    sleep                   10, 2
    xa_vol                  110
    xa_on                   0, 4
    message_on              0, 0, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 4
    cut_chg                 9
    sleep                   10, 2
    xa_on                   0, 18
    message_on              0, 1, 0, 0, 0
    sleep                   10, 119
    message_on              0, 2, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 8
    while                   4, off_269C
    ck                      5, 5, 0
    evt_next
    nop
    ewhile                  0

off_269C:
    cut_chg                 13
    sleep                   10, 2
    message_on              0, 3, 0, 0, 0
    xa_on                   0, 5
    sleep                   10, 21
    message_on              0, 4, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 12
    set                     5, 6, 1
    cut_chg                 10
    sleep                   10, 2
    xa_on                   0, 6
    message_on              0, 5, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 16
    message_on              0, 6, 0, 0, 0
    xa_on                   0, 7
    sleep                   10, 131
    sleep                   10, 101
    message_on              0, 8, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 4
    set                     5, 7, 1
    cut_chg                 13
    sleep                   10, 2
    message_on              0, 9, 0, 0, 0
    xa_on                   0, 8
    wsleep
    wsleeping
    sleep                   10, 4
    set                     5, 6, 1
    cut_chg                 9
    sleep                   10, 2
    message_on              0, 10, 0, 0, 0
    xa_on                   0, 9
    sleep                   10, 41
    message_on              0, 11, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    set                     5, 7, 1
    xa_on                   0, 10
    wsleep
    wsleeping
    sleep                   10, 5
    set                     5, 6, 1
    message_on              0, 12, 0, 0, 0
    xa_on                   0, 11
    wsleep
    wsleeping
    message_on              0, 13, 0, 0, 0
    xa_on                   0, 12
    sleep                   10, 139
    message_on              0, 14, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 13
    sleep                   10, 2
    message_on              0, 15, 0, 0, 0
    xa_on                   0, 13
    wsleep
    wsleeping
    sleep                   10, 5
    set                     5, 6, 1
    cut_chg                 10
    sleep                   10, 2
    message_on              0, 16, 0, 0, 0
    xa_on                   0, 14
    sleep                   10, 91
    message_on              0, 17, 0, 0, 0
    wsleep
    wsleeping
    set                     5, 7, 1
    message_on              0, 18, 0, 0, 0
    xa_on                   0, 15
    wsleep
    wsleeping
    sleep                   10, 6
    set                     5, 6, 1
    message_on              0, 19, 0, 0, 0
    xa_on                   0, 16
    sleep                   10, 91
    wsleep
    wsleeping
    sleep                   10, 5
    cut_chg                 9
    sleep                   10, 2
    message_on              0, 20, 0, 0, 0
    xa_on                   0, 17
    sleep                   10, 81
    message_on              0, 21, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    if                      0, off_2894
    ck                      1, 1, 0
    sleep                   10, 60
    sce_fade_set            2, 2, 7, 0, 2
    sce_bgm_control         2, 4, 0, 100, 64
    sleep                   10, 1
    sce_bgm_control         0, 4, 1, 51, 65
    sleep                   10, 62
    cut_chg                 10
    evt_next
    nop
    sce_fade_set            2, 2, 7, 0, 254
    movie_on                11
    evt_next
    nop
    sce_fade_adjust         2, 255, 127
    sleep                   10, 63
    sce_bgm_control         2, 3, 0, 100, 64
    evt_next
    sce_bgm_control         0, 3, 1, 51, 65
    set                     5, 8, 1
    nop
    message_on              0, 22, 0, 0, 0
    xa_on                   0, 19
    wsleep
    wsleeping
    set                     5, 6, 1
    message_on              0, 23, 0, 0, 0
    xa_on                   0, 20
    sleep                   10, 81
    message_on              0, 24, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 9
    evt_next
    nop
    message_on              0, 25, 0, 0, 0
    xa_on                   0, 21
    sleep                   10, 131
    message_on              0, 26, 0, 0, 0
    wsleep
    wsleeping
    set                     5, 7, 1
    cut_chg                 13
    evt_next
    nop
    message_on              0, 27, 0, 0, 0
    xa_on                   0, 22
    wsleep
    wsleeping
    cut_chg                 10
    sleep                   10, 30
    else                    0, off_28DC

off_2894:
    cut_chg                 6
    sleep                   10, 80
    cut_chg                 9
    sleep                   10, 2
    message_on              0, 29, 0, 0, 0
    xa_vol                  120
    xa_on                   0, 27
    sleep                   10, 71
    message_on              0, 30, 0, 0, 0
    wsleep
    wsleeping
    set                     5, 7, 1
    cut_chg                 13
    sleep                   10, 2
    message_on              0, 31, 0, 0, 0
    xa_on                   0, 28
    wsleep
    wsleeping
    message_on              0, 32, 0, 0, 0
    xa_on                   0, 29
    wsleep
    wsleeping
    nop
    nop

off_28DC:
    sce_bgm_control         2, 5, 0, 0, 64
    cut_chg                 13
    set                     5, 2, 1
    sleep                   10, 10
    cut_chg                 10
    sleep                   10, 2
    xa_vol                  125
    xa_on                   0, 23
    sleep                   10, 220
    wsleep
    wsleeping
    cut_chg                 14
    sleep                   10, 2
    xa_vol                  110
    xa_on                   0, 25
    sleep                   10, 60
    wsleep
    wsleeping
    cut_chg                 10
    sleep                   10, 2
    message_on              0, 28, 0, 0, 0
    xa_on                   0, 26
    wsleep
    wsleeping
    cut_chg                 10
    sleep                   10, 2
    while                   4, off_2934
    ck                      5, 3, 0
    evt_next
    nop
    ewhile                  0

off_2934:
    wsleep
    wsleeping
    if                      0, off_296A
    ck                      1, 1, 1
    evt_exec                255, I_GOSUB, main_08
    sce_espr_kill           5, 15, 0, 0
    cut_chg                 12
    evt_next
    sce_espr_on             0, 3845, 0, 1096, 4823, -9400, 11700, 0
    sleep                   10, 100
    sleep                   10, 30
    sce_espr_kill           5, 15, 0, 0
    nop
    endif
    nop

off_296A:
    cut_chg                 2
    cut_auto                1
    set                     4, 32, 0
    set                     5, 4, 0
    evt_next
    evt_next
    sce_bgm_control         1, 0, 1, 71, 91
    set                     5, 4, 1
    evt_exec                255, I_GOSUB, main_0D
    aot_reset               1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 35, 0, 0, 0, 0, 255
    aot_reset               3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 10, 0, 50, 0, 1, 0
    if                      0, off_29A8
    ck                      5, 12, 1
    weapon_chg              3
    gosub                   5
    endif
    nop

off_29A8:
    set                     5, 3, 0
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_03
    work_set                WK_OBJECT, 10
    nop
    super_set               0, 64, 139, 20, 270, -10, -1024, -2048, 0
    evt_end                 0

.proc main_04
    work_set                WK_OBJECT, 10
    nop
    super_on                0, 64, 139, 20, 0, 14, 1, 246, 255, 0, 252, 0, 248, 0, 0
    super_reset             0, 0, 401, 4973
    for                     0, off_2A06, 16
    speed_set               1, 100
    speed_set               0, 100
    speed_set               2, -40
    speed_set               3, 150
    speed_set               4, 120
    add_speed
    evt_next
    next                    0

off_2A06:
    se_on                   2, 275, 2564, 0, 0, 0
    member_set              12, 32, 28
    evt_end                 0

.proc main_05
    work_set                WK_OBJECT, 10
    nop
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 5800, -7200, 11900
    plc_dest                0, 21, 0, 2048, 128
    while                   4, off_2A46
    ck                      5, 0, 0
    evt_next
    nop
    ewhile                  0

off_2A46:
    set                     5, 0, 0
    member_set              15, 0, 8
    se_on                   2, 264, 0, -8493, -9000, 11900
    if                      0, off_2AB2
    ck                      5, 12, 1
    plc_motion              0, 28, 64
    evt_next
    nop
    sce_espr_on             0, 24, 0, 1024, 4900, -9000, 11900, 0
    nop_8a                  0, 4, 0, 0, 0
    nop_8c                  0, 200, 160, 10, 0, 0, 0
    evt_next
    nop
    sce_espr_on             0, 280, 0, 2048, 4900, -9000, 11900, 0
    sleep                   10, 2
    se_on                   2, 265, 0, 4900, -9000, 11900
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_04
    else                    0, off_2AF8

off_2AB2:
    nop_8a                  0, 4, 0, 0, 0
    nop_8c                  0, 140, 120, 8, 0, 0, 0
    sce_espr_on             0, 24, 0, 1024, 5790, -8500, 11020, 0
    plc_motion              0, 27, 64
    sleep                   10, 1
    plc_motion              0, 27, 192
    plc_cnt                 19
    sleep                   10, 2
    sce_espr_on             0, 280, 0, 1152, 5790, -8500, 11020, 0
    sleep                   10, 2
    nop
    nop

off_2AF8:
    sleep                   10, 2
    sleep                   10, 43
    plc_motion              2, 2, 4
    while                   4, off_2B10
    ck                      5, 5, 0
    evt_next
    nop
    ewhile                  0

off_2B10:
    sleep                   10, 30
    sleep                   10, 20
    plc_motion              0, 27, 0
    plc_neck                2, 0, 0, 100, 25, 10
    sleep                   10, 10
    plc_neck                5, 3, 0, 0, 10, 10
    plc_motion              0, 27, 192
    plc_cnt                 20
    while                   4, off_2B46
    ck                      5, 6, 0
    evt_next
    nop
    ewhile                  0

off_2B46:
    plc_motion              2, 2, 4
    evt_next
    nop
    while                   4, off_2B58
    ck                      5, 7, 0
    evt_next
    nop
    ewhile                  0

off_2B58:
    set                     5, 7, 0
    plc_neck                2, 0, 200, 0, 25, 10
    sleep                   10, 4
    plc_neck                2, 0, -200, 0, 25, 10
    sleep                   10, 4
    plc_neck                2, 0, 0, 0, 25, 10
    sleep                   10, 10
    while                   4, off_2B92
    ck                      5, 6, 0
    evt_next
    nop
    ewhile                  0

off_2B92:
    evt_next
    plc_motion              2, 2, 4
    nop
    while                   4, off_2BA4
    ck                      5, 7, 0
    evt_next
    nop
    ewhile                  0

off_2BA4:
    set                     5, 7, 0
    plc_motion              0, 27, 0
    sleep                   10, 20
    plc_motion              0, 27, 192
    plc_cnt                 10
    sleep                   10, 20
    plc_motion              2, 2, 4
    sleep                   10, 11
    plc_neck                2, 0, 0, -100, 25, 10
    sleep                   10, 15
    plc_neck                0, 0, 0, 0, 25, 10
    sleep                   10, 80
    plc_neck                2, 0, 200, 100, 25, 10
    sleep                   10, 10
    plc_neck                2, 0, -200, 100, 25, 10
    sleep                   10, 10
    plc_neck                2, 0, 200, 100, 25, 10
    sleep                   10, 4
    plc_neck                2, 0, -150, 200, 4, 4
    sleep                   10, 20
    sleep                   10, 130
    plc_neck                5, 3, 0, 0, 10, 10
    while                   4, off_2C30
    ck                      5, 7, 0
    evt_next
    nop
    ewhile                  0

off_2C30:
    set                     5, 7, 0
    sleep                   10, 5
    plc_neck                2, 0, 80, 100, 5, 2
    sleep                   10, 15
    plc_motion              0, 31, 0
    sleep                   10, 15
    plc_neck                2, 0, -80, 0, 5, 2
    sleep                   10, 10
    plc_motion              0, 31, 128
    plc_cnt                 5
    plc_neck                5, 3, 0, 0, 25, 10
    sleep                   10, 30
    plc_motion              2, 2, 4
    if                      0, off_2CE4
    ck                      1, 1, 0
    while                   4, off_2C88
    ck                      5, 8, 0
    evt_next
    nop
    ewhile                  0

off_2C88:
    plc_motion              0, 27, 16
    sleep                   10, 30
    plc_motion              0, 27, 192
    plc_cnt                 15
    sleep                   10, 15
    sleep                   10, 15
    plc_motion              2, 2, 4
    while                   4, off_2CAE
    ck                      5, 7, 0
    evt_next
    nop
    ewhile                  0

off_2CAE:
    set                     5, 7, 0
    sleep                   10, 48
    plc_neck                2, 0, 300, 100, 25, 10
    sleep                   10, 10
    plc_neck                2, 0, -300, 100, 25, 10
    sleep                   10, 10
    plc_neck                2, 0, 300, 100, 25, 10
    sleep                   10, 10
    else                    0, off_2D14

off_2CE4:
    while                   4, off_2CF0
    ck                      5, 7, 0
    evt_next
    nop
    ewhile                  0

off_2CF0:
    pos_set                 0, 5927, -7200, 11938
    set                     5, 7, 0
    plc_motion              0, 27, 65
    sleep                   10, 15
    plc_motion              0, 27, 193
    plc_cnt                 15
    sleep                   10, 15
    plc_motion              2, 2, 4
    nop
    nop

off_2D14:
    while                   4, off_2D20
    ck                      5, 2, 0
    evt_next
    nop
    ewhile                  0

off_2D20:
    pos_set                 0, 3742, -7200, 11900
    member_set              15, 0, 0
    plc_motion              10, 18, 64
    plc_neck                5, 3, 0, 0, 0, 0
    sleep                   10, 68
    plc_flg                 1, 80
    sleep                   10, 6
    plc_flg                 1, 80
    sleep                   10, 16
    plc_flg                 1, 64
    sleep                   10, 22
    plc_flg                 1, 80
    sleep                   10, 16
    plc_flg                 1, 64
    sleep                   10, 10
    plc_flg                 1, 80
    sleep                   10, 20
    plc_flg                 1, 80
    sleep                   10, 28
    plc_flg                 1, 64
    sleep                   10, 20
    while                   4, off_2D8A
    ck                      1, 11, 0
    evt_next
    nop
    ewhile                  0

off_2D8A:
    evt_next
    nop
    while                   6, off_2D9A
    cmp                     0, 26, CMP_NE, 10
    evt_next
    nop
    ewhile                  0

off_2D9A:
    member_set              15, 0, 4
    plc_motion              0, 20, 64
    plc_neck                4, 2, 0, 0, 50, 40
    sleep                   10, 50
    plc_motion              2, 2, 5
    sleep                   10, 20
    if                      0, off_2E0C
    ck                      5, 12, 1
    plc_neck                1, 6063, -7200, 12300, 30, 30
    sleep                   10, 30
    plc_dest                0, 21, 0, -336, 64
    while                   4, off_2DE2
    ck                      5, 0, 0
    evt_next
    nop
    ewhile                  0

off_2DE2:
    set                     5, 0, 0
    plc_neck                0, 0, 0, 0, 40, 40
    plc_motion              1, 6, 2
    sleep                   10, 25
    gosub                   3
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 30
    plc_motion              1, 6, 193
    sleep                   10, 25
    endif
    nop

off_2E0C:
    plc_dest                0, 21, 0, 2048, 64
    while                   4, off_2E20
    ck                      5, 0, 0
    evt_next
    nop
    ewhile                  0

off_2E20:
    set                     5, 0, 0
    if                      0, off_2E44
    ck                      1, 1, 1
    plc_neck                2, 0, 0, 200, 40, 40
    sleep                   10, 40
    plc_motion              0, 30, 0
    sleep                   10, 22
    endif
    nop

off_2E44:
    set                     5, 3, 1
    if                      0, off_2E6C
    ck                      1, 1, 1
    sleep                   10, 2
    pos_set                 0, 5345, -7200, 11787
    while                   6, off_2E6A
    cmp                     0, 26, CMP_EQ, 12
    evt_next
    nop
    ewhile                  0

off_2E6A:
    endif
    nop

off_2E6C:
    plc_ret
    nop
    evt_end                 0

.proc main_07
    work_set                WK_ENEMY, 0
    plc_motion              2, 9, 64
    nop
    pos_set                 0, -8493, -9000, 11900
    while                   6, off_2E8E
    cmp                     0, 26, CMP_NE, 11
    evt_next
    nop
    ewhile                  0

off_2E8E:
    sleep                   10, 8
    plc_motion              10, 29, 4
    for                     0, off_2EC2, 5
    sleep                   10, 9
    se_on                   2, 285, 3, 0, 0, 0
    sleep                   10, 15
    se_on                   2, 285, 3, 0, 0, 0
    sleep                   10, 6
    next                    0

off_2EC2:
    sleep                   10, 9
    se_on                   2, 285, 3, 0, 0, 0
    sleep                   10, 6
    plc_motion              0, 25, 0
    plc_cnt                 10
    sleep                   10, 5
    se_on                   2, 268, 3, 0, 0, 0
    sleep                   10, 10
    set                     5, 5, 1
    plc_motion              10, 26, 84
    while                   4, off_2F04
    ck                      5, 6, 0
    evt_next
    nop
    ewhile                  0

off_2F04:
    set                     5, 6, 0
    plc_neck                2, 0, 300, 200, 10, 10
    plc_motion              0, 24, 1
    sleep                   10, 40
    plc_motion              0, 24, 193
    sleep                   10, 42
    plc_motion              0, 22, 81
    sleep                   10, 28
    plc_neck                2, 0, 200, -100, 10, 10
    sleep                   10, 32
    sleep                   10, 8
    plc_neck                5, 1, 0, 0, 20, 20
    plc_motion              0, 21, 1
    sleep                   10, 12
    plc_motion              0, 21, 193
    plc_cnt                 8
    sleep                   10, 12
    plc_motion              0, 22, 65
    sleep                   10, 16
    plc_motion              0, 22, 209
    plc_cnt                 9
    sleep                   10, 14
    sleep                   10, 20
    sleep                   10, 16
    plc_motion              0, 26, 21
    sleep                   10, 17
    plc_motion              0, 24, 1
    sleep                   10, 30
    plc_motion              0, 24, 193
    sleep                   10, 30
    sleep                   10, 20
    plc_motion              0, 23, 65
    sleep                   10, 20
    plc_motion              0, 23, 193
    plc_cnt                 5
    sleep                   10, 30
    plc_motion              0, 26, 21
    while                   4, off_2FB0
    ck                      5, 6, 0
    evt_next
    nop
    ewhile                  0

off_2FB0:
    set                     5, 6, 0
    sleep                   10, 20
    plc_neck                2, 0, 50, -100, 8, 10
    sleep                   10, 20
    plc_motion              0, 22, 65
    sleep                   10, 20
    plc_motion              0, 22, 209
    plc_cnt                 5
    sleep                   10, 40
    plc_motion              0, 26, 21
    sleep                   10, 80
    plc_neck                5, 1, 0, 0, 60, 60
    sleep                   10, 46
    while                   4, off_2FFA
    ck                      5, 6, 0
    evt_next
    nop
    ewhile                  0

off_2FFA:
    set                     5, 6, 0
    plc_neck                2, 0, 200, 100, 12, 10
    sleep                   10, 30
    plc_neck                2, 0, -200, 100, 12, 10
    sleep                   10, 30
    plc_motion              0, 22, 65
    plc_neck                2, 0, 200, 100, 12, 10
    sleep                   10, 30
    plc_neck                2, 0, -200, 100, 12, 10
    plc_motion              0, 22, 209
    sleep                   10, 30
    plc_neck                2, 0, 200, 100, 12, 10
    sleep                   10, 30
    plc_motion              0, 26, 85
    plc_neck                2, 0, 0, 50, 4, 8
    sleep                   10, 30
    plc_motion              0, 24, 1
    sleep                   10, 40
    plc_motion              0, 24, 193
    sleep                   10, 40
    plc_motion              0, 22, 1
    sleep                   10, 35
    plc_motion              0, 22, 209
    sleep                   10, 15
    plc_neck                5, 1, 0, 0, 20, 20
    sleep                   10, 40
    plc_motion              0, 24, 1
    sleep                   10, 40
    plc_motion              0, 24, 193
    sleep                   10, 40
    plc_motion              0, 26, 85
    sleep                   10, 10
    while                   4, off_30B0
    ck                      5, 6, 0
    evt_next
    nop
    ewhile                  0

off_30B0:
    set                     5, 6, 0
    sleep                   10, 15
    plc_motion              0, 24, 1
    sleep                   10, 40
    plc_motion              0, 24, 193
    sleep                   10, 40
    sleep                   10, 20
    plc_motion              0, 22, 1
    sleep                   10, 20
    plc_motion              0, 22, 209
    plc_cnt                 6
    sleep                   10, 35
    plc_motion              0, 26, 85
    sleep                   10, 30
    while                   4, off_30F2
    ck                      5, 6, 0
    evt_next
    nop
    ewhile                  0

off_30F2:
    set                     5, 6, 0
    plc_neck                3, 1, 0, 0, 10, 10
    sleep                   10, 40
    plc_neck                5, 1, 0, 0, 20, 20
    sleep                   10, 51
    plc_neck                2, 0, 200, 100, 12, 10
    sleep                   10, 20
    plc_neck                2, 0, -200, 100, 12, 10
    sleep                   10, 20
    plc_neck                2, 0, 200, 100, 12, 10
    sleep                   10, 20
    plc_neck                2, 0, -200, 100, 12, 10
    sleep                   10, 20
    plc_motion              0, 24, 81
    sleep                   10, 30
    plc_motion              0, 24, 209
    plc_cnt                 15
    sleep                   10, 30
    plc_motion              0, 26, 21
    plc_neck                0, 0, -200, 100, 12, 10
    plc_motion              0, 24, 1
    sleep                   10, 40
    plc_motion              0, 24, 193
    sleep                   10, 49
    if                      0, off_324C
    ck                      1, 1, 0
    while                   4, off_318E
    ck                      5, 8, 0
    evt_next
    nop
    ewhile                  0

off_318E:
    while                   4, off_319A
    ck                      5, 6, 0
    evt_next
    nop
    ewhile                  0

off_319A:
    set                     5, 6, 0
    sleep                   10, 40
    plc_motion              0, 22, 17
    sleep                   10, 40
    plc_motion              0, 22, 145
    plc_cnt                 20
    sleep                   10, 60
    plc_neck                2, 0, -200, 100, 12, 10
    plc_motion              0, 26, 85
    sleep                   10, 30
    sleep                   10, 50
    plc_neck                2, 0, 200, 100, 12, 10
    sleep                   10, 30
    plc_motion              0, 22, 17
    plc_neck                2, 0, -200, 100, 12, 10
    sleep                   10, 30
    plc_motion              0, 22, 145
    plc_cnt                 10
    plc_neck                2, 0, 200, 100, 12, 10
    sleep                   10, 60
    plc_motion              0, 26, 85
    sleep                   10, 40
    plc_motion              0, 22, 1
    sleep                   10, 20
    plc_motion              0, 22, 145
    plc_cnt                 5
    sleep                   10, 70
    plc_motion              0, 26, 85
    sleep                   10, 30
    while                   6, off_322E
    cmp                     0, 26, CMP_NE, 10
    evt_next
    nop
    ewhile                  0

off_322E:
    plc_motion              10, 25, 0
    plc_cnt                 10
    sleep                   10, 5
    se_on                   2, 268, 3, 0, 0, 0
    sleep                   10, 10
    else                    0, off_3270

off_324C:
    while                   6, off_325A
    cmp                     0, 26, CMP_EQ, 6
    evt_next
    nop
    ewhile                  0

off_325A:
    plc_motion              0, 21, 1
    sleep                   10, 40
    plc_motion              0, 21, 129
    sleep                   10, 20
    plc_motion              0, 26, 85
    nop
    nop

off_3270:
    while                   4, off_327C
    ck                      5, 2, 0
    evt_next
    nop
    ewhile                  0

off_327C:
    pos_set                 0, 3742, -7200, 11900
    member_set              15, 0, 0
    plc_motion              10, 19, 64
    plc_neck                5, 1, 0, 0, 0, 0
    sleep                   10, 68
    plc_flg                 1, 80
    sleep                   10, 6
    plc_flg                 1, 80
    sleep                   10, 16
    plc_flg                 1, 64
    sleep                   10, 22
    plc_flg                 1, 80
    sleep                   10, 16
    plc_flg                 1, 64
    sleep                   10, 10
    plc_flg                 1, 80
    sleep                   10, 20
    plc_flg                 1, 80
    sleep                   10, 28
    se_on                   2, 273, 3, 0, 0, 0
    nop_8a                  0, 4, 0, 0, 0
    plc_flg                 1, 64
    sleep                   10, 14
    se_on                   2, 274, 3, 0, 0, 0
    sleep                   10, 21
    for                     0, off_3314, 40
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 200
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_3314:
    se_on                   2, 267, 3, 0, 0, 0
    evt_next
    nop
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 4687, -9277, 11781
    evt_exec                255, I_GOSUB, main_09
    while                   6, off_334A
    cmp                     0, 26, CMP_EQ, 12
    evt_next
    nop
    ewhile                  0

off_334A:
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_09
    se_on                   2, 15, 0, 0, 0, 0
    se_on                   2, 16, 0, 0, 0, 0
    work_set                WK_OBJECT, 5
    nop
    speed_set               5, 20
    for                     0, off_337E, 20
    add_speed
    evt_next
    next                    0

off_337E:
    for                     0, off_3388, 16
    add_speed
    evt_next
    next                    0

off_3388:
    evt_exec                255, I_GOSUB, main_0A
    speed_set               11, -2
    for                     0, off_339C, 8
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_339C:
    evt_end                 0

.proc main_0A
    se_on                   2, 14, 1540, 0, 0, 0
    work_set                WK_OBJECT, 6
    nop
    speed_set               3, -32
    speed_set               9, -4
    for                     0, off_33C2, 18
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_33C2:
    speed_set               9, 8
    for                     0, off_33D2, 18
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_33D2:
    evt_end                 0

.proc main_0B
    aot_set                 26, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -12533, -1908, 1977, 5600, 33, 0, 0, 0, 0, 255
    aot_set_4p              27, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -10983, -3048, -10093, -288, -7773, 1762, -8733, -848, 34, 0, 0, 0, 0, 255
    aot_set                 28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 9669, 3786, 1800, 2000, 36, 0, 0, 0, 0, 255
    if                      0, off_3436
    ck                      4, 30, 1
    aot_set                 29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -483, -628, 2577, 1500, 37, 0, 0, 0, 0, 255
    endif
    nop

off_3436:
    evt_end                 0

.proc main_0C
    switch                  26, off_34B0

off_343C:
    case                    0, off_3442, 0

off_3442:
    case                    0, off_3448, 1

off_3448:
    case                    0, off_344E, 2

off_344E:
    case                    0, off_3454, 3

off_3454:
    case                    0, off_345A, 6

off_345A:
    case                    0, off_3460, 7

off_3460:
    case                    0, off_3466, 8

off_3466:
    case                    0, off_346C, 9

off_346C:
    case                    0, off_3472, 10

off_3472:
    case                    0, off_3478, 11

off_3478:
    case                    0, off_347E, 12

off_347E:
    case                    0, off_3484, 13

off_3484:
    case                    0, off_3492, 14
    sce_bgm_control         0, 0, 1, 51, 65
    break                   0

off_3492:
    case                    0, off_34A0, 4
    sce_bgm_control         0, 0, 1, 41, 65
    break                   0

off_34A0:
    case                    0, off_34AE, 5
    sce_bgm_control         0, 0, 1, 31, 65
    break                   0

off_34AE:
    eswitch                 0

off_34B0:
    if                      0, off_3574
    ck                      4, 32, 0
    switch                  26, off_3570
    case                    0, off_34C2, 0

off_34C2:
    case                    0, off_34D0, 7
    sce_bgm_control         1, 0, 1, 51, 65
    break                   0

off_34D0:
    case                    0, off_34D6, 1

off_34D6:
    case                    0, off_34E4, 8
    sce_bgm_control         1, 0, 1, 71, 56
    break                   0

off_34E4:
    case                    0, off_34F2, 2
    sce_bgm_control         1, 0, 1, 71, 91
    break                   0

off_34F2:
    case                    0, off_3500, 3
    sce_bgm_control         1, 0, 1, 71, 71
    break                   0

off_3500:
    case                    0, off_350E, 4
    sce_bgm_control         1, 0, 1, 51, 65
    break                   0

off_350E:
    case                    0, off_351C, 5
    sce_bgm_control         1, 0, 1, 41, 41
    break                   0

off_351C:
    case                    0, off_352A, 6
    sce_bgm_control         1, 0, 1, 61, 91
    break                   0

off_352A:
    case                    0, off_3538, 9
    sce_bgm_control         1, 0, 1, 61, 41
    break                   0

off_3538:
    case                    0, off_3546, 10
    sce_bgm_control         1, 0, 1, 61, 101
    break                   0

off_3546:
    case                    0, off_3554, 11
    sce_bgm_control         1, 0, 1, 51, 41
    break                   0

off_3554:
    case                    0, off_355A, 12

off_355A:
    case                    0, off_3560, 13

off_3560:
    case                    0, off_356E, 14
    sce_bgm_control         1, 0, 1, 61, 101
    break                   0

off_356E:
    eswitch                 0

off_3570:
    else                    0, off_357C

off_3574:
    sce_bgm_control         1, 0, 1, 1, 65
    nop
    nop

off_357C:
    do                      0, off_3588
    evt_next
    nop
    edwhile                 off_3588
    ck                      1, 11, 0

off_3588:
    goto                    255, 255, 0, off_343C
    evt_end                 0

.proc main_0D
    gosub                   17
    work_set                WK_OBJECT, 2
    nop
    while                   4, off_35BE
    ck                      5, 4, 1
    member_copy             16, 14
    nop
    calc                    0, OP_SUB, 16, 800
    member_set2             14, 16
    nop
    member_copy             16, 14
    nop
    calc                    0, OP_AND, 16, 4095
    member_set2             14, 16
    nop
    evt_next
    nop
    ewhile                  0

off_35BE:
    evt_end                 0

.proc main_0E
    sce_bgm_control         1, 0, 1, 1, 64
    gosub                   18
    work_set                WK_OBJECT, 2
    nop
    while                   4, off_35F4
    ck                      5, 4, 1
    member_copy             16, 14
    nop
    calc                    0, OP_SUB, 16, 6
    member_set2             14, 16
    nop
    member_copy             16, 14
    nop
    calc                    0, OP_AND, 16, 4095
    member_set2             14, 16
    nop
    evt_next
    nop
    ewhile                  0

off_35F4:
    evt_end                 0

.proc main_0F
    set                     2, 7, 1
    set                     1, 27, 1
    set                     4, 32, 1
    set                     5, 10, 0
    set                     5, 11, 0
    set                     5, 4, 0
    nop_8c                  0, 90, 110, 12, 0, 80, 0
    nop_8c                  0, 90, 110, 12, 0, 120, 0
    evt_exec                255, I_GOSUB, main_14
    evt_exec                255, I_GOSUB, main_13
    evt_exec                255, I_GOSUB, main_10
    while                   4, off_3636
    ck                      5, 3, 0
    evt_next
    nop
    ewhile                  0

off_3636:
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_18, 0, 0
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sleep                   10, 30
    set                     5, 3, 0
    set                     2, 7, 0
    set                     1, 27, 0
    aot_on                  4
    evt_next
    set                     5, 11, 1
    nop
    evt_end                 0

.proc main_10
    work_set                WK_OBJECT, 2
    nop
    for                     0, off_368E, 50
    member_copy             16, 14
    nop
    calc                    0, OP_SUB, 16, 800
    member_set2             14, 16
    nop
    member_copy             16, 14
    nop
    calc                    0, OP_AND, 16, 4095
    member_set2             14, 16
    nop
    evt_next
    nop
    next                    0

off_368E:
    speed_set               3, -800
    speed_set               9, 40
    for                     0, off_36BA, 4
    for                     0, off_36B6, 10
    add_speed
    nop
    member_copy             16, 14
    nop
    calc                    0, OP_AND, 16, 4095
    member_set2             14, 16
    nop
    evt_next
    nop
    next                    0

off_36B6:
    add_aspeed
    nop
    next                    0

off_36BA:
    sce_bgm_control         1, 2, 1, 1, 64
    for                     0, off_36DA, 10
    add_speed
    nop
    member_copy             16, 14
    nop
    calc                    0, OP_AND, 16, 4095
    member_set2             14, 16
    nop
    evt_next
    nop
    next                    0

off_36DA:
    sce_bgm_control         2, 1, 1, 80, 64
    for                     0, off_3704, 14
    for                     0, off_3700, 10
    add_speed
    nop
    member_copy             16, 14
    nop
    calc                    0, OP_AND, 16, 4095
    member_set2             14, 16
    nop
    evt_next
    nop
    next                    0

off_3700:
    add_aspeed
    nop
    next                    0

off_3704:
    speed_set               3, -20
    speed_set               9, 1
    for                     0, off_3730, 14
    for                     0, off_372C, 2
    add_speed
    nop
    member_copy             16, 14
    nop
    calc                    0, OP_AND, 16, 4095
    member_set2             14, 16
    nop
    evt_next
    nop
    next                    0

off_372C:
    add_aspeed
    nop
    next                    0

off_3730:
    set                     5, 4, 1
    evt_exec                255, I_GOSUB, main_0E
    set                     5, 3, 1
    evt_end                 0

.proc main_11
    if                      0, off_374E
    ck                      5, 9, 1
    sce_espr_kill           22, 20, 0, 0
    evt_next
    endif
    nop

off_374E:
    set                     5, 9, 1
    sce_espr3d_on           0, 1046, 0, 4096, 9600, -9450, 5010, 0, 1024, 0, 0
    evt_end                 0

.proc main_12
    if                      0, off_377A
    ck                      5, 9, 1
    sce_espr_kill           22, 4, 0, 0
    evt_next
    endif
    nop

off_377A:
    set                     5, 9, 1
    sce_espr3d_on           0, 5142, 0, 4096, 9600, -9450, 5010, 0, 1024, 0, 0
    evt_end                 0

.proc main_13
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_37B2
    ck                      1, 0, 1
    pos_set                 0, 9187, -7200, 4704
    member_set              15, 0, 0
    else                    0, off_37C0

off_37B2:
    pos_set                 0, 11305, -7200, 4649
    member_set              15, 0, 0
    nop
    nop

off_37C0:
    sleep                   10, 20
    if                      0, off_37D4
    ck                      1, 0, 1
    plc_motion              0, 15, 0
    else                    0, off_37DA

off_37D4:
    plc_motion              0, 15, 1
    nop
    nop

off_37DA:
    sleep                   10, 30
    if                      0, off_37EE
    ck                      1, 0, 1
    plc_motion              0, 16, 0
    else                    0, off_37F4

off_37EE:
    plc_motion              0, 16, 1
    nop
    nop

off_37F4:
    sleep                   10, 28
    se_on                   2, 266, 1, 0, 0, 0
    sleep                   10, 22
    if                      0, off_3818
    ck                      1, 0, 1
    plc_motion              0, 17, 0
    else                    0, off_381E

off_3818:
    plc_motion              0, 17, 1
    nop
    nop

off_381E:
    sleep                   10, 18
    se_on                   2, 266, 1, 0, 0, 0
    sleep                   10, 15
    sleep                   10, 12
    plc_cnt                 50
    plc_motion              0, 16, 192
    sleep                   10, 50
    plc_cnt                 30
    plc_motion              0, 15, 192
    sleep                   10, 30
    set                     5, 10, 1
    plc_ret
    nop
    evt_end                 0

.proc main_14
    work_set                WK_OBJECT, 9
    nop
    pos_set                 0, 10067, -9000, 4699
    sleep                   10, 20
    sleep                   10, 30
    speed_set               3, 0
    speed_set               9, 1
    for                     0, off_387A, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_387A:
    speed_set               3, 10
    speed_set               9, 1
    for                     0, off_3890, 5
    add_speed
    evt_next
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3890:
    speed_set               9, 2
    for                     0, off_38A0, 23
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_38A0:
    speed_set               9, -10
    for                     0, off_38B0, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_38B0:
    while                   4, off_38E2
    ck                      5, 10, 1
    sleep                   10, 17
    speed_set               3, 32
    speed_set               9, 2
    for                     0, off_38D0, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_38D0:
    speed_set               9, -8
    for                     0, off_38E0, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_38E0:
    ewhile                  0

off_38E2:
    while                   4, off_38EE
    ck                      5, 11, 0
    evt_next
    nop
    ewhile                  0

off_38EE:
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_15
    evt_next
    work_set                WK_OBJECT, 1

off_38FC:
    if                      0, off_3912
    cmp                     0, 26, CMP_EQ, 0
    pos_set                 0, -2000, -1620, -20200
    else                    0, off_3934

off_3912:
    if                      0, off_3928
    cmp                     0, 26, CMP_EQ, 7
    pos_set                 0, -2000, -1620, -20200
    else                    0, off_3932

off_3928:
    pos_set                 0, 20000, 20000, 20000
    nop
    nop

off_3932:
    nop
    nop

off_3934:
    evt_next
    nop
    while                   4, off_3942
    ck                      1, 11, 0
    evt_next
    nop
    ewhile                  0

off_3942:
    goto                    255, 255, 0, off_38FC + 1
    evt_end                 0

.proc main_16
    evt_next
    work_set                WK_OBJECT, 0

off_394E:
    switch                  26, off_3980
    case                    0, off_3958, 0

off_3958:
    case                    0, off_395E, 7

off_395E:
    case                    0, off_396A, 9
    member_set              13, 32, 78
    break                   0

off_396A:
    case                    0, off_3976, 13
    member_set              13, 50, 231
    break                   0

off_3976:
    default                 0
    member_set              13, 178, 243
    break                   0
    eswitch                 0

off_3980:
    evt_next
    nop
    while                   4, off_398E
    ck                      1, 11, 0
    evt_next
    nop
    ewhile                  0

off_398E:
    goto                    255, 255, 0, off_394E + 1
    evt_end                 0

.proc main_17
    message_on              0, 40, 0, 0, 255
    evt_next
    nop
    if                      0, off_39CE
    ck                      11, 31, 0
    se_on                   4, 6, 0, 0, 0, 0
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 162, 249, 248, 248, 24, 223
    aot_on                  0
    evt_next
    nop
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_17, 0, 0
    else                    0, off_39DC

off_39CE:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_39DC:
    evt_end                 0

.proc main_18
    message_on              0, 41, 0, 0, 255
    evt_next
    nop
    if                      0, off_3A16
    ck                      11, 31, 0
    se_on                   4, 6, 0, 0, 0, 0
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 27, 152, 0, 0, 178, 157
    aot_on                  1
    evt_next
    nop
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_18, 0, 0
    else                    0, off_3A24

off_3A16:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_3A24:
    evt_end                 0
    db                      0xB0, 0x78
