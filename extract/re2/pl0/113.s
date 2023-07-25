.version 2

.init
.proc init
    if                      0, off_0D02
    ck                      FG_GAME, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_0D02:
    if                      0, off_0D10
    ck                      FG_GENERAL_1, 254, 1
    set                     FG_GENERAL_1, 15, 0
    endif
    nop

off_0D10:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28294, -26670, 1900, 2500, -14806, 0, -25766, -10192, 0, 20, 0, 0, 3, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15791, -16967, 3400, 2100, -17484, 0, -26200, -13256, 0, 18, 1, 0, 1, 128, 0, 0, UNLOCKED, 0
    aot_set                 3, SCE_HIKIDASHI, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15146, -20187, 900, 1700, 2, 0, 4, 0, 6, 0
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27784, -20380, 1480, 2750, 3, 0, 0, 0, 255, 255
    aot_set                 13, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26734, -1287, 2210, 1790, 1, 0, 0, 0, 255, 255
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main
    if                      0, off_0E00
    ck                      FG_GAME, F_BONUS, 1
    gosub                   main_1E
    evt_end                 0
    endif
    nop

off_0E00:
    if                      0, off_0E18
    ck                      FG_GENERAL_1, 15, 1
    if                      0, off_0E16
    ck                      FG_GAME, F_SCENARIO, 0
    set                     FG_GENERAL_1, 33, 1
    endif
    nop

off_0E16:
    endif
    nop

off_0E18:
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 10, 10, ITEM_HANDGUNPARTS, 1, 18, 1, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 48, -14415, -300, -18553, 0, -2880, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_0EE6
    ck                      FG_0, F_DIFFICULT, 0
    if                      0, off_0EA4
    ck                      FG_GAME, F_SCENARIO, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27854, -4717, 1210, 1450, ITEM_HANDGUNAMMO, 15, 145, 2, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -27504, -2550, -3743, 0, 832, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0EE2

off_0EA4:
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27854, -4717, 1210, 1450, ITEM_SHOTGUNAMMO, 7, 145, 3, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -27504, -2550, -3743, 0, 832, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0EE2:
    else                    0, off_0F22

off_0EE6:
    if                      0, off_0F08
    ck                      FG_GAME, F_SCENARIO, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27854, -4717, 1210, 1450, ITEM_HANDGUNAMMO, 15, 145, 255, 1
    else                    0, off_0F20

off_0F08:
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27854, -4717, 1210, 1450, ITEM_SHOTGUNAMMO, 7, 145, 255, 1
    nop
    nop

off_0F20:
    nop
    nop

off_0F22:
    if                      0, off_0F7E
    ck                      FG_GAME, F_SCENARIO, 1
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26274, -1287, 1320, 1790, ITEM_DIAMONDKEY, 2, 30, 4, 225
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -25504, 0, 57, 128, 2496, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_0F7C
    ck                      FG_GENERAL_1, 15, 0
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, 0, 0, 0
    endif
    nop

off_0F7C:
    endif
    nop

off_0F7E:
    if                      0, off_0F9C
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_0F94
    ck                      FG_0, F_DIFFICULT, 0
    gosub                   main_05
    else                    0, off_0F98

off_0F94:
    gosub                   main_07
    nop
    nop

off_0F98:
    else                    0, off_101A

off_0F9C:
    if                      0, off_1018
    ck                      FG_GENERAL_1, 15, 0
    sce_em_set              0, 0, ENEMY_CLAIRE_REDFIELD, 0, 64, 0, 0, 0, 255, 26153, 0, 18710, -4792, 0, 0
    set                     FG_GENERAL_1, 255, 1
    if                      0, off_0FEA
    cmp                     0, V_CUT, CMP_EQ, 0
    sce_em_set              0, 1, ENEMY_SHERRY_PENDANT, 0, 72, 0, 0, 0, 255, -22552, 0, -18627, 1419, 0, 0
    set                     FG_GENERAL_2, 2, 1
    evt_exec                255, I_GOSUB, main_02
    else                    0, off_1002

off_0FEA:
    sce_em_set              0, 1, ENEMY_SHERRY_PENDANT, 0, 72, 0, 0, 0, 255, -24293, 0, -19696, -1973, 0, 0
    nop
    nop

off_1002:
    aot_set                 14, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25654, -20360, 1320, 1270, 255, 0, I_GOSUB, main_04, 0, 0
    endif
    nop

