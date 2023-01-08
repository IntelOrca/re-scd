.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 12864, -5227, 1800, 2300, -26435, 0, -25198, -440, 1, 17, 11, 0, 26, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23084, -4737, 1800, 2300, 4809, 0, -21018, 2133, 1, 25, 0, 0, 28, 1, 0, 0, UNLOCKED, 0
    if                      0, off_0F06
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_0F06:
    if                      0, off_0F14
    ck                      8, 119, 1
    set                     5, 32, 1
    endif
    nop

off_0F14:
    if                      0, off_0F22
    ck                      8, 124, 1
    set                     5, 32, 1
    endif
    nop

off_0F22:
    if                      0, off_0F62
    ck                      1, 1, 1
    if                      0, off_0F60
    ck                      5, 32, 1
    sce_em_set              0, 0, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 137, -2300, 0, -4160, 3375, 0, 0
    sce_em_set              0, 1, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 138, -7400, 0, -2660, 1583, 0, 0
    endif
    nop

off_0F60:
    endif
    nop

off_0F62:
    evt_end                 0

.main
.proc main_00
    if                      0, off_0FE4
    ck                      1, 6, 1
    sce_em_set              0, 0, ENEMY_CEREBRUS, 2, 0, 0, 12, 0, 81, -17217, 0, 4549, 1251, 0, 0
    sce_em_set              0, 1, ENEMY_CEREBRUS, 2, 0, 0, 12, 0, 82, -6131, -20, -4790, 2467, 0, 0
    sce_em_set              0, 2, ENEMY_CEREBRUS, 2, 0, 0, 12, 0, 83, -2121, -10, -2599, 2187, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 0, 18, -17634, 0, -11163, 0, -2048, 0, -800, -1800, 1820, 3000, 196, 9, 32, 13
    sca_id_set              19, 16, 190
    evt_end                 0
    endif
    nop

off_0FE4:
    if                      0, off_10A8
    ck                      1, 1, 1
    if                      0, off_1048
    ck                      4, 89, 1
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 0, 18, -17634, 0, -11163, 0, -2048, 0, -800, -1800, 1820, 3000, 196, 9, 32, 13
    obj_model_set           1, 0, 0, 0, 0, 49152, 16, 2, 16, -1700, -850, -2850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sca_id_set              19, 16, 190
    else                    0, off_10A4

off_1048:
    aot_reset               1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 0, 18, -17634, 0, -8100, 0, -2048, 0, -800, -1800, 1820, 3000, 196, 9, 32, 13
    obj_model_set           1, 0, 0, 0, 0, 49152, 0, 2, 16, -1700, -850, -2850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sca_id_set              19, 0, 0
    nop
    nop

off_10A4:
    else                    0, off_1104

off_10A8:
    aot_reset               1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 0, 18, -17634, 0, -8100, 0, -2048, 0, -800, -1800, 1820, 3000, 196, 9, 32, 13
    obj_model_set           1, 0, 0, 0, 0, 49152, 0, 2, 16, -1700, -850, -2850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sca_id_set              19, 0, 0
    nop
    nop

off_1104:
    gosub                   3
    gosub                   2
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    aot_set                 28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13203, 8442, 2400, 7300, 11, 0, 0, 0, 0, 255
    if                      0, off_113E
    ck                      4, 89, 0
    aot_set                 29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21303, -10788, 5750, 8100, 12, 0, 0, 0, 0, 255
    endif
    nop

off_113E:
    evt_end                 0

.proc main_03
    item_aot_set            27, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19300, 14572, 1200, 1200, ITEM_HERBG, 1, 144, 2, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -18660, 0, 15142, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x83, 0x90
