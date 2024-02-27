.version 2

.init
.proc init
    if                      0, off_20AA
    ck                      FG_STATUS, F_BONUS, 0
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6822, -1738, 1850, 1800, -11736, 0, -16400, -1600, 0, 8, 4, 0, 7, 0, 0, 0, UNLOCKED, 0
    else                    0, off_20D0

off_20AA:
    sca_id_set              21, 0, 0
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6822, -1738, 1850, 1800, 15742, 0, 9841, 2432, 0, 28, 4, 0, 7, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_20D0:
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28552, -26272, 1850, 2300, -24315, 0, -24780, 2580, 0, 10, 0, 0, 0, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13694, -26290, 1800, 2200, -26159, -7200, -25126, 0, 0, 22, 2, 4, 8, 0, 0, 144, UNLOCK, 0
    if                      0, off_213A
    ck                      FG_STATUS, F_BONUS, 1
    sce_em_set              0, ID_EM_0, ENEMY_TYRANT_1, 0, AI_02, 0, SBK_18, 0, 132, -2105, 0, -2589, 992, 0, 0
    aot_reset               ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_2, 0, 0, 0, 255, 255
    endif
    nop

off_213A:
    evt_end                 0

.main
.proc main
    if                      0, off_219E
    ck                      FG_STATUS, F_BONUS, 1
    set                     FG_PBF02, 4, 0
    set                     FG_PBF01, 3, 0
    evt_end                 0
    endif
    nop

off_219E:
    gosub                   main_03
    evt_end                 0

.proc aot
    gosub                   main_04
    evt_end                 0

.proc main_02
    evt_end                 0

.proc main_03
    sca_id_set              21, 0, 0
    if                      0, off_21E6
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_21DC
    ck                      FG_COMMON, 49, 0
    aot_set                 ID_AOT_6, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -8263, -15571, 2100, 5500, 255, 0, I_GOSUB, main_0F, 0, 0
    gosub                   main_09
    set                     FG_ROOM, 3, 1
    gosub                   main_11
    else                    0, off_21E2

off_21DC:
    gosub                   main_0A
    gosub                   main_10
    nop
    nop

off_21E2:
    else                    0, off_232C

off_21E6:
    if                      0, off_2220
    ck                      FG_COMMON, 0, 0
    if                      0, off_2216
    ck                      FG_COMMON, 50, 0
    aot_set                 ID_AOT_7, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -17467, -17777, 5480, 1958, 255, 0, I_GOSUB, main_0D, 0, 0
    set                     FG_ROOM, 8, 1
    gosub                   main_07
    gosub                   main_10
    else                    0, off_221C

off_2216:
    gosub                   main_08
    gosub                   main_10
    nop
    nop

off_221C:
    else                    0, off_232A

off_2220:
    cut_replace             0, 14
    nop
    if                      0, off_2234
    cmp                     0, V_LAST_RDT, CMP_EQ, 264
    cut_chg                 14
    cut_auto                1
    endif
    nop

off_2234:
    aot_set                 ID_AOT_10, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, -6022, -2438, 1850, 2800, 255, 0, 24, 23, 0, 0
    if                      0, off_22C6
    ck                      FG_ENEMY, 105, 0
    sce_em_set              0, ID_EM_0, ENEMY_TYRANT_1, 0, AI_08 | AI_INACTIVE, 0, SBK_18, 0, 105, -15025, 0, -21383, -904, 0, 0
    aot_reset               ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_13, 0, 0
    aot_reset               ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_14, 0, 0
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 194, -900, -900, 1800, 1800, ITEM_HANDGUNAMMO, 30, 205, ID_OBJ_255, IF_FLOOR
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_9, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -4396, -3958, 2400, 4900, 255, 0, I_GOSUB, main_17, 0, 0
    gosub                   main_22
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_18, 0, 0
    cut_chg                 12
    set                     FG_ROOM, 5, 1
    gosub                   main_10
    else                    0, off_2328

off_22C6:
    sca_id_set              21, 128, 252
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_12, 0, 0
    gosub                   main_10
    if                      0, off_2326
    ck                      FG_COMMON, 185, 1
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2404, -8529, 1800, 1800, ITEM_HANDGUNAMMO, 30, 205, ID_OBJ_9, IF_FLOOR
    obj_model_set           ID_OBJ_9, 0, 0, 0, 0, 0, 0, 10, 16, -1504, 0, -7629, 0, 576, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2326:
    nop
    nop