off_1018:
    nop
    nop

off_101A:
    evt_end                 0

.proc aot
    if                      0, off_1028
    ck                      FG_GAME, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_1028:
    if                      0, off_105A
    cmp                     0, V_CUT, CMP_EQ, 2
    if                      0, off_1058
    ck                      FG_GENERAL_2, 2, 0
    if                      0, off_1056
    ck                      FG_GENERAL_1, 15, 0
    if                      0, off_1054
    ck                      FG_GAME, F_SCENARIO, 1
    set                     FG_GENERAL_2, 2, 1
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_1054:
    endif
    nop

off_1056:
    endif
    nop

off_1058:
    endif
    nop

off_105A:
    if                      0, off_108C
    cmp                     0, V_CUT, CMP_EQ, 1
    if                      0, off_108A
    ck                      FG_GENERAL_1, 15, 0
    if                      0, off_1088
    ck                      FG_GENERAL_2, 1, 1
    if                      0, off_1086
    ck                      FG_GAME, F_SCENARIO, 1
    set                     FG_GENERAL_1, 15, 1
    evt_exec                255, I_GOSUB, main_03
    endif
    nop

off_1086:
    endif
    nop

off_1088:
    endif
    nop

off_108A:
    endif
    nop

off_108C:
    if                      0, off_10BC
    ck                      FG_GENERAL_1, 129, 0
    if                      0, off_10BA
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_10B8
    ck                      FG_GENERAL_2, 3, 0
    set                     FG_GENERAL_2, 3, 1
    kage_set                3, 0, 16, 191, 191, 208, 7, 208, 7, 0, 0, 0, 0
    endif
    nop

off_10B8:
    endif
    nop

off_10BA:
    endif
    nop

off_10BC:
    evt_end                 0

.proc main_02
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    evt_next
    cut_auto                0
    nop
    if                      0, off_10DA
    cmp                     0, V_CUT, CMP_EQ, 0
    gosub                   main_0B
    else                    0, off_10DE

off_10DA:
    gosub                   main_09
    nop
    nop

off_10DE:
    set                     FG_GENERAL_1, 255, 0
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_GAME, 27, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_03
    set                     FG_STATE, 7, 1
    evt_next
    cut_auto                0
    nop
    gosub                   main_0E
    gosub                   main_10
    gosub                   main_11
    gosub                   main_12
    gosub                   main_13
    gosub                   main_15
    gosub                   main_16
    gosub                   main_18
    gosub                   main_19
    work_set                WK_PLAYER, 0
    plc_ret
    cut_chg                 1
    cut_auto                1
    sce_bgmtbl_set          0, 19, 1, 65288, 0
    set                     FG_GAME, 27, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_04
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_05, 11
    nop
    member_copy             V_06, 13
    nop
    work_set                WK_ENEMY, 0
    nop
    work_copy               6, 10, 1
    work_copy               5, 4, 1
    plc_dest                0, 9, 33, 0, 0
    gosub                   main_1C
    xa_on                   0, 21
    message_on              0, 17, 0, 0, 0
    sleep                   10, 2
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 32, 32
    work_set                WK_ENEMY, 0
    plc_motion              0, 16, 0
    plc_cnt                 5
    nop
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 15
    plc_motion              0, 15, 0
    sleep                   10, 20
    plc_motion              0, 16, 0
    sleep                   10, 15
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    plc_motion              0, 22, 4
    nop
    plc_neck                5, 1, 0, 0, 16, 16
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_GAME, 27, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_05
    if                      0, off_1282
    ck                      FG_GENERAL_1, 129, 0
    sce_em_set              0, 0, ENEMY_ZOMBIE_RANDOM, 4, 128, 0, 5, 2, 255, -24181, 0, -18903, 1523, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             0, V_TEMP
    nop
    sce_em_set              0, 1, ENEMY_ZOMBIE_RANDOM, 8, 64, 0, 5, 3, 82, -23979, 0, -20485, 2929, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_RANDOM, 8, 64, 0, 5, 3, 83, -22426, 0, -18037, 1617, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_RANDOM, 8, 64, 0, 6, 3, 113, -25854, 0, -19030, 121, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIE_RANDOM, 8, 64, 0, 6, 3, 114, -24457, 0, -17786, -3424, 0, 0
    aot_set                 16, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -28694, -23970, 11900, 8740, 255, 0, I_GOSUB, main_06, 0, 0
    else                    0, off_12DC

