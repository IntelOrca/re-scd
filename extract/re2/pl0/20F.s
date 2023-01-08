.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26353, -28245, 2410, 1900, -1814, 0, -12103, 1064, 1, 11, 0, 0, 5, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21366, -3968, 1800, 1800, 383, 0, 5858, 2088, 1, 17, 0, 0, 18, 5, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26815, -8608, 2500, 1800, -25044, 0, -13197, 960, 1, 16, 0, 0, 24, 1, 0, 147, ITEM_CLUBKEY, 0
    if                      0, off_17EA
    ck                      1, 6, 1
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, 0, 0, 0, 255
    sce_em_set              0, 0, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 135, -17564, 0, -11339, 3053, 0, 0
    sce_em_set              0, 1, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 136, -23651, 0, -23105, 2421, 0, 0
    sce_em_set              0, 2, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 138, -22376, 0, -25015, 3381, 0, 0
    evt_end                 0
    endif
    nop

off_17EA:
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -26416, 0, -22391, 0, -192, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27416, -22763, 1700, 1800, ITEM_HERBG, 1, 27, 5, 1
    if                      0, off_186C
    ck                      0, 25, 1
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -26416, 0, -23241, 0, -192, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27416, -23743, 1700, 980, ITEM_HERBG, 1, 218, 6, 1
    endif
    nop

off_186C:
    sce_espr3d_on           0, 4118, 0, 2176, -16200, -2350, -6706, 0, 1024, 0, 0
    sce_espr3d_on           0, 4118, 0, 2048, -16200, -2350, -6706, 0, 924, 0, 0
    evt_end                 0
    db                      0x08, 0x00

.main
.proc main_00
    if                      0, off_18CE
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_18CE:
    if                      0, off_1938
    ck                      1, 1, 0
    if                      0, off_191E
    ck                      0, 25, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 16, -25034, -1800, -2255, 0, -192, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27616, -3320, 2600, 1800, ITEM_SHOTGUNAMMO, 7, 143, 7, 0
    else                    0, off_1936

off_191E:
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27616, -3320, 2600, 1800, ITEM_SHOTGUNAMMO, 7, 143, 255, 1
    nop
    nop

off_1936:
    endif
    nop

off_1938:
    gosub                   10
    gosub                   2
    gosub                   3
    set                     20, 1, 0
    set                     20, 5, 0
    if                      0, off_195C
    ck                      29, 10, 1
    set                     5, 0, 1
    evt_exec                255, I_GOSUB, main_0D
    set                     20, 5, 1
    endif
    nop

off_195C:
    evt_end                 0

.proc main_01
    if                      0, off_197C
    ck                      29, 10, 0
    if                      0, off_197A
    cmp                     0, 2, CMP_EQ, 86
    evt_exec                255, I_GOSUB, main_04
    set                     20, 5, 1
    endif
    nop

off_197A:
    endif
    nop

off_197C:
    evt_end                 0

.proc main_02
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -16380, -1340, -26784, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -16182, -1340, -17550, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -16182, -1340, -13338, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -16182, -1340, -8100, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -18378, -1340, -1746, 0, -3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1A70
    ck                      29, 10, 0
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 32, 78
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 32, 78
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 32, 78
    work_set                WK_OBJECT, 3
    nop
    member_set              12, 32, 78
    work_set                WK_OBJECT, 4
    nop
    member_set              12, 32, 78
    else                    0, off_1AAE

off_1A70:
    if                      0, off_1AAC
    ck                      1, 1, 1
    if                      0, off_1AAA
    ck                      4, 153, 1
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 32, 78
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 32, 78
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 32, 78
    work_set                WK_OBJECT, 3
    nop
    member_set              12, 32, 78
    work_set                WK_OBJECT, 4
    nop
    member_set              12, 32, 78
    endif
    nop

off_1AAA:
    endif
    nop

off_1AAC:
    nop
    nop

off_1AAE:
    aot_set                 3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -16593, -7658, 1400, 3000, 10, 0, 86, 0, 1, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16593, -7658, 1400, 3000, 255, 0, I_GOSUB, main_0E, 0, 0
    if                      0, off_1B1A
    ck                      29, 10, 1
    if                      0, off_1B0C
    ck                      1, 1, 1
    if                      0, off_1AFC
    ck                      4, 153, 1
    aot_reset               4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 0, 255
    else                    0, off_1B08

off_1AFC:
    aot_reset               4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 0, 255
    nop
    nop

off_1B08:
    else                    0, off_1B18

off_1B0C:
    aot_reset               4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 0, 255
    nop
    nop

off_1B18:
    endif
    nop

off_1B1A:
    evt_end                 0

.proc main_03
    evt_end                 0

