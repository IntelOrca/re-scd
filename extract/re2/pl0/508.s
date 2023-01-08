.version 2
.init
.proc init_00
    if                      0, off_141C
    ck                      1, 0, 1
    if                      0, off_13F6
    ck                      1, 1, 0
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28085, -26814, 1800, 2200, -5909, 0, -25893, -2096, 4, 2, 5, 0, 26, 1, 0, 0, UNLOCKED, 0
    else                    0, off_1418

off_13F6:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28085, -26814, 1800, 2200, -5909, 0, -25893, -2096, 4, 2, 11, 0, 26, 1, 0, 0, UNLOCKED, 0
    nop
    nop

off_1418:
    else                    0, off_143E

off_141C:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28085, -26814, 1800, 2200, -5909, 0, -25893, -2096, 4, 2, 11, 0, 26, 1, 0, 0, UNLOCKED, 0
    nop
    nop

off_143E:
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, -24344, 0, -25795, -192, 4, 3, 0, 0, 22, 4, 0, 0, UNLOCKED, 0
    if                      0, off_14C2
    ck                      1, 1, 1
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 1, 11, -18516, 0, -15261, -211, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 1, 12, -18122, 0, -13401, 583, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 1, 13, -20808, 0, -4543, 1805, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 2, 55, -11166, 0, -14498, 1997, 0, 0
    else                    0, off_151C

off_14C2:
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 0, 0, 0, 5, 1, 11, -20119, 0, -14920, 3665, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 5, 1, 12, -4427, 0, -6245, 959, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 1, 13, -20752, 0, -5114, 1841, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 2, 55, -8040, 0, -14014, 1907, 0, 0
    nop
    nop

off_151C:
    evt_end                 0
    db                      0x20, 0x00

.main
.proc main_00
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23000, -1100, 3000, 1520, 255, 0, I_GOSUB, main_03, 0, 0
    cut_replace             2, 10
    cut_replace             3, 11
    gosub                   4
    gosub                   2
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6439, -6530, 1520, 1410, ITEM_HERBG, 1, 64, 0, 1
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -5489, 0, -6130, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_15D0
    ck                      1, 1, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -3989, -6400, 1390, 1600, ITEM_HERBG, 1, 65, 1, 1
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -3339, 0, -5850, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_160E

off_15D0:
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -3989, -6400, 1390, 1600, ITEM_HERBB, 1, 65, 2, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -3339, 0, -5850, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_160E:
    evt_end                 0

.proc main_03
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    if                      0, off_1624
    ck                      11, 31, 0
    aot_on                  1
    endif
    nop

off_1624:
    evt_end                 0

.proc main_04
    if                      0, off_166C
    ck                      1, 3, 1
    if                      0, off_1652
    cmp                     0, 27, CMP_EQ, 1282
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 12, 0, 31, 0, 255, -26285, 0, -26394, 3920, 0, 0
    else                    0, off_166A

off_1652:
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 12, 0, 31, 0, 255, -22539, 0, -989, 800, 0, 0
    nop
    nop

off_166A:
    endif
    nop

off_166C:
    evt_end                 0
    db                      0x98, 0xE0
