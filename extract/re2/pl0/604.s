.version 2

.init
.proc init
    if                      0, off_1FB0
    ck                      FG_COMMON, 254, 1
    set                     FG_COMMON, 92, 0
    set                     FG_ENEMY_2, 18, 0
    endif
    nop

off_1FB0:
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -28121, -16336, 2400, 4470, -2814, -5400, -4592, 6064, 5, 3, 6, 3, 38, 0, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -18031, -17756, 2410, 4190, ID_MSG_0, 0, 0, 0, 255, 255
    if                      0, off_1FFA
    ck                      FG_COMMON, 92, 1
    aot_reset               ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_1, 0, 0, 0, 255, 255
    else                    0, off_2022

off_1FFA:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 10, 0, 10, 16, -10429, -20054, -13974, 0, -3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_2022:
    evt_end                 0

.main
.proc main
    gosub                   main_16
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -13861, -14166, 1110, 1260, ITEM_MASTERKEY, 2, 20, ID_OBJ_1, IF_GLINT_GRAY | IF_FLOOR
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -13451, -18000, -13577, 2816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, 12506, -18000, -14646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_21AC
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_2160
    ck                      FG_COMMON, 92, 0
    set                     FG_PBF06, 6, 1
    set                     FG_PBF07, 4, 0
    set                     FG_PBF0C, 1, 0
    sce_em_set              0, ID_EM_1, ENEMY_ADA_WONG_2, 0, AI_08, 10, SBK_0, 0, 255, 12569, -18000, -13180, 1024, 777, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    sce_em_set              0, ID_EM_0, ENEMY_TYRANT_1, 4, AI_40, 10, SBK_18, 0, 18, 12521, -18000, -16513, 5216, 0, 0
    aot_set                 ID_AOT_2, SCE_NORMAL, SAT_PL | SAT_UNDER, 10, 0, -16767, -17805, 8070, 4620, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, 14471, 18000, 14027
    aot_set                 ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -15951, -16546, 1470, 1600, 255, 0, I_GOSUB, main_03, 0, 0
    evt_exec                255, I_GOSUB, main_02
    else                    0, off_21AA

off_2160:
    sce_em_set              0, ID_EM_1, ENEMY_ADA_WONG_2, 0, AI_02, 10, SBK_0, 0, 255, -15060, -18000, -15896, 1024, 0, 0
    evt_exec                255, I_GOSUB, main_1D
    evt_exec                255, I_GOSUB, main_1C
    evt_exec                255, I_GOSUB, main_1B
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    aot_set                 ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -15951, -16546, 1470, 1600, 255, 0, I_GOSUB, main_03, 0, 0
    nop
    nop

off_21AA:
    endif
    nop

off_21AC:
    evt_end                 0

.proc aot
    if                      0, off_21F4
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_21DA
    ck                      FG_COMMON, 92, 0
    if                      0, off_21D6
    cmp                     0, V_CUT, CMP_EQ, 6
    set                     FG_COMMON, 92, 1
    evt_exec                255, I_GOSUB, main_04
    set                     FG_ROOM, 0, 1
    endif
    nop

off_21D6:
    else                    0, off_21F2

off_21DA:
    if                      0, off_21F0
    ck                      FG_ROOM, 0, 0
    set                     FG_ROOM, 0, 1
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 29, 64
    nop
    endif
    nop

off_21F0:
    nop
    nop

off_21F2:
    endif
    nop

off_21F4:
    gosub                   main_17
    evt_end                 0

