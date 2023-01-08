.version 2
.init
.proc init_00
    if                      0, off_05BE
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_05BE:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15091, -19241, 1800, 1800, -25854, 0, -19443, -80, 0, 10, 1, 0, 5, 129, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26171, -22641, 1660, 2040, 445, -7200, -22634, -1600, 0, 16, 1, 4, 13, 0, 0, 0, UNLOCKED, 0
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24212, -25914, 3030, 1960, 0, 0, 0, 0, 255, 255
    aot_set                 6, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17421, -22126, 2450, 2190, 0, 0, 0, 0, 0, 0
    aot_set                 9, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26702, -19021, 2670, 2740, 0, 0, 1, 0, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -26070, -1459, -17383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17915, -23203, 2000, 2640, ITEM_111, 1, 37, 2, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -16875, -1450, -22133, 0, 1856, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17421, -22126, 2450, 2190, ITEM_INKRIBBON, 3, 139, 3, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -16278, -1353, -20978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main_00
    if                      0, off_06F0
    ck                      1, 6, 1
    gosub                   2
    evt_end                 0
    endif
    nop

off_06F0:
    if                      0, off_0738
    ck                      1, 1, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20475, -25403, 1590, 1810, ITEM_LIGHTER, 1, 39, 4, 160
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -19675, -679, -24541, -1024, 0, -320, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0776

off_0738:
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20475, -25403, 1590, 1810, ITEM_HANDGUNAMMO, 30, 157, 5, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -19675, -679, -24541, 0, 768, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0776:
    evt_end                 0

.proc main_01
    if                      0, off_0784
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_0784:
    evt_end                 0

.proc main_02
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15091, -19241, 1800, 1800, -25854, 0, -19443, -80, 0, 10, 1, 0, 5, 129, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26171, -22641, 1660, 2040, 445, -7200, -22634, -1600, 0, 16, 1, 4, 13, 0, 0, 0, UNLOCKED, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -26070, -1459, -17383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 0, 121, -15008, 0, -18823, 2157, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 0, 122, -22249, 0, -18702, 4493, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 0, 143, -19240, 0, -22937, 2777, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 0, 144, -25298, 0, -19880, 697, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 0, 145, -17859, 0, -17762, -2727, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 0, 146, -18593, 0, -21002, 2585, 0, 0
    sce_em_set              0, 6, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 0, 147, -23558, 0, -23387, 3449, 0, 0
    evt_end                 0
