.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9460, -21300, 1390, 2700, -19955, 0, 9004, 400, 0, 10, 15, 0, 0, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11460, -27700, 1800, 1400, -11209, 0, -9716, 1360, 0, 13, 0, 0, 5, 129, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_AUTO, 0, 0, 0, 0, 1, 1, 1528, 0, -15137, 1472, 2, 8, 0, 0, 16, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27160, -18500, 3800, 930, 24730, 0, -15507, 5344, 1, 27, 15, 0, 16, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_4, SCE_DOOR, SAT_AUTO, 0, 0, 0, 0, 1, 1, -25191, 0, -18885, 1008, 1, 27, 6, 0, 16, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    item_aot_set            ID_AOT_8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27200, -25500, 1800, 1800, ITEM_MAILTOTHECHIEF1, 1, 47, ID_OBJ_9, IF_FLOOR
    obj_model_set           ID_OBJ_9, 0, 0, 0, 0, 0, 0, 10, 16, -26300, 0, -24600, 0, 896, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_264C
    ck                      FG_SCENARIO, 64, 0
    work_set                WK_OBJECT, ID_OBJ_7
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_9
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    if                      0, off_263C
    ck                      FG_SCENARIO, 0, 0
    aot_set                 ID_AOT_9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19660, -23400, 1200, 2900, 255, 0, I_GOSUB, main_08, 0, 0
    aot_set                 ID_AOT_10, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -21730, -26355, 1800, 3100, 255, 0, I_GOSUB, main_09, 0, 0
    aot_set                 ID_AOT_13, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -16030, -26355, 1850, 3100, 255, 0, I_GOSUB, main_0A, 0, 0
    gosub                   main_07
    cut_be_set              2, 3, 0
    else                    0, off_2648

off_263C:
    gosub                   main_07
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_DIR, 64
    nop
    nop

off_2648:
    else                    0, off_2840

off_264C:
    if                      0, off_265A
    ck                      FG_SCENARIO, 12, 0
    evt_exec                255, I_GOSUB, main_27
    endif
    nop

off_265A:
    aot_set                 ID_AOT_12, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23490, -21972, 1000, 1800, 255, 0, I_GOSUB, main_16, 0, 0
    aot_set                 ID_AOT_15, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -23490, -21972, 1000, 1800, 10, 0, ITEM_EAGLESTONE, 0, aot, 0
    aot_set                 ID_AOT_16, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -23490, -21972, 1000, 1800, 10, 0, ITEM_SERPENTSTONE, 0, aot, 0
    aot_set                 ID_AOT_14, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -23490, -21972, 1000, 1800, 10, 0, ITEM_JAGUARSTONE, 0, aot, 0
    sca_id_set              12, 0, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -21500, -180, -20500
    member_set              M_Y_DIR, 320
    if                      0, off_26EC
    ck                      FG_SCENARIO, 1, 0
    aot_reset               ID_AOT_15, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_16, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_14, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_PBF07, 1, 0
    else                    0, off_26FA

off_26EC:
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Z_POS, -22660
    set                     FG_PBF07, 1, 1
    nop
    nop

off_26FA:
    if                      0, off_270C
    ck                      FG_SCENARIO, 2, 1
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    member_set              M_Y_POS, -3019
    endif
    nop

off_270C:
    if                      0, off_271E
    ck                      FG_SCENARIO, 3, 1
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    member_set              M_Y_POS, -2695
    endif
    nop

off_271E:
    if                      0, off_2730
    ck                      FG_SCENARIO, 4, 1
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_set              M_Y_POS, -2380
    endif
    nop

off_2730:
    if                      0, off_2744
    ck                      FG_SCENARIO, 2, 1
    ck                      FG_SCENARIO, 3, 1
    ck                      FG_SCENARIO, 4, 1
    gosub                   main_1D
    endif
    nop

off_2744:
    gosub                   main_25
    if                      0, off_2768
    cmp                     0, V_CUT, CMP_EQ, 15
    if                      0, off_2760
    cmp                     0, V_LAST_RDT, CMP_EQ, 539
    gosub                   main_03
    else                    0, off_2764

off_2760:
    gosub                   main_04
    nop
    nop

off_2764:
    evt_end                 0
    endif
    nop

off_2768:
    if                      0, off_2798
    ck                      FG_ITEM, 55, 1
    ck                      FG_SCENARIO, 6, 0
    aot_reset               ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1F, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -17306, 0, -23263
    dir_set                 0, 0, 2392, 0
    evt_exec                255, I_GOSUB, main_1E
    endif
    nop

off_2798:
    if                      0, off_27C8
    ck                      FG_SCENARIO, 6, 1
    ck                      FG_SCENARIO, 7, 0
    aot_reset               ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1F, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -17295, 0, -25327
    dir_set                 0, 0, 2840, 0
    evt_exec                9, I_GOSUB, main_26
    endif
    nop

off_27C8:
    if                      0, off_2800
    ck                      FG_ENEMY, 98, 0
    ck                      FG_SCENARIO, 7, 1
    ck                      FG_SCENARIO, 8, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -17295, 0, -25327
    dir_set                 0, 0, 2840, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    evt_exec                9, I_GOSUB, main_26
    endif
    nop

