.version 2
.init
.proc init_00
    if                      0, off_1258
    ck                      4, 254, 1
    set                     4, 57, 0
    set                     6, 98, 0
    set                     4, 58, 0
    endif
    nop

off_1258:
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -10032, -18754, 2600, 1380, -14538, 0, -16449, -24671, 2, 0, 3, 0, 22, 4, 0, 0, UNLOCKED, 0
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -19722, 2276, 2630, 1730, -16715, -1800, -17145, -960, 2, 10, 0, 1, 22, 4, 0, 0, UNLOCKED, 0
    obj_model_set           0, 0, 0, 0, 0, 3, 0, 10, 16, -18592, -5400, 2899, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main_00
    gosub                   2
    sce_bgm_control         1, 1, 0, 0, 0
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    aot_set                 0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -10032, -18754, 2600, 1380, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -19722, 2276, 2630, 1730, 255, 0, I_GOSUB, main_05, 0, 0
    evt_end                 0

.proc main_03
    sce_espr_on             0, 5376, 0, 4096, -15816, -11500, -19500, 0
    sleep                   10, 10
    sce_espr_on             0, 5376, 0, 4096, -15816, -11500, -14560, 0
    sce_espr_on             0, 5376, 0, 4096, -4619, -11500, -8600, 0
    sleep                   10, 10
    sce_espr_on             0, 5376, 0, 4096, -15816, -11500, -9060, 0
    sleep                   10, 10
    evt_end                 0

.proc main_04
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    if                      0, off_1364
    ck                      11, 31, 0
    aot_on                  2
    endif
    nop

off_1364:
    evt_end                 0

.proc main_05
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    if                      0, off_137A
    ck                      11, 31, 0
    aot_on                  3
    endif
    nop

off_137A:
    evt_end                 0
