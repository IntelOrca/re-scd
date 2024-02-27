.version 2

.init
.proc init
    if                      0, off_1FA8
    ck                      FG_COMMON, 254, 1
    set                     FG_COMMON, 92, 0
    set                     FG_ENEMY_2, 18, 0
    endif
    nop

off_1FA8:
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -28121, -16336, 2400, 4470, -2814, -5400, -4592, 6064, 5, 3, 6, 3, 38, 0, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -18031, -17756, 2410, 4190, ID_MSG_0, 0, 0, 0, 255, 255
    if                      0, off_1FF2
    ck                      FG_COMMON, 92, 1
    aot_reset               ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_1, 0, 0, 0, 255, 255
    else                    0, off_201A

off_1FF2:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 10, 0, 10, 16, -10429, -20054, -13974, 0, -3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_201A:
    evt_end                 0

.main
.proc main
    gosub                   main_15
    if                      0, off_2108
    ck                      FG_STATUS, F_SCENARIO, 1
    aot_set                 ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -17421, -23326, 2410, 2200, ID_MSG_18, 0, 0, 0, 255, 255
    if                      0, off_20F8
    ck                      FG_COMMON, 92, 0
    set                     FG_PBF06, 6, 1
    set                     FG_PBF07, 4, 0
    set                     FG_PBF0C, 1, 0
    sce_em_set              0, ID_EM_1, ENEMY_SHERRY_JACKET, 0, AI_08, 10, SBK_0, 0, 255, 12569, -18000, -13180, 0, 777, 0
    sce_em_set              0, ID_EM_0, ENEMY_TYRANT_1, 5, AI_40, 10, SBK_18, 0, 18, 12521, -18000, -16513, 1024, 0, 0
    aot_set                 ID_AOT_2, SCE_NORMAL, SAT_PL | SAT_UNDER, 10, 0, -16907, -14155, 8070, 4620, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 10, 0, 10, 16, 10495, -20030, 13674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_2106

off_20F8:
    evt_exec                255, I_GOSUB, main_1C
    evt_exec                255, I_GOSUB, main_1B
    evt_exec                255, I_GOSUB, main_1A
    nop
    nop

off_2106:
    endif
    nop

off_2108:
    evt_end                 0

.proc aot
    if                      0, off_2136
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_2134
    ck                      FG_COMMON, 92, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2132
    cmp                     0, V_CUT, CMP_EQ, 3
    set                     FG_COMMON, 92, 1
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_2132:
    endif
    nop

off_2134:
    endif
    nop

off_2136:
    gosub                   main_16
    evt_end                 0

.proc main_02
    evt_next
    cut_auto                0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_ROOM, 1, 1
    nop
    gosub                   main_03
    gosub                   main_04
    gosub                   main_05
    gosub                   main_07
    gosub                   main_08
    gosub                   main_09
    gosub                   main_0C
    gosub                   main_0D
    gosub                   main_0F
    gosub                   main_11
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    set                     FG_COMMON, 255, 0
    set                     FG_ROOM, 1, 0
    work_set                WK_PLAYER, 0
    plc_ret
    cut_chg                 6
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    if                      0, off_2190
    ck                      FG_COMMON, 92, 1
    aot_reset               ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_1, 0, 0, 0, 255, 255
    endif
    nop

off_2190:
    sce_bgmtbl_set          0, 2, 6, 8209, 32768
    sce_bgmtbl_set          0, 3, 6, 8209, 32832
    sce_bgmtbl_set          0, 4, 6, 9489, 32768
    sce_bgmtbl_set          0, 5, 6, 9489, 32768
    sce_bgmtbl_set          0, 6, 6, 65297, 0
    sce_bgmtbl_set          0, 9, 6, 65297, 0
    sce_bgmtbl_set          0, 10, 6, 65297, 0
    sce_bgmtbl_set          0, 11, 6, 65297, 0
    sce_bgmtbl_set          0, 12, 6, 65297, 0
    sce_bgmtbl_set          0, 13, 6, 65297, 0
    sce_bgmtbl_set          0, 14, 6, 65297, 0
    sce_bgmtbl_set          0, 15, 6, 65297, 0
    sce_bgmtbl_set          0, 16, 6, 65297, 0
    sce_bgmtbl_set          0, 19, 6, 65297, 0
    sce_bgmtbl_set          0, 22, 6, 65297, 0
    sce_bgmtbl_set          0, 0, 6, 65297, 0
    sce_bgmtbl_set          0, 1, 6, 65297, 0
    sce_bgmtbl_set          0, 8, 6, 10513, 32768
    sce_bgmtbl_set          0, 21, 6, 11537, 32768
    sce_bgmtbl_set          0, 7, 6, 65297, 0
    sce_bgmtbl_set          0, 18, 6, 65297, 0
    sce_bgmtbl_set          0, 20, 6, 65297, 0
    sce_bgmtbl_set          0, 5, 5, 65297, 0
    evt_end                 0

