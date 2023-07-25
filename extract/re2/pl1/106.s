.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27965, -1451, 1230, 2190, 19377, 0, -16004, 2240, 0, 5, 1, 0, 8, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16697, -1517, 990, 2300, -14680, 0, -49, 0, 0, 7, 0, 0, 8, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26503, 3301, 1000, 1000, ITEM_INKRIBBON, 3, 7, 3, 0
    if                      0, off_0C7A
    ck                      FG_GAME, F_SCENARIO, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26453, 4331, 1590, 1030, ITEM_BOWGUN, 18, 11, 7, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24943, 5291, 1170, 1190, ITEM_VALVEHANDLE, 1, 8, 4, 1
    else                    0, off_0C92

off_0C7A:
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26453, 4331, 1590, 1030, ITEM_HANDGUNAMMO, 15, 9, 5, 0
    nop
    nop

off_0C92:
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -25848, -1540, 3614, 0, -832, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_0D10
    ck                      FG_GAME, F_SCENARIO, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -24782, 0, 6326, 0, 192, 576, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 16, -26200, -1540, 4750, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0D38

off_0D10:
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -26300, -1540, 4950, 0, -832, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0D38:
    evt_end                 0

.proc aot
    gosub                   main_03
    evt_end                 0

.proc main_02
    if                      0, off_0D4C
    ck                      FG_GAME, F_SCENARIO, 0
    set                     FG_GENERAL_1, 10, 1
    endif
    nop

off_0D4C:
    aot_set                 5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22581, 598, 1800, 4600, 0, 0, 0, 0, 255, 255
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20881, 4898, 3210, 1050, 1, 0, 0, 0, 255, 255
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18011, 1898, 2110, 3350, 2, 0, 0, 0, 255, 255
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27922, 1371, 1200, 2000, 3, 0, 0, 0, 255, 255
    aot_set                 9, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26503, 3301, 1000, 1000, 13, 0, 0, 0, 0, 0
    if                      0, off_0EA4
    ck                      FG_GENERAL_1, 1, 0
    if                      0, off_0DEC
    ck                      FG_GENERAL_1, 10, 0
    aot_set                 10, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -27557, 2751, 4750, 4760, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 11, SCE_AUTO, SAT_AUTO, 0, 0, -27157, 451, 4650, 1460, 0, 0, 0, 0, 0, 0
    else                    0, off_0E02

off_0DEC:
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0B, 0, 0
    aot_reset               8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    nop
    nop

off_0E02:
    sce_em_set              0, 0, ENEMY_ZOMBIE_GUY1, 0, 128, 0, 5, 0, 66, 32000, 0, 32000, 0, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_GIRL, 0, 128, 0, 10, 0, 67, 32000, 0, 30000, 0, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, 32000, 0, 30000, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 49152, 0, 10, 0, 100, -1930, -2040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 49152, 0, 10, 0, -100, -1930, -2040, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0F06

off_0EA4:
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, 0, 0, 255, 255
    aot_reset               8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    sce_em_set              0, 0, ENEMY_ZOMBIE_GUY1, 0, 0, 0, 5, 0, 66, -26174, 0, -178, 1208, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_GIRL, 0, 0, 0, 10, 0, 67, -23477, 0, 2299, 920, 0, 0
    if                      0, off_0EF4
    ck                      FG_ENEMY, 66, 1
    ck                      FG_ENEMY, 67, 1
    else                    0, off_0F04

off_0EF4:
    aot_reset               9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, 0, 0, 255, 255
    set                     FG_GENERAL_2, 1, 1
    nop
    nop

off_0F04:
    nop
    nop

off_0F06:
    evt_end                 0

.proc main_03
    if                      0, off_0F24
    ck                      FG_GENERAL_2, 0, 1
    ck                      FG_ENEMY, 66, 1
    ck                      FG_ENEMY, 67, 1
    set                     FG_GENERAL_2, 0, 0
    sce_bgm_control         1, 5, 0, 90, 65
    endif
    nop

off_0F24:
    if                      0, off_0F40
    ck                      FG_GENERAL_2, 1, 1
    ck                      FG_ENEMY, 66, 1
    ck                      FG_ENEMY, 67, 1
    aot_reset               9, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 13, 0, 0, 0, 0, 0
    endif
    nop

off_0F40:
    evt_end                 0

.proc main_04
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               11, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_05, 0, 0
    evt_end                 0

.proc main_05
    set                     FG_GENERAL_1, 10, 1
    aot_reset               11, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0B, 0, 0
    aot_reset               8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    se_on                   2, 266, 0, -30500, -1800, 1341
    sleep                   10, 30
    se_on                   2, 267, 0, -30500, -1800, 1341
    sleep                   10, 30

