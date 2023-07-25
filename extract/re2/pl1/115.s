.version 2

.init
.proc init
    if                      0, off_1320
    ck                      FG_GENERAL_1, 254, 1
    set                     FG_GENERAL_1, 15, 0
    set                     FG_ITEM, 104, 0
    set                     FG_ITEM, 20, 0
    set                     FG_ITEM, 103, 0
    set                     FG_ITEM, 43, 0
    endif
    nop

off_1320:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27756, -19220, 1360, 3130, -25167, 0, -14447, -14464, 0, 20, 4, 0, 24, 0, 0, 0, UNLOCKED, 0
    aot_set                 22, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20981, -17955, 4290, 1190, 11, 0, 0, 0, 255, 255
    aot_set                 14, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20895, -20643, 4100, 1480, 13, 0, 0, 0, 255, 255
    aot_set                 15, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20895, -15183, 1370, 1170, 14, 0, 0, 0, 255, 255
    aot_set                 24, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19435, -25703, 2840, 1510, 15, 0, 0, 0, 255, 255
    aot_set                 17, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18065, -12873, 2440, 3170, 16, 0, 0, 0, 255, 255
    aot_set                 18, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27575, -10608, 3480, 2830, 17, 0, 0, 0, 255, 255
    aot_set                 20, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20490, -26839, 1940, 1300, 20, 0, 0, 0, 255, 255
    aot_set                 23, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26430, -26339, 5510, 2270, 22, 0, 0, 0, 255, 255
    evt_end                 0

.main
.proc main
    if                      0, off_1508
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_1474
    ck                      FG_0, F_DIFFICULT, 0
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20895, -15183, 1370, 1170, ITEM_HANDGUNAMMO, 15, 101, 1, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -20503, -1321, -14577, 0, -960, 2048, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_148C

off_1474:
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22895, -9423, 3270, 1170, ITEM_HANDGUNAMMO, 15, 101, 255, 1
    nop
    nop

off_148C:
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21171, -17615, 2360, 1190, ITEM_UNICORNMEDAL, 1, 104, 3, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -20503, -1322, -16877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 10, 10, ITEM_GRENADELAUNCHEREXPLOSIVE, 6, 103, 5, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 48, -26825, -1650, -22505, 0, -1472, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1582

off_1508:
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21171, -17615, 2360, 1190, ITEM_DIAMONDKEY, 2, 104, 4, 160
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -20503, -1322, -16877, 0, 768, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 10, 10, ITEM_BOWGUN, 18, 103, 6, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 48, -26275, -1950, -22805, 0, 1536, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1582:
    gosub                   main_0D
    aot_set                 25, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27875, -15818, 3190, 1360, 255, 0, I_GOSUB, main_02, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 16, -26260, -1924, -14940, 0, 0, -384, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            19, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, ITEM_69, 1, 43, 255, 0
    if                      0, off_161E
    ck                      FG_3, 100, 0
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 0, 0, 0
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, 0, 0, 0
    else                    0, off_1642

off_161E:
    if                      0, off_1640
    ck                      FG_ITEM, 43, 1
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 0, 0, 0
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, 0, 0, 0
    endif
    nop

off_1640:
    nop
    nop

off_1642:
    if                      0, off_16B4
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_16B0
    ck                      FG_ITEM, 20, 0
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21171, -17615, 2360, 1190, 255, 0, I_GOSUB, main_05, 0, 0
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_68, 1, 20, 9, 0
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 16, -20503, -1322, -16877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 0, 0, 0
    endif
    nop

off_16B0:
    else                    0, off_177C

off_16B4:
    if                      0, off_173E
    ck                      FG_GENERAL_1, 15, 0
    sce_em_set              0, 0, ENEMY_LEON_KENNEDY_RPD, 0, 64, 0, 0, 0, 255, -19413, 0, -18127, -1085, 0, 0
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_68, 1, 20, 255, 0
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           10, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    gosub                   main_0A
    evt_exec                255, I_GOSUB, main_06
    else                    0, off_177A

