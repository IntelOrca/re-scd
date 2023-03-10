.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23150, -342, 1800, 1800, -26300, 0, -18000, 0, 5, 19, 0, 0, 37, 0, 0, 151, ITEM_UMBRELLAKEYCARD, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20320, -26352, 1800, 4500, -25600, 0, -12110, 0, 5, 21, 0, 0, 38, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 2110, -16072, 1800, 2400, -25000, 0, -15200, 0, 5, 18, 0, 0, 37, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26950, -520, 2400, 2300, 16, 0, 0, 0, 255, 255
    sce_em_set              0, 0, ENEMY_MAGGOTS, 2, 96, 0, 40, 0, 255, -24500, -5400, -5500, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -26450, 0, -26350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27200, -27200, 1200, 1200, ITEM_HERBR, 1, 56, 0, 1
    evt_end                 0

.proc main_01
    if                      0, off_0C9E
    cmp                     0, 26, CMP_EQ, 5
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    else                    0, off_0CC0

off_0C9E:
    if                      0, off_0CB4
    cmp                     0, 26, CMP_EQ, 4
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    else                    0, off_0CBE

off_0CB4:
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 0, 0
    nop
    nop

off_0CBE:
    nop
    nop

off_0CC0:
    evt_end                 0
    db                      0x18, 0x00
