.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -21317, -24673, 1920, 1530, -25725, -1800, -9600, 1024, 3, 2, 4, 1, 6, 0, 0, 0, UNLOCKED, 0
    door_aot_se             4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 1, 1, -27830, 0, -18600, 0, 3, 3, 4, 0, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 1, 1, -27830, 0, -18600, 0, 3, 3, 8, 0, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             6, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, -28000, -7200, -18550, 0, 3, 3, 2, 4, 22, 4, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 4, 0, -27119, -27068, 1700, 1830, -12470, 0, -830, 1024, 3, 4, 2, 0, 40, 5, 0, 0, UNLOCKED, 0
    obj_model_set           0, 0, 0, 0, 0, 4, 0, 10, 16, -12850, -8700, -13700, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 2, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -14475, -15052, 3810, 2390, 0, 0, 1, 0, 0, 0
    aot_set                 13, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -14535, -16910, 2200, 1500, 6, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2450
    member_cmp              0, 17, 0, 4, 0
    gosub                   main_1A
    gosub                   main_19
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -30061, -21132, 2370, 1800, 255, 0, I_GOSUB, main_02, 0, 0
    aot_set                 12, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -28961, -19832, 2370, 2800, 255, 0, I_GOSUB, main_08, 0, 0
    aot_set                 30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -23117, -26973, 1800, 2800, 7, 0, 0, 0, 255, 255
    aot_set                 31, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -15135, -23211, 1800, 6300, 5, 0, 0, 0, 255, 255
    if                      0, off_23A4
    ck                      FG_GAME, 3, 1
    gosub                   main_13
    if                      0, off_237C
    ck                      FG_GENERAL_1, 62, 0
    aot_reset               1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_UNDER, 26, 208, 0, 0, 184, 251
    aot_set                 9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_UNDER, 4, 0, -27119, -27068, 1700, 1830, 255, 0, I_GOSUB, main_12, 0, 0
    else                    0, off_23A0

off_237C:
    if                      0, off_239E
    ck                      FG_GENERAL_1, 52, 1
    ck                      FG_GENERAL_1, 77, 0
    aot_set                 9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -27119, -27068, 1900, 1930, 255, 0, I_GOSUB, main_07, 0, 0
    endif
    nop

off_239E:
    nop
    nop

off_23A0:
    else                    0, off_23EC

off_23A4:
    if                      0, off_23BA
    ck                      FG_GENERAL_1, 77, 0
    ck                      FG_GENERAL_1, 52, 1
    gosub                   main_13
    set                     FG_GAME, 3, 1
    else                    0, off_23EA

off_23BA:
    if                      0, off_23E8
    ck                      FG_GENERAL_1, 62, 0
    gosub                   main_13
    set                     FG_GAME, 3, 1
    aot_reset               1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_UNDER, 26, 208, 0, 0, 184, 251
    aot_set                 9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_UNDER, 4, 0, -27119, -27068, 1900, 1930, 255, 0, I_GOSUB, main_12, 0, 0
    endif
    nop

off_23E8:
    nop
    nop

off_23EA:
    nop
    nop

off_23EC:
    if                      0, off_23FC
    cmp                     0, V_LAST_RDT, CMP_EQ, 1028
    evt_exec                255, I_GOSUB, main_09
    endif
    nop

off_23FC:
    if                      0, off_240E
    ck                      FG_GENERAL_1, 161, 1
    work_set                WK_OBJECT, 2
    nop
    member_set              13, 156, 195
    endif
    nop

off_240E:
    if                      0, off_2420
    ck                      FG_GENERAL_1, 162, 1
    work_set                WK_OBJECT, 2
    nop
    member_set              13, 188, 173
    endif
    nop

off_2420:
    if                      0, off_2444
    ck                      FG_GENERAL_1, 163, 1
    sca_id_set              20, 0, 24
    aot_reset               12, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -32000, -32000, -32000
    endif
    nop

off_2444:
    set                     FG_9, 133, 1
    set                     35, 7, 1
    else                    0, off_247C

off_2450:
    gosub                   main_1B
    gosub                   main_1C
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -30061, -21132, 2370, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    sca_id_set              20, 0, 24
    set                     FG_9, 134, 1
    set                     35, 8, 1
    sce_bgm_control         0, 2, 0, 0, 0
    nop
    nop

off_247C:
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
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    if                      0, off_24C6
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_STATE, 7, 1
    cut_auto                0
    if                      0, off_24BA
    ck                      FG_GENERAL_1, 124, 0
    aot_on                  4
    else                    0, off_24BE

