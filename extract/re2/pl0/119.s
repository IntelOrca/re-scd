.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7838, -14845, 2000, 1800, -24907, 0, -25508, 3064, 0, 24, 10, 0, 10, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 13532, -20245, 2200, 1860, -7258, 0, -652, 3520, 0, 26, 0, 0, 48, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 2, AI_40, 0, SBK_0, 3, 255, 8838, 0, -23129, 2672, 256, 4
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    if                      0, off_0CA0
    ck                      FG_COMMON, 152, 0
    gosub                   main_03
    cut_be_set              2, 1, 0
    cut_be_set              2, 3, 1
    cut_replace             2, 4
    nop
    else                    0, off_0CB0

off_0CA0:
    gosub                   main_04
    cut_be_set              2, 1, 1
    cut_be_set              2, 3, 0
    evt_exec                255, I_GOSUB, main_07
    nop
    nop

off_0CB0:
    evt_exec                255, I_GOSUB, main_08
    gosub                   main_02
    evt_end                 0

.proc aot
    if                      0, off_0CD0
    ck                      FG_COMMON, 152, 0
    cmp                     0, V_CUT, CMP_EQ, 4
    set                     FG_ROOM, 0, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_0CD0:
    if                      0, off_0D16
    ck                      FG_ROOM, 0, 1
    ck                      FG_ROOM, 1, 0
    if                      0, off_0CF8
    cmp                     0, V_CUT, CMP_EQ, 1
    set                     FG_ROOM, 1, 1
    cut_replace             4, 2
    cut_be_set              2, 1, 1
    cut_be_set              2, 3, 0
    nop
    endif
    nop

off_0CF8:
    if                      0, off_0D14
    cmp                     0, V_CUT, CMP_EQ, 3
    set                     FG_ROOM, 1, 1
    cut_replace             4, 2
    cut_be_set              2, 1, 1
    cut_be_set              2, 3, 0
    nop
    endif
    nop

off_0D14:
    endif
    nop

off_0D16:
    if                      0, off_0D22
    ck                      FG_STATUS, 11, 1
    gosub                   main_02
    endif
    nop

off_0D22:
    evt_end                 0

.proc main_02
    switch                  26, off_0DAC
    case                    0, off_0D42, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_0D42:
    case                    0, off_0D5C, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_0D5C:
    case                    0, off_0D76, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_0D76:
    case                    0, off_0D90, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_0D90:
    case                    0, off_0DAA, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_0DAA:
    eswitch                 0

off_0DAC:
    evt_end                 0

.proc main_03
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 72, AI_40, 0, SBK_7, 1, 164, 10607, 0, -22880, 1776, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 72, AI_40, 0, SBK_41, 0, 165, 9032, 0, -21668, 1120, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 72, AI_40, 0, SBK_7, 2, 166, 7037, 0, -22218, 240, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 72, AI_40, 0, SBK_41, 0, 167, 8799, 0, -24166, 3696, 0, 0
    evt_end                 0

.proc main_04
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 64, AI_DEFAULT, 0, SBK_7, 1, 164, 11327, 0, -23764, 2208, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 64, AI_DEFAULT, 0, SBK_41, 0, 165, 7031, 0, -20470, 1440, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 64, AI_DEFAULT, 0, SBK_7, 2, 166, -359, 0, -20925, 1728, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 64, AI_DEFAULT, 0, SBK_41, 0, 167, 2683, 0, -23059, -944, 0, 0
    evt_end                 0

.proc main_05
    set                     FG_COMMON, 152, 1
    sleep                   10, 10
    work_set                WK_ENEMY, ID_EM_4
    nop
    gosub                   main_06
    sleep                   10, 20
    work_set                WK_ENEMY, ID_EM_2
    nop
    gosub                   main_06
    sleep                   10, 50
    work_set                WK_ENEMY, ID_EM_3
    nop
    gosub                   main_06
    sleep                   10, 20
    work_set                WK_ENEMY, ID_EM_1
    nop
    gosub                   main_06
    sleep                   10, 90
    gosub                   main_07
    evt_end                 0

.proc main_06
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 8
    member_set              M_ROUTINE2, 3
    member_set              M_ROUTINE3, 0
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    evt_end                 0

.proc main_07
    evt_next
    work_set                WK_ENEMY, ID_EM_0
    plc_stop
    nop
    evt_end                 0

.proc main_08
    evt_next
    work_set                WK_ENEMY, ID_EM_0
    kage_set                3, 0, 16, 191, 191, 1350, 1350, 0, 0
    evt_end                 0
    db                      0x00, 0x70