off_2328:
    nop
    nop

off_232A:
    nop
    nop

off_232C:
    aot_set                 ID_AOT_8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15263, -20271, 1800, 3600, 255, 0, I_GOSUB, main_16, 0, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_AUTO, 0, 0, 32000, 32000, 1, 1, ITEM_HANDGUNAMMO, 15, 13, ID_OBJ_255, IF_FLOOR
    if                      0, off_239C
    ck                      FG_STATUS, F_SCENARIO, 1
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -1639, -1119, 2200, 2000, ITEM_HERBG, 1, 146, ID_OBJ_0, IF_FLOOR
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -1124, 0, -326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_239C:
    evt_end                 0

.proc main_04
    if                      0, off_23AA
    ck                      FG_STATUS, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_23AA:
    if                      0, off_23C8
    ck                      FG_COMMON, 50, 0
    cmp                     0, V_CUT, CMP_EQ, 3
    ck                      FG_ROOM, 0, 0
    ck                      FG_ROOM, 8, 1
    set                     FG_ROOM, 0, 1
    gosub                   main_0E
    endif
    nop

off_23C8:
    if                      0, off_23D8
    ck                      FG_ROOM, 1, 1
    ck                      FG_STATUS, 11, 1
    gosub                   main_05
    endif
    nop

off_23D8:
    if                      0, off_23E8
    ck                      FG_ROOM, 2, 1
    ck                      FG_STATUS, 11, 1
    gosub                   main_06
    endif
    nop

off_23E8:
    if                      0, off_2414
    ck                      FG_ROOM, 3, 1
    ck                      FG_ENEMY, 0, 1
    ck                      FG_ENEMY, 1, 1
    ck                      FG_ENEMY, 2, 1
    ck                      FG_ENEMY, 3, 1
    ck                      FG_ENEMY, 4, 1
    ck                      FG_ENEMY, 5, 1
    set                     FG_ROOM, 3, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 22
    endif
    nop

off_2414:
    if                      0, off_2434
    ck                      FG_ROOM, 5, 1
    ck                      FG_ROOM, 6, 0
    unk                     133, 0, 2, 0, 0, 132
    set                     FG_ROOM, 6, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, 90, 0, 22
    gosub                   main_26
    endif
    nop

off_2434:
    if                      0, off_2458
    ck                      FG_ROOM, 6, 1
    ck                      FG_ROOM, 7, 0
    ck                      FG_ENEMY, 105, 1
    set                     FG_ROOM, 7, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_FADEOUT, 90, 0, 22
    set                     FG_COMMON, 185, 1
    evt_exec                255, I_GOSUB, main_23
    endif
    nop

off_2458:
    evt_end                 0

.proc main_05
    switch                  26, off_2528
    case                    0, off_2472, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_MAIN_VOL, 40, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 64
    break                   0

off_2472:
    case                    0, off_2486, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 64
    break                   0

off_2486:
    case                    0, off_249A, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 22
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 90, 22
    break                   0

off_249A:
    case                    0, off_24AE, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 105
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 100, 105
    break                   0

off_24AE:
    case                    0, off_24C2, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 105
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 90, 105
    break                   0

off_24C2:
    case                    0, off_24D6, 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 64
    break                   0

off_24D6:
    case                    0, off_24EA, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 40, 64
    break                   0

off_24EA:
    case                    0, off_24FE, 7
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 22
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 90, 22
    break                   0

off_24FE:
    case                    0, off_2512, 8
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 64
    break                   0

off_2512:
    case                    0, off_2526, 9
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 22
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 90, 22
    break                   0

off_2526:
    eswitch                 0

off_2528:
    evt_end                 0

.proc main_06
    switch                  26, off_25BC
    case                    0, off_253C, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 64
    break                   0

off_253C:
    case                    0, off_254A, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    break                   0

off_254A:
    case                    0, off_2558, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 22
    break                   0

off_2558:
    case                    0, off_2566, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 105
    break                   0

off_2566:
    case                    0, off_2574, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 105
    break                   0

off_2574:
    case                    0, off_2582, 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    break                   0

off_2582:
    case                    0, off_2590, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 64
    break                   0

