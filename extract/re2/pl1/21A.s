.version 2
.init
.proc init_00
    if                      0, off_1A82
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_1A82:
    if                      0, off_1AAC
    ck                      4, 254, 1
    set                     8, 29, 0
    set                     6, 79, 0
    set                     6, 80, 0
    set                     4, 35, 0
    set                     4, 112, 0
    set                     4, 114, 0
    set                     4, 61, 0
    set                     4, 59, 0
    endif
    nop

off_1AAC:
    if                      0, off_1ABA
    ck                      4, 88, 1
    set                     4, 59, 1
    endif
    nop

off_1ABA:
    item_aot_set            13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4824, -9338, 1440, 1430, ITEM_HERBB, 1, 135, 0, 1
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -4374, 0, -8528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16776, -12232, 2870, 2040, -6434, 0, -12495, -15416, 1, 25, 2, 0, 26, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6638, -3897, 2270, 2270, -10280, 0, -17211, -1999, 2, 2, 0, 0, 22, 5, 0, 0, UNLOCKED, 0
    if                      0, off_1B50
    ck                      1, 0, 1
    set                     4, 35, 1
    set                     4, 112, 1
    set                     4, 114, 1
    set                     4, 61, 1
    endif
    nop

off_1B50:
    if                      0, off_1C1A
    ck                      4, 114, 0
    sce_em_set              0, 0, ENEMY_CEREBRUS, 7, 0, 0, 12, 0, 79, -5681, 0, -11455, 2024, 0, 0
    if                      0, off_1BAE
    ck                      4, 61, 0
    if                      0, off_1B94
    ck                      6, 80, 0
    aot_set                 9, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -12428, -10307, 4690, 4570, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1B94:
    sce_em_set              0, 1, ENEMY_CEREBRUS, 8, 0, 0, 12, 0, 80, -4210, 0, -6566, 1987, 0, 0
    else                    0, off_1BC6

off_1BAE:
    sce_em_set              0, 1, ENEMY_CEREBRUS, 7, 0, 0, 12, 0, 80, -3910, 0, -7066, 1987, 0, 0
    nop
    nop

off_1BC6:
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8788, -9137, 1490, 3210, 0, 0, 0, 0, 255, 255
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8788, -13677, 1490, 3910, 0, 0, 0, 0, 255, 255
    aot_set                 5, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -8148, -8347, 2020, 2720, 0, 0, 0, 0, 0, 0
    aot_set                 6, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -8148, -12647, 2020, 3050, 0, 0, 0, 0, 0, 0
    else                    0, off_1C48

off_1C1A:
    sce_em_set              0, 0, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 79, -10607, 0, -8134, 2024, 0, 0
    sce_em_set              0, 1, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 80, -13909, 0, -3854, 1987, 0, 0
    nop
    nop

off_1C48:
    if                      0, off_1C82
    ck                      4, 35, 1
    sca_id_set              17, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -11712, 0, -11264, 0, -360, 1050, 0, 0, 0, 0, 0, 0, 0, 0
    flr_set                 5, 1
    nop
    else                    0, off_1CAA

off_1C82:
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -7902, 0, -11264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1CAA:
    if                      0, off_1CE4
    ck                      4, 112, 1
    sca_id_set              20, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -8452, 0, -7414, 0, -256, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    flr_set                 4, 1
    nop
    else                    0, off_1D0C

off_1CE4:
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -7903, 0, -7221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1D0C:
    if                      0, off_1D5A
    ck                      4, 59, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 0, -6161, 0, -3485, 0, -576, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 12, SCE_STATUS, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sca_id_set              21, 0, 0
    sca_id_set              16, 0, 0
    else                    0, off_1D82

off_1D5A:
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 0, -6161, 0, -3485, 0, -576, -1088, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1D82:
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x10, 0x00

.main
.proc main_00
    if                      0, off_1DE0
    ck                      1, 6, 1
    gosub                   17
    evt_end                 0
    endif
    nop

