.version 2

.init
.proc init
    if                      0, off_040C
    ck                      FG_COMMON, 164, 1
    set                     FG_STATUS, 12, 1
    endif
    nop

off_040C:
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7777, -10184, 1300, 2840, -26178, 0, -5237, -24493, 5, 11, 0, 0, 41, 1, 0, 148, UNLOCK, 0
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15247, -17384, 1300, 8310, ID_MSG_0, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9687, -7704, 2200, 1110, ID_MSG_1, 0, 0, 0, 255, 255
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9687, -7704, 2200, 1110, ITEM_INKRIBBON, 3, 6, ID_OBJ_255, IF_DEFAULT
    evt_end                 0

.main
.proc main
    gosub                   main_03
    if                      0, off_0498
    ck                      FG_ITEM_2, 38, 0
    aot_set                 ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9458, -17827, 2340, 1430, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_0498:
    item_aot_set            ID_AOT_8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_EXPLOSIVEROUNDS, 6, 37, ID_OBJ_2, IF_DEFAULT
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_EXPLOSIVEROUNDS, 6, 38, ID_OBJ_3, IF_DEFAULT
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 3, 1
    if                      0, off_0572
    ck                      FG_ITEM_2, 37, 0
    cut_chg                 3
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -8067, -1934, -17298
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    pos_set                 0, -8667, -1934, -17298
    se_on                   2, 296, 0, -8767, -1934, -17448
    sleep                   10, 30
    aot_on                  ID_AOT_8
    cut_chg                 129
    evt_next
    work_set                WK_OBJECT, ID_OBJ_2
    pos_set                 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    pos_set                 0, 0, 0, 0
    else                    0, off_05BC

off_0572:
    if                      0, off_05B8
    ck                      FG_ITEM_2, 38, 0
    cut_chg                 3
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    pos_set                 0, -8667, -1934, -17298
    se_on                   2, 296, 0, -8767, -1934, -17448
    sleep                   10, 30
    aot_on                  ID_AOT_9
    cut_chg                 129
    evt_next
    work_set                WK_OBJECT, ID_OBJ_3
    pos_set                 0, 0, 0, 0
    else                    0, off_05BA

off_05B8:
    nop
    nop

off_05BA:
    nop
    nop

off_05BC:
    cut_auto                1
    set                     FG_STOP, 3, 0
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_03
    if                      0, off_05DC
    cmp                     0, V_LAST_RDT, CMP_EQ, 1546
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_05DC:
    gosub                   main_05
    evt_end                 0

.proc main_04
    set                     FG_STATUS, 27, 1
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 3, 1
    sleep                   10, 1
    cut_chg                 2
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12994, -2500, -6064
    dir_set                 0, 0, -3288, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    save                    V_04, 0
    for                     0, off_063A, 7
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_04, V_TEMP
    nop
    next                    0

off_063A:
    se_on                   2, 29, 0, 1325, 0, -22023
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  255, 3, 0, 0, 0
    pos_set                 0, -12994, 0, -6064
    plc_motion              0, 15, 0
    sleep                   10, 50
    cut_auto                1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 3, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_05
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_GREY, 0, AI_DEFAULT, 0, SBK_51, 0, 38, -12687, 0, -12836, -592, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_LICKER_GREY, 0, AI_DEFAULT, 0, SBK_51, 0, 39, -9522, 0, -13842, -1216, 0, 0
    evt_end                 0