off_2590:
    case                    0, off_259E, 7
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 22
    break                   0

off_259E:
    case                    0, off_25AC, 8
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    break                   0

off_25AC:
    case                    0, off_25BA, 9
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 22
    break                   0

off_25BA:
    eswitch                 0

off_25BC:
    evt_end                 0

.proc main_07
    sce_em_set              0, ID_EM_1, ENEMY_CROW, 64, AI_40, 0, SBK_13, 0, 1, -12173, -2580, -16071, -2048, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_CROW, 0, AI_40, 0, SBK_13, 0, 2, -13758, -700, -17843, -1712, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_CROW, 0, AI_40, 0, SBK_13, 0, 3, -14588, -360, -17688, 64, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_CROW, 0, AI_40, 0, SBK_13, 0, 4, -14618, -610, -16698, -1760, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_CROW, 0, AI_40, 0, SBK_13, 0, 5, -13776, -800, -16819, 1872, 0, 0
    sce_em_set              0, ID_EM_6, ENEMY_CROW, 0, AI_40, 0, SBK_13, 0, 6, -15376, -350, -18019, 336, 0, 0
    sce_em_set              0, ID_EM_7, ENEMY_CROW, 0, AI_40, 0, SBK_13, 0, 7, -13076, -470, -17819, -2704, 0, 0
    sce_em_set              0, ID_EM_8, ENEMY_CROW, 64, AI_40, 0, SBK_13, 0, 8, -12173, -2580, -17341, -2048, 0, 0
    evt_end                 0

.proc main_08
    sce_em_set              0, ID_EM_1, ENEMY_CROW, 64, AI_DEFAULT, 0, SBK_13, 0, 1, -12173, -2580, -16071, -2048, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 2, -13758, -700, -17843, -1712, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 3, -14588, -360, -17688, 64, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 4, -14618, -610, -16698, -1760, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 5, -13776, -800, -16819, 1872, 0, 0
    sce_em_set              0, ID_EM_6, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 6, -15376, -350, -18019, 336, 0, 0
    sce_em_set              0, ID_EM_7, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 7, -13076, -470, -17819, -2704, 0, 0
    sce_em_set              0, ID_EM_8, ENEMY_CROW, 64, AI_DEFAULT, 0, SBK_13, 0, 8, -12173, -2580, -17341, -2048, 0, 0
    evt_end                 0

.proc main_09
    sce_em_set              0, ID_EM_0, ENEMY_CROW, 2, AI_40, 0, SBK_13, 0, 0, -2900, -2500, -15500, 3096, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_CROW, 2, AI_40, 0, SBK_13, 0, 1, -6900, -3400, -15500, 3096, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_CROW, 2, AI_40, 0, SBK_13, 0, 2, -9800, -3500, -15500, 3096, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_CROW, 2, AI_40, 0, SBK_13, 0, 3, -10300, -2900, -15500, 3096, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 4, -12894, -2360, -20912, 2048, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 5, -12894, -2350, -17312, 2048, 0, 0
    evt_end                 0

.proc main_0A
    sce_em_set              0, ID_EM_0, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 0, -2860, -2400, -14064, 3072, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 1, -6360, -2400, -14064, 3072, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 2, -9660, -2400, -14064, 3072, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 3, -12958, -2400, -17065, 2048, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 4, -14858, -400, -17865, 256, 0, 0
    evt_end                 0

.proc main_0B
    sce_em_set              0, ID_EM_0, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 255, -2303, -3000, -2850, -624, 0, 0
    evt_end                 0

.proc main_0C
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    cut_chg                 7
    cut_auto                1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -9113, 0, -12860
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 2
    se_on                   2, 266, 3, 0, 0, 0
    sleep                   10, 40
    cut_old
    nop
    evt_end                 0