off_173E:
    if                      0, off_1774
    ck                      FG_GENERAL_1, 33, 0
    sce_em_set              0, 0, ENEMY_LEON_KENNEDY_RPD, 0, 64, 0, 0, 0, 255, -23037, 0, -19397, 6203, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    gosub                   main_0A
    gosub                   main_0B
    endif
    nop

off_1774:
    set                     FG_GENERAL_2, 5, 1
    nop
    nop

off_177A:
    nop
    nop

off_177C:
    evt_end                 0

.proc aot
    gosub                   main_0E
    if                      0, off_17B6
    ck                      FG_GENERAL_2, 6, 0
    if                      0, off_17B4
    ck                      FG_3, 100, 0
    if                      0, off_17B2
    ck                      FG_ITEM, 20, 1
    if                      0, off_17B0
    ck                      FG_ITEM, 104, 1
    set                     FG_GENERAL_2, 6, 1
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_17B0:
    endif
    nop

off_17B2:
    endif
    nop

off_17B4:
    endif
    nop

off_17B6:
    evt_end                 0

.proc main_02
    set                     FG_STATE, 7, 1
    if                      0, off_17D0
    ck                      FG_3, 100, 0
    message_on              0, 18, 0, 255, 255
    evt_next
    nop
    else                    0, off_180E

off_17D0:
    if                      0, off_1802
    ck                      FG_ITEM, 43, 0
    aot_on                  19
    evt_next
    nop
    if                      0, off_17FE
    ck                      FG_ITEM, 43, 1
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 0, 0, 0
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, 0, 0, 0
    endif
    nop

off_17FE:
    else                    0, off_180C

off_1802:
    message_on              0, 18, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_180C:
    nop
    nop

off_180E:
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_03
    set                     FG_STATE, 7, 1
    set                     FG_3, 100, 1
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 177, 157, 0, 0, 145, 199
    if                      0, off_1836
    ck                      FG_GENERAL_2, 5, 0
    sce_bgm_control         0, 2, 0, 0, 0
    endif
    nop

off_1836:
    set                     FG_GAME, 27, 1
    cut_chg                 7
    evt_next
    sce_bgm_control         1, 1, 0, 0, 0
    nop
    evt_exec                255, I_GOSUB, main_04
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    plc_motion              1, 3, 0
    nop
    sleep                   10, 1
    plc_ret
    nop
    sleep                   10, 19
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -26316, -1800, -12937, 32, 32
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 33, -26316, -12937
    sleep                   10, 20
    if                      0, off_18AA
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_18A8
    ck                      FG_GENERAL_1, 33, 0
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 9, 32, -26316, -12937
    plc_neck                1, -26316, -1800, -12937, 32, 32
    endif
    nop

off_18A8:
    endif
    nop

off_18AA:
    sleep                   10, 100
    work_set                WK_OBJECT, 7
    nop
    save                    V_08, -25985
    save                    V_09, -1355
    save                    V_0A, -324
    work_copy               9, 8, 1
    work_copy               8, 2, 1
    pos_set                 0, 0, 0, -15090
    dir_set                 0, 0, 0, -384
    for                     0, off_191A, 60
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_SUB, V_TEMP, 4
    copy                    V_08, V_TEMP
    nop
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_SUB, V_TEMP, 5
    copy                    V_09, V_TEMP
    nop
    copy                    V_TEMP, V_0A
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_0A, V_TEMP
    nop
    work_copy               9, 8, 1
    work_copy               8, 2, 1
    pos_set                 0, 0, 0, -15090
    evt_next
    nop
    next                    0

off_191A:
    work_set                WK_OBJECT, 8
    nop
    save                    V_08, -25945
    save                    V_09, -1395
    save                    V_0A, -324
    work_copy               9, 8, 1
    work_copy               8, 2, 1
    pos_set                 0, 0, 0, -14989
    dir_set                 0, 0, 0, -384
    for                     0, off_1986, 60
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_SUB, V_TEMP, 4
    copy                    V_08, V_TEMP
    nop
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_SUB, V_TEMP, 5
    copy                    V_09, V_TEMP
    nop
    copy                    V_TEMP, V_0A
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_0A, V_TEMP
    nop
    work_copy               9, 8, 1
    work_copy               8, 2, 1
    pos_set                 0, 0, 0, -14989
    evt_next
    nop
    next                    0

