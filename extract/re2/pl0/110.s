.version 2

.init
.proc init
    set                     FG_PBF06, 2, 0
    if                      0, off_2736
    ck                      FG_STATUS, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_2736:
    if                      0, off_2748
    ck                      FG_COMMON, 254, 1
    set                     FG_ITEM, 119, 1
    set                     FG_COMMON, 148, 0
    endif
    nop

off_2748:
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -15189, 5901, 2600, 2390, -13956, -1800, 6456, 1024, 1, 0, 5, 1, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 622, -24130, 1650, 2890, -24013, 0, -21286, 0, 0, 15, 1, 0, 13, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -30334, -9880, 2120, 3900, -8304, 0, -18865, 2096, 0, 18, 0, 0, 13, 3, 0, 0, UNLOCKED, 0
    if                      0, off_27EE
    ck                      FG_STATUS, F_SCENARIO, 1
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -25500, -28042, 1990, 2040, ITEM_UNICORNMEDAL, 1, 17, ID_OBJ_3, IF_DEFAULT
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 4, 0, 10, 16, -24633, -10122, -26502, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_27EE:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 4, 0, 10, 16, -13160, -7200, 7080, -2048, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_28EC
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_28D0
    ck                      FG_ITEM, 119, 0
    if                      0, off_2872
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 4, SBK_3, 3, 21, -26023, -7200, -12482, -4795, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 4, SBK_3, 3, 22, -3664, -7200, -7618, -2391, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_COP, 6, AI_DEFAULT, 4, SBK_4, 3, 23, -19976, -7200, 10825, 1248, 0, 0
    else                    0, off_28CC

off_2872:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_COP, 6, AI_DEFAULT, 4, SBK_3, 3, 21, -25599, -7200, -11750, 3843, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_COP, 6, AI_DEFAULT, 4, SBK_3, 3, 22, -3075, -7200, -7953, 267, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_COP, 6, AI_DEFAULT, 4, SBK_4, 3, 23, -22773, -7200, 10899, 3233, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_COP, 6, AI_DEFAULT, 4, SBK_4, 3, 209, -3551, -7200, -25272, 3573, 0, 0
    nop
    nop

off_28CC:
    else                    0, off_28E8

off_28D0:
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_RED, 0, AI_DEFAULT, 4, SBK_14, 3, 112, -13885, -7200, 10620, 2175, 0, 0
    nop
    nop

off_28E8:
    else                    0, off_29D0

off_28EC:
    if                      0, off_29B6
    ck                      FG_ITEM, 119, 0
    if                      0, off_2942
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 4, SBK_3, 3, 21, -23441, -7200, -7087, 2437, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 4, SBK_3, 3, 22, -24885, -7200, -24890, 2705, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 4, SBK_4, 3, 23, -26304, -7200, -22809, 2895, 0, 0
    else                    0, off_29B2

off_2942:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 4, SBK_3, 3, 21, -23551, -7200, -7056, 2437, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 4, SBK_3, 3, 22, -24146, -7200, -25908, 2519, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 4, SBK_4, 3, 23, -25460, -7200, -22636, 2841, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 4, SBK_4, 3, 209, -25488, -7200, -13767, 3024, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 4, SBK_4, 3, 210, -26223, -7200, -24975, -848, 0, 0
    nop
    nop

off_29B2:
    else                    0, off_29CE

off_29B6:
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_RED, 0, AI_DEFAULT, 4, SBK_14, 3, 112, -13885, -7200, 10620, 2175, 0, 0
    nop
    nop

off_29CE:
    nop
    nop

off_29D0:
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main
    if                      0, off_29F0
    ck                      FG_STATUS, F_BONUS, 1
    gosub                   main_06
    evt_end                 0
    endif
    nop

off_29F0:
    aot_set                 ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -15189, 5901, 2600, 2390, 255, 0, I_GOSUB, main_02, 0, 0
    if                      0, off_2A66
    ck                      FG_COMMON, 148, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, 11550, -1800, 6039
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 4, 0, 10, 16, 27600, 7200, 23800, -2048, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 4, 0, 10, 16, 27600, 7200, 23800, -2048, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2A66:
    if                      0, off_2A7A
    ck                      FG_COMMON, 70, 0
    aot_reset               ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_05, 0, 0
    endif
    nop

off_2A7A:
    evt_end                 0

.proc aot
    if                      0, off_2A88
    ck                      FG_STATUS, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_2A88:
    evt_end                 0

