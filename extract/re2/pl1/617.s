.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15155, -28212, 3920, 1800, 12138, 0, -11372, 1424, 5, 22, 10, 0, 38, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_UNDER, 0, 0, -17321, -4684, 7700, 3200, 6132, 0, 28085, 1024, 6, 0, 0, 0, 45, 5, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    evt_end                 0

.proc aot
    gosub                   main_03
    evt_end                 0

.proc main_02
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10311, -6084, 2060, 1800, 255, 0, I_GOSUB, main_05, 0, 0
    aot_set                 ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17321, -6084, 7700, 1800, 255, 0, I_GOSUB, main_06, 0, 0
    aot_set_4p              3, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -20190, -27795, -15190, -19195, -12790, -21695, -16090, -28095, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set_4p              4, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -10590, -27995, -14690, -21895, -11790, -18895, -6490, -28095, 255, 0, I_GOSUB, main_04, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_BIRKIN_5, 0, AI_DEFAULT, 0, SBK_38, 0, 255, -13676, -10800, -7598, 1024, 0, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, -13446, 0, -5220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 0, -13446, 0, -5220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 0, -13500, -10800, -7600, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 0, -13500, -10800, -11200, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 0, -13500, -10800, -7600, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 0, -13500, -10800, -7600, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 0, -13500, -10800, -7600, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 0, 0, 10, 0, -8000, -5600, -10750, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_7
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    sce_espr3d_on           0, 534, 0, 4096, -8874, -1800, -5600, 0, 0, 0, 0
    evt_end                 0

.proc main_03
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_382C
    member_cmp              0, 23, 6, 2, 0
    member_set              M_SCE_FREE0, 0
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_382C:
    if                      0, off_3840
    member_cmp              0, 23, 6, 4, 0
    member_set              M_SCE_FREE0, 0
    evt_exec                255, I_GOSUB, main_0E
    endif
    nop

off_3840:
    evt_end                 0

.proc main_04
    if                      0, off_384E
    ck                      FG_ROOM, 2, 1
    evt_end                 0
    endif
    nop

off_384E:
    set                     FG_ROOM, 2, 1
    set                     FG_STATUS, 27, 1
    set                     FG_STATUS, 25, 1
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_17, 0, 0
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    se_on                   2, 12, 1, 0, 0, 0
    set                     FG_STATUS, 29, 1
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 7, 0, 1, 0
    nop_8b                  150, 20, 0, 8, 0
    nop_8c                  0, 150, 30, 30, 0, 28, 0
    evt_exec                255, I_GOSUB, main_10
    sleep                   10, 3
    set                     FG_STOP, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              0, 1, 0
    nop
    sleep                   10, 30
    set                     FG_STATUS, 29, 0
    gosub                   main_19
    set                     FG_STATUS, 4, 1
    save                    V_23, 300
    sleep                   10, 5
    plc_motion              0, 2, 0
    plc_neck                2, 0, 512, -256, 36, 36
    sleep                   10, 30
    plc_neck                2, 0, -512, -256, 36, 36
    sleep                   10, 30
    plc_neck                2, 0, 512, -256, 36, 36
    sleep                   10, 30
    plc_neck                0, 0, 0, 0, 36, 36
    wsleep
    wsleeping
    plc_ret
    cut_chg                 15
    work_set                WK_OBJECT, ID_OBJ_7
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    speed_set               1, 400
    for                     0, off_392E, 4
    add_speed
    evt_next
    next                    0

off_392E:
    se_on                   2, 13, 1796, 0, 0, 0
    for                     0, off_3944, 10
    add_speed
    evt_next
    next                    0

off_3944:
    sleep                   10, 30
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    cut_old
    set                     FG_STATUS, 25, 0
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    nop
    evt_end                 0

.proc main_05
    if                      0, off_3994
    ck                      FG_ROOM, 0, 0
    message_on              0, ID_MSG_1, 0, 255, 255
    evt_next
    nop
    if                      0, off_3990
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   2, 266, 1, 0, 0, 0
    evt_chain               0, 24, 7
    endif
    nop

off_3990:
    else                    0, off_39A6

off_3994:
    if                      0, off_39A4
    ck                      FG_ROOM, 1, 0
    message_on              0, ID_MSG_3, 0, 255, 255
    endif
    nop

