.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -6921, -6976, 1100, 1800, -1630, -1800, -8424, 280, 3, 16, 0, 1, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 9179, -1776, 1100, 2300, -26597, 0, -25166, 0, 3, 11, 3, 0, 22, 4, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_4, SCE_STATUS, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_21E6
    ck                      FG_STATUS, F_PLAYER, 0
    if                      0, off_21DC
    ck                      FG_COMMON, 31, 0
    set                     FG_RBJ_SET, 0, 1
    rbj_reset
    nop
    else                    0, off_21E4

off_21DC:
    set                     FG_RBJ_SET, 1, 1
    rbj_reset
    nop
    nop
    nop

off_21E4:
    endif
    nop

off_21E6:
    obj_model_set           ID_OBJ_0, 1, 130, 4, 4, 0, 4, 10, 26, -11200, -1820, -3150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 0, 9710, -15750, 1015, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_227A
    ck                      FG_STATUS, F_PLAYER, 0
    obj_model_set           ID_OBJ_8, 0, 0, 0, 0, 0, 0, 10, 16, -10982, -11750, 1231, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -11982, 681, 1800, 1800, ITEM_SEWERMANAGERDIARY, 1, 183, ID_OBJ_8, IF_DEFAULT
    else                    0, off_22B8

off_227A:
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 16, -10982, -11750, 1231, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -11982, 681, 1800, 1800, ITEM_SEWERMANAGERDIARY, 1, 183, ID_OBJ_5, IF_DEFAULT
    nop
    nop

off_22B8:
    if                      0, off_2300
    ck                      FG_STATUS, F_PLAYER, 0
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 0, 0, 10, 16, -9174, -10800, -1422, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -10482, -2119, 1800, 1800, ITEM_EAGLEMEDAL, 1, 184, ID_OBJ_7, IF_FLOOR
    else                    0, off_233E

off_2300:
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -9174, -10800, -1422, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -10482, -2119, 1800, 1800, ITEM_EAGLEMEDAL, 1, 184, ID_OBJ_4, IF_FLOOR
    nop
    nop

off_233E:
    evt_end                 0

.main
.proc main
    aot_set                 ID_AOT_3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 4, 0, 9669, 3786, 1800, 2000, 10, 0, ITEM_VALVEHANDLE, 0, aot, 0
    if                      0, off_238C
    ck                      FG_COMMON, 30, 0
    cut_be_set              0, 2, 0
    sca_id_set              0, 0, 0
    sca_id_set              25, 16, 252
    else                    0, off_239A

off_238C:
    cut_be_set              0, 2, 1
    sca_id_set              0, 0, 222
    sca_id_set              25, 0, 0
    nop
    nop

off_239A:
    if                      0, off_23E0
    ck                      FG_STATUS, 3, 1
    if                      0, off_23C6
    cmp                     0, V_LAST_RDT, CMP_EQ, 1040
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 4, SBK_32, 0, 255, -4679, -7200, -5074, 0, 0, 0
    else                    0, off_23DE

off_23C6:
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 4, SBK_32, 0, 255, 8123, -7200, -1147, 2880, 0, 0
    nop
    nop

off_23DE:
    endif
    nop

off_23E0:
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 0, 20000, 20000, 2000, 1024, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_2424
    ck                      FG_COMMON, 32, 0
    aot_reset               ID_AOT_1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_35, 0, 0, 0, 0, 255
    set                     FG_ROOM, 4, 1
    evt_exec                255, I_GOSUB, main_04
    else                    0, off_2442

off_2424:
    aot_reset               ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0F, 0, 0
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_ROOM, 4, 1
    evt_exec                255, I_GOSUB, main_05
    nop
    nop

off_2442:
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0E, 0, 0
    evt_exec                255, I_GOSUB, main_03
    evt_exec                255, I_GOSUB, main_0D
    gosub                   main_02
    evt_end                 0

