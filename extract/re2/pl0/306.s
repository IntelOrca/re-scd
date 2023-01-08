.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -17187, -28473, 1720, 1530, -7483, -5400, -9953, 1100, 2, 5, 2, 3, 7, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    mizu_div_set            4
    obj_model_set           3, 1, 130, 4, 4, 0, 9, 10, 26, -25200, -32000, -27000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 1, 130, 4, 4, 0, 10, 10, 26, -19800, -32000, -18000, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 1, 130, 4, 4, 0, 10, 10, 26, -16200, -32000, -21550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           0, 2, 0, 0, 0, 0, 0, 384, 0, -20617, 0, -24247, 0, 0, 0, 0, -900, 0, 900, 132, 3, 132, 3
    obj_model_set           1, 2, 0, 0, 0, 0, 0, 384, 0, -21837, 0, -26063, 0, 0, 0, 0, -900, 0, 900, 132, 3, 132, 3
    obj_model_set           2, 2, 0, 0, 0, 0, 0, 384, 0, -24309, 0, -21422, 0, 0, 0, 0, -900, 0, 900, 132, 3, 132, 3
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -26500, -7600, -18300, 0, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -16155, -21705, 1800, 1800, 3, 0, 0, 0, 255, 255
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -17109, -21172, 1180, 1160, 255, 0, I_GOSUB, main_02, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -27348, -19165, 1900, 2200, ITEM_CLUBKEY, 3, 119, 6, 192
    if                      0, off_1FCE
    ck                      8, 137, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 16, -13800, -7200, -25250, 0, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -14754, -25743, 1800, 1800, 255, 0, I_GOSUB, main_16, 0, 0
    endif
    nop

off_1FCE:
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -17187, -28473, 1720, 1530, 255, 0, I_GOSUB, main_19, 0, 0
    aot_reset               0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 197, 226, 232, 234, 31, 217
    sca_id_set              21, 0, 0
    sca_id_set              27, 0, 0
    sca_id_set              28, 0, 0
    sca_id_set              29, 0, 0
    sca_id_set              30, 0, 0
    if                      0, off_208E
    ck                      4, 146, 1
    sca_id_set              11, 0, 0
    sca_id_set              22, 0, 152
    if                      0, off_2034
    ck                      4, 147, 0
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 240, 241
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 240, 241
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 240, 241
    else                    0, off_206A

off_2034:
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -20617, -3600, -26081
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -22428, -3600, -26081
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -24259, -3600, -26081
    sca_id_set              20, 0, 0
    sca_id_set              21, 0, 158
    sca_id_set              27, 0, 0
    sca_id_set              28, 0, 0
    nop
    nop

off_206A:
    work_set                WK_OBJECT, 3
    nop
    member_set              12, 48, 238
    work_set                WK_OBJECT, 4
    nop
    member_set              12, 48, 238
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -16200, -4560, -21550
    set                     14, 4, 1
    else                    0, off_20A4

off_208E:
    sce_bgm_control         0, 4, 1, 0, 0
    set                     14, 4, 0
    aot_reset               5, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 255, 255
    nop
    nop

off_20A4:
    if                      0, off_20DC
    ck                      4, 146, 0
    sce_espr3d_on           0, 5142, 0, 1280, -16700, -7500, -20000, 0, 0, 0, 0
    sce_espr3d_on           0, 1046, 0, 1280, -16700, -7500, -20150, 0, 0, 0, 0
    else                    0, off_210A

off_20DC:
    sce_espr3d_on           0, 1046, 0, 1280, -16700, -7500, -20000, 0, 0, 0, 0
    sce_espr3d_on           0, 5142, 0, 1280, -16700, -7500, -20150, 0, 0, 0, 0
    nop
    nop

off_210A:
    sce_bgm_control         0, 0, 2, 0, 0
    save                    4, 0
    save                    5, 0
    save                    6, 0
    save                    7, 0
    save                    8, 0
    evt_end                 0

.proc main_01
    gosub                   23
    evt_end                 0

.proc main_02
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    if                      0, off_2190
    ck                      11, 31, 0
    set                     2, 7, 1
    set                     1, 27, 1
    se_on                   2, 10, 0, -16800, -7200, -20500
    if                      0, off_215E
    ck                      4, 146, 0
    set                     14, 4, 1
    else                    0, off_2164

off_215E:
    set                     14, 4, 0
    nop
    nop

off_2164:
    gosub                   24
    sleep                   10, 10
    gosub                   3
    if                      0, off_217C
    ck                      4, 146, 0
    set                     4, 146, 1
    else                    0, off_2186

