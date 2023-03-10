.version 2
.init
.proc init_00
    if                      0, off_040C
    ck                      4, 164, 1
    set                     1, 12, 1
    endif
    nop

off_040C:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7777, -10184, 1300, 2840, -26178, 0, -5237, -24493, 5, 11, 0, 0, 41, 1, 0, 148, UNLOCK, 0
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15247, -17384, 1300, 8310, 0, 0, 0, 0, 255, 255
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9687, -7704, 2200, 1110, 1, 0, 0, 0, 255, 255
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9687, -7704, 2200, 1110, ITEM_INKRIBBON, 3, 6, 255, 0
    evt_end                 0

.main
.proc main_00
    gosub                   3
    if                      0, off_0498
    ck                      34, 38, 0
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9458, -17827, 2340, 1430, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_0498:
    item_aot_set            8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_SHOTGUNAMMO, 7, 37, 2, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_SHOTGUNAMMO, 7, 38, 3, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    set                     2, 7, 1
    set                     2, 2, 1
    set                     2, 3, 1
    if                      0, off_0572
    ck                      34, 37, 0
    cut_chg                 3
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -8067, -1934, -17298
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -8667, -1934, -17298
    se_on                   2, 296, 0, -8767, -1934, -17448
    sleep                   10, 30
    aot_on                  8
    cut_chg                 129
    evt_next
    work_set                WK_OBJECT, 2
    pos_set                 0, 0, 0, 0
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 0, 0, 0
    else                    0, off_05BC

off_0572:
    if                      0, off_05B8
    ck                      34, 38, 0
    cut_chg                 3
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 0, 0, 0
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -8667, -1934, -17298
    se_on                   2, 296, 0, -8767, -1934, -17448
    sleep                   10, 30
    aot_on                  9
    cut_chg                 129
    evt_next
    work_set                WK_OBJECT, 3
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
    set                     2, 3, 0
    set                     2, 2, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_03
    if                      0, off_05DC
    cmp                     0, 27, CMP_EQ, 1546
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_05DC:
    gosub                   5
    evt_end                 0

.proc main_04
    set                     1, 27, 1
    set                     2, 7, 1
    set                     2, 2, 1
    set                     2, 3, 1
    sleep                   10, 1
    cut_chg                 2
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12994, -2500, -6064
    dir_set                 0, 0, -3288, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    save                    4, 0
    for                     0, off_063A, 7
    member_copy             16, 12
    nop
    calc2                   OP_ADD, 16, 4
    member_set2             12, 16
    nop
    evt_next
    nop
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 90
    copy                    4, 16
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
    set                     2, 7, 0
    set                     2, 2, 0
    set                     2, 3, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_05
    sce_em_set              0, 0, ENEMY_LICKERGREY, 0, 0, 0, 51, 0, 38, -12687, 0, -12836, -592, 0, 0
    sce_em_set              0, 1, ENEMY_LICKERGREY, 0, 0, 0, 51, 0, 39, -9522, 0, -13842, -1216, 0, 0
    evt_end                 0
