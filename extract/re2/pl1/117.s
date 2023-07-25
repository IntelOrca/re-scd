.version 2

.init
.proc init
    if                      0, off_0CCC
    ck                      FG_GENERAL_1, 254, 1
    set                     FG_GENERAL_1, 55, 1
    set                     FG_GENERAL_1, 56, 0
    set                     FG_ENEMY, 87, 0
    endif
    nop

off_0CCC:
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -28429, -2157, 2030, 2860, -6885, -5400, -12613, -2096, 0, 18, 8, 3, 13, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -28429, -22867, 2030, 3030, -19575, 0, -22685, -2040, 0, 17, 1, 0, 13, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_03
    if                      0, off_0D44
    ck                      FG_GAME, F_SCENARIO, 0
    sce_em_set              0, 1, ENEMY_LICKER_RED, 0, 0, 8, 14, 0, 143, -25545, -14400, -17060, 3016, 0, 0
    endif
    nop

off_0D44:
    evt_end                 0

.proc aot
    gosub                   main_04
    evt_end                 0

.proc main_02
    sce_bgmtbl_set          0, 23, 1, 65285, 0
    evt_end                 0

.proc main_03
    if                      0, off_0E3E
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_0E3C
    ck                      FG_GENERAL_1, 55, 1
    if                      0, off_0DDA
    ck                      FG_GENERAL_1, 56, 0
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    sce_em_set              0, 0, ENEMY_TYRANT_1, 0, 65, 8, 18, 0, 87, 323, -14400, -457, 3072, 0, 0
    item_aot_set            0, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 194, -900, -900, 1800, 1800, ITEM_EXPLOSIVEROUNDS, 6, 204, 255, 1
    aot_reset               0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -28429, -2157, 2030, 1260, -6885, -5400, -12613, -2096, 0, 18, 8, 3, 13, 1, 0, 0, UNLOCKED, 0
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 27, 229, 232, 234, 187, 206
    else                    0, off_0E2C

off_0DDA:
    if                      0, off_0E2A
    ck                      FG_ENEMY, 87, 1
    if                      0, off_0E28
    ck                      FG_ITEM, 204, 0
    item_aot_set            0, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -26400, 2700, 1800, 1800, ITEM_EXPLOSIVEROUNDS, 6, 204, 0, 1
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -25500, -14400, 3600, 0, -3328, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0E28:
    endif
    nop

off_0E2A:
    nop
    nop

off_0E2C:
    if                      0, off_0E3A
    ck                      FG_ENEMY, 87, 1
    set                     FG_GENERAL_2, 0, 1
    endif
    nop

off_0E3A:
    endif
    nop

off_0E3C:
    endif
    nop

off_0E3E:
    evt_end                 0

.proc main_04
    if                      0, off_0E62
    ck                      FG_ENEMY, 87, 1
    if                      0, off_0E60
    ck                      FG_GENERAL_2, 0, 0
    set                     FG_GENERAL_2, 0, 1
    sce_bgm_control         0, 5, 0, 0, 0
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_0E60:
    endif
    nop

off_0E62:
    evt_end                 0

.proc main_05
    sleep                   10, 151
    aot_reset               0, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 24, 0, 6, 0, 204, 0
    evt_end                 0

.proc main_06
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    gosub                   main_02
    set                     FG_GENERAL_1, 56, 1
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    cut_chg                 4
    sleep                   10, 15
    se_on                   2, 267, 0, -25440, -14400, -1326
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    sleep                   10, 15
    sce_bgm_control         0, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 96, 96
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, 323, -457
    sleep                   10, 5
    se_on                   2, 268, 0, -25440, -14400, -1326
    work_set                WK_ENEMY, 0
    nop
    while                   6, off_0EF2
    member_cmp              0, 24, 0, 0, 0
    evt_next
    nop
    ewhile                  0

off_0EF2:
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -25396, -14400, -47
    dir_set                 0, 0, 841, 0
    plc_dest                0, 8, 32, -25087, 11863
    sleep                   10, 8
    set                     FG_GAME, 28, 1
    se_on                   2, 266, 0, -25440, -14400, -1326
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  255, 6, 0, 1, 0
    nop_8c                  0, 255, 50, 15, 0, 7, 0
    nop_8c                  0, 50, 0, 35, 0, 22, 0
    sleep                   10, 2
    plc_stop
    nop
    sleep                   10, 3
    set                     FG_GAME, 28, 0
    sleep                   10, 56
    plc_dest                0, 8, 32, -25087, 11863
    sleep                   10, 70
    cut_chg                 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -25464, -14400, 3012
    dir_set                 0, 0, -2736, 0
    aot_reset               1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 27, 229, 232, 234, 187, 206
    aot_reset               3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 27, 229, 232, 234, 187, 206
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_GAME, 27, 0
    set                     FG_STATE, 7, 0
    evt_exec                255, I_GOSUB, main_07
    evt_end                 0

.proc main_07
    for                     0, off_0FA8, 5
    sleep                   10, 30
    next                    0

off_0FA8:
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 27, 229, 232, 234, 187, 206
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 27, 229, 232, 234, 187, 206
    evt_end                 0

.proc main_08
    do                      0, off_0FCA
    evt_next
    nop
    edwhile                 off_0FCA
    ck                      FG_GENERAL_2, 32, 0

off_0FCA:
    evt_end                 0