off_24BA:
    aot_on                  5
    nop
    nop

off_24BE:
    cut_auto                1
    set                     FG_STATE, 7, 0
    endif
    nop

off_24C6:
    evt_end                 0

.proc main_03
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    if                      0, off_24E8
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_STATE, 7, 1
    cut_auto                0
    aot_on                  6
    cut_auto                1
    set                     FG_STATE, 7, 0
    endif
    nop

off_24E8:
    evt_end                 0

.proc main_04
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_24FE
    member_cmp              0, 11, 3, 224, 177
    gosub                   main_14
    else                    0, off_2502

off_24FE:
    gosub                   main_15
    nop
    nop

off_2502:
    evt_end                 0

.proc main_05
    work_set                WK_OBJECT, 2
    nop
    if                      0, off_251E
    member_cmp              0, 13, 3, 168, 178
    set                     FG_GENERAL_1, 162, 1
    sca_id_set              27, 0, 0
    else                    0, off_2544

off_251E:
    if                      0, off_2534
    member_cmp              0, 13, 1, 164, 187
    set                     FG_GENERAL_1, 161, 1
    sca_id_set              27, 0, 0
    else                    0, off_2542

off_2534:
    set                     FG_GENERAL_1, 161, 0
    set                     FG_GENERAL_1, 162, 0
    sca_id_set              27, 0, 152
    nop
    nop

off_2542:
    nop
    nop

off_2544:
    if                      0, off_2574
    ck                      FG_GENERAL_1, 163, 0
    if                      0, off_2566
    ck                      FG_GENERAL_1, 161, 0
    ck                      FG_GENERAL_1, 162, 0
    aot_reset               12, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    else                    0, off_2572

off_2566:
    aot_reset               12, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_08, 0, 0
    nop
    nop

off_2572:
    endif
    nop

off_2574:
    evt_end                 0

.proc main_06
    set                     FG_GAME, 3, 0
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_FRONT, 98, 155, 248, 248, 146, 215
    aot_reset               8, SCE_AUTO, SAT_PL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_07
    set                     FG_GAME, 3, 1
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_UNDER, 26, 208, 0, 0, 184, 251
    evt_end                 0

.proc main_08
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    if                      0, off_263A
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    se_on                   2, 11, 0, -13500, -3300, -17100
    work_set                WK_OBJECT, 4
    nop
    speed_set               2, 20
    speed_set               0, -10
    speed_set               8, 1
    member_copy             V_TEMP, 11
    nop
    calc                    0, OP_SUB, V_TEMP, 100
    member_set2             11, V_TEMP
    nop
    nop_8c                  0, 80, 70, 43, 0, 0, 0
    nop_8b                  120, 5, 0, 43, 0
    while                   6, off_260C
    member_cmp              0, 13, 4, 2, 189
    if                      0, off_2608
    member_cmp              0, 2, 4, 40, 0
    add_aspeed
    nop
    endif
    nop

off_2608:
    add_speed
    evt_next
    ewhile                  0

off_260C:
    pos_set                 0, -32000, -32000, -32000
    sca_id_set              20, 0, 24
    aot_reset               12, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    set                     FG_GENERAL_1, 163, 1
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    endif
    nop

off_263A:
    evt_end                 0

.proc main_09
    set                     FG_STATE, 7, 1
    evt_exec                255, I_GOSUB, main_11
    se_on                   0, 1, 772, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0A
    evt_exec                255, I_GOSUB, main_0B
    if                      0, off_2666
    ck                      FG_GAME, 3, 1
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_2666:
    sleep                   10, 90
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_0A
    work_set                WK_OBJECT, 3
    nop
    member_set              12, 64, 237
    gosub                   main_0D
    evt_end                 0

.proc main_0B
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -25740, -4800, -25770
    member_set              15, 0, 0
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    gosub                   main_0D
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             0, V_TEMP
    nop
    evt_end                 0

.proc main_0C
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -26450, -4800, -26430
    member_set              15, 0, 0
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    gosub                   main_0D
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             0, V_TEMP
    nop
    evt_end                 0

.proc main_0D
    speed_set               1, -40
    for                     0, off_26EA, 10
    add_speed
    evt_next
    next                    0

off_26EA:
    speed_set               1, -35
    for                     0, off_26F8, 20
    add_speed
    evt_next
    next                    0

off_26F8:
    speed_set               1, -30
    for                     0, off_2706, 15
    add_speed
    evt_next
    next                    0

off_2706:
    speed_set               1, -25
    for                     0, off_2714, 15
    add_speed
    evt_next
    next                    0

