.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11719, -6044, 2000, 1800, -15873, 0, -4733, 3464, 2, 8, 5, 0, 23, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_AUTO, 0, 0, -18619, -17544, 3000, 2800, -8880, -5400, -17056, 3072, 2, 9, 0, 3, 22, 5, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -17800, 0, -16450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_156C
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_1544
    ck                      FG_SCENARIO, 5, 0
    sce_em_set              0, ID_EM_0, ENEMY_CHIEF_IRONS_1, 0, AI_08, 0, SBK_0, 0, 255, -14578, 0, -5883, 152, 257, 8
    sce_em_set              0, ID_EM_1, ENEMY_G_EMBRYO, 1, AI_DEFAULT, 0, SBK_20, 0, 255, -30000, -30000, -30000, 0, 0, 0
    evt_exec                255, I_GOSUB, main_06
    else                    0, off_1560

off_1544:
    sce_em_set              0, ID_EM_0, ENEMY_CHIEF_IRONS_1, 0, AI_02 | AI_08, 0, SBK_0, 0, 255, -14421, 0, -15487, 643, 0, 0
    evt_exec                255, I_GOSUB, main_03
    nop
    nop

off_1560:
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Z_DIR, -1280
    else                    0, off_1620

off_156C:
    if                      0, off_15DE
    ck                      FG_SCENARIO, 5, 0
    sce_em_set              0, ID_EM_0, ENEMY_CHIEF_IRONS_2, 0, AI_08, 0, SBK_0, 0, 255, -14578, 0, -5883, 152, 257, 8
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    aot_set                 ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18619, -17544, 3000, 2000, 255, 0, I_GOSUB, main_0A, 0, 0
    evt_exec                255, I_GOSUB, main_09
    else                    0, off_161E

off_15DE:
    sce_em_set              0, ID_EM_0, ENEMY_CHIEF_IRONS_2, 0, AI_08, 0, SBK_0, 0, 255, -14421, 0, -15487, 474, 0, 0
    if                      0, off_1616
    ck                      FG_SCENARIO, 11, 0
    aot_set                 ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18619, -17544, 3000, 2000, 255, 0, I_GOSUB, main_0A, 0, 0
    gosub                   main_0C
    else                    0, off_161C

off_1616:
    evt_exec                255, I_GOSUB, main_0B
    nop
    nop

off_161C:
    nop
    nop

off_161E:
    nop
    nop

off_1620:
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11141, -15513, 1830, 2530, ITEM_ACIDROUNDS, 6, 201, ID_OBJ_3, IF_FLOOR
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -9836, -550, -13704, 0, -640, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1698
    ck                      FG_STATUS, 3, 1
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 0, SBK_32, 0, 255, -9923, 0, -6321, 928, 0, 0
    if                      0, off_1696
    cmp                     0, V_LAST_RDT, CMP_EQ, 777
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -15295, 0, -15272
    member_set              M_Y_DIR, -31
    endif
    nop

off_1696:
    endif
    nop

off_1698:
    if                      0, off_16AA
    ck                      FG_SCENARIO, 5, 1
    set                     FG_PBF03, 1, 0
    set                     FG_PBF03, 2, 0
    endif
    nop

off_16AA:
    set                     FG_PBF0B, 1, 0
    set                     FG_PBF0B, 2, 0
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    aot_set                 ID_AOT_6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18531, -14343, 1800, 4390, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 ID_AOT_8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14831, -12773, 1800, 2200, ID_MSG_1, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_9, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15001, -19363, 2600, 1700, 3, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11511, -18473, 3500, 1800, ID_MSG_4, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18619, -17544, 3000, 2800, 255, 0, I_GOSUB, main_05, 0, 0
    evt_end                 0

.proc main_03
    set                     FG_STATUS, 25, 1
    evt_next
    work_set                WK_ENEMY, ID_EM_0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    plc_motion              0, 0, 192
    evt_next
    plc_stop
    set                     FG_STATUS, 25, 0
    evt_end                 0

