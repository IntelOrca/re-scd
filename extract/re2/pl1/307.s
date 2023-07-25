.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4572, -10039, 1270, 2160, -13550, 0, -16032, 14368, 2, 13, 0, 0, 8, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 7, 0, -3382, -18666, 2110, 1000, -24880, 0, -10636, 4104, 1, 18, 4, 0, 22, 4, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -18180, 6850, 2310, 2700, 2200, -5400, -25006, 6104, 2, 5, 0, 3, 40, 4, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_0E
    if                      0, off_1112
    ck                      FG_3, 128, 1
    ck                      FG_3, 129, 0
    sce_em_set              0, 255, ENEMY_CLAIRE_REDFIELD, 0, 64, 0, 0, 0, 255, -3126, 0, -9149, -8438, 770, 4
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_1112:
    if                      0, off_12B6
    ck                      FG_3, 130, 1
    evt_kill                7
    if                      0, off_11BC
    ck                      FG_3, 131, 0
    if                      0, off_1146
    ck                      FG_GAME, F_SCENARIO, 1
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 64, 0, 0, 0, 255, -3126, 0, -9149, -8438, 770, 4
    else                    0, off_115E

off_1146:
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 72, 0, 0, 0, 255, -3126, 0, -9149, -8438, 770, 4
    nop
    nop

off_115E:
    evt_exec                255, I_GOSUB, main_06
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, 0, -20000, 0, 384, 0, 3776, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_11B8
    ck                      FG_ITEM, 193, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, 0, -20000, 0, 384, 0, 3776, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_11B8:
    else                    0, off_1214

off_11BC:
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -8873, 0, -2927, 128, -512, -1984, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1212
    ck                      FG_ITEM, 193, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -8973, 0, -3127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1212:
    nop
    nop

off_1214:
    if                      0, off_127C
    ck                      FG_GAME, F_SCENARIO, 1
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8572, -3407, 1080, 1120, ITEM_CLUBKEY, 3, 124, 0, 161
    if                      0, off_1252
    ck                      FG_ITEM, 193, 1
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8572, -3407, 1080, 1120, ITEM_EXPLOSIVEROUNDS, 6, 194, 2, 1
    endif
    nop

off_1252:
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, 0, -20000, 0, 384, 0, 3776, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_12B4

off_127C:
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8572, -3407, 1080, 1120, ITEM_CLUBKEY, 3, 124, 0, 161
    if                      0, off_12B2
    ck                      FG_ITEM, 193, 1
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8572, -3407, 1080, 1120, ITEM_EXPLOSIVEROUNDS, 6, 194, 2, 1
    endif
    nop

off_12B2:
    nop
    nop

off_12B4:
    endif
    nop

off_12B6:
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -3126, 0, -9140
    dir_set                 0, 0, 4200, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -2017, 0, -3524
    dir_set                 0, 0, 2080, 0
    set                     FG_STATE, 7, 1
    cut_chg                 2
    sleep                   10, 10
    set                     FG_GAME, 27, 1
    evt_exec                255, I_GOSUB, main_03
    evt_exec                255, I_GOSUB, main_05
    evt_end                 0

.proc main_03
    sleep                   10, 5
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 148, 206
    plc_motion              1, 1, 1
    sleep                   10, 5
    plc_motion              0, 18, 1
    gosub                   main_0D
    plc_dest                0, 9, 32, -3000, -5140
    gosub                   main_0C
    xa_on                   0, 21
    sleep                   10, 2
    message_on              0, 0, 0, 0, 0
    plc_motion              0, 19, 1
    sleep                   10, 20
    plc_dest                0, 4, 32, -3000, -5000
    gosub                   main_0C
    plc_motion              0, 23, 0
    evt_end                 0

.proc main_04
    sleep                   10, 40
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 5, 32, -6260, -3240
    gosub                   main_0C
    plc_motion              0, 16, 1
    sleep                   10, 16
    plc_motion              0, 15, 1
    evt_end                 0