off_2800:
    if                      0, off_282A
    ck                      FG_ENEMY, 98, 1
    ck                      FG_SCENARIO, 7, 1
    ck                      FG_SCENARIO, 8, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -26323, 0, -22105
    dir_set                 0, 0, 3752, 0
    evt_exec                255, I_GOSUB, main_21
    endif
    nop

off_282A:
    if                      0, off_283E
    ck                      FG_SCENARIO, 10, 0
    aot_reset               ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_28, 0, 0
    endif
    nop

off_283E:
    nop
    nop

off_2840:
    if                      0, off_2886
    ck                      FG_SCENARIO, 64, 1
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20226, -24016, 1800, 1800, ITEM_HEARTKEY, 1, 12, ID_OBJ_6, IF_GLINT_GRAY
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 18, -19019, -1450, -23250, 0, -192, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2886:
    obj_model_set           ID_OBJ_8, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc aot
    if                      0, off_28E8
    ck                      FG_SCENARIO, 1, 1
    if                      0, off_28C6
    cmp                     0, V_USED_ITEM, CMP_EQ, 58
    evt_exec                255, I_GOSUB, main_18
    endif
    nop

off_28C6:
    if                      0, off_28D6
    cmp                     0, V_USED_ITEM, CMP_EQ, 54
    evt_exec                255, I_GOSUB, main_19
    endif
    nop

off_28D6:
    if                      0, off_28E6
    cmp                     0, V_USED_ITEM, CMP_EQ, 55
    evt_exec                255, I_GOSUB, main_1A
    endif
    nop

off_28E6:
    endif
    nop

off_28E8:
    if                      0, off_2900
    ck                      FG_STATUS, 11, 1
    ck                      FG_SCENARIO, 2, 1
    ck                      FG_SCENARIO, 3, 1
    ck                      FG_SCENARIO, 4, 1
    gosub                   main_06
    endif
    nop

off_2900:
    evt_end                 0

.proc main_02
    aot_set                 ID_AOT_17, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19624, -20356, 2600, 1800, ID_MSG_26, 0, 0, 0, 255, 255
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, -21900, -180, -21801, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -23210, -1800, -24840, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -22995, -2700, -21410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -22968, -23019, -21559, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -22968, -22695, -21064, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 16, -22968, -22380, -20569, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22270, -21300, 1680, 1700, ITEM_CHIEFDIARY, 1, 200, ID_OBJ_7, IF_DEFAULT
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 0, 0, 10, 16, -21300, -1140, -20550, 896, 960, -192, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_03
    gosub                   main_05
    aot_on                  ID_AOT_2
    evt_end                 0

.proc main_04
    gosub                   main_05
    aot_on                  ID_AOT_4
    evt_end                 0

.proc main_05
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    cut_chg                 15
    if                      0, off_2A7A
    ck                      FG_STATUS, 3, 1
    work_set                WK_PLAYER, 0
    plc_ret
    pos_set                 0, -24579, 0, -15932
    member_set              M_Y_DIR, 1288
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -25642, 0, -15808
    member_set              M_Y_DIR, 728
    else                    0, off_2A8C

off_2A7A:
    work_set                WK_PLAYER, 0
    plc_ret
    pos_set                 0, -25227, 0, -15802
    member_set              M_Y_DIR, 1048
    nop
    nop

off_2A8C:
    sleep                   10, 20
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  200, 8, 0, 0, 0
    nop_8b                  70, 90, 0, 8, 0
    se_on                   2, 273, 1, 0, 0, 0
    set                     FG_STATUS, 28, 1
    sleep                   10, 8
    set                     FG_STATUS, 28, 0
    sleep                   10, 90
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  200, 10, 0, 0, 0
    nop_8b                  100, 10, 0, 10, 0
    se_on                   2, 274, 1, 0, 0, 0
    set                     FG_STATUS, 28, 1
    sleep                   10, 8
    set                     FG_STATUS, 28, 0
    sleep                   10, 20
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_06
    save                    V_06, -9
    if                      0, off_2B50
    cmp                     0, V_CUT, CMP_EQ, 5
    work_set                WK_OBJECT, ID_OBJ_2
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
    else                    0, off_2B92

off_2B50:
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc2                   OP_AND, V_TEMP, V_06
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc2                   OP_AND, V_TEMP, V_06
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc2                   OP_AND, V_TEMP, V_06
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc2                   OP_AND, V_TEMP, V_06
    member_set2             M_BE_FLAG, V_TEMP
    nop
    nop
    nop

off_2B92:
    evt_end                 0

.proc main_07
    aot_set                 ID_AOT_11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23110, -22926, 2400, 1800, 255, 0, I_GOSUB, main_14, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_CHIEF_IRONS_1, 0, AI_08, 0, SBK_0, 0, 255, 0, 0, 0, 0, 258, 8
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    sce_em_set              0, ID_EM_1, ENEMY_MAYORS_DAUGHTER, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -20300, -1440, -21800, 0, 0, 0
    evt_exec                9, I_GOSUB, main_15
    evt_end                 0

