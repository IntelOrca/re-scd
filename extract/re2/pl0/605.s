.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, 20000, 20000, 1, 1, -2651, 0, -14679, 2056, 5, 3, 7, 0, 40, 4, 0, 0, UNLOCKED, 0
    sce_em_set              0, 0, ENEMY_LICKERGREY, 0, 0, 0, 51, 0, 49, -12871, 0, -7014, 1183, 0, 0
    sce_em_set              0, 1, ENEMY_LICKERGREY, 0, 0, 0, 51, 0, 50, -10516, 0, -15903, 2149, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 4, 0, 10, 16, -25030, 0, -23196, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_espr_on             0, 2063, 0, 5120, -4400, 3300, -11700, 0
    sce_espr_on             0, 2063, 0, 4992, -2600, 3300, -11700, 0
    sce_espr_on             0, 2063, 0, 4864, -3700, 3300, -13600, 0
    sce_espr_on             0, 2063, 0, 6144, -800, 3300, -14600, 0
    sce_espr_on             0, 2063, 0, 7168, -1200, 3300, -16200, 0
    sce_espr_on             0, 2063, 0, 6400, -3500, 3300, -16500, 0
    sce_espr_on             0, 2063, 0, 7424, -3600, 3300, -18800, 0
    sce_espr_on             0, 2063, 0, 6272, -900, 3300, -16900, 0
    sce_espr_on             0, 2063, 0, 6144, -4300, 3300, -11700, 0
    sce_espr_on             0, 2063, 0, 5120, -2700, 3300, -11700, 0
    sce_espr_on             0, 2063, 0, 4096, -3700, 3300, -13500, 0
    sce_espr_on             0, 2063, 0, 6144, -800, 3300, -14700, 0
    sce_espr_on             0, 2063, 0, 4608, -1100, 3300, -16200, 0
    sce_espr_on             0, 2063, 0, 7168, -3600, 3300, -16500, 0
    sce_espr_on             0, 2063, 0, 6656, -3600, 3300, -18700, 0
    sce_espr_on             0, 2063, 0, 5632, -900, 3300, -17000, 0
    evt_end                 0
    db                      0x92, 0x04

.main
.proc main_00
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -25620, -24161, 2010, 2020, 255, 0, I_GOSUB, main_0D, 0, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 6411, -7611, 1940, 2320, 255, 0, I_GOSUB, main_05, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7720, -18280, 1800, 5200, 255, 0, I_GOSUB, main_08, 0, 0
    evt_exec                255, I_GOSUB, main_09
    evt_exec                255, I_GOSUB, main_11
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_1BB0
    ck                      7, 49, 0
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 1, 0
    endif
    nop

off_1BB0:
    evt_end                 0

.proc main_03
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_1BCE
    ck                      7, 50, 0
    work_set                WK_ENEMY, 2
    nop
    member_set              23, 1, 0
    endif
    nop

off_1BCE:
    evt_end                 0

.proc main_04
    evt_next
    work_set                WK_ENEMY, 0

off_1BD4:
    if                      0, off_1BE4
    ck                      5, 32, 1
    member_set              23, 1, 0
    else                    0, off_1BEA

off_1BE4:
    member_set              23, 0, 0
    nop
    nop

off_1BEA:
    evt_next
    nop
    goto                    255, 255, 0, off_1BD4 + 1
    evt_end                 0

.proc main_05
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     2, 0, 1
    set                     2, 7, 1
    set                     2, 2, 1
    if                      0, off_1C64
    ck                      4, 145, 0
    cut_chg                 9
    message_on              0, 0, 0, 0, 255
    evt_next
    nop
    if                      0, off_1C50
    ck                      11, 31, 0
    set                     4, 145, 1
    set                     22, 1, 0
    se_on                   2, 266, 1, 0, 0, 0
    sleep                   10, 2
    se_on                   2, 267, 1, 0, 0, 0
    sleep                   10, 28
    else                    0, off_1C5E

off_1C50:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_1C5E:
    cut_old
    nop
    else                    0, off_1C6E

off_1C64:
    message_on              0, 1, 0, 0, 255
    evt_next
    nop
    nop
    nop

off_1C6E:
    set                     2, 2, 0
    set                     2, 0, 0
    set                     2, 7, 0
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_05, 0, 0
    evt_end                 0

.proc main_06
    if                      0, off_1CA2
    ck                      7, 49, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_1CA2:
    if                      0, off_1CBE
    ck                      7, 50, 0
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_1CBE:
    set                     5, 31, 1
    evt_end                 0

.proc main_07
    if                      0, off_1CE0
    ck                      7, 49, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_XOR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_1CE0:
    if                      0, off_1CFC
    ck                      7, 50, 0
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_XOR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_1CFC:
    set                     5, 31, 0
    evt_end                 0

.proc main_08
    cut_auto                1
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, 2, 0, 0, 239
    evt_next
    nop
    aot_reset               3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_08, 0, 0
    evt_end                 0

