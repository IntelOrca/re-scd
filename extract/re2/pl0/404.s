.version 2

.init
.proc init
    if                      0, off_0D3A
    ck                      FG_GAME, F_SCENARIO, 1
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -13964, -27818, 3100, 2900, -15153, -7200, -14054, -2496, 3, 1, 2, 4, 40, 4, 0, 0, UNLOCKED, 0
    else                    0, off_0D66

off_0D3A:
    if                      0, off_0D64
    ck                      FG_GAME, F_PLAYER, 1
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -13964, -27818, 3100, 2900, -15153, -7200, -14054, -2496, 3, 1, 2, 4, 40, 4, 0, 0, UNLOCKED, 0
    endif
    nop

off_0D64:
    nop
    nop

off_0D66:
    if                      0, off_0D92
    ck                      FG_GAME, F_SCENARIO, 1
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -13810, -410, 3400, 3730, -25717, -7200, -24522, 3416, 3, 3, 3, 4, 40, 4, 0, 0, UNLOCKED, 0
    else                    0, off_0DBE

off_0D92:
    if                      0, off_0DBC
    ck                      FG_GAME, F_PLAYER, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -13810, -410, 3400, 3730, -25717, -7200, -24522, 3416, 3, 3, 3, 4, 40, 4, 0, 0, UNLOCKED, 0
    endif
    nop

off_0DBC:
    nop
    nop

off_0DBE:
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28293, -11634, 1800, 2800, -10014, -1800, -14098, 2048, 3, 5, 6, 1, 35, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    set                     FG_GENERAL_1, 32, 0
    gosub                   main_07
    gosub                   main_05
    gosub                   main_03
    gosub                   main_1B
    gosub                   main_04
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    if                      0, off_0E4C
    cmp                     0, V_LAST_RDT, CMP_EQ, 1040
    set                     30, 1, 1
    rbj_reset
    nop
    else                    0, off_0E54

off_0E4C:
    set                     30, 2, 1
    rbj_reset
    nop
    nop
    nop

off_0E54:
    evt_end                 0

.proc main_03
    if                      0, off_0EC4
    ck                      FG_GENERAL_1, 62, 0
    sce_em_set              0, 0, ENEMY_LEON_KENNEDY_RPD, 0, 0, 0, 0, 0, 255, -11495, 0, -931, 1296, 0, 0
    sce_em_set              0, 1, ENEMY_ANNETTEBIRKIN_1, 0, 8, 0, 0, 0, 255, -12500, 0, -4900, 1888, 0, 0
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13845, -13798, 1500, 1740, 8, 0, 0, 0, 0, 255
    aot_reset               1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_UNDER, 9, 0, 0, 0, 0, 255
    if                      0, off_0EBC
    ck                      FG_GAME, F_SCENARIO, 1
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_UNDER, 9, 0, 0, 0, 0, 255
    endif
    nop

off_0EBC:
    evt_exec                255, I_GOSUB, main_12
    else                    0, off_0F3E

off_0EC4:
    if                      0, off_0ED6
    cmp                     0, V_LAST_RDT, CMP_EQ, 1040
    evt_exec                255, I_GOSUB, main_1A
    else                    0, off_0F3C

off_0ED6:
    if                      0, off_0F3A
    ck                      FG_GENERAL_1, 68, 1
    sce_em_set              0, 0, ENEMY_LEON_KENNEDY_RPD, 0, 0, 0, 0, 0, 255, -12857, 0, -12615, 2040, 275, 8
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13845, -13798, 1500, 1740, 8, 0, 0, 0, 0, 255
    aot_reset               1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_UNDER, 9, 0, 0, 0, 0, 255
    if                      0, off_0F38
    ck                      FG_GAME, F_SCENARIO, 1
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_UNDER, 9, 0, 0, 0, 0, 255
    endif
    nop

off_0F38:
    endif
    nop

off_0F3A:
    nop
    nop

off_0F3C:
    nop
    nop

off_0F3E:
    evt_end                 0

.proc main_04
    if                      0, off_0F50
    cmp                     0, V_LAST_RDT, CMP_EQ, 1027
    evt_exec                255, I_GOSUB, main_08
    endif
    nop

off_0F50:
    if                      0, off_0F60
    cmp                     0, V_LAST_RDT, CMP_EQ, 1025
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_0F60:
    evt_end                 0

.proc main_05
    if                      0, off_0FA6
    ck                      FG_ITEM, 162, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23641, -12378, 1300, 1140, 255, 0, I_GOSUB, main_06, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -22814, -2350, -11768, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0FA6:
    evt_end                 0

.proc main_06
    message_on              0, 10, 0, 255, 255
    evt_next
    nop
    if                      0, off_0FE4
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_ITEM, 162, 1
    set                     33, 7, 1
    set                     33, 8, 1
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 0, 0, 0
    aot_reset               4, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    message_on              0, 11, 0, 255, 255
    evt_next
    nop
    endif
    nop