off_2714:
    speed_set               1, -20
    for                     0, off_2722, 15
    add_speed
    evt_next
    next                    0

off_2722:
    speed_set               1, -15
    for                     0, off_2730, 10
    add_speed
    evt_next
    next                    0

off_2730:
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    member_set2             12, V_TEMP
    nop
    sleep                   10, 5
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 35
    member_set2             12, V_TEMP
    nop
    evt_end                 0

.proc main_0E
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_276A
    member_cmp              0, 17, 0, 0, 0
    sca_id_set              13, 0, 0
    gosub                   main_0F
    else                    0, off_2770

off_276A:
    sca_id_set              13, 128, 252
    nop
    nop

off_2770:
    evt_end                 0

.proc main_0F
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2A74
    member_cmp              0, 17, 0, 0, 0
    if                      0, off_2A62
    cmp                     0, V_07, CMP_EQ, 0
    sce_rnd
    nop
    copy                    V_TEMP, V_1D
    nop
    calc                    0, OP_AND, V_TEMP, 7
    copy                    V_06, V_TEMP
    nop
    if                      0, off_2A5A
    cmp                     0, V_06, CMP_EQ, 0
    sce_rnd
    nop
    copy                    V_TEMP, V_1D
    nop
    calc                    0, OP_MOD, V_TEMP, 40
    copy                    V_06, V_TEMP
    nop
    switch                  6, off_2A3A
    case                    0, off_27C8, 0
    save                    V_04, -14360
    save                    V_05, -20800
    break                   0

off_27C8:
    case                    0, off_27D8, 1
    save                    V_04, -19530
    save                    V_05, -21150
    break                   0

off_27D8:
    case                    0, off_27E8, 2
    save                    V_04, -14070
    save                    V_05, -17880
    break                   0

off_27E8:
    case                    0, off_27F8, 3
    save                    V_04, -16850
    save                    V_05, -18000
    break                   0

off_27F8:
    case                    0, off_2808, 4
    save                    V_04, -18890
    save                    V_05, -19400
    break                   0

off_2808:
    case                    0, off_2818, 5
    save                    V_04, -20100
    save                    V_05, -17820
    break                   0

off_2818:
    case                    0, off_2828, 6
    save                    V_04, -20330
    save                    V_05, -16040
    break                   0

off_2828:
    case                    0, off_2838, 7
    save                    V_04, -16900
    save                    V_05, -16040
    break                   0

off_2838:
    case                    0, off_2848, 8
    save                    V_04, -16680
    save                    V_05, -14370
    break                   0

off_2848:
    case                    0, off_2858, 9
    save                    V_04, -18650
    save                    V_05, -14890
    break                   0

off_2858:
    case                    0, off_2868, 10
    save                    V_04, -16630
    save                    V_05, -16200
    break                   0

off_2868:
    case                    0, off_2878, 11
    save                    V_04, -14940
    save                    V_05, -19090
    break                   0

off_2878:
    case                    0, off_2888, 12
    save                    V_04, -17200
    save                    V_05, -13800
    break                   0

off_2888:
    case                    0, off_2898, 13
    save                    V_04, -23760
    save                    V_05, -13350
    break                   0

off_2898:
    case                    0, off_28A8, 14
    save                    V_04, -22270
    save                    V_05, -14630
    break                   0

off_28A8:
    case                    0, off_28B8, 15
    save                    V_04, -20650
    save                    V_05, -13440
    break                   0

off_28B8:
    case                    0, off_28C8, 16
    save                    V_04, -19450
    save                    V_05, -14920
    break                   0

off_28C8:
    case                    0, off_28D8, 17
    save                    V_04, -24020
    save                    V_05, -14910
    break                   0

off_28D8:
    case                    0, off_28E8, 18
    save                    V_04, -26360
    save                    V_05, -17500
    break                   0

off_28E8:
    case                    0, off_28F8, 19
    save                    V_04, -24700
    save                    V_05, -16750
    break                   0

off_28F8:
    case                    0, off_2908, 20
    save                    V_04, -26180
    save                    V_05, -14860
    break                   0

off_2908:
    case                    0, off_2918, 21
    save                    V_04, -25270
    save                    V_05, -13900
    break                   0

off_2918:
    case                    0, off_2928, 22
    save                    V_04, -24910
    save                    V_05, -15700
    break                   0

off_2928:
    case                    0, off_2938, 23
    save                    V_04, -24100
    save                    V_05, -24900
    break                   0

off_2938:
    case                    0, off_2948, 24
    save                    V_04, -26000
    save                    V_05, -23000
    break                   0

