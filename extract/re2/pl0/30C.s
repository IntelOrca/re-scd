.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12952, -17094, 900, 2080, -17328, 0, -12532, 3944, 2, 11, 1, 0, 8, 0, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_2, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17572, -14224, 2420, 14224, 3, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_4, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18162, -18314, 2160, 2890, 0, 0, 1, 0, 0, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -17832, -1459, -16821, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15928, -18497, 1440, 1430, ITEM_HERBB, 1, 134, ID_OBJ_2, IF_FLOOR
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -15372, 0, -17608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main
    item_aot_set            ID_AOT_1, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17572, -14224, 2420, 14224, ITEM_INKRIBBON, 3, 140, ID_OBJ_3, IF_DEFAULT
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -16119, -800, -13721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_0510
    ck                      FG_COMMON, 254, 1
    aot_set                 ID_AOT_6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14640, -14300, 1440, 1420, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_0510:
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    nop_8a                  0, 60, 0, 0, 0
    nop_8b                  250, 60, 0, 60, 0
    nop_8b                  255, 60, 0, 120, 0
    nop_8c                  0, 255, 50, 60, 0, 180, 0
    nop_8c                  0, 50, 255, 60, 0, 240, 0
    evt_end                 0
