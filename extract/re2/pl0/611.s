.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10290, 8069, 2300, 1800, -8792, 0, -26442, -992, 5, 6, 7, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22904, -21106, -21090, -23000, -22193, -24040, -24044, -22184, -8893, 0, -12514, 1576, 5, 11, 6, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 3296, -23026, 5100, -21180, 6390, -22130, 4136, -24518, 8890, 0, -12464, 512, 5, 12, 6, 0, 37, 0, 0, 0, UNLOCKED, 0
    if                      0, off_31F6
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_31F4
    ck                      FG_GENERAL_1, 130, 1
    set                     FG_GENERAL_1, 154, 1
    endif
    nop

off_31F4:
    endif
    nop

off_31F6:
    evt_end                 0

.main
.proc main
    gosub                   main_02
    gosub                   main_03
    if                      0, off_326C
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_326A
    ck                      FG_3, 36, 1
    gosub                   main_09
    endif
    nop

off_326A:
    endif
    nop

off_326C:
    evt_end                 0

.proc aot
    gosub                   main_08
    gosub                   main_04
    evt_end                 0

.proc main_02
    save                    V_05, 255
    sce_em_set              0, 0, ENEMY_3F, 0, 0, 0, 0, 0, 255, -9059, -300, -9005, 1024, 0, 0
    if                      0, off_32D8
    ck                      FG_GENERAL_1, 106, 0
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, 0, 0, 0, 0, 255, 255
    aot_set                 5, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, 10, 0, ITEM_MAINFUSE, 0, aot, 0
    cut_replace             1, 4
    cut_replace             2, 5
    if                      0, off_32D4
    cmp                     0, V_19, CMP_EQ, 8
    cut_replace             3, 6
    nop
    endif
    nop

off_32D4:
    else                    0, off_32F2

off_32D8:
    set                     23, 5, 0
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, 1, 0, 0, 0, 255, 255
    nop
    nop

off_32F2:
    evt_exec                255, I_GOSUB, main_06
    evt_end                 0

.proc main_03
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_04
    if                      0, off_334A
    ck                      FG_GENERAL_1, 106, 0
    if                      0, off_3348
    cmp                     0, V_00, CMP_EQ, 5
    if                      0, off_3346
    cmp                     0, V_USED_ITEM, CMP_EQ, 76
    set                     FG_GENERAL_1, 106, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_3346:
    endif
    nop

off_3348:
    endif
    nop

off_334A:
    evt_end                 0

.proc main_05
    sce_item_lost           ITEM_MAINFUSE
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    copy                    V_04, V_CUT
    nop
    cut_chg                 6
    work_set                WK_PLAYER, 0
    nop
    member_set              12, 176, 60
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 130, 129, 0, -700, 0, 0, 0, 0
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    nop_8c                  0, 0, 120, 80, 0, 0, 0
    nop_8a                  0, 40, 0, 10, 0
    sleep                   10, 7
    se_on                   2, 10, 3, 0, 0, 0
    sleep                   10, 3
    work_set                WK_ENEMY, 0
    nop
    member_set              2, 1, 0
    work_set                WK_OBJECT, 0
    nop
    speed_set               1, 20
    for                     0, off_33BE, 20
    add_speed
    evt_next
    next                    0

off_33BE:
    sleep                   10, 15
    nop_8b                  240, 15, 0, 0, 0
    sleep                   10, 15
    nop_8c                  0, 240, 0, 10, 0, 0, 0
    sleep                   10, 10
    sce_fade_set            2, 2, 7, 0, 32
    sleep                   10, 10
    sleep                   10, 4
    for                     0, off_33F4, 10
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_33F4:
    cut_replace             4, 1
    cut_replace             5, 2
    cut_replace             6, 3
    set                     23, 5, 0
    cut_chg                 3
    nop
    sce_fade_set            2, 2, 7, 0, 252
    sleep                   10, 60
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 3
    copy                    V_04, V_TEMP
    nop
    aot_reset               6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 255, 255
    work_copy               4, 1, 0
    cut_chg                 0
    work_set                WK_PLAYER, 0
    nop
    member_set              12, 0, 0
    cut_auto                1
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_06
    evt_next
    nop
    if                      0, off_3460
    ck                      FG_GENERAL_1, 106, 1
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -9059, -600, -9005
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    endif
    nop

