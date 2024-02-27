.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -21317, -24673, 1920, 1530, -25725, -1800, -9600, 1024, 3, 2, 4, 1, 6, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 1, 1, -27830, 0, -18600, 0, 3, 3, 4, 0, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 1, 1, -27830, 0, -18600, 0, 3, 3, 8, 0, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_6, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, -28000, -7200, -18550, 0, 3, 3, 2, 4, 22, 4, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 4, 0, -27119, -27068, 1700, 1830, -12470, 0, -830, 1024, 3, 4, 2, 0, 40, 5, 0, 0, UNLOCKED, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 4, 0, 10, 16, -12850, -8700, -13700, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_2, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -14475, -15052, 3810, 2390, 0, 0, 1, 0, 0, 0
    aot_set                 ID_AOT_13, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -14535, -16910, 2200, 1500, 6, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x72, 0x91

.main
.proc main
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_23AE
    member_cmp              0, 17, 0, 4, 0
    gosub                   main_16
    gosub                   main_17
    aot_set                 ID_AOT_7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -30061, -21132, 2370, 1800, 255, 0, I_GOSUB, main_02, 0, 0
    aot_set                 ID_AOT_12, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -28961, -19832, 2370, 2800, 255, 0, I_GOSUB, main_08, 0, 0
    aot_set                 ID_AOT_30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -23117, -26973, 1800, 2800, ID_MSG_7, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_31, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -15135, -23211, 1800, 6300, ID_MSG_5, 0, 0, 0, 255, 255
    if                      0, off_235A
    cmp                     0, V_LAST_RDT, CMP_EQ, 1028
    evt_exec                255, I_GOSUB, main_09
    endif
    nop

off_235A:
    if                      0, off_236C
    ck                      FG_COMMON, 161, 1
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Z_POS, -15460
    endif
    nop

off_236C:
    if                      0, off_237E
    ck                      FG_COMMON, 162, 1
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Z_POS, -21060
    endif
    nop

off_237E:
    if                      0, off_23A2
    ck                      FG_COMMON, 163, 1
    sca_id_set              20, 0, 24
    aot_reset               ID_AOT_12, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    pos_set                 0, -32000, -32000, -32000
    endif
    nop

off_23A2:
    set                     FG_MAP, 133, 1
    set                     35, 7, 1
    else                    0, off_23DA

off_23AE:
    gosub                   main_18
    gosub                   main_19
    aot_set                 ID_AOT_7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -30061, -21132, 2370, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    sca_id_set              20, 0, 24
    set                     FG_MAP, 134, 1
    set                     35, 8, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    nop
    nop

off_23DA:
    save                    V_04, 0
    save                    V_05, 0
    save                    V_06, 0
    save                    V_07, 0
    evt_end                 0

.proc aot
    gosub                   main_05
    gosub                   main_04
    gosub                   main_0E
    evt_end                 0

.proc main_02
    message_on              0, ID_MSG_1, 0, 255, 255
    evt_next
    nop
    if                      0, off_2424
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_STOP, 7, 1
    cut_auto                0
    if                      0, off_2418
    ck                      FG_COMMON, 124, 0
    aot_on                  ID_AOT_4
    else                    0, off_241C

off_2418:
    aot_on                  ID_AOT_5
    nop
    nop

off_241C:
    cut_auto                1
    set                     FG_STOP, 7, 0
    endif
    nop

off_2424:
    evt_end                 0

.proc main_03
    message_on              0, ID_MSG_2, 0, 255, 255
    evt_next
    nop
    if                      0, off_2446
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_STOP, 7, 1
    cut_auto                0
    aot_on                  ID_AOT_6
    cut_auto                1
    set                     FG_STOP, 7, 0
    endif
    nop

off_2446:
    evt_end                 0

.proc main_04
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_245C
    member_cmp              0, 11, 3, 224, 177
    gosub                   main_12
    else                    0, off_2460

off_245C:
    gosub                   main_13
    nop
    nop

off_2460:
    evt_end                 0

.proc main_05
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    if                      0, off_247C
    member_cmp              0, 13, 3, 168, 178
    set                     FG_COMMON, 162, 1
    sca_id_set              27, 0, 0
    else                    0, off_24A2

off_247C:
    if                      0, off_2492
    member_cmp              0, 13, 1, 164, 187
    set                     FG_COMMON, 161, 1
    sca_id_set              27, 0, 0
    else                    0, off_24A0

