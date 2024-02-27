.version 2

.init
.proc init
    if                      0, off_0FF2
    ck                      FG_STATUS, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_0FF2:
    if                      0, off_1000
    ck                      FG_COMMON, 254, 1
    set                     FG_SCENARIO, 97, 0
    endif
    nop

off_1000:
    set                     FG_COMMON, 88, 1
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -26596, -27804, 2560, 1300, -24972, -5400, -13739, 552, 2, 3, 5, 3, 38, 3, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8296, -22004, 2640, 1370, -16210, 0, -26018, -5184, 3, 2, 0, 0, 31, 0, 0, 0, UNLOCKED, 0
    mizu_div_set            2
    obj_model_set           ID_OBJ_0, 1, 130, 4, 4, 0, 12, 10, 26, -5350, -300, -26800, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_6, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -19482, -27994, 16000, 7500, 212, 254, 0, 0, 0, 0
    aot_set                 ID_AOT_8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18696, -26554, 2040, 5250, ID_MSG_7, 0, 0, 0, 255, 255
    evt_end                 0
    db                      0xDF, 0x8F

.main
.proc main
    if                      0, off_10DC
    ck                      FG_STATUS, F_BONUS, 1
    gosub                   main_15
    evt_end                 0
    endif
    nop

off_10DC:
    if                      0, off_10EA
    ck                      FG_SCENARIO, 107, 1
    set                     FG_STATUS, 3, 1
    endif
    nop

off_10EA:
    set                     FG_SCENARIO, 107, 0
    aot_set                 ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -26596, -27804, 2560, 1300, 255, 0, I_GOSUB, main_02, 0, 0
    aot_set                 ID_AOT_7, SCE_NORMAL, SAT_PL | SAT_UNDER, 4, 0, -28182, -27994, 12800, 11600, 0, 0, 0, 0, 0, 0
    if                      0, off_114C
    ck                      FG_SCENARIO, 97, 0
    aot_set                 ID_AOT_5, SCE_EVENT, SAT_PL | SAT_UNDER, 4, 0, -27086, -22444, 4560, 4400, 255, 0, I_GOSUB, main_06, 0, 0
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_08, 1, SBK_31, 0, 255, -15408, -1800, -19195, 0, 0, 0
    else                    0, off_119C

off_114C:
    if                      0, off_119A
    ck                      FG_STATUS, 3, 1
    if                      0, off_1178
    cmp                     0, V_CUT, CMP_EQ, 0
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04 | AI_08, 1, SBK_31, 0, 255, -15408, -1800, -19195, 0, 0, 0
    else                    0, off_1190

off_1178:
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04 | AI_08, 0, SBK_31, 0, 255, -6594, 0, -22736, 1672, 0, 0
    nop
    nop

off_1190:
    set                     FG_ROOM, 0, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_119A:
    nop
    nop

off_119C:
    gosub                   main_11
    evt_end                 0

.proc aot
    if                      0, off_11AE
    ck                      FG_STATUS, F_BONUS, 1
    gosub                   main_14
    evt_end                 0
    endif
    nop

off_11AE:
    gosub                   main_14
    evt_end                 0

.proc main_02
    if                      0, off_11C4
    ck                      FG_ROOM, 0, 1
    set                     FG_STATUS, 3, 0
    set                     FG_SCENARIO, 107, 1
    endif
    nop

off_11C4:
    aot_on                  ID_AOT_1
    evt_end                 0

.proc main_03
    sce_bgmtbl_set          0, 4, 3, 65295, 0
    evt_end                 0

.proc main_04
    sce_bgmtbl_set          0, 4, 3, 65319, 0
    evt_end                 0

.proc main_05

off_11DC:
    evt_next
    work_set                WK_PLAYER, 0
    if                      0, off_1250
    member_cmp              0, 12, 3, 248, 248
    if                      0, off_124C
    ck                      FG_ROOM, 1, 0
    work_set                WK_SPLAYER, 0

off_11F5:
    nop
    if                      0, off_1208
    member_cmp              0, 2, 5, 1, 0
    goto                    1, 255, 0, off_1228
    endif
    nop

off_1208:
    if                      0, off_1220
    member_cmp              0, 3, 5, 8, 0
    member_cmp              0, 3, 5, 9, 0
    goto                    1, 255, 0, off_1228
    endif
    nop

