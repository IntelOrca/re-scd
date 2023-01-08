.version 2
.init
.proc init_00
    if                      0, off_1288
    ck                      4, 254, 1
    set                     4, 54, 0
    set                     4, 65, 0
    set                     8, 50, 0
    set                     6, 88, 0
    set                     6, 89, 0
    set                     6, 90, 0
    set                     6, 107, 0
    endif
    nop

off_1288:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24453, -10494, 3940, 1190, 1652, 0, -15558, -25728, 1, 17, 5, 0, 27, 2, 0, 0, UNLOCKED, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18507, -23529, 1500, 2570, ITEM_REDCARD, 1, 50, 255, 0
    if                      0, off_15E0
    ck                      1, 1, 0
    if                      0, off_1470
    ck                      4, 54, 0
    if                      0, off_1352
    ck                      0, 25, 0
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY1, 2, 64, 0, 3, 0, 89, -23961, 0, -14187, 1216, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIEGUY1, 4, 64, 0, 4, 0, 90, -26002, 0, -20008, 3040, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEGUY1, 4, 64, 0, 4, 0, 107, -20945, 0, -13538, 1248, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    else                    0, off_13F4

off_1352:
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY1, 2, 64, 0, 3, 0, 89, -25120, 0, -15435, 1568, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIEGUY1, 4, 64, 0, 4, 0, 90, -26002, 0, -20008, 3040, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEGUY1, 4, 64, 0, 4, 0, 107, -20945, 0, -13538, 1248, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIEGUY1, 4, 64, 0, 4, 0, 213, -23709, 0, -13572, 80, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    nop
    nop

off_13F4:
    sce_em_set              0, 0, ENEMY_ZOMBIEGUY1, 10, 64, 0, 3, 0, 88, 22255, 0, 24774, 3104, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIEGUY1, 2, 64, 0, 0, 0, 255, -24030, -1300, -19514, 3160, 0, 0
    work_set                WK_ENEMY, 5
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    aot_set                 1, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -19727, -26079, 3700, 6200, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -21787, -1812, -23774, 0, -960, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1582

off_1470:
    set                     5, 3, 1
    if                      0, off_14C2
    ck                      0, 25, 0
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY1, 0, 0, 0, 3, 0, 89, -25648, 0, -21913, -867, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIEGUY1, 0, 0, 0, 4, 0, 90, -22941, 0, -16735, -1547, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEGUY1, 0, 0, 0, 4, 0, 107, -24790, 0, -13826, -587, 0, 0
    else                    0, off_151C

off_14C2:
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY1, 0, 0, 0, 3, 0, 89, -25120, 0, -15435, 1568, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIEGUY1, 0, 0, 0, 4, 0, 90, -26002, 0, -20008, 3040, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEGUY1, 0, 0, 0, 4, 0, 107, -20945, 0, -13538, 1248, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIEGUY1, 0, 0, 0, 4, 0, 213, -23709, 0, -13572, 80, 0, 0
    nop
    nop

off_151C:
    sce_em_set              0, 0, ENEMY_ZOMBIEGUY1, 0, 0, 0, 3, 0, 88, -21165, 0, -22238, -1667, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIEGUY1, 2, 64, 0, 0, 0, 255, -24030, -1300, -19514, 3160, 0, 0
    work_set                WK_ENEMY, 5
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -21787, 0, -23774, -1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1582:
    if                      0, off_15B4
    ck                      4, 65, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -19992, -1820, -23763, 0, -896, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_15DC

off_15B4:
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -19992, 0, -23763, -1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_15DC:
    else                    0, off_165A

off_15E0:
    sce_em_set              0, 6, ENEMY_LICKERRED, 0, 0, 0, 14, 0, 88, -25302, 0, -20949, -7184, 0, 0
    sce_em_set              0, 7, ENEMY_LICKERRED, 2, 5, 0, 14, 0, 89, -23957, -7200, -16198, 3136, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -19992, 0, -23763, -1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -21787, 0, -23774, -1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_165A:
    evt_end                 0

.main
.proc main_00
    gosub                   3
    evt_end                 0

.proc main_01
    gosub                   4
    evt_end                 0

.proc main_02
    sce_bgmtbl_set          0, 21, 2, 255, 0
    evt_end                 0