off_1282:
    sce_em_set              0, 1, ENEMY_ZOMBIE_RANDOM, 6, 0, 0, 5, 3, 82, -25506, 0, -9604, 969, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_RANDOM, 6, 0, 0, 5, 3, 83, -18637, 0, -18073, 2673, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_RANDOM, 0, 0, 0, 6, 3, 113, -23148, 0, -20728, 1361, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIE_RANDOM, 0, 0, 0, 6, 3, 114, -26292, 0, -19914, 417, 0, 0
    nop
    nop

off_12DC:
    evt_end                 0

.proc main_06
    set                     FG_GENERAL_1, 129, 1
    aot_reset               16, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 180, 187, 0, 0, 168, 153
    if                      0, off_130C
    ck                      FG_ENEMY, 82, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    sleep                   10, 15
    endif
    nop

off_130C:
    if                      0, off_132C
    ck                      FG_ENEMY, 83, 0
    work_set                WK_ENEMY, 2
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    sleep                   10, 30
    endif
    nop

off_132C:
    if                      0, off_134C
    ck                      FG_ENEMY, 113, 0
    work_set                WK_ENEMY, 3
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    sleep                   10, 120
    endif
    nop

off_134C:
    if                      0, off_1368
    ck                      FG_ENEMY, 114, 0
    work_set                WK_ENEMY, 4
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    endif
    nop

off_1368:
    evt_end                 0

.proc main_07
    if                      0, off_1420
    ck                      FG_GENERAL_1, 129, 0
    sce_em_set              0, 0, ENEMY_ZOMBIE_RANDOM, 4, 128, 0, 5, 2, 255, -24181, 0, -18903, 1523, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             0, V_TEMP
    nop
    sce_em_set              0, 1, ENEMY_ZOMBIE_RANDOM, 8, 64, 0, 5, 3, 82, -24647, 0, -20671, 3281, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_RANDOM, 8, 64, 0, 5, 3, 83, -22579, 0, -17978, 1617, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_RANDOM, 8, 64, 0, 6, 3, 113, -25797, 0, -19180, 121, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIE_RANDOM, 8, 64, 0, 6, 3, 114, -24533, 0, -17929, 672, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIE_RANDOM, 8, 64, 0, 6, 3, 211, -22985, 0, -19985, 2737, 0, 0
    aot_set                 16, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -28694, -23970, 11900, 8740, 255, 0, I_GOSUB, main_08, 0, 0
    else                    0, off_1490

off_1420:
    sce_em_set              0, 1, ENEMY_ZOMBIE_RANDOM, 6, 0, 0, 5, 3, 82, -24647, 0, -20671, 3281, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_RANDOM, 6, 0, 0, 5, 3, 83, -22579, 0, -17978, 1617, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_RANDOM, 0, 0, 0, 6, 3, 113, -25797, 0, -19180, 121, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIE_RANDOM, 0, 0, 0, 6, 3, 114, -24533, 0, -17929, 672, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIE_RANDOM, 0, 0, 0, 6, 3, 211, -22985, 0, -19985, 2737, 0, 0
    nop
    nop

off_1490:
    evt_end                 0

.proc main_08
    set                     FG_GENERAL_1, 129, 1
    aot_reset               16, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 180, 187, 0, 0, 168, 153
    if                      0, off_14C0
    ck                      FG_ENEMY, 82, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    sleep                   10, 15
    endif
    nop

off_14C0:
    if                      0, off_14E0
    ck                      FG_ENEMY, 83, 0
    work_set                WK_ENEMY, 2
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    sleep                   10, 30
    endif
    nop

off_14E0:
    if                      0, off_1500
    ck                      FG_ENEMY, 113, 0
    work_set                WK_ENEMY, 3
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    sleep                   10, 20
    endif
    nop

off_1500:
    if                      0, off_1520
    ck                      FG_ENEMY, 114, 0
    work_set                WK_ENEMY, 4
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    sleep                   10, 100
    endif
    nop

off_1520:
    if                      0, off_153C
    ck                      FG_ENEMY, 211, 0
    work_set                WK_ENEMY, 5
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    endif
    nop

off_153C:
    evt_end                 0