.proc main_04
    cut_chg                 4
    message_on              0, ID_MSG_2, 0, 255, 255
    evt_next
    cut_old
    evt_end                 0

.proc main_05
    message_on              0, ID_MSG_5, 0, 255, 255
    evt_next
    nop
    if                      0, off_175E
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_on                  ID_AOT_1
    endif
    nop

off_175E:
    evt_end                 0

.proc main_06
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_SCENARIO, 5, 1
    set                     FG_PBF03, 1, 0
    set                     FG_PBF03, 2, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    evt_exec                255, I_GOSUB, main_1C
    gosub                   main_16
    xa_on                   0, 11
    message_on              0, ID_MSG_18, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_PARTS_POS_Y, 3896
    plc_motion              0, 17, 20
    sleep                   10, 130
    member_set              M_PARTS_POS_Y, 4096
    plc_motion              12, 0, 20
    evt_exec                255, I_GOSUB, main_08
    evt_exec                255, I_GOSUB, main_07
    wsleep
    wsleeping
    evt_kill                9
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                0, 0, 0, 0, 128, 128
    xa_on                   0, 16
    message_on              0, ID_MSG_20, 0, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgmtbl_set          0, 0, 3, 255, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    se_on                   2, 271, 3, 0, 0, 0
    plc_motion              0, 19, 4
    sleep                   10, 30
    se_on                   2, 271, 3, 0, 0, 0
    sleep                   10, 30
    se_on                   2, 271, 3, 0, 0, 0
    plc_motion              10, 18, 0
    sleep                   10, 20
    se_on                   2, 271, 3, 0, 0, 0
    plc_flg                 0, 16
    sleep                   10, 40
    se_on                   2, 271, 3, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 9
    evt_next
    nop
    xa_on                   0, 17
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                0, 0, 0, 0, 60, 30
    plc_flg                 1, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, -15201
    member_set              M_SCE_FREE1, -16100
    sleep                   10, 100
    se_on                   3, 257, 259, 0, 0, 0
    sleep                   10, 50
    wsleep
    wsleeping
    sleep                   10, 7
    cut_chg                 11
    sleep                   10, 10
    se_on                   2, 267, 3, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 90
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -14421, 0, -15487
    cut_chg                 3
    cut_auto                1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_07
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_0
    nop
    speed_set               4, -4
    for                     0, off_18D8, 90
    add_speed
    evt_next
    next                    0

off_18D8:
    evt_end                 0

.proc main_08
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 50
    plc_motion              11, 1, 20
    speed_set               4, -8
    for                     0, off_18F8, 90
    member_set              M_Y_POS, 0
    add_speed
    evt_next
    next                    0

off_18F8:
    plc_stop
    nop
    member_set              M_Y_POS, 0
    evt_end                 0