off_3460:
    evt_end                 0

.proc main_07
    if                      0, off_34B2
    work_copy               5, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    copy                    V_05, V_CUT
    nop
    switch                  26, off_34B0
    case                    0, off_347E, 1

off_347E:
    case                    0, off_3484, 2

off_3484:
    case                    0, off_348A, 3

off_348A:
    case                    0, off_3490, 4

off_3490:
    case                    0, off_3496, 5

off_3496:
    case                    0, off_34A4, 6
    sce_bgm_control         1, 0, 1, 100, 64
    break                   0

off_34A4:
    default                 0
    sce_bgm_control         1, 0, 1, 127, 64
    break                   0
    eswitch                 0

off_34B0:
    endif
    nop

off_34B2:
    evt_end                 0

.proc main_08
    if                      0, off_34EC
    work_copy               5, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    copy                    V_05, V_CUT
    nop
    switch                  26, off_34EA
    case                    0, off_34D0, 1

off_34D0:
    case                    0, off_34DE, 2
    sce_bgm_control         1, 0, 1, 100, 64
    break                   0

off_34DE:
    default                 0
    sce_bgm_control         1, 0, 1, 127, 64
    break                   0
    eswitch                 0

off_34EA:
    endif
    nop

off_34EC:
    evt_end                 0

.proc main_09
    aot_set                 11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17406, -15422, 1350, 1080, 255, 0, I_GOSUB, main_28, 0, 0
    if                      0, off_35DA
    ck                      FG_GENERAL_1, 133, 0
    aot_reset               11, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_set                 10, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -20331, -20432, 3130, 3060, 255, 0, I_GOSUB, main_0A, 0, 0
    sce_em_set              0, 255, ENEMY_ADA_WONG_2, 0, 8, 0, 0, 0, 255, -6971, -5000, -11442, 1752, 0, 0
    sce_em_set              0, 1, ENEMY_ANNETTEBIRKIN_1, 0, 9, 0, 0, 0, 255, -14864, -10000, -13773, 1328, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15216, -14052, 1730, 870, 2, 0, 0, 0, 255, 255
    aot_reset               7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_3648

off_35DA:
    sce_em_set              0, 1, ENEMY_ANNETTEBIRKIN_1, 0, 9, 0, 0, 0, 255, -14864, 0, -13773, 1328, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15216, -14052, 1730, 870, 2, 0, 0, 0, 255, 255
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -16718, 0, -14982, 16256, -4800, 12352, 0, 0, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_27
    nop
    nop

off_3648:
    evt_end                 0

.proc main_0A
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    xa_vol                  125
    sce_bgm_control         1, 0, 1, 107, 64
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    sleep                   10, 4
    sce_bgm_control         0, 2, 0, 127, 64
    xa_on                   0, 62
    evt_next
    work_set                WK_SPLAYER, 0
    member_set              12, 0, 0
    message_on              0, 24, 0, 0, 0
    sleep                   10, 7
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -10384, -10252
    plc_neck                5, 2, 0, 0, 40, 40
    gosub                   main_2C
    wsleep
    wsleeping
    gosub                   main_0C
    wsleep
    wsleeping
    gosub                   main_0D
    gosub                   main_0E
    gosub                   main_0F
    gosub                   main_10
    gosub                   main_11
    gosub                   main_12
    gosub                   main_13
    set                     16, 1, 0
    gosub                   main_14
    gosub                   main_15
    set                     16, 2, 0
    set                     16, 1, 1
    gosub                   main_16
    set                     FG_GENERAL_2, 0, 0
    gosub                   main_17
    gosub                   main_18
    gosub                   main_1A
    gosub                   main_1B
    gosub                   main_1C
    gosub                   main_1D
    gosub                   main_1E
    gosub                   main_1F
    gosub                   main_20
    gosub                   main_23
    gosub                   main_21
    gosub                   main_22
    aot_reset               11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_28, 0, 0
    aot_reset               7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, 0, 0, 255, 255
    cut_chg                 8
    cut_auto                1
    set                     FG_GENERAL_1, 133, 1
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1
    calc                    0, OP_XOR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1
    calc                    0, OP_XOR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1
    calc                    0, OP_XOR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    plc_ret
    sce_bgm_control         1, 0, 1, 127, 64
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    nop
    evt_end                 0