.proc main_05
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 96, 96
    sleep                   10, 3
    plc_dest                0, 9, 33, -2526, -9140
    gosub                   main_0D
    gosub                   main_0C
    gosub                   main_0C
    wsleep
    wsleeping
    sleep                   10, 10
    cut_chg                 2
    sleep                   10, 20
    xa_on                   0, 35
    sleep                   10, 2
    message_on              0, 14, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    sleep                   10, 3
    plc_motion              0, 16, 1
    sleep                   10, 10
    plc_motion              0, 15, 1
    sleep                   10, 45
    plc_motion              0, 20, 1
    sleep                   10, 30
    sleep                   10, 30
    plc_motion              0, 15, 1
    sleep                   10, 20
    plc_motion              0, 19, 1
    sleep                   10, 5
    plc_motion              0, 22, 1
    wsleep
    wsleeping
    sleep                   10, 5
    cut_chg                 7
    plc_neck                1, -3000, 4000, -9800, 96, 16
    sleep                   10, 30
    wsleep
    wsleeping
    sleep                   10, 5
    plc_neck                0, 0, 0, 0, 64, 64
    xa_on                   0, 22
    sleep                   10, 2
    message_on              0, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                4, 2, 0, 0, 128, 64
    sleep                   10, 20
    plc_neck                5, 2, 0, 0, 96, 96
    plc_motion              0, 28, 1
    wsleep
    wsleeping
    plc_motion              2, 2, 1
    cut_chg                 2
    sleep                   10, 5
    xa_on                   0, 23
    message_on              0, 2, 0, 0, 0
    sleep                   10, 5
    work_set                WK_SPLAYER, 0
    plc_motion              0, 18, 1
    nop
    sleep                   10, 10
    sleep                   10, 20
    plc_motion              0, 19, 1
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 20, 1
    wsleep
    wsleeping
    sleep                   10, 5
    plc_motion              0, 23, 1
    sleep                   10, 20
    cut_chg                 7
    sleep                   10, 10
    xa_on                   0, 24
    message_on              0, 3, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 32, 0
    nop
    sleep                   10, 5
    plc_neck                4, 3, 0, 0, 128, 64
    sleep                   10, 45
    plc_neck                5, 2, 0, 0, 96, 96
    plc_motion              0, 28, 0
    sleep                   10, 30
    plc_motion              0, 33, 0
    sleep                   10, 55
    plc_motion              0, 32, 0
    sleep                   10, 5
    plc_neck                1, -17000, 0, -1630, 32, 32
    sleep                   10, 5
    plc_motion              0, 28, 0
    wsleep
    wsleeping
    sleep                   10, 5
    plc_motion              0, 33, 0
    sleep                   10, 10
    cut_chg                 2
    sleep                   10, 20
    xa_on                   0, 25
    message_on              0, 4, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 32, 0
    nop
    sleep                   10, 10
    plc_motion              0, 33, 0
    sleep                   10, 15
    plc_motion              0, 33, 0
    sleep                   10, 15
    plc_motion              0, 33, 0
    sleep                   10, 15
    plc_motion              0, 28, 0
    plc_neck                0, 0, 0, 0, 64, 64
    plc_neck                5, 2, 0, 0, 96, 96
    sleep                   10, 65
    plc_neck                1, -17000, 0, -1630, 32, 32
    sleep                   10, 5
    plc_dest                0, 5, 33, -13360, -2680
    evt_exec                255, I_GOSUB, main_04
    gosub                   main_0D
    wsleep
    wsleeping
    cut_chg                 6
    work_set                WK_PLAYER, 0
    plc_motion              0, 27, 0
    nop
    sleep                   10, 5
    xa_on                   0, 26
    message_on              0, 5, 0, 0, 0
    sleep                   10, 20
    se_on                   2, 268, 4, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 5
    cut_chg                 4
    pos_set                 0, -15530, 0, -1640
    plc_motion              0, 29, 0
    sleep                   10, 4
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  255, 3, 0, 0, 0
    sleep                   10, 1
    sleep                   10, 5
    xa_vol                  70
    xa_on                   0, 40
    sleep                   10, 3
    message_on              0, 21, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 10
    set                     FG_3, 129, 1
    set                     32, 3, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_06
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -17026, 0, 7140
    dir_set                 0, 0, 1000, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -7030, 0, -4012
    dir_set                 0, 0, 2080, 0
    set                     FG_STATE, 7, 1
    cut_chg                 5
    sleep                   10, 10
    set                     FG_GAME, 27, 1
    evt_exec                255, I_GOSUB, main_08
    evt_end                 0

