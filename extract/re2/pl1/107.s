.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16987, -2142, 1230, 2400, -17416, 0, -559, 1888, 0, 6, 1, 0, 8, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -1892, -15410, 1460, 1590, -4847, 0, -2857, -2080, 0, 8, 0, 0, 14, 4, 0, 0, UNLOCKED, 0
    if                      0, off_0BBC
    ck                      0, 25, 0
    if                      0, off_0B5A
    cmp                     0, 26, CMP_EQ, 0
    ck                      4, 3, 0
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 0, 0, 0, 9, 0, 15, -8809, 0, 4235, 3673, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 0, 0, 0, 9, 0, 16, 1382, 0, -18677, 3273, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIECOP, 0, 0, 0, 41, 0, 17, -3231, 0, -740, 2287, 0, 0
    else                    0, off_0BB8

off_0B5A:
    set                     4, 3, 1
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 0, 0, 0, 9, 0, 18, -7940, 0, 4732, 429, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 9, 0, 19, 1577, 0, -1264, 889, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 0, 9, 0, 207, 4440, 0, -11560, 1945, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEGIRL, 0, 0, 0, 11, 0, 208, 1799, 0, -14450, 755, 0, 0
    nop
    nop

off_0BB8:
    else                    0, off_0C26

off_0BBC:
    if                      0, off_0BCC
    cmp                     0, 26, CMP_NE, 0
    set                     4, 3, 1
    endif
    nop

off_0BCC:
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 6, 0, 0, 9, 0, 18, -9191, 0, 3828, 493, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 9, 0, 19, -495, 0, -786, 2681, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 9, 0, 207, 4574, 0, -11352, 2073, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEGIRL, 6, 0, 0, 11, 0, 208, 2648, 0, -14087, 1091, 0, 0
    nop
    nop

off_0C26:
    if                      0, off_0C5A
    ck                      4, 3, 1
    if                      0, off_0C50
    ck                      4, 0, 0
    cut_replace             0, 6
    cut_replace             1, 7
    if                      0, off_0C4C
    cmp                     0, 26, CMP_EQ, 0
    cut_chg                 6
    cut_auto                1
    endif
    nop

off_0C4C:
    else                    0, off_0C58

off_0C50:
    sce_bgm_control         0, 0, 1, 1, 0
    nop
    nop

off_0C58:
    endif
    nop

off_0C5A:
    sce_bgm_control         0, 0, 2, 64, 0
    sce_bgm_control         0, 0, 3, 64, 0
    evt_end                 0

.main
.proc main_00
    evt_end                 0

.proc main_01
    evt_end                 0