.proc main_08
    aot_reset               ID_AOT_9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_13, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_SCENARIO, 0, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -18460, 0, -21458
    member_set              M_Y_DIR, 1952
    cut_chg                 10
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 90, 64
    sce_bgmtbl_set          0, 27, 2, 4607, 32768
    sleep                   10, 60
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 15
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 4, 0
    nop
    sleep                   10, 20
    se_on                   2, 275, 4, 0, 0, 0
    plc_neck                2, 0, 0, -64, 12, 12
    sleep                   10, 40
    xa_on                   0, 17
    message_on              0, ID_MSG_0, 0, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 90, 64
    plc_motion              0, 4, 144
    sleep                   10, 40
    plc_motion              0, 0, 0
    sleep                   10, 80
    plc_motion              0, 0, 144
    sleep                   10, 80
    plc_motion              0, 3, 20
    wsleep
    wsleeping
    cut_chg                 11
    evt_next
    nop
    evt_chain               0, 24, 11
    evt_end                 0

.proc main_09
    aot_reset               ID_AOT_9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_13, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_SCENARIO, 0, 1
    cut_chg                 3
    sce_bgmtbl_set          0, 27, 2, 4607, 32768
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 90, 64
    evt_exec                255, I_GOSUB, main_0F
    sleep                   10, 15
    evt_exec                255, I_GOSUB, main_0D
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 128, 128
    sleep                   10, 4
    plc_dest                0, 9, 32, -21900, -21801
    gosub                   main_2B
    plc_motion              1, 1, 0
    sleep                   10, 5
    plc_stop
    nop
    sleep                   10, 30
    xa_on                   0, 17
    message_on              0, ID_MSG_0, 0, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 90, 64
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 4, 144
    nop
    sleep                   10, 40
    plc_motion              0, 0, 0
    sleep                   10, 80
    plc_motion              0, 0, 144
    sleep                   10, 80
    plc_motion              0, 3, 20
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 0
    nop
    sleep                   10, 24
    plc_dest                0, 4, 32, -18460, -21458
    sleep                   10, 25
    cut_chg                 11
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_DIR, 512
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -18333, 0, -23760
    member_set              M_Y_DIR, 2992
    plc_dest                0, 4, 32, -18460, -21458
    gosub                   main_2B
    plc_dest                0, 21, 32, 1952, 60
    gosub                   main_2B
    evt_exec                255, I_GOSUB, main_10
    evt_chain               0, 24, 11
    evt_end                 0

.proc main_0A
    aot_reset               ID_AOT_9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_13, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_SCENARIO, 0, 1
    cut_chg                 3
    sce_bgmtbl_set          0, 27, 2, 4607, 32768
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 90, 64
    evt_exec                255, I_GOSUB, main_0F
    sleep                   10, 15
    evt_exec                255, I_GOSUB, main_0D
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 128, 128
    sleep                   10, 4
    plc_dest                0, 9, 32, -21900, -21801
    gosub                   main_2B
    plc_motion              1, 1, 0
    cut_chg                 2
    sleep                   10, 5
    plc_stop
    nop
    sleep                   10, 30
    xa_on                   0, 17
    message_on              0, ID_MSG_0, 0, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 90, 64
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 4, 144
    nop
    sleep                   10, 40
    plc_motion              0, 0, 0
    sleep                   10, 80
    plc_motion              0, 0, 144
    sleep                   10, 80
    plc_motion              0, 3, 20
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 0
    nop
    sleep                   10, 24
    plc_dest                0, 4, 32, -18460, -21458
    sleep                   10, 25
    cut_chg                 11
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_DIR, 512
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -18333, 0, -23760
    member_set              M_Y_DIR, 2992
    plc_dest                0, 4, 32, -18460, -21458
    gosub                   main_2B
    plc_dest                0, 21, 32, 1952, 60
    gosub                   main_2B
    evt_exec                255, I_GOSUB, main_10
    evt_chain               0, 24, 11
    evt_end                 0

