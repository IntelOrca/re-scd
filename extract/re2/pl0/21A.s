.version 2

.init
.proc init
    if                      0, off_1A82
    ck                      FG_STATUS, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_1A82:
    if                      0, off_1AAC
    ck                      FG_COMMON, 254, 1
    set                     FG_ITEM, 29, 0
    set                     FG_ENEMY, 79, 0
    set                     FG_ENEMY, 80, 0
    set                     FG_COMMON, 35, 0
    set                     FG_COMMON, 112, 0
    set                     FG_COMMON, 114, 0
    set                     FG_COMMON, 61, 0
    set                     FG_COMMON, 59, 0
    endif
    nop

off_1AAC:
    if                      0, off_1ABA
    ck                      FG_COMMON, 88, 1
    set                     FG_COMMON, 59, 1
    endif
    nop

off_1ABA:
    item_aot_set            ID_AOT_13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4824, -9338, 1440, 1430, ITEM_HERBB, 1, 135, ID_OBJ_0, IF_FLOOR
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -4374, 0, -8528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16776, -12232, 2870, 2040, -6434, 0, -12495, -15416, 1, 25, 2, 0, 26, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6638, -3897, 2270, 2270, -10280, 0, -17211, -1999, 2, 2, 0, 0, 22, 5, 0, 0, UNLOCKED, 0
    if                      0, off_1B50
    ck                      FG_STATUS, F_PLAYER, 1
    set                     FG_COMMON, 35, 1
    set                     FG_COMMON, 112, 1
    set                     FG_COMMON, 114, 1
    set                     FG_COMMON, 61, 1
    endif
    nop

off_1B50:
    if                      0, off_1C1A
    ck                      FG_COMMON, 114, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_DOG, 7, AI_DEFAULT, 0, SBK_12, 0, 79, -5681, 0, -11455, 2024, 0, 0
    if                      0, off_1BAE
    ck                      FG_COMMON, 61, 0
    if                      0, off_1B94
    ck                      FG_ENEMY, 80, 0
    aot_set                 ID_AOT_9, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -12428, -10307, 4690, 4570, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1B94:
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_DOG, 8, AI_DEFAULT, 0, SBK_12, 0, 80, -4210, 0, -6566, 1987, 0, 0
    else                    0, off_1BC6

off_1BAE:
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_DOG, 7, AI_DEFAULT, 0, SBK_12, 0, 80, -3910, 0, -7066, 1987, 0, 0
    nop
    nop

off_1BC6:
    aot_set                 ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8788, -9137, 1490, 3210, ID_MSG_0, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8788, -13677, 1490, 3910, ID_MSG_0, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_5, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -8148, -8347, 2020, 2720, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_6, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -8148, -12647, 2020, 3050, 0, 0, 0, 0, 0, 0
    else                    0, off_1C48

off_1C1A:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 0, SBK_12, 0, 79, -10607, 0, -8134, 2024, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 0, SBK_12, 0, 80, -13909, 0, -3854, 1987, 0, 0
    nop
    nop

off_1C48:
    if                      0, off_1C82
    ck                      FG_COMMON, 35, 1
    sca_id_set              17, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -11712, 0, -11264, 0, -360, 1050, 0, 0, 0, 0, 0, 0, 0, 0
    flr_set                 5, 1
    nop
    else                    0, off_1CAA

off_1C82:
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -7902, 0, -11264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1CAA:
    if                      0, off_1CE4
    ck                      FG_COMMON, 112, 1
    sca_id_set              20, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -8452, 0, -7414, 0, -256, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    flr_set                 4, 1
    nop
    else                    0, off_1D0C

off_1CE4:
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -7903, 0, -7221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1D0C:
    if                      0, off_1D5A
    ck                      FG_COMMON, 59, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 0, -6161, 0, -3485, 0, -576, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_12, SCE_STATUS, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sca_id_set              21, 0, 0
    sca_id_set              16, 0, 0
    else                    0, off_1D82

off_1D5A:
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 0, -6161, 0, -3485, 0, -576, -1088, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1D82:
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x10, 0x00

.main
.proc main
    if                      0, off_1DE0
    ck                      FG_STATUS, F_BONUS, 1
    gosub                   main_11
    evt_end                 0
    endif
    nop

off_1DE0:
    item_aot_set            ID_AOT_10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11348, -18437, 1820, 1430, ITEM_HERBR, 1, 29, ID_OBJ_5, IF_FLOOR
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 16, -10428, 0, -17537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    gosub                   main_03
    evt_end                 0

.proc aot
    if                      0, off_1E2C
    ck                      FG_STATUS, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_1E2C:
    gosub                   main_04
    evt_end                 0

.proc main_02
    if                      0, off_1E44
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_bgmtbl_set          0, 26, 2, 65283, 0
    else                    0, off_1E4E