off_1220:
    evt_next
    nop
    goto                    1, 255, 0, off_11F5

off_1228:
    splc_sce
    evt_next
    plc_neck                5, 1, 0, 0, 96, 96
    plc_dest                0, 4, 35, -14551, -18850
    gosub                   main_10
    plc_dest                0, 9, 35, -23508, -18850
    set                     FG_ROOM, 1, 1
    endif
    nop

off_124C:
    else                    0, off_1264

off_1250:
    if                      0, off_1262
    ck                      FG_ROOM, 1, 1
    work_set                WK_SPLAYER, 0
    splc_ret
    set                     FG_ROOM, 1, 0
    endif
    nop

off_1262:
    nop
    nop

off_1264:
    goto                    255, 255, 0, off_11DC
    evt_end                 0

.proc main_06
    set                     FG_STATUS, 27, 1
    set                     FG_STOP, 7, 1
    sca_id_set              9, 0, 0
    set                     FG_SCENARIO, 97, 1
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    gosub                   main_08
    gosub                   main_09
    gosub                   main_0A
    gosub                   main_0B
    gosub                   main_0C
    gosub                   main_0D
    gosub                   main_0E
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -15139, -1800, -20191
    plc_ret
    work_set                WK_SPLAYER, 0
    pos_set                 0, -13866, -1800, -18874
    splc_ret
    set                     FG_ROOM, 0, 1
    nop
    evt_exec                255, I_GOSUB, main_05
    cut_chg                 1
    sca_id_set              9, 0, 16
    cut_auto                1
    gosub                   main_03
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_07
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -14453, -7500, -19213
    dir_set                 0, 0, 1024, 0
    plc_motion              0, 25, 0
    save                    V_05, 0
    for                     0, off_130A, 15
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    copy                    V_05, V_TEMP
    nop
    next                    0

off_130A:
    plc_motion              0, 24, 0
    for                     0, off_1332, 2
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    copy                    V_05, V_TEMP
    nop
    next                    0

off_1332:
    se_on                   2, 29, 0, -14453, -1800, -19213
    pos_set                 0, -14453, -1700, -19213
    sleep                   10, 10
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    sleep                   10, 25
    pos_set                 0, -14453, -1700, -19213
    evt_end                 0

.proc main_08
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -14453, -7500, -19213
    dir_set                 0, 0, 384, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 96, 96
    sleep                   10, 5
    plc_dest                0, 9, 32, -17202, -19136
    gosub                   main_0F
    cut_chg                 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -26213, -7200, -21364
    se_on                   2, 12, 0, -14453, -7500, -19213
    sce_espr_on             0, 25, 0, 4096, -14453, -7500, -19213, 0
    sleep                   10, 3
    sce_espr_on             0, 25, 0, 8192, -14353, -7500, -19213, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 4096, -14553, -7500, -19213, 0
    sleep                   10, 2
    sce_espr_on             0, 25, 0, 4096, -14453, -7500, -19213, 0
    sleep                   10, 20
    gosub                   main_07
    cut_chg                 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -24044, -20442
    gosub                   main_0F
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 7
    xa_on                   0, 49
    sleep                   10, 2
    message_on              0, ID_MSG_0, 0, 0, 0
    sleep                   10, 8
    sleep                   10, 10
    wsleep
    wsleeping
    cut_chg                 1
    work_set                WK_SPLAYER, 0
    nop
    sleep                   10, 10
    plc_dest                0, 9, 35, -17202, -19136
    plc_rot                 0, 128
    plc_neck                5, 1, 0, 0, 96, 96
    gosub                   main_10
    wsleep
    wsleeping
    sleep                   10, 30
    cut_chg                 0
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 18, 32, -21995, -18915
    sleep                   10, 40
    cut_chg                 1
    sleep                   10, 10
    work_set                WK_SPLAYER, 0
    plc_motion              0, 23, 0
    nop
    plc_neck                2, 0, 320, 0, 32, 32
    gosub                   main_0F
    evt_end                 0