off_2492:
    set                     FG_COMMON, 161, 0
    set                     FG_COMMON, 162, 0
    sca_id_set              27, 0, 152
    nop
    nop

off_24A0:
    nop
    nop

off_24A2:
    if                      0, off_24D2
    ck                      FG_COMMON, 163, 0
    if                      0, off_24C4
    ck                      FG_COMMON, 161, 0
    ck                      FG_COMMON, 162, 0
    aot_reset               ID_AOT_12, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    else                    0, off_24D0

off_24C4:
    aot_reset               ID_AOT_12, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_08, 0, 0
    nop
    nop

off_24D0:
    endif
    nop

off_24D2:
    evt_end                 0

.proc main_06
    set                     FG_STATUS, 3, 0
    aot_reset               ID_AOT_0, SCE_DOOR, SAT_PL | SAT_FRONT, 98, 155, 248, 248, 146, 215
    aot_reset               ID_AOT_8, SCE_AUTO, SAT_PL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_07
    set                     FG_STATUS, 3, 1
    aot_reset               ID_AOT_1, SCE_DOOR, SAT_PL | SAT_UNDER, 26, 208, 0, 0, 184, 251
    evt_end                 0

.proc main_08
    message_on              0, ID_MSG_0, 0, 255, 255
    evt_next
    nop
    if                      0, off_2598
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    se_on                   2, 11, 0, -13500, -3300, -17100
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    speed_set               2, 20
    speed_set               0, -10
    speed_set               8, 1
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 100
    member_set2             M_X_POS, V_TEMP
    nop
    nop_8c                  0, 80, 70, 43, 0, 0, 0
    nop_8b                  120, 5, 0, 43, 0
    while                   6, off_256A
    member_cmp              0, 13, 4, 2, 189
    if                      0, off_2566
    member_cmp              0, 2, 4, 40, 0
    add_aspeed
    nop
    endif
    nop

off_2566:
    add_speed
    evt_next
    ewhile                  0

off_256A:
    pos_set                 0, -32000, -32000, -32000
    sca_id_set              20, 0, 24
    aot_reset               ID_AOT_12, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    set                     FG_COMMON, 163, 1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    endif
    nop

off_2598:
    evt_end                 0

.proc main_09
    set                     FG_STOP, 7, 1
    evt_exec                255, I_GOSUB, main_11
    se_on                   0, 1, 772, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0A
    evt_exec                255, I_GOSUB, main_0B
    if                      0, off_25C4
    ck                      FG_STATUS, 3, 1
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_25C4:
    sleep                   10, 90
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0A
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    member_set              M_Y_POS, -4800
    gosub                   main_0D
    evt_end                 0

.proc main_0B
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -25740, -4800, -25770
    member_set              M_Y_DIR, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    gosub                   main_0D
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    evt_end                 0

.proc main_0C
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -26450, -4800, -26430
    member_set              M_Y_DIR, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    gosub                   main_0D
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    evt_end                 0

.proc main_0D
    speed_set               1, -40
    for                     0, off_2648, 10
    add_speed
    evt_next
    next                    0

off_2648:
    speed_set               1, -35
    for                     0, off_2656, 20
    add_speed
    evt_next
    next                    0

off_2656:
    speed_set               1, -30
    for                     0, off_2664, 15
    add_speed
    evt_next
    next                    0

off_2664:
    speed_set               1, -25
    for                     0, off_2672, 15
    add_speed
    evt_next
    next                    0

off_2672:
    speed_set               1, -20
    for                     0, off_2680, 15
    add_speed
    evt_next
    next                    0

off_2680:
    speed_set               1, -15
    for                     0, off_268E, 10
    add_speed
    evt_next
    next                    0

off_268E:
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    member_set2             M_Y_POS, V_TEMP
    nop
    sleep                   10, 5
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 35
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_end                 0

.proc main_0E
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_26C8
    member_cmp              0, 17, 0, 0, 0
    sca_id_set              13, 0, 0
    gosub                   main_0F
    else                    0, off_26CE

off_26C8:
    sca_id_set              13, 128, 252
    nop
    nop

off_26CE:
    evt_end                 0

