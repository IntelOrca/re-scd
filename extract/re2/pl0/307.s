.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4572, -10039, 1270, 2160, -13550, 0, -16032, 14368, 2, 13, 0, 0, 8, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 7, 0, -3382, -18666, 2110, 1000, -24880, 0, -10636, 4104, 1, 18, 4, 0, 22, 4, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -18180, 6850, 2310, 2700, 2200, -5400, -25006, 6104, 2, 5, 0, 3, 40, 4, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -15749, 0, 5205, 0, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16122, 4587, 1000, 1420, ITEM_SHOTGUNAMMO, 7, 194, ID_OBJ_2, IF_FLOOR
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -17100, 0, 7450, 0, -6144, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1154
    cmp                     0, V_LAST_RDT, CMP_EQ, 773
    if                      0, off_114E
    ck                      FG_SCENARIO, 130, 1
    ck                      FG_SCENARIO, 131, 0
    goto                    255, 255, 0, off_1154
    endif
    nop

off_114E:
    evt_exec                5, I_GOSUB, main_03
    endif
    nop

off_1154:
    aot_set                 ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15480, -7050, 1100, 2600, ID_MSG_19, 0, 0, 0, 255, 255
    set                     FG_PBF03, 1, 0
    aot_set                 ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14000, -3400, 450, 1100, ID_MSG_20, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -3382, -18666, 2110, 1000, 255, 0, I_GOSUB, main_09, 0, 0
    evt_end                 0

.proc main_03
    set                     FG_STOP, 7, 1
    evt_exec                255, I_GOSUB, main_04
    evt_exec                255, I_GOSUB, main_05
    gosub                   main_08
    sleep                   10, 5
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_04
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_X_POS, -17100
    member_set              M_Y_POS, -2400
    member_set              M_Z_POS, 7450
    member_set              M_Y_DIR, -6144
    gosub                   main_06
    evt_end                 0

.proc main_05
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_set              M_X_POS, -16978
    member_set              M_Y_POS, -2400
    member_set              M_Z_POS, 7712
    member_set              M_Y_DIR, 5167
    gosub                   main_06
    if                      0, off_1202
    ck                      FG_ROOM, 1, 1
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_SUB, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    endif
    nop

off_1202:
    evt_end                 0

.proc main_06
    speed_set               1, 40
    for                     0, off_1212, 2
    add_speed
    evt_next
    next                    0

off_1212:
    nop_8b                  100, 90, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 87, 0
    nop_8a                  0, 3, 0, 85, 0
    se_on                   0, 1, 0, 0, 0, 0
    for                     0, off_123C, 8
    add_speed
    evt_next
    next                    0

off_123C:
    speed_set               1, 35
    for                     0, off_124A, 20
    add_speed
    evt_next
    next                    0

off_124A:
    speed_set               1, 30
    for                     0, off_1258, 15
    add_speed
    evt_next
    next                    0

off_1258:
    speed_set               1, 25
    for                     0, off_1266, 15
    add_speed
    evt_next
    next                    0

off_1266:
    speed_set               1, 20
    for                     0, off_1274, 15
    add_speed
    evt_next
    next                    0

off_1274:
    speed_set               1, 15
    for                     0, off_1282, 10
    add_speed
    evt_next
    next                    0

off_1282:
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

.proc main_07
    do                      0, off_12B4
    evt_next
    nop
    edwhile                 off_12B4
    ck                      FG_ROOM, 0, 0

off_12B4:
    set                     FG_ROOM, 0, 0
    evt_end                 0

.proc main_08
    do                      0, off_12C6
    evt_next
    nop
    edwhile                 off_12C6
    ck                      FG_ROOM, 1, 0

off_12C6:
    set                     FG_ROOM, 1, 0
    evt_end                 0

.proc main_09
    message_on              0, ID_MSG_22, 0, 255, 239
    evt_next
    nop
    if                      0, off_12E0
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_on                  ID_AOT_1
    endif
    nop

off_12E0:
    evt_end                 0
    db                      0x00, 0x00
