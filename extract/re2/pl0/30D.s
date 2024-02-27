.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12952, -17094, 900, 2080, -2886, 0, -9220, 0, 2, 7, 1, 0, 8, 0, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_2, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17572, -14224, 2420, 14224, 4, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_3, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18162, -18314, 2160, 2890, 0, 0, 1, 0, 0, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -17832, -1459, -16821, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_02B0
    ck                      FG_COMMON, 254, 1
    cut_chg                 1
    endif
    nop

off_02B0:
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main
    evt_end                 0

.proc aot
    evt_end                 0
