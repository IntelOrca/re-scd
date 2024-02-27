.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27989, -15837, 1300, 2000, 26305, 0, -23547, 2424, 4, 1, 3, 0, 26, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5811, -26581, 1000, 2100, -26285, 0, -25414, 0, 4, 8, 0, 0, 26, 0, 0, 0, UNLOCKED, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_3, 1, 8, -12476, 0, -3245, 2077, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_3, 1, 9, -11872, 0, -4773, 2169, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 2, 47, -14369, 0, -8233, 1336, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 2, 48, -10184, 0, -25093, 1416, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 4, AI_40, 0, SBK_3, 1, 255, -6813, 0, -4076, 2048, 0, 0
    work_set                WK_ENEMY, ID_EM_4
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    evt_end                 0

.main
.proc main
    cut_replace             1, 9
    cut_replace             2, 10
    cut_replace             5, 11
    nop
    gosub                   main_02
    if                      0, off_15C2
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT | SAT_UNDER, 0, 0, -7204, -3836, 790, 460, ITEM_SHOTGUNPARTS, 1, 21, ID_OBJ_2, IF_FLOOR
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 48, -6864, 0, -3496, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1600

off_15C2:
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT | SAT_UNDER, 0, 0, -7204, -3836, 790, 460, ITEM_SHOTGUNPARTS, 1, 21, ID_OBJ_2, IF_FLOOR
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -6864, 0, -3496, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1600:
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    if                      0, off_164A
    ck                      FG_STATUS, 3, 1
    if                      0, off_1630
    cmp                     0, V_LAST_RDT, CMP_EQ, 1281
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04 | AI_08, 0, SBK_31, 0, 255, -26279, 0, -15417, 3928, 0, 0
    else                    0, off_1648

off_1630:
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04 | AI_08, 0, SBK_31, 0, 255, -6119, 0, -25087, 1888, 0, 0
    nop
    nop

off_1648:
    endif
    nop

off_164A:
    evt_end                 0
