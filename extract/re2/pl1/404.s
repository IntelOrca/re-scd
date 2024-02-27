.version 2

.init
.proc init
    if                      0, off_0D3A
    ck                      FG_STATUS, F_SCENARIO, 1
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -13964, -27818, 3100, 2900, -15153, -7200, -14054, -2496, 3, 1, 2, 4, 40, 4, 0, 0, UNLOCKED, 0
    else                    0, off_0D66

off_0D3A:
    if                      0, off_0D64
    ck                      FG_STATUS, F_PLAYER, 1
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -13964, -27818, 3100, 2900, -15153, -7200, -14054, -2496, 3, 1, 2, 4, 40, 4, 0, 0, UNLOCKED, 0
    endif
    nop

off_0D64:
    nop
    nop

off_0D66:
    if                      0, off_0D92
    ck                      FG_STATUS, F_SCENARIO, 1
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -13810, -410, 3400, 3730, -25717, -7200, -24522, 3416, 3, 3, 3, 4, 40, 4, 0, 0, UNLOCKED, 0
    else                    0, off_0DBE

off_0D92:
    if                      0, off_0DBC
    ck                      FG_STATUS, F_PLAYER, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -13810, -410, 3400, 3730, -25717, -7200, -24522, 3416, 3, 3, 3, 4, 40, 4, 0, 0, UNLOCKED, 0
    endif
    nop

off_0DBC:
    nop
    nop

off_0DBE:
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28293, -11634, 1800, 2800, -10014, -1800, -14098, 2048, 3, 5, 6, 1, 35, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    set                     FG_COMMON, 32, 0
    gosub                   main_06
    gosub                   main_04
    gosub                   main_02
    gosub                   main_13
    gosub                   main_03
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    if                      0, off_0E88
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_0E84
    ck                      FG_COMMON, 31, 0
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13845, -13798, 1500, 1740, 255, 0, I_GOSUB, main_12, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_LEON_KENNEDY_RPD, 0, AI_01, 0, SBK_0, 0, 255, -13033, 250, -12848, 0, 273, 20
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    if                      0, off_0E82
    ck                      FG_COMMON, 62, 0
    set                     FG_COMMON, 62, 1
    evt_exec                255, I_GOSUB, main_11
    endif
    nop

off_0E82:
    endif
    nop

off_0E84:
    else                    0, off_0E8E

off_0E88:
    set                     FG_COMMON, 62, 1
    nop
    nop

off_0E8E:
    evt_end                 0

.proc main_03
    if                      0, off_0EA0
    cmp                     0, V_LAST_RDT, CMP_EQ, 1027
    evt_exec                255, I_GOSUB, main_07
    endif
    nop

off_0EA0:
    if                      0, off_0EB0
    cmp                     0, V_LAST_RDT, CMP_EQ, 1025
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_0EB0:
    evt_end                 0

.proc main_04
    if                      0, off_0EF6
    ck                      FG_ITEM, 162, 0
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23641, -12378, 1300, 1140, 255, 0, I_GOSUB, main_05, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -22814, -2350, -11768, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0EF6:
    evt_end                 0

.proc main_05
    message_on              0, ID_MSG_10, 0, 255, 255
    evt_next
    nop
    if                      0, off_0F34
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_ITEM, 162, 1
    set                     FG_MAP_I, 7, 1
    set                     FG_MAP_I, 8, 1
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, 0, 0, 0
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_11, 0, 255, 255
    evt_next
    nop
    endif
    nop

off_0F34:
    evt_end                 0

.proc main_06
    if                      0, off_0F68
    ck                      FG_STATUS, F_SCENARIO, 1
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 4, 0, 2, 16, -12170, 0, 830, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0F9A

off_0F68:
    if                      0, off_0F98
    ck                      FG_STATUS, F_PLAYER, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 4, 0, 2, 16, -12170, 0, 830, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0F98:
    nop
    nop

off_0F9A:
    if                      0, off_0FCC
    ck                      FG_STATUS, F_SCENARIO, 1
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 4, 0, 2, 16, -12220, 0, -26273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0FFE

off_0FCC:
    if                      0, off_0FFC
    ck                      FG_STATUS, F_PLAYER, 1
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 4, 0, 2, 16, -12220, 0, -26273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0FFC:
    nop
    nop

off_0FFE:
    evt_end                 0

.proc main_07
    set                     FG_STOP, 7, 1
    evt_exec                255, I_GOSUB, main_0B
    evt_exec                255, I_GOSUB, main_08
    evt_exec                255, I_GOSUB, main_09
    if                      0, off_1020
    ck                      FG_STATUS, 3, 1
    evt_exec                255, I_GOSUB, main_0A
    else                    0, off_103A

