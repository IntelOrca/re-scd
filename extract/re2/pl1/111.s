.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19547, -23166, 1600, 2300, -25979, -14400, -21180, 3920, 0, 23, 3, 8, 13, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_AUTO, 0, 0, 0, 0, 0, 0, 1425, 0, -21914, 3072, 1, 25, 1, 0, 51, 8, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    item_aot_set            2, SCE_ITEM, SAT_AUTO, 0, 0, 0, 0, 0, 0, ITEM_JAGUARSTONER, 1, 55, 9, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -22454, -30032, 1800, 1300, 255, 0, I_GOSUB, main_05, 0, 0
    aot_set                 5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -27647, -29066, 1340, 2100, 255, 0, I_GOSUB, main_16, 0, 0
    aot_set                 6, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 3, 0, -22454, -30032, 1800, 1300, 10, 0, 74, 0, 1, 0
    aot_set                 7, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -24054, -17172, 1800, 1800, 10, 0, 67, 0, 1, 0
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24054, -17172, 1800, 1800, 0, 0, 0, 0, 255, 255
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21023, -18894, 2500, 2200, 1, 0, 0, 0, 255, 255
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19582, -21069, 1800, 1840, 2, 0, 0, 0, 255, 255
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24908, -27676, 3600, 1800, 3, 0, 0, 0, 255, 255
    aot_set                 12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -24530, -30492, 3000, 1800, 4, 0, 0, 0, 255, 255
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -25800, -5450, -17850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 0, -24348, -6419, -29214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, -23053, -7324, -29214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 0, -22968, -5724, -29580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 0, -22320, -6372, -29730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 0, -21902, -6480, -29430, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 0, -21212, -5664, -29430, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 0, -21510, -26012, -29430, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 10, 0, -23160, -21962, -16146, 3072, 3072, 3072, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 0, -26336, -25400, -28546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           10, 0, 0, 0, 0, 0, 0, 10, 0, -27014, -5580, -28828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_22C8
    ck                      4, 74, 0
    gosub                   19
    else                    0, off_22CC

off_22C8:
    gosub                   20
    nop
    nop

off_22CC:
    if                      0, off_22E8
    ck                      4, 76, 1
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 20000
    member_set2             12, 16
    nop
    endif
    nop

off_22E8:
    if                      0, off_22F8
    ck                      4, 55, 0
    cut_be_set              5, 3, 0
    else                    0, off_230C

off_22F8:
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    gosub                   7
    gosub                   21
    evt_exec                255, I_GOSUB, main_0C
    nop
    nop

off_230C:
    gosub                   2
    gosub                   3
    set                     13, 3, 0
    set                     13, 4, 0
    set                     22, 1, 0
    evt_end                 0

.proc main_01
    if                      0, off_2332
    ck                      4, 76, 0
    cmp                     0, 2, CMP_EQ, 74
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_2332:
    if                      0, off_2342
    cmp                     0, 2, CMP_EQ, 67
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_2342:
    if                      0, off_2350
    ck                      1, 11, 1
    gosub                   2
    gosub                   3
    endif
    nop

off_2350:
    evt_end                 0

.proc main_02
    if                      0, off_2364
    ck                      4, 55, 0
    work_set                WK_OBJECT, 10
    nop
    member_set              12, 52, 234
    endif
    nop

off_2364:
    save                    4, -9
    switch                  26, off_2906
    case                    0, off_23F2, 0
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_23F2:
    case                    0, off_247A, 1
    work_set                WK_OBJECT, 10
    nop
    member_set              12, 20, 156
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_247A:
    case                    0, off_2500, 2
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_2500:
    case                    0, off_2586, 3
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_2586:
    case                    0, off_2606, 4
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_2606:
    case                    0, off_2684, 5
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_2684:
    case                    0, off_26FC, 6
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    break                   0

off_26FC:
    case                    0, off_2776, 7
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    break                   0