.proc main_0D
    set                     FG_COMMON, 50, 1
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    if                      0, off_2888
    member_cmp              0, 0, 6, 1, 0
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_2888:
    work_set                WK_ENEMY, ID_EM_2
    nop
    if                      0, off_289C
    member_cmp              0, 0, 6, 1, 0
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_289C:
    work_set                WK_ENEMY, ID_EM_3
    nop
    if                      0, off_28B0
    member_cmp              0, 0, 6, 1, 0
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_28B0:
    work_set                WK_ENEMY, ID_EM_4
    nop
    if                      0, off_28C4
    member_cmp              0, 0, 6, 1, 0
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_28C4:
    work_set                WK_ENEMY, ID_EM_5
    nop
    if                      0, off_28D8
    member_cmp              0, 0, 6, 1, 0
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_28D8:
    work_set                WK_ENEMY, ID_EM_6
    nop
    if                      0, off_28EC
    member_cmp              0, 0, 6, 1, 0
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_28EC:
    work_set                WK_ENEMY, ID_EM_7
    nop
    if                      0, off_2900
    member_cmp              0, 0, 6, 1, 0
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_2900:
    work_set                WK_ENEMY, ID_EM_8
    nop
    if                      0, off_2914
    member_cmp              0, 0, 6, 1, 0
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_2914:
    evt_end                 0

.proc main_0E
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_ROUTINE3
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             M_ROUTINE3, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_ROUTINE3
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             M_ROUTINE3, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_ROUTINE3
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             M_ROUTINE3, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_4
    nop
    member_copy             V_TEMP, M_ROUTINE3
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             M_ROUTINE3, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_5
    nop
    member_copy             V_TEMP, M_ROUTINE3
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             M_ROUTINE3, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_6
    nop
    member_copy             V_TEMP, M_ROUTINE3
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             M_ROUTINE3, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_7
    nop
    member_copy             V_TEMP, M_ROUTINE3
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             M_ROUTINE3, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_8
    nop
    member_copy             V_TEMP, M_ROUTINE3
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    member_set2             M_ROUTINE3, V_TEMP
    nop
    evt_end                 0

.proc main_0F
    set                     FG_COMMON, 49, 1
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 4
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 4
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_set              M_SCE_FREE0, 4
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_set              M_SCE_FREE0, 4
    sleep                   10, 2
    set                     FG_PBF01, 4, 0
    set                     FG_PBF02, 5, 0
    nop_8a                  0, 3, 0, 3, 0
    nop_8a                  0, 3, 0, 7, 0
    nop_8b                  250, 8, 0, 0, 0
    sca_id_set              15, 128, 222
    sca_id_set              20, 128, 222
    sce_espr_on             0, 528, 0, 10240, -2200, -2200, -13600, 3072
    sce_espr_on             0, 784, 0, 9728, -2200, -2100, -14000, 3072
    sce_espr_on             0, 1040, 0, 9984, -2200, -2250, -14100, 3072
    sce_espr_on             0, 529, 0, 8192, -2200, -2150, -13500, 3072
    sce_espr_on             0, 785, 0, 6144, -2200, -2100, -13900, 3072
    sce_espr_on             0, 1041, 0, 8448, -2200, -2200, -14200, 3072
    sce_espr_on             0, 19, 0, 8192, -2700, -3600, -14400, 3072
    sce_espr_on             0, 19, 0, 8192, -6300, -3200, -14600, 3072
    sce_espr_on             0, 19, 0, 8192, -9900, -3400, -14500, 3072
    sce_espr_on             0, 274, 0, 8192, -2800, -3200, -14500, 3072
    sce_espr_on             0, 274, 0, 8192, -6200, -3100, -14600, 3072
    sce_espr_on             0, 274, 0, 8192, -9800, -3300, -14400, 3072
    sce_espr_on             0, 529, 0, 6144, -2800, -3000, -14400, 3072
    sce_espr_on             0, 529, 0, 6144, -6300, -2900, -14400, 3072
    sce_espr_on             0, 529, 0, 6144, -9800, -2800, -14500, 3072
    sce_espr_on             0, 784, 0, 6144, -2550, -2700, -14600, 3072
    sce_espr_on             0, 784, 0, 6144, -6350, -2600, -14500, 3072
    sce_espr_on             0, 784, 0, 6144, -10000, -2500, -14600, 3072
    sce_espr_on             0, 1040, 0, 4096, -2600, -2100, -14400, 3072
    sce_espr_on             0, 1040, 0, 4096, -6250, -2800, -14600, 3072
    sce_espr_on             0, 1040, 0, 4096, -9800, -2300, -14500, 3072
    sce_espr_on             0, 1041, 0, 4096, -2700, -1800, -14400, 3072
    sce_espr_on             0, 1041, 0, 4096, -6300, -1700, -14400, 3072
    sce_espr_on             0, 1041, 0, 4096, -9750, -2600, -14500, 3072
    sce_espr_on             0, 785, 0, 4096, -2800, -1900, -14600, 3072
    sce_espr_on             0, 785, 0, 4096, -6450, -1600, -14500, 3072
    sce_espr_on             0, 785, 0, 4096, -9650, -2550, -14500, 3072
    sleep                   10, 3
    se_on                   2, 289, 0, -3940, 0, -14000
    sleep                   10, 5
    se_on                   2, 289, 0, -3940, 0, -14000
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 22
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, 90, 0, 22
    gosub                   main_25
    sleep                   10, 13
    sca_id_set              15, 128, 254
    sca_id_set              20, 128, 254
    flr_set                 1, 1
    set                     FG_PBF01, 3, 1
    set                     FG_PBF02, 4, 1
    nop
    evt_end                 0