.proc main_03
    work_set                WK_PLAYER, 0
    weapon_chg              0
    nop
    pos_set                 0, -15523, -18000, -6628
    dir_set                 0, 0, 0, 0
    plc_dest                0, 4, 33, -14696, -6628
    plc_neck                2, 0, 0, 0, 32, 32
    gosub                   main_13
    plc_neck                2, 0, 1024, 0, 96, 96
    sleep                   10, 20
    xa_on                   0, 3
    message_on              0, ID_MSG_7, 0, 0, 0
    evt_next
    nop
    plc_dest                0, 5, 33, -12576, -8620
    plc_neck                2, 0, 0, 0, 12, 12
    gosub                   main_13
    plc_dest                0, 9, 33, -12834, -18620
    gosub                   main_13
    plc_motion              0, 15, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_04
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -11343, -18000, -8181
    dir_set                 0, 0, 1024, 0
    plc_neck                5, 3, 1, 0, 60, 60
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -12300, -18000, -13376
    dir_set                 0, 0, 1696, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -13575, -18000, -15012
    dir_set                 0, 0, 3775, 0
    plc_dest                0, 8, 34, -15232, -15601
    plc_neck                5, 1, 0, 0, 60, 60
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 1
    cut_chg                 7
    evt_next
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_MAIN_VOL, 127, 0
    nop
    xa_on                   0, 4
    message_on              0, ID_MSG_8, 0, 0, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_05
    cut_chg                 8
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -12636, -18900, -14579
    dir_set                 0, 0, 1216, 0
    member_set              M_SCE_FREE0, 2
    sleep                   10, 48
    cut_chg                 12
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -13000, -18000, -12974
    dir_set                 0, 0, 1900, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                2, 0, -256, 1024, 32, 96
    pos_set                 0, -15396, -18000, -15581
    dir_set                 0, 0, 0, 0
    plc_dest                0, 5, 34, -14852, -21247
    plc_rot                 0, 200
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                2, 0, -256, 180, 32, 32
    sleep                   10, 5
    se_on                   2, 258, 0, -11500, -18000, -17000
    sleep                   10, 5
    se_on                   2, 273, 0, -11500, -18000, -17000
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    sce_espr_on             0, 24, 0, 13196, -16400, -19900, -14900, 0
    set                     FG_PBF06, 6, 1
    set                     FG_PBF07, 4, 1
    set                     FG_PBF0C, 1, 1
    sce_shake_on            251, 5
    nop
    sleep                   10, 2
    sce_shake_on            3, 253
    nop
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 33, -14352, -21247
    evt_exec                255, I_GOSUB, main_1A
    sleep                   10, 1
    sce_shake_on            255, 1
    nop
    sleep                   10, 1
    set                     FG_STATUS, 29, 1
    sleep                   10, 6
    set                     FG_STATUS, 29, 0
    set                     FG_STATUS, 28, 1
    sleep                   10, 7
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 3
    set                     FG_STATUS, 28, 0
    sleep                   10, 7
    wsleep
    wsleeping
    evt_end                 0

