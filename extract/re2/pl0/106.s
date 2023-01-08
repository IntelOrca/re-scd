.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27965, -1451, 1230, 2190, 19377, 0, -16004, 2240, 0, 5, 1, 0, 8, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16697, -1517, 990, 2300, -14680, 0, -49, 0, 0, 7, 0, 0, 8, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    gosub                   2
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26503, 3301, 1000, 1000, ITEM_INKRIBBON, 3, 7, 3, 0
    if                      0, off_0C72
    ck                      1, 1, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24943, 5291, 1170, 1190, ITEM_VALVEHANDLE, 1, 8, 4, 1
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26453, 4331, 1590, 1030, ITEM_HANDGUNAMMO, 15, 9, 5, 0
    else                    0, off_0C8A

off_0C72:
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26453, 4331, 1590, 1030, ITEM_HANDGUNAMMO, 15, 9, 5, 0
    nop
    nop

off_0C8A:
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -25848, -1540, 3614, 0, -832, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -26300, -1540, 4950, 0, -832, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_0D06
    ck                      1, 1, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -24782, 0, 6326, 0, 192, 576, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0D06:
    evt_end                 0

.proc main_01
    gosub                   3
    evt_end                 0

.proc main_02
    if                      0, off_0D1A
    ck                      1, 1, 0
    set                     4, 10, 1
    endif
    nop

off_0D1A:
    aot_set                 5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22581, 598, 1800, 4600, 0, 0, 0, 0, 255, 255
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20881, 4898, 3210, 1050, 1, 0, 0, 0, 255, 255
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18011, 1898, 2110, 3350, 2, 0, 0, 0, 255, 255
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27922, 1371, 1200, 2000, 3, 0, 0, 0, 255, 255
    aot_set                 9, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26503, 3301, 1000, 1000, 13, 0, 0, 0, 0, 0
    if                      0, off_0E72
    ck                      4, 1, 0
    if                      0, off_0DBA
    ck                      4, 10, 0
    aot_set                 10, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -27557, 2751, 4750, 4760, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 11, SCE_AUTO, SAT_AUTO, 0, 0, -27157, 451, 4650, 1460, 0, 0, 0, 0, 0, 0
    else                    0, off_0DD0

off_0DBA:
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0B, 0, 0
    aot_reset               8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    nop
    nop

off_0DD0:
    sce_em_set              0, 0, ENEMY_ZOMBIEGUY1, 0, 128, 0, 5, 0, 66, 32000, 0, 32000, 0, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIEGIRL, 0, 128, 0, 10, 0, 67, 32000, 0, 30000, 0, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, 32000, 0, 30000, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 49152, 0, 10, 0, 100, -1930, -2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 49152, 0, 10, 0, -100, -1930, -2040, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0ED4

off_0E72:
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, 0, 0, 255, 255
    aot_reset               8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    sce_em_set              0, 0, ENEMY_ZOMBIEGUY1, 0, 0, 0, 5, 0, 66, -26174, 0, -178, 1208, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIEGIRL, 0, 0, 0, 10, 0, 67, -23477, 0, 2299, 920, 0, 0
    if                      0, off_0EC2
    ck                      6, 66, 1
    ck                      6, 67, 1
    else                    0, off_0ED2

off_0EC2:
    aot_reset               9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, 0, 0, 255, 255
    set                     5, 1, 1
    nop
    nop

off_0ED2:
    nop
    nop

off_0ED4:
    evt_end                 0

.proc main_03
    if                      0, off_0EF2
    ck                      5, 0, 1
    ck                      6, 66, 1
    ck                      6, 67, 1
    set                     5, 0, 0
    sce_bgm_control         1, 5, 0, 90, 65
    endif
    nop

off_0EF2:
    if                      0, off_0F0E
    ck                      5, 1, 1
    ck                      6, 66, 1
    ck                      6, 67, 1
    aot_reset               9, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 13, 0, 0, 0, 0, 0
    endif
    nop

off_0F0E:
    evt_end                 0

.proc main_04
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               11, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_05, 0, 0
    evt_end                 0

.proc main_05
    set                     4, 10, 1
    aot_reset               11, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0B, 0, 0
    aot_reset               8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    se_on                   2, 266, 0, -30500, -1800, 1341
    sleep                   10, 30
    se_on                   2, 267, 0, -30500, -1800, 1341
    sleep                   10, 30
    if                      0, off_0F84

off_0F6C:
    cmp                     0, 29, CMP_GE, 32000
    se_on                   2, 267, 0, -30500, -1800, 1341
    sleep                   10, 90
    endif
    nop

off_0F84:
    sleep                   10, 90
    goto                    255, 255, 0, off_0F6C
    evt_end                 0

.proc main_06
    evt_exec                255, I_GOSUB, main_07
    sleep                   10, 30
    set                     5, 0, 1
    sce_bgm_control         1, 1, 0, 90, 65
    evt_exec                255, I_GOSUB, main_09
    evt_end                 0

.proc main_07
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    pos_set                 0, -23113, 0, -267
    member_set              15, 48, 0
    save                    4, 0
    save                    5, 0
    gosub                   8
    sleep                   10, 10
    member_set              2, 8, 0
    member_set              3, 1, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    member_set              20, 132, 190
    member_set              21, 185, 255
    for                     0, off_1030, 32
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1028
    copy                    4, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 4
    copy                    5, 16
    nop
    gosub                   8
    evt_next
    nop
    next                    0