.proc main_0B
    sleep                   10, 60
    sce_bgm_control         2, 1, 0, 0, 0
    evt_end                 0

.proc main_0C
    set                     21, 1, 0
    work_set                WK_SPLAYER, 0
    nop
    member_set              12, 0, 0
    plc_dest                0, 4, 33, -14572, -14671
    sleep                   10, 95
    cut_chg                 12
    evt_exec                255, I_GOSUB, main_0B
    set                     21, 1, 1
    gosub                   main_2B
    plc_motion              2, 9, 16
    plc_neck                5, 1, 0, 0, 40, 40
    xa_on                   0, 42
    sleep                   10, 2
    message_on              0, 5, 0, 0, 0
    sleep                   10, 15
    se_on                   2, 267, 771, 0, 0, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_0D
    cut_chg                 13
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -19917, 0, -19270
    dir_set                 0, 0, 3512, 0
    evt_next
    nop
    xa_on                   0, 43
    sleep                   10, 2
    message_on              0, 6, 0, 0, 0
    plc_neck                2, 0, 1024, 0, 52, 52
    sleep                   10, 10
    plc_neck                2, 0, -1024, 0, 52, 52
    sleep                   10, 10
    plc_neck                5, 2, 0, 0, 40, 40
    wsleep
    wsleeping
    evt_end                 0

.proc main_0E
    cut_chg                 15
    evt_next
    nop
    xa_on                   0, 44
    sleep                   10, 2
    message_on              0, 7, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 128, 1024, 16, 4
    sleep                   10, 20
    plc_neck                2, 0, -128, 1024, 16, 4
    sleep                   10, 20
    plc_motion              0, 27, 0
    plc_neck                2, 0, 128, 1024, 16, 4
    sleep                   10, 20
    plc_neck                2, 0, -128, 1024, 16, 4
    sleep                   10, 10
    plc_neck                5, 1, 0, 0, 16, 4
    sleep                   10, 25
    plc_motion              0, 26, 16
    wsleep
    wsleeping
    evt_end                 0

.proc main_0F
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -19917, 0, -19270
    dir_set                 0, 0, 3512, 0
    cut_chg                 13
    evt_next
    nop
    xa_on                   0, 45
    sleep                   10, 2
    message_on              0, 8, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 32, 32
    sleep                   10, 40
    plc_motion              0, 16, 0
    sleep                   10, 30
    plc_motion              0, 18, 0
    sleep                   10, 15
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 10
    plc_neck                2, 0, -1024, 0, 32, 32
    sleep                   10, 13
    plc_neck                2, 0, 1024, 0, 64, 0
    sleep                   10, 7
    plc_neck                2, 0, -1024, 0, 64, 0
    sleep                   10, 7
    plc_neck                5, 2, 0, 0, 64, 0
    plc_motion              0, 17, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_10
    cut_chg                 14
    evt_next
    nop
    xa_on                   0, 46
    sleep                   10, 2
    message_on              0, 9, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    dir_set                 0, 0, 5784, 0
    plc_motion              10, 21, 20
    sleep                   10, 80
    plc_motion              0, 29, 8
    sleep                   10, 4
    wsleep
    wsleeping
    evt_end                 0

