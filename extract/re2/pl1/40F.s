.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7730, -26097, 1000, 2000, -26488, 0, -14819, 443, 3, 1, 10, 0, 30, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27510, -26057, 1000, 2000, -21165, 0, -22505, 2048, 3, 12, 0, 0, 30, 0, 0, 0, UNLOCKED, 0
    if                      0, off_0540
    ck                      FG_STATUS, 3, 0
    sce_em_set              0, ID_EM_0, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_6, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_7, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_8, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_9, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_10, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_11, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_12, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_13, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_14, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_15, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_16, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_17, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_18, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_19, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_20, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_21, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_22, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    sce_em_set              0, ID_EM_23, ENEMY_COCKROACH, 0, AI_DEFAULT, 0, SBK_15, 0, 255, -15372, -3600, -25133, 1024, 0, 0
    endif
    nop

off_0540:
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main
    set                     FG_MAP_C, 10, 1
    set                     FG_ROOM, 1, 1
    evt_exec                255, I_GOSUB, main_02
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_PROG0_VOL, 100, 64
    while                   4, off_05B4
    ck                      FG_ROOM, 1, 1
    switch                  26, off_05A6
    case                    0, off_057A, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_057A:
    case                    0, off_0588, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 80
    break                   0

off_0588:
    case                    0, off_0596, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_0596:
    case                    0, off_05A4, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 64
    break                   0

off_05A4:
    eswitch                 0

off_05A6:
    do                      0, off_05B2
    evt_next
    nop
    edwhile                 off_05B2
    ck                      FG_STATUS, 11, 0

off_05B2:
    ewhile                  0

off_05B4:
    evt_end                 0
    db                      0x00, 0x00
