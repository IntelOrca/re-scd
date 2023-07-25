.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14270, -18800, 2300, 1300, -21826, 0, -13165, 995, 1, 17, 9, 0, 25, 1, 0, 0, UNLOCKED, 0
    door_aot_se             13, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 1, 1, -14955, 0, -7216, 3072, 1, 20, 2, 0, 52, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_03E4
    ck                      FG_GAME, F_SCENARIO, 1
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12100, -12680, 1230, 1450, ITEM_ACIDROUNDS, 6, 65, 1, 0
    else                    0, off_03FC

off_03E4:
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12100, -12680, 1230, 1450, ITEM_BOWGUNAMMO, 36, 65, 2, 0
    nop
    nop

off_03FC:
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17580, -15310, 1030, 2110, ITEM_HANDGUNAMMO, 15, 67, 3, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12120, -14490, 1390, 1380, ITEM_HANDGUNAMMO, 15, 68, 4, 0
    gosub                   main_02
    if                      0, off_045C
    ck                      FG_GAME, F_SCENARIO, 1
    obj_model_set           1, 0, 0, 0, 0, 4, 0, 10, 16, -11650, -1600, -12050, 0, -704, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0484

off_045C:
    obj_model_set           2, 0, 0, 0, 0, 4, 0, 10, 16, -11650, -1600, -12050, 0, -704, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0484:
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -17150, -1600, -13200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -11750, -1600, -13500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc aot
    gosub                   main_04
    evt_end                 0

.proc main_02
    item_aot_set            6, SCE_ITEM, SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_SMG, 100, 62, 6, 0
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15780, -6600, 2850, 1230, 255, 0, I_GOSUB, main_03, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -14850, -20700, 11236, 0, 832, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -14550, -20700, -5300, 0, -1536, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_03
    set                     FG_STATE, 7, 1
    cut_chg                 4
    se_on                   2, 296, 0, -14420, -1024, 6700
    if                      0, off_0580
    ck                      FG_LOCK, 1, 0
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -13300, -700, -5400
    dir_set                 0, 0, 832, 0
    else                    0, off_059A

off_0580:
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, -13750, -700, -5300
    dir_set                 0, 0, -1536, 0
    evt_chain               0, 24, 5
    nop
    nop

off_059A:
    if                      0, off_05BA
    ck                      FG_LOCK, 0, 0
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, -13750, -700, -5300
    dir_set                 0, 0, -1536, 0
    else                    0, off_05D4

off_05BA:
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -13300, -700, -5400
    dir_set                 0, 0, 832, 0
    evt_chain               0, 24, 6
    nop
    nop

off_05D4:
    sleep                   10, 40
    message_on              0, 4, 0, 255, 255
    sleep                   10, 1
    se_on                   4, 6, 0, -14420, -1024, 6700
    if                      0, off_0600
    ck                      FG_INPUT, F_QUESTION, 0
    aot_on                  6
    sleep                   10, 1
    else                    0, off_0656

off_0600:
    message_on              0, 5, 0, 255, 255
    sleep                   10, 1
    if                      0, off_0654
    ck                      FG_INPUT, F_QUESTION, 0
    sce_fade_set            2, 2, 7, 128, 1
    sleep                   10, 30
    for                     0, off_062A, 5
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_062A:
    set                     FG_LOCK, 1, 1
    set                     FG_ITEM, 63, 1
    if                      0, off_0646
    ck                      FG_GAME, F_PLAYER, 0
    work_set                WK_PLAYER, 0
    nop
    save                    V_20, 2
    else                    0, off_0650

off_0646:
    work_set                WK_PLAYER, 0
    nop
    save                    V_20, 3
    nop
    nop

off_0650:
    aot_on                  13
    endif
    nop

off_0654:
    nop
    nop

off_0656:
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, -13750, -20700, -5300
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -13300, -20700, -5400
    cut_chg                 2
    set                     FG_STATE, 7, 0
    cut_auto                1
    evt_end                 0

.proc main_04
    if                      0, off_0686
    ck                      FG_ITEM, 62, 1
    set                     FG_LOCK, 0, 1
    endif
    nop

off_0686:
    if                      0, off_069E
    ck                      FG_LOCK, 1, 1
    ck                      FG_LOCK, 0, 1
    aot_reset               7, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_069E:
    evt_end                 0

.proc main_05
    message_on              0, 6, 0, 255, 255
    sleep                   10, 1
    if                      0, off_06D2
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_06C4
    ck                      FG_GAME, F_PLAYER, 0
    message_on              0, 9, 0, 255, 255
    else                    0, off_06CC

off_06C4:
    message_on              0, 8, 0, 255, 255
    nop
    nop

off_06CC:
    sleep                   10, 1
    endif
    nop

off_06D2:
    aot_on                  6
    sleep                   10, 1
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, -13750, -20700, -5300
    cut_chg                 2
    set                     FG_STATE, 7, 0
    cut_auto                1
    evt_end                 0

.proc main_06
    message_on              0, 7, 0, 255, 255
    sleep                   10, 1
    if                      0, off_0720
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_0712
    ck                      FG_GAME, F_PLAYER, 0
    message_on              0, 9, 0, 255, 255
    else                    0, off_071A

off_0712:
    message_on              0, 8, 0, 255, 255
    nop
    nop

off_071A:
    sleep                   10, 1
    endif
    nop

off_0720:
    message_on              0, 5, 0, 255, 255
    sleep                   10, 1
    if                      0, off_075C
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_LOCK, 1, 1
    set                     FG_ITEM, 63, 1
    if                      0, off_074E
    ck                      FG_GAME, F_PLAYER, 0
    work_set                WK_PLAYER, 0
    nop
    save                    V_20, 2
    else                    0, off_0758

off_074E:
    work_set                WK_PLAYER, 0
    nop
    save                    V_20, 3
    nop
    nop

off_0758:
    aot_on                  13
    endif
    nop

off_075C:
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -14150, -20700, -5400
    cut_chg                 2
    set                     FG_STATE, 7, 0
    cut_auto                1
    evt_end                 0