off_1E44:
    sce_bgmtbl_set          0, 26, 2, 65283, 0
    nop
    nop

off_1E4E:
    evt_end                 0

.proc main_03
    aot_set                 ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6638, -3897, 2270, 2270, 255, 0, I_GOSUB, main_05, 0, 0
    if                      0, off_1E84
    ck                      FG_COMMON, 114, 0
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11348, -18437, 1820, 1430, 255, 0, I_GOSUB, main_06, 0, 0
    else                    0, off_1E8A

off_1E84:
    set                     FG_ROOM, 1, 1
    nop
    nop

off_1E8A:
    if                      0, off_1ED4
    ck                      FG_COMMON, 59, 0
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 255, 255
    if                      0, off_1EC6
    ck                      FG_STATUS, F_PLAYER, 0
    aot_reset               ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_1, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_11, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -6638, -3897, 2270, 2270, 10, 0, ITEM_MANHOLEOPENER, 0, aot, 0
    else                    0, off_1ED2

off_1EC6:
    aot_reset               ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_4, 0, 0, 0, 255, 255
    nop
    nop

off_1ED2:
    endif
    nop

off_1ED4:
    evt_end                 0

.proc main_04
    if                      0, off_1FDC
    ck                      FG_STATUS, F_PLAYER, 0
    if                      0, off_1F1A
    ck                      FG_COMMON, 61, 0
    if                      0, off_1F16
    ck                      FG_PBF0D, 0, 4
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_1F14
    member_cmp              0, 9, 0, 9, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    if                      0, off_1F12
    ck                      FG_ENEMY, 80, 0
    set                     FG_COMMON, 61, 1
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_1F12:
    endif
    nop

off_1F14:
    endif
    nop

off_1F16:
    else                    0, off_1F9E

off_1F1A:
    if                      0, off_1F9C
    ck                      FG_COMMON, 114, 0
    if                      0, off_1F5E
    ck                      FG_ENEMY, 80, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    if                      0, off_1F5C
    member_cmp              0, 23, 0, 1, 0
    member_set              M_SCE_FREE0, 0
    if                      0, off_1F5A
    member_cmp              0, 9, 0, 5, 0
    if                      0, off_1F58
    ck                      FG_ROOM, 3, 0
    set                     FG_ROOM, 3, 1
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_1F58:
    endif
    nop

off_1F5A:
    endif
    nop

off_1F5C:
    endif
    nop

off_1F5E:
    if                      0, off_1F9A
    ck                      FG_ENEMY, 79, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_1F98
    member_cmp              0, 23, 0, 1, 0
    member_set              M_SCE_FREE0, 0
    if                      0, off_1F96
    member_cmp              0, 9, 0, 6, 0
    if                      0, off_1F94
    ck                      FG_ROOM, 4, 0
    set                     FG_ROOM, 4, 1
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_1F94:
    endif
    nop

off_1F96:
    endif
    nop

off_1F98:
    endif
    nop

off_1F9A:
    endif
    nop

off_1F9C:
    nop
    nop

off_1F9E:
    if                      0, off_1FDA
    ck                      FG_COMMON, 114, 1
    if                      0, off_1FD8
    ck                      FG_ENEMY, 79, 1
    if                      0, off_1FD6
    ck                      FG_ENEMY, 80, 1
    if                      0, off_1FD4
    ck                      FG_ROOM, 1, 0
    if                      0, off_1FD2
    ck                      FG_ROOM, 0, 0
    set                     FG_ROOM, 0, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 0
    endif
    nop

off_1FD2:
    endif
    nop

off_1FD4:
    endif
    nop

off_1FD6:
    endif
    nop

off_1FD8:
    endif
    nop

off_1FDA:
    endif
    nop

off_1FDC:
    if                      0, off_2006
    ck                      FG_COMMON, 59, 0
    if                      0, off_2004
    cmp                     0, V_00, CMP_EQ, 11
    if                      0, off_2002
    cmp                     0, V_USED_ITEM, CMP_EQ, 75
    set                     FG_COMMON, 59, 1
    evt_exec                255, I_GOSUB, main_0E
    endif
    nop

off_2002:
    endif
    nop

off_2004:
    endif
    nop

off_2006:
    if                      0, off_201A
    ck                      FG_ENEMY, 80, 1
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_201A:
    if                      0, off_202E
    ck                      FG_ENEMY, 79, 1
    aot_reset               ID_AOT_8, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_202E:
    if                      0, off_204C
    ck                      FG_COMMON, 114, 1
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_8, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_204C:
    evt_end                 0

.proc main_05
    message_on              0, ID_MSG_3, 0, 255, 255
    evt_next
    nop
    if                      0, off_2062
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_on                  ID_AOT_2
    endif
    nop

off_2062:
    evt_end                 0