.proc main_0F
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_29D2
    member_cmp              0, 17, 0, 0, 0
    if                      0, off_29C0
    cmp                     0, V_07, CMP_EQ, 0
    sce_rnd
    nop
    copy                    V_TEMP, V_RNG
    nop
    calc                    0, OP_AND, V_TEMP, 7
    copy                    V_06, V_TEMP
    nop
    if                      0, off_29B8
    cmp                     0, V_06, CMP_EQ, 0
    sce_rnd
    nop
    copy                    V_TEMP, V_RNG
    nop
    calc                    0, OP_MOD, V_TEMP, 40
    copy                    V_06, V_TEMP
    nop
    switch                  6, off_2998
    case                    0, off_2726, 0
    save                    V_04, -14360
    save                    V_05, -20800
    break                   0

off_2726:
    case                    0, off_2736, 1
    save                    V_04, -19530
    save                    V_05, -21150
    break                   0

off_2736:
    case                    0, off_2746, 2
    save                    V_04, -14070
    save                    V_05, -17880
    break                   0

off_2746:
    case                    0, off_2756, 3
    save                    V_04, -16850
    save                    V_05, -18000
    break                   0

off_2756:
    case                    0, off_2766, 4
    save                    V_04, -18890
    save                    V_05, -19400
    break                   0

off_2766:
    case                    0, off_2776, 5
    save                    V_04, -20100
    save                    V_05, -17820
    break                   0

off_2776:
    case                    0, off_2786, 6
    save                    V_04, -20330
    save                    V_05, -16040
    break                   0

off_2786:
    case                    0, off_2796, 7
    save                    V_04, -16900
    save                    V_05, -16040
    break                   0

off_2796:
    case                    0, off_27A6, 8
    save                    V_04, -16680
    save                    V_05, -14370
    break                   0

off_27A6:
    case                    0, off_27B6, 9
    save                    V_04, -18650
    save                    V_05, -14890
    break                   0

off_27B6:
    case                    0, off_27C6, 10
    save                    V_04, -16630
    save                    V_05, -16200
    break                   0

off_27C6:
    case                    0, off_27D6, 11
    save                    V_04, -14940
    save                    V_05, -19090
    break                   0

off_27D6:
    case                    0, off_27E6, 12
    save                    V_04, -17200
    save                    V_05, -13800
    break                   0

off_27E6:
    case                    0, off_27F6, 13
    save                    V_04, -23760
    save                    V_05, -13350
    break                   0

off_27F6:
    case                    0, off_2806, 14
    save                    V_04, -22270
    save                    V_05, -14630
    break                   0

off_2806:
    case                    0, off_2816, 15
    save                    V_04, -20650
    save                    V_05, -13440
    break                   0

off_2816:
    case                    0, off_2826, 16
    save                    V_04, -19450
    save                    V_05, -14920
    break                   0

off_2826:
    case                    0, off_2836, 17
    save                    V_04, -24020
    save                    V_05, -14910
    break                   0

off_2836:
    case                    0, off_2846, 18
    save                    V_04, -26360
    save                    V_05, -17500
    break                   0

off_2846:
    case                    0, off_2856, 19
    save                    V_04, -24700
    save                    V_05, -16750
    break                   0

off_2856:
    case                    0, off_2866, 20
    save                    V_04, -26180
    save                    V_05, -14860
    break                   0

off_2866:
    case                    0, off_2876, 21
    save                    V_04, -25270
    save                    V_05, -13900
    break                   0

off_2876:
    case                    0, off_2886, 22
    save                    V_04, -24910
    save                    V_05, -15700
    break                   0

off_2886:
    case                    0, off_2896, 23
    save                    V_04, -24100
    save                    V_05, -24900
    break                   0

off_2896:
    case                    0, off_28A6, 24
    save                    V_04, -26000
    save                    V_05, -23000
    break                   0

off_28A6:
    case                    0, off_28B6, 25
    save                    V_04, -26300
    save                    V_05, -21500
    break                   0

off_28B6:
    case                    0, off_28C6, 26
    save                    V_04, -24810
    save                    V_05, -20960
    break                   0

off_28C6:
    case                    0, off_28D6, 27
    save                    V_04, -24150
    save                    V_05, -19740
    break                   0

off_28D6:
    case                    0, off_28E6, 28
    save                    V_04, -25170
    save                    V_05, -19170
    break                   0

off_28E6:
    case                    0, off_28F6, 29
    save                    V_04, -25470
    save                    V_05, -17730
    break                   0

