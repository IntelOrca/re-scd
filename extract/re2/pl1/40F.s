.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7730, -26097, 1000, 2000, -26488, 0, -14819, 443, 3, 1, 10, 0, 30, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27510, -26057, 1000, 2000, -21165, 0, -22505, 2048, 3, 12, 0, 0, 30, 0, 0, 0, UNLOCKED, 0
    if                      0, off_0540
    ck                      1, 3, 0
    sce_em_set              0, 0, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 1, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 2, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 3, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 4, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 5, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 6, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 7, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 8, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 9, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 10, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 11, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 12, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 13, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 14, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 15, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 16, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 17, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 18, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 19, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 20, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 21, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 22, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, 23, ENEMY_COCKROACH, 0, 0, 0, 15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    endif
    nop

off_0540:
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main_00
    set                     32, 10, 1
    set                     5, 1, 1
    evt_exec                255, I_GOSUB, main_02
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    sce_bgm_control         0, 1, 1, 100, 64
    while                   4, off_05B4
    ck                      5, 1, 1
    switch                  26, off_05A6
    case                    0, off_057A, 0
    sce_bgm_control         0, 0, 1, 80, 64
    break                   0

off_057A:
    case                    0, off_0588, 1
    sce_bgm_control         0, 0, 1, 60, 80
    break                   0

off_0588:
    case                    0, off_0596, 2
    sce_bgm_control         0, 0, 1, 50, 64
    break                   0

off_0596:
    case                    0, off_05A4, 3
    sce_bgm_control         0, 0, 1, 70, 64
    break                   0

off_05A4:
    eswitch                 0

off_05A6:
    do                      0, off_05B2
    evt_next
    nop
    edwhile                 off_05B2
    ck                      1, 11, 0

off_05B2:
    ewhile                  0

off_05B4:
    evt_end                 0
    db                      0x00, 0x00