.proc main_06
    set                     FG_STOP, 7, 1
    aot_on                  ID_AOT_10
    set                     FG_COMMON, 114, 1
    evt_next
    nop
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_8, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    sleep                   10, 25
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_20A8
    ck                      FG_ENEMY, 79, 0
    set                     FG_COMMON, 35, 1
    evt_exec                255, I_GOSUB, main_07
    endif
    nop

off_20A8:
    work_set                WK_ENEMY, ID_EM_1
    nop
    if                      0, off_20BE
    ck                      FG_ENEMY, 80, 0
    set                     FG_COMMON, 112, 1
    evt_exec                255, I_GOSUB, main_08
    endif
    nop

off_20BE:
    set                     FG_STOP, 7, 0
    sleep                   10, 9
    if                      0, off_20D8
    ck                      FG_ENEMY, 79, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    else                    0, off_20F2

off_20D8:
    if                      0, off_20EA
    ck                      FG_ENEMY, 80, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    else                    0, off_20F0

off_20EA:
    set                     FG_ROOM, 0, 1
    nop
    nop

off_20F0:
    nop
    nop

off_20F2:
    gosub                   main_02
    evt_end                 0

.proc main_07
    sca_id_set              17, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 14
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    pos_set                 0, -5166, 0, -10842
    dir_set                 0, 0, 2048, 0
    evt_next
    work_set                WK_ENEMY, ID_EM_0
    member_set              M_ROUTINE3, 1
    se_on                   3, 19, 3, 0, 0, 0
    evt_exec                255, I_GOSUB, main_09
    flr_set                 5, 1
    nop
    evt_end                 0

.proc main_08
    sca_id_set              20, 0, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 2
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    member_set              M_Y_POS, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -8452, 0, -7414
    dir_set                 0, 0, -256, -1024
    se_on                   3, 19, 3, 0, 0, 0
    sleep                   10, 18
    se_on                   2, 11, 0, -8958, -1800, -6772
    flr_set                 4, 1
    nop
    evt_end                 0

.proc main_09
    sleep                   10, 10
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -7902, 0, -11264
    dir_set                 0, 0, 0, 0
    evt_next
    nop
    se_on                   2, 11, 0, -7902, -1800, -11264
    nop_8a                  0, 7, 0, 0, 0
    nop_8b                  255, 5, 0, 0, 0
    save                    V_04, -500
    save                    V_05, -360
    save                    V_09, 30
    for                     0, off_2208, 8
    member_copy             V_TEMP, M_X_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc2                   OP_ADD, V_TEMP, V_09
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

off_2208:
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  200, 7, 0, 0, 0
    save                    V_09, -30
    save                    V_04, -100
    for                     0, off_224C, 1
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc2                   OP_ADD, V_TEMP, V_09
    member_set2             M_Z_DIR, V_TEMP
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_224C:
    save                    V_05, -270
    save                    V_04, 10
    save                    V_09, 30
    save                    V_08, -30
    for                     0, off_22B2, 7
    member_copy             V_TEMP, M_X_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_05, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc2                   OP_ADD, V_TEMP, V_09
    member_set2             M_Z_DIR, V_TEMP
    nop
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 30
    copy                    V_09, V_TEMP
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc2                   OP_ADD, V_TEMP, V_08
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_22B2:
    evt_exec                255, I_GOSUB, main_0A
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  180, 4, 0, 0, 0
    save                    V_05, -180
    save                    V_04, 15
    for                     0, off_2306, 5
    member_copy             V_TEMP, M_X_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_05, V_TEMP
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc2                   OP_ADD, V_TEMP, V_08
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2306:
    nop_8a                  0, 2, 0, 0, 0
    nop_8c                  0, 150, 0, 10, 0, 0, 0
    save                    V_05, -90
    save                    V_04, 15
    for                     0, off_234C, 3
    member_copy             V_TEMP, M_X_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_234C:
    evt_end                 0

.proc main_0A
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_X_DIR, -10
    evt_next
    nop
    member_set              M_X_DIR, 0
    evt_next
    nop
    member_set              M_X_DIR, 10
    evt_next
    nop
    member_set              M_X_DIR, -5
    evt_next
    nop
    member_set              M_X_DIR, 0
    evt_next
    nop
    member_set              M_X_DIR, -5
    evt_next
    nop
    member_set              M_X_DIR, -2
    evt_next
    nop
    member_set              M_X_DIR, 0
    evt_next
    nop
    member_set              M_X_DIR, 2
    evt_next
    nop
    member_set              M_X_DIR, -1
    evt_next
    nop
    member_set              M_X_DIR, 0
    evt_next
    nop
    member_set              M_X_DIR, 1
    evt_next
    nop
    member_set              M_X_DIR, 0
    evt_next
    nop
    evt_end                 0