off_0FE4:
    evt_end                 0

.proc main_07
    if                      0, off_1018
    ck                      FG_GAME, F_SCENARIO, 1
    obj_model_set           0, 0, 0, 0, 0, 4, 0, 2, 16, -12170, 0, 830, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_104A

off_1018:
    if                      0, off_1048
    ck                      FG_GAME, F_PLAYER, 0
    obj_model_set           0, 0, 0, 0, 0, 4, 0, 2, 16, -12170, 0, 830, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1048:
    nop
    nop

off_104A:
    if                      0, off_107C
    ck                      FG_GAME, F_SCENARIO, 1
    obj_model_set           1, 0, 0, 0, 0, 4, 0, 2, 16, -12220, 0, -26273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_10AE

off_107C:
    if                      0, off_10AC
    ck                      FG_GAME, F_PLAYER, 1
    obj_model_set           1, 0, 0, 0, 0, 4, 0, 2, 16, -12220, 0, -26273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_10AC:
    nop
    nop

off_10AE:
    evt_end                 0

.proc main_08
    set                     FG_STATE, 7, 1
    evt_exec                255, I_GOSUB, main_0C
    evt_exec                255, I_GOSUB, main_09
    evt_exec                255, I_GOSUB, main_0A
    if                      0, off_10D0
    ck                      FG_GAME, 3, 1
    evt_exec                255, I_GOSUB, main_0B
    else                    0, off_10EA

off_10D0:
    if                      0, off_10E8
    ck                      FG_GAME, F_PLAYER, 0
    if                      0, off_10E6
    ck                      FG_GENERAL_1, 62, 0
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_10E6:
    endif
    nop

off_10E8:
    nop
    nop

off_10EA:
    gosub                   main_20
    sleep                   10, 5
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 160, 246
    gosub                   main_11
    evt_end                 0

.proc main_0A
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -12455, -2400, 355
    member_set              15, 72, 3
    gosub                   main_11
    if                      0, off_113A
    ck                      FG_GENERAL_2, 1, 1
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_SUB, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    endif
    nop

off_113A:
    evt_end                 0

.proc main_0B
    work_set                WK_SPLAYER, 0
    nop
    if                      0, off_1158
    ck                      FG_GAME, F_PLAYER, 0
    if                      0, off_1156
    ck                      FG_GENERAL_1, 62, 0
    work_set                WK_ENEMY, 0
    nop
    endif
    nop

off_1156:
    endif
    nop

off_1158:
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -11762, -2400, 952
    member_set              15, 72, 4
    gosub                   main_11
    if                      0, off_118C
    ck                      FG_GENERAL_2, 1, 1
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_SUB, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    endif
    nop

off_118C:
    evt_end                 0

.proc main_0C
    evt_next
    nop
    nop_8b                  100, 90, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 87, 0
    nop_8a                  0, 3, 0, 85, 0
    evt_end                 0

.proc main_0D
    set                     FG_STATE, 7, 1
    evt_exec                255, I_GOSUB, main_0C
    evt_exec                255, I_GOSUB, main_0E
    evt_exec                255, I_GOSUB, main_0F
    if                      0, off_11C4
    ck                      FG_GAME, 3, 1
    evt_exec                255, I_GOSUB, main_10
    endif
    nop

off_11C4:
    gosub                   main_20
    sleep                   10, 5
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_0E
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 160, 246
    gosub                   main_11
    evt_end                 0

.proc main_0F
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -11738, -2400, -26035
    member_set              15, 75, 11
    gosub                   main_11
    if                      0, off_1214
    ck                      FG_GENERAL_2, 1, 1
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_SUB, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    endif
    nop

off_1214:
    evt_end                 0

.proc main_10
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -12501, -2400, -26478
    member_set              15, 107, 12
    gosub                   main_11
    if                      0, off_124E
    ck                      FG_GENERAL_2, 1, 1
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_SUB, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    endif
    nop

off_124E:
    evt_end                 0

.proc main_11
    speed_set               0, 0
    speed_set               2, 0
    speed_set               1, 40
    for                     0, off_1266, 2
    add_speed
    evt_next
    next                    0

off_1266:
    se_on                   0, 1, 0, 0, 0, 0
    for                     0, off_127C, 8
    add_speed
    evt_next
    next                    0

off_127C:
    speed_set               1, 35
    for                     0, off_128A, 20
    add_speed
    evt_next
    next                    0

off_128A:
    speed_set               1, 30
    for                     0, off_1298, 15
    add_speed
    evt_next
    next                    0

off_1298:
    speed_set               1, 25
    for                     0, off_12A6, 15
    add_speed
    evt_next
    next                    0