.proc aot
    if                      0, off_2468
    cmp                     0, V_USED_ITEM, CMP_EQ, 50
    evt_exec                255, I_GOSUB, main_06
    endif
    nop

off_2468:
    evt_end                 0

.proc main_02
    aot_set                 ID_AOT_26, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -12533, -1908, 1977, 5600, ID_MSG_33, 0, 0, 0, 0, 255
    aot_set_4p              27, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, -10983, -3048, -10093, -288, -7773, 1762, -8733, -848, 34, 0, 0, 0, 0, 255
    aot_set                 ID_AOT_28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 9669, 3786, 1800, 2000, ID_MSG_36, 0, 0, 0, 0, 255
    if                      0, off_24CC
    ck                      FG_COMMON, 30, 1
    aot_set                 ID_AOT_29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -483, -628, 2577, 1500, ID_MSG_37, 0, 0, 0, 0, 255
    endif
    nop

off_24CC:
    evt_end                 0

.proc main_03

off_24CE:
    switch                  26, off_2546
    case                    0, off_24D8, 0

off_24D8:
    case                    0, off_24DE, 1

off_24DE:
    case                    0, off_24E4, 2

off_24E4:
    case                    0, off_24EA, 3

off_24EA:
    case                    0, off_24F0, 6

off_24F0:
    case                    0, off_24F6, 7

off_24F6:
    case                    0, off_24FC, 8

off_24FC:
    case                    0, off_2502, 9

off_2502:
    case                    0, off_2508, 10

off_2508:
    case                    0, off_250E, 11

off_250E:
    case                    0, off_2514, 12

off_2514:
    case                    0, off_251A, 13

off_251A:
    case                    0, off_2528, 14
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 51, 65
    break                   0

off_2528:
    case                    0, off_2536, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 41, 65
    break                   0

off_2536:
    case                    0, off_2544, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 31, 65
    break                   0

off_2544:
    eswitch                 0

off_2546:
    if                      0, off_260A
    ck                      FG_COMMON, 32, 0
    switch                  26, off_2606
    case                    0, off_2558, 0

off_2558:
    case                    0, off_2566, 7
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 51, 65
    break                   0

off_2566:
    case                    0, off_256C, 1

off_256C:
    case                    0, off_257A, 8
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 71, 56
    break                   0

off_257A:
    case                    0, off_2588, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 71, 91
    break                   0

off_2588:
    case                    0, off_2596, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 71, 71
    break                   0

off_2596:
    case                    0, off_25A4, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 51, 65
    break                   0

off_25A4:
    case                    0, off_25B2, 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 41, 41
    break                   0

off_25B2:
    case                    0, off_25C0, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 61, 91
    break                   0

off_25C0:
    case                    0, off_25CE, 9
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 61, 41
    break                   0

off_25CE:
    case                    0, off_25DC, 10
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 61, 101
    break                   0

off_25DC:
    case                    0, off_25EA, 11
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 51, 41
    break                   0

off_25EA:
    case                    0, off_25F0, 12

off_25F0:
    case                    0, off_25F6, 13

off_25F6:
    case                    0, off_2604, 14
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 61, 101
    break                   0

off_2604:
    eswitch                 0

off_2606:
    else                    0, off_2612

off_260A:
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    nop
    nop

off_2612:
    do                      0, off_261E
    evt_next
    nop
    edwhile                 off_261E
    ck                      FG_STATUS, 11, 0

off_261E:
    goto                    255, 255, 0, off_24CE
    evt_end                 0

.proc main_04
    gosub                   main_08
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    while                   4, off_2654
    ck                      FG_ROOM, 4, 1
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 800
    member_set2             M_X_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    member_set2             M_X_DIR, V_TEMP
    nop
    evt_next
    nop
    ewhile                  0

off_2654:
    evt_end                 0

.proc main_05
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 64
    gosub                   main_09
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    while                   4, off_268A
    ck                      FG_ROOM, 4, 1
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 6
    member_set2             M_X_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    member_set2             M_X_DIR, V_TEMP
    nop
    evt_next
    nop
    ewhile                  0