off_1986:
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_ret
    cut_chg                 2
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, -26260, -1924, -14940
    dir_set                 0, 0, 0, -384
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, 0, 0, 0
    dir_set                 0, 0, 0, -384
    cut_auto                1
    if                      0, off_19CC
    ck                      FG_GAME, F_SCENARIO, 0
    sce_bgmtbl_set          0, 21, 1, 65329, 0
    endif
    nop

off_19CC:
    set                     FG_GAME, 27, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_04
    for                     0, off_19F8, 10
    sce_espr3d_on           0, 4374, 0, 527, -25864, -2043, -14291, -1024, 0, 0, 0
    sleep                   10, 3
    next                    0

off_19F8:
    evt_end                 0

.proc main_05
    set                     FG_STATE, 7, 1
    aot_reset               1, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    cut_chg                 9
    sleep                   10, 30
    aot_on                  7
    evt_next
    set                     FG_STATE, 7, 1
    work_set                WK_OBJECT, 3
    pos_set                 0, -20503, -1322, -16877
    evt_next
    nop
    sleep                   10, 40
    aot_on                  2
    cut_chg                 133
    evt_next
    set                     FG_STATE, 7, 1
    evt_next
    cut_auto                1
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_06
    set                     FG_GENERAL_1, 15, 1
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    evt_next
    nop
    gosub                   main_15
    gosub                   main_16
    gosub                   main_17
    gosub                   main_18
    gosub                   main_19
    aot_on                  7
    cut_chg                 134
    set                     FG_STATE, 7, 1
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 64
    plc_cnt                 19
    evt_next
    plc_stop
    gosub                   main_1A
    gosub                   main_1B
    gosub                   main_1C
    gosub                   main_1D
    gosub                   main_07
    gosub                   main_0B
    work_set                WK_PLAYER, 0
    plc_ret
    cut_chg                 2
    cut_auto                1
    sce_bgmtbl_set          0, 21, 1, 3121, 49152
    set                     FG_GAME, 27, 0
    set                     FG_STATE, 7, 0
    set                     FG_GENERAL_2, 0, 1
    evt_end                 0

.proc main_07
    work_set                WK_ENEMY, 0
    plc_motion              0, 22, 4
    nop
    plc_neck                5, 1, 0, 0, 16, 16
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             0, V_TEMP
    nop
    work_set                WK_OBJECT, 9
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, 10
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_08
    gosub                   main_09
    evt_end                 0

.proc main_09
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_04, 11
    nop
    member_copy             V_05, 13
    nop
    work_set                WK_ENEMY, 0
    nop
    work_copy               5, 10, 1
    work_copy               4, 4, 1
    plc_dest                0, 9, 32, 0, 0
    gosub                   main_1E
    xa_on                   0, 49
    sleep                   10, 2
    message_on              0, 8, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    plc_motion              0, 20, 0
    plc_cnt                 10
    sleep                   10, 20
    plc_motion              0, 16, 0
    plc_cnt                 10
    sleep                   10, 10
    plc_motion              0, 23, 0
    plc_cnt                 10
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    sleep                   10, 10
    work_set                WK_ENEMY, 0
    plc_motion              0, 22, 4
    nop
    plc_neck                5, 1, 0, 0, 16, 16
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_GAME, 27, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_0A
    aot_set                 26, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23771, -20165, 1330, 1290, 255, 0, 24, 9, 0, 0
    evt_end                 0

.proc main_0B
    aot_reset               26, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_09, 0, 0
    evt_end                 0

.proc main_0C
    aot_reset               26, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, 24, 9, 0, 0
    evt_end                 0

