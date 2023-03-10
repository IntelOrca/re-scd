.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13633, -28415, 4600, 2000, 10146, 0, -9265, 1136, 1, 17, 6, 0, 6, 2, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 10, 10, -2249, 0, -16376, 3063, 2, 7, 0, 0, 22, 5, 0, 0, UNLOCKED, 0
    if                      0, off_083A
    ck                      4, 83, 0
    sce_em_set              0, 0, ENEMY_CEREBRUS, 0, 0, 3, 12, 0, 141, -7168, -5400, -8856, 3072, 0, 0
    sce_em_set              0, 1, ENEMY_CEREBRUS, 0, 0, 3, 12, 0, 142, -29658, -5400, -8856, 2224, 0, 0
    else                    0, off_0868

off_083A:
    sce_em_set              0, 0, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 141, -10936, 0, -16395, 944, 0, 0
    sce_em_set              0, 1, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 142, -15329, 0, -9605, 2080, 0, 0
    nop
    nop

off_0868:
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -12347, 0, -20874, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            31, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13747, -21274, 1800, 1400, ITEM_HERBR, 2, 142, 0, 1
    evt_end                 0
    db                      0x18, 0x1A

.main
.proc main_00
    if                      0, off_08D8
    ck                      4, 83, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -19058, -13175, 2800, 5400, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_08D8:
    evt_exec                255, I_GOSUB, main_06
    evt_exec                255, I_GOSUB, main_08
    sce_espr_on             0, 34, 0, 4608, -11300, -3900, -23600, 0
    sce_espr_on             0, 34, 0, 4608, -11300, -3900, -17000, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26653, -10265, 2170, 1280, 255, 0, I_GOSUB, main_02, 0, 0
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, 0, 0, 0, 255
    evt_next
    nop
    if                      0, off_0944
    ck                      11, 31, 0
    se_on                   4, 6, 0, 0, 0, 0
    aot_on                  1
    else                    0, off_0952

off_0944:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_0952:
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    evt_end                 0

.proc main_03
    set                     4, 83, 1
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sleep                   10, 15
    evt_exec                255, I_GOSUB, main_05
    sleep                   10, 28
    evt_exec                255, I_GOSUB, main_04
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 1
    nop
    member_set              15, 0, 0
    member_set              3, 16, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, 0
    nop
    member_set              15, 0, 8
    member_set              3, 16, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    evt_end                 0

.proc main_06
    sleep                   10, 10
    if                      0, off_09BE

off_09B2:
    cmp                     0, 26, CMP_LE, 1
    evt_exec                255, I_GOSUB, main_07
    endif
    nop

off_09BE:
    do                      0, off_09CA
    evt_next
    nop
    edwhile                 off_09CA
    ck                      1, 11, 0

off_09CA:
    goto                    255, 255, 0, off_09B2
    evt_end                 0

.proc main_07
    while                   6, off_0A4C
    cmp                     0, 26, CMP_LE, 1
    if                      0, off_0A46
    cmp                     0, 29, CMP_GE, 28672
    sce_rnd
    nop
    if                      0, off_0A12
    cmp                     0, 29, 6, 1
    if                      0, off_0A0E
    cmp                     0, 29, 6, 2
    sce_espr_on             0, 5376, 0, 2560, -10400, -4500, -25100, 0
    endif
    nop

off_0A0E:
    else                    0, off_0A44

off_0A12:
    if                      0, off_0A30
    cmp                     0, 29, 6, 2
    sce_espr_on             0, 5376, 0, 2048, -10200, -4500, -18300, 0
    else                    0, off_0A42

off_0A30:
    sce_espr_on             0, 5376, 0, 2048, -10300, -4500, -16000, 0
    nop
    nop

off_0A42:
    nop
    nop

off_0A44:
    endif
    nop

off_0A46:
    sleep                   10, 20
    ewhile                  0

off_0A4C:
    evt_end                 0

.proc main_08
    switch                  26, off_0A9A

off_0A52:
    case                    0, off_0A60, 0
    sce_bgm_control         0, 0, 2, 50, 64
    break                   0

off_0A60:
    case                    0, off_0A6E, 1
    sce_bgm_control         0, 0, 2, 60, 64
    break                   0

off_0A6E:
    case                    0, off_0A7C, 2
    sce_bgm_control         0, 0, 2, 75, 64
    break                   0

off_0A7C:
    case                    0, off_0A8A, 3
    sce_bgm_control         0, 0, 2, 75, 64
    break                   0

off_0A8A:
    case                    0, off_0A98, 4
    sce_bgm_control         0, 0, 2, 75, 64
    break                   0

off_0A98:
    eswitch                 0

off_0A9A:
    do                      0, off_0AA6
    evt_next
    nop
    edwhile                 off_0AA6
    ck                      1, 11, 0

off_0AA6:
    goto                    255, 255, 0, off_0A52
    evt_end                 0
    db                      0x40, 0x68