off_217C:
    set                     4, 146, 0
    set                     4, 147, 0
    nop
    nop

off_2186:
    set                     2, 7, 0
    set                     1, 27, 0
    endif
    nop

off_2190:
    evt_end                 0

.proc main_03
    evt_exec                255, I_GOSUB, main_04
    evt_exec                255, I_GOSUB, main_05
    if                      0, off_21B2
    ck                      4, 146, 0
    sca_id_set              11, 0, 0
    sca_id_set              22, 0, 152
    evt_exec                255, I_GOSUB, main_1A
    else                    0, off_21B8

off_21B2:
    evt_exec                255, I_GOSUB, main_1B
    nop
    nop

off_21B8:
    cut_chg                 5
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_06
    evt_exec                255, I_GOSUB, main_07
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 123
    if                      0, off_21DE
    ck                      4, 146, 0
    sce_bgm_control         0, 3, 1, 60, 64
    else                    0, off_21E6

off_21DE:
    sce_bgm_control         0, 4, 1, 0, 0
    nop
    nop

off_21E6:
    sleep                   10, 123
    if                      0, off_221C
    ck                      4, 146, 0
    sleep                   10, 10
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -16200, -4560, -21550
    gosub                   10
    sca_id_set              11, 0, 0
    sca_id_set              22, 0, 152
    evt_next
    cut_old
    aot_reset               5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 255, 255
    else                    0, off_2266

off_221C:
    cut_old
    nop
    aot_reset               5, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 255, 255
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -25200, -32000, -27000
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -19800, -18000, -21100
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -16200, -32000, -21550
    sca_id_set              11, 128, 220
    sca_id_set              20, 0, 158
    sca_id_set              21, 0, 158
    sca_id_set              22, 0, 0
    sca_id_set              27, 0, 0
    sca_id_set              28, 0, 0
    nop
    nop

off_2266:
    evt_end                 0

.proc main_04
    work_set                WK_OBJECT, 3
    nop
    if                      0, off_2284
    ck                      4, 146, 0
    pos_set                 0, -25200, 0, -27000
    speed_set               1, -25
    else                    0, off_2292

off_2284:
    pos_set                 0, -25200, -4500, -27000
    speed_set               1, 25
    nop
    nop

off_2292:
    evt_next
    nop
    if                      0, off_22A8
    ck                      4, 146, 0
    speed_set               1, -20
    speed_set               7, -1
    else                    0, off_22B2

off_22A8:
    speed_set               1, 20
    speed_set               7, 1
    nop
    nop

off_22B2:
    if                      0, off_22D8
    ck                      4, 146, 1
    sleep                   10, 18
    se_on                   2, 12, 0, -23000, 0, -18500
    for                     0, off_22D4, 228
    add_speed
    evt_next
    next                    0

off_22D4:
    else                    0, off_22FA

off_22D8:
    for                     0, off_22E2, 10
    add_speed
    evt_next
    next                    0

off_22E2:
    se_on                   2, 11, 0, -23000, 0, -18500
    for                     0, off_22F8, 218
    add_speed
    evt_next
    next                    0

off_22F8:
    nop
    nop

off_22FA:
    evt_end                 0

.proc main_05
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -19800, 0, -18000
    if                      0, off_2320
    ck                      4, 146, 0
    pos_set                 0, -19800, 0, -18000
    speed_set               1, -25
    else                    0, off_232E

off_2320:
    pos_set                 0, -19800, -4560, -18000
    speed_set               1, 25
    nop
    nop

off_232E:
    evt_next
    nop
    if                      0, off_2344
    ck                      4, 146, 0
    speed_set               1, -20
    speed_set               7, -1
    else                    0, off_234E

off_2344:
    speed_set               1, 20
    speed_set               7, 1
    nop
    nop

off_234E:
    if                      0, off_235C
    ck                      4, 146, 1
    sleep                   10, 18
    endif
    nop

off_235C:
    for                     0, off_2366, 228
    add_speed
    evt_next
    next                    0

off_2366:
    evt_end                 0

.proc main_06
    work_set                WK_OBJECT, 0
    nop
    gosub                   9
    if                      0, off_23AE
    ck                      4, 146, 1
    gosub                   15
    member_set              17, 0, 0
    for                     0, off_23A2, 6
    sce_rnd
    nop
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 30
    copy                    6, 16
    nop
    work_copy               6, 4, 1
    dir_set                 0, 0, 0, 0
    evt_next
    nop
    next                    0

off_23A2:
    dir_set                 0, 0, 0, 0
    else                    0, off_23B6

off_23AE:
    member_set              17, 2, 0
    gosub                   14
    nop
    nop

off_23B6:
    evt_end                 0

