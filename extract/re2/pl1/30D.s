.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12952, -17094, 900, 2080, -2886, 0, -9220, 0, 2, 7, 1, 0, 8, 0, 0, 0, UNLOCKED, 0
    aot_set                 2, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17572, -14224, 2420, 14224, 4, 0, 0, 0, 0, 0
    aot_set                 3, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18162, -18314, 2160, 2890, 0, 0, 1, 0, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -17832, -1459, -16821, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_02B8
    ck                      FG_GENERAL_1, 254, 1
    cut_chg                 1
    endif
    nop

off_02B8:
    evt_end                 0

.main
.proc main
    gosub                   main_02
    item_aot_set            1, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17572, -14224, 2420, 14224, ITEM_INKRIBBON, 3, 140, 2, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -16319, -800, -13621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    if                      0, off_031E
    ck                      FG_3, 129, 0
    set                     FG_3, 128, 1
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_031E:
    evt_end                 0

.proc main_03
    save                    V_20, 15
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 186, 244, 0, 0, 252, 219
    aot_on                  0
    evt_end                 0