.proc main_03
    if                      0, off_16BA
    ck                      1, 1, 0
    if                      0, off_16B6
    ck                      4, 54, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18507, -23529, 1500, 2570, 255, 0, I_GOSUB, main_05, 0, 0
    endif
    nop

off_16B6:
    else                    0, off_16DA

off_16BA:
    if                      0, off_16D8
    ck                      8, 50, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18507, -23529, 1500, 2570, 255, 0, I_GOSUB, main_06, 0, 0
    endif
    nop

off_16D8:
    nop
    nop

off_16DA:
    evt_end                 0

.proc main_04
    if                      0, off_17A2
    ck                      1, 1, 0
    if                      0, off_1702
    ck                      4, 65, 0
    if                      0, off_1700
    cmp                     0, 1, CMP_EQ, 1
    set                     4, 65, 1
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_1700:
    endif
    nop

off_1702:
    if                      0, off_1754
    ck                      0, 25, 0
    if                      0, off_1750
    ck                      6, 88, 1
    if                      0, off_174E
    ck                      6, 89, 1
    if                      0, off_174C
    ck                      6, 90, 1
    if                      0, off_174A
    ck                      6, 107, 1
    if                      0, off_1748
    ck                      5, 3, 0
    if                      0, off_1746
    ck                      5, 2, 0
    set                     5, 2, 1
    sce_bgm_control         1, 5, 0, 0, 0
    endif
    nop

off_1746:
    endif
    nop

off_1748:
    endif
    nop

off_174A:
    endif
    nop

off_174C:
    endif
    nop

off_174E:
    endif
    nop

off_1750:
    else                    0, off_17A0

off_1754:
    if                      0, off_179E
    ck                      6, 88, 1
    if                      0, off_179C
    ck                      6, 89, 1
    if                      0, off_179A
    ck                      6, 90, 1
    if                      0, off_1798
    ck                      6, 107, 1
    ck                      6, 213, 1
    if                      0, off_1796
    ck                      5, 3, 0
    if                      0, off_1794
    ck                      5, 2, 0
    set                     5, 2, 1
    sce_bgm_control         1, 5, 0, 0, 0
    endif
    nop

off_1794:
    endif
    nop

off_1796:
    endif
    nop

off_1798:
    endif
    nop

off_179A:
    endif
    nop

off_179C:
    endif
    nop

off_179E:
    nop
    nop

off_17A0:
    endif
    nop

off_17A2:
    evt_end                 0

.proc main_05
    set                     2, 7, 1
    if                      0, off_17FA
    ck                      8, 50, 0
    se_on                   2, 296, 0, -18623, -1800, -22059
    aot_on                  3
    evt_next
    nop
    if                      0, off_17F8
    ck                      8, 50, 1
    set                     4, 54, 1
    cut_chg                 5
    cut_replace             4, 5
    cut_auto                1
    nop
    if                      0, off_17E4
    ck                      0, 25, 0
    evt_exec                255, I_GOSUB, main_07
    else                    0, off_17EA

off_17E4:
    evt_exec                255, I_GOSUB, main_08
    nop
    nop

off_17EA:
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    gosub                   2
    endif
    nop

off_17F8:
    endif
    nop

off_17FA:
    set                     2, 7, 0
    evt_end                 0

.proc main_06
    set                     2, 7, 1
    set                     2, 2, 1
    if                      0, off_1822
    ck                      8, 50, 0
    se_on                   2, 296, 0, -18623, -1800, -22059
    aot_on                  3
    evt_next
    nop
    endif
    nop

off_1822:
    set                     2, 2, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_07
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_0A
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -22000, -150, -24100
    member_set              23, 1, 0
    evt_exec                255, I_GOSUB, main_09
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 15
    sce_bgm_control         1, 1, 0, 0, 0
    sleep                   10, 60
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 60
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    evt_end                 0

.proc main_08
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_0A
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -22000, -150, -24100
    member_set              23, 1, 0
    evt_exec                255, I_GOSUB, main_09
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 15
    sce_bgm_control         1, 1, 0, 0, 0
    sleep                   10, 30
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 30
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 30
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    evt_end                 0