.proc main_11
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -15593, 0, -15347
    dir_set                 0, 0, 5852, 0
    cut_chg                 12
    evt_next
    nop
    xa_on                   0, 47
    sleep                   10, 2
    message_on              0, 10, 0, 0, 0
    plc_neck                2, 0, -128, 1024, 16, 4
    sleep                   10, 13
    plc_motion              0, 26, 0
    sleep                   10, 40
    plc_neck                6, 0, 0, 0, 40, 40
    plc_motion              0, 29, 0
    sleep                   10, 20
    wsleep
    wsleeping
    evt_end                 0

.proc main_12
    cut_chg                 13
    evt_next
    nop
    xa_on                   0, 48
    sleep                   10, 2
    message_on              0, 11, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 64, 32, 32
    plc_motion              0, 17, 128
    plc_cnt                 0
    sleep                   10, 29
    plc_motion              2, 2, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_13
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -18032, 0, -17056
    dir_set                 0, 0, 1688, 0
    cut_chg                 14
    plc_motion              0, 30, 16
    plc_cnt                 14
    sleep                   10, 7
    se_on                   2, 267, 771, 0, 0, 0
    sleep                   10, 133
    cut_chg                 12
    pos_set                 0, -15988, 0, -15312
    dir_set                 0, 0, 1528, 0
    sleep                   10, 20
    plc_motion              2, 9, 144
    plc_cnt                 0
    plc_neck                2, 0, 0, 1024, 5, 5
    sleep                   10, 20
    evt_end                 0

.proc main_14
    sleep                   10, 40
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop
    se_on                   2, 268, 259, 0, 0, 0
    sce_espr_on             0, 0, 416, 4096, 0, -500, -200, 0
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_ADD, V_TEMP, 256
    member_set2             7, V_TEMP
    nop
    sleep                   10, 2
    se_on                   2, 271, 2, 0, 0, 0
    sce_espr_on             0, 0, 416, 4096, 0, -500, -200, 0
    plc_motion              0, 22, 0
    plc_neck                6, 0, 0, 0, 0, 0
    sleep                   10, 20
    sleep                   10, 10
    cut_chg                 3
    pos_set                 0, -18172, 0, -15468
    dir_set                 0, 0, 1504, 0
    sleep                   10, 20
    se_on                   2, 272, 2, 0, 0, 0
    sleep                   10, 35
    evt_end                 0

.proc main_15
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -20126, 0, -19591
    dir_set                 0, 0, 3512, 0
    plc_neck                6, 0, 0, 0, 100, 100
    cut_chg                 13
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    copy                    V_04, V_TEMP
    nop
    weapon_chg              0
    evt_next
    nop
    xa_on                   0, 50
    sleep                   10, 2
    message_on              0, 12, 0, 0, 0
    plc_motion              0, 15, 8
    sleep                   10, 15
    plc_dest                0, 5, 32, -17596, -16374
    sleep                   10, 16
    wsleep
    wsleeping
    evt_end                 0

.proc main_16
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 1024
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -17973, 0, -15512
    dir_set                 0, 0, 2600, 0
    plc_motion              0, 21, 64
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 1024
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -18400, 0, -15100
    dir_set                 0, 0, 1576, 0
    plc_motion              0, 23, 64
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, 2048
    member_set2             7, V_TEMP
    nop
    cut_chg                 3
    evt_next
    nop
    se_on                   2, 273, 1, 0, 0, 0
    sleep                   10, 38
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 20
    work_set                WK_SPLAYER, 0
    plc_neck                2, 0, 0, -1024, 40, 40
    plc_motion              0, 24, 20
    evt_end                 0