.proc main_06
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, 13669, -18000, -12974
    cut_chg                 9
    sleep                   10, 60
    cut_chg                 0
    evt_next
    nop
    xa_on                   0, 11
    message_on              0, ID_MSG_17, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 3
    work_set                WK_PLAYER, 0
    weapon_chg              0
    work_set                WK_ENEMY, ID_EM_0
    pos_set                 0, 13669, -18000, -12974
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12082, -18000, -13171
    dir_set                 0, 0, 1024, 0
    evt_next
    nop
    xa_on                   0, 12
    message_on              0, ID_MSG_18, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -256, -1024, 32, 32
    sleep                   10, 20
    plc_neck                2, 0, 256, -1024, 32, 32
    sleep                   10, 40
    plc_motion              0, 18, 16
    plc_cnt                 5
    plc_neck                2, 0, -256, -124, 32, 32
    sleep                   10, 80
    plc_neck                2, 0, 256, -1024, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, -256, -124, 32, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_07
    cut_chg                 3
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, 13669, -18000, -12974
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12082, -18000, -13171
    dir_set                 0, 0, 1024, 0
    work_set                WK_PLAYER, 0
    evt_next
    xa_on                   0, 5
    message_on              0, ID_MSG_9, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    sleep                   10, 5
    plc_neck                2, 0, -256, 1024, 32, 32
    sleep                   10, 10
    plc_neck                2, 0, -256, 0, 32, 32
    sleep                   10, 30
    plc_motion              0, 18, 0
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 20
    plc_neck                2, 0, 0, 1024, 32, 32
    sleep                   10, 10
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -13054, -18000, -15000
    dir_set                 0, 0, 1024, 0
    member_set              M_SCE_FREE0, 6
    cut_chg                 5
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -12733, -18000, -21021
    dir_set                 0, 0, 3127, 0
    plc_motion              0, 17, 0
    plc_neck                2, 0, 0, 1024, 32, 32
    sleep                   10, 10
    plc_neck                2, 0, 0, 32, 32, 32
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 15, 0
    nop
    sleep                   10, 20
    parts_set               0, 15, 2, 0
    se_on                   2, 260, 0, -12733, -20000, -21021
    sleep                   10, 5
    plc_motion              0, 16, 0
    sleep                   10, 27
    se_on                   2, 272, 0, -12733, -20000, -21021
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -12733, -20000, -21021
    save                    V_06, 400
    for                     0, off_262E, 7
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_SUB, V_TEMP, V_06
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 400
    member_set2             M_Z_POS, V_TEMP
    nop
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_SUB, V_TEMP, 40
    copy                    V_06, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_262E:
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 3
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    for                     0, off_266C, 6
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_SUB, V_TEMP, V_06
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 400
    member_set2             M_Z_POS, V_TEMP
    nop
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_SUB, V_TEMP, 40
    copy                    V_06, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_266C:
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12082, -18000, -13171
    dir_set                 0, 0, 1024, 0
    cut_chg                 3
    work_set                WK_PLAYER, 0
    plc_motion              0, 25, 0
    work_set                WK_OBJECT, ID_OBJ_1
    pos_set                 0, -12182, -20350, -16121
    save                    V_06, 0
    for                     0, off_26CE, 6
    member_copy             V_TEMP, M_Z_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 400
    member_set2             M_Z_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_SUB, V_TEMP, V_06
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_SUB, V_TEMP, 40
    copy                    V_06, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_26CE:
    member_set              M_Y_POS, 0
    member_set              M_Z_POS, 0
    se_on                   2, 274, 0, -12082, -18000, -13171
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    super_set               0, 64, 139, 0, 257, 0, 832, -2048, 60
    sleep                   10, 20
    xa_on                   0, 6
    message_on              0, ID_MSG_10, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 0
    nop
    plc_neck                2, 0, 0, 1024, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 14
    plc_motion              0, 15, 0
    plc_cnt                 5
    plc_neck                2, 0, -200, 0, 32, 32
    sleep                   10, 21
    plc_neck                2, 0, -200, 1024, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, -200, 0, 32, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_08
    cut_chg                 13
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    plc_dest                0, 8, 33, -12477, -26475
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -13192, -18000, -17064
    member_set              M_SCE_FREE0, 4
    sleep                   10, 15
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                2, 0, -1024, 0, 32, 32
    plc_dest                0, 5, 34, -14585, -21580
    gosub                   main_14
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              1, 6, 8
    nop
    sleep                   10, 2
    plc_motion              10, 19, 0
    sleep                   10, 20
    se_on                   2, 257, 0, -14929, -18000, -21359
    sleep                   10, 30
    plc_stop
    nop
    pos_set                 0, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -12251, -18000, -25076
    cut_chg                 3
    evt_next
    nop
    xa_on                   0, 7
    message_on              0, ID_MSG_11, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 0, 32, 32
    plc_dest                0, 8, 33, -13037, -5978
    sleep                   10, 40
    plc_motion              0, 18, 0
    sleep                   10, 25
    plc_motion              0, 15, 0
    sleep                   10, 27
    plc_motion              0, 17, 0
    wsleep
    wsleeping
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -12251, -18000, -16576
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12377, -18000, -10487
    dir_set                 0, 0, -7128, 0
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    super_set               0, 64, 142, 0, 257, 0, 832, -2048, 60
    cut_chg                 14
    evt_next
    nop
    xa_on                   0, 8
    message_on              0, ID_MSG_12, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 30
    plc_motion              0, 16, 128
    sleep                   10, 10
    plc_motion              0, 16, 0
    plc_cnt                 20
    wsleep
    wsleeping
    evt_end                 0

.proc main_09
    cut_chg                 3
    evt_next
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 0
    nop
    xa_on                   0, 9
    message_on              0, ID_MSG_13, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -13201, -18000, -16092
    dir_set                 0, 0, -1024, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12428, -18000, -10465
    dir_set                 0, 0, 1024, 0
    plc_motion              0, 23, 0
    plc_neck                2, 0, 0, 1024, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, 0, 0, 32, 32
    plc_dest                0, 9, 33, -5740, -13009
    plc_rot                 0, 100
    gosub                   main_13
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 16
    nop
    sleep                   10, 16
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    super_set               0, 64, 139, 0, 257, 0, 832, -2048, 60
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 0
    plc_cnt                 8
    nop
    sleep                   10, 16
    evt_exec                255, I_GOSUB, main_0A
    sleep                   10, 5
    wsleep
    wsleeping
    evt_end                 0