off_39A4:
    nop
    nop

off_39A6:
    evt_end                 0

.proc main_06
    if                      0, off_39BC
    ck                      FG_ROOM, 0, 1
    ck                      FG_ROOM, 1, 0
    message_on              0, ID_MSG_3, 0, 255, 255
    endif
    nop

off_39BC:
    evt_end                 0

.proc main_07
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_ROOM, 0, 1
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -13438, -7008
    sleep                   10, 33
    cut_chg                 12
    pos_set                 0, -14045, -2400, -8988
    member_set              M_Y_DIR, 1929
    plc_dest                0, 21, 32, 3063, 128
    gosub                   main_18
    evt_exec                255, I_GOSUB, main_15
    plc_motion              0, 2, 0
    sleep                   10, 20
    plc_neck                2, 0, 0, -512, 36, 36
    sleep                   10, 90
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 8
    plc_motion              1, 1, 8
    sleep                   10, 4
    plc_stop
    nop
    sleep                   10, 30
    cut_chg                 3
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13551, 0, -6754
    member_set              M_Y_DIR, 3065
    plc_motion              11, 1, 20
    sleep                   10, 60
    plc_stop
    cut_chg                 12
    nop
    sleep                   10, 15
    gosub                   main_09
    nop_8a                  0, 4, 0, 3, 0
    nop_8b                  200, 12, 0, 3, 0
    evt_exec                255, I_GOSUB, main_14
    evt_exec                255, I_GOSUB, main_0A
    evt_exec                255, I_GOSUB, main_0B
    evt_exec                255, I_GOSUB, main_0C
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 1
    se_on                   2, 270, 1284, 0, 0, 0
    sleep                   10, 5
    se_on                   2, 271, 1284, 0, 0, 0
    sleep                   10, 15
    cut_chg                 3
    unk                     130, 0, 0
    nop
    sce_espr3d_on           0, 534, 0, 4096, -8874, -1800, -5562, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_Y_POS, -9000
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13704, 0, -8000
    member_set              M_Y_DIR, -915
    nop_8a                  0, 4, 0, 5, 0
    nop_8b                  250, 9, 0, 5, 0
    sleep                   10, 5
    if                      0, off_3B14
    ck                      FG_STATUS, F_PLAYER, 0
    plc_motion              10, 0, 0
    else                    0, off_3B1A

off_3B14:
    plc_motion              10, 0, 0
    nop
    nop

off_3B1A:
    sleep                   10, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 91, 65
    sleep                   10, 32
    member_set              M_Y_POS, 0
    plc_ret
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    nop
    evt_end                 0

.proc main_08
    evt_exec                255, I_GOSUB, main_11
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  150, 9, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    se_on                   2, 270, 516, 0, 0, 0
    for                     0, off_3B72, 3
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 25
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_3B72:
    for                     0, off_3B8A, 3
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 25
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_3B8A:
    sleep                   10, 20
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_exec                255, I_GOSUB, main_12
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  150, 9, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    se_on                   2, 270, 1028, 0, 0, 0
    for                     0, off_3BE2, 3
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 35
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_3BE2:
    for                     0, off_3BFA, 3
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 35
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_3BFA:
    evt_end                 0

.proc main_09
    evt_exec                255, I_GOSUB, main_13
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  150, 9, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    se_on                   2, 270, 1284, 0, 0, 0
    for                     0, off_3C7C, 3
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 45
    member_set2             M_Y_POS, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 45
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_3C7C:
    for                     0, off_3CAA, 3
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 45
    member_set2             M_Y_POS, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 45
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_3CAA:
    sleep                   10, 30
    evt_end                 0

.proc main_0A
    sleep                   10, 5
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    speed_set               4, -256
    speed_set               1, 300
    speed_set               7, 20
    speed_set               0, 360
    for                     0, off_3CD4, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3CD4:
    speed_set               0, 90
    speed_set               4, 0
    for                     0, off_3CE8, 24
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3CE8:
    evt_end                 0