.proc main_17
    evt_next
    nop
    xa_on                   0, 52
    sleep                   10, 2
    message_on              0, 14, 0, 0, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_18
    cut_chg                 12
    work_set                WK_ENEMY, 1
    plc_motion              2, 9, 64
    plc_cnt                 9
    nop
    member_set              12, 0, 0
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_19
    evt_next
    nop
    xa_on                   0, 51
    sleep                   10, 2
    message_on              0, 13, 0, 0, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_19
    work_set                WK_ENEMY, 1
    plc_motion              1, 2, 16
    nop
    sleep                   10, 70
    se_on                   2, 270, 771, 0, 0, 0
    sleep                   10, 50
    evt_end                 0

.proc main_1A
    cut_chg                 6
    evt_next
    nop
    xa_on                   0, 53
    sleep                   10, 2
    message_on              0, 15, 0, 0, 0
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_29
    wsleep
    wsleeping
    evt_end                 0

.proc main_1B
    evt_next
    nop
    xa_on                   0, 54
    sleep                   10, 2
    message_on              0, 16, 0, 0, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_1C
    cut_chg                 3
    evt_next
    nop
    xa_on                   0, 55
    sleep                   10, 2
    message_on              0, 17, 0, 0, 0
    sleep                   10, 90
    evt_exec                255, I_GOSUB, main_29
    wsleep
    wsleeping
    evt_end                 0

.proc main_1D
    evt_next
    nop
    xa_on                   0, 56
    sleep                   10, 2
    message_on              0, 18, 0, 0, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_1E
    cut_chg                 6
    evt_next
    nop
    xa_on                   0, 57
    sleep                   10, 2
    message_on              0, 19, 0, 0, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_1F
    evt_next
    nop
    xa_on                   0, 60
    evt_next
    nop
    message_on              0, 20, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 21, 64
    plc_cnt                 40
    work_set                WK_SPLAYER, 0
    plc_motion              0, 23, 64
    plc_cnt                 40
    sleep                   10, 105
    sleep                   10, 60
    wsleep
    wsleeping
    evt_exec                255, I_GOSUB, main_24
    gosub                   main_2A
    sleep                   10, 30
    evt_end                 0

.proc main_20
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -17516, 0, -15682
    cut_chg                 3
    evt_next
    nop
    xa_on                   0, 58
    sleep                   10, 2
    message_on              0, 21, 0, 0, 0
    wsleep
    wsleeping
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -16718, 0, -14982
    dir_set                 0, 16256, -4800, 12352
    sleep                   10, 70
    work_set                WK_PLAYER, 0
    nop
    plc_neck                4, 2, 0, 0, 32, 32
    sleep                   10, 20
    plc_neck                4, 2, 0, 0, 32, 32
    sleep                   10, 20
    plc_neck                6, 0, 0, 0, 32, 32
    sleep                   10, 20
    wsleep
    wsleeping
    cut_chg                 8
    pos_set                 0, -16949, 0, -15959
    dir_set                 0, 0, 2520, 0
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 208
    plc_cnt                 16
    nop
    sleep                   10, 8
    plc_motion              2, 2, 4
    evt_next
    nop
    evt_end                 0

.proc main_21
    sleep                   10, 65
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -320, 1024, 32, 32
    plc_motion              0, 27, 16
    sleep                   10, 45
    work_set                WK_OBJECT, 2
    nop
    super_set               0, 64, 142, 50, 200, 0, 1088, 0, 1024
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 256, 32, 32
    plc_motion              0, 16, 16
    sleep                   10, 19
    plc_motion              0, 16, 144
    plc_cnt                 0
    sleep                   10, 5
    plc_stop
    nop
    xa_on                   0, 61
    sleep                   10, 2
    message_on              0, 23, 0, 0, 0
    sleep                   10, 25
    for                     0, off_3DBA, 8
    plc_motion              0, 16, 16
    plc_cnt                 19
    sleep                   10, 5
    plc_motion              0, 16, 144
    plc_cnt                 0
    sleep                   10, 5
    next                    0

off_3DBA:
    plc_stop
    nop
    sleep                   10, 2
    plc_neck                2, 0, 16, -16, 22, 22
    wsleep
    wsleeping
    evt_end                 0