.proc main_0A
    se_on                   2, 272, 0, -12828, -20500, -10465
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    super_reset             0, -12828, -20500, -10465
    save                    V_06, 500
    for                     0, off_2980, 10
    member_copy             V_TEMP, M_Z_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 100
    member_set2             M_Z_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 500
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_SUB, V_TEMP, V_06
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_SUB, V_TEMP, 40
    copy                    V_06, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2980:
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -10855, -23780, -12000
    save                    V_06, 0
    for                     0, off_29D2, 30
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 180
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 250
    member_set2             M_Z_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_SUB, V_TEMP, V_06
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_SUB, V_TEMP, 40
    copy                    V_06, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_29D2:
    member_set              M_Y_POS, 0
    member_set              M_Z_POS, 0
    evt_end                 0

.proc main_0C
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -11800, -18000, -15000
    member_set              M_SCE_FREE0, 5
    cut_chg                 10
    sleep                   10, 6
    evt_exec                255, I_GOSUB, main_0B
    sleep                   10, 15
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_12
    sleep                   10, 25
    cut_chg                 11
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -5000, -18000, -16000
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 21
    evt_end                 0

.proc main_0D
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 64
    nop
    plc_neck                2, 0, 0, 1024, 128, 128
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, 1200, -28200, -18000
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0E
    gosub                   main_19
    evt_end                 0

.proc main_0E
    work_set                WK_ENEMY, ID_EM_0
    nop
    save                    V_04, 90
    for                     0, off_2A8A, 20
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    member_set2             M_X_POS, V_TEMP
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_04, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2A8A:
    evt_end                 0

.proc main_0F
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10884, -18000, -15212
    dir_set                 0, 0, -7512, 0
    cut_chg                 10
    sleep                   10, 1
    xa_on                   0, 10
    message_on              0, ID_MSG_14, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -1024, 1024, 64, 64
    wsleep
    wsleeping
    evt_exec                255, I_GOSUB, main_10
    gosub                   main_1E
    evt_end                 0

.proc main_10
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 1024, -1024, 32, 32
    sleep                   10, 20
    plc_dest                0, 8, 33, -7757, -14296
    plc_rot                 0, 200
    sleep                   10, 10
    plc_stop
    nop
    evt_end                 0

.proc main_11
    se_vol                  50
    cut_chg                 0
    evt_next
    nop
    xa_on                   0, 11
    message_on              0, ID_MSG_17, 0, 0, 0
    evt_exec                255, I_GOSUB, main_1C
    evt_exec                255, I_GOSUB, main_1D
    evt_exec                255, I_GOSUB, main_1B
    wsleep
    wsleeping
    se_vol                  100
    evt_end                 0

.proc main_12
    se_on                   2, 268, 0, -13000, -18000, -14600
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  255, 4, 0, 1, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    save                    V_04, 90
    for                     0, off_2B82, 20
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 30
    member_set2             M_X_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 20
    member_set2             M_Y_DIR, V_TEMP
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_04, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2B82:
    pos_set                 0, 0, 0, 0
    evt_end                 0

.proc main_13
    do                      0, off_2B98
    evt_next
    nop
    edwhile                 off_2B98
    ck                      FG_ROOM, 33, 0

off_2B98:
    evt_end                 0

.proc main_14
    do                      0, off_2BA6
    evt_next
    nop
    edwhile                 off_2BA6
    ck                      FG_ROOM, 34, 0

off_2BA6:
    evt_end                 0

.proc main_15
    aot_set                 ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -28121, -16336, 2400, 4470, 255, 0, I_GOSUB, main_17, 0, 0
    save                    V_08, 16
    gosub                   main_18
    evt_end                 0

.proc main_16
    if                      0, off_2BD2
    ck                      FG_ROOM, 2, 0
    gosub                   main_18
    else                    0, off_2BE8

off_2BD2:
    if                      0, off_2BE6
    ck                      FG_ROOM, 2, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    set                     FG_ROOM, 2, 1
    endif
    nop

off_2BE6:
    nop
    nop

off_2BE8:
    evt_end                 0

.proc main_17
    aot_on                  ID_AOT_1
    evt_end                 0

