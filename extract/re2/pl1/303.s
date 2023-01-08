.version 2
.init
.proc init_00
    if                      0, off_1586
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_1586:
    if                      0, off_15B0
    ck                      4, 254, 1
    set                     4, 57, 0
    set                     6, 98, 0
    set                     3, 101, 0
    set                     3, 102, 0
    set                     3, 103, 0
    set                     3, 104, 0
    set                     4, 58, 0
    set                     4, 55, 1
    endif
    nop

off_15B0:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -27206, -13094, 3020, 1030, -25115, -7200, -25982, 3096, 2, 4, 0, 4, 38, 2, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -26486, -27444, 3020, 1030, -16053, 0, -4487, 1008, 2, 11, 2, 0, 36, 0, 0, 0, UNLOCKED, 0
    evt_end                 0
    db                      0x0C, 0x92

.main
.proc main_00
    if                      0, off_1608
    ck                      1, 6, 1
    gosub                   2
    evt_end                 0
    endif
    nop

off_1608:
    if                      0, off_1702
    ck                      1, 1, 1
    if                      0, off_16F4
    ck                      4, 88, 1
    obj_model_set           0, 0, 0, 0, 0, 3, 0, 10, 16, -23449, -7970, -12532, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 3, 0, 10, 16, -23304, -7822, -12532, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 3, 0, 10, 16, -23153, -7970, -12532, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 3, 0, 10, 16, -23019, -7822, -12532, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_espr_on             0, 534, 0, 2560, -23469, -7800, -12532, 0
    sce_espr_on             0, 534, 0, 2560, -23326, -7960, -12532, 0
    sce_espr_on             0, 534, 0, 2560, -23184, -7800, -12532, 0
    sce_espr_on             0, 534, 0, 2560, -23042, -7960, -12532, 0
    else                    0, off_1700

off_16F4:
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 255, 255
    nop
    nop

off_1700:
    endif
    nop

off_1702:
    aot_set                 2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -25006, -13094, 2130, 1030, 1, 0, 0, 0, 255, 255
    evt_end                 0

.proc main_01
    if                      0, off_1724
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_1724:
    evt_end                 0

.proc main_02
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -27206, -13094, 3020, 1030, -25115, -7200, -25982, 3096, 2, 4, 0, 4, 38, 2, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -26486, -27444, 3020, 1030, -16053, 0, -4487, 1008, 2, 11, 2, 0, 36, 0, 0, 0, UNLOCKED, 0
    sce_em_set              0, 0, ENEMY_ZOMBIEGIRL, 0, 0, 3, 10, 0, 103, -19796, -5400, -14402, 416, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 3, 3, 0, 104, -17847, -5400, -19997, 2888, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 3, 3, 0, 105, -22448, -5400, -26234, 3784, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 0, 0, 3, 3, 0, 159, -13149, -5400, -14763, 2040, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 0, 3, 3, 0, 160, -24235, -5400, -24399, 16, 0, 0
    evt_end                 0
    db                      0x20, 0x00