.proc main_22
    set                     16, 2, 1
    set                     16, 1, 0
    cut_chg                 3
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -17391, 0, -15828
    dir_set                 0, 0, 2600, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                6, 0, 0, 0, 40, 40
    plc_motion              0, 26, 0
    sleep                   10, 18
    evt_exec                255, I_GOSUB, main_26
    sleep                   10, 22
    plc_motion              2, 2, 4
    set                     FG_3, 162, 1
    sleep                   10, 60
    evt_end                 0

.proc main_23
    work_set                WK_PLAYER, 0
    plc_motion              0, 28, 16
    nop
    sleep                   10, 166
    plc_stop
    nop
    xa_on                   0, 59
    sleep                   10, 2
    message_on              0, 22, 0, 0, 0
    plc_neck                4, 2, 0, 0, 32, 32
    sleep                   10, 20
    plc_neck                4, 2, 0, 0, 42, 42
    sleep                   10, 50
    wsleep
    wsleeping
    sleep                   10, 100
    cut_chg                 15
    work_copy               4, 1, 0
    weapon_chg              0
    pos_set                 0, -14912, 0, -15728
    dir_set                 0, 0, 2280, 0
    plc_motion              1, 6, 144
    plc_cnt                 2
    sleep                   10, 40
    plc_motion              2, 2, 4
    evt_end                 0

.proc main_24
    work_set                WK_SPLAYER, 0
    nop
    speed_set               1, 200
    speed_set               7, 100
    for                     0, off_3E96, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3E96:
    set                     FG_GENERAL_2, 0, 1
    evt_end                 0

.proc main_25
    message_on              0, 23, 0, 0, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_26
    work_set                WK_OBJECT, 2
    nop
    super_reset             0, 1088, 0, 1024
    speed_set               1, -200
    speed_set               7, 5
    speed_set               2, 250
    speed_set               8, -5
    speed_set               0, -250
    speed_set               6, 5
    se_on                   2, 274, 516, 0, 0, 0
    for                     0, off_3EE2, 13
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3EE2:
    evt_end                 0

.proc main_27
    set                     FG_GAME, 25, 1
    evt_next
    work_set                WK_ENEMY, 1
    plc_motion              1, 2, 192
    plc_cnt                 0
    evt_next
    plc_stop
    set                     FG_GAME, 25, 0
    evt_end                 0

.proc main_28
    set                     FG_STATE, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 30
    message_on              0, 3, 0, 255, 255
    evt_next
    plc_motion              1, 6, 128
    nop
    sleep                   10, 30
    plc_ret
    set                     FG_STATE, 7, 0
    nop
    evt_end                 0

.proc main_29
    work_set                WK_PLAYER, 0
    plc_motion              0, 21, 0
    plc_cnt                 70
    work_set                WK_SPLAYER, 0
    plc_motion              0, 23, 0
    plc_cnt                 70
    sleep                   10, 40
    work_set                WK_PLAYER, 0
    plc_motion              0, 21, 144
    plc_cnt                 129
    work_set                WK_SPLAYER, 0
    plc_motion              0, 23, 144
    plc_cnt                 99
    sleep                   10, 40
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 20
    work_set                WK_SPLAYER, 0
    plc_motion              0, 24, 20
    evt_end                 0

.proc main_2A
    do                      0, off_3F6A
    evt_next
    nop
    edwhile                 off_3F6A
    ck                      FG_GENERAL_2, 0, 0

off_3F6A:
    set                     FG_GENERAL_2, 0, 0
    evt_end                 0

.proc main_2B
    do                      0, off_3F7C
    evt_next
    nop
    edwhile                 off_3F7C
    ck                      FG_GENERAL_2, 33, 0

off_3F7C:
    evt_end                 0

.proc main_2C
    do                      0, off_3F8A
    evt_next
    nop
    edwhile                 off_3F8A
    ck                      FG_GENERAL_2, 32, 0

off_3F8A:
    evt_end                 0
