.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28772, -3439, 2200, 2800, -2700, 0, -19832, -2068, 3, 7, 4, 0, 10, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9912, -15066, 1810, 2350, -26351, 0, -10330, -4204, 3, 4, 0, 0, 35, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 7, 0, -18042, -22606, 2220, 1370, -7824, 0, -25140, 2000, 3, 11, 0, 0, 22, 4, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_0EC4
    member_cmp              0, 6, 0, 14, 0
    set                     FG_RBJ_SET, 0, 1
    set                     FG_RBJ_SET, 2, 1
    rbj_reset
    nop
    else                    0, off_0ECC

off_0EC4:
    set                     FG_RBJ_SET, 1, 1
    rbj_reset
    nop
    nop
    nop

off_0ECC:
    if                      0, off_0F10
    cmp                     0, V_LAST_RDT, CMP_EQ, 1028
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_0F0E
    member_cmp              0, 6, 0, 14, 0
    set                     FG_COMMON, 32, 1
    if                      0, off_0F0C
    ck                      FG_COMMON, 121, 0
    sce_em_set              0, ID_EM_7, ENEMY_ANNETTEBIRKIN_1, 0, AI_40, 0, SBK_0, 0, 255, -14222, 0, -16617, 1024, 0, 0
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_0F0C:
    endif
    nop

off_0F0E:
    endif
    nop

off_0F10:
    if                      0, off_0F6E
    member_cmp              0, 6, 5, 14, 0
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9100, -27180, 2430, 1450, ITEM_WOLFMEDAL, 1, 190, ID_OBJ_255, IF_FLOOR
    if                      0, off_0F52
    ck                      FG_STATUS, F_SCENARIO, 1
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9010, -25500, 2130, 1350, ITEM_SMALLKEY, 1, 191, ID_OBJ_255, IF_FLOOR
    else                    0, off_0F6A

off_0F52:
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9010, -25500, 2130, 1350, ITEM_SHOTGUNAMMO, 7, 191, ID_OBJ_255, IF_FLOOR
    nop
    nop

off_0F6A:
    else                    0, off_0F98

off_0F6E:
    aot_set                 ID_AOT_5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8522, -5619, 1660, 1240, ID_MSG_7, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9100, -27180, 2430, 1450, ID_MSG_8, 0, 0, 0, 255, 255
    nop
    nop

off_0F98:
    if                      0, off_1008
    ck                      FG_STATUS, 3, 1
    if                      0, off_0FC2
    cmp                     0, V_LAST_RDT, CMP_EQ, 1028
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04, 1, SBK_31, 0, 255, -12345, -1800, -13317, -2024, 0, 0
    endif
    nop

off_0FC2:
    if                      0, off_0FE4
    cmp                     0, V_LAST_RDT, CMP_EQ, 1031
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04, 0, SBK_31, 0, 255, -24729, 0, -2717, 4, 0, 0
    endif
    nop

off_0FE4:
    if                      0, off_1006
    cmp                     0, V_LAST_RDT, CMP_EQ, 1035
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04, 0, SBK_31, 0, 255, -13529, 0, -20717, 4, 0, 0
    endif
    nop

off_1006:
    endif
    nop

off_1008:
    gosub                   main_02
    gosub                   main_03
    evt_end                 0

.proc aot
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_1028
    member_cmp              0, 6, 0, 14, 0
    aot_reset               ID_AOT_0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_0, 0, 0, 0, 255, 255
    endif
    nop

off_1028:
    gosub                   main_04
    evt_end                 0

.proc main_02
    if                      0, off_117E
    ck                      FG_ITEM, 184, 1
    if                      0, off_10D2
    ck                      FG_COMMON, 189, 1
    if                      0, off_108A
    ck                      FG_COMMON, 118, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_37, 0, 66, -21000, 0, -4120, 3415, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_37, 0, 67, -11000, 0, -2600, 1240, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_37, 0, 68, -13860, 0, -8200, 1288, 0, 0
    else                    0, off_10CE

