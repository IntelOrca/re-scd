.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27580, -16397, 1000, 2000, -7827, 0, -25064, 2192, 3, 15, 0, 0, 30, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18680, -24197, 2300, 1000, -22447, -1800, -14990, 616, 3, 0, 9, 1, 6, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -21411, -23995, 2460, 800, -25690, -9000, -15339, 1048, 3, 0, 4, 5, 6, 0, 0, 0, UNLOCKED, 0
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 4, 0, -14711, -14695, 2500, 2500, -12217, 0, -26718, 3056, 3, 4, 6, 0, 40, 5, 0, 0, UNLOCKED, 0
    door_aot_se             20, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, 20000, 20000, 1, 1, -12136, 0, -18578, 2123, 3, 1, 4, 0, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             21, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, 20000, 20000, 1, 1, -12136, -7200, -18578, 2123, 3, 1, 2, 4, 22, 4, 0, 0, UNLOCKED, 0
    aot_set                 4, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -27090, -21710, 1700, 2200, 0, 0, 1, 0, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 4, 0, 10, 16, -26799, -8680, -20184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 4, 0, 10, 16, -12465, -7200, -17144, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 4, 0, 10, 16, -13315, -7200, -13694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 5, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -23354, -26204, 1000, 1400, 5, 0, 0, 0, 0, 0
    set                     15, 2, 0
    set                     15, 4, 0
    evt_end                 0
    db                      0x8E, 0x1C

.main
.proc main_00
    if                      0, off_23C6
    ck                      4, 52, 1
    ck                      4, 77, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2396
    member_cmp              0, 17, 0, 4, 0
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 4, 32, 0, 255, -15265, -7200, -14790, 0, 0, 0
    else                    0, off_23AE

off_2396:
    sce_em_set              0, 0, ENEMY_ZOMBIEGUY2, 0, 16, 0, 6, 2, 4, -21479, 0, -17442, 3285, 0, 0
    nop
    nop

off_23AE:
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0E, 0, 0
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0F, 0, 0
    else                    0, off_23EE

off_23C6:
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_23EC
    member_cmp              0, 17, 0, 0, 0
    sce_em_set              0, 0, ENEMY_ZOMBIEGUY2, 0, 16, 0, 6, 2, 4, -21479, 0, -17442, 3285, 0, 0
    endif
    nop

off_23EC:
    nop
    nop

off_23EE:
    gosub                   3
    item_aot_set            8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -27339, -26597, 1200, 1600, ITEM_FAIDSPRAY, 1, 129, 255, 0
    if                      0, off_241A
    ck                      8, 129, 0
    aot_reset               8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_241A:
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -17033, -17326, 1600, 2100, ITEM_HANDGUNAMMO, 30, 130, 255, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 16, -24573, -3250, -25837, 0, -512, 64, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26139, -26597, 1900, 1600, ITEM_EXPLOSIVEROUNDS, 6, 131, 7, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -17478, -2900, -20187, -1152, -3904, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            12, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17908, -20837, 900, 1900, ITEM_BOWGUNAMMO, 36, 169, 6, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -19833, -8500, -17476, 0, 128, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -21463, -17536, 2100, 2300, ITEM_122, 1, 132, 5, 0
    aot_set                 23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -12765, -19899, 1800, 2800, 255, 0, I_GOSUB, main_0A, 0, 0
    aot_set                 25, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -12185, -19899, 1400, 900, 255, 0, I_GOSUB, main_0A, 0, 0
    aot_set                 24, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12185, -19899, 1400, 900, 255, 0, I_GOSUB, main_08, 0, 0
    gosub                   4
    if                      0, off_253C
    ck                      4, 34, 0
    aot_reset               23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    sca_id_set              0, 128, 254
    else                    0, off_2558

off_253C:
    aot_reset               23, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 20000, 20000, 20000
    sca_id_set              0, 0, 0
    nop
    nop

off_2558:
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_258C
    member_cmp              0, 6, 5, 15, 0
    if                      0, off_257C
    ck                      1, 1, 0
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, 0, 0, 0, 255
    else                    0, off_2588