off_2948:
    case                    0, off_2958, 25
    save                    V_04, -26300
    save                    V_05, -21500
    break                   0

off_2958:
    case                    0, off_2968, 26
    save                    V_04, -24810
    save                    V_05, -20960
    break                   0

off_2968:
    case                    0, off_2978, 27
    save                    V_04, -24150
    save                    V_05, -19740
    break                   0

off_2978:
    case                    0, off_2988, 28
    save                    V_04, -25170
    save                    V_05, -19170
    break                   0

off_2988:
    case                    0, off_2998, 29
    save                    V_04, -25470
    save                    V_05, -17730
    break                   0

off_2998:
    case                    0, off_29A8, 30
    save                    V_04, -24090
    save                    V_05, -19100
    break                   0

off_29A8:
    case                    0, off_29B8, 31
    save                    V_04, -16300
    save                    V_05, -19300
    break                   0

off_29B8:
    case                    0, off_29C8, 32
    save                    V_04, -19980
    save                    V_05, -16650
    break                   0

off_29C8:
    case                    0, off_29D8, 33
    save                    V_04, -14990
    save                    V_05, -15400
    break                   0

off_29D8:
    case                    0, off_29E8, 34
    save                    V_04, -20990
    save                    V_05, -18220
    break                   0

off_29E8:
    case                    0, off_29F8, 35
    save                    V_04, -17040
    save                    V_05, -19400
    break                   0

off_29F8:
    case                    0, off_2A08, 36
    save                    V_04, -17400
    save                    V_05, -14700
    break                   0

off_2A08:
    case                    0, off_2A18, 37
    save                    V_04, -19830
    save                    V_05, -17210
    break                   0

off_2A18:
    case                    0, off_2A28, 38
    save                    V_04, -18280
    save                    V_05, -14900
    break                   0

off_2A28:
    case                    0, off_2A38, 39
    save                    V_04, -24070
    save                    V_05, -14300
    break                   0

off_2A38:
    eswitch                 0

off_2A3A:
    work_copy               5, 16, 1
    work_copy               4, 8, 1
    sce_espr_on             0, 5376, 0, 4096, 0, -5680, 0, 0
    evt_exec                255, I_GOSUB, main_10
    break_point
    nop
    endif
    nop

off_2A5A:
    save                    V_07, 16
    else                    0, off_2A72

off_2A62:
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    nop
    nop

off_2A72:
    endif
    nop

off_2A74:
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
    save                    V_20, 14
    set                     FG_GAME, 3, 0
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_UNDER, 26, 208, 0, 0, 184, 251
    evt_end                 0

.proc main_13
    sce_em_set              0, 255, ENEMY_ADA_WONG_1, 0, 4, 4, 31, 0, 255, -21480, -7200, -22770, 3360, 0, 0
    aot_set                 8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -21317, -24673, 1920, 1530, 255, 0, I_GOSUB, main_06, 0, 0
    aot_reset               0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 98, 155, 248, 248, 146, 215
    evt_end                 0

.proc main_14
    if                      0, off_2B62
    ck                      FG_GENERAL_1, 124, 0
    cmp                     0, V_USED_ITEM, CMP_EQ, 47
    sce_fade_set            1, 2, 7, 0, 248
    cut_auto                0
    cut_be_set              4, 2, 0
    cut_be_set              12, 1, 0
    cut_chg                 8
    cut_replace             4, 8
    cut_replace             5, 9
    set                     FG_GENERAL_1, 124, 1
    evt_exec                255, I_GOSUB, main_16
    work_set                WK_OBJECT, 9
    nop
    pos_set                 0, -22825, -1900, -20900
    aot_reset               20, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 22, 0, 8, 0, 176, 0
    aot_reset               25, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 9, 0, 0, 0, 255, 255
    aot_reset               26, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               8, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               9, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    cut_auto                1
    endif
    nop

off_2B62:
    evt_end                 0

.proc main_15
    if                      0, off_2BE6
    ck                      FG_GENERAL_1, 125, 0
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
    set                     FG_GENERAL_1, 125, 1
    evt_exec                255, I_GOSUB, main_17
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, -15460, -2500, -21940
    aot_reset               19, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 21, 0, 7, 0, 175, 0
    aot_reset               27, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 9, 0, 0, 0, 255, 255
    aot_reset               29, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, 0, 0, 255, 255
    aot_reset               28, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               10, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               11, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    cut_auto                1
    endif
    nop

off_2BE6:
    evt_end                 0

.proc main_16
    se_on                   2, 10, 1, -26080, -3300, -25000
    sleep                   10, 10
    se_on                   2, 8, 1, -26080, -3300, -25000
    evt_end                 0