.proc main_18
    if                      0, off_2CE8
    work_copy               8, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    switch                  26, off_2CE2
    case                    0, off_2C0E, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_2C0E:
    case                    0, off_2C1C, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_2C1C:
    case                    0, off_2C2A, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_2C2A:
    case                    0, off_2C38, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_2C38:
    case                    0, off_2C46, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_2C46:
    case                    0, off_2C54, 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_2C54:
    case                    0, off_2C62, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    break                   0

off_2C62:
    case                    0, off_2C70, 7
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_2C70:
    case                    0, off_2C7E, 8
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_2C7E:
    case                    0, off_2C8C, 9
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 127, 64
    break                   0

off_2C8C:
    case                    0, off_2C9A, 10
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_2C9A:
    case                    0, off_2CA8, 11
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 64
    break                   0

off_2CA8:
    case                    0, off_2CB6, 12
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_2CB6:
    case                    0, off_2CC4, 13
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_2CC4:
    case                    0, off_2CD2, 14
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_2CD2:
    case                    0, off_2CE0, 15
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_2CE0:
    eswitch                 0

off_2CE2:
    copy                    V_08, V_CUT
    nop
    endif
    nop

off_2CE8:
    evt_end                 0

.proc main_19
    cut_chg                 15
    sleep                   10, 15
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    se_on                   2, 269, 0, 1230, -16200, -18181
    sce_espr_on             0, 3354, 0, 19586, 1199, -15000, -18100, 0
    sleep                   10, 5
    sce_espr_on             0, 3354, 0, 15882, 1199, -15000, -18100, 0
    nop_8b                  200, 5, 0, 0, 0
    nop_8a                  0, 3, 0, 0, 0
    sleep                   10, 5
    sce_espr_on             0, 3354, 0, 11776, 1199, -15000, -18100, 0
    nop_8a                  0, 3, 0, 0, 0
    sleep                   10, 5
    nop_8c                  0, 150, 50, 10, 0, 0, 0
    sce_espr_on             0, 3354, 0, 8192, -100, -15000, -20100, 0
    sleep                   10, 5
    sce_espr_on             0, 3354, 0, 8192, 1199, -15000, -16100, 0
    nop_8a                  0, 3, 0, 0, 0
    sleep                   10, 5
    nop_8c                  0, 150, 50, 15, 0, 0, 0
    sce_espr_on             0, 3354, 0, 15882, 1199, -15000, -19100, 0
    sleep                   10, 5
    sce_espr_on             0, 3354, 0, 13312, 2199, -15000, -18100, 0
    sleep                   10, 5
    sce_espr_on             0, 3354, 0, 17408, -100, -15000, -18100, 0
    nop_8a                  0, 5, 0, 0, 0
    sleep                   10, 5
    nop_8c                  0, 200, 50, 15, 0, 0, 0
    sce_espr_on             0, 3354, 0, 15872, 99, -15000, -16100, 0
    sleep                   10, 5
    sce_espr_on             0, 3354, 0, 14080, 199, -15000, -18100, 0
    sleep                   10, 5
    sce_espr_on             0, 3354, 0, 17408, 100, -15000, -17100, 0
    nop_8a                  0, 3, 0, 0, 0
    sleep                   10, 5
    nop_8c                  0, 200, 50, 30, 0, 0, 0
    sce_espr_on             0, 3354, 0, 8192, 100, -15000, -17100, 0
    sleep                   10, 5
    sce_espr_on             0, 3354, 0, 6144, 99, -15000, -15100, 0
    sleep                   10, 5
    sce_espr_on             0, 3354, 0, 4096, 199, -15000, -19100, 0
    sleep                   10, 20
    evt_end                 0

.proc main_1A

off_2E66:
    sce_espr3d_on           0, 1286, 0, 4096, -15600, -19900, -15400, 0, 1024, 0, 0
    sleep                   10, 20
    sce_espr3d_on           0, 1286, 0, 8192, -15600, -19900, -15400, 600, 1024, 0, 0
    se_on                   2, 261, 0, -15600, -19900, -15400
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 12288, -15600, -19900, -15400, 20, 1024, 0, 0
    sleep                   10, 20
    sce_espr3d_on           0, 1286, 0, 8192, -15600, -19900, -15400, 600, 1024, 0, 0
    se_on                   2, 261, 0, -15600, -19900, -15400
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 12288, -15600, -19900, -15400, 2048, 1024, 0, 0
    sleep                   10, 20
    goto                    255, 255, 0, off_2E66
    evt_end                 0

.proc main_1B