off_257C:
    aot_reset               0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_2588:
    else                    0, off_25DC

off_258C:
    aot_reset               24, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, 0, 0, 0, 255
    if                      0, off_25AC
    ck                      8, 131, 0
    aot_reset               11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 7, 0, 0, 0, 0, 255
    else                    0, off_25B8

off_25AC:
    aot_reset               11, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_25B8:
    if                      0, off_25CE
    ck                      8, 169, 0
    aot_reset               12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 7, 0, 0, 0, 0, 255
    else                    0, off_25DA

off_25CE:
    aot_reset               12, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_25DA:
    nop
    nop

off_25DC:
    evt_exec                255, I_GOSUB, main_05
    if                      0, off_2606
    cmp                     0, 27, CMP_EQ, 1028
    set                     5, 5, 1
    evt_exec                255, I_GOSUB, main_10
    set                     5, 0, 1
    set                     5, 2, 0
    set                     2, 2, 1
    set                     2, 1, 0
    else                    0, off_260C

off_2606:
    set                     5, 3, 1
    nop
    nop

off_260C:
    evt_exec                255, I_GOSUB, main_0C
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    aot_reset               8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 35, 0, 1, 0, 129, 0
    se_on                   2, 296, 1, 0, 0, 0
    aot_on                  8
    evt_next
    nop
    if                      0, off_2642
    ck                      8, 129, 0
    aot_reset               8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_2642:
    evt_end                 0

.proc main_03
    obj_model_set           4, 0, 0, 0, 0, 4, 0, 10, 16, -21733, -8650, -26126, -192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -22433, -26226, 1200, 1500, ITEM_INKRIBBON, 3, 128, 4, 0
    evt_end                 0

.proc main_04
    aot_set                 26, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -27523, -19258, 2900, 6800, 8, 0, 0, 0, 0, 255
    aot_set                 27, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19273, -18726, 2500, 1400, 11, 0, 0, 0, 0, 255
    aot_set                 28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23903, -19196, 1200, 2600, 12, 0, 0, 0, 0, 255
    aot_set                 29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22913, -19226, 700, 6800, 11, 0, 0, 0, 0, 255
    aot_set                 30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -17033, -17326, 1200, 1200, 9, 0, 0, 0, 0, 255
    aot_set                 31, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -27339, -26597, 3200, 1600, 10, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_05
    evt_next
    nop
    if                      0, off_2712
    cmp                     0, 27, CMP_EQ, 1028
    sce_bgm_control         0, 1, 0, 85, 64
    else                    0, off_272A

off_2712:
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2728
    member_cmp              0, 17, 0, 4, 0
    sce_bgm_control         0, 1, 0, 85, 64
    endif
    nop

off_2728:
    nop
    nop

off_272A:
    evt_end                 0

.proc main_06
    aot_reset               23, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    if                      0, off_2752
    ck                      1, 0, 0
    if                      0, off_274E
    keep_item_ck            31
    set                     5, 32, 1
    endif
    nop

off_274E:
    else                    0, off_2758

off_2752:
    set                     5, 32, 1
    nop
    nop

off_2758:
    if                      0, off_27CE
    ck                      5, 32, 1
    message_on              0, 1, 0, 0, 255
    evt_next
    nop
    if                      0, off_27B2
    ck                      11, 31, 0
    se_on                   4, 262, 1, 0, 0, 0
    if                      0, off_2792
    ck                      1, 0, 0
    sce_item_ck_lost        31, 1
    nop
    message_on              0, 13, 0, 0, 255
    else                    0, off_279A

off_2792:
    message_on              0, 14, 0, 0, 255
    nop
    nop

off_279A:
    evt_next
    set                     4, 34, 1
    nop
    se_on                   2, 293, 1, 0, 0, 0
    gosub                   7
    else                    0, off_27CA

off_27B2:
    se_on                   4, 261, 1, 0, 0, 0
    aot_reset               23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    nop
    nop

off_27CA:
    else                    0, off_27EE