.proc main_0B
    xa_on                   0, 18
    message_on              0, ID_MSG_1, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 20
    plc_motion              0, 15, 128
    sleep                   10, 20
    plc_motion              0, 24, 0
    sleep                   10, 20
    plc_motion              0, 25, 20
    wsleep
    wsleeping
    xa_on                   0, 19
    message_on              0, ID_MSG_2, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                2, 0, 0, 64, 24, 24
    sleep                   10, 20
    plc_neck                2, 0, 0, -64, 24, 24
    plc_motion              0, 0, 128
    wsleep
    wsleeping
    xa_on                   0, 20
    message_on              0, ID_MSG_3, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 1, 16
    nop
    sleep                   10, 40
    plc_stop
    nop
    sleep                   10, 7
    plc_motion              0, 0, 144
    plc_cnt                 20
    plc_neck                4, 2, 0, 0, 48, 48
    sleep                   10, 40
    plc_motion              0, 0, 144
    sleep                   10, 30
    plc_stop
    nop
    plc_neck                4, 4, 0, 0, 84, 84
    plc_motion              0, 0, 144
    sleep                   10, 60
    plc_motion              0, 0, 16
    plc_cnt                 25
    plc_neck                2, 0, 0, 64, 24, 24
    sleep                   10, 30
    plc_motion              0, 3, 20
    sleep                   10, 30
    plc_neck                5, 1, 0, 0, 24, 24
    wsleep
    wsleeping
    cut_chg                 9
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 0
    nop
    plc_neck                2, 0, 0, 256, 24, 24
    sleep                   10, 20
    plc_neck                2, 0, 128, 256, 24, 24
    sleep                   10, 30
    plc_neck                2, 0, -128, 256, 24, 24
    sleep                   10, 30
    plc_neck                2, 0, 128, 256, 24, 24
    sleep                   10, 30
    plc_neck                5, 3, 0, 0, 64, 64
    xa_on                   0, 21
    message_on              0, ID_MSG_4, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 10
    evt_next
    nop
    xa_on                   0, 22
    message_on              0, ID_MSG_5, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                2, 0, -256, 256, 12, 12
    sleep                   10, 15
    plc_neck                2, 0, 256, 256, 12, 12
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 13
    evt_next
    nop
    xa_on                   0, 29
    message_on              0, ID_MSG_6, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 10
    evt_next
    nop
    xa_on                   0, 23
    message_on              0, ID_MSG_7, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                2, 0, 0, 256, 18, 18
    sleep                   10, 10
    plc_neck                2, 0, -256, 384, 22, 16
    sleep                   10, 20
    plc_neck                2, 0, 256, 384, 26, 20
    sleep                   10, 28
    plc_neck                2, 0, -256, 384, 50, 40
    sleep                   10, 10
    plc_neck                2, 0, 256, 384, 58, 48
    sleep                   10, 10
    plc_neck                2, 0, -256, 384, 50, 40
    sleep                   10, 10
    plc_neck                2, 0, 256, 384, 58, 48
    sleep                   10, 10
    plc_neck                2, 0, 0, 256, 5, 5
    sleep                   10, 100
    plc_neck                5, 1, 0, 0, 32, 32
    wsleep
    wsleeping
    cut_chg                 9
    evt_next
    nop
    xa_on                   0, 24
    message_on              0, ID_MSG_8, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 16
    nop
    plc_neck                2, 0, -128, 384, 35, 35
    sleep                   10, 10
    plc_neck                2, 0, 128, 384, 35, 35
    sleep                   10, 15
    plc_neck                2, 0, -128, 384, 35, 35
    sleep                   10, 15
    plc_neck                5, 3, 0, 0, 45, 45
    plc_motion              0, 24, 16
    sleep                   10, 24
    plc_motion              0, 25, 20
    wsleep
    wsleeping
    cut_chg                 11
    evt_next
    nop
    xa_on                   0, 25
    message_on              0, ID_MSG_9, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                4, 4, 0, 0, 96, 96
    plc_motion              0, 1, 128
    sleep                   10, 20
    plc_motion              0, 0, 128
    sleep                   10, 30
    plc_motion              0, 3, 20
    sleep                   10, 50
    evt_exec                255, I_GOSUB, main_11
    plc_motion              0, 4, 0
    sleep                   10, 60
    plc_neck                5, 1, 0, 0, 30, 30
    sleep                   10, 20
    plc_motion              0, 4, 144
    sleep                   10, 50
    evt_exec                255, I_GOSUB, main_12
    plc_neck                5, 3, 0, 0, 30, 30
    plc_motion              0, 0, 0
    sleep                   10, 30
    plc_stop
    nop
    wsleep
    wsleeping
    sleep                   10, 30
    plc_neck                1, -20300, -2700, -19400, 10, 10
    plc_stop
    nop
    plc_flg                 0, 16
    sleep                   10, 30
    evt_exec                255, I_GOSUB, main_13
    sleep                   10, 60
    evt_exec                255, I_GOSUB, main_0C
    sleep                   10, 60
    cut_chg                 12
    plc_neck                5, 1, 0, 0, 94, 94
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_DIR, 64
    evt_next
    nop
    xa_on                   0, 26
    message_on              0, ID_MSG_10, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 9
    evt_next
    nop
    xa_on                   0, 28
    message_on              0, ID_MSG_11, 0, 0, 0
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 94, 94
    sleep                   10, 8
    plc_dest                0, 9, 32, -21900, -21800
    wsleep
    wsleeping
    cut_chg                 10
    evt_next
    nop
    xa_on                   0, 27
    message_on              0, ID_MSG_12, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                2, 0, 128, -256, 20, 20
    sleep                   10, 10
    plc_neck                2, 0, -128, -256, 20, 20
    sleep                   10, 10
    plc_neck                2, 0, 128, -256, 20, 20
    sleep                   10, 16
    plc_neck                0, 0, 0, 0, 30, 30
    plc_motion              0, 1, 0
    sleep                   10, 30
    plc_motion              0, 2, 0
    plc_neck                2, 0, 0, -128, 10, 10
    wsleep
    wsleeping
    cut_chg                 2
    cut_auto                1
    cut_be_set              2, 3, 1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    work_set                WK_PLAYER, 0
    plc_ret
    evt_end                 0

.proc main_0C
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -20300, -2700, -19400, 92, 92
    sleep                   10, 15
    plc_dest                0, 9, 32, -19000, -19400
    plc_rot                 0, 48
    evt_end                 0

.proc main_0D
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 4, 0
    nop
    sleep                   10, 20
    se_on                   2, 275, 4, 0, 0, 0
    plc_neck                5, 1, 0, 0, 12, 12
    evt_end                 0

.proc main_0E
    se_on                   2, 267, 4, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               4, -64
    for                     0, off_3294, 28
    add_speed
    evt_next
    next                    0

off_3294:
    speed_set               4, -32
    for                     0, off_32A2, 5
    add_speed
    evt_next
    next                    0