off_1DE0:
    item_aot_set            10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8738, -2737, 980, 1060, ITEM_CRANK, 1, 29, 5, 161
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -8228, 0, -2137, 0, -640, 0, 0, 0, 0, 0, 0, 0, 0, 0
    gosub                   3
    evt_end                 0

.proc main_01
    if                      0, off_1E2C
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_1E2C:
    gosub                   4
    evt_end                 0

.proc main_02
    sce_bgmtbl_set          0, 26, 2, 65283, 0
    evt_end                 0

.proc main_03
    aot_set                 0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6638, -3897, 2270, 2270, 255, 0, I_GOSUB, main_05, 0, 0
    if                      0, off_1E6E
    ck                      4, 114, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11348, -18437, 1820, 1430, 255, 0, I_GOSUB, main_06, 0, 0
    else                    0, off_1E74

off_1E6E:
    set                     5, 1, 1
    nop
    nop

off_1E74:
    if                      0, off_1EBE
    ck                      4, 59, 0
    aot_reset               0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 255, 255
    if                      0, off_1EB0
    ck                      1, 0, 0
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 255, 255
    aot_set                 11, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -6638, -3897, 2270, 2270, 10, 0, 75, 0, 1, 0
    else                    0, off_1EBC

off_1EB0:
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    nop
    nop

off_1EBC:
    endif
    nop

off_1EBE:
    evt_end                 0

.proc main_04
    if                      0, off_1FC6
    ck                      1, 0, 0
    if                      0, off_1F04
    ck                      4, 61, 0
    if                      0, off_1F00
    ck                      26, 0, 4
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_1EFE
    member_cmp              0, 9, 0, 9, 0
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_1EFC
    ck                      6, 80, 0
    set                     4, 61, 1
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_1EFC:
    endif
    nop

off_1EFE:
    endif
    nop

off_1F00:
    else                    0, off_1F88

off_1F04:
    if                      0, off_1F86
    ck                      4, 114, 0
    if                      0, off_1F48
    ck                      6, 80, 0
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_1F46
    member_cmp              0, 23, 0, 1, 0
    member_set              23, 0, 0
    if                      0, off_1F44
    member_cmp              0, 9, 0, 5, 0
    if                      0, off_1F42
    ck                      5, 3, 0
    set                     5, 3, 1
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_1F42:
    endif
    nop

off_1F44:
    endif
    nop

off_1F46:
    endif
    nop

off_1F48:
    if                      0, off_1F84
    ck                      6, 79, 0
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_1F82
    member_cmp              0, 23, 0, 1, 0
    member_set              23, 0, 0
    if                      0, off_1F80
    member_cmp              0, 9, 0, 6, 0
    if                      0, off_1F7E
    ck                      5, 4, 0
    set                     5, 4, 1
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_1F7E:
    endif
    nop

off_1F80:
    endif
    nop

off_1F82:
    endif
    nop

off_1F84:
    endif
    nop

off_1F86:
    nop
    nop

off_1F88:
    if                      0, off_1FC4
    ck                      4, 114, 1
    if                      0, off_1FC2
    ck                      6, 79, 1
    if                      0, off_1FC0
    ck                      6, 80, 1
    if                      0, off_1FBE
    ck                      5, 1, 0
    if                      0, off_1FBC
    ck                      5, 0, 0
    set                     5, 0, 1
    sce_bgm_control         1, 5, 0, 0, 0
    endif
    nop

off_1FBC:
    endif
    nop

off_1FBE:
    endif
    nop

off_1FC0:
    endif
    nop

off_1FC2:
    endif
    nop

off_1FC4:
    endif
    nop