.proc main_09
    set                     2, 7, 1
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_0A
    evt_exec                255, I_GOSUB, main_0B
    sleep                   10, 90
    set                     2, 7, 0
    evt_end                 0

.proc main_0A
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 160, 246
    speed_set               1, 40
    for                     0, off_1D50, 2
    add_speed
    evt_next
    next                    0

off_1D50:
    nop_8b                  100, 90, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 87, 0
    nop_8a                  0, 3, 0, 85, 0
    se_on                   0, 1, 0, 0, 0, 0
    for                     0, off_1D7A, 8
    add_speed
    evt_next
    next                    0

off_1D7A:
    speed_set               1, 35
    for                     0, off_1D88, 20
    add_speed
    evt_next
    next                    0

off_1D88:
    speed_set               1, 30
    for                     0, off_1D96, 15
    add_speed
    evt_next
    next                    0

off_1D96:
    speed_set               1, 25
    for                     0, off_1DA4, 15
    add_speed
    evt_next
    next                    0

off_1DA4:
    speed_set               1, 20
    for                     0, off_1DB2, 15
    add_speed
    evt_next
    next                    0

off_1DB2:
    speed_set               1, 15
    for                     0, off_1DC0, 10
    add_speed
    evt_next
    next                    0

off_1DC0:
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 10
    member_set2             12, 16
    nop
    sleep                   10, 5
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 35
    member_set2             12, 16
    nop
    evt_end                 0

.proc main_0B
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -24990, -2400, -23090
    member_set              15, 0, 0
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    gosub                   12
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    evt_end                 0

.proc main_0C
    speed_set               1, 40
    for                     0, off_1E20, 10
    add_speed
    evt_next
    next                    0

off_1E20:
    speed_set               1, 35
    for                     0, off_1E2E, 20
    add_speed
    evt_next
    next                    0

off_1E2E:
    speed_set               1, 30
    for                     0, off_1E3C, 15
    add_speed
    evt_next
    next                    0

off_1E3C:
    speed_set               1, 25
    for                     0, off_1E4A, 15
    add_speed
    evt_next
    next                    0

off_1E4A:
    speed_set               1, 20
    for                     0, off_1E58, 15
    add_speed
    evt_next
    next                    0

off_1E58:
    speed_set               1, 15
    for                     0, off_1E66, 10
    add_speed
    evt_next
    next                    0

off_1E66:
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 10
    member_set2             12, 16
    nop
    sleep                   10, 5
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 35
    member_set2             12, 16
    nop
    evt_end                 0

.proc main_0D
    aot_on                  0
    evt_end                 0

.proc main_0E
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -27329, 0, -23540
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    gosub                   16
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    evt_end                 0

.proc main_0F
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 0, 0
    speed_set               1, -40
    for                     0, off_1ECE, 2
    add_speed
    evt_next
    next                    0

off_1ECE:
    for                     0, off_1ED8, 8
    add_speed
    evt_next
    next                    0

off_1ED8:
    speed_set               1, -35
    for                     0, off_1EE6, 20
    add_speed
    evt_next
    next                    0

off_1EE6:
    evt_end                 0

.proc main_10
    speed_set               1, -40
    for                     0, off_1EF6, 10
    add_speed
    evt_next
    next                    0

off_1EF6:
    speed_set               1, -35
    for                     0, off_1F04, 20
    add_speed
    evt_next
    next                    0

off_1F04:
    evt_end                 0

.proc main_11
    evt_next
    nop

off_1F08:
    switch                  26, off_2026
    case                    0, off_1F20, 0
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 60, 64
    break                   0

off_1F20:
    case                    0, off_1F34, 1
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 80, 64
    break                   0

off_1F34:
    case                    0, off_1F48, 2
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 100, 64
    break                   0

off_1F48:
    case                    0, off_1F5C, 3
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 100, 64
    break                   0

off_1F5C:
    case                    0, off_1F70, 4
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 100, 64
    break                   0

off_1F70:
    case                    0, off_1F84, 5
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 100, 64
    break                   0

off_1F84:
    case                    0, off_1F98, 6
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 120, 64
    break                   0

off_1F98:
    case                    0, off_1FAC, 7
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 80, 64
    break                   0

off_1FAC:
    case                    0, off_1FC0, 8
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 80, 64
    break                   0

off_1FC0:
    case                    0, off_1FD4, 9
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 80, 64
    break                   0

off_1FD4:
    case                    0, off_1FE8, 10
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 100, 64
    break                   0

off_1FE8:
    case                    0, off_1FFC, 11
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 80, 64
    break                   0

off_1FFC:
    case                    0, off_2010, 12
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 80, 64
    break                   0

off_2010:
    case                    0, off_2024, 13
    sce_bgm_control         1, 0, 1, 90, 64
    sce_bgm_control         1, 0, 2, 80, 64
    break                   0

off_2024:
    eswitch                 0

off_2026:
    do                      0, off_2032
    evt_next
    nop
    edwhile                 off_2032
    ck                      1, 11, 0

off_2032:
    goto                    255, 255, 0, off_1F08 + 3
    evt_end                 0
    db                      0x88, 0x48