off_108A:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_3, 0, 66, -21000, 0, -4120, 3415, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_3, 0, 67, -11000, 0, -2600, 1240, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_3, 0, 68, -13860, 0, -8200, 1288, 0, 0
    nop
    nop

off_10CE:
    else                    0, off_117A

off_10D2:
    aot_set                 ID_AOT_18, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -17300, -6270, 5360, 6360, 255, 0, I_GOSUB, main_0A, 0, 0
    if                      0, off_1134
    ck                      FG_COMMON, 118, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY1, 2, AI_40, 0, SBK_37, 0, 66, -21000, 0, -4120, 3415, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 4, AI_40, 0, SBK_37, 0, 67, -11000, 0, -2600, 1240, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_GUY1, 4, AI_40, 0, SBK_37, 0, 68, -13860, 0, -8200, 1288, 0, 0
    else                    0, off_1178

off_1134:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY1, 2, AI_40, 0, SBK_3, 0, 66, -21000, 0, -4120, 3415, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 4, AI_40, 0, SBK_3, 0, 67, -11000, 0, -2600, 1240, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_GUY1, 4, AI_40, 0, SBK_3, 0, 68, -13860, 0, -8200, 1288, 0, 0
    nop
    nop

off_1178:
    nop
    nop

off_117A:
    else                    0, off_11AC

off_117E:
    sce_em_set              0, ID_EM_0, ENEMY_SPIDER, 75, AI_DEFAULT, 1, SBK_16, 0, 31, -17432, -3600, -5075, 4088, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_SPIDER, 67, AI_DEFAULT, 0, SBK_16, 0, 32, -14113, -7200, -2256, 2016, 0, 0
    nop
    nop

off_11AC:
    evt_end                 0

.proc main_03
    aot_set                 ID_AOT_17, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18042, -22606, 2220, 1370, 255, 0, I_GOSUB, main_09, 0, 0
    if                      0, off_1264
    ck                      FG_COMMON, 118, 0
    mizu_div_set            6
    obj_model_set           ID_OBJ_0, 1, 130, 4, 7, 0, 6, 10, 26, -26686, -1040, -96, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 1, 130, 4, 7, 0, 7, 10, 26, -16189, -1040, -26996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_3, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -28360, -5440, 22110, 13570, 240, 251, 0, 0, 0, 0
    aot_set                 ID_AOT_4, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -18230, -27910, 5790, 23110, 240, 251, 0, 0, 0, 0
    sce_espr_on2            1, 28, 1, 0, 0, 0, 16, 140, 179, 214, 241, 109, 234, 0, 12
    sce_espr_on2            2, 28, 1, 0, 0, 0, 16, 140, 179, 214, 241, 109, 234, 0, 12
    else                    0, off_128E

off_1264:
    aot_set                 ID_AOT_12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27190, -5370, 3500, 1410, ID_MSG_6, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_13, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16790, -27770, 1560, 2750, ID_MSG_7, 0, 0, 0, 255, 255
    nop
    nop

off_128E:
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -16218, -6696, -21834, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_12CE
    ck                      FG_COMMON, 32, 0
    aot_reset               ID_AOT_17, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_1, 0, 0, 0, 255, 255
    evt_exec                255, I_GOSUB, main_08
    else                    0, off_12D4

off_12CE:
    evt_exec                255, I_GOSUB, main_07
    nop
    nop

off_12D4:
    aot_set                 ID_AOT_8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7860, -5570, 2490, 5650, ID_MSG_2, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16770, -28670, 4530, 1800, ID_MSG_3, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12290, -5770, 3460, 1050, ID_MSG_4, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13090, -16870, 2000, 1250, ID_MSG_5, 0, 0, 0, 255, 255
    evt_end                 0

.proc main_04
    if                      0, off_1340
    cmp                     0, V_CUT, CMP_EQ, 7
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -16218, -6696, -21834
    else                    0, off_134E

