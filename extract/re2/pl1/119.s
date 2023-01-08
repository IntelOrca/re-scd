.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7838, -14845, 2000, 1800, -24907, 0, -25508, 3064, 0, 24, 10, 0, 10, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 13532, -20245, 2200, 1860, -7258, 0, -652, 3520, 0, 26, 0, 0, 48, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 2, 64, 0, 0, 3, 255, 8838, 0, -23129, 2672, 256, 4
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    if                      0, off_0CA0
    ck                      4, 152, 0
    gosub                   3
    cut_be_set              2, 1, 0
    cut_be_set              2, 3, 1
    cut_replace             2, 4
    nop
    else                    0, off_0CB0

off_0CA0:
    gosub                   4
    cut_be_set              2, 1, 1
    cut_be_set              2, 3, 0
    evt_exec                255, I_GOSUB, main_07
    nop
    nop

off_0CB0:
    evt_exec                255, I_GOSUB, main_08
    gosub                   2
    evt_end                 0

.proc main_01
    if                      0, off_0CD0
    ck                      4, 152, 0
    cmp                     0, 26, CMP_EQ, 4
    set                     5, 0, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_0CD0:
    if                      0, off_0D16
    ck                      5, 0, 1
    ck                      5, 1, 0
    if                      0, off_0CF8
    cmp                     0, 26, CMP_EQ, 1
    set                     5, 1, 1
    cut_replace             4, 2
    cut_be_set              2, 1, 1
    cut_be_set              2, 3, 0
    nop
    endif
    nop

off_0CF8:
    if                      0, off_0D14
    cmp                     0, 26, CMP_EQ, 3
    set                     5, 1, 1
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
    ck                      1, 11, 1
    gosub                   2
    endif
    nop

off_0D22:
    evt_end                 0

.proc main_02
    switch                  26, off_0DAC
    case                    0, off_0D42, 0
    sce_bgm_control         0, 0, 1, 1, 65
    sce_bgm_control         0, 0, 2, 61, 65
    sce_bgm_control         0, 0, 3, 51, 65
    break                   0

off_0D42:
    case                    0, off_0D5C, 1
    sce_bgm_control         0, 0, 1, 1, 65
    sce_bgm_control         0, 0, 2, 61, 65
    sce_bgm_control         0, 0, 3, 51, 65
    break                   0

off_0D5C:
    case                    0, off_0D76, 2
    sce_bgm_control         0, 0, 1, 1, 65
    sce_bgm_control         0, 0, 2, 61, 65
    sce_bgm_control         0, 0, 3, 51, 65
    break                   0

off_0D76:
    case                    0, off_0D90, 3
    sce_bgm_control         0, 0, 1, 1, 65
    sce_bgm_control         0, 0, 2, 61, 65
    sce_bgm_control         0, 0, 3, 51, 65
    break                   0

off_0D90:
    case                    0, off_0DAA, 4
    sce_bgm_control         0, 0, 1, 1, 65
    sce_bgm_control         0, 0, 2, 61, 65
    sce_bgm_control         0, 0, 3, 51, 65
    break                   0

off_0DAA:
    eswitch                 0

off_0DAC:
    evt_end                 0

.proc main_03
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 72, 64, 0, 7, 1, 164, 10607, 0, -22880, 1776, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 72, 64, 0, 41, 0, 165, 9032, 0, -21668, 1120, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 72, 64, 0, 7, 2, 166, 7037, 0, -22218, 240, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 72, 64, 0, 41, 0, 167, 8799, 0, -24166, 3696, 0, 0
    evt_end                 0

.proc main_04
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 64, 0, 0, 7, 1, 164, 11327, 0, -23764, 2208, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 64, 0, 0, 41, 0, 165, 7031, 0, -20470, 1440, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 64, 0, 0, 7, 2, 166, -359, 0, -20925, 1728, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 64, 0, 0, 41, 0, 167, 2683, 0, -23059, -944, 0, 0
    evt_end                 0

.proc main_05
    set                     4, 152, 1
    sleep                   10, 10
    work_set                WK_ENEMY, 4
    nop
    gosub                   6
    sleep                   10, 20
    work_set                WK_ENEMY, 2
    nop
    gosub                   6
    sleep                   10, 50
    work_set                WK_ENEMY, 3
    nop
    gosub                   6
    sleep                   10, 20
    work_set                WK_ENEMY, 1
    nop
    gosub                   6
    sleep                   10, 90
    gosub                   7
    evt_end                 0

.proc main_06
    member_set              2, 1, 0
    member_set              3, 8, 0
    member_set              4, 3, 0
    member_set              5, 0, 0
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    evt_end                 0

.proc main_07
    evt_next
    work_set                WK_ENEMY, 0
    plc_stop
    nop
    evt_end                 0

.proc main_08
    evt_next
    work_set                WK_ENEMY, 0
    kage_set                3, 0, 16, 191, 191, 70, 5, 70, 5, 0, 0, 0, 0
    evt_end                 0
    db                      0x00, 0x70