off_2776:
    case                    0, off_27FC, 8
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_27FC:
    case                    0, off_2882, 9
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_2882:
    case                    0, off_2904, 10
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 1
    nop
    calc2                   OP_AND, 16, 4
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    break                   0

off_2904:
    eswitch                 0

off_2906:
    evt_end                 0

.proc main_03
    switch                  26, off_29A8
    case                    0, off_291A, 0
    sce_bgm_control         1, 0, 1, 50, 65
    break                   0

off_291A:
    case                    0, off_2928, 1
    sce_bgm_control         1, 0, 1, 58, 72
    break                   0

off_2928:
    case                    0, off_2936, 2
    sce_bgm_control         1, 0, 1, 68, 72
    break                   0

off_2936:
    case                    0, off_2944, 3
    sce_bgm_control         1, 0, 1, 90, 40
    break                   0

off_2944:
    case                    0, off_2952, 4
    sce_bgm_control         1, 0, 1, 98, 76
    break                   0

off_2952:
    case                    0, off_2960, 5
    sce_bgm_control         1, 0, 1, 103, 72
    break                   0

off_2960:
    case                    0, off_296E, 6
    sce_bgm_control         1, 0, 1, 121, 65
    break                   0

off_296E:
    case                    0, off_297C, 7
    sce_bgm_control         1, 0, 1, 121, 65
    break                   0

off_297C:
    case                    0, off_298A, 8
    sce_bgm_control         1, 0, 1, 68, 40
    break                   0

off_298A:
    case                    0, off_2998, 9
    sce_bgm_control         1, 0, 1, 109, 31
    break                   0

off_2998:
    case                    0, off_29A6, 10
    sce_bgm_control         1, 0, 1, 109, 31
    break                   0

off_29A6:
    eswitch                 0

off_29A8:
    evt_end                 0

.proc main_04
    set                     4, 76, 1
    set                     2, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 24
    cut_chg                 7
    gosub                   2
    gosub                   3
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 20000
    member_set2             12, 16
    nop
    se_on                   2, 271, 1796, 0, 0, 0
    sce_item_lost           74
    sleep                   10, 30
    gosub                   6
    cut_chg                 6
    cut_auto                1
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2A04
    ck                      5, 0, 0
    plc_motion              1, 6, 128
    sleep                   10, 24
    endif
    nop

off_2A04:
    plc_ret
    set                     5, 0, 0
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_05
    set                     2, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 24
    cut_chg                 7
    gosub                   2
    gosub                   3
    gosub                   6
    cut_chg                 6
    cut_auto                1
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2A42
    ck                      5, 0, 0
    plc_motion              1, 6, 128
    sleep                   10, 24
    endif
    nop

off_2A42:
    plc_ret
    set                     5, 0, 0
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_06
    message_on              0, 5, 0, 255, 255
    evt_next
    nop
    if                      0, off_2B92
    ck                      11, 31, 0
    se_on                   2, 266, 1540, 0, 0, 0
    if                      0, off_2B78
    ck                      4, 76, 1
    ck                      4, 55, 0
    set                     4, 55, 1
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0C
    sleep                   10, 10
    se_on                   2, 268, 1540, 0, 0, 0
    sce_bgm_control         1, 0, 1, 110, 65
    sce_bgm_control         1, 1, 0, 128, 65
    if                      0, off_2ADE
    ck                      1, 0, 0
    if                      0, off_2AC8
    ck                      1, 1, 0
    sce_bgmtbl_set          0, 17, 1, 3071, 0
    sce_bgmtbl_set          0, 25, 2, 4863, 49152
    else                    0, off_2ADA

off_2AC8:
    sce_bgmtbl_set          0, 17, 1, 3071, 0
    sce_bgmtbl_set          0, 25, 2, 4863, 49152
    nop
    nop

off_2ADA:
    else                    0, off_2B06

off_2ADE:
    if                      0, off_2AF2
    ck                      1, 1, 0
    sce_bgmtbl_set          0, 17, 1, 3071, 0
    else                    0, off_2B04