.proc main_09
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_SCENARIO, 5, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    evt_exec                255, I_GOSUB, main_1C
    gosub                   main_16
    xa_on                   0, 11
    message_on              0, ID_MSG_18, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 2, 0
    nop
    sleep                   10, 30
    plc_motion              0, 2, 144
    sleep                   10, 90
    plc_motion              0, 3, 0
    sleep                   10, 30
    plc_motion              0, 3, 144
    sleep                   10, 30
    plc_motion              0, 5, 0
    sleep                   10, 20
    plc_motion              0, 4, 0
    sleep                   10, 30
    plc_motion              0, 6, 0
    se_on                   2, 266, 3, 0, 0, 0
    sleep                   10, 6
    work_set                WK_PLAYER, 0
    plc_motion              1, 1, 0
    nop
    sleep                   10, 6
    plc_stop
    nop
    wsleep
    wsleeping
    se_on                   2, 270, 3, 0, 0, 0
    sleep                   10, 6
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 6, 136
    nop
    sleep                   10, 7
    plc_neck                2, 0, -512, 0, 32, 32
    sleep                   10, 20
    plc_motion              0, 26, 16
    plc_neck                2, 0, 512, 0, 16, 16
    sleep                   10, 40
    xa_on                   0, 18
    plc_neck                2, 0, -512, 0, 30, 30
    sleep                   10, 40
    plc_neck                2, 0, 512, 0, 40, 40
    sleep                   10, 40
    wsleep
    wsleeping
    cut_chg                 10
    evt_kill                9
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                0, 0, 0, 0, 128, 128
    evt_next
    nop
    xa_on                   0, 13
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    evt_exec                255, I_GOSUB, main_13
    evt_exec                255, I_GOSUB, main_14
    evt_exec                255, I_GOSUB, main_15
    evt_exec                255, I_GOSUB, main_0D
    sleep                   10, 22
    wsleep
    wsleeping
    cut_chg                 3
    evt_next
    nop
    xa_on                   0, 14
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 60
    plc_motion              0, 15, 16
    sleep                   10, 60
    plc_motion              0, 18, 16
    plc_neck                4, 2, 0, 0, 32, 32
    sleep                   10, 65
    plc_motion              12, 3, 16
    sleep                   10, 25
    plc_motion              1, 1, 0
    sleep                   10, 6
    plc_stop
    nop
    wsleep
    wsleeping
    sleep                   10, 30
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -17800, 0, -16450
    member_set              M_Y_DIR, 384
    sleep                   10, 30
    wsleep
    wsleeping
    gosub                   main_0C
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_ROOM, 0, 1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_0A
    set                     FG_STOP, 7, 1
    set                     FG_SCENARIO, 11, 1
    cut_chg                 3
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 12
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_05, 0, 0
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  255, 20, 0, 0, 0
    nop_8b                  150, 20, 0, 20, 0
    evt_exec                255, I_GOSUB, main_0F
    sleep                   10, 3
    evt_exec                255, I_GOSUB, main_12
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgmtbl_set          0, 0, 3, 255, 0
    work_set                WK_PLAYER, 0
    plc_motion              10, 30, 0
    set                     FG_STATUS, 27, 1
    nop
    sleep                   10, 35
    set                     FG_PBF03, 1, 0
    set                     FG_PBF03, 2, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12766, 0, -17433
    member_set              M_Y_DIR, 2339
    cut_chg                 11
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 90
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13900, 0, -17180
    member_set              M_Y_DIR, 2339
    cut_chg                 3
    cut_auto                1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -11225, 0, -16465
    dir_set                 0, 0, -1472, 0
    evt_next
    work_set                WK_ENEMY, ID_EM_0
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 256
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    plc_motion              0, 12, 64
    plc_cnt                 11
    evt_next
    plc_stop
    evt_end                 0

.proc main_0C
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -16701, 3600, -16544
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 256
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -17800, 0, -16450
    member_set              M_Y_DIR, 384
    evt_end                 0

.proc main_0D
    work_set                WK_PLAYER, 0
    nop
    member_set              M_Y_DIR, 2243
    plc_motion              1, 1, 8
    sleep                   10, 4
    plc_stop
    nop
    evt_end                 0

.proc main_0E
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    save                    V_04, 450
    save                    V_05, 450
    for                     0, off_1C44, 90
    work_copy               5, 12, 1
    work_copy               4, 6, 1
    kage_set                3, 0, 16, 191, 191, 0, 0, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1C44:
    evt_end                 0

.proc main_0F
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    dir_set                 0, 0, 352, 1024
    member_set              M_X_POS, -17101
    member_set              M_Z_POS, -15000
    plc_cnt                 10
    plc_motion              0, 14, 72
    speed_set               1, -1000
    speed_set               7, 20
    evt_exec                255, I_GOSUB, main_10
    for                     0, off_1C86, 12
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1C86:
    sleep                   10, 10
    plc_neck                2, 0, 0, 0, 192, 192
    speed_set               1, 200
    speed_set               7, 20
    dir_set                 0, 0, 474, 0
    member_set              M_X_POS, -15069
    member_set              M_Z_POS, -15222
    plc_motion              0, 11, 64