off_32A2:
    speed_set               4, -16
    for                     0, off_32B0, 4
    add_speed
    evt_next
    next                    0

off_32B0:
    speed_set               4, 8
    for                     0, off_32BE, 4
    add_speed
    evt_next
    next                    0

off_32BE:
    evt_end                 0

.proc main_0F
    se_on                   2, 267, 4, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_04, M_X_POS
    nop
    member_copy             V_05, M_Z_POS
    nop
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               4, -64

off_32E0:
    if                      0, off_32FC
    work_copy               5, 8, 1
    work_copy               4, 2, 1
    dir_ck                  0, 0, 0, 0, 0, 64, 0
    goto                    255, 255, 0, off_3304
    endif
    nop

off_32FC:
    add_speed
    evt_next
    goto                    255, 255, 0, off_32E0

off_3304:
    add_speed
    evt_next
    speed_set               4, 8
    for                     0, off_3314, 4
    add_speed
    evt_next
    next                    0

off_3314:
    evt_end                 0

.proc main_10
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               4, -32
    for                     0, off_3328, 12
    add_speed
    evt_next
    next                    0

off_3328:
    speed_set               4, -16
    for                     0, off_3336, 6
    add_speed
    evt_next
    next                    0

off_3336:
    speed_set               4, 8
    for                     0, off_3344, 4
    add_speed
    evt_next
    next                    0

off_3344:
    evt_end                 0

.proc main_11
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               4, 32
    for                     0, off_3358, 11
    add_speed
    evt_next
    next                    0

off_3358:
    speed_set               4, -8
    for                     0, off_3366, 4
    add_speed
    evt_next
    next                    0

off_3366:
    evt_end                 0

.proc main_12
    sleep                   10, 10
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               4, -16
    for                     0, off_337E, 22
    add_speed
    evt_next
    next                    0

off_337E:
    speed_set               4, 8
    for                     0, off_338C, 4
    add_speed
    evt_next
    next                    0

off_338C:
    evt_end                 0

.proc main_13
    sleep                   10, 10
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               4, -8
    for                     0, off_33A4, 44
    add_speed
    evt_next
    next                    0

off_33A4:
    speed_set               4, -8
    for                     0, off_33B2, 4
    add_speed
    evt_next
    next                    0

off_33B2:
    evt_end                 0

.proc main_14
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                5, 1, 0, 0, 20, 20
    sleep                   10, 10
    xa_on                   0, 27
    message_on              0, ID_MSG_12, 0, 0, 0
    plc_neck                2, 0, 128, -256, 20, 20
    sleep                   10, 10
    plc_neck                2, 0, -128, -256, 20, 20
    sleep                   10, 10
    plc_neck                2, 0, 128, -256, 20, 20
    sleep                   10, 16
    plc_neck                2, 0, 0, -128, 10, 10
    plc_motion              0, 2, 16
    wsleep
    wsleeping
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_15
    work_set                WK_ENEMY, ID_EM_0

off_341F:
    nop
    super_on                0, 192, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_next
    nop
    goto                    255, 255, 0, off_341F
    evt_end                 0

.proc main_16
    if                      0, off_3448
    cmp                     0, V_CUT, CMP_NE, 7
    evt_end                 0
    endif
    nop

off_3448:
    set                     FG_STOP, 7, 1
    if                      0, off_3492
    ck                      FG_SCENARIO, 1, 0
    message_on              0, ID_MSG_27, 0, 255, 255
    evt_next
    nop
    if                      0, off_348E
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_SCENARIO, 1, 1
    gosub                   main_17
    aot_reset               ID_AOT_15, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 10, 0, ITEM_EAGLESTONE, 0, aot, 0
    aot_reset               ID_AOT_16, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 10, 0, ITEM_SERPENTSTONE, 0, aot, 0
    aot_reset               ID_AOT_14, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 10, 0, ITEM_JAGUARSTONE, 0, aot, 0
    set                     FG_PBF07, 1, 1
    endif
    nop

off_348E:
    else                    0, off_34BA

off_3492:
    cut_chg                 8
    if                      0, off_34AE
    ck                      FG_SCENARIO, 2, 1
    ck                      FG_SCENARIO, 3, 1
    ck                      FG_SCENARIO, 4, 1
    message_on              0, ID_MSG_29, 0, 255, 255
    else                    0, off_34B6

off_34AE:
    message_on              0, ID_MSG_28, 0, 255, 255
    nop
    nop

off_34B6:
    evt_next
    cut_old
    nop
    nop

off_34BA:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_17
    se_on                   2, 269, 516, 0, 0, 0
    sleep                   10, 5
    se_on                   2, 270, 516, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    speed_set               2, -50
    for                     0, off_34EE, 25
    add_speed
    evt_next
    next                    0

off_34EE:
    evt_end                 0

.proc main_18
    set                     FG_STOP, 7, 1
    cut_chg                 8
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    member_set              M_Y_POS, -3019
    sce_item_lost           ITEM_EAGLESTONE
    se_on                   2, 266, 772, 0, 0, 0
    sleep                   10, 30
    set                     FG_SCENARIO, 2, 1
    if                      0, off_352C
    ck                      FG_SCENARIO, 2, 1
    ck                      FG_SCENARIO, 3, 1
    ck                      FG_SCENARIO, 4, 1
    evt_exec                255, I_GOSUB, main_1B
    else                    0, off_3534

