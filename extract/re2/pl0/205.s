.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27080, -27588, 2200, 1200, -16800, 0, 2700, 1024, 1, 4, 5, 0, 9, 0, 0, 0, UNLOCKED, 0
    if                      0, off_175E
    ck                      1, 6, 1
    aot_set                 1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18980, -12938, 3600, 1800, 7, 0, 0, 0, 255, 255
    else                    0, off_1780

off_175E:
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18980, -12938, 3600, 1800, -22150, 0, -8680, 1024, 1, 6, 0, 0, 17, 2, 0, 0, UNLOCKED, 0
    nop
    nop

off_1780:
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2370, -19038, 1800, 2400, -25640, 0, -16590, 0, 1, 7, 1, 0, 0, 0, 0, 0, UNLOCKED, 0
    evt_end                 0
    db                      0x9C, 0x1D

.main
.proc main_00
    if                      0, off_1810
    ck                      1, 6, 1
    sce_em_set              0, 0, ENEMY_VINES, 0, 32, 0, 0, 0, 255, -27150, -2180, -12050, 36, 0, 0
    sce_em_set              0, 1, ENEMY_IVY, 1, 0, 0, 19, 0, 93, -7366, 0, -15394, 2524, 0, 0
    sce_em_set              0, 2, ENEMY_IVY, 1, 0, 0, 19, 0, 94, -19289, 0, -8489, 2024, 0, 0
    evt_end                 0
    endif
    nop

off_1810:
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -17300, -1800, -7000, 1024, 192, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 49152, 0, 10, 16, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -17300, -3400, -7000, 1024, -256, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 49664, 0, 10, 16, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -19650, -3000, -7000, 1024, -192, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 50176, 0, 10, 16, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -19650, -2200, -7000, 1024, -256, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 50688, 0, 10, 16, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -27868, -13500, 4000, 3200, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -14500, -10100, 3300, 3400, 255, 0, I_GOSUB, main_04, 0, 0
    if                      0, off_1B04
    ck                      1, 1, 0
    sce_em_set              0, 0, ENEMY_ZOMBIEARMS, 16, 0, 0, 17, 0, 255, -27150, -2580, -12350, 0, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIEARMS, 1, 0, 0, 17, 0, 255, -27200, -2430, -13820, 0, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIEARMS, 0, 0, 0, 17, 0, 255, -27150, -2180, -12050, 0, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEARMS, 1, 0, 0, 17, 0, 255, -27200, -1930, -13320, 0, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIEARMS, 0, 0, 0, 17, 0, 255, -27130, -2200, -14000, 0, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIEARMS, 16, 0, 0, 17, 0, 255, -12100, -2480, -7000, 1024, 0, 0
    sce_em_set              0, 6, ENEMY_ZOMBIEARMS, 1, 0, 0, 17, 0, 255, -12500, -2000, -7000, 1024, 0, 0
    sce_em_set              0, 7, ENEMY_ZOMBIEARMS, 0, 0, 0, 17, 0, 255, -12440, -2700, -7000, 1024, 0, 0
    sce_em_set              0, 8, ENEMY_ZOMBIEARMS, 1, 0, 0, 17, 0, 255, -12230, -2540, -7000, 1024, 0, 0
    sce_em_set              0, 9, ENEMY_ZOMBIEARMS, 0, 0, 0, 17, 0, 255, -12450, -2160, -7000, 1024, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 5
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 6
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 7
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 8
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 9
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    else                    0, off_1C0A

off_1B04:
    set                     4, 48, 0
    if                      0, off_1B9C
    ck                      4, 153, 1
    ck                      29, 10, 0
    if                      0, off_1B78
    ck                      8, 119, 0
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 0, 0, 0, 42, 0, 190, -18892, 0, -9122, 3416, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 0, 0, 0, 43, 0, 207, -9172, 0, -10915, 3936, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIECOP, 0, 0, 0, 42, 0, 192, -25495, 0, -12684, 1023, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIECOP, 0, 0, 0, 43, 0, 193, -6562, 0, -15261, 1264, 0, 0
    else                    0, off_1B90

off_1B78:
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 0, 0, 0, 5, 0, 194, -18892, 0, -9122, 3416, 0, 0
    nop
    nop

