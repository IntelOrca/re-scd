.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14270, -18800, 2300, 1300, -21826, 0, -13165, 995, 1, 17, 9, 0, 25, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_13, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 1, 1, -14955, 0, -7216, 3072, 1, 20, 2, 0, 52, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    item_aot_set            ID_AOT_1, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12100, -11510, 1230, 1050, ITEM_HANDGUNAMMO, 15, 64, ID_OBJ_0, IF_DEFAULT
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12100, -12680, 1230, 1050, ITEM_HANDGUNAMMO, 15, 65, ID_OBJ_1, IF_DEFAULT
    if                      0, off_0408
    ck                      FG_STATUS, F_SCENARIO, 1
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12120, -14490, 1390, 1380, ITEM_MAGNUMAMMO, 8, 68, ID_OBJ_7, 128
    else                    0, off_0420

off_0408:
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12120, -14490, 1390, 1380, ITEM_SHOTGUNAMMO, 7, 68, ID_OBJ_4, IF_DEFAULT
    nop
    nop

off_0420:
    gosub                   main_02
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -11700, -1600, -11500, 0, -408, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 4, 0, 10, 16, -11650, -1600, -12050, 0, -704, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_04A0
    ck                      FG_STATUS, F_SCENARIO, 1
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 0, 0, 10, 16, -11750, -1600, -13500, -960, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_04C8

off_04A0:
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -11750, -1600, -13500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_04C8:
    evt_end                 0

.proc aot
    gosub                   main_04
    evt_end                 0

.proc main_02
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_SMG, 100, 62, ID_OBJ_6, IF_DEFAULT
    aot_set                 ID_AOT_7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15780, -6600, 2850, 1230, 255, 0, I_GOSUB, main_03, 0, 0
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 16, -14850, -20700, 11236, 0, 832, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 16, -14550, -20700, -5300, 0, -1536, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_03
    set                     FG_STOP, 7, 1
    cut_chg                 4
    se_on                   2, 296, 0, -14420, -1024, 6700
    if                      0, off_0578
    ck                      FG_ZAPPING, 1, 0
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    pos_set                 0, -13300, -700, -5400
    dir_set                 0, 0, 832, 0
    else                    0, off_0592

off_0578:
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    pos_set                 0, -13750, -700, -5300
    dir_set                 0, 0, -1536, 0
    evt_chain               0, 24, 5
    nop
    nop

off_0592:
    if                      0, off_05B2
    ck                      FG_ZAPPING, 0, 0
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    pos_set                 0, -13750, -700, -5300
    dir_set                 0, 0, -1536, 0
    else                    0, off_05CC

off_05B2:
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    pos_set                 0, -13300, -700, -5400
    dir_set                 0, 0, 832, 0
    evt_chain               0, 24, 6
    nop
    nop

off_05CC:
    sleep                   10, 40
    message_on              0, ID_MSG_4, 0, 255, 255
    sleep                   10, 1
    se_on                   4, 6, 0, -14420, -1024, 6700
    if                      0, off_05F8
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_on                  ID_AOT_6
    sleep                   10, 1
    else                    0, off_064E

off_05F8:
    message_on              0, ID_MSG_5, 0, 255, 255
    sleep                   10, 1
    if                      0, off_064C
    ck                      FG_MESSAGE, F_QUESTION, 0
    sce_fade_set            2, 2, 7, 128, 1
    sleep                   10, 30
    for                     0, off_0622, 5
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_0622:
    set                     FG_ZAPPING, 1, 1
    set                     FG_ITEM, 63, 1
    if                      0, off_063E
    ck                      FG_STATUS, F_PLAYER, 0
    work_set                WK_PLAYER, 0
    nop
    save                    V_NEXT_PLD, 2
    else                    0, off_0648

off_063E:
    work_set                WK_PLAYER, 0
    nop
    save                    V_NEXT_PLD, 3
    nop
    nop

off_0648:
    aot_on                  ID_AOT_13
    endif
    nop

off_064C:
    nop
    nop

off_064E:
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    pos_set                 0, -13750, -20700, -5300
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    pos_set                 0, -13300, -20700, -5400
    cut_chg                 2
    set                     FG_STOP, 7, 0
    cut_auto                1
    evt_end                 0

.proc main_04
    if                      0, off_067E
    ck                      FG_ITEM, 62, 1
    set                     FG_ZAPPING, 0, 1
    endif
    nop

off_067E:
    if                      0, off_0696
    ck                      FG_ZAPPING, 1, 1
    ck                      FG_ZAPPING, 0, 1
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0696:
    evt_end                 0

.proc main_05
    message_on              0, ID_MSG_6, 0, 255, 255
    sleep                   10, 1
    if                      0, off_06CA
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_06BC
    ck                      FG_STATUS, F_PLAYER, 0
    message_on              0, ID_MSG_9, 0, 255, 255
    else                    0, off_06C4

off_06BC:
    message_on              0, ID_MSG_8, 0, 255, 255
    nop
    nop

off_06C4:
    sleep                   10, 1
    endif
    nop

off_06CA:
    aot_on                  ID_AOT_6
    sleep                   10, 1
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    pos_set                 0, -13750, -20700, -5300
    cut_chg                 2
    set                     FG_STOP, 7, 0
    cut_auto                1
    evt_end                 0

.proc main_06
    message_on              0, ID_MSG_7, 0, 255, 255
    sleep                   10, 1
    if                      0, off_0718
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_070A
    ck                      FG_STATUS, F_PLAYER, 0
    message_on              0, ID_MSG_9, 0, 255, 255
    else                    0, off_0712

off_070A:
    message_on              0, ID_MSG_8, 0, 255, 255
    nop
    nop

off_0712:
    sleep                   10, 1
    endif
    nop

off_0718:
    message_on              0, ID_MSG_5, 0, 255, 255
    sleep                   10, 1
    if                      0, off_0754
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_ZAPPING, 1, 1
    set                     FG_ITEM, 63, 1
    if                      0, off_0746
    ck                      FG_STATUS, F_PLAYER, 0
    work_set                WK_PLAYER, 0
    nop
    save                    V_NEXT_PLD, 2
    else                    0, off_0750

off_0746:
    work_set                WK_PLAYER, 0
    nop
    save                    V_NEXT_PLD, 3
    nop
    nop

off_0750:
    aot_on                  ID_AOT_13
    endif
    nop

off_0754:
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    pos_set                 0, -14150, -20700, -5400
    cut_chg                 2
    set                     FG_STOP, 7, 0
    cut_auto                1
    evt_end                 0
    db                      0xD4, 0x12