.proc main_02
    sleep                   10, 2
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_03
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    cut_chg                 12
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -14004, -18000, -15579
    dir_set                 0, 0, 2048, 0
    plc_motion              1, 6, 0
    sleep                   10, 24
    plc_neck                2, 0, 1024, 128, 12, 12
    sleep                   10, 20
    plc_neck                2, 0, -1024, 128, 12, 12
    sleep                   10, 40
    plc_neck                2, 0, 0, 128, 12, 12
    sleep                   10, 60
    plc_motion              1, 6, 128
    sleep                   10, 24
    work_set                WK_PLAYER, 0
    plc_ret
    cut_chg                 6
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_04
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    cut_auto                0
    set                     FG_ROOM, 1, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    gosub                   main_06
    gosub                   main_07
    gosub                   main_08
    gosub                   main_0A
    gosub                   main_0D
    gosub                   main_0F
    gosub                   main_12
    gosub                   main_13
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    set                     FG_ROOM, 1, 0
    work_set                WK_PLAYER, 0
    plc_ret
    cut_chg                 6
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    aot_reset               ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_1, 0, 0, 0, 255, 255
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -13451, -18000, -13577
    aot_reset               ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 98, 0, 2, 0, 20, 0
    sce_bgmtbl_set          0, 3, 6, 8209, 32832
    sce_bgmtbl_set          0, 4, 6, 9489, 32768
    sce_bgmtbl_set          0, 5, 6, 9489, 32768
    sce_bgmtbl_set          0, 6, 6, 65297, 0
    sce_bgmtbl_set          0, 9, 6, 65297, 0
    sce_bgmtbl_set          0, 10, 6, 65297, 0
    sce_bgmtbl_set          0, 11, 6, 65297, 0
    sce_bgmtbl_set          0, 13, 6, 65297, 0
    sce_bgmtbl_set          0, 14, 6, 65297, 0
    sce_bgmtbl_set          0, 15, 6, 65297, 0
    sce_bgmtbl_set          0, 16, 6, 65297, 0
    sce_bgmtbl_set          0, 18, 6, 65297, 0
    sce_bgmtbl_set          0, 19, 6, 65297, 0
    sce_bgmtbl_set          0, 20, 6, 65297, 0
    sce_bgmtbl_set          0, 21, 6, 65297, 0
    sce_bgmtbl_set          0, 22, 6, 65297, 0
    sce_bgmtbl_set          0, 0, 6, 65297, 0
    sce_bgmtbl_set          0, 1, 6, 65297, 0
    sce_bgmtbl_set          0, 2, 6, 8209, 32768
    sce_bgmtbl_set          0, 7, 6, 65297, 0
    sce_bgmtbl_set          0, 8, 6, 10001, 32768
    sce_bgmtbl_set          0, 12, 6, 65297, 0
    sce_bgmtbl_set          0, 5, 5, 65297, 0
    evt_end                 0

.proc main_05
    sce_espr_on             0, 4, 0, 16384, -12902, -18000, -12882, 0
    evt_next
    nop
    sce_espr_on             0, 4, 0, 16384, -13102, -18000, -12882, 2048
    evt_next
    nop
    sce_espr_on             0, 4, 0, 12288, -12802, -18000, -12882, 0
    evt_next
    nop
    sce_espr_on             0, 4, 0, 12288, -13202, -18000, -12882, 2048
    evt_next
    nop
    sce_espr_on             0, 4, 0, 12288, -12702, -18000, -12882, 0
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 12288, -13302, -18000, -12882, 2048
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 11520, -12602, -18000, -12882, 0
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 11264, -13402, -18000, -12882, 2048
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 10496, -12502, -18000, -12882, 0
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 9728, -13502, -18000, -12882, 2048
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 9472, -12402, -18000, -12882, 0
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 8960, -13602, -18000, -12882, 2048
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 8448, -12302, -18000, -12882, 0
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 7936, -13702, -18000, -12882, 2048
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 7680, -12202, -18000, -12882, 0
    sleep                   10, 2
    sce_espr_on             0, 4, 0, 7424, -13802, -18000, -12882, 2048
    evt_end                 0

.proc main_06
    cut_chg                 4
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12493, -18000, -13832
    dir_set                 0, 0, 1024, 0
    plc_dest                0, 4, 32, -12000, -21581
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 1
    pos_set                 0, -12902, -21000, -12282
    sleep                   10, 12
    set                     FG_STATUS, 29, 1
    se_on                   2, 266, 0, -12902, -21000, -12282
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  255, 5, 0, 1, 0
    nop_8c                  0, 200, 50, 15, 0, 6, 0
    nop_8c                  0, 50, 0, 100, 0, 21, 0
    sleep                   10, 3
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 10
    set                     FG_STATUS, 29, 0
    evt_next
    set                     FG_STATUS, 28, 1
    work_set                WK_PLAYER, 0
    plc_dest                0, 9, 32, -12589, -5246
    plc_rot                 0, 200
    gosub                   main_14
    dir_set                 0, 0, 3072, 0
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    plc_motion              1, 1, 8
    nop
    plc_neck                5, 3, 0, 0, 60, 60
    sleep                   10, 5
    plc_stop
    set                     FG_STATUS, 28, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    cut_chg                 8
    work_set                WK_ENEMY, ID_EM_0
    pos_set                 0, -12789, -18500, -15207
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 13172, -18000, 14251
    evt_next
    set                     FG_STATUS, 28, 1
    nop
    sleep                   10, 20
    set                     FG_STATUS, 28, 0
    sleep                   10, 20
    evt_end                 0