off_1B90:
    set                     4, 41, 1
    evt_exec                255, I_GOSUB, main_0C
    else                    0, off_1C08

off_1B9C:
    if                      0, off_1BD4
    ck                      4, 41, 0
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 10, 64, 0, 5, 0, 69, -17730, 0, -6300, 924, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 10, 64, 0, 5, 0, 70, -19990, 0, -6300, 1024, 0, 0
    else                    0, off_1C06

off_1BD4:
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 0, 0, 0, 5, 0, 69, -19130, 0, -8220, 1592, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 0, 0, 0, 5, 0, 70, -14460, 0, -8700, 3200, 0, 0
    evt_exec                255, I_GOSUB, main_0C
    nop
    nop

off_1C06:
    nop
    nop

off_1C08:
    nop
    nop

off_1C0A:
    if                      0, off_1C3E
    ck                      4, 48, 1
    if                      0, off_1C26
    ck                      4, 46, 1
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1C26:
    if                      0, off_1C3A
    ck                      4, 47, 1
    aot_reset               4, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1C3A:
    else                    0, off_1C54

off_1C3E:
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    aot_reset               4, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1C54:
    aot_set                 5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27500, -24300, 1800, 1800, 0, 0, 0, 0, 255, 255
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9700, -7700, 1800, 1800, 3, 0, 0, 0, 255, 255
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2420, -16400, 1800, 1800, 4, 0, 0, 0, 255, 255
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5600, -14600, 1800, 1800, 5, 0, 0, 0, 255, 255
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11400, -18400, 1800, 1800, 6, 0, 0, 0, 255, 255
    evt_end                 0

.proc main_01
    if                      0, off_1CE4
    ck                      1, 1, 1
    if                      0, off_1CE0
    ck                      4, 41, 0
    cmp                     0, 27, CMP_EQ, 516
    cmp                     0, 26, CMP_EQ, 3
    evt_exec                255, I_GOSUB, main_05
    set                     4, 41, 1
    endif
    nop

off_1CE0:
    else                    0, off_1D36

off_1CE4:
    if                      0, off_1D0C
    cmp                     0, 26, CMP_EQ, 9
    ck                      5, 20, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_1D0A
    member_cmp              0, 2, 0, 5, 0
    set                     5, 20, 1
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_1D0A:
    endif
    nop

off_1D0C:
    if                      0, off_1D34
    cmp                     0, 26, CMP_EQ, 10
    ck                      5, 21, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_1D32
    member_cmp              0, 2, 0, 5, 0
    set                     5, 21, 1
    evt_exec                255, I_GOSUB, main_0E
    endif
    nop

off_1D32:
    endif
    nop

off_1D34:
    nop
    nop

off_1D36:
    evt_end                 0

.proc main_02
    message_on              0, 0, 0, 255, 255
    evt_end                 0

.proc main_03
    cut_chg                 9
    nop_8a                  0, 10, 0, 0, 0
    nop_8b                  180, 2, 0, 0, 0
    nop_8b                  250, 6, 0, 2, 0
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    set                     4, 46, 1
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    sleep                   10, 1
    se_on                   2, 10, 0, 10267, -1800, -13158
    cut_auto                1
    evt_end                 0

.proc main_04
    cut_chg                 10
    nop_8a                  0, 10, 0, 0, 0
    nop_8b                  180, 2, 0, 0, 0
    nop_8b                  250, 6, 0, 2, 0
    aot_reset               4, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    set                     4, 47, 1
    work_set                WK_ENEMY, 5
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 6
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 7
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 8
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 9
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    sleep                   10, 1
    se_on                   2, 10, 0, 10267, -1800, -13158
    cut_auto                1
    evt_end                 0

.proc main_05
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    se_on                   2, 11, 0, 10267, -1800, -13158
    evt_exec                255, I_GOSUB, main_06
    evt_exec                255, I_GOSUB, main_07
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    sleep                   10, 10
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    se_on                   2, 11, 0, 10267, -1800, -13158
    evt_exec                255, I_GOSUB, main_09
    evt_exec                255, I_GOSUB, main_0A
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 1, 0
    evt_end                 0

