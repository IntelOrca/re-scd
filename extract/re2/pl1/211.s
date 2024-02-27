.version 2

.init
.proc init
    if                      0, off_16B2
    ck                      FG_STATUS, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_16B2:
    if                      0, off_16C6
    cmp                     0, V_CUT, CMP_NE, 0
    sca_id_set              13, 0, 0
    sca_id_set              14, 0, 0
    endif
    nop

off_16C6:
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8788, -9066, 3300, 1800, -11250, 0, -25692, -1072, 1, 18, 0, 0, 6, 3, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14482, -13116, 3800, 1800, -19281, 0, -26174, -1133, 1, 19, 0, 0, 29, 2, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_8, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23122, -13116, 2600, 1800, -13013, 0, -17073, -25696, 1, 20, 0, 0, 25, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_6, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28352, -27116, 1880, 3170, 12660, 0, -3979, 2065, 1, 22, 0, 0, 26, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_7, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 988, 4344, 1800, 3200, -18768, 0, -3409, -28784, 1, 15, 5, 0, 18, 4, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28382, -24356, 1890, 1600, ID_MSG_3, 0, 0, 0, 255, 255
    if                      0, off_179A
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 11338, -11166, 1700, 1520, ITEM_HANDGUNAMMO, 15, 221, ID_OBJ_255, IF_FLOOR
    endif
    nop

off_179A:
    evt_end                 0

.main
.proc main
    if                      0, off_17C2
    ck                      FG_STATUS, F_BONUS, 1
    gosub                   main_0B
    evt_end                 0
    endif
    nop

off_17C2:
    gosub                   main_03
    evt_end                 0

.proc aot
    if                      0, off_17D2
    ck                      FG_STATUS, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_17D2:
    gosub                   main_06
    gosub                   main_02
    evt_end                 0

.proc main_02
    if                      0, off_17EC
    cmp                     0, V_CUT, CMP_EQ, 4
    sca_id_set              13, 0, 0
    sca_id_set              14, 0, 0
    endif
    nop

off_17EC:
    evt_end                 0

.proc main_03
    set                     FG_PBF05, 3, 0
    set                     FG_PBF06, 1, 0
    if                      0, off_1832
    ck                      FG_COMMON, 14, 0
    aot_set                 ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24522, -13116, 1900, 1800, 255, 0, I_GOSUB, main_0A, 0, 0
    aot_set                 ID_AOT_9, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -24522, -13116, 1900, 1800, 10, 0, ITEM_REDCARD, 0, aot, 0
    aot_reset               ID_AOT_8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_09, 0, 0
    endif
    nop

off_1832:
    if                      0, off_185E
    ck                      FG_COMMON, 60, 0
    sce_espr_on2            1, 22, 0, 0, 0, 180, 11, 44, 162, 136, 245, 150, 206, 0, 0
    sce_espr_on2            2, 22, 0, 0, 0, 180, 11, 28, 163, 136, 245, 150, 206, 0, 0
    else                    0, off_18AE

off_185E:
    if                      0, off_188A
    ck                      FG_COMMON, 14, 0
    sce_espr_on2            1, 22, 16, 0, 0, 180, 11, 44, 162, 136, 245, 150, 206, 0, 0
    sce_espr_on2            2, 22, 16, 0, 0, 180, 11, 28, 163, 136, 245, 150, 206, 0, 0
    else                    0, off_18AC

off_188A:
    sce_espr_on2            1, 22, 8, 0, 0, 180, 11, 44, 162, 136, 245, 150, 206, 0, 0
    sce_espr_on2            2, 22, 8, 0, 0, 180, 11, 28, 163, 136, 245, 150, 206, 0, 0
    nop
    nop

off_18AC:
    nop
    nop

off_18AE:
    aot_set                 ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 327, -17280, 3000, 1610, 255, 0, I_GOSUB, main_07, 0, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 327, -17280, 3000, 1610, -22727, 0, -11215, -27544, 1, 21, 0, 0, 27, 3, 0, 142, ITEM_CLUBKEY, 0
    if                      0, off_19C8
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_1972
    ck                      FG_ITEM, 119, 0
    if                      0, off_192A
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 0, SBK_12, 0, 100, -25649, 0, -14783, -959, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 0, SBK_12, 0, 101, 9890, 0, -13707, 6297, 0, 0
    else                    0, off_196E

off_192A:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 0, SBK_12, 0, 100, 10483, 0, -12440, 1393, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 0, SBK_12, 0, 101, -9985, 0, -14688, 3913, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 0, SBK_12, 0, 102, -25232, 0, -21061, -1039, 0, 0
    nop
    nop

off_196E:
    else                    0, off_19C4

off_1972:
    if                      0, off_1994
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_RED, 0, AI_DEFAULT, 0, SBK_14, 0, 184, -3934, 0, -14493, -1039, 0, 0
    else                    0, off_19C2

off_1994:
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_RED, 0, AI_DEFAULT, 0, SBK_14, 0, 184, -2710, 0, -14371, 4145, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_LICKER_RED, 0, AI_DEFAULT, 0, SBK_14, 0, 185, -16920, 0, -14351, 2091, 0, 0
    nop
    nop

off_19C2:
    nop
    nop

off_19C4:
    else                    0, off_1A22

off_19C8:
    if                      0, off_19F4
    ck                      FG_ZAPPING, 10, 1
    if                      0, off_19EE
    ck                      FG_COMMON, 153, 1
    if                      0, off_19E6
    ck                      FG_ITEM, 119, 0
    gosub                   main_04
    else                    0, off_19EA

off_19E6:
    gosub                   main_05
    nop
    nop