.proc main_09
    evt_exec                255, I_GOSUB, main_0A
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 32, -26254, -18045
    sleep                   10, 15
    plc_stop
    sce_bgm_control         1, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_dest                0, 9, 32, -24293, -19696
    plc_neck                5, 3, 1, 0, 96, 96
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 32, -26354, -18145
    sleep                   10, 20
    plc_stop
    nop
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -320, 1024, 16, 16
    sleep                   10, 3
    plc_motion              0, 19, 0
    sleep                   10, 7
    plc_neck                2, 0, 320, 1024, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, 120, 0, 74, 74
    sleep                   10, 5
    xa_on                   0, 12
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 8
    nop
    message_on              0, 8, 0, 0, 0
    sleep                   10, 2
    dir_set                 0, 0, 6072, 0
    sleep                   10, 2
    dir_set                 0, 0, 6172, 0
    plc_neck                2, 0, 0, 0, 74, 74
    sleep                   10, 2
    dir_set                 0, 0, 6272, 0
    sleep                   10, 15
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 6
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -25237, -16951
    plc_neck                5, 3, 1, 0, 96, 96
    wsleep
    wsleeping
    cut_chg                 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -20069, 0, -17999
    dir_set                 0, 0, 2089, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -25237, -16951
    gosub                   main_1B
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -26072, -2858
    plc_neck                0, 3, 1, 0, 96, 96
    sleep                   10, 10
    do                      0, off_1684
    evt_next
    nop
    edwhile                 off_1684
    ck                      FG_GENERAL_2, 0, 0

off_1684:
    set                     FG_GENERAL_2, 0, 0
    cut_chg                 4
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -25387, 0, -18897
    do                      0, off_16A2
    evt_next
    nop
    edwhile                 off_16A2
    ck                      FG_GENERAL_2, 0, 0

off_16A2:
    set                     FG_GENERAL_2, 0, 0
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -26072, -2858
    gosub                   main_1B
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -25872, 0
    sleep                   10, 10
    plc_motion              0, 19, 0
    sleep                   10, 35
    plc_motion              0, 19, 128
    sleep                   10, 30
    set                     FG_GENERAL_2, 1, 1
    evt_end                 0

.proc main_0A
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -23921, 0, -19429
    dir_set                 0, 0, -4328, 0
    sca_id_set              1, 0, 0
    sleep                   10, 1
    work_set                WK_ENEMY, 1
    nop
    plc_dest                0, 5, 34, -22531, -18848
    gosub                   main_1D
    work_set                WK_ENEMY, 1
    plc_motion              0, 15, 0
    nop
    sleep                   10, 33
    work_set                WK_ENEMY, 1
    nop
    plc_dest                0, 8, 34, -23035, -19093
    gosub                   main_1D
    plc_dest                0, 5, 34, -25098, -16854
    plc_rot                 0, 96
    gosub                   main_1D
    plc_dest                0, 5, 34, -25580, -4734
    gosub                   main_1D
    cut_chg                 5
    plc_dest                0, 5, 34, -25580, -1327
    gosub                   main_1D
    gosub                   main_0D
    evt_end                 0

.proc main_0B
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -26100, 0, -24800
    dir_set                 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0C
    sleep                   10, 15
    sce_bgm_control         1, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -22670, -19468
    plc_neck                5, 3, 1, 0, 96, 96
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 32, -25233, -22798
    sleep                   10, 20
    plc_stop
    nop
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -320, 1024, 16, 16
    sleep                   10, 3
    plc_motion              0, 19, 0
    sleep                   10, 7
    plc_neck                2, 0, 320, 1024, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, 120, 0, 74, 74
    sleep                   10, 5
    xa_on                   0, 12
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 8
    nop
    message_on              0, 8, 0, 0, 0
    sleep                   10, 2
    dir_set                 0, 0, 3201, 0
    sleep                   10, 2
    dir_set                 0, 0, 3101, 0
    plc_neck                2, 0, 0, 0, 74, 74
    sleep                   10, 2
    dir_set                 0, 0, 3081, 0
    sleep                   10, 15
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 6
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -25398, -16850
    plc_neck                5, 3, 1, 0, 96, 96
    wsleep
    wsleeping
    cut_chg                 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -25535, 0, -21850
    dir_set                 0, 0, -925, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -26072, -2858
    plc_neck                0, 3, 1, 0, 96, 96
    sleep                   10, 10
    do                      0, off_1888
    evt_next
    nop
    edwhile                 off_1888
    ck                      FG_GENERAL_2, 0, 0