off_2AF2:
    sce_bgmtbl_set          0, 17, 1, 3071, 0
    sce_bgmtbl_set          0, 23, 1, 65310, 64
    nop
    nop

off_2B04:
    nop
    nop

off_2B06:
    sleep                   10, 30
    cut_chg                 6
    set                     1, 27, 1
    set                     22, 1, 1
    sleep                   10, 50
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    sleep                   10, 10
    if                      0, off_2B3C
    ck                      1, 0, 0
    pos_set                 0, -22227, -5400, -28492
    member_set              15, 240, 4
    else                    0, off_2B4A

off_2B3C:
    pos_set                 0, -21956, -5400, -28448
    member_set              15, 240, 4
    nop
    nop

off_2B4A:
    cut_chg                 10
    sleep                   10, 30
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 32, 1984, 128
    sleep                   10, 90
    set                     22, 1, 0
    set                     5, 0, 1
    set                     1, 27, 0
    else                    0, off_2B90

off_2B78:
    evt_exec                9, I_GOSUB, main_0B
    sleep                   10, 90
    evt_kill                9
    sleep                   10, 30
    work_set                WK_OBJECT, 6
    nop
    member_set              16, 0, 0
    nop
    nop

off_2B90:
    endif
    nop

off_2B92:
    evt_end                 0

.proc main_07
    if                      0, off_2BE8
    ck                      8, 55, 0
    if                      0, off_2BC6
    ck                      1, 0, 0
    aot_reset               2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 61, 0, 1, 0, 55, 0
    work_set                WK_OBJECT, 9
    nop
    pos_set                 0, -29136, -7150, -27896
    dir_set                 0, -3008, -4032, 1152
    else                    0, off_2BE6

off_2BC6:
    aot_reset               2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 57, 0, 1, 0, 55, 0
    work_set                WK_OBJECT, 9
    nop
    pos_set                 0, -29136, -7150, -27896
    dir_set                 0, -3008, -4032, 1152
    nop
    nop

off_2BE6:
    endif
    nop

off_2BE8:
    evt_end                 0

.proc main_08
    gosub                   7
    sce_bgm_control         1, 0, 1, 80, 31
    work_set                WK_OBJECT, 10
    nop
    speed_set               0, -10
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  100, 20, 0, 0, 0
    se_on                   2, 272, 2564, 0, 0, 0
    for                     0, off_2C1C, 20
    add_speed
    evt_next
    next                    0

off_2C1C:
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_09
    cut_chg                 9
    speed_set               0, 0
    speed_set               2, 45
    sleep                   10, 30
    nop_8b                  140, 40, 0, 0, 0
    nop_8a                  0, 4, 0, 39, 0
    nop_8b                  200, 8, 0, 39, 0
    se_on                   2, 273, 2564, 0, 0, 0
    for                     0, off_2C5A, 40
    add_speed
    evt_next
    next                    0

off_2C5A:
    gosub                   21
    sce_bgm_control         1, 0, 1, 121, 65
    evt_end                 0

.proc main_09
    evt_exec                255, I_GOSUB, main_0A
    sleep                   10, 2
    evt_exec                255, I_GOSUB, main_0A
    sleep                   10, 18
    sce_espr_on             0, 25, 0, 768, -26874, -8380, -28228, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 1024, -26874, -8380, -27928, 0
    sce_espr_on             0, 25, 0, 768, -26874, -8580, -27228, 0
    sleep                   10, 10
    sce_espr_on             0, 25, 0, 1024, -26874, -8380, -27828, 0
    sleep                   10, 13
    sce_espr_on             0, 25, 0, 768, -26874, -8380, -27528, 0
    sce_espr_on             0, 25, 0, 1024, -26874, -8680, -27728, 0
    sleep                   10, 18
    sce_espr_on             0, 25, 0, 768, -26874, -8380, -27228, 0
    evt_end                 0

