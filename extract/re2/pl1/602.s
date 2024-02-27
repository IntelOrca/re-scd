.version 2

.init
.proc init
    if                      0, off_0886
    ck                      FG_COMMON, 145, 1
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20476, -3492, 1410, 5080, -21113, 0, -23396, -2048, 5, 1, 0, 0, 39, 0, 0, 0, UNLOCKED, 0
    else                    0, off_089C

off_0886:
    aot_set                 ID_AOT_3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20476, -3492, 1410, 5080, ID_MSG_9, 0, 0, 0, 255, 255
    nop
    nop

off_089C:
    door_aot_se             ID_AOT_4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13436, -23732, 5900, 1080, -23437, -5400, -4400, 4712, 5, 3, 0, 3, 38, 0, 0, 0, UNLOCKED, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, -11282, 0, -583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 0, -10324, -18000, -9930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 0, -10214, 0, -15119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, 0, -18000, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, 0, -18000, 0
    evt_end                 0

.proc aot
    gosub                   main_05
    evt_end                 0

.proc main_02
    if                      0, off_0974
    cmp                     0, V_LAST_RDT, CMP_EQ, 1536
    evt_exec                255, I_GOSUB, main_06
    endif
    nop

off_0974:
    save                    V_06, 16
    gosub                   main_05
    if                      0, off_0998
    ck                      FG_COMMON, 145, 1
    aot_set                 ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20476, -3492, 1410, 5080, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_0998:
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13436, -23732, 5900, 1080, 255, 0, I_GOSUB, main_04, 0, 0
    evt_end                 0

.proc main_03
    aot_on                  ID_AOT_3
    evt_end                 0

.proc main_04
    aot_on                  ID_AOT_4
    evt_end                 0

.proc main_05
    if                      0, off_0A4E
    work_copy               6, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    switch                  26, off_0A48
    case                    0, off_09D6, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    break                   0

off_09D6:
    case                    0, off_09E4, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_09E4:
    case                    0, off_09F2, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_09F2:
    case                    0, off_0A00, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 64
    break                   0

off_0A00:
    case                    0, off_0A0E, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 64
    break                   0

off_0A0E:
    case                    0, off_0A1C, 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 20
    break                   0

off_0A1C:
    case                    0, off_0A2A, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    break                   0

off_0A2A:
    case                    0, off_0A38, 7
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_0A38:
    case                    0, off_0A46, 8
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_0A46:
    eswitch                 0

off_0A48:
    copy                    V_06, V_CUT
    nop
    endif
    nop

off_0A4E:
    evt_end                 0

.proc main_06
    evt_next
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    cut_chg                 3
    work_set                WK_PLAYER, 0
    pos_set                 0, -10105, -6000, -583
    dir_set                 0, 0, -1912, 0
    plc_motion              0, 15, 0
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_07
    save                    V_04, 0
    for                     0, off_0AA6, 10
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_04, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_0AA6:
    plc_motion              0, 16, 0
    se_on                   2, 29, 0, -10105, 0, -583
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  255, 5, 0, 0, 0
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_04, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_04, V_TEMP
    nop
    evt_next
    nop
    pos_set                 0, -10105, 0, -583
    sleep                   10, 25
    plc_neck                2, 0, 0, -1024, 96, 96
    sleep                   10, 23
    plc_motion              0, 17, 0
    sleep                   10, 30
    plc_neck                2, 0, 0, 128, 16, 16
    plc_motion              0, 17, 128
    sleep                   10, 20
    se_on                   2, 12, 0, -10214, 0, -15119
    sleep                   10, 10
    plc_neck                2, 0, 0, 0, 96, 96
    sleep                   10, 20
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 20
    plc_neck                2, 0, -1024, 0, 32, 32
    sleep                   10, 20
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 40
    plc_dest                0, 9, 32, -5000, -367
    plc_rot                 0, 200
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 40
    plc_neck                2, 0, 0, -1024, 32, 32
    sleep                   10, 40
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    evt_next
    movie_on                7
    evt_next
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_PROG0_VOL, 40, 64
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -5000, -367
    sleep                   10, 8
    plc_dest                0, 6, 32, -5000, -367
    sleep                   10, 30
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_07
    se_on                   2, 16, 0, -10105, -6000, -583
    sce_espr_on             0, 25, 0, 4096, -10105, -6000, -583, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 4096, -10105, -6000, -583, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 4096, -11105, -6000, -583, 0
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 4096, -11105, -6000, -583, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 4096, -9305, -6000, -1583, 0
    sleep                   10, 4
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -10805, -5700, -583
    dir_set                 0, 0, 0, 0
    save                    V_05, 0
    for                     0, off_0CA4, 9
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_Z_DIR, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_0CA4:
    for                     0, off_0CD6, 2
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 80
    member_set2             M_Z_DIR, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_0CD6:
    se_on                   2, 270, 0, -10805, -5700, -583
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  250, 5, 0, 0, 0
    nop_8c                  0, 200, 50, 10, 0, 5, 0
    member_set              M_Y_POS, 0
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 50
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 80
    member_set2             M_Z_DIR, V_TEMP
    nop
    evt_next
    nop
    save                    V_05, -320
    for                     0, off_0D5C, 6
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 50
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 80
    member_set2             M_Z_DIR, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_0D5C:
    for                     0, off_0D9C, 2
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 40
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 80
    member_set2             M_Z_DIR, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_0D9C:
    member_set              M_Z_DIR, 0
    member_set              M_Y_POS, 0
    evt_next
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 80
    member_set2             M_Z_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 10
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 0
    member_set2             M_Z_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 10
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 80
    member_set2             M_Z_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 10
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_Z_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 5
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 0
    member_set2             M_Z_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 5
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 40
    member_set2             M_Z_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 5
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 20
    member_set2             M_Z_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 2
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_set              M_Z_DIR, 0
    evt_end                 0

.proc main_09
    do                      0, off_0E8A
    evt_next
    nop
    edwhile                 off_0E8A
    ck                      FG_ROOM, 32, 0

off_0E8A:
    evt_end                 0