off_1020:
    if                      0, off_1038
    ck                      FG_STATUS, F_PLAYER, 0
    if                      0, off_1036
    ck                      FG_COMMON, 62, 0
    evt_exec                255, I_GOSUB, main_0A
    endif
    nop

off_1036:
    endif
    nop

off_1038:
    nop
    nop

off_103A:
    gosub                   main_15
    sleep                   10, 5
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -2400
    gosub                   main_10
    evt_end                 0

.proc main_09
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    pos_set                 0, -12455, -2400, 355
    member_set              M_Y_DIR, 840
    gosub                   main_10
    if                      0, off_108A
    ck                      FG_ROOM, 1, 1
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_SUB, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    endif
    nop

off_108A:
    evt_end                 0

.proc main_0A
    work_set                WK_SPLAYER, 0
    nop
    if                      0, off_10A8
    ck                      FG_STATUS, F_PLAYER, 0
    if                      0, off_10A6
    ck                      FG_COMMON, 62, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    endif
    nop

off_10A6:
    endif
    nop

off_10A8:
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    pos_set                 0, -11762, -2400, 952
    member_set              M_Y_DIR, 1096
    gosub                   main_10
    if                      0, off_10DC
    ck                      FG_ROOM, 1, 1
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_SUB, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    endif
    nop

off_10DC:
    evt_end                 0

.proc main_0B
    evt_next
    nop
    nop_8b                  100, 90, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 87, 0
    nop_8a                  0, 3, 0, 85, 0
    evt_end                 0

.proc main_0C
    set                     FG_STOP, 7, 1
    evt_exec                255, I_GOSUB, main_0B
    evt_exec                255, I_GOSUB, main_0D
    evt_exec                255, I_GOSUB, main_0E
    if                      0, off_1114
    ck                      FG_STATUS, 3, 1
    evt_exec                255, I_GOSUB, main_0F
    endif
    nop

off_1114:
    gosub                   main_15
    sleep                   10, 5
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0D
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -2400
    gosub                   main_10
    evt_end                 0

.proc main_0E
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    pos_set                 0, -11738, -2400, -26035
    member_set              M_Y_DIR, 2891
    gosub                   main_10
    if                      0, off_1164
    ck                      FG_ROOM, 1, 1
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_SUB, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    endif
    nop

off_1164:
    evt_end                 0

.proc main_0F
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    pos_set                 0, -12501, -2400, -26478
    member_set              M_Y_DIR, 3179
    gosub                   main_10
    if                      0, off_119E
    ck                      FG_ROOM, 1, 1
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_SUB, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    endif
    nop

off_119E:
    evt_end                 0

.proc main_10
    speed_set               0, 0
    speed_set               2, 0
    speed_set               1, 40
    for                     0, off_11B6, 2
    add_speed
    evt_next
    next                    0

off_11B6:
    se_on                   0, 1, 0, 0, 0, 0
    for                     0, off_11CC, 8
    add_speed
    evt_next
    next                    0

off_11CC:
    speed_set               1, 35
    for                     0, off_11DA, 20
    add_speed
    evt_next
    next                    0

off_11DA:
    speed_set               1, 30
    for                     0, off_11E8, 15
    add_speed
    evt_next
    next                    0

off_11E8:
    speed_set               1, 25
    for                     0, off_11F6, 15
    add_speed
    evt_next
    next                    0

off_11F6:
    speed_set               1, 20
    for                     0, off_1204, 15
    add_speed
    evt_next
    next                    0

off_1204:
    speed_set               1, 15
    for                     0, off_1212, 10
    add_speed
    evt_next
    next                    0

off_1212:
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 10
    member_set2             M_Y_POS, V_TEMP
    nop
    sleep                   10, 5
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 35
    member_set2             M_Y_POS, V_TEMP
    nop
    set                     FG_ROOM, 1, 1
    evt_end                 0