.proc main_0D
    aot_set                 5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24175, -9418, 1730, 1800, 255, 0, I_GOSUB, main_13, 0, 0
    gosub                   main_10
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23296, -12420, 4760, 2240, 255, 0, I_GOSUB, main_0F, 0, 0
    save                    V_07, 0
    item_aot_set            29, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_FILMD, 1, 209, 255, 0
    if                      0, off_1C2C
    ck                      FG_ITEM, 103, 0
    set                     31, 27, 1
    aot_set                 28, SCE_HIKIDASHI, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27156, -24270, 1360, 2670, 27, 0, 13, 0, 11, 0
    else                    0, off_1C32

off_1C2C:
    set                     FG_GENERAL_2, 10, 1
    nop
    nop

off_1C32:
    evt_end                 0

.proc main_0E
    if                      0, off_1C56
    ck                      FG_ITEM, 103, 1
    if                      0, off_1C54
    ck                      FG_GENERAL_2, 10, 0
    set                     FG_GENERAL_2, 10, 1
    aot_reset               28, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1C54:
    endif
    nop

off_1C56:
    evt_end                 0

.proc main_0F
    set                     FG_STATE, 7, 1
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    if                      0, off_1C96
    ck                      FG_ITEM, 209, 0
    if                      0, off_1C88
    cmp                     0, V_07, CMP_GE, 50
    aot_on                  29
    save                    V_07, 51
    evt_next
    nop
    else                    0, off_1C92

off_1C88:
    message_on              0, 10, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_1C92:
    else                    0, off_1CA0

off_1C96:
    message_on              0, 10, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_1CA0:
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_10
    aot_set                 4, SCE_AUTO, SAT_AUTO, 0, 0, -19181, -19310, 2120, 1920, 255, 0, 24, 8, 0, 0
    evt_end                 0

.proc main_11
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_08, 0, 0
    evt_end                 0

.proc main_12
    aot_reset               4, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, 24, 8, 0, 0
    evt_end                 0

.proc main_13
    set                     FG_STATE, 7, 1
    message_on              0, 21, 0, 255, 255
    sleep                   10, 1
    cut_chg                 8
    sleep                   10, 2
    while                   4, off_1CF4
    sce_trg_ck              0, 12288
    evt_next
    nop
    ewhile                  0

off_1CF4:
    cut_chg                 1
    cut_auto                1
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_14
    evt_next
    work_set                WK_PLAYER, 0
    pos_set                 0, -26282, 0, -18803
    dir_set                 0, 0, -4296, 0
    se_on                   2, 10, 0, -26282, 0, -18803
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 9, 32, -23037, -18397
    sleep                   10, 5
    se_on                   2, 11, 0, -26282, 0, -18803
    cut_chg                 2
    sleep                   10, 15
    xa_on                   0, 43
    sleep                   10, 2
    message_on              0, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 15
    plc_neck                2, 0, 0, 1024, 32, 32
    sce_bgm_control         0, 1, 0, 0, 0
    sleep                   10, 10
    plc_neck                2, 0, 0, 32, 32, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_15
    evt_next
    work_set                WK_ENEMY, 0
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 9, 32, -23037, -18397
    sleep                   10, 15
    xa_on                   0, 43
    sleep                   10, 2
    message_on              0, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 15
    plc_neck                2, 0, 0, 1024, 32, 32
    sce_bgm_control         0, 1, 0, 0, 0
    sleep                   10, 10
    plc_neck                2, 0, 0, 32, 32, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_16
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 33, -24574, -18632
    plc_neck                5, 3, 0, 0, 96, 96
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 4, 32, -23037, -18397
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 33, -24574, -18632
    plc_neck                5, 3, 0, 0, 96, 96
    cut_chg                 2
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    gosub                   main_1F
    evt_end                 0

.proc main_17
    cut_chg                 6
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -23037, 0, -19397
    dir_set                 0, 0, 6203, 0
    plc_motion              0, 15, 0
    work_set                WK_OBJECT, 10
    nop
    super_set               0, 130, 129, 161, 293, 349, 1024, -2752, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -24574, 0, -19632
    dir_set                 0, 0, 3707, 0
    sleep                   10, 2
    evt_end                 0