off_2F08:
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  150, 3, 0, 1, 0
    nop_8c                  0, 100, 50, 5, 0, 4, 0
    nop_8c                  0, 50, 0, 16, 0, 9, 0
    set                     FG_STATUS, 28, 1
    sleep                   10, 20
    set                     FG_STATUS, 28, 0
    sce_espr3d_on           0, 25, 0, 15616, -19307, -28500, -13300, 0, 0, 1024, 0
    sleep                   10, 3
    sce_espr3d_on           0, 25, 0, 15616, -19307, -28500, -13300, 0, 0, 1024, 0
    sleep                   10, 4
    sce_espr3d_on           0, 25, 0, 11520, -19307, -28500, -13300, 0, 0, 1024, 0
    nop_8b                  150, 3, 0, 1, 0
    nop_8c                  0, 150, 50, 5, 0, 4, 0
    nop_8c                  0, 50, 0, 20, 0, 9, 0
    set                     FG_STATUS, 28, 1
    sleep                   10, 20
    set                     FG_STATUS, 28, 0
    sce_espr3d_on           0, 25, 0, 11520, -18307, -29500, -15300, 0, 0, 1024, 0
    sleep                   10, 5
    sce_espr3d_on           0, 25, 0, 11520, -18307, -30500, -14300, 0, 0, 1024, 0
    sleep                   10, 5
    sce_espr3d_on           0, 25, 0, 15616, -18307, -30500, -14300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 25, 0, 15616, -18307, -30500, -14300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 25, 0, 19712, -18307, -28500, -17300, 0, 0, 1024, 0
    sleep                   10, 5
    sce_espr3d_on           0, 25, 0, 15616, -18307, -28500, -17300, 0, 0, 1024, 0
    sleep                   10, 2
    nop_8a                  0, 1, 0, 0, 0
    nop_8b                  200, 2, 0, 1, 0
    nop_8c                  0, 150, 50, 3, 0, 3, 0
    nop_8c                  0, 50, 0, 15, 0, 6, 0
    set                     FG_STATUS, 28, 1
    sleep                   10, 10
    set                     FG_STATUS, 28, 0
    sleep                   10, 5
    set                     FG_STATUS, 28, 1
    sleep                   10, 2
    set                     FG_STATUS, 28, 0
    sce_espr3d_on           0, 25, 0, 19712, -19307, -30500, -14300, 0, 0, 1024, 0
    sleep                   10, 2
    sce_espr3d_on           0, 25, 0, 15616, -19307, -30500, -14300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 25, 0, 11520, -19307, -30500, -14300, 0, 0, 1024, 0
    sleep                   10, 5
    goto                    255, 255, 0, off_2F08
    evt_end                 0

.proc main_1C

off_30C6:
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -26800, -16300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -22800, -15300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -22800, -11300
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 40192, -19007, -25000, -11300, 0, 0, 0, 0
    se_on                   2, 261, 0, -19307, -25000, -11300
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_1F
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -22000, -14300, 0, 0, 1024, 0
    sce_espr3d_on           0, 1286, 0, 23808, -19107, -24000, -18300, 0, 0, 1024, 0
    se_on                   2, 277, 0, -19307, -24000, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19207, -22000, -17300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -24000, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -20000, -16300, 0, 1024, 1024, 0
    se_on                   2, 288, 0, -19307, -24000, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 15616, -19407, -19000, -15300, 0, 1024, 1024, 0
    sleep                   10, 6
    evt_exec                255, I_GOSUB, main_1F
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -26800, -12300, 0, 0, 600, 0
    se_on                   2, 277, 0, -19307, -26800, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 40192, -18307, -27800, -13300, 0, 0, 600, 0
    se_on                   2, 261, 0, -19307, -26800, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 40192, -17307, -28800, -14300, 0, 0, 600, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -21000, -11300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -21000, -11300
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_1F
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -23800, -15300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 40192, -19107, -26800, -12300, 0, 0, 0, 0
    se_on                   2, 277, 0, -19307, -26800, -11300
    sleep                   10, 15
    evt_exec                255, I_GOSUB, main_1F
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -20500, -15300, 0, 0, 1024, 0
    se_on                   2, 288, 0, -19307, -20500, -11300
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -21500, -11300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -21500, -11300
    sleep                   10, 5
    sce_espr3d_on           0, 1286, 0, 40192, -19207, -23800, -16300, 0, 0, 600, 0
    se_on                   2, 261, 0, -19307, -23800, -11300
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -26800, -13300, 0, 0, 0, 0
    se_on                   2, 277, 0, -19307, -26800, -11300
    sleep                   10, 5
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -21500, -14300, 0, 0, 1024, 0
    evt_exec                255, I_GOSUB, main_1F
    sce_espr3d_on           0, 1286, 0, 40192, -19107, -24000, -12300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -24000, -11300
    sleep                   10, 20
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -26000, -15300, 0, 0, 0, 0
    se_on                   2, 261, 0, -19307, -26000, -11300
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -21500, -16300, 0, 0, 1024, 0
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -20500, -16300, 0, 0, 1024, 0
    se_on                   2, 277, 0, -19307, -20500, -11300
    sleep                   10, 2
    evt_exec                255, I_GOSUB, main_1F
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -21500, -15300, 0, 0, 1024, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -23500, -14300, 0, 0, 1024, 0
    se_on                   2, 288, 0, -19307, -20500, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -25500, -13300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -20500, -11300
    sleep                   10, 2
    evt_exec                255, I_GOSUB, main_1F
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -27500, -13300, 0, 0, 1024, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -29500, -11300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -20500, -11300
    sleep                   10, 2
    goto                    255, 255, 0, off_30C6
    evt_end                 0

