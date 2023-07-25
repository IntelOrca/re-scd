.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 30000, 30000, 1, 1, -15376, 0, -22868, 248, 3, 5, 7, 0, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 30000, 30000, 1, 1, 9167, -7200, -342, 2680, 3, 9, 3, 4, 22, 5, 0, 0, UNLOCKED, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 26, -27098, -1737, -25260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 26, -6697, -1707, -25316, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_05BC
    ck                      FG_GAME, 3, 0
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

off_05BC:
    evt_end                 0

.main
.proc main
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8027, -27380, 1300, 4600, 255, 0, I_GOSUB, main_02, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28195, -27528, 1800, 4400, 255, 0, I_GOSUB, main_03, 0, 0
    if                      0, off_063A
    ck                      FG_GAME, 3, 1
    if                      0, off_0620
    cmp                     0, V_LAST_RDT, CMP_EQ, 1029
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 4, 0, 32, 0, 255, -8802, 0, -25898, 2088, 0, 0
    else                    0, off_0638

off_0620:
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 4, 0, 32, 0, 255, -25857, 0, -25924, 8, 0, 0
    nop
    nop

off_0638:
    endif
    nop

off_063A:
    set                     FG_GENERAL_2, 1, 1
    evt_exec                255, I_GOSUB, main_04
    evt_exec                255, I_GOSUB, main_05
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    message_on              0, 0, 0, 0, 255
    evt_next
    nop
    if                      0, off_066C
    ck                      FG_INPUT, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    aot_on                  0
    else                    0, off_067A

off_066C:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_067A:
    evt_end                 0

.proc main_03
    message_on              0, 0, 0, 0, 255
    evt_next
    nop
    if                      0, off_069E
    ck                      FG_INPUT, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    aot_on                  1
    else                    0, off_06AC

off_069E:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_06AC:
    evt_end                 0

.proc main_04

off_06AE:
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    copy                    V_04, V_TEMP
    nop
    work_set                WK_OBJECT, 0
    nop
    member_set2             14, V_04
    nop
    work_set                WK_OBJECT, 1
    nop
    member_set2             14, V_04
    nop
    evt_next
    nop
    goto                    255, 255, 0, off_06AE
    evt_end                 0

.proc main_05
    sce_bgm_control         0, 1, 1, 100, 64
    while                   4, off_073E
    ck                      FG_GENERAL_2, 1, 1
    switch                  26, off_0730
    case                    0, off_0704, 0
    sce_bgm_control         0, 0, 1, 80, 64
    break                   0

off_0704:
    case                    0, off_0712, 1
    sce_bgm_control         0, 0, 1, 60, 80
    break                   0

off_0712:
    case                    0, off_0720, 2
    sce_bgm_control         0, 0, 1, 50, 64
    break                   0

off_0720:
    case                    0, off_072E, 3
    sce_bgm_control         0, 0, 1, 70, 64
    break                   0

off_072E:
    eswitch                 0

off_0730:
    do                      0, off_073C
    evt_next
    nop
    edwhile                 off_073C
    ck                      FG_GAME, 11, 0

off_073C:
    ewhile                  0

off_073E:
    evt_end                 0