.proc main_10
    flr_set                 1, 1
    set                     FG_PBF01, 4, 0
    set                     FG_PBF02, 5, 0
    set                     FG_PBF01, 3, 1
    set                     FG_PBF02, 4, 1
    nop
    gosub                   main_06
    set                     FG_ROOM, 2, 1
    evt_end                 0

.proc main_11
    set                     FG_PBF01, 4, 1
    set                     FG_PBF02, 5, 1
    set                     FG_PBF01, 3, 0
    set                     FG_PBF02, 4, 0
    evt_end                 0

.proc main_12
    message_on              0, ID_MSG_1, 0, 255, 255
    evt_next
    nop
    evt_end                 0

.proc main_13
    if                      0, off_2C38
    ck                      FG_ENEMY, 105, 1
    gosub                   main_15
    endif
    nop

off_2C38:
    set                     FG_ENEMY, 105, 1
    aot_reset               ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 161, 0, 0, 52, 159
    aot_on                  ID_AOT_1
    evt_end                 0

.proc main_14
    if                      0, off_2C72
    ck                      FG_KEY, 16, 1
    if                      0, off_2C5E
    ck                      FG_ENEMY, 105, 1
    gosub                   main_15
    endif
    nop

off_2C5E:
    set                     FG_ENEMY, 105, 1
    aot_reset               ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 209, 153, 224, 227, 218, 157
    aot_on                  ID_AOT_2
    else                    0, off_2C8A

off_2C72:
    aot_reset               ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 209, 153, 224, 227, 218, 157
    aot_on                  ID_AOT_2
    aot_reset               ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_14, 0, 0
    nop
    nop

off_2C8A:
    evt_end                 0

.proc main_15
    set                     FG_STOP, 7, 1
    sce_fade_set            2, 2, 7, 0, 4
    sleep                   10, 20
    cut_chg                 13
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    pos_set                 0, -2695, 0, -2521
    member_set              M_Y_DIR, 1024
    member_set              M_SCE_FREE0, 1
    sce_fade_set            2, 2, 7, 0, 254
    sleep                   10, 120
    member_set              M_SCE_FREE0, 1
    sleep                   10, 120
    se_on                   2, 13, 3, 0, 0, 0
    sleep                   10, 80
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_16
    if                      0, off_2D02
    ck                      FG_ROOM, 4, 0
    set                     FG_ROOM, 4, 1
    message_on              0, ID_MSG_0, 0, 255, 255
    else                    0, off_2D1A

off_2D02:
    if                      0, off_2D10
    ck                      FG_ITEM, 13, 0
    aot_on                  ID_AOT_3
    else                    0, off_2D18

off_2D10:
    message_on              0, ID_MSG_0, 0, 255, 255
    nop
    nop

off_2D18:
    nop
    nop

off_2D1A:
    evt_end                 0

.proc main_17
    set                     FG_STATUS, 25, 1
    aot_reset               ID_AOT_9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_12, 0, 0
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  100, 10, 0, 0, 0
    nop_8c                  0, 100, 200, 10, 0, 10, 0
    nop_8b                  200, 15, 0, 20, 0
    se_on                   2, 268, 1, 0, 0, 0
    evt_exec                255, I_GOSUB, main_21
    sleep                   10, 5
    set                     FG_STOP, 7, 1
    sleep                   10, 5
    set                     FG_STATUS, 27, 1
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -5836, -5400, 584, 128, 128
    sleep                   10, 4
    plc_dest                0, 21, 32, 2291, 128
    gosub                   main_24
    evt_chain               0, 24, 25
    evt_end                 0