.proc main_06
    work_set                WK_OBJECT, 0
    nop
    speed_set               2, -110
    speed_set               1, -20
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    for                     0, off_1EE6, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1EE6:
    speed_set               2, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    while                   6, off_1F06
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1F06:
    member_set              12, 200, 0
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_1F32
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1F32:
    member_set              14, 0, 248
    evt_end                 0

.proc main_07
    work_set                WK_OBJECT, 3
    nop
    super_reset             0, 1024, -256, 1024
    evt_exec                255, I_GOSUB, main_08
    work_set                WK_OBJECT, 2
    nop
    speed_set               2, -110
    speed_set               1, -20
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    for                     0, off_1F6C, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1F6C:
    speed_set               2, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    while                   6, off_1F8C
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1F8C:
    member_set              12, 200, 0
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_1FB8
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1FB8:
    member_set              14, 0, 248
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, 3
    nop
    speed_set               2, -100
    speed_set               1, -10
    speed_set               0, -10
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    speed_set               4, 0
    speed_set               10, -10
    for                     0, off_1FEE, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1FEE:
    speed_set               2, -50
    speed_set               0, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    speed_set               4, 0
    speed_set               10, -21
    while                   6, off_201A
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_201A:
    member_set              12, 200, 0
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_2046
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_2046:
    member_set              14, 0, 248
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, 5
    nop
    super_reset             0, 1024, -192, 1024
    work_set                WK_OBJECT, 4
    nop
    speed_set               2, -110
    speed_set               1, -20
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    for                     0, off_207C, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_207C:
    speed_set               2, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    while                   6, off_209C
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_209C:
    member_set              12, 200, 0
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_20C8
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_20C8:
    member_set              14, 0, 248
    evt_end                 0

.proc main_0A
    work_set                WK_OBJECT, 7
    nop
    super_reset             0, 1024, -256, 1024
    evt_exec                255, I_GOSUB, main_0B
    work_set                WK_OBJECT, 6
    nop
    speed_set               2, -110
    speed_set               1, -20
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    for                     0, off_2102, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2102:
    speed_set               2, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    while                   6, off_2122
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_2122:
    member_set              12, 200, 0
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_214E
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_214E:
    member_set              14, 0, 248
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, 7
    nop
    speed_set               2, -100
    speed_set               1, -10
    speed_set               0, -10
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    speed_set               4, 0
    speed_set               10, -10
    for                     0, off_2184, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2184:
    speed_set               2, -50
    speed_set               0, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    speed_set               4, 0
    speed_set               10, -21
    while                   6, off_21B0
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_21B0:
    member_set              12, 200, 0
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_21DC
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_21DC:
    member_set              14, 0, 248
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 200, 0
    member_set              13, 156, 220
    member_set              14, 0, 248
    work_set                WK_OBJECT, 3
    nop
    super_reset             0, 1024, -256, 1024
    member_set              11, 109, 182
    member_set              12, 200, 0
    member_set              13, 166, 220
    member_set              14, 0, 248
    member_set              15, 92, 247
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 200, 0
    member_set              13, 162, 219
    member_set              14, 0, 248
    work_set                WK_OBJECT, 5
    nop
    super_reset             0, 1024, -192, 1024
    member_set              11, 129, 175
    member_set              12, 106, 245
    member_set              13, 168, 228
    member_set              14, 0, 4
    member_set              15, 64, 255
    member_set              16, 0, 4
    work_set                WK_OBJECT, 4
    nop
    member_set              12, 200, 0
    member_set              13, 212, 219
    member_set              14, 0, 248
    work_set                WK_OBJECT, 7
    nop
    super_reset             0, 1024, -256, 1024
    member_set              11, 8, 174
    member_set              12, 200, 0
    member_set              13, 110, 221
    member_set              14, 0, 248
    member_set              15, 126, 249
    work_set                WK_OBJECT, 6
    nop
    member_set              12, 200, 0
    member_set              13, 106, 220
    member_set              14, 0, 248
    sleep                   10, 2
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 232, 3
    evt_end                 0

.proc main_0D
    sleep                   10, 10
    cut_chg                 2
    cut_auto                1
    evt_end                 0

.proc main_0E
    sleep                   10, 10
    cut_chg                 5
    cut_auto                1
    evt_end                 0