.proc main_04
    set                     1, 27, 1
    set                     2, 7, 1
    set                     2, 2, 1
    aot_reset               4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 0, 255
    sce_item_lost           86
    cut_chg                 7
    gosub                   15
    evt_next
    nop
    sleep                   10, 30
    set                     5, 0, 1
    evt_exec                255, I_GOSUB, main_0D
    set                     29, 10, 1
    nop_8b                  100, 60, 0, 0, 0
    nop_8a                  0, 6, 0, 18, 0
    evt_exec                255, I_GOSUB, main_09
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 5
    sce_espr3d_on           0, 1286, 0, 2496, -16270, -2190, -6900, 0, 1024, 0, 0
    se_on                   2, 269, 0, -16270, -2190, -6900
    sleep                   10, 10
    sce_espr3d_on           0, 1286, 0, 2496, -16270, -2190, -6900, 0, 1024, 0, 0
    se_on                   2, 269, 0, -16270, -2190, -6900
    sleep                   10, 5
    nop_8a                  0, 6, 0, 18, 0
    evt_exec                255, I_GOSUB, main_07
    sleep                   10, 20
    nop_8a                  0, 6, 0, 18, 0
    evt_exec                255, I_GOSUB, main_06
    sleep                   10, 18
    gosub                   5
    sleep                   10, 30
    cut_old
    nop
    gosub                   17
    evt_next
    set                     1, 27, 0
    set                     2, 2, 0
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_05
    work_set                WK_OBJECT, 0
    nop
    speed_set               1, 60
    speed_set               7, 30
    se_on                   2, 266, 4, 0, 0, 0
    member_set              12, 192, 239
    evt_next
    nop
    for                     0, off_1C10, 3
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1C10:
    for                     0, off_1C58, 4
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 145
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 150
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 155
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 150
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_1C58:
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 155
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             12, 16
    nop
    evt_end                 0

.proc main_06
    work_set                WK_OBJECT, 1
    nop
    speed_set               1, 60
    speed_set               7, 30
    se_on                   2, 266, 260, 0, 0, 0
    member_set              12, 192, 239
    evt_next
    nop
    for                     0, off_1CA2, 3
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1CA2:
    for                     0, off_1CEA, 4
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 145
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 150
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 155
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 150
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_1CEA:
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 155
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             12, 16
    nop
    evt_end                 0

.proc main_07
    work_set                WK_OBJECT, 2
    nop
    se_on                   2, 266, 516, 0, 0, 0
    speed_set               1, 60
    speed_set               7, 30
    member_set              12, 192, 239
    evt_next
    nop
    for                     0, off_1D34, 3
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1D34:
    for                     0, off_1D7C, 4
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 145
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 150
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 155
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 150
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_1D7C:
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 155
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             12, 16
    nop
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, 3
    nop
    speed_set               1, 60
    speed_set               7, 30
    se_on                   2, 266, 772, 0, 0, 0
    member_set              12, 192, 239
    evt_next
    nop
    for                     0, off_1DC6, 3
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1DC6:
    for                     0, off_1E0E, 4
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 145
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 150
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 155
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 150
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_1E0E:
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 155
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             12, 16
    nop
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, 4
    nop
    speed_set               1, 60
    speed_set               7, 30
    se_on                   2, 266, 1028, 0, 0, 0
    member_set              12, 192, 239
    evt_next
    nop
    for                     0, off_1E58, 3
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1E58:
    for                     0, off_1EA0, 4
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 145
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 150
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 155
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 150
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_1EA0:
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 155
    member_set2             12, 16
    nop
    evt_next
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             12, 16
    nop
    evt_end                 0

.proc main_0A
    if                      0, off_1EFA
    ck                      1, 1, 0
    if                      0, off_1EDA
    ck                      4, 193, 1
    gosub                   11
    set                     5, 2, 1
    else                    0, off_1EF6

off_1EDA:
    if                      0, off_1EF4
    ck                      4, 153, 1
    if                      0, off_1EF2
    ck                      29, 10, 0
    gosub                   11
    set                     5, 2, 1
    endif
    nop

off_1EF2:
    endif
    nop

off_1EF4:
    nop
    nop

off_1EF6:
    else                    0, off_1F7A

off_1EFA:
    if                      0, off_1F5C
    ck                      4, 153, 1
    if                      0, off_1F32
    ck                      8, 119, 0
    if                      0, off_1F1C
    ck                      29, 10, 1
    gosub                   11
    set                     5, 2, 1
    else                    0, off_1F2E

off_1F1C:
    if                      0, off_1F2C
    ck                      29, 9, 0
    gosub                   11
    set                     5, 2, 1
    endif
    nop

off_1F2C:
    nop
    nop

off_1F2E:
    else                    0, off_1F58

off_1F32:
    if                      0, off_1F44
    ck                      29, 10, 1
    gosub                   12
    set                     5, 2, 1
    else                    0, off_1F56

off_1F44:
    if                      0, off_1F54
    ck                      29, 9, 0
    gosub                   12
    set                     5, 2, 1
    endif
    nop

off_1F54:
    nop
    nop

off_1F56:
    nop
    nop

off_1F58:
    else                    0, off_1F78

off_1F5C:
    sce_em_set              0, 0, ENEMY_CEREBRUS, 4, 0, 0, 12, 0, 94, -17385, 0, -13499, 1056, 0, 0
    set                     5, 1, 1
    nop
    nop