.proc main_18
    set                     FG_STATUS, 25, 1
    set                     FG_STOP, 7, 1
    aot_reset               ID_AOT_9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_12, 0, 0
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  100, 10, 0, 0, 0
    nop_8c                  0, 100, 200, 10, 0, 10, 0
    nop_8b                  200, 15, 0, 20, 0
    se_on                   2, 268, 1, 0, 0, 0
    evt_exec                255, I_GOSUB, main_21
    sleep                   10, 10
    set                     FG_STATUS, 27, 1
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -5836, -5400, 584, 128, 128
    sleep                   10, 4
    plc_dest                0, 21, 32, 2931, 128
    gosub                   main_24
    plc_motion              11, 1, 0
    sleep                   10, 10
    evt_chain               0, 24, 25
    evt_end                 0

.proc main_19
    nop_8b                  255, 20, 0, 0, 0
    nop_8c                  0, 255, 150, 20, 0, 20, 0
    nop_8b                  100, 30, 0, 40, 0
    nop_8c                  0, 100, 70, 20, 0, 70, 0
    evt_exec                255, I_GOSUB, main_20
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_1A
    evt_exec                255, I_GOSUB, main_1B
    evt_exec                255, I_GOSUB, main_1C
    evt_exec                255, I_GOSUB, main_1D
    evt_exec                255, I_GOSUB, main_1E
    evt_exec                255, I_GOSUB, main_1F
    cut_chg                 15
    set                     FG_STATUS, 29, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -3813, 0, -2045
    member_set              M_Y_DIR, 2299
    plc_motion              10, 15, 0
    sleep                   10, 35
    member_set              M_Y_POS, 0
    set                     FG_STATUS, 29, 0
    sleep                   10, 80
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    cut_chg                 14
    cut_auto                1
    sca_id_set              21, 128, 252
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    set                     FG_STATUS, 25, 0
    evt_end                 0

.proc main_1A
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    speed_set               1, 50
    speed_set               2, -80
    speed_set               3, -110
    for                     0, off_2EC8, 11
    add_speed
    evt_next
    next                    0

off_2EC8:
    speed_set               1, 0
    speed_set               2, 0
    speed_set               3, 20
    for                     0, off_2EDE, 20
    add_speed
    evt_next
    next                    0

off_2EDE:
    speed_set               1, 0
    speed_set               7, 20
    speed_set               3, 0
    for                     0, off_2EF6, 25
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2EF6:
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_end                 0

.proc main_1B
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    speed_set               1, 100
    speed_set               7, 20
    speed_set               5, 64
    speed_set               4, 64
    for                     0, off_2F26, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F26:
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_end                 0

.proc main_1C
    sleep                   10, 5
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    speed_set               1, 100
    speed_set               7, 20
    speed_set               5, -32
    speed_set               4, 32
    for                     0, off_2F5A, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F5A:
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_end                 0

.proc main_1D
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    speed_set               1, 100
    speed_set               2, 20
    speed_set               7, 20
    speed_set               5, 64
    speed_set               4, -32
    for                     0, off_2F8E, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F8E:
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_end                 0

.proc main_1E
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    speed_set               1, 50
    speed_set               2, 80
    speed_set               3, 101
    for                     0, off_2FB8, 11
    add_speed
    evt_next
    next                    0

off_2FB8:
    speed_set               1, 0
    speed_set               2, 0
    speed_set               3, 10
    for                     0, off_2FCE, 10
    add_speed
    evt_next
    next                    0

off_2FCE:
    speed_set               3, -10
    for                     0, off_2FDC, 10
    add_speed
    evt_next
    next                    0

off_2FDC:
    speed_set               3, 10
    for                     0, off_2FEA, 10
    add_speed
    evt_next
    next                    0

off_2FEA:
    speed_set               3, -10
    for                     0, off_2FF8, 10
    add_speed
    evt_next
    next                    0

off_2FF8:
    speed_set               3, 10
    for                     0, off_3006, 10
    add_speed
    evt_next
    next                    0

off_3006:
    speed_set               3, -10
    for                     0, off_3014, 10
    add_speed
    evt_next
    next                    0