off_27CE:
    aot_reset               23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    message_on              0, 0, 0, 0, 255
    se_on                   2, 278, 1, 0, 0, 0
    evt_next
    nop
    nop
    nop

off_27EE:
    set                     2, 7, 0
    evt_end                 0

.proc main_07
    set                     15, 2, 1
    nop_8c                  0, 80, 70, 55, 0, 13, 0
    nop_8b                  120, 5, 0, 67, 0
    sleep                   10, 17
    work_set                WK_OBJECT, 2
    nop
    speed_set               2, 0
    speed_set               8, -20
    se_on                   2, 266, 516, 0, 0, 0
    for                     0, off_282E, 3
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_282E:
    for                     0, off_2838, 45
    add_speed
    evt_next
    next                    0

off_2838:
    aot_reset               23, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    pos_set                 0, 20000, 20000, 20000
    set                     15, 2, 0
    sca_id_set              0, 0, 0
    evt_end                 0

.proc main_08
    set                     2, 7, 1
    aot_reset               24, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, 4, 0, 0, 255
    evt_next
    nop
    if                      0, off_2884
    ck                      11, 31, 0
    se_on                   4, 262, 1, 0, 0, 0
    gosub                   9
    else                    0, off_289C

off_2884:
    se_on                   4, 261, 1, 0, 0, 0
    aot_reset               24, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_08, 0, 0
    nop
    nop

off_289C:
    set                     2, 7, 0
    evt_end                 0

.proc main_09
    aot_reset               24, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_28BE
    ck                      4, 52, 1
    ck                      4, 77, 0
    set                     1, 3, 1
    endif
    nop

off_28BE:
    aot_on                  21
    evt_end                 0

.proc main_0A
    set                     2, 7, 1
    aot_reset               25, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, 3, 0, 0, 255
    evt_next
    nop
    if                      0, off_28F2
    ck                      11, 31, 0
    se_on                   4, 262, 1, 0, 0, 0
    gosub                   11
    else                    0, off_290A

off_28F2:
    se_on                   4, 261, 1, 0, 0, 0
    aot_reset               25, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0A, 0, 0
    nop
    nop

off_290A:
    set                     2, 7, 0
    evt_end                 0

.proc main_0B
    aot_reset               25, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     1, 3, 0
    sce_bgm_control         0, 2, 0, 1, 64
    aot_on                  20
    evt_end                 0

.proc main_0C
    evt_next
    work_set                WK_PLAYER, 0

off_292C:
    if                      0, off_295C
    member_cmp              0, 17, 0, 0, 0
    if                      0, off_2948
    ck                      5, 2, 0
    set                     5, 2, 1
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_2948:
    set                     2, 2, 0
    set                     2, 1, 1
    set                     9, 132, 1
    set                     35, 8, 1
    else                    0, off_2976

off_295C:
    set                     5, 0, 1
    set                     5, 2, 0
    set                     2, 2, 1
    set                     2, 1, 0
    set                     9, 131, 1
    set                     35, 7, 1
    nop
    nop

off_2976:
    evt_next
    nop
    goto                    255, 255, 0, off_292C + 1
    evt_end                 0

.proc main_0D
    while                   4, off_2A40
    ck                      5, 2, 1
    copy                    4, 29
    nop
    copy                    16, 4
    nop
    calc                    0, OP_AND, 16, 8191
    copy                    4, 16
    nop
    copy                    16, 4
    nop
    calc                    0, OP_SUB, 16, 22000
    copy                    4, 16
    nop
    sce_rnd
    nop
    copy                    5, 29
    nop
    copy                    16, 5
    nop
    calc                    0, OP_AND, 16, 8191
    copy                    5, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 22000
    copy                    5, 16
    nop
    work_copy               5, 16, 1
    work_copy               4, 8, 1
    sce_espr_on             0, 5376, 0, 2048, 0, -4500, 0, 0
    sleep                   10, 30
    work_copy               5, 14, 1
    work_copy               4, 6, 1
    se_on                   2, 267, 0, 0, -4500, 0
    copy                    5, 29
    nop
    if                      0, off_2A24
    cmp                     0, 5, CMP_GE, 0
    if                      0, off_2A1A
    cmp                     0, 5, CMP_GE, 15000
    sleep                   10, 20
    else                    0, off_2A20