off_268A:
    evt_end                 0

.proc main_06
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_COMMON, 32, 1
    set                     FG_ROOM, 10, 0
    set                     FG_ROOM, 11, 0
    set                     FG_ROOM, 4, 0
    nop_8c                  0, 90, 110, 12, 0, 80, 0
    nop_8c                  0, 90, 110, 12, 0, 120, 0
    evt_exec                255, I_GOSUB, main_0B
    evt_exec                255, I_GOSUB, main_0A
    evt_exec                255, I_GOSUB, main_07
    while                   4, off_26CC
    ck                      FG_ROOM, 3, 0
    evt_next
    nop
    ewhile                  0

off_26CC:
    aot_reset               ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0F, 0, 0
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sleep                   10, 30
    set                     FG_ROOM, 3, 0
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    aot_on                  ID_AOT_4
    evt_next
    set                     FG_ROOM, 11, 1
    nop
    evt_end                 0

.proc main_07
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    for                     0, off_2724, 50
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 800
    member_set2             M_X_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    member_set2             M_X_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2724:
    speed_set               3, -800
    speed_set               9, 40
    for                     0, off_2750, 4
    for                     0, off_274C, 10
    add_speed
    nop
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    member_set2             M_X_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_274C:
    add_aspeed
    nop
    next                    0

off_2750:
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_STOP, BGM_TYPE_PROG0_VOL, 1, 64
    for                     0, off_2770, 10
    add_speed
    nop
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    member_set2             M_X_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2770:
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_PROG0_VOL, 80, 64
    for                     0, off_279A, 14
    for                     0, off_2796, 10
    add_speed
    nop
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    member_set2             M_X_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2796:
    add_aspeed
    nop
    next                    0

off_279A:
    speed_set               3, -20
    speed_set               9, 1
    for                     0, off_27C6, 14
    for                     0, off_27C2, 2
    add_speed
    nop
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    member_set2             M_X_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_27C2:
    add_aspeed
    nop
    next                    0

off_27C6:
    set                     FG_ROOM, 4, 1
    evt_exec                255, I_GOSUB, main_05
    set                     FG_ROOM, 3, 1
    evt_end                 0

.proc main_08
    if                      0, off_27E4
    ck                      FG_ROOM, 9, 1
    sce_espr_kill           22, 20, 0, 0
    evt_next
    endif
    nop

off_27E4:
    set                     FG_ROOM, 9, 1
    sce_espr3d_on           0, 1046, 0, 4096, 9600, -9450, 5010, 0, 1024, 0, 0
    evt_end                 0

.proc main_09
    if                      0, off_2810
    ck                      FG_ROOM, 9, 1
    sce_espr_kill           22, 4, 0, 0
    evt_next
    endif
    nop

off_2810:
    set                     FG_ROOM, 9, 1
    sce_espr3d_on           0, 5142, 0, 4096, 9600, -9450, 5010, 0, 1024, 0, 0
    evt_end                 0

.proc main_0A
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2848
    ck                      FG_STATUS, F_PLAYER, 1
    pos_set                 0, 9187, -7200, 4704
    member_set              M_Y_DIR, 0
    else                    0, off_2856

off_2848:
    pos_set                 0, 11305, -7200, 4649
    member_set              M_Y_DIR, 0
    nop
    nop

off_2856:
    sleep                   10, 20
    if                      0, off_286A
    ck                      FG_STATUS, F_PLAYER, 1
    plc_motion              0, 15, 0
    else                    0, off_2870

off_286A:
    plc_motion              0, 15, 1
    nop
    nop

off_2870:
    sleep                   10, 30
    if                      0, off_2884
    ck                      FG_STATUS, F_PLAYER, 1
    plc_motion              0, 16, 0
    else                    0, off_288A

off_2884:
    plc_motion              0, 16, 1
    nop
    nop