off_3014:
    speed_set               1, 0
    speed_set               7, 20
    speed_set               3, 0
    for                     0, off_302C, 25
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_302C:
    nop_8a                  0, 5, 0, 0, 0
    se_on                   2, 270, 1284, 0, 0, 0
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_end                 0

.proc main_1F
    sleep                   10, 3
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    speed_set               1, 100
    speed_set               2, 20
    speed_set               7, 20
    speed_set               5, -64
    speed_set               4, -64
    for                     0, off_3076, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3076:
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_end                 0

.proc main_20
    sce_espr_on             0, 4, 0, 5632, -4800, -5600, -800, 0
    sce_espr_on             0, 4, 0, 6656, -4500, -4800, -1400, 0
    sce_espr_on             0, 4, 0, 6144, -4500, -5000, -2000, 0
    sce_espr_on             0, 41, 0, 5632, -4800, -6600, -800, 0
    sce_espr_on             0, 809, 0, 2560, -4500, -5800, -1400, 0
    sce_espr_on             0, 297, 0, 6144, -4500, -6000, -2000, 0
    sleep                   10, 4
    sce_espr_on             0, 4, 0, 5632, -4800, -5600, -800, 0
    sce_espr_on             0, 4, 0, 6400, -4200, -5800, -2300, 0
    sce_espr_on             0, 4, 0, 6144, -4500, -5800, -2400, 0
    sce_espr_on             0, 297, 0, 6144, -3800, -7600, -1500, 0
    sce_espr_on             0, 553, 0, 5120, -4200, -6800, -2300, 0
    sleep                   10, 5
    sce_espr_on             0, 4, 0, 5632, -5800, -5600, -800, 0
    sce_espr_on             0, 4, 0, 6144, -4800, -5600, -1500, 0
    sce_espr_on             0, 4, 0, 6400, -5200, -5800, -2300, 0
    sce_espr_on             0, 4, 0, 6144, -4500, -5800, -1400, 0
    sce_espr_on             0, 4, 0, 6144, -4500, -5800, -2400, 0
    sleep                   10, 13
    sce_espr_on             0, 809, 0, 2048, -3500, -5800, -1400, 0
    sleep                   10, 10
    sce_espr_on             0, 553, 0, 2048, -3000, -5800, -2400, 0
    sce_espr_on             0, 25, 0, 4096, -4800, -5600, -800, 0
    sce_espr_on             0, 281, 0, 6144, -3800, -5600, -1500, 0
    sce_espr_on             0, 25, 0, 5120, -4200, -5800, -2300, 0
    sleep                   10, 5
    sce_espr_on             0, 281, 0, 2048, -3500, -5800, -1400, 0
    sce_espr_on             0, 25, 0, 4096, -3000, -5800, -2400, 0
    evt_end                 0

.proc main_21
    sce_espr_on             0, 25, 0, 4096, -4500, -5400, -1300, 0
    sce_espr_on             0, 281, 0, 6144, -5000, -5400, -400, 0
    sce_espr_on             0, 25, 0, 5120, -4800, -5400, -800, 0
    sleep                   10, 5
    sce_espr_on             0, 281, 0, 6144, -4900, -5400, -400, 0
    sce_espr_on             0, 25, 0, 4096, -4700, -5400, -1000, 0
    sleep                   10, 3
    sce_espr_on             0, 809, 0, 4096, -5000, -5400, -300, 0
    sleep                   10, 7
    sce_espr_on             0, 809, 0, 4096, -4500, -5400, -500, 0
    evt_end                 0

.proc main_22
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 0, -4600, -5400, -2500, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 0, -4000, -5400, -2500, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 0, -3400, -5400, -2500, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 0, -4600, -5400, -1400, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 0, -4000, -5400, -1400, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 0, -3400, -5400, -1400, 0, 1024, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_23
    sleep                   10, 151
    aot_reset               ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 20, 0, 30, 0, 205, 0
    evt_end                 0

.proc main_24
    do                      0, off_338C
    evt_next
    nop
    edwhile                 off_338C
    ck                      FG_ROOM, 32, 0

off_338C:
    evt_end                 0

.proc main_25
    sce_bgmtbl_set          0, 9, 1, 1800, 0
    evt_end                 0

.proc main_26
    sce_bgmtbl_set          0, 9, 1, 1800, 0
    evt_end                 0
    db                      0x28, 0x00
