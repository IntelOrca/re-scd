.version 2
.init
.proc init_00
    if                      0, off_1260
    ck                      4, 254, 1
    set                     4, 57, 0
    set                     6, 98, 0
    set                     4, 58, 0
    endif
    nop

off_1260:
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -10032, -18754, 2600, 1380, -14538, 0, -16449, -24671, 2, 0, 3, 0, 22, 4, 0, 0, UNLOCKED, 0
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -19722, 2276, 2630, 1730, -16715, -1800, -17145, -960, 2, 10, 0, 1, 22, 4, 0, 0, UNLOCKED, 0
    obj_model_set           0, 0, 0, 0, 0, 3, 0, 10, 16, -18592, -5400, 2899, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main_00
    gosub                   17
    if                      0, off_1384
    ck                      1, 3, 1
    if                      0, off_1344
    ck                      1, 1, 0
    if                      0, off_1328
    cmp                     0, 26, CMP_EQ, 0
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 1, 32, 0, 255, -7634, -5400, -16765, 3072, 0, 0
    else                    0, off_1340

off_1328:
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 1, 32, 0, 255, -17875, -5400, 393, 12261, 0, 0
    nop
    nop

off_1340:
    else                    0, off_1382

off_1344:
    if                      0, off_1368
    cmp                     0, 26, CMP_EQ, 0
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 12, 1, 32, 0, 255, -7634, -5400, -16765, 3072, 0, 0
    else                    0, off_1380

off_1368:
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 12, 1, 32, 0, 255, -17875, -5400, 393, 12261, 0, 0
    nop
    nop

off_1380:
    nop
    nop

off_1382:
    endif
    nop

off_1384:
    if                      0, off_13C2
    ck                      4, 58, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -16172, 2776, 2120, 1640, 255, 0, I_GOSUB, main_04, 0, 0
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    sca_id_set              15, 0, 0
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 84, 217
    endif
    nop

off_13C2:
    if                      0, off_13D0
    ck                      1, 1, 0
    gosub                   5
    else                    0, off_13D4

off_13D0:
    gosub                   6
    nop
    nop

off_13D4:
    if                      0, off_13E2
    ck                      6, 98, 1
    set                     5, 6, 1
    endif
    nop

off_13E2:
    evt_end                 0

.proc main_01
    if                      0, off_142C
    ck                      4, 57, 0
    if                      0, off_1410
    ck                      1, 1, 0
    if                      0, off_140A
    cmp                     0, 26, CMP_EQ, 1
    set                     4, 57, 1
    evt_exec                255, I_GOSUB, main_0A
    else                    0, off_140C

off_140A:
    nop
    nop

off_140C:
    else                    0, off_142A

off_1410:
    if                      0, off_1426
    cmp                     0, 26, CMP_EQ, 1
    set                     4, 57, 1
    evt_exec                255, I_GOSUB, main_0B
    else                    0, off_1428

off_1426:
    nop
    nop

off_1428:
    nop
    nop

off_142A:
    endif
    nop

off_142C:
    if                      0, off_1466
    ck                      6, 98, 1
    if                      0, off_1464
    ck                      5, 6, 0
    if                      0, off_1462
    ck                      5, 5, 0
    set                     5, 5, 1
    sce_bgm_control         0, 5, 0, 0, 0
    if                      0, off_145C
    ck                      1, 1, 0
    gosub                   2
    else                    0, off_1460

off_145C:
    gosub                   3
    nop
    nop

off_1460:
    endif
    nop

off_1462:
    endif
    nop

off_1464:
    endif
    nop

off_1466:
    evt_end                 0

.proc main_02
    sce_bgmtbl_set          0, 9, 3, 12031, 0
    evt_end                 0

.proc main_03
    sce_bgmtbl_set          0, 9, 3, 12031, 0
    evt_end                 0

.proc main_04
    if                      0, off_1490
    ck                      6, 98, 0
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    else                    0, off_159A