.proc main_07
    cut_chg                 4
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -12902, -18000, -12282
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12437, -18000, -14882
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 8, 32, -12358, -24069
    sleep                   10, 15
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 2
    sleep                   10, 20
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -12358, -26375
    plc_rot                 0, 200
    gosub                   main_14
    dir_set                 0, 0, 1024, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -12358, -24069
    sleep                   10, 20
    cut_chg                 5
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -12358, -18000, -16342
    work_set                WK_PLAYER, 0
    nop
    gosub                   main_14
    sleep                   10, 15
    plc_motion              0, 17, 0
    sleep                   10, 5
    cut_chg                 7
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -12430, -18000, -18901
    dir_set                 0, 0, 1024, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13064, -18000, -22639
    plc_dest                0, 9, 32, -12589, -5246
    plc_rot                 0, 200
    gosub                   main_14
    dir_set                 0, 0, 3152, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 20
    se_on                   2, 271, 0, -12898, -18000, -14085
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 3
    sleep                   10, 1
    sce_espr_on             0, 0, 200, 4096, -800, -800, 400, 2048
    sleep                   10, 2
    sce_espr_on             0, 256, 200, 4096, 800, -400, 400, 2048
    sleep                   10, 40
    evt_end                 0

.proc main_08
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 4
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 5
    cut_chg                 3
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -11760, -18000, -14019
    dir_set                 0, 0, 1024, 0
    plc_neck                5, 1, 0, 0, 96, 96
    evt_next
    nop
    xa_on                   0, 17
    message_on              0, ID_MSG_2, 0, 0, 0
    evt_next
    plc_motion              0, 17, 0
    nop
    sleep                   10, 20
    sleep                   10, 10
    plc_neck                2, 0, -128, 180, 32, 32
    plc_motion              2, 9, 0
    sleep                   10, 10
    wsleep
    wsleeping
    cut_chg                 4
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12264, -18000, -22639
    plc_motion              0, 15, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -12849, -18000, -21100
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -12721, -18000, -11877
    plc_motion              2, 10, 0
    sleep                   10, 1
    xa_on                   0, 18
    sleep                   10, 1
    message_on              0, ID_MSG_3, 0, 0, 0
    sce_espr_on             0, 24, 459, 3584, 138, 615, 8, 0
    sce_espr_on             0, 2563, 459, 3584, 138, 615, 8, 0
    se_on                   2, 271, 0, -12898, -18000, -14085
    sleep                   10, 1
    sce_espr_on             0, 0, 200, 4096, 800, 300, 0, 0
    sleep                   10, 1
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2, 459, 1792, 350, 40, -15, 1300
    sleep                   10, 7
    plc_motion              2, 10, 0
    sleep                   10, 1
    sce_espr_on             0, 24, 459, 3584, 138, 615, 8, 0
    sce_espr_on             0, 2563, 459, 3584, 138, 615, 8, 0
    se_on                   2, 271, 0, -12898, -18000, -14085
    sleep                   10, 1
    sce_espr_on             0, 0, 200, 4096, 800, 0, -300, 0
    sleep                   10, 1
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2, 459, 1792, 350, 40, -15, 1300
    sleep                   10, 7
    plc_motion              2, 10, 0
    sleep                   10, 1
    sce_espr_on             0, 24, 459, 3584, 138, 615, 8, 0
    sce_espr_on             0, 2563, 459, 3584, 138, 615, 8, 0
    se_on                   2, 271, 0, -12898, -18000, -14085
    sleep                   10, 1
    sce_espr_on             0, 0, 200, 4096, 800, -500, 200, 0
    sleep                   10, 1
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2, 459, 1792, 350, 40, -15, 1300
    sleep                   10, 7
    plc_motion              2, 10, 0
    sleep                   10, 1
    sce_espr_on             0, 24, 459, 3584, 138, 615, 8, 0
    sce_espr_on             0, 2563, 459, 3584, 138, 615, 8, 0
    se_on                   2, 271, 0, -12898, -18000, -14085
    sleep                   10, 1
    sce_espr_on             0, 0, 200, 4096, 800, -200, -100, 0
    sleep                   10, 1
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2, 459, 1792, 350, 40, -15, 1300
    sleep                   10, 7
    se_on                   2, 270, 0, -12898, -18000, -14085
    sleep                   10, 15
    cut_chg                 3
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -12803, -18000, -17332
    dir_set                 0, 0, -900, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -11760, -18000, -14019
    plc_neck                2, 0, 0, 1024, 32, 32
    sleep                   10, 5
    se_on                   2, 270, 0, -12898, -18000, -14085
    sleep                   10, 7
    se_on                   2, 270, 0, -12898, -18000, -14085
    sleep                   10, 5
    se_on                   2, 270, 0, -12898, -18000, -14085
    sleep                   10, 8
    plc_motion              2, 16, 0
    sleep                   10, 5
    se_on                   2, 263, 0, -12898, -18000, -14085
    sleep                   10, 17
    se_on                   2, 265, 0, -12898, -18000, -14085
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 6
    sleep                   10, 10
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 24, 64
    plc_cnt                 10
    nop
    dir_set                 0, 0, -1024, 0
    sleep                   10, 2
    se_on                   2, 275, 0, -11760, -18000, -14019
    sleep                   10, 10
    se_on                   2, 276, 0, -11760, -18000, -14019
    sleep                   10, 2
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    pos_set                 0, -12898, -18000, -14085
    evt_end                 0