.proc main_18
    xa_on                   0, 44
    sleep                   10, 9
    message_on              0, 1, 0, 0, 0
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 0
    nop
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    plc_motion              0, 23, 0
    plc_cnt                 13
    nop
    sleep                   10, 10
    plc_neck                5, 1, 0, 0, 16, 16
    plc_motion              0, 16, 0
    sleep                   10, 25
    plc_neck                2, 0, 0, 160, 32, 32
    sleep                   10, 5
    plc_neck                5, 1, 0, 0, 32, 32
    sleep                   10, 8
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 0
    plc_cnt                 13
    nop
    wsleep
    wsleeping
    evt_end                 0

.proc main_19
    work_set                WK_ENEMY, 0
    plc_motion              0, 23, 0
    nop
    plc_neck                2, 0, 0, 240, 96, 96
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 15
    xa_on                   0, 45
    sleep                   10, 8
    message_on              0, 2, 0, 0, 0
    sleep                   10, 2
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, 0, 1024, 16, 16
    sleep                   10, 10
    plc_neck                2, 0, 320, 1024, 32, 32
    sleep                   10, 10
    plc_neck                2, 0, -320, 1024, 32, 32
    plc_motion              0, 19, 0
    plc_cnt                 12
    sleep                   10, 20
    plc_neck                2, 0, 320, 1024, 32, 32
    plc_motion              0, 20, 0
    sleep                   10, 14
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 320, -128, 16, 16
    sleep                   10, 6
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, -320, 1024, 32, 32
    sleep                   10, 10
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, 320, 1024, 32, 32
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, -320, 1024, 16, 16
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 144
    nop
    sleep                   10, 8
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, 320, 1024, 16, 16
    sleep                   10, 40
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, -320, 1024, 32, 32
    plc_motion              0, 24, 16
    sleep                   10, 35
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 400, 128, 8, 8
    sleep                   10, 5
    work_set                WK_OBJECT, 9
    nop
    super_set               0, 130, 142, -8, 365, -75, 832, 0, -68
    work_set                WK_ENEMY, 0
    plc_stop
    sleep                   10, 30
    work_set                WK_ENEMY, 0
    plc_motion              0, 16, 16
    nop
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 128, 12, 12
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 8, 8
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    plc_stop
    sleep                   10, 20
    cut_chg                 2
    work_set                WK_PLAYER, 0
    nop
    dir_set                 0, 0, 211, 0
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 6
    work_set                WK_ENEMY, 0
    plc_motion              0, 16, 144
    plc_cnt                 10
    nop
    sleep                   10, 6
    work_set                WK_OBJECT, 9
    nop
    super_set               0, 64, 142, -1, 365, -40, 832, -2048, 60
    sleep                   10, 3
    work_set                WK_ENEMY, 0
    plc_stop
    sleep                   10, 10
    work_set                WK_ENEMY, 0
    plc_motion              0, 23, 16
    plc_cnt                 10
    nop
    sleep                   10, 50
    evt_end                 0

.proc main_1A
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 1024, 8, 8
    sleep                   10, 20
    xa_on                   0, 46
    sleep                   10, 2
    message_on              0, 3, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 32, 32
    plc_motion              0, 15, 0
    sleep                   10, 20
    plc_motion              0, 20, 0
    plc_cnt                 10
    sleep                   10, 10
    plc_motion              0, 18, 0
    plc_cnt                 10
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 144
    plc_cnt                 10
    work_set                WK_ENEMY, 0
    plc_motion              0, 19, 0
    plc_cnt                 10
    sleep                   10, 20
    plc_motion              0, 21, 0
    plc_cnt                 10
    sleep                   10, 40
    message_on              0, 4, 0, 0, 0
    plc_motion              0, 15, 0
    plc_cnt                 10
    sleep                   10, 20
    plc_motion              0, 18, 0
    plc_cnt                 10
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 128, 1024, 8, 8
    work_set                WK_ENEMY, 0
    plc_motion              0, 20, 0
    plc_cnt                 10
    nop
    sleep                   10, 20
    plc_motion              0, 16, 0
    plc_cnt                 10
    sleep                   10, 20
    plc_motion              0, 17, 0
    sleep                   10, 10
    message_on              0, 5, 0, 0, 0
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    plc_motion              0, 23, 0
    nop
    wsleep
    wsleeping
    evt_end                 0