off_2A1A:
    sleep                   10, 40
    nop
    nop

off_2A20:
    else                    0, off_2A3E

off_2A24:
    if                      0, off_2A36
    cmp                     0, 5, CMP_GE, -15000
    sleep                   10, 25
    else                    0, off_2A3C

off_2A36:
    sleep                   10, 15
    nop
    nop

off_2A3C:
    nop
    nop

off_2A3E:
    ewhile                  0

off_2A40:
    evt_end                 0

.proc main_0E
    set                     2, 7, 1
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 81, 168, 248, 248, 114, 197
    set                     1, 3, 0
    aot_on                  1
    set                     2, 7, 0
    evt_end                 0

.proc main_0F
    set                     2, 7, 1
    aot_reset               2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 166, 155, 216, 220, 21, 196
    set                     1, 3, 0
    aot_on                  2
    set                     2, 7, 0
    evt_end                 0

.proc main_10
    set                     2, 7, 1
    set                     15, 4, 1
    evt_exec                255, I_GOSUB, main_11
    evt_exec                255, I_GOSUB, main_12
    if                      0, off_2A98
    ck                      4, 52, 1
    ck                      4, 77, 0
    evt_exec                255, I_GOSUB, main_13
    endif
    nop

off_2A98:
    sleep                   10, 90
    set                     5, 5, 0
    set                     2, 7, 0
    set                     15, 4, 0
    evt_end                 0

.proc main_11
    work_set                WK_OBJECT, 3
    nop
    member_set              12, 64, 237
    speed_set               1, -40
    for                     0, off_2AC0, 2
    add_speed
    evt_next
    next                    0

off_2AC0:
    nop_8b                  100, 90, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 87, 0
    nop_8a                  0, 3, 0, 85, 0
    se_on                   0, 1, 0, 0, 0, 0
    for                     0, off_2AEA, 8
    add_speed
    evt_next
    next                    0

off_2AEA:
    speed_set               1, -35
    for                     0, off_2AF8, 20
    add_speed
    evt_next
    next                    0

off_2AF8:
    speed_set               1, -30
    for                     0, off_2B06, 15
    add_speed
    evt_next
    next                    0

off_2B06:
    speed_set               1, -25
    for                     0, off_2B14, 15
    add_speed
    evt_next
    next                    0

off_2B14:
    speed_set               1, -20
    for                     0, off_2B22, 15
    add_speed
    evt_next
    next                    0

off_2B22:
    speed_set               1, -15
    for                     0, off_2B30, 10
    add_speed
    evt_next
    next                    0

off_2B30:
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 10
    member_set2             12, 16
    nop
    sleep                   10, 5
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 35
    member_set2             12, 16
    nop
    evt_end                 0

.proc main_12
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13629, -4800, -12997
    member_set              15, 0, 8
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    gosub                   20
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    evt_end                 0

.proc main_13
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -13349, -4800, -13749
    member_set              15, 0, 8
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    gosub                   20
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    evt_end                 0

.proc main_14
    speed_set               1, -40
    for                     0, off_2BC0, 10
    add_speed
    evt_next
    next                    0

off_2BC0:
    speed_set               1, -35
    for                     0, off_2BCE, 20
    add_speed
    evt_next
    next                    0

off_2BCE:
    speed_set               1, -30
    for                     0, off_2BDC, 15
    add_speed
    evt_next
    next                    0

off_2BDC:
    speed_set               1, -25
    for                     0, off_2BEA, 15
    add_speed
    evt_next
    next                    0

off_2BEA:
    speed_set               1, -20
    for                     0, off_2BF8, 15
    add_speed
    evt_next
    next                    0

off_2BF8:
    speed_set               1, -15
    for                     0, off_2C06, 10
    add_speed
    evt_next
    next                    0

off_2C06:
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 10
    member_set2             12, 16
    nop
    sleep                   10, 5
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 35
    member_set2             12, 16
    nop
    evt_end                 0