.proc main_0A
    cut_chg                 7
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    pos_set                 0, -13064, -18000, -22639
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 25, 68
    work_set                WK_ENEMY, ID_EM_0
    sleep                   10, 1
    xa_on                   0, 19
    wsleep
    wsleeping
    sleep                   10, 10
    cut_chg                 8
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -13800, -18500, -14800
    dir_set                 0, 0, -2048, 0
    member_set              M_SCE_FREE0, 7
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -13800, -18700, -14800
    dir_set                 0, 0, -2048, 0
    plc_motion              10, 26, 0
    sleep                   10, 15
    sce_espr_on             0, 24, 459, 3584, 138, 615, 8, 0
    sce_espr_on             0, 2563, 459, 3584, 138, 615, 8, 0
    se_on                   2, 271, 0, -12898, -18000, -14085
    sleep                   10, 1
    sce_espr_on             0, 0, 201, 8192, 800, 0, 0, 0
    sleep                   10, 1
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2, 459, 1792, 350, 40, -15, 1300
    sleep                   10, 5
    sce_espr_on             0, 24, 459, 3584, 138, 615, 8, 0
    sce_espr_on             0, 2563, 459, 3584, 138, 615, 8, 0
    se_on                   2, 271, 0, -12898, -18000, -14085
    sleep                   10, 1
    sce_espr_on             0, 0, 201, 8192, 800, 0, 0, 0
    sleep                   10, 1
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2, 459, 1792, 350, 40, -15, 1300
    sleep                   10, 10
    sce_espr_on             0, 24, 459, 3584, 138, 615, 8, 0
    sce_espr_on             0, 2563, 459, 3584, 138, 615, 8, 0
    se_on                   2, 271, 0, -12898, -18000, -14085
    sleep                   10, 1
    sce_espr_on             0, 0, 201, 8192, 800, 0, 0, 0
    sleep                   10, 1
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2, 459, 1792, 350, 40, -15, 1300
    sleep                   10, 8
    sce_espr_on             0, 24, 459, 3584, 138, 615, 8, 0
    sce_espr_on             0, 2563, 459, 3584, 138, 615, 8, 0
    se_on                   2, 271, 0, -12898, -18000, -14085
    sleep                   10, 1
    sce_espr_on             0, 0, 201, 8192, 800, 0, 0, 0
    sleep                   10, 1
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2051, 459, 2304, 350, 40, -15, 0
    sce_espr_on             0, 2, 459, 1792, 350, 40, -15, 1300
    sleep                   10, 10
    cut_chg                 12
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -12750, -18000, -15355
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -11500, -18000, -17000
    sleep                   10, 5
    sleep                   10, 8
    se_on                   2, 267, 0, -11500, -18000, -17000
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    sce_shake_on            251, 5
    nop
    sce_espr_on             0, 24, 0, 13196, -16400, -19900, -14900, 0
    set                     FG_PBF06, 6, 1
    set                     FG_PBF07, 4, 1
    set                     FG_PBF0C, 1, 1
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 512
    member_set2             M_TYPE, V_TEMP
    nop
    sce_espr_on             0, 256, 448, 12288, 0, 0, 0, 0
    evt_next
    nop
    sce_espr_on             0, 512, 448, 4096, 0, 0, 0, 0
    evt_next
    sce_shake_on            3, 253
    sce_espr_on             0, 256, 448, 8192, 0, 0, 0, 0
    sleep                   10, 1
    se_on                   2, 262, 0, -11500, -18000, -17000
    sleep                   10, 2
    evt_exec                255, I_GOSUB, main_0C
    sce_espr_on             0, 768, 448, 4096, 0, 0, 0, 0
    sce_shake_on            255, 1
    evt_next
    set                     FG_STATUS, 29, 1
    sleep                   10, 3
    sleep                   10, 3
    set                     FG_STATUS, 29, 0
    set                     FG_STATUS, 28, 1
    evt_exec                255, I_GOSUB, main_0B
    sleep                   10, 10
    set                     FG_STATUS, 28, 0
    sleep                   10, 10
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 26, 144
    nop
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_11
    sleep                   10, 10
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 26, 16
    plc_cnt                 100
    nop
    sce_espr_on             0, 512, 201, 8192, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr_on             0, 768, 201, 4096, 0, 0, 0, 0
    sleep                   10, 20
    evt_end                 0