.proc main_07
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -4026, -3040
    plc_neck                1, -6426, 5000, -2240, 96, 64
    gosub                   main_0C
    sleep                   10, 20
    plc_dest                0, 9, 32, -17006, -1040
    gosub                   main_0C
    sleep                   10, 5
    plc_neck                0, -6426, 5000, -2240, 96, 64
    plc_dest                0, 9, 32, -17006, -5040
    gosub                   main_0C
    xa_on                   0, 31
    message_on              0, 10, 0, 0, 0
    plc_neck                1, -13426, -5000, -3040, 96, 64
    plc_motion              0, 18, 1
    sleep                   10, 15
    plc_motion              2, 2, 1
    sleep                   10, 25
    plc_motion              0, 15, 1
    sleep                   10, 15
    plc_motion              0, 16, 1
    sleep                   10, 30
    plc_motion              0, 20, 1
    wsleep
    wsleeping
    sleep                   10, 1
    cut_chg                 4
    sleep                   10, 20
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                1, -15000, -4000, -7040, 128, 96
    sleep                   10, 30
    plc_neck                1, -15000, -4000, 0, 128, 96
    sleep                   10, 30
    xa_on                   0, 32
    message_on              0, 11, 0, 0, 0
    sleep                   10, 5
    plc_neck                4, 3, 0, 0, 96, 64
    plc_motion              0, 32, 1
    sleep                   10, 30
    plc_neck                1, -9000, -4000, -3200, 96, 64
    plc_motion              0, 33, 1
    sleep                   10, 60
    plc_neck                1, -17426, 0, 4490, 96, 64
    sleep                   10, 30
    plc_neck                1, -9000, -4000, -3200, 96, 64
    wsleep
    wsleeping
    sleep                   10, 10
    xa_on                   0, 33
    message_on              0, 12, 0, 0, 0
    sleep                   10, 5
    plc_motion              0, 28, 1
    sleep                   10, 20
    plc_motion              0, 32, 1
    sleep                   10, 5
    plc_neck                0, -6426, 5000, -2240, 96, 64
    plc_dest                0, 5, 33, -16685, 5120
    wsleep
    wsleeping
    cut_chg                 3
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 5
    plc_motion              0, 19, 1
    sleep                   10, 10
    plc_motion              0, 20, 1
    sleep                   10, 10
    plc_motion              0, 23, 1
    xa_on                   0, 34
    message_on              0, 13, 0, 0, 0
    sleep                   10, 5
    plc_motion              0, 15, 1
    sleep                   10, 15
    plc_motion              0, 16, 1
    sleep                   10, 20
    plc_motion              0, 20, 1
    sleep                   10, 40
    plc_motion              0, 15, 1
    wsleep
    wsleeping
    sleep                   10, 20
    set                     FG_3, 131, 1
    if                      0, off_1798
    ck                      FG_GAME, F_SCENARIO, 1
    evt_chain               0, 24, 11
    endif
    nop

