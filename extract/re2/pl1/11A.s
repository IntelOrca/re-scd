.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8350, -2100, 2000, 1000, 14500, 0, -20500, 1024, 0, 25, 5, 0, 48, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8150, -2100, 2000, 1000, -9500, 0, -20400, 1024, 0, 27, 0, 0, 48, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -8500, -1300, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY1, 70, AI_DEFAULT, 0, SBK_3, 131, 156, 6128, 0, 192, 2199, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GIRL, 67, AI_DEFAULT, 0, SBK_10, 131, 157, -1867, 0, -163, 2069, 0, 0
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10200, -700, 1800, 1800, ITEM_HANDGUNAMMO, 15, 195, ID_OBJ_0, IF_DEFAULT
    aot_set                 ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8400, 800, 1800, 1800, ID_MSG_0, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -600, 800, 1800, 1800, ID_MSG_0, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4500, -3100, 3700, 2200, ID_MSG_0, 0, 0, 0, 255, 255
    evt_end                 0

.proc aot
    evt_end                 0