off_12A6:
    speed_set               1, 20
    for                     0, off_12B4, 15
    add_speed
    evt_next
    next                    0

off_12B4:
    speed_set               1, 15
    for                     0, off_12C2, 10
    add_speed
    evt_next
    next                    0

off_12C2:
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

.proc main_12
    evt_next
    cut_chg                 2
    nop
    gosub                   main_20
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    cut_chg                 7
    sce_bgm_control         0, 1, 0, 0, 0
    work_set                WK_ENEMY, 1
    nop
    plc_neck                5, 1, 0, 0, 40, 40
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 1, 0, 80, 80
    plc_motion              0, 17, 8
    sleep                   10, 6
    plc_stop
    nop
    plc_neck                6, 0, 0, 0, 80, 80
    sleep                   10, 12
    evt_exec                255, I_GOSUB, main_13
    sleep                   10, 15
    cut_chg                 8
    sleep                   10, 40
    cut_chg                 7
    evt_exec                255, I_GOSUB, main_14
    sleep                   10, 7
    work_set                WK_ENEMY, 0
    plc_motion              0, 18, 0
    nop
    se_on                   2, 17, 259, 0, 0, 0
    message_on              0, 13, 0, 0, 0
    sleep                   10, 24
    wsleep
    wsleeping
    cut_chg                 8
    sleep                   10, 20
    cut_chg                 9
    gosub                   main_1F
    work_set                WK_ENEMY, 1
    plc_motion              2, 9, 8
    nop
    evt_exec                255, I_GOSUB, main_15
    sleep                   10, 4
    work_set                WK_PLAYER, 0
    plc_motion              1, 1, 16
    nop
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_18
    gosub                   main_20
    set                     FG_GENERAL_1, 68, 1
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    nop
    member_set              11, 76, 210
    member_set              15, 229, 8
    wsleep
    wsleeping
    cut_chg                 10
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                4, 2, 0, 0, 90, 80
    sleep                   10, 14
    plc_neck                4, 2, 0, 0, 150, 80
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_16
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 16
    nop
    sleep                   10, 14
    plc_stop
    nop
    xa_on                   0, 1
    sleep                   10, 2
    message_on              0, 0, 0, 0, 0
    wsleep
    wsleeping
    xa_on                   0, 2
    sleep                   10, 2
    message_on              0, 12, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 50
    plc_motion              1, 6, 144
    plc_neck                6, 0, 0, 0, 32, 32
    plc_cnt                 0
    sleep                   10, 40
    wsleep
    wsleeping
    cut_chg                 4
    cut_auto                1
    sleep                   10, 10
    sleep                   10, 10
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, 20000, 20000, 20000
    plc_stop
    nop
    sleep                   10, 20
    aot_reset               1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_UNDER, 9, 0, 0, 0, 0, 255
    sce_bgmtbl_set          0, 4, 4, 255, 0
    set                     FG_GENERAL_1, 62, 1
    if                      0, off_1482
    ck                      FG_GAME, F_SCENARIO, 1
    set                     32, 2, 1
    endif
    nop

off_1482:
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_13
    work_set                WK_ENEMY, 1
    nop
    plc_dest                0, 5, 33, -12154, -10131
    gosub                   main_1D
    plc_dest                0, 9, 33, -17554, -10231
    gosub                   main_1D
    plc_dest                0, 5, 33, -20514, -10231
    gosub                   main_1D
    plc_dest                0, 9, 33, -12200, -10326
    gosub                   main_1D
    evt_end                 0

.proc main_14
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -12200, -10326
    gosub                   main_1E
    plc_dest                0, 21, 32, 2103, 90
    gosub                   main_1E
    plc_motion              0, 17, 0
    sleep                   10, 15
    set                     FG_GENERAL_2, 0, 1
    evt_end                 0

.proc main_15
    se_on                   2, 10, 259, 0, 0, 0
    sce_espr_on             0, 24, 0, 4096, -10955, -2380, -10000, 0
    evt_next
    nop
    se_on                   2, 11, 259, 0, 0, 0
    sleep                   10, 9
    se_on                   2, 15, 1, 0, 0, 0
    sleep                   10, 2
    message_on              0, 1, 0, 0, 0
    se_on                   2, 10, 259, 0, 0, 0
    sce_espr_on             0, 24, 0, 4096, -10955, -1780, -10900, 0
    evt_next
    nop
    se_on                   2, 11, 259, 0, 0, 0
    sleep                   10, 5
    evt_end                 0

.proc main_16
    se_on                   2, 10, 259, 0, 0, 0
    sleep                   10, 2
    se_on                   2, 11, 259, 0, 0, 0
    sleep                   10, 9
    se_on                   2, 10, 259, 0, 0, 0
    sleep                   10, 2
    se_on                   2, 11, 259, 0, 0, 0
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_17
    evt_end                 0