off_1030:
    evt_end                 0

.proc main_08
    save                    6, 0
    for                     0, off_1068, 15
    work_copy               4, 8, 1
    work_copy               6, 2, 0
    parts_set               0, 0, 0, 0
    work_copy               5, 8, 1
    work_copy               6, 2, 0
    parts_set               0, 0, 1, 0
    copy                    16, 6
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    6, 16
    nop
    next                    0

off_1068:
    evt_end                 0

.proc main_09
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    pos_set                 0, -23637, 0, 252
    member_set              15, 185, 15
    save                    7, 0
    save                    8, 0
    gosub                   10
    sleep                   10, 10
    member_set              2, 8, 0
    member_set              3, 1, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    member_set              20, 132, 190
    member_set              21, 185, 255
    for                     0, off_10F2, 32
    copy                    16, 7
    nop
    calc                    0, OP_ADD, 16, 1028
    copy                    7, 16
    nop
    copy                    16, 8
    nop
    calc                    0, OP_ADD, 16, 4
    copy                    8, 16
    nop
    gosub                   10
    evt_next
    nop
    next                    0

off_10F2:
    evt_end                 0

.proc main_0A
    save                    9, 0
    for                     0, off_112A, 15
    work_copy               7, 8, 1
    work_copy               9, 2, 0
    parts_set               0, 0, 0, 0
    work_copy               8, 8, 1
    work_copy               9, 2, 0
    parts_set               0, 0, 1, 0
    copy                    16, 9
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    9, 16
    nop
    next                    0

off_112A:
    evt_end                 0

.proc main_0B
    set                     2, 7, 1
    set                     4, 1, 1
    aot_reset               9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, 0, 0, 255, 255
    set                     5, 1, 1
    sca_id_set              6, 0, 0
    sce_fade_set            0, 2, 7, 0, 4
    sleep                   10, 32
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -21450, 550, -630
    member_set              15, 0, 8
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 32000, 0, 30000
    cut_chg                 4
    sce_fade_set            0, 2, 7, 0, 252
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_0D
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 5
    se_on                   2, 268, 4, 0, 0, 0
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_0C
    sleep                   10, 30
    evt_exec                255, I_GOSUB, main_06
    sleep                   10, 38
    evt_exec                255, I_GOSUB, main_0F
    sleep                   10, 95
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 32000, 0, 32000
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -22146, 0, -744
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -25427, 0, -1262
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             0, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    member_set              2, 1, 0
    member_set              3, 0, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -26602, 0, -54
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             0, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    member_set              2, 1, 0
    member_set              3, 0, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    cut_chg                 0
    cut_auto                1
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, 0, 0, 255, 255
    sca_id_set              6, 0, 252
    set                     2, 7, 0
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, 0
    nop
    speed_set               4, 12
    speed_set               10, -2
    for                     0, off_126A, 2
    add_speed
    evt_next
    add_speed
    evt_next
    add_speed
    evt_next
    add_speed
    evt_next
    add_aspeed
    add_aspeed
    next                    0

off_126A:
    add_speed
    evt_next
    add_speed
    evt_next
    add_aspeed
    add_aspeed
    sleep                   10, 9
    speed_set               0, 0
    speed_set               10, 2
    speed_set               4, 0
    for                     0, off_1292, 2
    add_aspeed
    add_aspeed
    add_speed
    evt_next
    add_speed
    evt_next
    add_speed
    evt_next
    evt_next
    nop
    next                    0

off_1292:
    for                     0, off_12A4, 7
    add_aspeed
    add_aspeed
    add_speed
    evt_next
    add_speed
    evt_next
    add_speed
    evt_next
    add_speed
    evt_next
    next                    0

off_12A4:
    speed_set               10, -4
    for                     0, off_12BA, 2
    add_aspeed
    add_aspeed
    add_speed
    evt_next
    add_speed
    evt_next
    add_speed
    evt_next
    add_speed
    evt_next
    next                    0

off_12BA:
    add_aspeed
    add_aspeed
    add_speed
    evt_next
    add_speed
    evt_next
    for                     0, off_12D2, 2
    add_aspeed
    add_aspeed
    add_speed
    evt_next
    add_speed
    evt_next
    add_speed
    evt_next
    evt_next
    nop
    next                    0

off_12D2:
    evt_end                 0

.proc main_0D
    work_set                WK_OBJECT, 1
    nop
    speed_set               3, 100
    for                     0, off_12E6, 15
    add_speed
    evt_next
    next                    0

off_12E6:
    evt_end                 0

.proc main_0E
    work_set                WK_OBJECT, 2
    nop
    speed_set               3, 100
    for                     0, off_12FA, 15
    add_speed
    evt_next
    next                    0

off_12FA:
    evt_end                 0

.proc main_0F
    work_set                WK_OBJECT, 0
    nop
    speed_set               0, 0
    speed_set               6, 10
    for                     0, off_1314, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1314:
    for                     0, off_131E, 10
    add_speed
    evt_next
    next                    0

off_131E:
    for                     0, off_1328, 20
    add_speed
    evt_next
    next                    0

off_1328:
    evt_end                 0

.proc main_10
    sce_bgmtbl_set          0, 6, 1, 255, 0
    evt_end                 0