off_0F9A:
    if                      0, off_0FB6
    cmp                     0, V_1D, CMP_GE, 32000
    se_on                   2, 267, 0, -30500, -1800, 1341
    sleep                   10, 90
    endif
    nop

off_0FB6:
    sleep                   10, 90
    goto                    255, 255, 0, off_0F9A
    evt_end                 0

.proc main_06
    evt_exec                255, I_GOSUB, main_07
    sleep                   10, 30
    set                     FG_GENERAL_2, 0, 1
    sce_bgm_control         1, 1, 0, 90, 65
    evt_exec                255, I_GOSUB, main_09
    evt_end                 0

.proc main_07
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -23113, 0, -267
    member_set              15, 48, 0
    save                    V_04, 0
    save                    V_05, 0
    gosub                   main_08
    sleep                   10, 10
    member_set              2, 8, 0
    member_set              3, 1, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             7, V_TEMP
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             7, V_TEMP
    nop
    member_set              20, 132, 190
    member_set              21, 185, 255
    for                     0, off_1062, 32
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1028
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 4
    copy                    V_05, V_TEMP
    nop
    gosub                   main_08
    evt_next
    nop
    next                    0

off_1062:
    evt_end                 0

.proc main_08
    save                    V_06, 0
    for                     0, off_109A, 15
    work_copy               4, 8, 1
    work_copy               6, 2, 0
    parts_set               0, 0, 0, 0
    work_copy               5, 8, 1
    work_copy               6, 2, 0
    parts_set               0, 0, 1, 0
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_06, V_TEMP
    nop
    next                    0

off_109A:
    evt_end                 0

.proc main_09
    work_set                WK_ENEMY, 1
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -23637, 0, 252
    member_set              15, 185, 15
    save                    V_07, 0
    save                    V_08, 0
    gosub                   main_0A
    sleep                   10, 10
    member_set              2, 8, 0
    member_set              3, 1, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             7, V_TEMP
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             7, V_TEMP
    nop
    member_set              20, 132, 190
    member_set              21, 185, 255
    for                     0, off_1124, 32
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1028
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, 4
    copy                    V_08, V_TEMP
    nop
    gosub                   main_0A
    evt_next
    nop
    next                    0

off_1124:
    evt_end                 0

.proc main_0A
    save                    V_09, 0
    for                     0, off_115C, 15
    work_copy               7, 8, 1
    work_copy               9, 2, 0
    parts_set               0, 0, 0, 0
    work_copy               8, 8, 1
    work_copy               9, 2, 0
    parts_set               0, 0, 1, 0
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_09, V_TEMP
    nop
    next                    0

off_115C:
    evt_end                 0

.proc main_0B
    set                     FG_STATE, 7, 1
    set                     FG_GENERAL_1, 1, 1
    aot_reset               9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, 0, 0, 255, 255
    set                     FG_GENERAL_2, 1, 1
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
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             0, V_TEMP
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    member_set              2, 1, 0
    member_set              3, 0, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -26602, 0, -54
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             0, V_TEMP
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    member_set              2, 1, 0
    member_set              3, 0, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    cut_chg                 0
    cut_auto                1
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, 0, 0, 255, 255
    sca_id_set              6, 0, 252
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, 0
    nop
    speed_set               4, 12
    speed_set               10, -2
    for                     0, off_129C, 2
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

off_129C:
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
    for                     0, off_12C4, 2
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

off_12C4:
    for                     0, off_12D6, 7
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

off_12D6:
    speed_set               10, -4
    for                     0, off_12EC, 2
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

off_12EC:
    add_aspeed
    add_aspeed
    add_speed
    evt_next
    add_speed
    evt_next
    for                     0, off_1304, 2
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

off_1304:
    evt_end                 0

.proc main_0D
    work_set                WK_OBJECT, 1
    nop
    speed_set               3, 100
    for                     0, off_1318, 15
    add_speed
    evt_next
    next                    0

off_1318:
    evt_end                 0

.proc main_0E
    work_set                WK_OBJECT, 2
    nop
    speed_set               3, 100
    for                     0, off_132C, 15
    add_speed
    evt_next
    next                    0

off_132C:
    evt_end                 0

.proc main_0F
    work_set                WK_OBJECT, 0
    nop
    speed_set               0, 0
    speed_set               6, 10
    for                     0, off_1346, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1346:
    for                     0, off_1350, 10
    add_speed
    evt_next
    next                    0

off_1350:
    for                     0, off_135A, 20
    add_speed
    evt_next
    next                    0

off_135A:
    evt_end                 0

.proc main_10
    sce_bgmtbl_set          0, 6, 1, 255, 0
    evt_end                 0
