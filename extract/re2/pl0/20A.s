.version 2

.init
.proc init
    if                      0, off_0882
    ck                      FG_STATUS, F_BONUS, 1
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17006, -16510, 1600, 2110, -3010, -1800, -24100, 2048, 1, 0, 9, 1, 13, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13100, -11675, 1800, 3500, -26030, 0, -18840, 0, 1, 11, 9, 0, 4, 3, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8932, 1200, 1800, 1800, ID_MSG_6, 0, 0, 0, 255, 255
    evt_end                 0
    endif
    nop

off_0882:
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17006, -16510, 1600, 2110, -3010, -1800, -24100, 2048, 1, 0, 9, 1, 13, 1, 0, 145, UNLOCK, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13100, -11675, 1800, 3500, -26030, 0, -18840, 0, 1, 11, 9, 0, 4, 3, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8932, 1200, 1800, 1800, -10200, 0, -25900, 3072, 1, 12, 0, 0, 9, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_097C
    ck                      FG_STATUS, F_BONUS, 1
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_3, 0, 97, -14125, 0, -16898, 3217, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_4, 0, 98, -15875, 0, -3353, 909, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 99, -14403, 0, -3485, 5055, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_4, 0, 100, -16576, 0, -10470, 56, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 101, -15486, 0, -17526, 3533, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_4, 0, 102, -13121, 0, -15298, 2749, 0, 0
    evt_end                 0
    endif
    nop

off_097C:
    if                      0, off_0996
    ck                      FG_STATUS, F_SCENARIO, 1
    ck                      FG_COMMON, 79, 1
    set                     FG_COMMON, 128, 1
    sce_bgmtbl_set          0, 12, 2, 65287, 0
    endif
    nop

off_0996:
    aot_set                 ID_AOT_3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13300, -5150, 1800, 3200, ID_MSG_1, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12790, 5190, 4580, 2030, ID_MSG_2, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8000, 2300, 1800, 2900, ID_MSG_3, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8770, -2000, 2000, 2200, ID_MSG_5, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18650, -12530, 2000, 6000, ID_MSG_4, 0, 0, 0, 255, 255
    item_aot_set            ID_AOT_8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16280, 5850, 1000, 1000, ITEM_HERBG, 1, 33, ID_OBJ_0, IF_FLOOR
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -15880, 0, 6450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_0AC6
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 32, -15699, 0, 3739, 917, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 33, -15925, 0, -1600, 933, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 34, -10742, 0, 153, 2039, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 124, -14750, 0, 1102, 963, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 205, -13611, 0, -1017, 1117, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 206, -11383, 0, 2914, 1349, 0, 0
    else                    0, off_0B4C

off_0AC6:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_3, 0, 32, -10745, 0, -698, 3055, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 33, -15888, 0, -6064, 833, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 34, -13749, 0, -3100, 1231, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 124, -15220, 0, -12036, 328, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 205, -13610, 0, -17095, 2551, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 0, 206, -13734, 0, -5971, 1544, 0, 0
    nop
    nop

off_0B4C:
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    message_on              0, ID_MSG_0, 0, 255, 255
    se_on                   2, 22, 0, 0, -1800, 0
    evt_end                 0

.proc main_03
    message_on              0, ID_MSG_0, 0, 255, 255
    se_on                   2, 22, 0, 0, -1800, 0
    evt_end                 0