.proc main_0A
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 1024, -26874, -8380, -28828, 0
    sce_espr_on             0, 25, 0, 768, -26874, -8580, -28578, 0
    evt_next
    nop
    sce_espr_on             0, 25, 0, 896, -26874, -8280, -28478, 0
    sce_espr_on             0, 25, 0, 896, -26874, -8480, -27478, 0
    evt_next
    nop
    sce_espr_on             0, 25, 0, 768, -26874, -8380, -27028, 0
    sce_espr_on             0, 25, 0, 640, -26874, -8280, -28678, 0
    evt_next
    nop
    sce_espr_on             0, 25, 0, 896, -26874, -8180, -27928, 0
    sce_espr_on             0, 25, 0, 1024, -26874, -8680, -27878, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 768, -26874, -8580, -27628, 0
    sce_espr_on             0, 25, 0, 768, -26874, -8280, -27478, 0
    evt_next
    nop
    sce_espr_on             0, 25, 0, 896, -26874, -8380, -28528, 0
    sce_espr_on             0, 25, 0, 1152, -26874, -8480, -28078, 0
    evt_next
    nop
    sce_espr_on             0, 25, 0, 768, -26874, -8580, -27828, 0
    sce_espr_on             0, 25, 0, 1024, -26874, -8380, -27228, 0
    sce_espr_on             0, 25, 0, 896, -26874, -8180, -27178, 0
    evt_end                 0

.proc main_0B
    sleep                   10, 10
    se_on                   2, 267, 1540, 0, 0, 0
    work_set                WK_OBJECT, 6
    nop
    speed_set               5, 12
    add_speed
    evt_next

off_2E14:
    goto                    255, 255, 0, off_2E14 + 2
    evt_end                 0

.proc main_0C
    sleep                   10, 10
    work_set                WK_OBJECT, 1
    nop

off_2E24:
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 8
    member_set2             16, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 16
    member_set2             16, 16
    nop
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 16
    member_set2             16, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 24
    member_set2             16, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 9
    member_set2             16, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 12
    member_set2             16, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 18
    member_set2             16, 16
    nop
    evt_next
    nop
    goto                    255, 255, 0, off_2E24
    evt_end                 0

.proc main_0D
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, -22961, -1915, -16573
    member_set              15, 100, 12
    work_set                WK_PLAYER, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    if                      0, off_2EE6
    ck                      1, 0, 0
    pos_set                 0, -24559, 108, -17100
    else                    0, off_2EF0

off_2EE6:
    pos_set                 0, -24307, 108, -17054
    nop
    nop

off_2EF0:
    member_set              15, 0, 12
    evt_next
    nop
    if                      0, off_2F0E
    ck                      4, 74, 0
    set                     4, 74, 1
    evt_exec                255, I_GOSUB, main_0E
    evt_exec                8, I_GOSUB, main_0F
    else                    0, off_2F1C

off_2F0E:
    set                     4, 74, 0
    evt_exec                255, I_GOSUB, main_10
    evt_exec                8, I_GOSUB, main_11
    nop
    nop

off_2F1C:
    sleep                   10, 138
    evt_kill                9
    evt_kill                8
    sce_fade_set            2, 2, 7, 0, 24
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -22805, 0, -17296
    member_set              15, 0, 12
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             0, 16
    nop
    plc_ret
    nop
    sce_fade_set            2, 2, 7, 0, 232
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, -22961, -21915, -16573
    member_set              15, 100, 12
    cut_auto                1
    sce_item_lost           67
    set                     1, 16, 1
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_0E
    nop_8b                  100, 128, 0, 0, 0
    se_on                   2, 270, 4, 0, 0, 0
    work_set                WK_OBJECT, 0
    nop
    speed_set               3, 4
    for                     0, off_2F9A, 64
    add_speed
    evt_next
    next                    0

off_2F9A:
    cut_chg                 8
    nop_8a                  0, 5, 0, 62, 0
    nop_8b                  200, 2, 0, 62, 0
    nop_8b                  150, 8, 0, 64, 0
    for                     0, off_2FB8, 64
    add_speed
    evt_next
    next                    0