off_1888:
    set                     FG_GENERAL_2, 0, 0
    cut_chg                 4
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -25387, 0, -18897
    do                      0, off_18A6
    evt_next
    nop
    edwhile                 off_18A6
    ck                      FG_GENERAL_2, 0, 0

off_18A6:
    set                     FG_GENERAL_2, 0, 0
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -26072, -2858
    gosub                   main_1B
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -25872, 0
    sleep                   10, 10
    plc_motion              0, 19, 0
    sleep                   10, 35
    plc_motion              0, 19, 128
    sleep                   10, 30
    set                     FG_GENERAL_2, 1, 1
    evt_end                 0

.proc main_0C
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -22670, 0, -19468
    dir_set                 0, 0, 1355, 0
    sca_id_set              1, 0, 0
    sleep                   10, 1
    work_set                WK_ENEMY, 1
    nop
    plc_dest                0, 5, 34, -23601, -21140
    gosub                   main_1D
    work_set                WK_ENEMY, 1
    plc_motion              0, 15, 0
    nop
    sleep                   10, 33
    work_set                WK_ENEMY, 1
    nop
    plc_dest                0, 8, 34, -23307, -20612
    gosub                   main_1D
    plc_dest                0, 5, 34, -25484, -16364
    plc_rot                 0, 96
    gosub                   main_1D
    plc_dest                0, 5, 34, -25580, -7640
    gosub                   main_1D
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -26100, 0, -24800
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -25580, 0, -4734
    plc_dest                0, 5, 34, -25580, -1327
    gosub                   main_1D
    gosub                   main_0D
    evt_end                 0

.proc main_0D
    plc_motion              1, 6, 8
    sleep                   10, 2
    work_set                WK_ENEMY, 1
    plc_motion              0, 16, 0
    nop
    sleep                   10, 10
    set                     FG_GENERAL_2, 0, 1
    sleep                   10, 10
    save                    V_04, -1327
    for                     0, off_19A8, 10
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 30
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 6, 1
    pos_set                 0, -25580, 0, 0
    evt_next
    nop
    next                    0

off_19A8:
    for                     0, off_19CC, 27
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 30
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 6, 1
    pos_set                 0, -25580, 0, 0
    evt_next
    nop
    next                    0

off_19CC:
    se_on                   2, 10, 0, -25580, 0, -1327
    set                     FG_GENERAL_2, 0, 1
    if                      0, off_19F2
    ck                      FG_GAME, F_SCENARIO, 1
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -25504, 0, 57
    endif
    nop

off_19F2:
    work_set                WK_ENEMY, 1
    nop
    for                     0, off_1A1A, 18
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 50
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 6, 1
    pos_set                 0, -25580, 0, 0
    evt_next
    nop
    next                    0

off_1A1A:
    plc_motion              0, 16, 0
    plc_cnt                 57
    for                     0, off_1A44, 18
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 50
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 6, 1
    pos_set                 0, -25580, 0, 0
    evt_next
    nop
    next                    0

off_1A44:
    plc_motion              0, 16, 0
    plc_cnt                 57
    for                     0, off_1A6E, 18
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 50
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 6, 1
    pos_set                 0, -25580, 0, 0
    evt_next
    nop
    next                    0

off_1A6E:
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, 24966, 0, 13612
    plc_dest                0, 6, 34, -25228, -2856
    sca_id_set              1, 0, 252
    evt_end                 0

.proc main_0E
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -26022, 0, -25181
    dir_set                 0, 0, 3125, 0
    plc_neck                5, 1, 0, 0, 96, 96
    plc_motion              0, 15, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 32, -25356, -16018
    plc_neck                2, 0, 320, 320, 32, 32
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 64, 129, 161, 293, 349, 1024, -2752, 0
    sleep                   10, 10
    xa_on                   0, 22
    message_on              0, 9, 0, 0, 0
    sleep                   10, 2
    set                     FG_GAME, 27, 1
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -26140, -24546
    plc_neck                5, 3, 0, 0, 96, 96
    wsleep
    wsleeping
    cut_chg                 0
    sleep                   10, 10
    sce_bgm_control         2, 1, 0, 0, 0
    sleep                   10, 10
    work_set                WK_ENEMY, 0
    plc_motion              0, 21, 0
    nop
    sleep                   10, 35
    evt_end                 0