.proc main_0B
    sce_espr3d_on           0, 1286, 0, 4096, -15600, -19900, -15400, 0, 1024, 0, 0
    se_on                   2, 261, 0, -15600, -19900, -15400
    sleep                   10, 30
    sce_espr3d_on           0, 1286, 0, 8192, -15600, -19900, -15400, 600, 1024, 0, 0
    se_on                   2, 261, 0, -15600, -19900, -15400
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 4096, -15600, -19900, -15400, 20, 1024, 0, 0
    se_on                   2, 261, 0, -15600, -19900, -15400
    sleep                   10, 60
    gosub                   main_1F
    evt_exec                255, I_GOSUB, main_1D
    gosub                   main_1B
    evt_end                 0

.proc main_0C
    evt_next
    work_set                WK_OBJECT, ID_OBJ_1
    pos_set                 0, -16021, -20000, -13577
    save                    V_07, 340
    se_on                   2, 259, 0, -11500, -18000, -17000
    for                     0, off_2E7C, 28
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_SUB, V_TEMP, V_07
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    copy                    V_07, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 50
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2E7C:
    se_on                   2, 259, 0, -11500, -18000, -17000
    member_set              M_Y_POS, -18000
    save                    V_07, 200
    for                     0, off_2EC2, 14
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_SUB, V_TEMP, V_07
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    copy                    V_07, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2EC2:
    se_on                   2, 259, 0, -11500, -18000, -17000
    member_set              M_Y_POS, -18000
    save                    V_07, 100
    for                     0, off_2F08, 7
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_SUB, V_TEMP, V_07
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    copy                    V_07, V_TEMP
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 30
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2F08:
    member_set              M_Y_POS, -18000
    se_on                   2, 259, 0, -11500, -18000, -17000
    evt_end                 0

.proc main_0D
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -12000, -18000, -15600
    member_set              M_SCE_FREE0, 8
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, -15060, -18000, -15896
    dir_set                 0, 0, -2048, 0
    cut_chg                 10
    sce_espr_on             0, 256, 201, 8192, 0, 0, 0, 0
    sleep                   10, 5
    sce_espr_on             0, 512, 201, 8192, 0, 0, 0, 0
    sleep                   10, 15
    sce_espr_on             0, 768, 201, 4096, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr_on             0, 256, 201, 4096, 0, 0, 0, 0
    sleep                   10, 20
    sce_espr_on             0, 256, 201, 4096, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr_on             0, 512, 201, 8192, 0, 0, 0, 0
    sleep                   10, 20
    sce_espr_on             0, 512, 201, 4096, 500, 0, 0, 0
    sleep                   10, 20
    sce_espr_on             0, 256, 201, 8192, 600, -100, 0, 0
    sleep                   10, 10
    se_on                   2, 268, 0, -13000, -18000, -14600
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  255, 5, 0, 1, 0
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 20
    cut_chg                 11
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -5000, -18000, -16000
    evt_exec                255, I_GOSUB, main_10
    sleep                   10, 21
    evt_end                 0

