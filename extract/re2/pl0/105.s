.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 22000, -18199, 1800, 2200, -25840, 0, -480, 0, 0, 6, 0, 0, 8, 0, 0, 138, ITEM_CABINKEY, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 11470, -11500, 2400, 1800, 26542, 0, -26275, -1000, 0, 4, 6, 0, 10, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    set                     19, 1, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13930, -15730, 800, 1300, ITEM_CABINKEY, 1, 4, 0, 160
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8560, -27380, 9400, 1800, 2, 0, 0, 0, 255, 255
    sce_em_set              0, 0, ENEMY_ZOMBIE_COP, 0, 0, 0, 7, 131, 25, 16750, 0, -18650, 3072, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_COP, 0, 0, 0, 7, 131, 26, 13550, 0, -7500, 200, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_COP, 6, 0, 0, 8, 131, 27, 13200, 0, -5800, 3432, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -13340, -1400, -15170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    gosub                   main_03
    evt_end                 0

.proc aot
    if                      0, off_12AA
    ck                      FG_GAME, 11, 1
    gosub                   main_03
    endif
    nop

off_12AA:
    if                      0, off_132A
    cmp                     0, V_CUT, CMP_EQ, 0
    ck                      FG_GENERAL_2, 10, 0
    if                      0, off_12EE
    ck                      FG_ENEMY, 26, 0
    work_set                WK_ENEMY, 1
    nop
    member_set              7, 0, 0
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, 13550, 0, -7500
    dir_set                 0, 0, 1200, 0
    member_set              31, 0, 0
    endif
    nop

off_12EE:
    if                      0, off_1324
    ck                      FG_ENEMY, 27, 0
    work_set                WK_ENEMY, 2
    nop
    member_set              7, 0, 0
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, 13200, 0, -5800
    dir_set                 0, 0, 1067, 0
    member_set              31, 0, 0
    endif
    nop

off_1324:
    set                     FG_GENERAL_2, 10, 1
    endif
    nop

off_132A:
    if                      0, off_13A8
    ck                      FG_GAME, 11, 1
    ck                      FG_GENERAL_2, 10, 1
    if                      0, off_136C
    ck                      FG_ENEMY, 26, 0
    work_set                WK_ENEMY, 1
    nop
    member_set              7, 0, 0
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -3890, 0, -14483
    dir_set                 0, 0, 200, 0
    member_set              31, 0, 0
    endif
    nop

off_136C:
    if                      0, off_13A2
    ck                      FG_ENEMY, 27, 0
    work_set                WK_ENEMY, 2
    nop
    member_set              7, 0, 0
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -4444, 0, -18818
    dir_set                 0, 0, 3432, 0
    member_set              31, 0, 0
    endif
    nop

off_13A2:
    set                     FG_GENERAL_2, 10, 0
    endif
    nop

off_13A8:
    evt_end                 0

.proc main_02
    if                      0, off_13F4
    ck                      FG_GENERAL_1, 2, 0
    if                      0, off_13DE
    ck                      FG_ITEM, 4, 1
    message_on              0, 1, 0, 255, 255
    se_on                   2, 37, 0, 10267, -1800, -13158
    set                     FG_GENERAL_1, 2, 1
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 16, 155, 0, 0, 32, 254
    else                    0, off_13F2

off_13DE:
    message_on              0, 0, 0, 255, 255
    se_on                   2, 22, 0, 10267, -1800, -13158
    nop
    nop

off_13F2:
    endif
    nop

off_13F4:
    evt_end                 0

.proc main_03
    switch                  26, off_1476
    case                    0, off_1400, 0

off_1400:
    case                    0, off_141A, 5
    sce_bgm_control         0, 0, 1, 0, 64
    sce_bgm_control         0, 0, 2, 60, 65
    sce_bgm_control         0, 0, 3, 60, 65
    break                   0

off_141A:
    case                    0, off_1420, 1

off_1420:
    case                    0, off_143A, 2
    sce_bgm_control         0, 0, 1, 0, 40
    sce_bgm_control         0, 0, 2, 60, 65
    sce_bgm_control         0, 0, 3, 60, 65
    break                   0

off_143A:
    case                    0, off_1440, 3

off_1440:
    case                    0, off_145A, 4
    sce_bgm_control         0, 0, 1, 0, 90
    sce_bgm_control         0, 0, 2, 60, 65
    sce_bgm_control         0, 0, 3, 60, 65
    break                   0

off_145A:
    case                    0, off_1474, 6
    sce_bgm_control         0, 0, 1, 0, 65
    sce_bgm_control         0, 0, 2, 50, 65
    sce_bgm_control         0, 0, 3, 50, 65
    break                   0

off_1474:
    eswitch                 0

off_1476:
    evt_end                 0