off_352C:
    cut_old
    set                     FG_STOP, 7, 0
    nop
    nop
    nop

off_3534:
    evt_end                 0

.proc main_19
    set                     FG_STOP, 7, 1
    cut_chg                 8
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    member_set              M_Y_POS, -2695
    sce_item_lost           ITEM_SERPENTSTONE
    se_on                   2, 266, 1028, 0, 0, 0
    sleep                   10, 30
    set                     FG_SCENARIO, 3, 1
    if                      0, off_3572
    ck                      FG_SCENARIO, 2, 1
    ck                      FG_SCENARIO, 3, 1
    ck                      FG_SCENARIO, 4, 1
    evt_exec                255, I_GOSUB, main_1B
    else                    0, off_357A

off_3572:
    cut_old
    set                     FG_STOP, 7, 0
    nop
    nop
    nop

off_357A:
    evt_end                 0

.proc main_1A
    set                     FG_STOP, 7, 1
    cut_chg                 8
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_set              M_Y_POS, -2380
    sce_item_lost           ITEM_JAGUARSTONE
    se_on                   2, 266, 1284, 0, 0, 0
    sleep                   10, 30
    set                     FG_SCENARIO, 4, 1
    if                      0, off_35B8
    ck                      FG_SCENARIO, 2, 1
    ck                      FG_SCENARIO, 3, 1
    ck                      FG_SCENARIO, 4, 1
    evt_exec                255, I_GOSUB, main_1B
    else                    0, off_35C0

off_35B8:
    cut_old
    set                     FG_STOP, 7, 0
    nop
    nop
    nop

off_35C0:
    evt_end                 0

.proc main_1B
    set                     FG_STATUS, 27, 1
    set                     FG_STOP, 7, 1
    cut_chg                 3
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_1C
    nop_8b                  100, 65, 0, 0, 0
    nop_8a                  0, 4, 0, 66, 0
    nop_8b                  150, 8, 0, 66, 0
    se_on                   2, 271, 260, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    speed_set               1, -50
    for                     0, off_3604, 72
    add_speed
    evt_next
    next                    0

off_3604:
    cut_chg                 7
    cut_auto                1
    gosub                   main_1D
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_MAP_C, 2, 1
    set                     FG_STATUS, 27, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_1C
    sleep                   10, 4
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -23220, -1800, -24830, 64, 64
    sleep                   10, 4
    plc_dest                0, 21, 32, 1024, 64
    gosub                   main_2B
    plc_motion              1, 1, 0
    sleep                   10, 6
    plc_stop
    nop
    evt_end                 0

.proc main_1D
    set                     FG_ROOM, 0, 1
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -21800
    sca_id_set              13, 0, 0
    set                     FG_PBF03, 4, 0
    evt_end                 0

.proc main_1E
    set                     FG_SCENARIO, 6, 1
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    evt_next
    cut_chg                 1
    work_set                WK_SPLAYER, 0
    plc_neck                5, 1, 0, 0, 192, 192
    sleep                   10, 4
    plc_dest                0, 9, 33, -9152, -20029
    gosub                   main_2C
    xa_on                   0, 30
    message_on              0, ID_MSG_15, 0, 0, 0
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 10
    plc_stop
    nop
    sleep                   10, 10
    plc_stop
    nop
    plc_dest                0, 5, 32, -16432, -21490
    gosub                   main_2B
    plc_dest                0, 21, 32, 1449, 64
    gosub                   main_2B
    xa_on                   0, 42
    message_on              0, ID_MSG_13, 0, 0, 0
    plc_motion              0, 24, 0
    sleep                   10, 24
    plc_motion              0, 15, 0
    sleep                   10, 25
    plc_motion              0, 15, 144
    wsleep
    wsleeping
    xa_on                   0, 43
    message_on              0, ID_MSG_14, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 1, 0
    nop
    plc_neck                4, 2, 0, 0, 64, 64
    sleep                   10, 30
    plc_motion              0, 0, 0
    sleep                   10, 15
    plc_neck                5, 1, 0, 0, 32, 32
    plc_motion              2, 2, 4
    wsleep
    wsleeping
    cut_chg                 2
    cut_auto                1
    work_set                WK_PLAYER, 0
    plc_ret
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -18460, 0, -22987
    member_set              M_Y_DIR, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    evt_exec                9, I_GOSUB, main_26
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_1F
    set                     FG_SCENARIO, 7, 1
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    evt_kill                9
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -21684, 0, -25197
    member_set              M_Y_DIR, 2048
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -4097
    member_set2             M_TYPE, V_TEMP
    nop
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    plc_neck                5, 2, 0, 0, 64, 64
    pos_set                 0, -24825, 0, -18951
    member_set              M_Y_DIR, 1304
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_20
    sleep                   10, 20
    xa_on                   0, 30
    message_on              0, ID_MSG_15, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    cut_chg                 6
    sleep                   10, 20
    xa_on                   0, 31
    message_on              0, ID_MSG_16, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 64, 64
    plc_motion              0, 18, 0
    sleep                   10, 20
    plc_motion              0, 18, 128
    sleep                   10, 26
    plc_motion              0, 20, 0
    sleep                   10, 25
    plc_motion              0, 15, 0
    sleep                   10, 20
    plc_motion              0, 15, 128
    sleep                   10, 40
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                3, 1, 0, 0, 32, 32
    sleep                   10, 60
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -25088, -16050
    gosub                   main_2B
    aot_reset               ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 154, 96, 0, 0, 109, 195
    aot_on                  ID_AOT_3
    cut_auto                1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_20
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 5, 33, -24216, -24756
    plc_flg                 0, 4
    gosub                   main_2C
    plc_dest                0, 4, 33, -25784, -21025
    gosub                   main_2C
    plc_dest                0, 21, 33, 3464, 64
    evt_end                 0