off_1CB0:
    evt_next
    add_speed
    add_aspeed
    nop
    if                      0, off_1CC6
    member_cmp              0, 12, 3, 180, 0
    goto                    255, 255, 0, off_1CB0
    endif
    nop

off_1CC6:
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  200, 5, 0, 0, 0
    nop_8b                  150, 10, 0, 5, 0
    evt_exec                255, I_GOSUB, main_11
    se_on                   2, 267, 3, 0, 0, 0
    member_set              M_Y_POS, 180
    plc_neck                2, 0, -512, 0, 192, 192
    plc_motion              0, 12, 64
    plc_cnt                 1
    sleep                   10, 10
    plc_stop
    nop
    evt_end                 0

.proc main_10
    sleep                   10, 4
    sce_espr_on             0, 1280, 0, 8192, -16747, 0, -16223, 0
    sce_espr_on             0, 1280, 0, 8192, -16647, 100, -16123, 0
    sce_espr_on             0, 1280, 0, 8192, -16847, -100, -16023, 0
    evt_next
    nop
    sce_espr_on             0, 1280, 0, 9216, -16447, -1000, -16123, 0
    sce_espr_on             0, 1280, 0, 9216, -16247, -800, -16023, 0
    sce_espr_on             0, 1280, 0, 9216, -16347, -900, -16223, 0
    sce_espr_on             0, 1280, 0, 9216, -16447, -500, -16123, 0
    sce_espr_on             0, 1280, 0, 9216, -16247, -700, -16023, 0
    sce_espr_on             0, 1280, 0, 9216, -16347, -300, -16223, 0
    evt_next
    nop
    sce_espr_on             0, 1280, 0, 7168, -16147, -1500, -16023, 0
    sce_espr_on             0, 1280, 0, 7168, -15947, -1200, -15923, 0
    sce_espr_on             0, 1280, 0, 7168, -16047, -1800, -15823, 0
    sce_espr_on             0, 1280, 0, 7168, -16147, -2000, -16023, 0
    sce_espr_on             0, 1280, 0, 7168, -15947, -2200, -15923, 0
    sce_espr_on             0, 1280, 0, 7168, -16047, -2100, -15823, 0
    sce_espr_on             0, 1280, 0, 8192, -16147, -1700, -16223, 0
    sce_espr_on             0, 1280, 0, 8192, -16247, -1600, -16123, 0
    sce_espr_on             0, 1280, 0, 8192, -16047, -1800, -16023, 0
    sce_espr_on             0, 1280, 0, 8192, -16147, -2000, -16223, 0
    sce_espr_on             0, 1280, 0, 8192, -16247, -1900, -16123, 0
    sce_espr_on             0, 1280, 0, 8192, -16047, -1800, -16023, 0
    sleep                   10, 2
    sce_espr_on             0, 1280, 0, 9216, -15847, -3500, -16023, 0
    sce_espr_on             0, 1280, 0, 9216, -15647, -3400, -16123, 0
    sce_espr_on             0, 1280, 0, 9216, -15747, -3700, -16223, 0
    sce_espr_on             0, 1280, 0, 9216, -15847, -4000, -16023, 0
    sce_espr_on             0, 1280, 0, 9216, -15647, -3800, -16123, 0
    sce_espr_on             0, 1280, 0, 9216, -15747, -3900, -16223, 0
    sleep                   10, 2
    sce_espr_on             0, 1280, 0, 9216, -15547, -5500, -16023, 0
    sce_espr_on             0, 1280, 0, 9216, -15347, -5400, -16123, 0
    sce_espr_on             0, 1280, 0, 9216, -15447, -5700, -16223, 0
    sce_espr_on             0, 1280, 0, 9216, -15547, -6000, -16023, 0
    sce_espr_on             0, 1280, 0, 9216, -15347, -5800, -16123, 0
    sce_espr_on             0, 1280, 0, 9216, -15447, -5900, -16223, 0
    evt_end                 0

