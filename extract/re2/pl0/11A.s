.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8350, -2100, 2000, 1000, 14500, 0, -20500, 1024, 0, 25, 5, 0, 48, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8150, -2100, 2000, 1000, -9500, 0, -20400, 1024, 0, 27, 0, 0, 48, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -8500, -1300, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_em_set              0, 0, ENEMY_ZOMBIEGUY1, 70, 0, 0, 3, 131, 156, 6128, 0, 192, 2199, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIEGIRL, 67, 0, 0, 10, 131, 157, -1867, 0, -163, 2069, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10200, -700, 1800, 1800, ITEM_HANDGUNAMMO, 15, 195, 0, 0
    aot_set                 4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8400, 800, 1800, 1800, 0, 0, 0, 0, 255, 255
    aot_set                 5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -600, 800, 1800, 1800, 0, 0, 0, 0, 255, 255
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4500, -3100, 3700, 2200, 0, 0, 0, 0, 255, 255
    evt_end                 0

.proc main_01
    evt_end                 0