.proc main_11
    gosub                   main_15
    cut_chg                 4
    set                     FG_STOP, 7, 1
    sleep                   10, 10
    set                     FG_STATUS, 27, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 500
    copy                    V_04, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 1000
    copy                    V_05, V_TEMP
    nop
    plc_motion              0, 17, 20
    work_set                WK_PLAYER, 0
    plc_motion              2, 9, 16
    nop
    sleep                   10, 10
    plc_neck                4, 2, 0, 0, 80, 80
    plc_motion              2, 9, 144
    sleep                   10, 4
    work_set                WK_PLAYER, 0
    nop
    work_copy               5, 10, 1
    work_copy               4, 4, 1
    plc_dest                0, 5, 35, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 500
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 1000
    copy                    V_05, V_TEMP
    nop
    gosub                   main_14
    cut_chg                 10
    evt_next
    nop
    xa_on                   0, 5
    sleep                   10, 2
    message_on              0, ID_MSG_2, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 30
    plc_neck                2, 0, 0, -64, 50, 50
    plc_motion              0, 16, 0
    sleep                   10, 30
    plc_motion              0, 16, 128
    plc_cnt                 0
    sleep                   10, 30
    plc_motion              0, 18, 20
    plc_neck                2, 0, -256, -256, 50, 50
    wsleep
    wsleeping
    xa_on                   0, 6
    sleep                   10, 2
    message_on              0, ID_MSG_3, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                2, 0, -512, 512, 35, 20
    sleep                   10, 40
    plc_neck                2, 0, 512, 512, 35, 30
    sleep                   10, 15
    plc_neck                2, 0, 128, 0, 35, 30
    sleep                   10, 30
    plc_motion              0, 16, 0
    sleep                   10, 40
    plc_motion              0, 16, 128
    plc_cnt                 37
    plc_neck                2, 0, 128, 128, 35, 30
    sleep                   10, 30
    plc_motion              0, 16, 16
    sleep                   10, 30
    plc_motion              0, 16, 144
    plc_cnt                 62
    sleep                   10, 30
    wsleep
    wsleeping
    xa_on                   0, 7
    sleep                   10, 2
    message_on              0, ID_MSG_4, 0, 0, 0
    plc_motion              0, 16, 0
    sleep                   10, 30
    plc_stop
    nop
    sleep                   10, 20
    plc_neck                2, 0, 128, 0, 25, 20
    plc_motion              0, 16, 128
    plc_cnt                 47
    sleep                   10, 30
    plc_motion              0, 16, 16
    sleep                   10, 60
    plc_neck                2, 0, 0, 128, 22, 22
    plc_motion              0, 16, 136
    plc_cnt                 47
    sleep                   10, 60
    plc_neck                2, 0, 128, -128, 32, 32
    plc_motion              0, 16, 0
    sleep                   10, 30
    plc_neck                2, 0, 0, 128, 12, 12
    plc_motion              0, 16, 128
    plc_cnt                 47
    wsleep
    wsleeping
    xa_on                   0, 8
    sleep                   10, 2
    message_on              0, ID_MSG_5, 0, 0, 0
    plc_motion              0, 16, 16
    sleep                   10, 40
    plc_neck                3, 1, 0, 0, 32, 32
    wsleep
    wsleeping
    xa_on                   0, 9
    sleep                   10, 2
    message_on              0, ID_MSG_6, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    work_copy               5, 10, 1
    work_copy               4, 2, 1
    plc_neck                1, 0, -1500, 0, 20, 60
    plc_motion              0, 15, 0
    sleep                   10, 15
    plc_motion              0, 15, 128
    plc_cnt                 4
    wsleep
    wsleeping
    xa_on                   0, 10
    sleep                   10, 2
    message_on              0, ID_MSG_7, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                2, 0, -512, 0, 40, 40
    sleep                   10, 8
    plc_neck                2, 0, 512, 0, 40, 40
    sleep                   10, 8
    plc_neck                2, 0, 0, 0, 40, 40
    sleep                   10, 20
    plc_motion              0, 16, 0
    plc_neck                2, 0, 0, -128, 40, 40
    sleep                   10, 8
    plc_neck                2, 0, 0, 512, 40, 40
    sleep                   10, 15
    plc_neck                2, 0, 0, 0, 40, 40
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    plc_neck                3, 1, 0, 0, 50, 80
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 17, 20
    nop
    plc_neck                2, 0, 0, 128, 20, 20
    sleep                   10, 40
    cut_chg                 4
    cut_auto                1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    plc_neck                6, 0, 0, 0, 80, 80
    sleep                   10, 20
    set                     FG_COMMON, 68, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_12
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    sleep                   10, 10
    xa_on                   0, 10
    sleep                   10, 2
    message_on              0, ID_MSG_7, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                2, 0, -256, 0, 120, 80
    sleep                   10, 15
    plc_neck                2, 0, 256, 0, 40, 40
    sleep                   10, 15
    plc_neck                6, 0, 0, 0, 8, 8
    sleep                   10, 20
    plc_motion              0, 16, 8
    sleep                   10, 20
    wsleep
    wsleeping
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_13
    if                      0, off_1588
    ck                      FG_STATUS, 3, 1
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 0, SBK_32, 0, 255, -26106, 0, -9647, 116, 0, 0
    if                      0, off_1586
    ck                      FG_STATUS, F_SCENARIO, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 2048
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_1586:
    endif
    nop

off_1588:
    evt_end                 0

.proc main_14
    do                      0, off_1596
    evt_next
    nop
    edwhile                 off_1596
    ck                      FG_ROOM, 35, 0

off_1596:
    evt_end                 0

.proc main_15
    do                      0, off_15A4
    evt_next
    nop
    edwhile                 off_15A4
    ck                      FG_ROOM, 1, 0

off_15A4:
    set                     FG_ROOM, 1, 0
    evt_end                 0
    db                      0x38, 0x38
