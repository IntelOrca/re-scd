.version 2
.init
.proc init_00
    if                      0, off_0F16
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_0F16:
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27070, -17967, 1060, 2600, -2935, 0, -17438, -2007, 1, 5, 8, 0, 0, 1, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16439, -14352, 2710, 1090, -15462, 0, -15336, -3067, 1, 8, 0, 0, 0, 1, 0, 0, UNLOCKED, 0
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23368, -9310, 2000, 3200, 7390, 0, 944, -3136, 0, 12, 0, 0, 15, 4, 0, 0, UNLOCKED, 0
    door_aot_se             4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27156, -26834, 1200, 3370, -16934, 0, -26037, -1971, 1, 9, 1, 0, 8, 1, 0, 136, ITEM_DIAMONDKEY, 0
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27738, -9935, 2050, 1710, 2, 0, 0, 0, 255, 255
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28158, -11485, 2250, 1570, 3, 0, 0, 0, 255, 255
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22608, -14785, 1350, 1510, 4, 0, 0, 0, 255, 255
    aot_set                 12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20158, -15165, 2450, 1890, 5, 0, 0, 0, 255, 255
    aot_set                 13, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18008, -10285, 4550, 2310, 6, 0, 0, 0, 255, 255
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14039, -11372, 2550, 1740, ITEM_HERBG, 1, 148, 0, 1
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -13728, 0, -10637, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14039, -10552, 2550, 1740, ITEM_HERBG, 1, 167, 1, 1
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -13728, 0, -10037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_10D4
    ck                      1, 1, 0
    sce_em_set              0, 0, ENEMY_ZOMBIEGIRL, 6, 0, 0, 44, 0, 71, -25621, 0, -20311, 213, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 42, 1, 72, -21898, 0, -12962, 3049, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 42, 1, 115, -17938, 0, -10646, 1597, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 0, 0, 42, 1, 116, -25817, 0, -12071, 4491, 0, 0
    endif
    nop

off_10D4:
    evt_end                 0
    db                      0x00, 0x78

.main
.proc main_00
    if                      0, off_10F2
    ck                      1, 6, 1
    gosub                   5
    evt_end                 0
    endif
    nop

off_10F2:
    gosub                   2
    evt_end                 0

.proc main_01
    if                      0, off_1102
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_1102:
    evt_end                 0

.proc main_02
    if                      0, off_1166
    ck                      1, 1, 1
    if                      0, off_1138
    ck                      29, 9, 1
    if                      0, off_1132
    ck                      4, 153, 1
    if                      0, off_112A
    ck                      8, 119, 0
    gosub                   3
    else                    0, off_112E

off_112A:
    gosub                   4
    nop
    nop

off_112E:
    else                    0, off_1134

off_1132:
    nop
    nop

off_1134:
    else                    0, off_1164

off_1138:
    if                      0, off_1162
    ck                      29, 10, 0
    if                      0, off_115E
    ck                      4, 153, 1
    if                      0, off_1156
    ck                      8, 119, 0
    gosub                   3
    else                    0, off_115A

off_1156:
    gosub                   4
    nop
    nop

off_115A:
    else                    0, off_1160

off_115E:
    nop
    nop

off_1160:
    endif
    nop

off_1162:
    nop
    nop

off_1164:
    endif
    nop

off_1166:
    evt_end                 0

.proc main_03
    sce_em_set              0, 0, ENEMY_ZOMBIEGIRL, 6, 0, 0, 44, 0, 71, -25766, 0, -12292, 3629, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 6, 0, 0, 42, 1, 72, -23546, 0, -13098, 6551, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 42, 1, 115, -25236, 0, -19817, 3809, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 0, 0, 42, 1, 116, -22263, 0, -10976, 1649, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 6, 0, 0, 42, 1, 183, -25799, 0, -10318, -943, 0, 0
    evt_end                 0

.proc main_04
    sce_em_set              0, 0, ENEMY_ZOMBIEGIRL, 0, 0, 0, 44, 0, 186, -14191, 0, -10263, 1747, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 42, 1, 187, -26136, 0, -10927, 281, 0, 0
    evt_end                 0

.proc main_05
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27070, -17967, 1060, 2600, -2935, 0, -17438, -2007, 1, 5, 8, 0, 0, 1, 0, 0, UNLOCKED, 0
    aot_set                 2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16439, -14352, 2710, 1090, 7, 0, 0, 0, 255, 255
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23368, -9310, 2000, 3200, 7390, 0, 944, -3136, 0, 12, 0, 0, 15, 4, 0, 0, UNLOCKED, 0
    aot_set                 4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27156, -26834, 1200, 3370, 7, 0, 0, 0, 255, 255
    sce_em_set              0, 0, ENEMY_IVYPURPLE, 17, 0, 0, 19, 0, 117, -25182, 0, -11737, 985, 0, 0
    sce_em_set              0, 1, ENEMY_IVYPURPLE, 17, 0, 0, 19, 0, 118, -23089, 0, -12566, 1773, 0, 0
    sce_em_set              0, 2, ENEMY_VINES, 0, 32, 0, 0, 0, 255, -19680, 0, -11273, 150, 0, 0
    evt_end                 0
    db                      0x48, 0x00