.proc main_09
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -13761, -1800, -19992
    dir_set                 0, 0, 2341, 0
    cut_chg                 4
    evt_next
    work_set                WK_PLAYER, 0
    plc_dest                0, 4, 32, -15453, -19996
    plc_neck                5, 2, 0, 0, 96, 96
    xa_on                   0, 50
    sleep                   10, 2
    message_on              0, ID_MSG_1, 0, 0, 0
    gosub                   main_0F
    work_set                WK_PLAYER, 0
    nop
    dir_set                 0, 0, 179, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 17, 0
    plc_cnt                 10
    evt_next
    dir_set                 0, 0, 63, 0
    sleep                   10, 25
    sleep                   10, 10
    plc_motion              0, 16, 0
    plc_cnt                 10
    sleep                   10, 20
    plc_motion              0, 15, 0
    plc_cnt                 10
    sleep                   10, 10
    plc_motion              0, 15, 136
    sleep                   10, 5
    plc_motion              0, 15, 8
    plc_cnt                 10
    sleep                   10, 5
    plc_motion              0, 19, 0
    plc_cnt                 5
    sleep                   10, 25
    plc_motion              0, 17, 0
    plc_cnt                 10
    sleep                   10, 20
    plc_motion              0, 23, 0
    plc_cnt                 10
    wsleep
    wsleeping
    evt_end                 0

.proc main_0A
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -15878, -1800, -18971
    dir_set                 0, 0, 63, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -14785, -1800, -19742
    dir_set                 0, 0, 2341, 0
    cut_chg                 5
    evt_next
    nop
    xa_on                   0, 55
    message_on              0, ID_MSG_2, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 0
    nop
    sleep                   10, 25
    plc_motion              0, 17, 0
    plc_cnt                 5
    sleep                   10, 25
    plc_motion              0, 15, 0
    sleep                   10, 20
    plc_motion              0, 16, 0
    plc_cnt                 7
    sleep                   10, 23
    plc_motion              0, 17, 0
    plc_cnt                 10
    sleep                   10, 23
    plc_motion              0, 23, 0
    plc_cnt                 10
    sleep                   10, 2
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 0, 64, 64
    wsleep
    wsleeping
    evt_end                 0

.proc main_0B
    xa_on                   0, 51
    sleep                   10, 1
    message_on              0, ID_MSG_3, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 30
    plc_motion              0, 16, 128
    sleep                   10, 10
    plc_motion              0, 16, 0
    plc_cnt                 20
    sleep                   10, 10
    plc_neck                2, 0, 0, -120, 16, 16
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 16, 16
    sleep                   10, 15
    plc_motion              0, 23, 0
    plc_cnt                 10
    wsleep
    wsleeping
    evt_end                 0

.proc main_0C
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -15453, -1800, -19996
    dir_set                 0, 0, 63, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -13761, -1800, -19992
    dir_set                 0, 0, 2341, 0
    cut_chg                 4
    evt_next
    work_set                WK_PLAYER, 0
    plc_neck                2, 0, 320, 1024, 32, 32
    plc_motion              0, 19, 0
    sleep                   10, 10
    plc_neck                2, 0, -320, 1024, 32, 32
    sleep                   10, 10
    plc_neck                2, 0, 320, 1024, 32, 32
    sleep                   10, 20
    xa_on                   0, 52
    sleep                   10, 2
    plc_neck                5, 2, 0, 0, 96, 96
    message_on              0, ID_MSG_4, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 15
    plc_neck                2, 0, -200, 128, 32, 32
    sleep                   10, 5
    plc_neck                5, 2, 0, 0, 32, 32
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 0
    plc_cnt                 10
    nop
    sleep                   10, 15
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                5, 2, 0, 0, 32, 32
    sleep                   10, 10
    plc_motion              0, 18, 0
    plc_cnt                 10
    sleep                   10, 10
    plc_motion              0, 16, 0
    plc_cnt                 5
    sleep                   10, 32
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    plc_cnt                 5
    nop
    sleep                   10, 20
    work_set                WK_SPLAYER, 0
    work_set                WK_PLAYER, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_0D
    xa_on                   0, 53
    sleep                   10, 2
    message_on              0, ID_MSG_5, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 23, 0
    plc_cnt                 14
    nop
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_motion              0, 20, 0
    plc_cnt                 5
    sleep                   10, 30
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 128, 64, 10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 32, 32
    plc_motion              0, 16, 0
    plc_cnt                 5
    sleep                   10, 30
    plc_motion              0, 15, 0
    plc_cnt                 5
    sleep                   10, 27
    plc_neck                2, 0, -200, 128, 32, 32
    sleep                   10, 5
    plc_neck                5, 2, 0, 0, 32, 32
    sleep                   10, 13
    plc_motion              0, 16, 0
    plc_cnt                 5
    sleep                   10, 5
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 32, 32
    sleep                   10, 10
    wsleep
    wsleeping
    evt_end                 0