off_1490:
    if                      0, off_1598
    ck                      4, 58, 0
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    if                      0, off_1596
    ck                      11, 31, 0
    se_on                   2, 11, 0, -15014, -6000, 2881
    set                     4, 58, 1
    sca_id_set              15, 0, 252
    sleep                   10, 20
    se_on                   2, 12, 0, -17421, -6000, 2881
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 3, 0, 0, 0
    nop_8b                  100, 47, 0, 3, 0
    nop_8c                  0, 255, 150, 7, 0, 50, 0
    work_set                WK_OBJECT, 0
    nop
    for                     0, off_1502, 50
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 90
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_1502:
    member_copy             16, 15
    nop
    calc                    0, OP_SUB, 16, 20
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 20
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_SUB, 16, 10
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 10
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_SUB, 16, 4
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 4
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_SUB, 16, 2
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 2
    member_set2             15, 16
    nop
    aot_reset               3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 181, 190, 248, 248, 7, 189
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_14, 0, 0
    endif
    nop

off_1596:
    endif
    nop

off_1598:
    nop
    nop

off_159A:
    evt_end                 0

.proc main_05
    if                      0, off_15D4
    ck                      4, 57, 0
    sce_em_set              0, 0, ENEMY_40, 0, 0, 3, 21, 0, 98, -8989, -5500, -1516, 1024, 0, 0
    sce_em_set              0, 1, ENEMY_39, 0, 0, 3, 20, 0, 255, -8989, -5500, -1516, 1024, 0, 0
    else                    0, off_1648

off_15D4:
    if                      0, off_15E4
    ck                      6, 98, 0
    sce_bgm_control         0, 1, 0, 0, 0
    endif
    nop

off_15E4:
    if                      0, off_1646
    ck                      6, 98, 0
    sce_em_set              0, 0, ENEMY_40, 1, 0, 3, 21, 0, 98, -8836, -5400, -9079, 1021, 0, 0
    sce_em_set              0, 1, ENEMY_39, 0, 0, 3, 20, 0, 99, -8836, -5400, -9079, 1021, 0, 0
    sce_em_set              0, 2, ENEMY_39, 3, 0, 3, 20, 0, 129, -8874, -5400, -13257, 1067, 0, 0
    sce_em_set              0, 3, ENEMY_39, 3, 0, 3, 20, 0, 130, -10112, -5400, -14696, 667, 0, 0
    endif
    nop

off_1646:
    nop
    nop

off_1648:
    save                    6, 0
    evt_end                 0

.proc main_06
    if                      0, off_1696
    ck                      4, 57, 0
    sce_em_set              0, 0, ENEMY_48, 0, 0, 3, 24, 0, 98, -9175, -5400, -830, 1080, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 3, 0, 10, 0, -10928, -6153, -5179, 1600, 0, 1027, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_16BE

off_1696:
    if                      0, off_16A6
    ck                      6, 98, 0
    sce_bgm_control         0, 1, 0, 0, 0
    endif
    nop

off_16A6:
    sce_em_set              0, 0, ENEMY_48, 1, 0, 3, 24, 0, 98, -8671, -5400, -9227, 1048, 0, 0
    nop
    nop

off_16BE:
    save                    6, 0
    evt_end                 0

.proc main_07
    if                      0, off_16E0
    ck                      4, 57, 0
    if                      0, off_16DA
    ck                      1, 1, 0
    gosub                   8
    else                    0, off_16DE

off_16DA:
    gosub                   9
    nop
    nop

off_16DE:
    endif
    nop

off_16E0:
    evt_end                 0

.proc main_08
    if                      0, off_16FA
    cmp                     0, 29, CMP_GT, 30000
    se_on                   3, 24, 0, -8989, -5500, -1516
    endif
    nop

off_16FA:
    evt_end                 0

.proc main_09
    if                      0, off_1724
    cmp                     0, 6, CMP_GT, 30
    if                      0, off_171E
    cmp                     0, 29, CMP_GT, 0
    se_on                   3, 4, 0, -9175, -5400, -830
    endif
    nop

off_171E:
    save                    6, 0
    endif
    nop

off_1724:
    copy                    16, 6
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    6, 16
    nop
    evt_end                 0