.proc main_0E
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    save                    V_04, 90
    for                     0, off_306E, 10
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

off_306E:
    pos_set                 0, 0, 0, 0
    evt_end                 0

.proc main_0F
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, 1200, -28200, -18000
    work_set                WK_ENEMY, ID_EM_1
    nop
    pos_set                 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_10
    gosub                   main_1A
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 0
    evt_end                 0

.proc main_10
    work_set                WK_ENEMY, ID_EM_0
    nop
    save                    V_04, 90
    for                     0, off_30E4, 20
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

off_30E4:
    evt_end                 0

.proc main_11
    work_set                WK_ENEMY, ID_EM_1
    nop
    save                    V_05, 400
    for                     0, off_311C, 200
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 5
    copy                    V_05, V_TEMP
    nop
    work_copy               5, 12, 1
    work_copy               5, 6, 1
    kage_set                3, 1, 16, 191, 191, 0, 0, 0, 0
    evt_next
    nop
    next                    0

off_311C:
    evt_end                 0

.proc main_12
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13064, -18000, -22639
    weapon_chg              0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 2048
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 96, 96
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                0, 0, 0, 0, 96, 96
    evt_next
    cut_chg                 7
    work_set                WK_ENEMY, ID_EM_1
    pos_set                 0, -15060, -18000, -15896
    dir_set                 0, 0, -2048, 0
    work_set                WK_PLAYER, 0
    nop
    dir_set                 0, 0, 2512, 0
    plc_dest                0, 5, 32, -13952, -16252
    gosub                   main_14
    plc_dest                0, 9, 32, -19370, -14980
    plc_rot                 0, 128
    gosub                   main_14
    plc_motion              1, 6, 0
    sleep                   10, 24
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    cut_chg                 9
    se_vol                  20
    work_set                WK_PLAYER, 0
    plc_motion              0, 28, 64
    nop
    pos_set                 0, -14500, -18000, -14900
    dir_set                 0, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 27, 64
    nop
    pos_set                 0, -15000, -18000, -16000
    dir_set                 0, 0, 0, 0
    sce_espr_on             0, 256, 448, 4096, 0, 0, 0, 0
    sleep                   10, 25
    work_set                WK_PLAYER, 0
    plc_stop
    work_set                WK_ENEMY, ID_EM_1
    plc_stop
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 1024, 128, 12, 12
    sleep                   10, 30
    plc_neck                2, 0, -1024, 128, 12, 12
    sleep                   10, 30
    plc_neck                2, 0, 0, 256, 8, 4
    sleep                   10, 30
    sleep                   10, 30
    xa_on                   0, 20
    message_on              0, ID_MSG_4, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 28, 0
    plc_cnt                 25
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 27, 0
    plc_cnt                 25
    nop
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 70
    work_set                WK_PLAYER, 0
    plc_stop
    work_set                WK_ENEMY, ID_EM_1
    plc_stop
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                2, 0, -128, -200, 16, 16
    sleep                   10, 10
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                2, 0, -1024, -256, 16, 16
    wsleep
    wsleeping
    xa_on                   0, 21
    message_on              0, ID_MSG_5, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_neck                2, 0, -256, 0, 16, 16
    sleep                   10, 20
    plc_neck                2, 0, 256, 0, 16, 16
    sleep                   10, 35
    plc_neck                2, 0, 256, 255, 16, 16
    sleep                   10, 25
    for                     0, off_32CA, 18
    plc_motion              0, 28, 144
    sleep                   10, 3
    next                    0

off_32CA:
    work_set                WK_PLAYER, 0
    plc_stop
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 100, 10, 10
    sleep                   10, 10
    plc_neck                2, 0, 0, 0, 10, 10
    wsleep
    wsleeping
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                2, 0, 200, 200, 20, 12
    sleep                   10, 10
    plc_neck                2, 0, -200, 200, 40, 12
    sleep                   10, 10
    plc_neck                2, 0, 200, 200, 40, 12
    sleep                   10, 10
    plc_neck                2, 0, -200, 200, 40, 12
    sleep                   10, 10
    plc_neck                2, 0, 200, 200, 40, 12
    sleep                   10, 10
    plc_neck                2, 0, -200, 200, 40, 12
    sleep                   10, 10
    xa_on                   0, 22
    message_on              0, ID_MSG_6, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                2, 0, -200, 256, 40, 12
    sleep                   10, 50
    for                     0, off_3372, 20
    plc_motion              0, 27, 0
    plc_cnt                 78
    sleep                   10, 3
    next                    0