.proc main_11
    sce_espr_on             0, 0, 0, 6144, -14361, 0, -15861, 3683
    sce_espr_on             0, 0, 0, 7168, -14861, 0, -15661, 3683
    sce_espr_on             0, 0, 0, 6656, -14361, 0, -16061, 3683
    evt_next
    nop
    sce_espr_on             0, 0, 0, 8704, -15235, 0, -15014, 2703
    sce_espr_on             0, 0, 0, 8192, -15135, 0, -14914, 2803
    sce_espr_on             0, 0, 0, 8192, -15347, 0, -15102, 2563
    sleep                   10, 2
    sce_espr_on             0, 0, 0, 6144, -14361, 0, -15861, 3683
    sce_espr_on             0, 0, 0, 7168, -14861, 0, -15661, 3683
    sce_espr_on             0, 0, 0, 6656, -14361, 0, -16061, 3683
    sleep                   10, 3
    sce_espr_on             0, 0, 0, 8704, -15235, 0, -15014, 2703
    sce_espr_on             0, 0, 0, 8192, -15135, 0, -14914, 2803
    sce_espr_on             0, 0, 0, 8192, -15347, 0, -15102, 2563
    evt_end                 0

.proc main_12
    se_on                   2, 269, 4, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               0, 150
    speed_set               2, 40
    speed_set               1, -400
    speed_set               7, 20
    speed_set               3, -384
    speed_set               9, 8
    for                     0, off_2026, 60
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2026:
    pos_set                 0, -11225, 0, -16465
    dir_set                 0, 0, -1472, 0
    evt_end                 0

.proc main_13
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               5, -128
    for                     0, off_204A, 10
    add_speed
    evt_next
    next                    0

off_204A:
    speed_set               5, 128
    for                     0, off_2058, 6
    add_speed
    evt_next
    next                    0

off_2058:
    speed_set               5, -32
    for                     0, off_2066, 4
    add_speed
    evt_next
    next                    0

off_2066:
    speed_set               5, 32
    for                     0, off_2074, 4
    add_speed
    evt_next
    next                    0

off_2074:
    sleep                   10, 8
    speed_set               5, -128
    add_speed
    evt_next
    speed_set               5, -256
    for                     0, off_208C, 2
    add_speed
    evt_next
    next                    0

off_208C:
    speed_set               5, -256
    speed_set               4, 192
    for                     0, off_209E, 2
    add_speed
    evt_next
    next                    0

off_209E:
    speed_set               4, 0
    speed_set               5, 128
    for                     0, off_20B0, 13
    add_speed
    evt_next
    next                    0

off_20B0:
    speed_set               5, 0
    speed_set               3, -96
    for                     0, off_20C2, 4
    add_speed
    evt_next
    next                    0

off_20C2:
    speed_set               3, 96
    for                     0, off_20D0, 4
    add_speed
    evt_next
    next                    0

off_20D0:
    speed_set               3, -32
    for                     0, off_20DE, 2
    add_speed
    evt_next
    next                    0

off_20DE:
    speed_set               3, 32
    for                     0, off_20EC, 2
    add_speed
    evt_next
    next                    0

off_20EC:
    evt_end                 0

.proc main_14
    sleep                   10, 2
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_Y_DIR, 0
    plc_motion              0, 15, 0
    speed_set               0, -220
    speed_set               2, -60
    for                     0, off_2110, 10
    add_speed
    evt_next
    next                    0

off_2110:
    evt_next
    plc_stop
    sleep                   10, 16
    plc_stop
    nop
    sleep                   10, 23
    pos_set                 0, -16701, 3600, -16544
    plc_motion              0, 9, 72
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    sleep                   10, 24
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_end                 0