.proc main_1D
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26800, -11300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -22800, -11300, 0, 0, 1024, 0
    se_on                   2, 277, 0, -19307, -22800, -11300
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19007, -25000, -11300, 0, 0, 0, 0
    sleep                   10, 5
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -22000, -11300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -22000, -11300
    sleep                   10, 5
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26800, -11300, 0, 0, 600, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -21000, -11300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -23800, -11300, 0, 0, 1024, 0
    se_on                   2, 277, 0, -19307, -23800, -11300
    sleep                   10, 20
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26800, -11300, 0, 0, 600, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19107, -26800, -11300, 0, 0, 0, 0
    se_on                   2, 261, 0, -19307, -26800, -11300
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -20500, -11300, 0, 0, 1024, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -21500, -11300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -20500, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -22500, -11300, 0, 0, 1024, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -23500, -11300, 0, 0, 1024, 0
    se_on                   2, 277, 0, -19307, -20500, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -24500, -11300, 0, 0, 1024, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -25500, -11300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -20500, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26500, -11300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19207, -23800, -11300, 0, 0, 600, 0
    sleep                   10, 20
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26800, -11300, 0, 0, 0, 0
    se_on                   2, 261, 0, -19307, -26800, -11300
    sleep                   10, 5
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -21500, -11300, 0, 0, 1024, 0
    sleep                   10, 5
    sce_espr3d_on           0, 1286, 0, 23808, -19107, -24000, -11300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -24000, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19207, -23000, -11300, 0, 0, 1024, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -22000, -11300, 0, 0, 1024, 0
    se_on                   2, 277, 0, -19307, -24000, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19407, -21000, -11300, 0, 0, 1024, 0
    sleep                   10, 6
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26000, -11300, 0, 0, 0, 0
    se_on                   2, 261, 0, -19307, -26000, -11300
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -21500, -11300, 0, 0, 1024, 0
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26800, -11300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -26800, -11300
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -22800, -11300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19007, -25000, -11300, 0, 0, 0, 0
    se_on                   2, 288, 0, -19307, -25000, -11300
    sleep                   10, 5
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -22000, -11300, 0, 0, 1024, 0
    sleep                   10, 5
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26800, -11300, 0, 0, 600, 0
    se_on                   2, 277, 0, -19307, -26800, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -25800, -11300, 0, 0, 600, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -24800, -11300, 0, 0, 600, 0
    se_on                   2, 288, 0, -19307, -26800, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -23800, -11300, 0, 0, 600, 0
    sleep                   10, 24
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -21000, -11300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -21000, -11300
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -23800, -11300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19107, -26800, -11300, 0, 0, 0, 0
    se_on                   2, 261, 0, -19307, -26800, -11300
    sleep                   10, 20
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -20500, -11300, 0, 0, 1024, 0
    se_on                   2, 277, 0, -19307, -20500, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -21500, -11300, 0, 0, 1024, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -22500, -11300, 0, 0, 1024, 0
    se_on                   2, 288, 0, -19307, -20500, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -23500, -11300, 0, 0, 1024, 0
    sleep                   10, 24
    sce_espr3d_on           0, 1286, 0, 23808, -19207, -23800, -11300, 0, 0, 600, 0
    se_on                   2, 261, 0, -19307, -23800, -11300
    sleep                   10, 20
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26800, -11300, 0, 0, 0, 0
    sleep                   10, 5
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -21500, -11300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -21500, -11300
    sleep                   10, 5
    sce_espr3d_on           0, 1286, 0, 23808, -19107, -24000, -11300, 0, 0, 1024, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19207, -23000, -11300, 0, 0, 1024, 0
    se_on                   2, 277, 0, -19307, -24000, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -22000, -11300, 0, 0, 1024, 0
    sleep                   10, 26
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26000, -11300, 0, 0, 0, 0
    se_on                   2, 288, 0, -19307, -26000, -11300
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -21500, -11300, 0, 0, 1024, 0
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26800, -11300, 0, 0, 600, 0
    se_on                   2, 261, 0, -19307, -26800, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -25800, -11300, 0, 0, 600, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -24800, -11300, 0, 0, 600, 0
    se_on                   2, 261, 0, -19307, -26800, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -23800, -11300, 0, 0, 600, 0
    sleep                   10, 24
    sce_espr3d_on           0, 1286, 0, 23808, -19207, -23800, -11300, 0, 0, 600, 0
    se_on                   2, 261, 0, -19307, -23800, -11300
    sleep                   10, 20
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -26800, -11300, 0, 0, 0, 0
    sleep                   10, 5
    evt_end                 0