off_1798:
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_08
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 5, 33, -16385, -1700
    sleep                   10, 20
    cut_chg                 4
    gosub                   main_0D
    plc_dest                0, 9, 33, -7626, 2640
    gosub                   main_0D
    plc_neck                1, -9000, -4000, -3200, 96, 64
    sleep                   10, 3
    xa_on                   0, 27
    message_on              0, 6, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 1
    cut_chg                 3
    sleep                   10, 2
    xa_on                   0, 28
    message_on              0, 7, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 1
    nop
    sleep                   10, 30
    plc_motion              0, 15, 1
    sleep                   10, 30
    plc_motion              0, 19, 1
    sleep                   10, 30
    plc_motion              0, 20, 1
    sleep                   10, 10
    plc_motion              0, 23, 1
    sleep                   10, 20
    wsleep
    wsleeping
    sleep                   10, 1
    cut_chg                 4
    sleep                   10, 2
    xa_on                   0, 29
    message_on              0, 8, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 32, 1
    nop
    sleep                   10, 20
    plc_motion              0, 33, 1
    sleep                   10, 30
    plc_neck                4, 3, 0, 0, 96, 64
    sleep                   10, 30
    plc_motion              0, 28, 1
    plc_neck                1, -9000, 4000, -3200, 96, 64
    sleep                   10, 20
    plc_motion              0, 33, 1
    plc_neck                1, -9000, -4000, -3200, 96, 64
    sleep                   10, 60
    plc_neck                1, -9000, -4000, -3200, 96, 64
    plc_motion              0, 28, 1
    sleep                   10, 20
    plc_motion              0, 33, 1
    wsleep
    wsleeping
    plc_neck                1, -9000, -4000, -3200, 96, 64
    plc_dest                0, 7, 33, -17000, -1700
    gosub                   main_0D
    plc_motion              2, 2, 1
    cut_chg                 8
    plc_motion              0, 26, 1
    sleep                   10, 6
    evt_exec                255, I_GOSUB, main_09
    sleep                   10, 30
    if                      0, off_18E4
    ck                      FG_ITEM, 193, 1
    xa_on                   0, 30
    message_on              0, 9, 0, 0, 0
    wsleep
    wsleeping
    plc_motion              0, 26, 1
    sleep                   10, 6
    evt_exec                255, I_GOSUB, main_0A
    sleep                   10, 30
    endif
    nop

off_18E4:
    cut_chg                 3
    evt_exec                255, I_GOSUB, main_07
    evt_end                 0

.proc main_09
    sleep                   10, 18
    se_on                   2, 267, 4, 0, 0, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -14840, -3210, -2702
    dir_set                 0, 128, -512, -1984
    speed_set               0, 180
    speed_set               1, -230
    speed_set               6, 30
    speed_set               7, -20
    for                     0, off_192C, 6
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_192C:
    se_on                   2, 269, 4, 0, 0, 0
    pos_set                 0, 0, 0, 0
    sleep                   10, 8
    pos_set                 0, -9073, -82, -2790
    sleep                   10, 1
    pos_set                 0, -8973, -32, -2820
    sleep                   10, 1
    pos_set                 0, -8873, 0, -2927
    evt_end                 0

.proc main_0A
    sleep                   10, 18
    se_on                   2, 267, 4, 0, 0, 0
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -14840, -3210, -2702
    dir_set                 0, 128, -512, -1984
    speed_set               0, 180
    speed_set               1, -230
    speed_set               6, 30
    speed_set               7, -20
    for                     0, off_19A6, 6
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_19A6:
    se_on                   2, 266, 4, 0, 0, 0
    pos_set                 0, 0, 0, 0
    sleep                   10, 8
    pos_set                 0, -9073, -82, -2790
    sleep                   10, 1
    pos_set                 0, -8973, -32, -2820
    sleep                   10, 1
    dir_set                 0, 0, 0, 0
    pos_set                 0, -8973, 0, -3127
    evt_end                 0

.proc main_0B
    se_on                   2, 270, 4, 0, 0, 0
    sleep                   10, 40
    work_set                WK_OBJECT, 3
    nop
    super_set               0, 64, 142, 32, 218, 18, -1088, 0, -1856
    work_set                WK_PLAYER, 0
    plc_motion              0, 31, 1
    nop
    sleep                   10, 35
    xa_on                   0, 36
    message_on              0, 15, 0, 0, 0
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    xa_on                   0, 37
    wsleep
    wsleeping
    xa_on                   0, 38
    message_on              0, 17, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 10
    xa_on                   0, 39
    message_on              0, 18, 0, 0, 0
    plc_motion              0, 30, 1
    wsleep
    wsleeping
    sleep                   10, 10
    set                     FG_GENERAL_1, 89, 1
    work_set                WK_OBJECT, 3
    nop
    super_reset             0, -1088, 0, -1856
    pos_set                 0, 0, -20000, 0
    set                     32, 13, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    cut_auto                1
    unk                     132, 0
    evt_end                 0