.proc main_0B
    set                     FG_STOP, 7, 1
    cut_chg                 7
    set                     FG_ROOM, 2, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -9693, 0, -6578
    dir_set                 0, 0, 1024, 0
    plc_dest                0, 4, 32, -10449, -16924
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_ROUTINE3, 1
    sleep                   10, 13
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  250, 4, 0, 1, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, 4974, -6474
    plc_rot                 0, 200
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    plc_motion              1, 3, 0
    nop
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    cut_chg                 4
    cut_auto                1
    evt_end                 0

.proc main_0C
    if                      0, off_242A
    ck                      FG_ROOM, 2, 1
    se_on                   2, 14, 0, -7860, -1800, -7261
    set                     FG_ROOM, 2, 0
    else                    0, off_2438

off_242A:
    se_on                   2, 10, 0, -7860, -1800, -7261
    nop
    nop

off_2438:
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 16
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 8
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 4
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 2
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    set                     FG_ROOM, 3, 0
    nop
    evt_end                 0

.proc main_0D
    if                      0, off_24A8
    ck                      FG_COMMON, 61, 1
    se_on                   2, 10, 0, -7902, -1800, -11264
    endif
    nop

off_24A8:
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 16
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 8
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 4
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 2
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    set                     FG_ROOM, 4, 0
    nop
    evt_end                 0

.proc main_0E
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    cut_auto                0
    set                     FG_STOP, 2, 1
    if                      0, off_259E
    ck                      FG_COMMON, 114, 1
    if                      0, off_255A
    ck                      FG_ENEMY, 79, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 2
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    pos_set                 0, -13615, 0, -3500
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_255A:
    if                      0, off_259C
    ck                      FG_ENEMY, 80, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 2
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    pos_set                 0, -10385, 0, -8773
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_259C:
    endif
    nop

off_259E:
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    super_set               0, 64, 139, 85, 184, 34, 0, 2048, 192
    sca_id_set              21, 0, 220
    sca_id_set              16, 0, 220
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -6593, 0, -3926
    dir_set                 0, 0, 3440, 0
    plc_motion              0, 15, 0
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 20
    se_on                   2, 13, 0, -6593, 0, -3926
    nop_8a                  0, 1, 0, 5, 0
    nop_8a                  0, 1, 0, 10, 0
    nop_8a                  0, 1, 0, 20, 0
    nop_8a                  0, 1, 0, 30, 0
    sleep                   10, 44
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  255, 2, 0, 2, 0
    nop_8b                  100, 5, 0, 4, 0
    nop_8c                  0, 80, 50, 15, 0, 9, 0
    nop_8b                  200, 3, 0, 30, 0
    evt_exec                255, I_GOSUB, main_0F
    sleep                   10, 11
    evt_exec                255, I_GOSUB, main_10
    sleep                   10, 55
    aot_reset               ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 216, 215, 0, 0, 197, 188
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_05, 0, 0
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_STATUS, 27, 0
    sce_item_lost           ITEM_MANHOLEOPENER
    aot_on                  ID_AOT_12
    evt_next
    work_set                WK_OBJECT, ID_OBJ_4
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    if                      0, off_26A0
    ck                      FG_ENEMY, 79, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_26A0:
    if                      0, off_26CA
    ck                      FG_ENEMY, 80, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_26CA:
    evt_end                 0

.proc main_0F
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    se_on                   2, 12, 0, -6593, 0, -3926
    for                     0, off_26F4, 32
    member_copy             V_TEMP, M_Z_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 34
    member_set2             M_Z_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_26F4:
    evt_end                 0

.proc main_10
    work_set                WK_PLAYER, 0
    nop
    for                     0, off_2720, 20
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 23
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 33
    member_set2             M_Z_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2720:
    evt_end                 0

.proc main_11
    sca_id_set              17, 0, 0
    sca_id_set              20, 0, 0
    aot_set                 ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6638, -3897, 2270, 2270, 255, 0, I_GOSUB, main_05, 0, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16776, -12232, 2870, 2040, -6434, 0, -12495, -15416, 1, 25, 2, 0, 26, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6638, -3897, 2270, 2270, -10280, 0, -17211, -1999, 2, 2, 0, 0, 22, 5, 0, 0, UNLOCKED, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_DOG, 2, AI_DEFAULT, 0, SBK_12, 0, 106, -14399, 0, -5254, 3800, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_DOG, 2, AI_DEFAULT, 0, SBK_12, 0, 107, -10460, 0, -14175, 3139, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_DOG, 2, AI_DEFAULT, 0, SBK_12, 0, 137, -14200, 0, -9100, 0, 0, 0
    evt_end                 0

.proc main_12
    message_on              0, ID_MSG_3, 0, 255, 255
    evt_next
    nop
    if                      0, off_27D6
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_on                  ID_AOT_2
    endif
    nop

off_27D6:
    evt_end                 0