.proc main_21
    set                     FG_SCENARIO, 8, 1
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    evt_next
    work_set                WK_PLAYER, 0
    pos_set                 0, -25321, 0, -18500
    member_set              M_Y_DIR, 1400
    plc_neck                5, 2, 0, 0, 192, 192
    plc_dest                0, 21, 32, 1584, 32
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -26470, 0, -22573
    member_set              M_Y_DIR, 3312
    plc_dest                0, 5, 33, -26098, -19277
    gosub                   main_2C
    plc_dest                0, 21, 33, 3584, 32
    gosub                   main_2C
    evt_exec                255, I_GOSUB, main_23
    evt_exec                255, I_GOSUB, main_22
    xa_on                   0, 32
    message_on              0, ID_MSG_17, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 14
    evt_next
    nop
    xa_on                   0, 33
    message_on              0, ID_MSG_18, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -120, 12, 12
    wsleep
    wsleeping
    cut_chg                 6
    evt_next
    work_set                WK_PLAYER, 0
    plc_neck                5, 2, 0, 0, 192, 192
    plc_motion              0, 32, 0
    set                     FG_ROOM, 1, 1
    sleep                   10, 63
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
    nop
    plc_neck                5, 2, 0, 0, 192, 192
    while                   4, off_3938
    ck                      FG_ROOM, 1, 0
    evt_next
    nop
    ewhile                  0

off_3938:
    set                     FG_ROOM, 1, 0
    xa_on                   0, 34
    message_on              0, ID_MSG_19, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 192, 192
    plc_motion              0, 0, 16
    sleep                   10, 30
    plc_motion              0, 0, 144
    sleep                   10, 30
    wsleep
    wsleeping
    xa_on                   0, 35
    message_on              0, ID_MSG_20, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 0
    nop
    plc_neck                2, 0, 256, 256, 32, 32
    sleep                   10, 8
    plc_neck                2, 0, -256, 256, 32, 32
    sleep                   10, 16
    plc_neck                2, 0, 256, 256, 32, 32
    sleep                   10, 16
    plc_neck                5, 2, 0, 0, 32, 32
    sleep                   10, 20
    plc_motion              1, 6, 16
    sleep                   10, 50
    plc_motion              0, 38, 0
    sleep                   10, 40
    plc_motion              0, 42, 144
    sleep                   10, 20
    plc_motion              0, 40, 20
    sleep                   10, 40
    plc_motion              0, 41, 0
    sleep                   10, 40
    plc_motion              0, 41, 144
    sleep                   10, 50
    wsleep
    wsleeping
    xa_on                   0, 36
    message_on              0, ID_MSG_21, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 1, 0
    nop
    sleep                   10, 30
    wsleep
    wsleeping
    xa_on                   0, 37
    message_on              0, ID_MSG_22, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 43, 16
    nop
    plc_neck                4, 4, 0, 0, 32, 32
    sleep                   10, 40
    plc_neck                5, 2, 0, 0, 32, 32
    sleep                   10, 20
    plc_motion              0, 42, 0
    sleep                   10, 20
    plc_motion              0, 42, 144
    sleep                   10, 20
    plc_motion              0, 40, 20
    wsleep
    wsleeping
    if                      0, off_3A5C
    ck                      FG_STATUS, F_SCENARIO, 0
    work_set                WK_OBJECT, ID_OBJ_8
    nop
    super_set               0, 64, 142, 32, 218, 18, -1088, 0, -1856
    endif
    nop

off_3A5C:
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    sleep                   10, 24
    if                      0, off_3A88
    ck                      FG_STATUS, F_SCENARIO, 0
    gosub                   main_24
    work_set                WK_OBJECT, ID_OBJ_8
    nop
    super_reset             0, -1088, 0, -1856
    pos_set                 0, 0, -20000, 0
    endif
    nop

off_3A88:
    cut_auto                1
    work_set                WK_PLAYER, 0
    plc_ret
    work_set                WK_SPLAYER, 0
    plc_ret
    set                     FG_STATUS, 3, 1
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_29, 0, 0
    aot_reset               ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_2A, 0, 0
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_22
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    plc_motion              0, 2, 64
    member_set              M_Y_DIR, 3584
    sleep                   10, 30
    plc_motion              0, 3, 20
    while                   4, off_3AE2
    ck                      FG_ROOM, 1, 0
    evt_next
    nop
    ewhile                  0

off_3AE2:
    set                     FG_ROOM, 1, 0
    plc_motion              0, 4, 0
    sleep                   10, 53
    pos_set                 0, -25781, 0, -19039
    evt_next
    nop
    plc_dest                0, 7, 33, -26335, -19311
    gosub                   main_2C
    set                     FG_ROOM, 1, 1
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
    nop
    evt_end                 0