off_28F6:
    case                    0, off_2906, 30
    save                    V_04, -24090
    save                    V_05, -19100
    break                   0

off_2906:
    case                    0, off_2916, 31
    save                    V_04, -16300
    save                    V_05, -19300
    break                   0

off_2916:
    case                    0, off_2926, 32
    save                    V_04, -19980
    save                    V_05, -16650
    break                   0

off_2926:
    case                    0, off_2936, 33
    save                    V_04, -14990
    save                    V_05, -15400
    break                   0

off_2936:
    case                    0, off_2946, 34
    save                    V_04, -20990
    save                    V_05, -18220
    break                   0

off_2946:
    case                    0, off_2956, 35
    save                    V_04, -17040
    save                    V_05, -19400
    break                   0

off_2956:
    case                    0, off_2966, 36
    save                    V_04, -17400
    save                    V_05, -14700
    break                   0

off_2966:
    case                    0, off_2976, 37
    save                    V_04, -19830
    save                    V_05, -17210
    break                   0

off_2976:
    case                    0, off_2986, 38
    save                    V_04, -18280
    save                    V_05, -14900
    break                   0

off_2986:
    case                    0, off_2996, 39
    save                    V_04, -24070
    save                    V_05, -14300
    break                   0

off_2996:
    eswitch                 0

off_2998:
    work_copy               5, 16, 1
    work_copy               4, 8, 1
    sce_espr_on             0, 5376, 0, 4096, 0, -5680, 0, 0
    evt_exec                255, I_GOSUB, main_10
    break_point
    nop
    endif
    nop

off_29B8:
    save                    V_07, 16
    else                    0, off_29D0

off_29C0:
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    nop
    nop

off_29D0:
    endif
    nop

off_29D2:
    evt_end                 0

.proc main_10
    sleep                   10, 38
    work_copy               5, 14, 1
    work_copy               4, 6, 1
    se_on                   2, 12, 0, 0, 0, 0
    evt_end                 0

.proc main_11
    evt_next
    nop
    nop_8b                  100, 90, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 87, 0
    nop_8a                  0, 3, 0, 85, 0
    evt_end                 0

.proc main_12
    if                      0, off_2A76
    ck                      FG_COMMON, 124, 0
    cmp                     0, V_USED_ITEM, CMP_EQ, 47
    sce_fade_set            1, 2, 7, 0, 248
    cut_auto                0
    cut_be_set              4, 2, 0
    cut_be_set              12, 1, 0
    cut_chg                 8
    cut_replace             4, 8
    cut_replace             5, 9
    work_set                WK_OBJECT, ID_OBJ_11
    nop
    pos_set                 0, -23700, -2050, -24220
    set                     FG_COMMON, 124, 1
    evt_exec                255, I_GOSUB, main_14
    aot_reset               ID_AOT_19, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 24, 0, 6, 0, 175, 0
    aot_reset               ID_AOT_25, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 9, 0, 0, 0, 255, 255
    aot_reset               ID_AOT_26, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_8, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_9, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    cut_auto                1
    endif
    nop

off_2A76:
    evt_end                 0

.proc main_13
    if                      0, off_2AFA
    ck                      FG_COMMON, 125, 0
    cmp                     0, V_USED_ITEM, CMP_EQ, 47
    sce_fade_set            1, 2, 7, 0, 248
    cut_auto                0
    cut_be_set              7, 2, 0
    cut_be_set              13, 1, 0
    cut_be_set              13, 2, 0
    cut_be_set              13, 3, 0
    cut_chg                 11
    cut_replace             6, 10
    cut_replace             7, 11
    work_set                WK_OBJECT, ID_OBJ_8
    nop
    pos_set                 0, -15460, -2500, -21940
    set                     FG_COMMON, 125, 1
    evt_exec                255, I_GOSUB, main_15
    aot_reset               ID_AOT_16, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 25, 0, 6, 0, 51, 0
    aot_reset               ID_AOT_27, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 9, 0, 0, 0, 255, 255
    aot_reset               ID_AOT_29, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, 0, 0, 255, 255
    aot_reset               ID_AOT_28, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_10, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_11, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    cut_auto                1
    endif
    nop

off_2AFA:
    evt_end                 0

.proc main_14
    se_on                   2, 10, 1, -26080, -3300, -25000
    sleep                   10, 10
    se_on                   2, 8, 1, -26080, -3300, -25000
    evt_end                 0