.proc main_02
    if                      0, off_2D4A
    ck                      FG_COMMON, 148, 0
    message_on              0, ID_MSG_2, 0, 255, 255
    evt_next
    nop
    if                      0, off_2D46
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 3, 1
    set                     FG_STATUS, 27, 1
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_04, M_X_POS
    nop
    member_copy             V_05, M_Z_POS
    nop
    member_copy             V_06, M_Y_DIR
    nop
    gosub                   main_03
    set                     FG_COMMON, 148, 1
    aot_reset               ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 124, 201, 248, 248, 56, 25
    cut_chg                 14
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -13160, -15000, 7080
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -13160, -15000, 7080
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -13160, -15000, 7080
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12294, -8000, 9323
    dir_set                 0, 0, 1024, 0
    se_on                   2, 266, 0, -15508, -1800, 6039
    sleep                   10, 30
    se_on                   2, 267, 0, -15508, -1800, 6039
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 3, 0, 0, 0
    nop_8b                  100, 51, 0, 3, 0
    nop_8c                  0, 255, 50, 9, 0, 54, 0
    for                     0, off_2B82, 55
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_Y_POS, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_Y_POS, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2B82:
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    for                     0, off_2BAE, 5
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 5
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 5
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2BAE:
    for                     0, off_2BDC, 4
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_Y_POS, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2BDC:
    se_on                   2, 267, 0, -15508, -1800, 6039
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 3, 0, 0, 0
    nop_8b                  100, 51, 0, 3, 0
    nop_8c                  0, 255, 50, 9, 0, 54, 0
    for                     0, off_2C30, 55
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_Y_POS, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2C30:
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Y_POS, -10372
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -10372
    for                     0, off_2C68, 5
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 5
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 5
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2C68:
    for                     0, off_2C84, 4
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2C84:
    se_on                   2, 267, 0, -15508, -1800, 6039
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 3, 0, 0, 0
    nop_8b                  100, 51, 0, 3, 0
    nop_8c                  0, 255, 50, 9, 0, 54, 0
    for                     0, off_2CC6, 55
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 40
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2CC6:
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Y_POS, -7944
    for                     0, off_2CF6, 5
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_SUB, V_TEMP, 5
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 5
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2CF6:
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -13160, -7200, 7080
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, 13160, -7200, -7080
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, 13160, -7200, -7080
    work_set                WK_PLAYER, 0
    nop
    member_set2             M_X_POS, V_04
    nop
    member_set              M_Y_POS, -7200
    member_set2             M_Z_POS, V_05
    nop
    member_set2             M_Y_DIR, V_06
    nop
    cut_chg                 13
    cut_auto                1
    gosub                   main_04
    set                     FG_STATUS, 27, 0
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 3, 0
    endif
    nop

off_2D46:
    else                    0, off_2D60

off_2D4A:
    message_on              0, ID_MSG_3, 0, 255, 255
    evt_next
    nop
    if                      0, off_2D5E
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_on                  ID_AOT_2
    endif
    nop

off_2D5E:
    nop
    nop

off_2D60:
    evt_end                 0

.proc main_03
    if                      0, off_2E9A
    ck                      FG_ITEM, 119, 0
    if                      0, off_2DA2
    ck                      FG_ENEMY, 21, 0
    work_set                WK_ENEMY, ID_EM_0
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
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_2DA2:
    if                      0, off_2DDA
    ck                      FG_ENEMY, 22, 0
    work_set                WK_ENEMY, ID_EM_1
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
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_2DDA:
    if                      0, off_2E12
    ck                      FG_ENEMY, 23, 0
    work_set                WK_ENEMY, ID_EM_2
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
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_2E12:
    if                      0, off_2E96
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    if                      0, off_2E52
    ck                      FG_ENEMY, 209, 0
    work_set                WK_ENEMY, ID_EM_3
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
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_2E52:
    if                      0, off_2E94
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_2E92
    ck                      FG_ENEMY, 210, 0
    work_set                WK_ENEMY, ID_EM_4
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
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_2E92:
    endif
    nop

off_2E94:
    endif
    nop

off_2E96:
    else                    0, off_2ED4

off_2E9A:
    if                      0, off_2ED2
    ck                      FG_ENEMY, 112, 0
    work_set                WK_ENEMY, ID_EM_0
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
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_2ED2:
    nop
    nop

off_2ED4:
    evt_end                 0

.proc main_04
    if                      0, off_300E
    ck                      FG_ITEM, 119, 0
    if                      0, off_2F16
    ck                      FG_ENEMY, 21, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
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

off_2F16:
    if                      0, off_2F4E
    ck                      FG_ENEMY, 22, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
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

off_2F4E:
    if                      0, off_2F86
    ck                      FG_ENEMY, 23, 0
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
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

off_2F86:
    if                      0, off_300A
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    if                      0, off_2FC6
    ck                      FG_ENEMY, 209, 0
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
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

off_2FC6:
    if                      0, off_3008
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_3006
    ck                      FG_ENEMY, 210, 0
    work_set                WK_ENEMY, ID_EM_4
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
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

off_3006:
    endif
    nop

off_3008:
    endif
    nop

off_300A:
    else                    0, off_3048

off_300E:
    if                      0, off_3046
    ck                      FG_ENEMY, 112, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
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

off_3046:
    nop
    nop

off_3048:
    evt_end                 0

.proc main_05
    set                     FG_STOP, 7, 1
    se_on                   2, 22, 0, -28237, -7200, -8048
    message_on              0, ID_MSG_1, 0, 255, 255
    evt_next
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_06
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 622, -24130, 1650, 2890, -24013, 0, -21286, 0, 0, 15, 1, 0, 13, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -30334, -9880, 2120, 3900, -8304, 0, -18865, 2096, 0, 18, 0, 0, 13, 3, 0, 0, UNLOCKED, 0
    sce_em_set              0, ID_EM_0, ENEMY_IVY_PURPLE, 17, AI_DEFAULT, 0, SBK_19, 0, 133, -14955, -7200, 10835, 2109, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY_PURPLE, 17, AI_DEFAULT, 0, SBK_19, 0, 134, -1881, -7250, -7592, 3017, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_VINES, 0, AI_20, 0, SBK_0, 0, 255, -20285, -7200, 10210, 1016, 0, 0
    evt_end                 0
