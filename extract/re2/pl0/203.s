.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27713, -23125, 1240, 2470, -14423, 0, -7289, 2024, 1, 4, 4, 0, 8, 0, 0, 0, UNLOCKED, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23098, -25955, 2460, 7900, ITEM_76, 1, 153, 255, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26643, -18975, 940, 1870, ITEM_INKRIBBON, 3, 35, 1, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, 26219, -2209, 18285, 0, 0, 384, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23098, -25955, 2460, 7900, 0, 0, 0, 0, 255, 255
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26108, -14745, 8150, 1200, 1, 0, 0, 0, 255, 255
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27168, -18475, 1460, 1400, 2, 0, 0, 0, 255, 255
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20913, -26525, 2840, 870, 3, 0, 0, 0, 255, 255
    aot_set                 13, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25598, -26565, 2460, 1200, 4, 0, 0, 0, 255, 255
    obj_model_set           0, 2, 0, 0, 0, 0, 0, 384, 0, -18673, 0, -21096, 0, -1024, 0, 50, -900, 0, 675, 132, 3, 88, 2
    evt_end                 0

.main
.proc main
    if                      0, off_0868
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_0810
    ck                      FG_0, F_DIFFICULT, 0
    item_aot_set            1, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20023, -26525, 2120, 870, ITEM_HANDGUNAMMO, 15, 34, 3, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -19138, -2200, -26101, 0, 1536, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0828

off_0810:
    item_aot_set            1, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20023, -26525, 2120, 870, ITEM_HANDGUNAMMO, 15, 34, 255, 0
    nop
    nop

off_0828:
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -20613, -26525, 2040, 870, ITEM_CRANK, 1, 188, 4, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -19435, -4000, -26182, 0, -1216, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_08A6

off_0868:
    item_aot_set            1, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -20613, -26525, 2040, 870, ITEM_FAIDSPRAY, 1, 36, 2, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -19435, -4000, -26182, 0, -2432, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_08A6:
    evt_end                 0

.proc aot
    evt_end                 0
