.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 5024, -22115, 1200, 1800, -20700, 0, -3700, 0, 1, 22, 3, 0, 28, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7256, -12055, 1800, 1200, -15300, 0, -9700, 3072, 1, 26, 0, 0, 26, 1, 0, 0, UNLOCKED, 0
    if                      0, off_09BA
    ck                      1, 6, 1
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26566, -16105, 2400, 1200, 4, 0, 0, 0, 255, 255
    else                    0, off_09DC

off_09BA:
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26566, -16105, 2400, 1200, -25100, 0, -16450, 1024, 2, 1, 0, 0, 20, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_09DC:
    evt_end                 0
    db                      0x1A, 0x13

.main
.proc main_00
    if                      0, off_0A74
    ck                      1, 6, 1
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 134, 0, 0, 5, 0, 95, -11536, 0, -13187, 159, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 5, 0, 96, -373, 0, -21443, 2653, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 3, 32, 0, 5, 0, 140, -5728, 0, -18745, 3472, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 1, 32, 0, 5, 0, 148, -4580, 0, -17700, 3136, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 0, 0, 5, 0, 161, 2292, 0, -21718, 3064, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 134, 0, 0, 5, 0, 162, -12406, 0, -14303, 4008, 0, 0
    evt_end                 0
    endif
    nop

off_0A74:
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -26000, -1600, -12500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27000, -12900, 1800, 1800, ITEM_FILMC, 1, 117, 1, 0
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28600, -14800, 1800, 1400, 2, 0, 0, 0, 255, 255
    if                      0, off_0B4C
    ck                      8, 119, 1
    sce_em_set              0, 0, ENEMY_ZOMBIEGUY1, 5, 64, 0, 0, 0, 255, -13000, 0, -13500, 2700, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY1, 7, 64, 0, 0, 0, 255, -1766, 0, -20897, 463, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    sce_em_set              0, 2, ENEMY_CEREBRUS, 5, 0, 0, 12, 0, 120, -14050, 0, -14385, 3936, 0, 0
    sce_em_set              0, 3, ENEMY_CEREBRUS, 5, 0, 0, 12, 0, 146, -3183, 0, -21760, 3848, 0, 0
    else                    0, off_0B90

off_0B4C:
    sce_em_set              0, 0, ENEMY_ZOMBIEGUY1, 6, 0, 0, 5, 0, 121, -6254, 0, -17659, 640, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY1, 6, 0, 0, 5, 0, 122, -13473, 0, -14042, -544, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIEGUY1, 6, 0, 0, 5, 0, 123, -21864, 0, -12221, 1511, 0, 0
    nop
    nop

off_0B90:
    evt_end                 0

.proc main_01
    evt_end                 0