.proc main_0E
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 128
    work_set                WK_PLAYER, 0
    pos_set                 0, -16502, -1800, -18871
    dir_set                 0, 0, 31, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -13866, -1900, -18874
    dir_set                 0, 0, 2053, 0
    cut_chg                 7
    evt_next
    nop
    xa_on                   0, 54
    sleep                   10, 2
    message_on              0, ID_MSG_6, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 16, 16
    sleep                   10, 35
    plc_motion              0, 19, 0
    plc_cnt                 5
    sleep                   10, 20
    plc_neck                2, 0, 50, -100, 20, 20
    sleep                   10, 5
    plc_neck                5, 1, 0, 0, 16, 16
    sleep                   10, 20
    plc_motion              0, 23, 0
    sleep                   10, 30
    wsleep
    wsleeping
    evt_end                 0

.proc main_0F
    do                      0, off_1830
    evt_next
    nop
    edwhile                 off_1830
    ck                      FG_ROOM, 32, 0

off_1830:
    evt_end                 0

.proc main_10
    do                      0, off_183E
    evt_next
    nop
    edwhile                 off_183E
    ck                      FG_ROOM, 35, 0

off_183E:
    evt_end                 0

.proc main_11
    save                    V_04, 16
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 1, 64
    gosub                   main_14
    aot_set                 ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -26596, -27804, 2560, 1300, 255, 0, I_GOSUB, main_12, 0, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8296, -22004, 2640, 1370, 255, 0, I_GOSUB, main_13, 0, 0
    evt_end                 0

.proc main_12
    aot_on                  ID_AOT_3
    evt_end                 0

.proc main_13
    aot_on                  ID_AOT_4
    evt_end                 0

.proc main_14
    if                      0, off_1908
    work_copy               4, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    switch                  26, off_1902
    case                    0, off_189E, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 64
    break                   0

off_189E:
    case                    0, off_18AC, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_18AC:
    case                    0, off_18BA, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_18BA:
    case                    0, off_18C8, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_18C8:
    case                    0, off_18D6, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_18D6:
    case                    0, off_18E4, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_18E4:
    case                    0, off_18F2, 6
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_18F2:
    case                    0, off_1900, 7
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_1900:
    eswitch                 0

off_1902:
    copy                    V_04, V_CUT
    nop
    endif
    nop

off_1908:
    evt_end                 0

.proc main_15
    if                      0, off_1918
    ck                      FG_COMMON, 254, 1
    set                     FG_COMMON, 174, 0
    endif
    nop

off_1918:
    save                    V_04, 16
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -26596, -27804, 2560, 1300, -24972, -5400, -13739, 552, 2, 3, 5, 3, 38, 3, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8296, -22004, 2640, 1370, ID_MSG_8, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -26596, -27804, 2560, 1300, 255, 0, I_GOSUB, main_12, 0, 0
    mizu_div_set            2
    obj_model_set           ID_OBJ_0, 1, 130, 4, 4, 0, 12, 10, 26, -5350, -300, -26800, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_6, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -19482, -27994, 16000, 7500, 212, 254, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_19D8
    ck                      FG_COMMON, 174, 0
    evt_exec                255, I_GOSUB, main_18
    set                     FG_COMMON, 174, 1
    endif
    nop

off_19D8:
    evt_end                 0

.proc main_16
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 0
    aot_on                  ID_AOT_3
    evt_end                 0

.proc main_17
    for                     0, off_1AB4, 4
    sce_espr_on             0, 5376, 128, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 129, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 130, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 131, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 132, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 133, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 134, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 135, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 136, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 137, 4096, 0, 0, 0, 0
    sleep                   10, 2
    next                    0

off_1AB4:
    sce_espr_on             0, 5376, 128, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 2
    sce_espr_on             0, 5376, 130, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 2
    sce_espr_on             0, 5376, 132, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 2
    sce_espr_on             0, 5376, 134, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 2
    sce_espr_on             0, 5376, 136, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 2
    sce_espr_on             0, 5376, 138, 4096, 0, 0, 0, 0
    sleep                   10, 2
    evt_end                 0