.proc main_15
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    super_set               0, 130, 132, 300, -150, 100, -448, -384, 512
    pos_set                 0, 800, -150, -300
    dir_set                 0, 320, -1344, 768
    evt_next
    nop
    pos_set                 0, 550, -250, 50
    dir_set                 0, 320, -1344, 960
    evt_next
    nop
    pos_set                 0, 300, -150, 100
    dir_set                 0, -448, -384, 512
    speed_set               5, -50
    for                     0, off_21C0, 10
    add_speed
    evt_next
    next                    0

off_21C0:
    evt_end                 0

.proc main_16
    cut_chg                 5
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10756, 0, -6616
    member_set              M_Y_DIR, 1024
    evt_next
    nop
    xa_on                   0, 0
    message_on              0, ID_MSG_7, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_PARTS_POS_Y, 3896
    plc_motion              0, 17, 20
    plc_neck                2, 0, 0, 256, 64, 64
    sleep                   10, 60
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 8
    nop
    plc_neck                2, 0, -384, 0, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, 384, 0, 32, 32
    sleep                   10, 40
    plc_neck                2, 0, -512, 0, 64, 64
    sleep                   10, 20
    plc_neck                2, 0, 512, 0, 96, 96
    sleep                   10, 10
    plc_neck                5, 3, 0, 0, 255, 255
    sleep                   10, 5
    plc_motion              0, 27, 8
    plc_rot                 1, 1024
    sleep                   10, 15
    plc_motion              1, 1, 8
    sleep                   10, 4
    plc_stop
    nop
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -10756, 0, -6616
    member_set              M_Y_DIR, 2089
    cut_chg                 7
    evt_next
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    nop
    xa_on                   0, 1
    message_on              0, ID_MSG_8, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    sleep                   10, 30
    plc_neck                2, 0, 0, 0, 64, 64
    sleep                   10, 60
    plc_neck                4, 2, 0, 0, 64, 64
    plc_motion              0, 13, 16
    sleep                   10, 60
    plc_neck                2, 0, 0, 0, 64, 64
    plc_motion              0, 17, 20
    sleep                   10, 30
    evt_exec                9, I_GOSUB, main_1B
    wsleep
    wsleeping
    xa_on                   0, 2
    message_on              0, ID_MSG_9, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 0
    nop
    sleep                   10, 20
    plc_motion              0, 15, 0
    sleep                   10, 20
    plc_motion              0, 15, 144
    sleep                   10, 30
    plc_neck                4, 2, 0, 0, 64, 64
    plc_motion              0, 19, 0
    sleep                   10, 30
    plc_motion              0, 24, 0
    sleep                   10, 24
    plc_motion              0, 25, 20
    wsleep
    wsleeping
    xa_on                   0, 3
    message_on              0, ID_MSG_10, 0, 0, 0
    evt_exec                255, I_GOSUB, main_17
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                4, 2, 0, 0, 64, 64
    plc_motion              0, 1, 16
    sleep                   10, 30
    plc_neck                4, 2, 0, 0, 64, 64
    plc_motion              0, 6, 16
    se_on                   2, 266, 3, 0, 0, 0
    sleep                   10, 30
    plc_neck                4, 2, 0, 0, 64, 64
    plc_motion              0, 8, 20
    sleep                   10, 60
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_PARTS_POS_Y, 4096
    plc_dest                0, 4, 33, -10756, -6616
    sleep                   10, 60
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 8, 32, -9441, -7183
    wsleep
    wsleeping
    cut_chg                 8
    evt_next
    nop
    xa_on                   0, 12
    message_on              0, ID_MSG_19, 0, 0, 0
    evt_exec                255, I_GOSUB, main_19
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 10, 8
    nop
    pos_set                 0, -10837, 0, -6604
    member_set              M_Y_DIR, 99
    sleep                   10, 10
    se_on                   2, 266, 3, 0, 0, 0
    plc_motion              0, 6, 8
    plc_rot                 0, 148
    sleep                   10, 40
    plc_motion              0, 13, 0
    sleep                   10, 29
    plc_motion              0, 1, 16
    sleep                   10, 30
    plc_motion              0, 8, 20
    wsleep
    wsleeping
    xa_on                   0, 4
    message_on              0, ID_MSG_11, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 30
    plc_motion              0, 16, 128
    sleep                   10, 5
    plc_motion              0, 15, 0
    sleep                   10, 25
    plc_motion              0, 19, 0
    sleep                   10, 30
    plc_motion              0, 19, 128
    sleep                   10, 20
    plc_motion              0, 25, 20
    sleep                   10, 55
    plc_motion              0, 18, 0
    plc_neck                4, 2, 0, 0, 94, 94
    sleep                   10, 20
    plc_motion              0, 17, 0
    sleep                   10, 30
    plc_motion              0, 25, 20
    wsleep
    wsleeping
    xa_on                   0, 5
    message_on              0, ID_MSG_12, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 3, 0
    nop
    sleep                   10, 10
    plc_neck                4, 3, 0, 0, 50, 50
    sleep                   10, 20
    plc_motion              0, 3, 144
    sleep                   10, 50
    evt_exec                255, I_GOSUB, main_18
    plc_dest                0, 4, 33, -12815, -17367
    sleep                   10, 100
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 8, 32, -12815, -17367
    wsleep
    wsleeping
    cut_chg                 3
    evt_kill                9
    evt_exec                255, I_GOSUB, main_1A
    evt_next
    nop
    xa_on                   0, 6
    message_on              0, ID_MSG_13, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13058, 0, -17117
    member_set              M_Y_DIR, 2913
    plc_dest                0, 8, 32, -12972, -18909
    sleep                   10, 15
    plc_stop
    nop
    plc_neck                2, 0, 512, 0, 192, 192
    sleep                   10, 10
    plc_neck                5, 3, 0, 0, 64, 64
    sleep                   10, 30
    wsleep
    wsleeping
    evt_exec                9, I_GOSUB, main_1B
    xa_on                   0, 7
    message_on              0, ID_MSG_14, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 0
    nop
    sleep                   10, 30
    plc_motion              0, 20, 128
    sleep                   10, 30
    plc_motion              0, 25, 20
    wsleep
    wsleeping
    xa_on                   0, 8
    message_on              0, ID_MSG_15, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 22, 0
    nop
    sleep                   10, 10
    plc_neck                4, 2, 0, 0, 64, 64
    sleep                   10, 20
    plc_motion              0, 25, 16
    sleep                   10, 30
    plc_motion              0, 25, 144
    sleep                   10, 40
    plc_motion              0, 24, 16
    plc_neck                4, 2, 0, 0, 64, 64
    sleep                   10, 25
    plc_neck                4, 2, 0, 0, 64, 64
    wsleep
    wsleeping
    xa_on                   0, 9
    message_on              0, ID_MSG_16, 0, 0, 0
    plc_motion              0, 26, 16
    plc_neck                4, 2, 0, 0, 64, 64
    sleep                   10, 50
    plc_motion              0, 21, 0
    plc_neck                4, 2, 0, 0, 64, 64
    sleep                   10, 10
    plc_neck                4, 2, 0, 0, 64, 64
    wsleep
    wsleeping
    cut_chg                 6
    pos_set                 0, -14820, 0, -15747
    member_set              M_Y_DIR, 512
    evt_next
    nop
    xa_on                   0, 10
    message_on              0, ID_MSG_17, 0, 0, 0
    plc_motion              0, 22, 0
    sleep                   10, 20
    plc_motion              0, 22, 144
    plc_neck                4, 2, 0, 0, 64, 64
    sleep                   10, 40
    plc_motion              0, 26, 16
    sleep                   10, 40
    plc_motion              0, 25, 0
    sleep                   10, 40
    plc_motion              0, 25, 128
    sleep                   10, 20
    plc_motion              0, 24, 8
    plc_neck                4, 2, 0, 0, 64, 64
    sleep                   10, 10
    plc_motion              0, 24, 144
    sleep                   10, 50
    plc_motion              0, 24, 0
    sleep                   10, 30
    plc_motion              0, 23, 0
    sleep                   10, 60
    plc_motion              0, 22, 0
    sleep                   10, 35
    plc_motion              0, 13, 0
    plc_neck                4, 2, 0, 0, 64, 64
    sleep                   10, 40
    wsleep
    wsleeping
    cut_chg                 3
    pos_set                 0, -14477, 0, -15326
    member_set              M_Y_DIR, 801
    evt_next
    work_set                WK_OBJECT, ID_OBJ_3
    member_set              M_Y_POS, -550
    evt_end                 0