off_3372:
    plc_stop
    nop
    sleep                   10, 50
    plc_neck                2, 0, -1024, -256, 12, 12
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -50, 0, 5, 5
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                2, 0, 200, -256, 10, 12
    sleep                   10, 19
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -100, 0, 5, 5
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                2, 0, -200, -256, 7, 12
    sleep                   10, 30
    plc_neck                2, 0, -1024, -256, 10, 12
    wsleep
    wsleeping
    sleep                   10, 40
    cut_chg                 7
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 96, 96
    pos_set                 0, -14560, -18000, -14980
    dir_set                 0, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                0, 0, 0, 0, 96, 96
    pos_set                 0, -15000, -18000, -16000
    dir_set                 0, 0, 0, 0
    sleep                   10, 60
    se_vol                  0
    se_vol                  0
    work_set                WK_PLAYER, 0
    plc_motion              0, 29, 64
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 28, 64
    sleep                   10, 30
    cut_chg                 9
    sleep                   10, 110
    sleep                   10, 120
    work_set                WK_PLAYER, 0
    plc_motion              0, 29, 192
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 28, 192
    sleep                   10, 110
    work_set                WK_PLAYER, 0
    plc_motion              0, 28, 192
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 27, 192
    sleep                   10, 20
    xa_on                   0, 23
    sleep                   10, 1
    sce_espr_on             0, 256, 448, 4096, 0, 0, 0, 0
    sleep                   10, 19
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -256, 0, 90, 90
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_stop
    work_set                WK_ENEMY, ID_EM_1
    plc_stop
    wsleep
    wsleeping
    xa_on                   0, 24
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 256, 0, 16, 16
    sleep                   10, 20
    plc_neck                2, 0, -256, 0, 16, 16
    se_vol                  20
    se_vol                  20
    sleep                   10, 40
    plc_neck                2, 0, 256, 0, 16, 16
    wsleep
    wsleeping
    se_vol                  40
    se_vol                  40
    xa_on                   0, 25
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 256, 256, 16, 16
    sleep                   10, 20
    for                     0, off_34F8, 17
    plc_motion              0, 28, 136
    plc_cnt                 30
    sleep                   10, 3
    next                    0

off_34F8:
    wsleep
    wsleeping
    cut_chg                 7
    se_vol                  50
    se_vol                  50
    evt_next
    nop
    xa_on                   0, 27
    work_set                WK_PLAYER, 0
    plc_stop
    plc_neck                2, 0, 0, -256, 90, 90
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -18000, -17485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -19000, -17485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -20000, -17485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -21000, -17485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -22000, -17485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -23000, -17485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -24000, -17485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -25000, -17485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -26000, -17485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sce_espr3d_on           0, 1286, 0, 23808, -16561, -18000, -17485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -17561, -19000, -16485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -20000, -18485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -13561, -21000, -20485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -18561, -22000, -16485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -21561, -23000, -21485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -12561, -24000, -17485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -16561, -25000, -18485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -15561, -26000, -21485, 0, 0, 1024, 0
    se_on                   2, 261, 0, -15561, -18000, -17485
    wsleep
    wsleeping
    evt_end                 0

.proc main_13
    cut_chg                 0
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 29, 64
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    dir_set                 0, 0, 1024, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 13939, -18000, 15172
    aot_reset               ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    evt_next
    nop
    xa_on                   0, 28
    message_on              0, ID_MSG_15, 0, 0, 0
    evt_exec                255, I_GOSUB, main_1E
    evt_exec                255, I_GOSUB, main_1C
    wsleep
    wsleeping
    cut_chg                 12
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13939, -18000, -15172
    dir_set                 0, 0, 2048, 0
    evt_next
    nop
    xa_on                   0, 26
    message_on              0, ID_MSG_16, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 1, 0, 60, 60
    plc_motion              1, 6, 208
    sleep                   10, 74
    plc_dest                0, 9, 32, -10941, -5246
    plc_neck                2, 0, 0, 0, 90, 90
    sleep                   10, 35
    plc_neck                5, 3, 1, 0, 60, 60
    wsleep
    wsleeping
    se_vol                  100
    evt_end                 0