off_1FC6:
    if                      0, off_1FF0
    ck                      4, 59, 0
    if                      0, off_1FEE
    cmp                     0, 0, CMP_EQ, 11
    if                      0, off_1FEC
    cmp                     0, 2, CMP_EQ, 75
    set                     4, 59, 1
    evt_exec                255, I_GOSUB, main_0E
    endif
    nop

off_1FEC:
    endif
    nop

off_1FEE:
    endif
    nop

off_1FF0:
    if                      0, off_2004
    ck                      6, 80, 1
    aot_reset               7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2004:
    if                      0, off_2018
    ck                      6, 79, 1
    aot_reset               8, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2018:
    if                      0, off_2036
    ck                      4, 114, 1
    aot_reset               7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               8, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2036:
    evt_end                 0

.proc main_05
    message_on              0, 3, 0, 255, 255
    evt_next
    nop
    if                      0, off_204C
    ck                      11, 31, 0
    aot_on                  2
    endif
    nop

off_204C:
    evt_end                 0

.proc main_06
    set                     2, 7, 1
    aot_on                  10
    set                     4, 114, 1
    evt_next
    nop
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    aot_reset               7, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    aot_reset               8, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    sleep                   10, 25
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_2092
    ck                      6, 79, 0
    set                     4, 35, 1
    evt_exec                255, I_GOSUB, main_07
    endif
    nop

off_2092:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_20A8
    ck                      6, 80, 0
    set                     4, 112, 1
    evt_exec                255, I_GOSUB, main_08
    endif
    nop

off_20A8:
    set                     2, 7, 0
    sleep                   10, 9
    if                      0, off_20C2
    ck                      6, 79, 0
    sce_bgm_control         1, 1, 0, 0, 0
    else                    0, off_20DC

off_20C2:
    if                      0, off_20D4
    ck                      6, 80, 0
    sce_bgm_control         1, 1, 0, 0, 0
    else                    0, off_20DA

off_20D4:
    set                     5, 0, 1
    nop
    nop

off_20DA:
    nop
    nop

off_20DC:
    gosub                   2
    evt_end                 0

.proc main_07
    sca_id_set              17, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              2, 1, 0
    member_set              3, 14, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -5166, 0, -10842
    dir_set                 0, 0, 2048, 0
    evt_next
    work_set                WK_ENEMY, 0
    member_set              5, 1, 0
    se_on                   3, 19, 3, 0, 0, 0
    evt_exec                255, I_GOSUB, main_09
    flr_set                 5, 1
    nop
    evt_end                 0

.proc main_08
    sca_id_set              20, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_set              2, 1, 0
    member_set              3, 2, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_set              12, 0, 0
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -8452, 0, -7414
    dir_set                 0, 0, -256, -1024
    se_on                   3, 19, 3, 0, 0, 0
    sleep                   10, 18
    se_on                   2, 11, 0, -8958, -1800, -6772
    flr_set                 4, 1
    nop
    evt_end                 0

.proc main_09
    sleep                   10, 10
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -7902, 0, -11264
    dir_set                 0, 0, 0, 0
    evt_next
    nop
    se_on                   2, 11, 0, -7902, -1800, -11264
    nop_8a                  0, 7, 0, 0, 0
    nop_8b                  255, 5, 0, 0, 0
    save                    4, -500
    save                    5, -360
    save                    9, 30
    for                     0, off_21F2, 8
    member_copy             16, 11
    nop
    calc2                   OP_ADD, 16, 4
    member_set2             11, 16
    nop
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    member_copy             16, 16
    nop
    calc2                   OP_ADD, 16, 9
    member_set2             16, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_21F2:
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  200, 7, 0, 0, 0
    save                    9, -30
    save                    4, -100
    for                     0, off_2236, 1
    member_copy             16, 16
    nop
    calc2                   OP_ADD, 16, 9
    member_set2             16, 16
    nop
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_2236:
    save                    5, -270
    save                    4, 10
    save                    9, 30
    save                    8, -30
    for                     0, off_229C, 7
    member_copy             16, 11
    nop
    calc2                   OP_ADD, 16, 4
    member_set2             11, 16
    nop
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    5, 16
    nop
    member_copy             16, 16
    nop
    calc2                   OP_ADD, 16, 9
    member_set2             16, 16
    nop
    copy                    16, 9
    nop
    calc                    0, OP_ADD, 16, 30
    copy                    9, 16
    nop
    member_copy             16, 15
    nop
    calc2                   OP_ADD, 16, 8
    member_set2             15, 16
    nop
    evt_next
    nop
    next                    0