.proc main_07
    work_set                WK_OBJECT, 1
    nop
    gosub                   9
    if                      0, off_23FE
    ck                      4, 146, 1
    gosub                   15
    member_set              17, 0, 0
    for                     0, off_23F2, 6
    sce_rnd
    nop
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 30
    copy                    6, 16
    nop
    work_copy               6, 4, 1
    dir_set                 0, 0, 0, 0
    evt_next
    nop
    next                    0

off_23F2:
    dir_set                 0, 0, 0, 0
    else                    0, off_2406

off_23FE:
    member_set              17, 2, 0
    gosub                   13
    nop
    nop

off_2406:
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, 2
    nop
    gosub                   9
    if                      0, off_244E
    ck                      4, 146, 1
    gosub                   15
    member_set              17, 0, 0
    for                     0, off_2442, 6
    sce_rnd
    nop
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 30
    copy                    6, 16
    nop
    work_copy               6, 4, 1
    dir_set                 0, 0, 0, 0
    evt_next
    nop
    next                    0

off_2442:
    dir_set                 0, 0, 0, 0
    else                    0, off_2456

off_244E:
    member_set              17, 2, 0
    gosub                   13
    nop
    nop

off_2456:
    evt_end                 0

.proc main_09
    if                      0, off_24E2
    ck                      4, 146, 0
    sleep                   10, 42
    for                     0, off_248A, 6
    sce_rnd
    nop
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 30
    copy                    6, 16
    nop
    work_copy               6, 4, 1
    dir_set                 0, 0, 0, 0
    evt_next
    nop
    next                    0

off_248A:
    dir_set                 0, 0, 0, 0
    if                      0, off_24A4
    member_cmp              0, 13, 3, 144, 157
    speed_set               2, -13
    else                    0, off_24E0

off_24A4:
    if                      0, off_24DE
    member_cmp              0, 13, 3, 152, 164
    member_cmp              0, 11, 1, 4, 172
    if                      0, off_24C8
    member_cmp              0, 13, 2, 48, 161
    set                     5, 7, 1
    speed_set               2, -13
    endif
    nop

off_24C8:
    if                      0, off_24DC
    member_cmp              0, 11, 2, 166, 175
    set                     5, 7, 1
    speed_set               0, 13
    endif
    nop

off_24DC:
    endif
    nop

off_24DE:
    nop
    nop

off_24E0:
    endif
    nop

off_24E2:
    evt_end                 0

.proc main_0A
    sca_id_set              21, 0, 158
    sca_id_set              27, 0, 158
    sca_id_set              28, 0, 158
    save                    5, 0
    for                     0, off_2586, 3
    work_copy               5, 2, 0
    work_set                WK_OBJECT, 0
    nop
    if                      0, off_255E
    member_cmp              0, 13, 4, 31, 154
    if                      0, off_2526
    member_cmp              0, 11, 1, 36, 175
    sca_id_set              20, 0, 0
    member_copy             4, 11
    nop
    set                     5, 9, 1
    else                    0, off_255A

off_2526:
    if                      0, off_2542
    member_cmp              0, 11, 1, 184, 167
    member_cmp              0, 11, 3, 128, 168
    sca_id_set              27, 0, 0
    set                     5, 10, 1
    else                    0, off_2558

off_2542:
    if                      0, off_2556
    member_cmp              0, 11, 3, 70, 161
    sca_id_set              28, 0, 0
    set                     5, 11, 1
    endif
    nop

off_2556:
    nop
    nop

off_2558:
    nop
    nop

off_255A:
    else                    0, off_2576

off_255E:
    if                      0, off_2574
    member_cmp              0, 11, 1, 36, 175
    member_cmp              0, 13, 3, 220, 161
    sca_id_set              21, 0, 0
    endif
    nop

off_2574:
    nop
    nop

off_2576:
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    5, 16
    nop
    next                    0

off_2586:
    if                      0, off_259E
    ck                      5, 9, 1
    copy                    16, 8
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    8, 16
    nop
    endif
    nop

off_259E:
    if                      0, off_25B6
    ck                      5, 10, 1
    copy                    16, 8
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    8, 16
    nop
    endif
    nop

off_25B6:
    if                      0, off_25CE
    ck                      5, 11, 1
    copy                    16, 8
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    8, 16
    nop
    endif
    nop

off_25CE:
    if                      0, off_25DE
    cmp                     0, 8, CMP_EQ, 3
    set                     4, 147, 1
    endif
    nop

off_25DE:
    save                    8, 0
    evt_end                 0

