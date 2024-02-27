.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 5024, -22115, 1200, 1800, -20700, 0, -3700, 0, 1, 22, 3, 0, 28, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7256, -12055, 1800, 1200, -15300, 0, -9700, 3072, 1, 26, 0, 0, 26, 1, 0, 0, UNLOCKED, 0
    if                      0, off_09BA
    ck                      FG_STATUS, F_BONUS, 1
    aot_set                 ID_AOT_3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26566, -16105, 2400, 1200, ID_MSG_4, 0, 0, 0, 255, 255
    else                    0, off_09DC

off_09BA:
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26566, -16105, 2400, 1200, -25100, 0, -16450, 1024, 2, 1, 0, 0, 20, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_09DC:
    evt_end                 0
    db                      0x1A, 0x13

.main
.proc main
    if                      0, off_0A74
    ck                      FG_STATUS, F_BONUS, 1
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 134, AI_DEFAULT, 0, SBK_5, 0, 95, -11536, 0, -13187, 159, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_5, 0, 96, -373, 0, -21443, 2653, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 3, AI_20, 0, SBK_5, 0, 140, -5728, 0, -18745, 3472, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 1, AI_20, 0, SBK_5, 0, 148, -4580, 0, -17700, 3136, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_5, 0, 161, 2292, 0, -21718, 3064, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 134, AI_DEFAULT, 0, SBK_5, 0, 162, -12406, 0, -14303, 4008, 0, 0
    evt_end                 0
    endif
    nop

off_0A74:
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -26000, -1600, -12500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27000, -12900, 1800, 1800, ITEM_FILMC, 1, 117, ID_OBJ_1, IF_DEFAULT
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28600, -14800, 1800, 1400, ID_MSG_2, 0, 0, 0, 255, 255
    if                      0, off_0B4C
    ck                      FG_ITEM, 119, 1
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY1, 5, AI_40, 0, SBK_0, 0, 255, -13000, 0, -13500, 2700, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 7, AI_40, 0, SBK_0, 0, 255, -1766, 0, -20897, 463, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_DOG, 5, AI_DEFAULT, 0, SBK_12, 0, 120, -14050, 0, -14385, 3936, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_DOG, 5, AI_DEFAULT, 0, SBK_12, 0, 146, -3183, 0, -21760, 3848, 0, 0
    else                    0, off_0B90

off_0B4C:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY1, 6, AI_DEFAULT, 0, SBK_5, 0, 121, -6254, 0, -17659, 640, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 6, AI_DEFAULT, 0, SBK_5, 0, 122, -13473, 0, -14042, -544, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_GUY1, 6, AI_DEFAULT, 0, SBK_5, 0, 123, -21864, 0, -12221, 1511, 0, 0
    nop
    nop

off_0B90:
    evt_end                 0

.proc aot
    evt_end                 0