.proc main_17
    se_on                   2, 10, 1, -13500, -3300, -17100
    sleep                   10, 10
    se_on                   2, 8, 1, -13500, -3300, -17100
    evt_end                 0

.proc main_18
    se_on                   2, 40, 1, 0, 0, 0
    aot_on                  14
    sleep                   10, 2
    if                      0, off_2C4A
    ck                      FG_ITEM, 52, 1
    aot_reset               23, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2C4A:
    evt_end                 0

.proc main_19
    obj_model_set           5, 0, 0, 0, 0, 4, 0, 10, 16, -11575, -8460, -16405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           10, 0, 0, 0, 0, 0, 0, 10, 16, -20517, -8460, -16674, 0, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -14535, -16910, 2200, 1500, ITEM_INKRIBBON, 3, 51, 5, 0
    item_aot_set            14, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 1, 1, ITEM_FAIDSPRAY, 1, 52, 255, 0
    if                      0, off_2CE2
    ck                      FG_ITEM, 52, 0
    aot_set                 23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -23117, -26973, 1800, 2800, 255, 0, I_GOSUB, main_18, 0, 0
    endif
    nop

off_2CE2:
    item_aot_set            16, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -27517, -13973, 1800, 1800, ITEM_HANDGUNAMMO, 30, 173, 255, 0
    item_aot_set            21, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -21417, -16773, 1800, 1800, ITEM_7A, 1, 192, 10, 0
    evt_end                 0

.proc main_1A
    obj_model_set           2, 0, 0, 0, 0, 4, 0, 128, 16, -26539, -7200, -18170, 0, 0, 0, 0, 0, 0, 450, 140, 10, 70, 5
    obj_model_set           4, 0, 0, 0, 0, 4, 0, 10, 16, -27200, -7200, -19770, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 4, 0, 10, 16, -26200, -7200, -26000, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_1B
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 10, 16, -15460, -2500, -21940, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 16, -22825, -1900, -20900, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            19, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16660, -23270, 2000, 2000, ITEM_SHOTGUNAMMO, 7, 175, 8, 0
    item_aot_set            20, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23725, -22200, 1800, 1800, ITEM_MAGNUMAMMO, 8, 176, 9, 128
    evt_end                 0

.proc main_1C
    if                      0, off_2E3E
    ck                      FG_GENERAL_1, 124, 0
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27290, -26109, 1920, 1500, 3, 0, 0, 0, 255, 255
    aot_set                 9, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -27290, -26109, 1920, 1500, 10, 0, ITEM_LIGHTER, 0, aot, 0
    work_set                WK_OBJECT, 9
    nop
    pos_set                 0, -32000, -32000, -32000
    else                    0, off_2E4E

off_2E3E:
    cut_be_set              4, 2, 0
    cut_be_set              12, 1, 0
    cut_replace             4, 8
    cut_replace             5, 9
    nop
    nop

off_2E4E:
    if                      0, off_2E8E
    ck                      FG_GENERAL_1, 125, 0
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14050, -17650, 1680, 1180, 3, 0, 0, 0, 255, 255
    aot_set                 11, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -14050, -17650, 1680, 1180, 10, 0, ITEM_LIGHTER, 0, aot, 0
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, -32000, -32000, -32000
    else                    0, off_2EA6

off_2E8E:
    cut_be_set              7, 2, 0
    cut_be_set              13, 1, 0
    cut_be_set              13, 2, 0
    cut_be_set              13, 3, 0
    cut_replace             6, 10
    cut_replace             7, 11
    nop
    nop

off_2EA6:
    if                      0, off_2EE2
    ck                      FG_GENERAL_1, 124, 0
    aot_set                 25, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23925, -24951, 1800, 9660, 4, 0, 0, 0, 255, 255
    aot_set                 26, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24817, -25173, 1800, 1800, 4, 0, 0, 0, 255, 255
    aot_reset               20, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 22, 0, 8, 0, 176, 0
    endif
    nop

off_2EE2:
    if                      0, off_2F32
    ck                      FG_GENERAL_1, 125, 0
    aot_set                 27, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23025, -24951, 1800, 9660, 4, 0, 0, 0, 255, 255
    aot_set                 28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21725, -23051, 9200, 1800, 4, 0, 0, 0, 255, 255
    aot_set                 29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14925, -16351, 1800, 4300, 4, 0, 0, 0, 255, 255
    aot_reset               19, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 21, 0, 7, 0, 175, 0
    endif
    nop

off_2F32:
    evt_end                 0
