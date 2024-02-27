.version 2

.init
.proc init
    if                      0, off_141C
    ck                      FG_STATUS, F_PLAYER, 1
    if                      0, off_13F6
    ck                      FG_STATUS, F_SCENARIO, 0
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28085, -26814, 1800, 2200, -5909, 0, -25893, -2096, 4, 2, 5, 0, 26, 1, 0, 0, UNLOCKED, 0
    else                    0, off_1418

off_13F6:
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28085, -26814, 1800, 2200, -5909, 0, -25893, -2096, 4, 2, 11, 0, 26, 1, 0, 0, UNLOCKED, 0
    nop
    nop

off_1418:
    else                    0, off_143E

off_141C:
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28085, -26814, 1800, 2200, -5909, 0, -25893, -2096, 4, 2, 11, 0, 26, 1, 0, 0, UNLOCKED, 0
    nop
    nop

off_143E:
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, -24344, 0, -25795, -192, 4, 3, 0, 0, 22, 4, 0, 0, UNLOCKED, 0
    if                      0, off_14C2
    ck                      FG_STATUS, F_SCENARIO, 1
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_5, 1, 11, -18516, 0, -15261, -211, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_5, 1, 12, -18122, 0, -13401, 583, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_5, 1, 13, -20808, 0, -4543, 1805, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_5, 2, 55, -11166, 0, -14498, 1997, 0, 0
    else                    0, off_151C

off_14C2:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_5, 1, 11, -20119, 0, -14920, 3665, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_5, 1, 12, -4427, 0, -6245, 959, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_5, 1, 13, -20752, 0, -5114, 1841, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_5, 2, 55, -8040, 0, -14014, 1907, 0, 0
    nop
    nop

off_151C:
    evt_end                 0
    db                      0x20, 0x00

.main
.proc main
    aot_set                 ID_AOT_6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23000, -1100, 3000, 1520, 255, 0, I_GOSUB, main_03, 0, 0
    cut_replace             2, 10
    cut_replace             3, 11
    gosub                   main_04
    gosub                   main_02
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6439, -6530, 1520, 1410, ITEM_HERBG, 1, 64, ID_OBJ_0, IF_FLOOR
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -5489, 0, -6130, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_15D0
    ck                      FG_STATUS, F_SCENARIO, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -3989, -6400, 1390, 1600, ITEM_HERBG, 1, 65, ID_OBJ_1, IF_FLOOR
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -3339, 0, -5850, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_160E

off_15D0:
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -3989, -6400, 1390, 1600, ITEM_HERBB, 1, 65, ID_OBJ_2, IF_FLOOR
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -3339, 0, -5850, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_160E:
    evt_end                 0

.proc main_03
    message_on              0, ID_MSG_0, 0, 255, 255
    evt_next
    nop
    if                      0, off_1624
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_on                  ID_AOT_1
    endif
    nop

off_1624:
    evt_end                 0

.proc main_04
    if                      0, off_166C
    ck                      FG_STATUS, 3, 1
    if                      0, off_1652
    cmp                     0, V_LAST_RDT, CMP_EQ, 1282
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04 | AI_08, 0, SBK_31, 0, 255, -26285, 0, -26394, 3920, 0, 0
    else                    0, off_166A

off_1652:
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04 | AI_08, 0, SBK_31, 0, 255, -22539, 0, -989, 800, 0, 0
    nop
    nop

off_166A:
    endif
    nop

off_166C:
    evt_end                 0
    db                      0x98, 0xE0