off_1340:
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -16218, -20000, -21834
    nop
    nop

off_134E:
    gosub                   main_05
    evt_end                 0

.proc main_05

off_1352:
    if                      0, off_14A4
    ck                      FG_COMMON, 32, 0
    switch                  26, off_14A0
    case                    0, off_137E, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 80, 40
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 40
    break                   0

off_137E:
    case                    0, off_139E, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 70, 50
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 40
    break                   0

off_139E:
    case                    0, off_13BE, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 90, 80
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 0, 64
    break                   0

off_13BE:
    case                    0, off_13DE, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 70
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 80
    break                   0

off_13DE:
    case                    0, off_13FE, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 80, 90
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_13FE:
    case                    0, off_141E, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 50, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 70
    break                   0

off_141E:
    case                    0, off_143E, 6
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 50, 20
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 90
    break                   0

off_143E:
    case                    0, off_145E, 7
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 40, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 90
    break                   0

off_145E:
    case                    0, off_147E, 8
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 50, 20
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 40
    break                   0

off_147E:
    case                    0, off_149E, 9
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 30, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_149E:
    eswitch                 0

off_14A0:
    else                    0, off_15B0

off_14A4:
    switch                  26, off_15AE
    case                    0, off_14C2, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 80, 40
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 40
    break                   0

off_14C2:
    case                    0, off_14DC, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 70, 50
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 40
    break                   0

off_14DC:
    case                    0, off_14F6, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 90, 80
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 64
    break                   0

off_14F6:
    case                    0, off_1510, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 70
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 80
    break                   0

off_1510:
    case                    0, off_152A, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 80, 90
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 64
    break                   0

off_152A:
    case                    0, off_1544, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 50, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 70
    break                   0

off_1544:
    case                    0, off_155E, 6
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 50, 20
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 90
    break                   0

off_155E:
    case                    0, off_1578, 7
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 40, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 90
    break                   0

off_1578:
    case                    0, off_1592, 8
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 50, 20
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 40
    break                   0

off_1592:
    case                    0, off_15AC, 9
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 30, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 64
    break                   0

off_15AC:
    eswitch                 0

off_15AE:
    nop
    nop

off_15B0:
    do                      0, off_15BE
    sleep                   10, 1
    edwhile                 off_15BE
    ck                      FG_STATUS, 11, 0

off_15BE:
    goto                    255, 255, 0, off_1352
    evt_end                 0

.proc main_06
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 8
    member_set              M_ROUTINE2, 3
    member_set              M_ROUTINE3, 0
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    evt_end                 0

.proc main_07
    work_set                WK_OBJECT, ID_OBJ_2

off_15E9:
    nop
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 4
    member_set2             M_X_DIR, V_TEMP
    nop
    evt_next
    nop
    goto                    255, 255, 0, off_15E9
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, ID_OBJ_2

off_1605:
    nop
    member_copy             V_TEMP, M_X_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 400
    member_set2             M_X_DIR, V_TEMP
    nop
    evt_next
    nop
    goto                    255, 255, 0, off_1605
    evt_end                 0

.proc main_09
    message_on              0, ID_MSG_9, 0, 255, 255
    evt_next
    nop
    if                      0, off_1632
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_on                  ID_AOT_2
    endif
    nop

off_1632:
    evt_end                 0

.proc main_0A
    set                     FG_COMMON, 189, 1
    aot_reset               ID_AOT_18, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    sleep                   10, 5
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    evt_end                 0

.proc main_0B
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    sleep                   10, 1
    work_set                WK_ENEMY, ID_EM_7
    nop
    plc_dest                0, 5, 0, -15600, -21440
    sleep                   10, 5
    cut_chg                 5
    sleep                   10, 25
    set                     FG_COMMON, 121, 1
    cut_chg                 6
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    cut_auto                1
    sleep                   10, 5
    pos_set                 0, 0, -20000, 0
    evt_end                 0
    db                      0x1F, 0x1F