.proc main_23
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    plc_motion              0, 30, 64
    member_set              M_Y_DIR, 1584
    sleep                   10, 30
    plc_motion              0, 31, 20
    sleep                   10, 60
    plc_stop
    nop
    evt_end                 0

.proc main_24
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    plc_motion              0, 33, 16
    nop
    sleep                   10, 40
    se_on                   2, 268, 1, 0, 0, 0
    sleep                   10, 30
    xa_on                   0, 38
    message_on              0, ID_MSG_23, 0, 0, 0
    wsleep
    wsleeping
    xa_on                   0, 39
    message_on              0, ID_MSG_24, 0, 0, 0
    plc_motion              0, 34, 0
    wsleep
    wsleeping
    xa_on                   0, 40
    message_on              0, ID_MSG_25, 0, 0, 0
    plc_motion              0, 33, 0
    wsleep
    wsleeping
    xa_on                   0, 41
    sleep                   10, 60
    plc_motion              0, 35, 16
    wsleep
    wsleeping
    se_on                   2, 268, 1, 0, 0, 0
    plc_motion              0, 18, 144
    sleep                   10, 60
    evt_end                 0

.proc main_25
    if                      0, off_3BD6
    ck                      FG_ITEM, 55, 1
    ck                      FG_SCENARIO, 8, 0
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -16641, 0, -23700, 2336, 0, 0
    else                    0, off_3C48

off_3BD6:
    if                      0, off_3C46
    ck                      FG_SCENARIO, 8, 1
    ck                      FG_SCENARIO, 34, 0
    set                     FG_STATUS, 3, 1
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 0, SBK_32, 0, 255, -16641, 0, -23700, 2336, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    switch                  27, off_3C30
    case                    0, off_3C2E, 539
    pos_set                 0, -26159, 0, -18908
    dir_set                 0, 0, 1024, 0
    break                   0
    pos_set                 0, -17813, 0, -22784
    dir_set                 0, 0, 168, 0
    break                   0

off_3C2E:
    eswitch                 0

off_3C30:
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_29, 0, 0
    aot_reset               ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_2A, 0, 0
    endif
    nop

off_3C46:
    nop
    nop

off_3C48:
    evt_end                 0

.proc main_26
    evt_next
    work_set                WK_SPLAYER, 0
    plc_neck                5, 1, 0, 0, 32, 32
    plc_motion              2, 2, 4

off_3C5C:
    if                      0, off_3CA8
    cmp                     0, V_RNG, CMP_GT, 30000
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_04, M_X_POS
    nop
    member_copy             V_05, M_Z_POS
    nop
    work_set                WK_SPLAYER, 0
    nop
    if                      0, off_3C8E
    work_copy               5, 8, 1
    work_copy               4, 2, 1
    dir_ck                  0, 0, 0, 0, 0, 94, 1
    else                    0, off_3CA6

off_3C8E:
    work_copy               5, 10, 1
    work_copy               4, 4, 1
    plc_dest                0, 9, 33, 0, 0
    gosub                   main_2C
    plc_motion              2, 2, 4
    nop
    nop

off_3CA6:
    endif
    nop

off_3CA8:
    sleep                   10, 4
    goto                    255, 255, 0, off_3C5C
    evt_end                 0

.proc main_27
    set                     FG_SCENARIO, 12, 1
    set                     FG_STOP, 7, 1
    sleep                   10, 4
    set                     FG_STATUS, 27, 1
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 0
    nop
    sleep                   10, 20
    plc_neck                2, 0, -512, 0, 12, 12
    sleep                   10, 30
    cut_chg                 2
    sleep                   10, 90
    cut_old
    evt_next
    xa_on                   0, 44
    message_on              0, ID_MSG_31, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 0
    nop
    sleep                   10, 20
    plc_neck                2, 0, 256, 0, 36, 36
    sleep                   10, 15
    plc_neck                2, 0, -256, 0, 36, 36
    sleep                   10, 15
    plc_neck                0, 0, 0, 0, 36, 36
    sleep                   10, 15
    plc_ret
    nop
    wsleep
    wsleeping
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_28
    set                     FG_SCENARIO, 10, 1
    message_on              0, ID_MSG_30, 0, 255, 255
    aot_reset               ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1F, 0, 0
    evt_end                 0

.proc main_29
    set                     FG_STATUS, 3, 0
    aot_reset               ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 13, 178, 0, 0, 44, 35
    aot_on                  ID_AOT_0
    evt_end                 0

.proc main_2A
    set                     FG_STATUS, 3, 0
    aot_reset               ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 55, 212, 0, 0, 12, 218
    aot_on                  ID_AOT_1
    evt_end                 0

.proc main_2B
    do                      0, off_3D7A
    evt_next
    nop
    edwhile                 off_3D7A
    ck                      FG_ROOM, 32, 0

off_3D7A:
    evt_end                 0

.proc main_2C
    do                      0, off_3D88
    evt_next
    nop
    edwhile                 off_3D88
    ck                      FG_ROOM, 33, 0

off_3D88:
    evt_end                 0

.proc main_2D
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    cut_auto                1
    evt_end                 0
    db                      0x48, 0x58