off_2FB8:
    cut_chg                 0
    gosub                   20
    evt_end                 0

.proc main_0F
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 69
    nop
    evt_exec                9, I_GOSUB, main_12
    work_set                WK_OBJECT, 8
    nop

off_2FCE:
    member_set              15, 100, 12
    evt_next
    nop
    member_set              15, 91, 12
    evt_next
    nop
    member_set              15, 82, 12
    evt_next
    nop
    member_set              15, 53, 12
    evt_next
    nop
    member_set              15, 1, 12
    evt_next
    nop
    member_set              15, 207, 11
    evt_next
    nop
    member_set              15, 151, 11
    evt_next
    nop
    member_set              15, 83, 11
    evt_next
    nop
    member_set              15, 244, 10
    evt_next
    nop
    member_set              15, 155, 10
    evt_next
    nop
    member_set              15, 88, 10
    evt_next
    nop
    member_set              15, 212, 9
    evt_next
    nop
    member_set              15, 54, 9
    evt_next
    nop
    member_set              15, 190, 8
    evt_next
    nop
    member_set              15, 80, 8
    evt_next
    nop
    member_set              15, 172, 7
    evt_next
    nop
    member_set              15, 30, 7
    evt_next
    nop
    member_set              15, 34, 6
    evt_next
    nop
    member_set              15, 71, 5
    evt_next
    nop
    member_set              15, 149, 4
    evt_next
    nop
    member_set              15, 35, 4
    evt_next
    nop
    member_set              15, 134, 3
    evt_next
    nop
    member_set              15, 206, 2
    evt_next
    nop
    member_set              15, 150, 1
    evt_next
    nop
    member_set              15, 74, 0
    evt_next
    nop
    member_set              15, 194, 255
    evt_next
    nop
    member_set              15, 63, 255
    evt_next
    nop
    member_set              15, 196, 254
    evt_next
    nop
    member_set              15, 89, 254
    evt_next
    nop
    member_set              15, 155, 253
    evt_next
    nop
    member_set              15, 64, 253
    evt_next
    nop
    member_set              15, 252, 252
    evt_next
    nop
    member_set              15, 197, 252
    evt_next
    nop
    member_set              15, 191, 252
    evt_next
    nop
    member_set              15, 185, 252
    evt_next
    nop
    member_set              15, 182, 252
    evt_next
    nop
    member_set              15, 165, 252
    evt_next
    nop
    member_set              15, 160, 252
    evt_next
    nop
    member_set              15, 145, 252
    evt_next
    nop
    member_set              15, 100, 12
    evt_next
    nop
    goto                    255, 255, 0, off_2FCE + 3
    evt_end                 0

.proc main_10
    work_set                WK_OBJECT, 0
    nop
    speed_set               3, -4
    cut_chg                 8
    for                     0, off_30DA, 64
    add_speed
    evt_next
    next                    0

off_30DA:
    cut_chg                 0
    for                     0, off_30E6, 64
    add_speed
    evt_next
    next                    0

off_30E6:
    gosub                   19
    evt_end                 0

.proc main_11
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 197
    nop
    evt_exec                9, I_GOSUB, main_12
    work_set                WK_OBJECT, 8
    nop