.proc main_0B
    if                      0, off_262E
    member_cmp              0, 13, 3, 88, 158
    member_cmp              0, 11, 3, 56, 180
    member_cmp              0, 11, 1, 100, 156
    member_cmp              0, 17, 0, 2, 0
    ck                      5, 4, 0
    set                     5, 4, 1
    work_set                WK_PLAYER, 0
    nop
    copy                    16, 4
    nop
    calc                    0, OP_SUB, 16, 900
    member_copy             17, 11
    nop
    calc2                   OP_SUB, 16, 17
    calc                    0, OP_DIV, 16, -1800
    copy                    5, 16
    nop
    evt_exec                8, I_GOSUB, main_0C
    endif
    nop

off_262E:
    evt_end                 0

.proc main_0C
    work_copy               5, 2, 0
    work_set                WK_OBJECT, 0
    nop
    speed_set               1, 20
    while                   6, off_264A
    member_cmp              0, 12, 5, 248, 248
    add_speed
    evt_next
    ewhile                  0

off_264A:
    member_set              12, 248, 248
    evt_end                 0

.proc main_0D
    for                     0, off_268C, 3
    speed_set               1, -15
    gosub                   16
    speed_set               1, -10
    gosub                   16
    gosub                   16
    speed_set               1, -15
    gosub                   16
    speed_set               1, -20
    gosub                   16
    speed_set               1, -25
    gosub                   16
    speed_set               1, -30
    gosub                   16
    gosub                   16
    speed_set               1, -25
    gosub                   16
    speed_set               1, -20
    gosub                   16
    next                    0

off_268C:
    speed_set               1, 10
    gosub                   17
    speed_set               1, 5
    gosub                   17
    sleep                   10, 3
    speed_set               1, -10
    gosub                   17
    speed_set               1, -5
    gosub                   17
    sleep                   10, 3
    evt_end                 0

.proc main_0E
    for                     0, off_26EA, 3
    speed_set               1, -15
    gosub                   18
    speed_set               1, -10
    gosub                   18
    gosub                   18
    speed_set               1, -15
    gosub                   18
    speed_set               1, -20
    gosub                   18
    speed_set               1, -25
    gosub                   18
    speed_set               1, -30
    gosub                   18
    gosub                   18
    speed_set               1, -25
    gosub                   18
    speed_set               1, -20
    gosub                   18
    next                    0

off_26EA:
    speed_set               1, 10
    gosub                   19
    speed_set               1, 5
    gosub                   19
    sleep                   10, 3
    speed_set               1, -10
    gosub                   19
    speed_set               1, -5
    gosub                   19
    sleep                   10, 3
    evt_end                 0

.proc main_0F
    speed_set               1, -10
    gosub                   17
    speed_set               1, -5
    gosub                   17
    sleep                   10, 3
    speed_set               1, 10
    gosub                   17
    speed_set               1, 5
    gosub                   17
    sleep                   10, 3
    for                     0, off_2768, 3
    speed_set               1, 15
    gosub                   16
    speed_set               1, 10
    gosub                   16
    gosub                   16
    speed_set               1, 15
    gosub                   16
    speed_set               1, 20
    gosub                   16
    speed_set               1, 25
    gosub                   16
    speed_set               1, 30
    gosub                   16
    gosub                   16
    speed_set               1, 25
    gosub                   16
    speed_set               1, 20
    gosub                   16
    next                    0

off_2768:
    evt_end                 0

.proc main_10
    for                     0, off_2776, 6
    gosub                   20
    add_speed
    evt_next
    next                    0

off_2776:
    evt_end                 0

.proc main_11
    for                     0, off_2784, 3
    gosub                   20
    add_speed
    evt_next
    next                    0

off_2784:
    evt_end                 0

.proc main_12
    for                     0, off_2792, 6
    gosub                   21
    add_speed
    evt_next
    next                    0

off_2792:
    evt_end                 0

.proc main_13
    for                     0, off_27A0, 3
    gosub                   21
    add_speed
    evt_next
    next                    0

off_27A0:
    evt_end                 0

.proc main_14
    if                      0, off_27BC
    member_cmp              0, 13, 4, 31, 154
    speed_set               2, 0
    member_set              13, 31, 154
    set                     5, 0, 1
    else                    0, off_27C2

off_27BC:
    set                     5, 0, 0
    nop
    nop

off_27C2:
    evt_end                 0

.proc main_15
    if                      0, off_27F0
    ck                      5, 7, 0
    if                      0, off_27E6
    member_cmp              0, 13, 4, 31, 154
    speed_set               2, 0
    member_set              13, 31, 154
    set                     5, 0, 1
    else                    0, off_27EC

off_27E6:
    set                     5, 0, 0
    nop
    nop