off_229C:
    evt_exec                255, I_GOSUB, main_0A
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  180, 4, 0, 0, 0
    save                    5, -180
    save                    4, 15
    for                     0, off_22F0, 5
    member_copy             16, 11
    nop
    calc2                   OP_ADD, 16, 4
    member_set2             11, 16
    nop
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    5, 16
    nop
    member_copy             16, 15
    nop
    calc2                   OP_ADD, 16, 8
    member_set2             15, 16
    nop
    evt_next
    nop
    next                    0

off_22F0:
    nop_8a                  0, 2, 0, 0, 0
    nop_8c                  0, 150, 0, 10, 0, 0, 0
    save                    5, -90
    save                    4, 15
    for                     0, off_2336, 3
    member_copy             16, 11
    nop
    calc2                   OP_ADD, 16, 4
    member_set2             11, 16
    nop
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_2336:
    evt_end                 0

.proc main_0A
    work_set                WK_OBJECT, 1
    nop
    member_set              14, 246, 255
    evt_next
    nop
    member_set              14, 0, 0
    evt_next
    nop
    member_set              14, 10, 0
    evt_next
    nop
    member_set              14, 251, 255
    evt_next
    nop
    member_set              14, 0, 0
    evt_next
    nop
    member_set              14, 251, 255
    evt_next
    nop
    member_set              14, 254, 255
    evt_next
    nop
    member_set              14, 0, 0
    evt_next
    nop
    member_set              14, 2, 0
    evt_next
    nop
    member_set              14, 255, 255
    evt_next
    nop
    member_set              14, 0, 0
    evt_next
    nop
    member_set              14, 1, 0
    evt_next
    nop
    member_set              14, 0, 0
    evt_next
    nop
    evt_end                 0

.proc main_0B
    set                     2, 7, 1
    cut_chg                 7
    set                     5, 2, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -9693, 0, -6578
    dir_set                 0, 0, 1024, 0
    plc_dest                0, 4, 32, -10449, -16924
    work_set                WK_ENEMY, 1
    nop
    member_set              5, 1, 0
    sleep                   10, 13
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  250, 4, 0, 1, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, 4974, -6474
    plc_rot                 0, 200
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    plc_motion              1, 3, 0
    nop
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    cut_chg                 4
    cut_auto                1
    evt_end                 0

.proc main_0C
    if                      0, off_2414
    ck                      5, 2, 1
    se_on                   2, 14, 0, -7860, -1800, -7261
    set                     5, 2, 0
    else                    0, off_2422

off_2414:
    se_on                   2, 10, 0, -7860, -1800, -7261
    nop
    nop

off_2422:
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 30
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 16
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 8
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 4
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 2
    member_set2             11, 16
    nop
    evt_next
    set                     5, 3, 0
    nop
    evt_end                 0

.proc main_0D
    if                      0, off_2492
    ck                      4, 61, 1
    se_on                   2, 10, 0, -7902, -1800, -11264
    endif
    nop

off_2492:
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 30
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 16
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 8
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 4
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_ADD, 16, 2
    member_set2             11, 16
    nop
    evt_next
    set                     5, 4, 0
    nop
    evt_end                 0