.proc main_17
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    plc_motion              1, 1, 0
    nop
    sleep                   10, 7
    plc_stop
    nop
    evt_end                 0

.proc main_18
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    plc_motion              1, 1, 0
    nop
    sleep                   10, 7
    plc_stop
    nop
    evt_end                 0

.proc main_19
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -6441, 0, -8143
    member_set              M_Y_DIR, 1947
    plc_neck                5, 3, 0, 0, 192, 192
    plc_dest                0, 5, 32, -11881, -11601
    gosub                   main_1E
    sleep                   10, 15
    plc_motion              0, 29, 8
    plc_rot                 1, 2048
    sleep                   10, 20
    evt_end                 0

.proc main_1A
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -13886, 0, -13126
    member_set              M_Y_DIR, 1153
    plc_dest                0, 4, 33, -14498, -15412
    plc_neck                5, 1, 0, 0, 192, 192
    gosub                   main_1F
    plc_dest                0, 21, 33, 512, 64
    gosub                   main_1F
    plc_motion              0, 17, 20
    evt_end                 0

.proc main_1B
    work_set                WK_ENEMY, ID_EM_0

off_26CB:
    nop
    plc_neck                2, 0, 256, -32, 10, 10
    sleep                   10, 60
    plc_neck                2, 0, 256, 32, 10, 10
    sleep                   10, 30
    plc_neck                2, 0, 128, 0, 10, 10
    sleep                   10, 40
    plc_neck                2, 0, -128, 0, 10, 10
    sleep                   10, 40
    plc_neck                2, 0, 128, -32, 10, 10
    sleep                   10, 40
    goto                    255, 255, 0, off_26CB
    evt_end                 0

.proc main_1C
    sce_fade_set            2, 2, 7, 0, 0
    evt_next
    nop
    for                     0, off_2730, 59
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_2730:
    sce_fade_set            2, 2, 7, 0, 252
    evt_end                 0

.proc main_1D
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 24
    message_on              0, ID_MSG_0, 0, 255, 255
    evt_next
    plc_motion              1, 6, 128
    nop
    sleep                   10, 24
    plc_ret
    nop
    evt_end                 0

.proc main_1E
    do                      0, off_2764
    evt_next
    nop
    edwhile                 off_2764
    ck                      FG_ROOM, 32, 0

off_2764:
    evt_end                 0

.proc main_1F
    do                      0, off_2772
    evt_next
    nop
    edwhile                 off_2772
    ck                      FG_ROOM, 33, 0

off_2772:
    evt_end                 0

.proc main_20
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_21
    evt_next
    cut_chg                 3
    work_set                WK_ENEMY, ID_EM_0
    pos_set                 0, -14477, 0, -15326
    member_set              M_Y_DIR, 801
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13024, 0, -17587
    member_set              M_Y_DIR, 3043
    evt_next
    nop
    evt_end                 0
    db                      0x00, 0x00