.proc main_0B
    sleep                   10, 7
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    speed_set               3, 256
    speed_set               4, 128
    speed_set               1, 360
    speed_set               7, 20
    speed_set               0, -360
    speed_set               2, 90
    for                     0, off_3D16, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3D16:
    speed_set               3, 0
    for                     0, off_3D26, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3D26:
    speed_set               0, -90
    speed_set               2, 0
    speed_set               4, 0
    for                     0, off_3D3E, 20
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3D3E:
    evt_end                 0

.proc main_0C
    sleep                   10, 12
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    speed_set               3, -256
    speed_set               4, -64
    speed_set               1, 280
    speed_set               7, 20
    for                     0, off_3D64, 20
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3D64:
    evt_end                 0

.proc main_0D
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    unk                     130, 0, 0
    unk                     130, 1, 0
    sce_espr3d_on           0, 534, 0, 4096, -8874, -1800, -5562, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    cut_chg                 13
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_04, M_X_POS
    nop
    member_copy             V_05, M_Y_POS
    nop
    member_copy             V_06, M_Z_POS
    nop
    member_copy             V_07, M_Y_DIR
    nop
    member_copy             V_08, M_FLOOR
    nop
    pos_set                 0, -12921, 0, -13488
    member_set              M_Y_DIR, 1145
    member_set              M_FLOOR, 0
    evt_exec                255, I_GOSUB, main_1A

off_3DE4:
    if                      0, off_3DF6
    member_cmp              0, 23, 6, 8, 0
    goto                    255, 255, 0, off_3DFE
    endif
    nop

off_3DF6:
    evt_next
    nop
    goto                    255, 255, 0, off_3DE4

off_3DFE:
    wsleep
    wsleeping
    work_copy               6, 14, 1
    work_copy               5, 8, 1
    work_copy               4, 2, 1
    pos_set                 0, 0, 0, 0
    member_set2             M_Y_DIR, V_07
    nop
    member_set2             M_FLOOR, V_08
    nop
    member_set              M_SCE_FREE0, 16
    cut_old
    work_set                WK_PLAYER, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1035
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_0E
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_ROOM, 1, 1
    unk                     130, 0, 0
    nop
    sce_espr3d_on           0, 534, 0, 4096, -8874, -1800, -5562, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    cut_chg                 14
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 91, 65
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_04, M_X_POS
    nop
    member_copy             V_05, M_Y_POS
    nop
    member_copy             V_06, M_Z_POS
    nop
    member_copy             V_07, M_Y_DIR
    nop
    member_copy             V_08, M_FLOOR
    nop
    pos_set                 0, -12921, 0, -13488
    member_set              M_Y_DIR, 1145
    member_set              M_FLOOR, 0
    evt_exec                255, I_GOSUB, main_1B
    sleep                   10, 220
    wsleep
    wsleeping
    work_copy               6, 14, 1
    work_copy               5, 8, 1
    work_copy               4, 2, 1
    pos_set                 0, 0, 0, 0
    member_set2             M_Y_DIR, V_07
    nop
    member_set2             M_FLOOR, V_08
    nop
    cut_old
    work_set                WK_PLAYER, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1035
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_chain               0, 24, 15
    evt_end                 0

.proc main_0F
    cut_chg                 12
    gosub                   main_16
    cut_old
    cut_chg                 3
    unk                     130, 0, 0
    sce_espr3d_on           0, 534, 0, 4096, -8874, -1800, -5562, 0, 0, 0, 0
    se_on                   2, 274, 4, 0, 0, 0
    for                     0, off_3F72, 72
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 60
    member_set2             M_X_POS, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 60
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_3F72:
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -32000
    set                     FG_PBF03, 1, 0
    set                     FG_PBF03, 8, 0
    sca_id_set              11, 0, 0
    cut_old
    nop
    aot_reset               ID_AOT_1, SCE_DOOR, SAT_PL | SAT_UNDER, 244, 23, 0, 0, 181, 109
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_10
    sce_espr_on             0, 25, 0, 3840, -12810, -6400, -25261, 0
    sce_espr_on             0, 25, 0, 3328, -13910, -7200, -25261, 0
    sce_espr_on             0, 25, 0, 3072, -14809, -7000, -24095, 0
    sce_espr_on             0, 25, 0, 4352, -14200, -7400, -21840, 0
    sce_espr_on             0, 25, 0, 3328, -13528, -6600, -22550, 0
    sce_espr_on             0, 25, 0, 3584, -11420, -7200, -23186, 0
    sce_espr_on             0, 25, 0, 2304, -13810, -6400, -25261, 0
    sce_espr_on             0, 25, 0, 3072, -14809, -7000, -23095, 0
    sleep                   10, 10
    sce_espr_on             0, 25, 0, 3072, -13832, -6100, -26145, 0
    sce_espr_on             0, 25, 0, 3328, -14484, -6700, -25180, 0
    sce_espr_on             0, 25, 0, 3840, -15052, -6600, -23772, 0
    sleep                   10, 20
    sce_espr_on             0, 25, 0, 2048, -11606, -6100, -24659, 0
    sce_espr_on             0, 25, 0, 2560, -12637, -6700, -24815, 0
    sce_espr_on             0, 25, 0, 2304, -11359, -6600, -24182, 0
    evt_end                 0