.proc main_0E
    set                     2, 7, 1
    set                     1, 27, 1
    cut_auto                0
    set                     2, 2, 1
    if                      0, off_2588
    ck                      4, 114, 1
    if                      0, off_2544
    ck                      6, 79, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              2, 1, 0
    member_set              3, 2, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -13615, 0, -3500
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_2544:
    if                      0, off_2586
    ck                      6, 80, 0
    work_set                WK_ENEMY, 1
    nop
    member_set              2, 1, 0
    member_set              3, 2, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -10385, 0, -8773
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_2586:
    endif
    nop

off_2588:
    work_set                WK_OBJECT, 4
    nop
    super_set               0, 64, 139, 85, 184, 34, 0, 2048, 192
    sca_id_set              21, 0, 220
    sca_id_set              16, 0, 220
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -6593, 0, -3926
    dir_set                 0, 0, 3440, 0
    plc_motion              0, 15, 0
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 20
    se_on                   2, 13, 0, -6593, 0, -3926
    nop_8a                  0, 1, 0, 5, 0
    nop_8a                  0, 1, 0, 10, 0
    nop_8a                  0, 1, 0, 20, 0
    nop_8a                  0, 1, 0, 30, 0
    sleep                   10, 44
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  255, 2, 0, 2, 0
    nop_8b                  100, 5, 0, 4, 0
    nop_8c                  0, 80, 50, 15, 0, 9, 0
    nop_8b                  200, 3, 0, 30, 0
    evt_exec                255, I_GOSUB, main_0F
    sleep                   10, 11
    evt_exec                255, I_GOSUB, main_10
    sleep                   10, 55
    aot_reset               2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 216, 215, 0, 0, 197, 188
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_05, 0, 0
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     1, 27, 0
    sce_item_lost           75
    aot_on                  12
    evt_next
    work_set                WK_OBJECT, 4
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    set                     2, 7, 0
    set                     2, 2, 0
    if                      0, off_268A
    ck                      6, 79, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    endif
    nop

off_268A:
    if                      0, off_26B4
    ck                      6, 80, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    endif
    nop

off_26B4:
    evt_end                 0

.proc main_0F
    work_set                WK_OBJECT, 3
    nop
    se_on                   2, 12, 0, -6593, 0, -3926
    for                     0, off_26DE, 32
    member_copy             16, 16
    nop
    calc                    0, OP_SUB, 16, 34
    member_set2             16, 16
    nop
    evt_next
    nop
    next                    0

off_26DE:
    evt_end                 0

.proc main_10
    work_set                WK_PLAYER, 0
    nop
    for                     0, off_270A, 20
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 23
    member_set2             11, 16
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 33
    member_set2             13, 16
    nop
    evt_next
    nop
    next                    0

off_270A:
    evt_end                 0

.proc main_11
    sca_id_set              17, 0, 0
    sca_id_set              20, 0, 0
    aot_set                 0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6638, -3897, 2270, 2270, 255, 0, I_GOSUB, main_05, 0, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16776, -12232, 2870, 2040, -6434, 0, -12495, -15416, 1, 25, 2, 0, 26, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6638, -3897, 2270, 2270, -10280, 0, -17211, -1999, 2, 2, 0, 0, 22, 5, 0, 0, UNLOCKED, 0
    sce_em_set              0, 0, ENEMY_CEREBRUS, 2, 0, 0, 12, 0, 106, -14399, 0, -5254, 3800, 0, 0
    sce_em_set              0, 1, ENEMY_CEREBRUS, 2, 0, 0, 12, 0, 107, -10460, 0, -14175, 3139, 0, 0
    sce_em_set              0, 2, ENEMY_CEREBRUS, 2, 0, 0, 12, 0, 137, -14200, 0, -9100, 0, 0, 0
    evt_end                 0

.proc main_12
    message_on              0, 3, 0, 255, 255
    evt_next
    nop
    if                      0, off_27C0
    ck                      11, 31, 0
    aot_on                  2
    endif
    nop

off_27C0:
    evt_end                 0
    db                      0x28, 0x80