.proc main_09
    work_set                WK_ENEMY, 0
    nop
    sleep                   10, 20
    se_on                   3, 13, 3, 0, 0, 0
    sleep                   10, 80
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             0, 16
    nop
    se_on                   2, 13, 0, -22255, 0, -24774
    for                     0, off_19F6, 38
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 4
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_19F6:
    member_set              12, 0, 0
    evt_end                 0

.proc main_0A
    se_on                   2, 14, 0, -22505, -1800, -23002
    evt_exec                255, I_GOSUB, main_0B
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_0C
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, 1
    nop
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  250, 5, 0, 0, 0
    nop_8c                  0, 250, 20, 10, 0, 5, 0
    save                    7, 0
    for                     0, off_1A56, 15
    member_copy             16, 14
    nop
    calc2                   OP_ADD, 16, 7
    member_set2             14, 16
    nop
    copy                    16, 7
    nop
    calc                    0, OP_SUB, 16, 10
    copy                    7, 16
    nop
    evt_next
    nop
    next                    0

off_1A56:
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, 1
    nop
    save                    5, 0
    for                     0, off_1A84, 7
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

off_1A84:
    se_on                   2, 11, 0, -22505, 0, -23002
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  250, 5, 0, 0, 0
    nop_8c                  0, 250, 50, 10, 0, 5, 0
    member_set              12, 0, 0
    member_set              15, 0, 252
    member_set              14, 246, 251
    evt_next
    nop
    member_set              14, 0, 252
    evt_next
    nop
    member_set              14, 10, 252
    evt_next
    nop
    member_set              14, 251, 251
    evt_next
    nop
    member_set              14, 0, 252
    evt_next
    nop
    member_set              14, 5, 252
    evt_next
    nop
    member_set              14, 254, 251
    evt_next
    nop
    member_set              14, 0, 252
    evt_next
    nop
    member_set              14, 2, 252
    evt_next
    nop
    member_set              14, 255, 251
    evt_next
    nop
    member_set              14, 0, 252
    evt_next
    nop
    member_set              14, 1, 252
    evt_next
    nop
    member_set              14, 0, 252
    evt_next
    nop
    evt_end                 0

.proc main_0D
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_0F
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_10
    evt_end                 0

.proc main_0E
    se_on                   2, 10, 0, -20776, -1800, -23022
    nop_8a                  0, 1, 0, 0, 0
    nop_8c                  0, 150, 20, 10, 0, 0, 0
    work_set                WK_OBJECT, 0
    nop
    for                     0, off_1B48, 20
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 10
    member_set2             15, 16
    nop
    evt_next
    nop
    next                    0

off_1B48:
    evt_end                 0

.proc main_0F
    work_set                WK_OBJECT, 0
    nop
    save                    7, 0
    for                     0, off_1B76, 15
    member_copy             16, 14
    nop
    calc2                   OP_ADD, 16, 7
    member_set2             14, 16
    nop
    copy                    16, 7
    nop
    calc                    0, OP_SUB, 16, 10
    copy                    7, 16
    nop
    evt_next
    nop
    next                    0

off_1B76:
    evt_end                 0

.proc main_10
    work_set                WK_OBJECT, 0
    nop
    save                    5, 0
    for                     0, off_1BA4, 6
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

off_1BA4:
    se_on                   2, 11, 0, -20776, 0, -23022
    nop_8a                  0, 3, 0, 1, 0
    nop_8b                  250, 3, 0, 1, 0
    nop_8c                  0, 150, 50, 10, 0, 6, 0
    member_set              12, 0, 0
    member_set              15, 0, 252
    member_set              14, 246, 251
    evt_next
    nop
    member_set              14, 0, 252
    evt_next
    nop
    member_set              14, 10, 252
    evt_next
    nop
    member_set              14, 251, 251
    evt_next
    nop
    member_set              14, 0, 252
    evt_next
    nop
    member_set              14, 5, 252
    evt_next
    nop
    member_set              14, 254, 251
    evt_next
    nop
    member_set              14, 0, 252
    evt_next
    nop
    member_set              14, 2, 252
    evt_next
    nop
    member_set              14, 255, 251
    evt_next
    nop
    member_set              14, 0, 252
    evt_next
    nop
    member_set              14, 1, 252
    evt_next
    nop
    member_set              14, 0, 252
    evt_next
    nop
    evt_end                 0