.proc main_11
    se_on                   2, 267, 0, -13500, -10800, -7600
    sce_espr_on             0, 25, 0, 3840, -15300, -10800, -9400, 0
    sce_espr_on             0, 25, 0, 3584, -15300, -10800, -7600, 0
    sce_espr_on             0, 25, 0, 3840, -11700, -10800, -9400, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 3584, -16000, -10800, -5800, 0
    sce_espr_on             0, 25, 0, 3328, -15300, -10800, -8400, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 3840, -12000, -10800, -9400, 0
    sce_espr_on             0, 25, 0, 3328, -11000, -10800, -5800, 0
    sleep                   10, 10
    sce_espr_on             0, 25, 0, 3584, -11700, -10800, -8900, 0
    sce_espr_on             0, 25, 0, 3584, -15300, -10800, -6800, 0
    evt_end                 0

.proc main_12
    se_on                   2, 267, 0, -13500, -10800, -7600
    sce_espr_on             0, 25, 0, 3584, -15300, -10800, -6200, 0
    sce_espr_on             0, 25, 0, 3840, -15000, -10800, -5800, 0
    sce_espr_on             0, 25, 0, 3840, -12700, -10800, -9400, 0
    sce_espr_on             0, 25, 0, 3328, -12300, -10800, -9400, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 3840, -15300, -10800, -7900, 0
    sce_espr_on             0, 25, 0, 3328, -11700, -10800, -6900, 0
    sce_espr_on             0, 25, 0, 3584, -14600, -10800, -5800, 0
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 3584, -15300, -10800, -7400, 0
    sce_espr_on             0, 25, 0, 3840, -11700, -10800, -7400, 0
    sce_espr_on             0, 25, 0, 3840, -14700, -10800, -9400, 0
    sleep                   10, 8
    sce_espr_on             0, 25, 0, 3328, -11700, -10800, -8900, 0
    sce_espr_on             0, 25, 0, 3328, -15300, -10800, -6800, 0
    evt_end                 0

.proc main_13
    se_on                   2, 267, 0, -13500, -10800, -7600
    sce_espr_on             0, 25, 0, 3584, -15300, -10800, -6200, 0
    sce_espr_on             0, 25, 0, 3584, -15300, -10800, -6200, 0
    sce_espr_on             0, 25, 0, 3840, -12100, -10800, -9400, 0
    sce_espr_on             0, 25, 0, 3328, -12500, -10800, -9400, 0
    sce_espr_on             0, 25, 0, 3328, -15300, -10800, -6800, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 3840, -15300, -10800, -7900, 0
    sce_espr_on             0, 25, 0, 3328, -11700, -10800, -6900, 0
    sce_espr_on             0, 25, 0, 3584, -12800, -10800, -5800, 0
    sce_espr_on             0, 25, 0, 3328, -11700, -10800, -6900, 0
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 3328, -11700, -10800, -8900, 0
    sce_espr_on             0, 25, 0, 3840, -11700, -10800, -7400, 0
    sce_espr_on             0, 25, 0, 3840, -14900, -10800, -9400, 0
    sleep                   10, 8
    sce_espr_on             0, 25, 0, 3328, -11700, -10800, -8900, 0
    sce_espr_on             0, 25, 0, 3328, -15300, -10800, -6800, 0
    evt_end                 0