.proc main_0A
    set                     1, 27, 1
    set                     2, 7, 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -9175, -5400, -830
    dir_set                 0, 0, 1080, 0
    gosub                   12
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -8989, -5500, -1516
    dir_set                 0, 0, 1024, 0
    cut_chg                 6
    evt_next
    sce_bgm_control         0, 1, 0, 0, 0
    nop
    sleep                   10, 136
    xa_on                   0, 47
    xa_vol                  115
    sleep                   10, 264
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -8795, -5700, -1589
    dir_set                 0, 0, 825, 0
    cut_chg                 4
    evt_next
    nop
    xa_on                   0, 48
    sleep                   10, 260
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -8989, -5400, -2016
    dir_set                 0, 0, 1024, 0
    cut_chg                 1
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_0B
    set                     1, 27, 1
    set                     2, 7, 1
    sca_id_set              0, 0, 0
    sca_id_set              1, 0, 0
    sca_id_set              2, 0, 0
    sca_id_set              3, 0, 0
    sca_id_set              4, 0, 0
    sca_id_set              5, 0, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -9175, -5400, -830
    dir_set                 0, 0, 1080, 0
    gosub                   12
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    cut_chg                 6
    sce_bgm_control         0, 1, 0, 0, 0
    sleep                   10, 170
    sleep                   10, 30
    evt_exec                255, I_GOSUB, main_0F
    sleep                   10, 38
    set                     5, 1, 1
    evt_next
    work_set                WK_OBJECT, 1
    pos_set                 0, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -8380, -5400, -6747
    dir_set                 0, 0, 673, 0
    cut_chg                 5
    sleep                   10, 55
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -9785, -5400, -5048
    dir_set                 0, 0, 1029, 0
    cut_chg                 1
    gosub                   13
    cut_chg                 5
    work_set                WK_PLAYER, 0
    plc_stop
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -8380, -5400, -6747
    dir_set                 0, 0, 673, 0
    evt_next
    nop
    xa_on                   0, 46
    sleep                   10, 390
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -8380, -5400, -6747
    sca_id_set              0, 0, 252
    sca_id_set              1, 0, 252
    sca_id_set              2, 0, 92
    sca_id_set              3, 0, 92
    sca_id_set              4, 0, 92
    sca_id_set              5, 16, 252
    cut_chg                 1
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_0C
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 33, -8363, -9696
    plc_neck                2, 0, -320, 1024, 96, 96
    sleep                   10, 40
    plc_neck                5, 3, 0, 0, 96, 96
    sleep                   10, 10
    evt_end                 0

.proc main_0D
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 8, 33, -8920, -18469
    sleep                   10, 30
    evt_end                 0

.proc main_0E
    work_set                WK_OBJECT, 1
    nop
    save                    5, 7
    for                     0, off_192C, 7
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 1
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_192C:
    evt_end                 0

.proc main_0F
    work_set                WK_OBJECT, 1
    nop
    save                    5, 7
    for                     0, off_195A, 7
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 1
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_195A:
    sleep                   10, 10
    save                    5, 5
    save                    4, 5
    for                     0, off_19A4, 5
    member_copy             16, 11
    nop
    calc2                   OP_ADD, 16, 4
    member_set2             11, 16
    nop
    member_copy             16, 12
    nop
    calc2                   OP_SUB, 16, 5
    member_set2             12, 16
    nop
    copy                    16, 4
    nop
    calc                    0, OP_SUB, 16, 1
    copy                    4, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 1
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_19A4:
    sleep                   10, 10
    for                     0, off_19CC, 7
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 5
    member_set2             12, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 1
    copy                    5, 16
    nop
    evt_next
    nop
    next                    0

off_19CC:
    evt_end                 0

.proc main_10
    do                      0, off_19DA
    evt_next
    nop
    edwhile                 off_19DA
    ck                      5, 33, 0

off_19DA:
    evt_end                 0

.proc main_11
    aot_set                 0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -10032, -18754, 2600, 1380, 255, 0, I_GOSUB, main_13, 0, 0
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -19722, 2276, 2630, 1730, 255, 0, I_GOSUB, main_14, 0, 0
    evt_end                 0

.proc main_12
    sce_espr_on             0, 5376, 0, 4096, -15816, -11500, -19500, 0
    sleep                   10, 10
    sce_espr_on             0, 5376, 0, 4096, -15816, -11500, -14560, 0
    sce_espr_on             0, 5376, 0, 4096, -4619, -11500, -8600, 0
    sleep                   10, 10
    sce_espr_on             0, 5376, 0, 4096, -15816, -11500, -9060, 0
    sleep                   10, 10
    evt_end                 0

.proc main_13
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    if                      0, off_1A68
    ck                      11, 31, 0
    aot_on                  2
    endif
    nop

off_1A68:
    evt_end                 0

.proc main_14
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    if                      0, off_1A7E
    ck                      11, 31, 0
    aot_on                  3
    endif
    nop

off_1A7E:
    evt_end                 0