off_27EC:
    else                    0, off_283C

off_27F0:
    if                      0, off_2804
    member_cmp              0, 11, 4, 122, 175
    speed_set               0, 0
    member_set              11, 122, 175
    endif
    nop

off_2804:
    if                      0, off_2818
    member_cmp              0, 13, 4, 48, 161
    speed_set               2, 0
    member_set              13, 48, 161
    endif
    nop

off_2818:
    if                      0, off_2834
    member_cmp              0, 11, 4, 122, 175
    member_cmp              0, 13, 4, 48, 161
    set                     5, 0, 1
    set                     5, 7, 0
    else                    0, off_283A

off_2834:
    set                     5, 0, 0
    nop
    nop

off_283A:
    nop
    nop

off_283C:
    evt_end                 0

.proc main_16
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    if                      0, off_2874
    ck                      11, 31, 0
    set                     8, 137, 1
    set                     33, 6, 1
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, -13800, -32000, -25250
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    message_on              0, 2, 0, 255, 255
    endif
    nop

off_2874:
    evt_end                 0

.proc main_17
    if                      0, off_28F6
    ck                      5, 8, 0
    switch                  26, off_28F4
    case                    0, off_2890, 0
    sce_bgm_control         0, 0, 1, 60, 64
    break                   0

off_2890:
    case                    0, off_289E, 1
    sce_bgm_control         0, 0, 1, 60, 64
    break                   0

off_289E:
    case                    0, off_28AC, 2
    sce_bgm_control         0, 0, 1, 60, 64
    break                   0

off_28AC:
    case                    0, off_28BA, 3
    sce_bgm_control         0, 0, 1, 60, 64
    break                   0

off_28BA:
    case                    0, off_28C8, 4
    sce_bgm_control         0, 0, 1, 60, 64
    break                   0

off_28C8:
    case                    0, off_28D6, 5
    sce_bgm_control         0, 0, 1, 60, 64
    break                   0

off_28D6:
    case                    0, off_28E4, 6
    sce_bgm_control         0, 0, 1, 60, 64
    break                   0

off_28E4:
    case                    0, off_28F2, 7
    sce_bgm_control         0, 0, 1, 60, 64
    break                   0

off_28F2:
    eswitch                 0

off_28F4:
    endif
    nop

off_28F6:
    evt_end                 0

.proc main_18
    sce_espr_kill           22, 4, 0, 0
    sce_espr_kill           22, 20, 0, 0
    if                      0, off_293A
    ck                      4, 146, 1
    sce_espr3d_on           0, 5142, 0, 1280, -16700, -7500, -20000, 0, 0, 0, 0
    sce_espr3d_on           0, 1046, 0, 1280, -16700, -7500, -20150, 0, 0, 0, 0
    else                    0, off_2968

off_293A:
    sce_espr3d_on           0, 1046, 0, 1280, -16700, -7500, -20000, 0, 0, 0, 0
    sce_espr3d_on           0, 5142, 0, 1280, -16700, -7500, -20150, 0, 0, 0, 0
    nop
    nop

off_2968:
    evt_end                 0

.proc main_19
    set                     5, 8, 1
    evt_next
    nop
    if                      0, off_2980
    ck                      4, 146, 1
    sce_bgm_control         0, 0, 1, 0, 0
    endif
    nop

off_2980:
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_FRONT, 197, 226, 232, 234, 31, 217
    evt_end                 0

.proc main_1A
    nop_8c                  0, 60, 0, 30, 0, 1, 0
    nop_8c                  0, 100, 60, 30, 0, 31, 0
    nop_8c                  0, 60, 100, 30, 0, 61, 0
    nop_8c                  0, 100, 60, 30, 0, 91, 0
    nop_8c                  0, 60, 100, 30, 0, 121, 0
    nop_8c                  0, 100, 60, 30, 0, 151, 0
    nop_8c                  0, 60, 100, 30, 0, 181, 0
    nop_8c                  0, 100, 0, 30, 0, 211, 0
    evt_end                 0

.proc main_1B
    nop_8c                  0, 0, 60, 30, 0, 1, 0
    nop_8c                  0, 60, 100, 30, 0, 31, 0
    nop_8c                  0, 100, 60, 30, 0, 61, 0
    nop_8c                  0, 60, 100, 30, 0, 91, 0
    nop_8c                  0, 100, 60, 30, 0, 121, 0
    nop_8c                  0, 60, 100, 30, 0, 151, 0
    nop_8c                  0, 100, 60, 30, 0, 181, 0
    nop_8c                  0, 60, 0, 30, 0, 211, 0
    evt_end                 0