.proc main_14
    do                      0, off_3876
    evt_next
    nop
    edwhile                 off_3876
    ck                      FG_ROOM, 32, 0

off_3876:
    evt_end                 0

.proc main_15
    do                      0, off_3884
    evt_next
    nop
    edwhile                 off_3884
    ck                      FG_ROOM, 35, 0

off_3884:
    evt_end                 0

.proc main_16
    aot_set                 ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -28121, -16336, 2400, 4470, 255, 0, I_GOSUB, main_18, 0, 0
    save                    V_08, 16
    gosub                   main_19
    evt_end                 0

.proc main_17
    if                      0, off_38B0
    ck                      FG_ROOM, 2, 0
    gosub                   main_19
    else                    0, off_38C6

off_38B0:
    if                      0, off_38C4
    ck                      FG_ROOM, 2, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    set                     FG_ROOM, 2, 1
    endif
    nop

off_38C4:
    nop
    nop

off_38C6:
    evt_end                 0

.proc main_18
    aot_on                  ID_AOT_1
    evt_end                 0

.proc main_19
    if                      0, off_39C6
    work_copy               8, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    switch                  26, off_39C0
    case                    0, off_38EC, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_38EC:
    case                    0, off_38FA, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_38FA:
    case                    0, off_3908, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_3908:
    case                    0, off_3916, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_3916:
    case                    0, off_3924, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_3924:
    case                    0, off_3932, 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_3932:
    case                    0, off_3940, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    break                   0

off_3940:
    case                    0, off_394E, 7
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_394E:
    case                    0, off_395C, 8
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_395C:
    case                    0, off_396A, 9
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 127, 64
    break                   0

off_396A:
    case                    0, off_3978, 10
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_3978:
    case                    0, off_3986, 11
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 64
    break                   0

off_3986:
    case                    0, off_3994, 12
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_3994:
    case                    0, off_39A2, 13
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_39A2:
    case                    0, off_39B0, 14
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_39B0:
    case                    0, off_39BE, 15
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_39BE:
    eswitch                 0

off_39C0:
    copy                    V_08, V_CUT
    nop
    endif
    nop

off_39C6:
    evt_end                 0

.proc main_1A
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

.proc main_1B

off_3B44:
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
    goto                    255, 255, 0, off_3B44
    evt_end                 0

.proc main_1C

off_3BE6:
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
    goto                    255, 255, 0, off_3BE6
    evt_end                 0

.proc main_1D

off_3DA4:
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -26800, -16300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -22800, -15300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -22800, -11300
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 40192, -19007, -25000, -11300, 0, 0, 0, 0
    se_on                   2, 261, 0, -19307, -25000, -11300
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_20
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
    evt_exec                255, I_GOSUB, main_20
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
    evt_exec                255, I_GOSUB, main_20
    sce_espr3d_on           0, 1286, 0, 40192, -19307, -23800, -15300, 0, 0, 1024, 0
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 40192, -19107, -26800, -12300, 0, 0, 0, 0
    se_on                   2, 277, 0, -19307, -26800, -11300
    sleep                   10, 15
    evt_exec                255, I_GOSUB, main_20
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
    evt_exec                255, I_GOSUB, main_20
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
    evt_exec                255, I_GOSUB, main_20
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -21500, -15300, 0, 0, 1024, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -23500, -14300, 0, 0, 1024, 0
    se_on                   2, 288, 0, -19307, -20500, -11300
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -25500, -13300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -20500, -11300
    sleep                   10, 2
    evt_exec                255, I_GOSUB, main_20
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -27500, -13300, 0, 0, 1024, 0
    sleep                   10, 2
    sce_espr3d_on           0, 1286, 0, 23808, -19307, -29500, -11300, 0, 0, 1024, 0
    se_on                   2, 261, 0, -19307, -20500, -11300
    sleep                   10, 2
    goto                    255, 255, 0, off_3DA4
    evt_end                 0

.proc main_1E
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

.proc main_1F
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
    for                     0, off_49AE, 3
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

off_49AE:
    for                     0, off_4B36, 2
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

off_4B36:
    evt_end                 0

.proc main_20
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