off_288A:
    sleep                   10, 28
    se_on                   2, 266, 1, 0, 0, 0
    sleep                   10, 22
    if                      0, off_28AE
    ck                      FG_STATUS, F_PLAYER, 1
    plc_motion              0, 17, 0
    else                    0, off_28B4

off_28AE:
    plc_motion              0, 17, 1
    nop
    nop

off_28B4:
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
    set                     FG_ROOM, 10, 1
    plc_ret
    nop
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    pos_set                 0, 10067, -9000, 4699
    sleep                   10, 20
    sleep                   10, 30
    speed_set               3, 0
    speed_set               9, 1
    for                     0, off_2910, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2910:
    speed_set               3, 10
    speed_set               9, 1
    for                     0, off_2926, 5
    add_speed
    evt_next
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2926:
    speed_set               9, 2
    for                     0, off_2936, 23
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2936:
    speed_set               9, -10
    for                     0, off_2946, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2946:
    while                   4, off_2978
    ck                      FG_ROOM, 10, 1
    sleep                   10, 17
    speed_set               3, 32
    speed_set               9, 2
    for                     0, off_2966, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2966:
    speed_set               9, -8
    for                     0, off_2976, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2976:
    ewhile                  0

off_2978:
    while                   4, off_2984
    ck                      FG_ROOM, 11, 0
    evt_next
    nop
    ewhile                  0

off_2984:
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_0C
    evt_next

off_298F:
    work_set                WK_OBJECT, ID_OBJ_1
    if                      0, off_29A8
    cmp                     0, V_CUT, CMP_EQ, 0
    pos_set                 0, -2000, -1620, -20200
    else                    0, off_29CA

off_29A8:
    if                      0, off_29BE
    cmp                     0, V_CUT, CMP_EQ, 7
    pos_set                 0, -2000, -1620, -20200
    else                    0, off_29C8

off_29BE:
    pos_set                 0, 20000, 20000, 20000
    nop
    nop

off_29C8:
    nop
    nop

off_29CA:
    evt_next
    nop
    while                   4, off_29D8
    ck                      FG_STATUS, 11, 0
    evt_next
    nop
    ewhile                  0

off_29D8:
    goto                    255, 255, 0, off_298F
    evt_end                 0

.proc main_0D
    evt_next

off_29E1:
    work_set                WK_OBJECT, ID_OBJ_0
    switch                  26, off_2A16
    case                    0, off_29EE, 0

off_29EE:
    case                    0, off_29F4, 7

off_29F4:
    case                    0, off_2A00, 9
    member_set              M_Z_POS, 20000
    break                   0

off_2A00:
    case                    0, off_2A0C, 13
    member_set              M_Z_POS, -6350
    break                   0

off_2A0C:
    default                 0
    member_set              M_Z_POS, -3150
    break                   0
    eswitch                 0

off_2A16:
    evt_next
    nop
    while                   4, off_2A24
    ck                      FG_STATUS, 11, 0
    evt_next
    nop
    ewhile                  0

off_2A24:
    goto                    255, 255, 0, off_29E1
    evt_end                 0

.proc main_0E
    message_on              0, ID_MSG_40, 0, 0, 255
    evt_next
    nop
    if                      0, off_2A64
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    aot_reset               ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 162, 249, 248, 248, 24, 223
    aot_on                  ID_AOT_0
    evt_next
    nop
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0E, 0, 0
    else                    0, off_2A72

off_2A64:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_2A72:
    evt_end                 0

.proc main_0F
    message_on              0, ID_MSG_41, 0, 0, 255
    evt_next
    nop
    if                      0, off_2AAC
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    aot_reset               ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 27, 152, 0, 0, 178, 157
    aot_on                  ID_AOT_1
    evt_next
    nop
    aot_reset               ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0F, 0, 0
    else                    0, off_2ABA

off_2AAC:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_2ABA:
    evt_end                 0