.proc main_0C
    do                      0, off_1A8C
    evt_next
    nop
    edwhile                 off_1A8C
    ck                      FG_GENERAL_2, 32, 0

off_1A8C:
    evt_end                 0

.proc main_0D
    do                      0, off_1A9A
    evt_next
    nop
    edwhile                 off_1A9A
    ck                      FG_GENERAL_2, 33, 0

off_1A9A:
    evt_end                 0

.proc main_0E
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -17100, 0, 7450, 0, -6144, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1AE6
    cmp                     0, V_LAST_RDT, CMP_EQ, 773
    if                      0, off_1AE0
    ck                      FG_3, 130, 1
    ck                      FG_3, 131, 0
    goto                    255, 255, 0, off_1AE6
    endif
    nop

off_1AE0:
    evt_exec                5, I_GOSUB, main_0F
    endif
    nop

off_1AE6:
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15480, -7050, 1100, 2600, 19, 0, 0, 0, 255, 255
    set                     16, 1, 0
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14000, -3400, 450, 1100, 20, 0, 0, 0, 255, 255
    aot_set                 8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -3382, -18666, 2110, 1000, 255, 0, I_GOSUB, main_15, 0, 0
    evt_end                 0

.proc main_0F
    set                     FG_STATE, 7, 1
    evt_exec                255, I_GOSUB, main_10
    evt_exec                255, I_GOSUB, main_11
    gosub                   main_14
    sleep                   10, 5
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_10
    work_set                WK_OBJECT, 1
    nop
    member_set              11, 52, 189
    member_set              12, 160, 246
    member_set              13, 26, 29
    member_set              15, 0, 232
    gosub                   main_12
    evt_end                 0

.proc main_11
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    member_set              11, 174, 189
    member_set              12, 160, 246
    member_set              13, 32, 30
    member_set              15, 47, 20
    gosub                   main_12
    if                      0, off_1B94
    ck                      FG_GENERAL_2, 1, 1
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_SUB, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    endif
    nop

off_1B94:
    evt_end                 0

.proc main_12
    speed_set               1, 40
    for                     0, off_1BA4, 2
    add_speed
    evt_next
    next                    0

off_1BA4:
    nop_8b                  100, 90, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 87, 0
    nop_8a                  0, 3, 0, 85, 0
    se_on                   0, 1, 0, 0, 0, 0
    for                     0, off_1BCE, 8
    add_speed
    evt_next
    next                    0

off_1BCE:
    speed_set               1, 35
    for                     0, off_1BDC, 20
    add_speed
    evt_next
    next                    0

off_1BDC:
    speed_set               1, 30
    for                     0, off_1BEA, 15
    add_speed
    evt_next
    next                    0

off_1BEA:
    speed_set               1, 25
    for                     0, off_1BF8, 15
    add_speed
    evt_next
    next                    0

off_1BF8:
    speed_set               1, 20
    for                     0, off_1C06, 15
    add_speed
    evt_next
    next                    0

off_1C06:
    speed_set               1, 15
    for                     0, off_1C14, 10
    add_speed
    evt_next
    next                    0

off_1C14:
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 10
    member_set2             12, V_TEMP
    nop
    sleep                   10, 5
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 35
    member_set2             12, V_TEMP
    nop
    set                     FG_GENERAL_2, 1, 1
    evt_end                 0

.proc main_13
    do                      0, off_1C46
    evt_next
    nop
    edwhile                 off_1C46
    ck                      FG_GENERAL_2, 0, 0

off_1C46:
    set                     FG_GENERAL_2, 0, 0
    evt_end                 0

.proc main_14
    do                      0, off_1C58
    evt_next
    nop
    edwhile                 off_1C58
    ck                      FG_GENERAL_2, 1, 0

off_1C58:
    set                     FG_GENERAL_2, 1, 0
    evt_end                 0

.proc main_15
    message_on              0, 22, 0, 255, 239
    evt_next
    nop
    if                      0, off_1C72
    ck                      FG_INPUT, F_QUESTION, 0
    aot_on                  1
    endif
    nop

off_1C72:
    evt_end                 0
