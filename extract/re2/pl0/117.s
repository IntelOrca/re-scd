.version 2

.init
.proc init
    if                      0, off_0CC4
    ck                      FG_GENERAL_1, 254, 1
    set                     FG_GENERAL_1, 55, 1
    set                     FG_GENERAL_1, 56, 0
    set                     FG_ENEMY, 87, 0
    endif
    nop

off_0CC4:
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -28429, -2157, 2030, 2860, -6885, -5400, -12613, -2096, 0, 18, 8, 3, 13, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -28429, -22867, 2030, 3030, -19575, 0, -22685, -2040, 0, 17, 1, 0, 13, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    evt_end                 0

.proc aot
    evt_end                 0