.proc main_0F
    set                     FG_GAME, 27, 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -26022, 0, -25181
    dir_set                 0, 0, 3125, 0
    plc_neck                2, 0, 320, 320, 32, 32
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -25492, 0, -6427
    dir_set                 0, 0, 1039, 0
    evt_next
    nop
    plc_dest                0, 4, 32, -25289, -13849
    plc_neck                2, 0, 320, 320, 32, 32
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 64, 129, 161, 293, 349, 1024, -2752, 0
    sleep                   10, 30
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 10
    plc_dest                0, 9, 33, -25318, -16548
    gosub                   main_1C
    sleep                   10, 10
    cut_chg                 1
    gosub                   main_1B
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 32, -25356, -16018
    cut_chg                 0
    evt_next
    nop
    xa_on                   0, 22
    sleep                   10, 2
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 0
    nop
    wsleep
    wsleeping
    cut_chg                 1
    sce_bgm_control         2, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 6, 32, -25356, -16018
    pos_set                 0, -25318, 0, -16548
    evt_next
    nop
    plc_neck                5, 3, 0, 0, 96, 96
    sleep                   10, 20
    cut_chg                 0
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    plc_motion              0, 21, 0
    nop
    sleep                   10, 35
    evt_end                 0

.proc main_10
    cut_chg                 1
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 32, -24980, -17975
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             0, V_TEMP
    nop
    plc_neck                5, 3, 0, 0, 96, 96
    sleep                   10, 1
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 4, 33, -25122, -19700
    xa_on                   0, 14
    message_on              0, 10, 0, 0, 0
    sleep                   10, 2
    gosub                   main_1B
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 0
    nop
    sleep                   10, 25
    wsleep
    wsleeping
    evt_end                 0

.proc main_11
    cut_chg                 7
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -25506, 0, -21953
    sleep                   10, 1
    plc_dest                0, 4, 33, -25122, -19700
    xa_on                   0, 15
    message_on              0, 11, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    plc_motion              0, 23, 0
    nop
    gosub                   main_1C
    work_set                WK_ENEMY, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 40
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 20
    plc_motion              0, 16, 0
    plc_cnt                 10
    sleep                   10, 20
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    sleep                   10, 10
    evt_end                 0

.proc main_12
    cut_chg                 1
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -26254, -1800, -13576, 96, 96
    plc_dest                0, 9, 32, -25254, -13576
    sleep                   10, 7
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 6, 32, -25254, -13576
    evt_next
    nop
    xa_on                   0, 16
    message_on              0, 12, 0, 0, 0
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    plc_motion              0, 19, 0
    nop
    sleep                   10, 39
    evt_next
    plc_motion              0, 19, 144
    nop
    sleep                   10, 9
    evt_next
    plc_motion              0, 19, 16
    plc_cnt                 25
    nop
    wsleep
    wsleeping
    evt_end                 0

.proc main_13
    cut_chg                 7
    evt_next
    nop
    xa_on                   0, 17
    message_on              0, 13, 0, 0, 0
    sleep                   10, 2
    work_set                WK_ENEMY, 0
    plc_motion              0, 18, 0
    nop
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_14
    sleep                   10, 5
    plc_neck                4, 2, 0, 0, 80, 80
    sleep                   10, 25
    plc_neck                2, 0, 0, 256, 16, 16
    sleep                   10, 20
    evt_end                 0

