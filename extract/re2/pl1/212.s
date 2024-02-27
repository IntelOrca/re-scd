.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13633, -28415, 4600, 2000, 10146, 0, -9265, 1136, 1, 17, 6, 0, 6, 2, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 10, 10, -2249, 0, -16376, 3063, 2, 7, 0, 0, 22, 5, 0, 0, UNLOCKED, 0
    if                      0, off_083A
    ck                      FG_COMMON, 83, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 3, SBK_12, 0, 141, -7168, -5400, -8856, 3072, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 3, SBK_12, 0, 142, -29658, -5400, -8856, 2224, 0, 0
    else                    0, off_0868

off_083A:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 0, SBK_12, 0, 141, -10936, 0, -16395, 944, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_DOG, 0, AI_DEFAULT, 0, SBK_12, 0, 142, -15329, 0, -9605, 2080, 0, 0
    nop
    nop

off_0868:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -12347, 0, -20874, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_31, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13747, -21274, 1800, 1400, ITEM_HERBR, 2, 142, ID_OBJ_0, IF_FLOOR
    evt_end                 0
    db                      0x18, 0x1A

.main
.proc main
    if                      0, off_08D8
    ck                      FG_COMMON, 83, 0
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -19058, -13175, 2800, 5400, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_08D8:
    evt_exec                255, I_GOSUB, main_06
    evt_exec                255, I_GOSUB, main_08
    sce_espr_on             0, 34, 0, 4608, -11300, -3900, -23600, 0
    sce_espr_on             0, 34, 0, 4608, -11300, -3900, -17000, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26653, -10265, 2170, 1280, 255, 0, I_GOSUB, main_02, 0, 0
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_0, 0, 0, 255
    evt_next
    nop
    if                      0, off_0944
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    aot_on                  ID_AOT_1
    else                    0, off_0952

off_0944:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_0952:
    aot_reset               ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    evt_end                 0

.proc main_03
    set                     FG_COMMON, 83, 1
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sleep                   10, 15
    evt_exec                255, I_GOSUB, main_05
    sleep                   10, 28
    evt_exec                255, I_GOSUB, main_04
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_Y_DIR, 0
    member_set              M_ROUTINE1, 16
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_Y_DIR, 2048
    member_set              M_ROUTINE1, 16
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    evt_end                 0

.proc main_06
    sleep                   10, 10

off_09AE:
    if                      0, off_09BE
    cmp                     0, V_CUT, CMP_LE, 1
    evt_exec                255, I_GOSUB, main_07
    endif
    nop

off_09BE:
    do                      0, off_09CA
    evt_next
    nop
    edwhile                 off_09CA
    ck                      FG_STATUS, 11, 0

off_09CA:
    goto                    255, 255, 0, off_09AE
    evt_end                 0

.proc main_07
    while                   6, off_0A4C
    cmp                     0, V_CUT, CMP_LE, 1
    if                      0, off_0A46
    cmp                     0, V_RNG, CMP_GE, 28672
    sce_rnd
    nop
    if                      0, off_0A12
    cmp                     0, V_RNG, 6, 1
    if                      0, off_0A0E
    cmp                     0, V_RNG, 6, 2
    sce_espr_on             0, 5376, 0, 2560, -10400, -4500, -25100, 0
    endif
    nop

off_0A0E:
    else                    0, off_0A44

off_0A12:
    if                      0, off_0A30
    cmp                     0, V_RNG, 6, 2
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

off_0A4E:
    switch                  26, off_0A9A
    case                    0, off_0A60, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 50, 64
    break                   0

off_0A60:
    case                    0, off_0A6E, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 64
    break                   0

off_0A6E:
    case                    0, off_0A7C, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 75, 64
    break                   0

off_0A7C:
    case                    0, off_0A8A, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 75, 64
    break                   0

off_0A8A:
    case                    0, off_0A98, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 75, 64
    break                   0

off_0A98:
    eswitch                 0

off_0A9A:
    do                      0, off_0AA6
    evt_next
    nop
    edwhile                 off_0AA6
    ck                      FG_STATUS, 11, 0

off_0AA6:
    goto                    255, 255, 0, off_0A4E
    evt_end                 0
    db                      0x40, 0x68