.proc main_14
    se_on                   2, 267, 0, -13500, -10800, -7600
    sce_espr_on             0, 25, 0, 3584, -15300, -10800, -6200, 0
    sce_espr_on             0, 25, 0, 3840, -15000, -10800, -5800, 0
    sce_espr_on             0, 25, 0, 3840, -12700, -10800, -9400, 0
    sce_espr_on             0, 25, 0, 3328, -12300, -10800, -9400, 0
    sce_espr_on             0, 25, 0, 3328, -10500, -10800, -9400, 0
    sce_espr_on             0, 25, 0, 3328, -15300, -10800, -6800, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 3840, -15300, -10800, -7900, 0
    sce_espr_on             0, 25, 0, 3328, -11700, -10800, -6900, 0
    sce_espr_on             0, 25, 0, 3584, -14600, -10800, -5800, 0
    sce_espr_on             0, 25, 0, 3328, -11700, -10800, -6900, 0
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 3328, -11700, -10800, -8900, 0
    sce_espr_on             0, 25, 0, 3840, -11700, -10800, -7400, 0
    sce_espr_on             0, 25, 0, 3840, -14200, -10800, -9400, 0
    sleep                   10, 8
    sce_espr_on             0, 25, 0, 3328, -11700, -10800, -8900, 0
    sce_espr_on             0, 25, 0, 3328, -15300, -10800, -6800, 0
    evt_end                 0

.proc main_15
    sleep                   10, 30
    se_on                   2, 272, 0, -15354, -8712, -5868
    sce_espr3d_on           0, 4630, 0, 3584, -15354, -8712, -5868, 0, 0, 0, 0
    sleep                   10, 60
    se_on                   2, 272, 0, -15012, -8712, -5868
    sce_espr3d_on           0, 4630, 0, 2048, -15012, -8650, -5868, 0, 0, 0, 0
    sleep                   10, 60
    se_on                   2, 272, 0, -14760, -8712, -5868
    sce_espr3d_on           0, 4630, 0, 2048, -14760, -8650, -5868, 0, 0, 0, 0
    sleep                   10, 60
    se_on                   2, 272, 0, -14508, -8712, -5868
    sce_espr3d_on           0, 4630, 0, 2048, -14508, -8650, -5868, 0, 0, 0, 0
    sleep                   10, 60
    sce_espr3d_on           0, 4630, 0, 2048, -14256, -8650, -5868, 0, 0, 0, 0
    evt_end                 0

.proc main_16
    sce_espr3d_on           0, 4630, 0, 3584, -15354, -8712, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -15012, -8650, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -14760, -8650, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -14508, -8650, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -14256, -8650, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -14004, -8650, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -13752, -8650, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -13500, -8650, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -13266, -8650, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -12996, -8650, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -12744, -8650, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -12474, -8650, -5868, 0, 0, 0, 0
    sce_espr3d_on           0, 4630, 0, 2048, -12240, -8650, -5868, 0, 0, 0, 0
    sleep                   10, 20
    se_on                   2, 272, 0, -12006, -8712, -5868
    sce_espr3d_on           0, 4630, 0, 2048, -12006, -8650, -5868, 0, 0, 0, 0
    sleep                   10, 60
    se_on                   2, 273, 0, -11700, -8712, -5868
    sce_espr3d_on           0, 4630, 0, 3584, -11700, -8712, -5868, 0, 0, 0, 0
    sleep                   10, 60
    evt_end                 0

.proc main_17
    se_on                   2, 278, 1, 0, 0, 0
    message_on              0, ID_MSG_0, 0, 255, 255
    evt_end                 0

.proc main_18
    do                      0, off_465A
    evt_next
    nop
    edwhile                 off_465A
    ck                      FG_ROOM, 32, 0

off_465A:
    evt_end                 0

.proc main_19
    xa_on                   0, 0
    message_on              0, ID_MSG_4, 0, 0, 0
    evt_end                 0

.proc main_1A
    sleep                   10, 28
    xa_on                   0, 58
    evt_end                 0

.proc main_1B
    evt_next
    nop
    xa_on                   0, 59
    evt_end                 0
    db                      0x10, 0x00