.proc main_18
    set                     FG_STATUS, 27, 1
    set                     FG_STOP, 7, 1
    evt_next
    set                     FG_STOP, 7, 1
    cut_chg                 3
    work_set                WK_PLAYER, 0
    member_set              M_FLOOR, 0
    pos_set                 0, -7435, 0, -24500
    dir_set                 0, 0, -1904, 0
    if                      0, off_1B78
    ck                      FG_SYSTEM, 27, 0
    set                     FG_SYSTEM, 27, 1
    gosub                   main_19
    endif
    nop

off_1B78:
    gosub                   main_1A
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    set                     FG_KEY, 9, 1
    set                     FG_KEY, 4, 1
    set                     FG_MAP_I, 2, 1
    set                     FG_MAP_I, 3, 1
    set                     FG_MAP_I, 4, 1
    set                     FG_MAP_I, 5, 1
    set                     FG_MAP_I, 6, 1
    set                     FG_MAP_I, 7, 1
    set                     FG_MAP_I, 8, 1
    set                     FG_MAP_C, 13, 1
    unk                     132, 4
    sleep                   10, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    set                     FG_STATUS, 4, 1
    save                    V_23, 0
    gosub                   main_04
    evt_end                 0

.proc main_19
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 80
    plc_cnt                 11
    evt_next
    plc_stop
    nop
    sleep                   10, 60
    plc_motion              0, 16, 0
    plc_cnt                 11
    sleep                   10, 2
    plc_stop
    plc_motion              0, 16, 128
    plc_cnt                 37
    nop
    sleep                   10, 2
    plc_stop
    nop
    sleep                   10, 30
    plc_motion              0, 16, 0
    plc_cnt                 11
    sleep                   10, 2
    plc_stop
    plc_motion              0, 16, 128
    plc_cnt                 37
    nop
    sleep                   10, 2
    plc_stop
    nop
    sleep                   10, 10
    plc_motion              0, 16, 0
    plc_cnt                 11
    sleep                   10, 3
    plc_stop
    plc_motion              0, 16, 128
    plc_cnt                 37
    nop
    sleep                   10, 2
    plc_stop
    nop
    sleep                   10, 30
    plc_motion              0, 16, 80
    evt_exec                255, I_GOSUB, main_17
    se_on                   2, 11, 0, -7435, -3600, -24500
    plc_cnt                 11
    sleep                   10, 20
    sleep                   10, 10
    sleep                   10, 10
    plc_neck                2, 0, 0, 1024, 32, 32
    sleep                   10, 40
    plc_motion              1, 6, 144
    sleep                   10, 50
    plc_motion              0, 18, 0
    sleep                   10, 60
    plc_motion              0, 18, 128
    plc_cnt                 20
    sleep                   10, 60
    plc_neck                2, 0, 0, 0, 12, 12
    sleep                   10, 40
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 40
    plc_neck                2, 0, -1024, 0, 32, 32
    sleep                   10, 40
    cut_chg                 2
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 60
    plc_neck                2, 0, -1024, 0, 32, 32
    sleep                   10, 60
    cut_chg                 3
    plc_neck                2, 0, 0, 128, 12, 12
    sleep                   10, 60
    evt_end                 0

.proc main_1A
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 0, 96, 96
    sleep                   10, 10
    plc_neck                2, 0, -1024, 128, 32, 32
    sleep                   10, 5
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    super_set               0, 64, 142, 0, 242, 0, 832, 2048, -68
    work_set                WK_PLAYER, 0
    plc_motion              0, 17, 0
    nop
    sleep                   10, 5
    plc_motion              0, 17, 128
    plc_cnt                 15
    sleep                   10, 5
    plc_motion              0, 17, 0
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 15
    plc_motion              0, 15, 0
    plc_cnt                 10
    sleep                   10, 5
    se_on                   2, 10, 0, -7435, -3600, -24500
    sleep                   10, 5
    xa_on                   0, 56
    message_on              0, ID_MSG_9, 0, 0, 0
    evt_next
    nop
    wsleep
    wsleeping
    xa_on                   0, 57
    message_on              0, ID_MSG_10, 0, 0, 0
    plc_motion              0, 15, 128
    wsleep
    wsleeping
    plc_motion              0, 17, 128
    plc_cnt                 8
    sleep                   10, 14
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