off_19EA:
    else                    0, off_19F0

off_19EE:
    nop
    nop

off_19F0:
    else                    0, off_1A20

off_19F4:
    if                      0, off_1A1E
    ck                      FG_ZAPPING, 9, 0
    if                      0, off_1A1A
    ck                      FG_COMMON, 153, 1
    if                      0, off_1A12
    ck                      FG_ITEM, 119, 0
    gosub                   main_04
    else                    0, off_1A16

off_1A12:
    gosub                   main_05
    nop
    nop

off_1A16:
    else                    0, off_1A1C

off_1A1A:
    nop
    nop

off_1A1C:
    endif
    nop

off_1A1E:
    nop
    nop

off_1A20:
    nop
    nop

off_1A22:
    evt_end                 0

.proc main_04
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_4, 1, 100, 11093, 0, -13828, 2385, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_4, 1, 101, 2294, 0, -12814, -2711, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_4, 1, 102, -9386, 0, -15519, -5167, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_6, 1, 184, -16812, 0, -13115, 977, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_6, 1, 185, -25625, 0, -14002, -7519, 0, 0
    evt_end                 0

.proc main_05
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_4, 1, 188, 2294, 0, -12814, 1385, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_6, 1, 189, -9386, 0, -15519, 3025, 0, 0
    evt_end                 0

.proc main_06
    if                      0, off_1B02
    ck                      FG_COMMON, 14, 0
    if                      0, off_1B00
    cmp                     0, V_00, CMP_EQ, 9
    if                      0, off_1AFE
    cmp                     0, V_USED_ITEM, CMP_EQ, 52
    if                      0, off_1AF4
    ck                      FG_COMMON, 60, 1
    set                     FG_COMMON, 14, 1
    sce_item_lost           ITEM_REDCARD
    evt_exec                255, I_GOSUB, main_08
    else                    0, off_1AFC

off_1AF4:
    message_on              0, ID_MSG_1, 0, 255, 255
    nop
    nop

off_1AFC:
    endif
    nop

off_1AFE:
    endif
    nop

off_1B00:
    endif
    nop

off_1B02:
    evt_end                 0

.proc main_07
    set                     FG_STOP, 7, 1
    if                      0, off_1B1A
    ck                      FG_KEY, 14, 0
    message_on              0, ID_MSG_4, 0, 255, 255
    evt_next
    nop
    endif
    nop

off_1B1A:
    aot_on                  ID_AOT_1
    evt_next
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_08
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    cut_chg                 12
    aot_reset               ID_AOT_8, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 43, 205, 0, 0, 79, 189
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 43, 205, 0, 0, 79, 189
    aot_reset               ID_AOT_9, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 43, 205, 0, 0, 79, 189
    se_on                   2, 12, 0, -23484, -1800, -13165
    sleep                   10, 15
    se_on                   2, 13, 0, -23484, -1800, -13165
    sce_espr_kill2          1
    sce_espr_kill2          2
    sce_espr_on2            1, 22, 8, 0, 0, 180, 11, 44, 162, 136, 245, 150, 206, 0, 0
    sce_espr_on2            2, 22, 8, 0, 0, 180, 11, 28, 163, 136, 245, 150, 206, 0, 0
    sleep                   10, 15
    se_on                   2, 11, 0, -23484, -1800, -13165
    cut_chg                 9
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    evt_end                 0

.proc main_09
    set                     FG_STOP, 7, 1
    message_on              0, ID_MSG_0, 0, 255, 255
    evt_next
    nop
    message_on              0, ID_MSG_6, 0, 255, 255
    se_on                   2, 22, 0, -23484, -1800, -13165
    evt_next
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_0A
    set                     FG_STOP, 7, 1
    cut_chg                 12
    if                      0, off_1BEA
    ck                      FG_COMMON, 60, 1
    message_on              0, ID_MSG_2, 0, 255, 255
    evt_next
    nop
    else                    0, off_1BF4

off_1BEA:
    message_on              0, ID_MSG_1, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_1BF4:
    cut_chg                 9
    cut_auto                1
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0B
    sca_id_set              13, 0, 0
    sca_id_set              14, 0, 0
    set                     FG_PBF05, 3, 0
    set                     FG_PBF06, 1, 0
    aot_set                 ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8788, -9066, 3300, 1800, ID_MSG_5, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14482, -13116, 3800, 1800, ID_MSG_5, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23122, -13116, 2600, 1800, ID_MSG_5, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 327, -17280, 3000, 1610, ID_MSG_5, 0, 0, 0, 255, 255
    door_aot_se             ID_AOT_6, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28352, -27116, 1880, 3170, 12660, 0, -3979, 2065, 1, 22, 0, 0, 26, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_7, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 988, 4344, 1800, 3200, -18768, 0, -3409, -28784, 1, 15, 5, 0, 18, 4, 0, 0, UNLOCKED, 0
    sce_em_set              0, ID_EM_0, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 108, -17355, -450, -13298, 705, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 109, -18475, -450, -14351, 531, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 110, -17120, -450, -15236, 3488, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 111, -3430, -450, -11125, 5280, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 112, -26447, -450, -18670, 736, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 113, -25202, -450, -18443, 32, 0, 0
    sce_em_set              0, ID_EM_6, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 114, -24278, -450, -17967, 2240, 0, 0
    sce_em_set              0, ID_EM_7, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 157, -4868, 0, -11001, 976, 0, 0
    sce_em_set              0, ID_EM_8, ENEMY_CROW, 0, AI_DEFAULT, 0, SBK_13, 0, 158, -4053, 0, -10991, 1136, 0, 0
    evt_end                 0
    db                      0x00, 0x00