.proc main_14
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 96, 96
    sleep                   10, 5
    plc_dest                0, 9, 32, -26254, -20051
    gosub                   main_1B
    plc_motion              0, 23, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_15
    xa_on                   0, 18
    evt_next
    plc_motion              0, 16, 0
    nop
    sleep                   10, 5
    plc_neck                2, 0, 256, 256, 20, 20
    sleep                   10, 20
    plc_neck                2, 0, -256, 256, 20, 20
    sleep                   10, 20
    plc_neck                2, 0, 256, 256, 40, 40
    sleep                   10, 10
    plc_neck                2, 0, -256, 256, 40, 40
    plc_motion              0, 18, 0
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 32, 32
    sleep                   10, 15
    work_set                WK_ENEMY, 0
    plc_motion              0, 16, 0
    plc_cnt                 5
    nop
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 15
    plc_motion              0, 15, 0
    sleep                   10, 20
    plc_motion              0, 16, 0
    sleep                   10, 15
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_16
    sleep                   10, 10
    xa_on                   0, 19
    message_on              0, 15, 0, 0, 0
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    plc_neck                5, 3, 0, 0, 64, 64
    sleep                   10, 20
    plc_neck                2, 0, -320, 1024, 32, 32
    plc_motion              0, 23, 0
    plc_cnt                 10
    sleep                   10, 14
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 32, 32
    work_set                WK_PLAYER, 0
    plc_motion              0, 23, 0
    plc_cnt                 14
    work_set                WK_OBJECT, 0
    super_set               0, 64, 129, 181, 243, 349, 1024, -2752, 0
    sleep                   10, 1
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 64, 129, 228, 193, 349, 1024, -2752, 0
    sleep                   10, 1
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 64, 142, 0, 243, -1, 1024, -2048, 0
    sleep                   10, 8
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 16, 16
    sleep                   10, 2
    plc_dest                0, 4, 32, -25849, -21167
    sleep                   10, 4
    plc_motion              0, 15, 16
    sleep                   10, 10
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 12
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 10
    plc_motion              0, 15, 16
    plc_cnt                 11
    evt_exec                255, I_GOSUB, main_17
    sleep                   10, 6
    plc_motion              0, 15, 144
    plc_cnt                 8
    sleep                   10, 6
    plc_stop
    nop
    wsleep
    wsleeping
    evt_end                 0

.proc main_17
    for                     0, off_1F86, 6
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    member_set2             15, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1F86:
    evt_end                 0

.proc main_18
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 9, 33, -24092, -18934
    gosub                   main_1C
    work_set                WK_ENEMY, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 19
    plc_stop
    nop
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 128
    plc_cnt                 11
    nop
    sleep                   10, 1
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 130, 142, 0, 224, -46, 1024, 64, 1985
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 1
    work_set                WK_ENEMY, 0
    plc_motion              0, 16, 128
    nop
    plc_neck                5, 1, 0, 0, 16, 16
    plc_cnt                 13
    sleep                   10, 2
    work_set                WK_ENEMY, 0
    plc_stop
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 16
    nop
    sleep                   10, 10
    work_set                WK_ENEMY, 0
    plc_stop
    xa_on                   0, 20
    message_on              0, 16, 0, 0, 0
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    work_set                WK_ENEMY, 0
    plc_motion              0, 24, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 0
    plc_cnt                 10
    sleep                   10, 20
    plc_motion              0, 16, 0
    plc_cnt                 10
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 23, 0
    plc_cnt                 10
    nop
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    sleep                   10, 10
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 16, 16
    work_set                WK_ENEMY, 0
    plc_motion              0, 22, 16
    plc_cnt                 10
    nop
    sleep                   10, 10
    evt_end                 0

.proc main_19
    work_set                WK_ENEMY, 0
    plc_motion              0, 22, 4
    plc_cnt                 10
    work_set                WK_PLAYER, 0
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             0, V_TEMP
    nop
    plc_neck                5, 1, 0, 0, 16, 16
    evt_end                 0

.proc main_1A
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 4
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             0, V_TEMP
    nop
    plc_neck                5, 3, 0, 0, 16, 16
    evt_end                 0

.proc main_1B
    do                      0, off_2110
    evt_next
    nop
    edwhile                 off_2110
    ck                      FG_GENERAL_2, 32, 0

off_2110:
    evt_end                 0

.proc main_1C
    do                      0, off_211E
    evt_next
    nop
    edwhile                 off_211E
    ck                      FG_GENERAL_2, 33, 0

off_211E:
    evt_end                 0

.proc main_1D
    do                      0, off_212C
    evt_next
    nop
    edwhile                 off_212C
    ck                      FG_GENERAL_2, 34, 0

off_212C:
    evt_end                 0

.proc main_1E
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28294, -26670, 1900, 2500, -14806, 0, -25766, -10192, 0, 20, 0, 0, 3, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15791, -16967, 3400, 2100, -17484, 0, -26200, -13256, 0, 18, 1, 0, 1, 128, 0, 0, UNLOCKED, 0
    sce_em_set              0, 0, ENEMY_LICKER_GREY, 0, 0, 0, 14, 0, 119, -16982, 0, -18140, 2179, 0, 0
    sce_em_set              0, 1, ENEMY_LICKER_GREY, 0, 0, 0, 14, 0, 120, -25562, 0, -8338, 1049, 0, 0
    sce_em_set              0, 2, ENEMY_LICKER_GREY, 0, 0, 0, 14, 0, 156, -23359, 0, -20511, 1072, 0, 0
    evt_end                 0