.proc main_15
    se_on                   2, 10, 1, -13500, -3300, -17100
    sleep                   10, 10
    se_on                   2, 8, 1, -13500, -3300, -17100
    evt_end                 0

.proc main_16
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 4, 0, 128, 16, -26539, -7200, -18170, 0, 0, 0, 0, 0, 0, 450, 140, 10, 70, 5
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 4, 0, 128, 16, -27200, -7200, -19770, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 4, 0, 128, 16, -26200, -7200, -26000, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_17
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 4, 0, 10, 16, -17620, -7200, -13100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 4, 0, 10, 16, -19120, -7200, -13100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 4, 0, 10, 16, -20620, -7200, -13100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -18520, -13270, 1800, 1800, ITEM_HERBG, 1, 53, ID_OBJ_5, IF_FLOOR
    item_aot_set            ID_AOT_14, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -20020, -13270, 1800, 1800, ITEM_HERBG, 1, 173, ID_OBJ_6, IF_FLOOR
    item_aot_set            ID_AOT_15, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -21520, -13270, 1800, 1800, ITEM_HERBG, 1, 174, ID_OBJ_7, IF_FLOOR
    item_aot_set            ID_AOT_20, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -27517, -13973, 1800, 1800, ITEM_HANDGUNAMMO, 15, 176, ID_OBJ_255, IF_DEFAULT
    evt_end                 0

.proc main_18
    obj_model_set           ID_OBJ_11, 0, 0, 0, 0, 0, 0, 10, 16, -23700, -2050, -24220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_8, 0, 0, 0, 0, 0, 0, 10, 16, -15460, -2500, -21940, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_16, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16660, -23270, 2000, 2000, ITEM_FLAMEROUNDS, 6, 51, ID_OBJ_8, IF_DEFAULT
    item_aot_set            ID_AOT_19, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24817, -25173, 1800, 1800, ITEM_EXPLOSIVEROUNDS, 6, 175, ID_OBJ_11, IF_DEFAULT
    evt_end                 0

.proc main_19
    if                      0, off_2D32
    ck                      FG_COMMON, 124, 0
    aot_set                 ID_AOT_8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27290, -26109, 1920, 1500, ID_MSG_3, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_9, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -27290, -26109, 1920, 1500, 10, 0, ITEM_LIGHTER, 0, aot, 0
    work_set                WK_OBJECT, ID_OBJ_11
    nop
    pos_set                 0, -32000, -32000, -32000
    else                    0, off_2D42

off_2D32:
    cut_be_set              4, 2, 0
    cut_be_set              12, 1, 0
    cut_replace             4, 8
    cut_replace             5, 9
    nop
    nop

off_2D42:
    if                      0, off_2D82
    ck                      FG_COMMON, 125, 0
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14050, -17650, 1680, 1180, ID_MSG_3, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_11, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -14050, -17650, 1680, 1180, 10, 0, ITEM_LIGHTER, 0, aot, 0
    work_set                WK_OBJECT, ID_OBJ_8
    nop
    pos_set                 0, -32000, -32000, -32000
    else                    0, off_2D9A

off_2D82:
    cut_be_set              7, 2, 0
    cut_be_set              13, 1, 0
    cut_be_set              13, 2, 0
    cut_be_set              13, 3, 0
    cut_replace             6, 10
    cut_replace             7, 11
    nop
    nop

off_2D9A:
    if                      0, off_2DD6
    ck                      FG_COMMON, 124, 0
    aot_set                 ID_AOT_25, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23925, -24951, 1800, 9660, ID_MSG_4, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_26, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24817, -25173, 1800, 1800, ID_MSG_4, 0, 0, 0, 255, 255
    aot_reset               ID_AOT_19, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 24, 0, 6, 0, 54, 0
    endif
    nop

off_2DD6:
    if                      0, off_2E26
    ck                      FG_COMMON, 125, 0
    aot_set                 ID_AOT_27, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23025, -24951, 1800, 9660, ID_MSG_4, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21725, -23051, 9200, 1800, ID_MSG_4, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14925, -16351, 1800, 4300, ID_MSG_4, 0, 0, 0, 255, 255
    aot_reset               ID_AOT_16, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 25, 0, 6, 0, 51, 0
    endif
    nop

off_2E26:
    evt_end                 0