off_1F78:
    nop
    nop

off_1F7A:
    evt_end                 0

.proc main_0B
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 0, 0, 0, 5, 3, 169, -17068, 0, -15352, 1696, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 6, 0, 0, 6, 3, 170, -25476, 0, -3534, 928, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 3, 171, -16697, 0, -6437, 2496, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 0, 0, 6, 3, 172, -23474, 0, -22515, 1721, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 3, 173, -17465, 0, -24677, 2304, 0, 0
    set                     4, 193, 1
    evt_end                 0

.proc main_0C
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 3, 175, -17959, 0, -18740, -944, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 6, 0, 0, 6, 3, 176, -25509, 0, -4100, 1072, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 3, 177, -22275, 0, -6055, 3145, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 3, 203, -18259, 0, -12029, -311, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 3, 204, -16783, 0, -16657, 128, 0, 0
    evt_end                 0

.proc main_0D
    set                     5, 0, 0
    evt_next
    nop

off_2066:
    while                   4, off_2112
    ck                      5, 0, 1
    if                      0, off_20DE
    cmp                     0, 29, CMP_GE, 0
    sce_espr3d_on           0, 1286, 0, 2496, -16270, -2190, -6900, 0, 1024, 0, 0
    se_on                   2, 269, 0, -16270, -2190, -6900
    sce_rnd
    nop
    if                      0, off_20C2
    cmp                     0, 29, CMP_GE, 0
    if                      0, off_20B8
    cmp                     0, 29, CMP_GE, 15000
    sleep                   10, 12
    else                    0, off_20BE

off_20B8:
    sleep                   10, 24
    nop
    nop

off_20BE:
    else                    0, off_20DC

off_20C2:
    if                      0, off_20D4
    cmp                     0, 29, CMP_LE, -15000
    sleep                   10, 5
    else                    0, off_20DA

off_20D4:
    sleep                   10, 30
    nop
    nop

off_20DA:
    nop
    nop

off_20DC:
    endif
    nop

off_20DE:
    for                     0, off_2110, 15
    if                      0, off_210C
    cmp                     0, 26, CMP_NE, 3
    if                      0, off_210A
    cmp                     0, 26, CMP_NE, 4
    if                      0, off_2108
    cmp                     0, 26, CMP_NE, 7
    set                     5, 0, 0
    endif
    nop

off_2108:
    endif
    nop

off_210A:
    endif
    nop

off_210C:
    evt_next
    nop
    next                    0

off_2110:
    ewhile                  0

off_2112:
    while                   4, off_211E
    ck                      1, 11, 0
    evt_next
    nop
    ewhile                  0

off_211E:
    if                      0, off_212E
    cmp                     0, 26, CMP_EQ, 3
    set                     5, 0, 1
    endif
    nop

off_212E:
    if                      0, off_213E
    cmp                     0, 26, CMP_EQ, 4
    set                     5, 0, 1
    endif
    nop

off_213E:
    evt_next
    nop
    goto                    255, 255, 0, off_2066 + 3
    evt_end                 0

.proc main_0E
    cut_chg                 8
    message_on              0, 2, 0, 0, 239
    evt_next
    cut_old
    cut_auto                1
    evt_end                 0

.proc main_0F
    work_set                WK_PLAYER, 0
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    if                      0, off_217A
    ck                      5, 1, 1
    work_set                WK_ENEMY, 0
    nop
    gosub                   16
    else                    0, off_21A4

off_217A:
    if                      0, off_21A2
    ck                      5, 2, 1
    work_set                WK_ENEMY, 0
    nop
    gosub                   16
    work_set                WK_ENEMY, 1
    nop
    gosub                   16
    work_set                WK_ENEMY, 2
    nop
    gosub                   16
    work_set                WK_ENEMY, 3
    nop
    gosub                   16
    work_set                WK_ENEMY, 4
    nop
    gosub                   16
    endif
    nop

off_21A2:
    nop
    nop

off_21A4:
    evt_end                 0

.proc main_10
    if                      0, off_21C0
    member_cmp              0, 0, 6, 1, 0
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    endif
    nop

off_21C0:
    evt_end                 0

.proc main_11
    work_set                WK_PLAYER, 0
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    if                      0, off_21E6
    ck                      5, 1, 1
    work_set                WK_ENEMY, 0
    nop
    gosub                   18
    else                    0, off_2210

off_21E6:
    if                      0, off_220E
    ck                      5, 2, 1
    work_set                WK_ENEMY, 0
    nop
    gosub                   18
    work_set                WK_ENEMY, 1
    nop
    gosub                   18
    work_set                WK_ENEMY, 2
    nop
    gosub                   18
    work_set                WK_ENEMY, 3
    nop
    gosub                   18
    work_set                WK_ENEMY, 4
    nop
    gosub                   18
    endif
    nop

off_220E:
    nop
    nop

off_2210:
    evt_end                 0

.proc main_12
    if                      0, off_222C
    member_cmp              0, 0, 6, 1, 0
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    endif
    nop

off_222C:
    evt_end                 0
    db                      0x18, 0x00