.proc main_17
    se_on                   2, 29, 259, 0, 0, 0
    sleep                   10, 12
    se_on                   2, 29, 259, 0, 0, 0
    sleep                   10, 12
    se_on                   2, 29, 259, 0, 0, 0
    sleep                   10, 12
    se_on                   2, 29, 259, 0, 0, 0
    sleep                   10, 12
    se_on                   2, 13, 259, 0, 0, 0
    sleep                   10, 30
    se_on                   2, 14, 259, 0, 0, 0
    evt_end                 0

.proc main_18
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -12694, 0, -6473
    member_set              15, 248, 7
    speed_set               2, -350
    speed_set               8, 9
    speed_set               1, -80
    speed_set               7, 5
    plc_motion              0, 19, 0
    sleep                   10, 5
    for                     0, off_1630, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1630:
    evt_exec                255, I_GOSUB, main_19
    do                      0, off_1644
    add_speed
    add_aspeed
    evt_next
    nop
    edwhile                 off_1644
    member_cmp              0, 12, 3, 0, 0

off_1644:
    se_on                   2, 12, 1, 0, 0, 0
    set                     FG_GENERAL_2, 1, 1
    evt_end                 0

.proc main_19
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, 256
    member_set2             7, V_TEMP
    nop
    se_on                   2, 10, 259, 0, 0, 0
    sce_espr_on             0, 1536, 200, 4096, -200, 100, 0, 2100
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    evt_next
    nop
    sce_espr_on             0, 1536, 200, 4096, -200, 100, 0, 2100
    sce_espr_on             0, 256, 200, 4096, -200, 100, 0, 2100
    se_on                   2, 16, 3, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    speed_set               2, -245
    speed_set               8, 10
    speed_set               1, -90
    speed_set               7, 10
    plc_motion              0, 16, 0
    do                      0, off_16EC
    add_speed
    add_aspeed
    evt_next
    nop
    edwhile                 off_16EC
    member_cmp              0, 12, 3, 0, 0

off_16EC:
    evt_end                 0

.proc main_1A
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    evt_next
    cut_chg                 10
    work_set                WK_PLAYER, 0
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -12813, 250, -12848
    member_set              15, 0, 0
    plc_motion              0, 17, 68
    sleep                   10, 2
    xa_on                   0, 3
    plc_neck                4, 2, 0, 0, 40, 80
    sleep                   10, 30
    plc_neck                4, 2, 0, 0, 80, 80
    sleep                   10, 90
    plc_neck                2, 0, 0, -1024, 40, 40
    wsleep
    wsleeping
    plc_neck                6, 0, 0, 0, 40, 40
    plc_motion              0, 20, 0
    plc_cnt                 18
    sleep                   10, 25
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1
    calc                    0, OP_XOR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    sleep                   10, 45
    cut_chg                 4
    pos_set                 0, -12492, 0, -12848
    plc_motion              2, 2, 4
    member_set              12, 0, 0
    cut_auto                1
    sleep                   10, 30
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1
    calc                    0, OP_XOR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop
    plc_ret
    set                     FG_GENERAL_1, 68, 0
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    nop
    evt_end                 0

.proc main_1B
    if                      0, off_17D8
    ck                      FG_GAME, 3, 1
    sce_em_set              0, 255, ENEMY_ADA_WONG_1, 0, 12, 0, 31, 0, 255, -26106, 0, -9647, 116, 0, 0
    endif
    nop

off_17D8:
    evt_end                 0

.proc main_1C
    sce_fade_set            2, 2, 7, 0, 16
    for                     0, off_17EE, 2
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_17EE:
    sce_fade_set            2, 2, 7, 0, 252
    evt_end                 0

.proc main_1D
    do                      0, off_1802
    evt_next
    nop
    edwhile                 off_1802
    ck                      FG_GENERAL_2, 33, 0

off_1802:
    evt_end                 0

.proc main_1E
    do                      0, off_1810
    evt_next
    nop
    edwhile                 off_1810
    ck                      FG_GENERAL_2, 32, 0

off_1810:
    evt_end                 0

.proc main_1F
    do                      0, off_181E
    evt_next
    nop
    edwhile                 off_181E
    ck                      FG_GENERAL_2, 0, 0

off_181E:
    set                     FG_GENERAL_2, 0, 0
    evt_end                 0

.proc main_20
    do                      0, off_1830
    evt_next
    nop
    edwhile                 off_1830
    ck                      FG_GENERAL_2, 1, 0

off_1830:
    set                     FG_GENERAL_2, 1, 0
    evt_end                 0

.proc main_21
    do                      0, off_1842
    evt_next
    nop
    edwhile                 off_1842
    ck                      FG_GENERAL_2, 2, 0

off_1842:
    set                     FG_GENERAL_2, 2, 0
    evt_end                 0