.proc main_1B
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 16
    nop
    sleep                   10, 15
    plc_neck                5, 3, 0, 0, 16, 16
    sleep                   10, 25
    xa_on                   0, 47
    sleep                   10, 2
    message_on              0, 6, 0, 0, 0
    sleep                   10, 3
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, 0, 128, 20, 20
    sleep                   10, 6
    plc_neck                5, 1, 0, 0, 20, 20
    evt_end                 0

.proc main_1C
    sleep                   10, 10
    xa_on                   0, 48
    sleep                   10, 2
    message_on              0, 7, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 0
    nop
    plc_neck                5, 1, 0, 0, 64, 64
    sleep                   10, 20
    plc_neck                2, 0, -320, 1024, 32, 32
    plc_motion              0, 23, 0
    plc_cnt                 10
    sleep                   10, 14
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 32, 32
    work_set                WK_ENEMY, 0
    plc_motion              0, 23, 0
    plc_cnt                 14
    work_set                WK_OBJECT, 10
    super_set               0, 130, 129, 181, 243, 349, 1024, -2752, 0
    sleep                   10, 1
    work_set                WK_OBJECT, 10
    nop
    super_set               0, 130, 129, 228, 193, 349, 1024, -2752, 0
    sleep                   10, 1
    work_set                WK_OBJECT, 10
    nop
    super_set               0, 130, 142, 0, 243, -1, 1024, -2048, 0
    sleep                   10, 8
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 16, 16
    sleep                   10, 2
    plc_motion              0, 15, 16
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 12
    work_set                WK_ENEMY, 0
    plc_stop
    sleep                   10, 10
    plc_motion              0, 15, 16
    plc_cnt                 11
    sleep                   10, 6
    plc_motion              0, 15, 144
    plc_cnt                 8
    sleep                   10, 6
    plc_stop
    nop
    wsleep
    wsleeping
    evt_end                 0

.proc main_1D
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 19
    plc_stop
    nop
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 128
    plc_cnt                 11
    nop
    sleep                   10, 1
    work_set                WK_OBJECT, 10
    nop
    super_set               0, 64, 142, 0, 224, -46, 1024, 64, 1985
    sleep                   10, 1
    work_set                WK_ENEMY, 0
    plc_stop
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 128
    plc_cnt                 13
    nop
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 1
    work_set                WK_ENEMY, 0
    plc_motion              0, 22, 16
    nop
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 16
    xa_on                   0, 49
    sleep                   10, 2
    message_on              0, 8, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 16, 16
    work_set                WK_ENEMY, 0
    plc_motion              0, 20, 0
    plc_cnt                 10
    nop
    sleep                   10, 20
    plc_motion              0, 16, 0
    plc_cnt                 10
    sleep                   10, 10
    work_set                WK_ENEMY, 0
    plc_motion              0, 23, 0
    plc_cnt                 10
    nop
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 16
    plc_cnt                 10
    nop
    sleep                   10, 10
    cut_chg                 2
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 4
    plc_cnt                 10
    work_set                WK_ENEMY, 0
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             0, V_TEMP
    nop
    evt_end                 0

.proc main_1E
    do                      0, off_241A
    evt_next
    nop
    edwhile                 off_241A
    ck                      FG_GENERAL_2, 32, 0

off_241A:
    evt_end                 0

.proc main_1F
    do                      0, off_2428
    evt_next
    nop
    edwhile                 off_2428
    ck                      FG_GENERAL_2, 33, 0

off_2428:
    evt_end                 0