off_30FA:
    member_set              15, 100, 12
    evt_next
    nop
    member_set              15, 145, 252
    evt_next
    nop
    member_set              15, 160, 252
    evt_next
    nop
    member_set              15, 165, 252
    evt_next
    nop
    member_set              15, 182, 252
    evt_next
    nop
    member_set              15, 185, 252
    evt_next
    nop
    member_set              15, 191, 252
    evt_next
    nop
    member_set              15, 197, 252
    evt_next
    nop
    member_set              15, 252, 252
    evt_next
    nop
    member_set              15, 64, 253
    evt_next
    nop
    member_set              15, 155, 253
    evt_next
    nop
    member_set              15, 89, 254
    evt_next
    nop
    member_set              15, 196, 254
    evt_next
    nop
    member_set              15, 63, 255
    evt_next
    nop
    member_set              15, 194, 255
    evt_next
    nop
    member_set              15, 74, 0
    evt_next
    nop
    member_set              15, 150, 1
    evt_next
    nop
    member_set              15, 206, 2
    evt_next
    nop
    member_set              15, 134, 3
    evt_next
    nop
    member_set              15, 35, 4
    evt_next
    nop
    member_set              15, 149, 4
    evt_next
    nop
    member_set              15, 71, 5
    evt_next
    nop
    member_set              15, 34, 6
    evt_next
    nop
    member_set              15, 30, 7
    evt_next
    nop
    member_set              15, 172, 7
    evt_next
    nop
    member_set              15, 80, 8
    evt_next
    nop
    member_set              15, 190, 8
    evt_next
    nop
    member_set              15, 54, 9
    evt_next
    nop
    member_set              15, 212, 9
    evt_next
    nop
    member_set              15, 88, 10
    evt_next
    nop
    member_set              15, 155, 10
    evt_next
    nop
    member_set              15, 244, 10
    evt_next
    nop
    member_set              15, 83, 11
    evt_next
    nop
    member_set              15, 151, 11
    evt_next
    nop
    member_set              15, 207, 11
    evt_next
    nop
    member_set              15, 1, 12
    evt_next
    nop
    member_set              15, 53, 12
    evt_next
    nop
    member_set              15, 82, 12
    evt_next
    nop
    member_set              15, 91, 12
    evt_next
    nop
    member_set              15, 100, 12
    evt_next
    nop
    goto                    255, 255, 0, off_30FA + 3
    evt_end                 0

.proc main_12

off_31F2:
    se_on                   2, 269, 2052, 0, 0, 0
    for                     0, off_3208, 40
    evt_next
    nop
    next                    0

off_3208:
    goto                    255, 255, 0, off_31F2 + 4
    evt_end                 0

.proc main_13
    work_set                WK_OBJECT, 0
    nop
    member_set              14, 0, 254
    sca_id_set              3, 0, 0
    sca_id_set              18, 0, 0
    sca_id_set              10, 16, 252
    cut_be_set              2, 2, 0
    evt_end                 0

.proc main_14
    work_set                WK_OBJECT, 0
    nop
    member_set              14, 0, 0
    sca_id_set              3, 16, 252
    sca_id_set              18, 16, 252
    sca_id_set              10, 0, 0
    cut_be_set              2, 2, 1
    evt_end                 0

.proc main_15
    work_set                WK_OBJECT, 10
    nop
    pos_set                 0, -32000, -32000, -32000
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    cut_be_set              5, 3, 1
    evt_end                 0

.proc main_16
    set                     2, 7, 1
    if                      0, off_327C
    ck                      4, 55, 0
    message_on              0, 6, 0, 255, 255
    evt_next
    nop
    else                    0, off_32D0

off_327C:
    if                      0, off_32AE
    ck                      8, 55, 0
    aot_on                  2
    evt_next
    nop
    if                      0, off_32AA
    ck                      8, 55, 1
    ck                      1, 0, 0
    message_on              0, 7, 0, 255, 255
    evt_next
    nop
    if                      0, off_32A8
    ck                      11, 31, 0
    aot_on                  1
    endif
    nop

off_32A8:
    endif
    nop

off_32AA:
    else                    0, off_32CE

off_32AE:
    if                      0, off_32CC
    ck                      1, 0, 0
    message_on              0, 7, 0, 255, 255
    evt_next
    nop
    if                      0, off_32CA
    ck                      11, 31, 0
    aot_on                  1
    endif
    nop

off_32CA:
    endif
    nop

off_32CC:
    nop
    nop

off_32CE:
    nop
    nop

off_32D0:
    set                     2, 7, 0
    evt_end                 0
    db                      0x18, 0x00