.proc main_1E
    sce_espr3d_on           0, 1286, 0, 4096, -15600, -19900, -15400, 0, 1024, 0, 0
    se_on                   2, 261, 0, -15600, -19900, -15400
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 8192, -15600, -19900, -15400, 600, 1024, 0, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 12288, -15600, -19900, -15400, 20, 1024, 0, 0
    se_on                   2, 261, 0, -15600, -19900, -15400
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 16384, -15600, -19900, -15400, 0, 1024, 0, 0
    se_on                   2, 261, 0, -15600, -19900, -15400
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 16384, -15600, -19900, -15400, 600, 1024, 0, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 12288, -15600, -19900, -15400, 20, 1024, 0, 0
    sleep                   10, 2
    for                     0, off_3CD0, 3
    sce_espr3d_on           0, 1286, 0, 8192, -15600, -19900, -15400, 0, 1024, 0, 0
    sleep                   10, 1
    sce_espr3d_on           0, 1286, 0, 12288, -15600, -19900, -15400, 600, 1024, 0, 0
    se_on                   2, 261, 0, -15600, -19900, -15400
    sleep                   10, 1
    sce_espr3d_on           0, 1286, 0, 16384, -15600, -19900, -15400, 20, 1024, 0, 0
    sleep                   10, 1
    sce_espr3d_on           0, 1286, 0, 20480, -15600, -19900, -15400, 0, 1024, 0, 0
    se_on                   2, 261, 0, -15600, -19900, -15400
    sleep                   10, 1
    sce_espr3d_on           0, 1286, 0, 20480, -15600, -19900, -15400, 600, 1024, 0, 0
    sleep                   10, 1
    sce_espr3d_on           0, 1286, 0, 16384, -15600, -19900, -15400, 20, 1024, 0, 0
    se_on                   2, 261, 0, -15600, -19900, -15400
    sleep                   10, 1
    next                    0

off_3CD0:
    for                     0, off_3E58, 2
    sce_espr3d_on           0, 1286, 0, 23808, -16561, -18000, -15485, 0, 1020, 24, 0
    sleep                   10, 1
    sce_espr3d_on           0, 1286, 0, 23808, -17561, -19000, -14485, 0, 1020, 24, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -20000, -16485, 0, 1020, 24, 0
    se_on                   2, 261, 0, -15561, -20000, -17485
    sleep                   10, 1
    sce_espr3d_on           0, 1286, 0, 23808, -13561, -21000, -14485, 0, 1020, 24, 0
    se_on                   2, 261, 0, -15561, -21000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -18561, -22000, -16485, 0, 1020, 24, 0
    sleep                   10, 1
    sce_espr3d_on           0, 1286, 0, 23808, -21561, -23000, -15485, 0, 1020, 24, 0
    se_on                   2, 261, 0, -15561, -23000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -12561, -24000, -17485, 0, 1020, 24, 0
    sleep                   10, 1
    sce_espr3d_on           0, 1286, 0, 23808, -16561, -25000, -14485, 0, 1020, 24, 0
    se_on                   2, 261, 0, -15561, -25000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -26000, -15485, 0, 1020, 24, 0
    se_on                   2, 261, 0, -15561, -26000, -17485
    sleep                   10, 1
    sce_espr3d_on           0, 1286, 0, 23808, -16561, -27000, -14485, 0, 1020, 24, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -28000, -15485, 0, 1020, 24, 0
    sleep                   10, 1
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -29000, -15485, 0, 1020, 24, 0
    se_on                   2, 261, 0, -15561, -29000, -17485
    sleep                   10, 2
    next                    0

off_3E58:
    evt_end                 0

.proc main_1F
    sce_fade_set            0, 1, 7, 255, 127
    sce_fade_adjust         0, 0, 32
    evt_next
    nop
    sce_fade_adjust         0, 0, 24
    evt_next
    nop
    sce_fade_adjust         0, 0, 22
    evt_next
    nop
    sce_fade_adjust         0, 0, 0
    evt_next
    nop
    sce_fade_adjust         0, 0, 20
    evt_next
    nop
    sce_fade_adjust         0, 0, 18
    evt_next
    nop
    sce_fade_adjust         0, 255, 255
    evt_end                 0
    db                      0x04, 0x05
