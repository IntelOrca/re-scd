.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26110, 21279, 3800, 990, -23360, 0, -23967, -960, 0, 1, 2, 0, 2, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 10023, -15421, 3620, 1300, -24371, -5400, -20441, -1024, 0, 3, 0, 3, 10, 0, 0, 0, UNLOCKED, 0
    aot_set                 2, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -13734, 3530, 3400, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -13634, -1270, 3320, 1690, 0, 0, 0, 0, 0, 0
    aot_set                 4, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -15484, 15800, 900, 1430, 0, 0, 0, 0, 0, 0
    aot_set                 6, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -15484, 12702, 1430, 1550, 0, 0, 0, 0, 0, 0
    aot_set                 7, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -14157, -9723, 4000, 2460, 0, 0, 0, 0, 0, 0
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 6, 0, 0, 7, 1, 255, -17121, 0, 14475, 4024, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 6, 0, 0, 8, 2, 255, -19176, 0, 15573, 40, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 7, 0, 255, -18221, 0, 11775, 4056, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 0, 0, 8, 0, 255, -18221, 0, 11775, 4056, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 128, 0, 7, 2, 51, -8446, 0, -21970, 3225, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 0, 128, 0, 8, 0, 52, -2910, 0, -22188, 3320, 0, 0
    sce_em_set              0, 6, ENEMY_ZOMBIERANDOM, 0, 128, 0, 7, 3, 53, 10807, 0, -16853, 3320, 0, 0
    evt_end                 0
    db                      0xB9, 0x12

.main
.proc main_00
    evt_exec                255, I_GOSUB, main_0B
    evt_exec                255, I_GOSUB, main_0C
    evt_exec                255, I_GOSUB, main_03
    evt_exec                255, I_GOSUB, main_02
    if                      0, off_1B98
    ck                      4, 27, 0
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_09, 0, 0
    aot_set                 5, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -22469, 17635, 3200, 6000, 255, 0, I_GOSUB, main_09, 0, 0
    endif
    nop

off_1B98:
    evt_end                 0

.proc main_01
    if                      0, off_1BC6
    cmp                     0, 26, CMP_EQ, 6
    if                      0, off_1BB6
    ck                      5, 2, 0
    set                     5, 2, 1
    evt_exec                255, I_GOSUB, main_06
    endif
    nop

off_1BB6:
    if                      0, off_1BC2
    ck                      5, 3, 0
    gosub                   7
    endif
    nop

off_1BC2:
    else                    0, off_1BD8

off_1BC6:
    set                     5, 2, 0
    if                      0, off_1BD6
    ck                      5, 3, 1
    gosub                   8
    endif
    nop

off_1BD6:
    nop
    nop

off_1BD8:
    evt_end                 0

.proc main_02
    work_set                WK_PLAYER, 0
    nop

off_1BDE:
    if                      0, off_1C28
    cmp                     0, 26, CMP_EQ, 4
    if                      0, off_1C06
    member_cmp              0, 9, 0, 2, 0
    if                      0, off_1C04
    ck                      5, 0, 0
    set                     5, 0, 1
    set                     5, 1, 0
    endif
    nop

off_1C04:
    endif
    nop

off_1C06:
    if                      0, off_1C26
    member_cmp              0, 9, 0, 3, 0
    if                      0, off_1C24
    ck                      5, 1, 0
    set                     5, 1, 1
    set                     5, 0, 0
    gosub                   5
    endif
    nop

off_1C24:
    endif
    nop

off_1C26:
    endif
    nop

off_1C28:
    sleep                   10, 1
    goto                    255, 255, 0, off_1BDE
    evt_end                 0

.proc main_03
    switch                  26, off_1D58

off_1C38:
    case                    0, off_1C52, 0
    sce_bgm_control         0, 0, 1, 20, 98
    sce_bgm_control         0, 0, 2, 58, 65
    sce_bgm_control         0, 0, 3, 45, 65
    break                   0

off_1C52:
    case                    0, off_1C6C, 1
    sce_bgm_control         0, 0, 1, 25, 58
    sce_bgm_control         0, 0, 2, 50, 65
    sce_bgm_control         0, 0, 3, 70, 65
    break                   0

off_1C6C:
    case                    0, off_1C86, 2
    sce_bgm_control         0, 0, 1, 20, 125
    sce_bgm_control         0, 0, 2, 60, 80
    sce_bgm_control         0, 0, 3, 65, 64
    break                   0

off_1C86:
    case                    0, off_1CA0, 3
    sce_bgm_control         0, 0, 1, 20, 125
    sce_bgm_control         0, 0, 2, 60, 65
    sce_bgm_control         0, 0, 3, 65, 65
    break                   0

off_1CA0:
    case                    0, off_1CBA, 4
    sce_bgm_control         0, 0, 1, 20, 125
    sce_bgm_control         0, 0, 2, 70, 65
    sce_bgm_control         0, 0, 3, 55, 65
    break                   0

off_1CBA:
    case                    0, off_1CD4, 5
    sce_bgm_control         0, 0, 1, 20, 125
    sce_bgm_control         0, 0, 2, 61, 65
    sce_bgm_control         0, 0, 3, 55, 65
    break                   0

off_1CD4:
    case                    0, off_1CEE, 6
    sce_bgm_control         0, 0, 1, 100, 70
    sce_bgm_control         0, 0, 2, 51, 65
    sce_bgm_control         0, 0, 3, 54, 65
    break                   0

off_1CEE:
    case                    0, off_1D08, 7
    sce_bgm_control         0, 0, 1, 76, 125
    sce_bgm_control         0, 0, 2, 51, 65
    sce_bgm_control         0, 0, 3, 54, 65
    break                   0

off_1D08:
    case                    0, off_1D22, 8
    sce_bgm_control         0, 0, 1, 40, 125
    sce_bgm_control         0, 0, 2, 51, 65
    sce_bgm_control         0, 0, 3, 52, 65
    break                   0

off_1D22:
    case                    0, off_1D3C, 9
    sce_bgm_control         0, 0, 1, 20, 125
    sce_bgm_control         0, 0, 2, 51, 65
    sce_bgm_control         0, 0, 3, 40, 65
    break                   0

off_1D3C:
    case                    0, off_1D56, 10
    sce_bgm_control         0, 0, 1, 20, 125
    sce_bgm_control         0, 0, 2, 51, 65
    sce_bgm_control         0, 0, 3, 40, 65
    break                   0

off_1D56:
    eswitch                 0

off_1D58:
    do                      0, off_1D66
    sleep                   10, 1
    edwhile                 off_1D66
    ck                      1, 11, 0

off_1D66:
    goto                    255, 255, 0, off_1C38
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_1D9C
    ck                      6, 51, 0
    member_set              7, 0, 0
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_set              15, 216, 15
    pos_set                 0, -18221, 0, 11775
    endif
    nop

off_1D9C:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_1DCA
    ck                      6, 52, 0
    member_set              7, 0, 0
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_set              15, 216, 15
    pos_set                 0, -16200, 0, 11975
    endif
    nop

off_1DCA:
    work_set                WK_ENEMY, 2
    nop
    if                      0, off_1DF8
    ck                      6, 53, 0
    member_set              7, 0, 0
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_set              15, 184, 15
    pos_set                 0, -17121, 0, 14475
    endif
    nop

off_1DF8:
    work_set                WK_ENEMY, 3
    nop
    if                      0, off_1E26
    ck                      6, 54, 0
    member_set              7, 0, 0
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_set              15, 184, 14
    pos_set                 0, -17252, 0, 12144
    endif
    nop

off_1E26:
    set                     5, 4, 0
    set                     5, 5, 0
    set                     5, 6, 0
    set                     5, 7, 0
    set                     5, 8, 0
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 5
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 6
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 7
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    evt_end                 0

.proc main_06
    light_kido_set          0, 24000
    for                     0, off_1EA6, 3
    evt_next
    nop
    if                      0, off_1EA4
    cmp                     0, 26, CMP_NE, 6
    goto                    255, 255, 0, off_1EE2
    endif
    nop

off_1EA4:
    next                    0

off_1EA6:
    light_kido_set          0, 30000
    evt_next
    nop
    if                      0, off_1EBE
    cmp                     0, 26, CMP_NE, 6
    goto                    255, 255, 0, off_1EE2
    endif
    nop

off_1EBE:
    light_kido_set          0, 26000
    for                     0, off_1EDE, 2
    evt_next
    nop
    if                      0, off_1EDC
    cmp                     0, 26, CMP_NE, 6
    goto                    255, 255, 0, off_1EE2
    endif
    nop

off_1EDC:
    next                    0

off_1EDE:
    set                     5, 2, 0

off_1EE2:
    evt_end                 0

.proc main_07
    set                     5, 3, 1
    sce_espr_on             0, 14, 0, 17408, -22344, -600, -16203, -512
    sce_espr_on             0, 14, 0, 17920, -24339, -550, -19113, 0
    sce_espr_on             0, 4612, 0, 15872, -22344, -800, -16203, -256
    sce_espr_on             0, 4612, 0, 16384, -24339, -750, -19113, 128
    evt_end                 0

.proc main_08
    set                     5, 3, 0
    sce_espr_kill           14, 0, 0, 0
    sce_espr_kill           4, 18, 0, 0
    evt_end                 0

.proc main_09
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 192, 164, 0, 0, 97, 162
    set                     4, 27, 1
    set                     1, 27, 1
    set                     2, 7, 1
    sleep                   10, 30
    se_on                   2, 289, 0, -23895, -1000, 20658
    evt_exec                255, I_GOSUB, main_0A
    sleep                   10, 10
    if                      0, off_1F84
    ck                      1, 0, 0
    xa_vol                  70
    xa_on                   0, 11
    else                    0, off_1F8C

off_1F84:
    xa_vol                  50
    xa_on                   0, 9
    nop
    nop

off_1F8C:
    sleep                   10, 130
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_0A
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -128, 80, 80
    sleep                   10, 20
    plc_neck                1, -24615, -2000, 23994, 80, 80
    sleep                   10, 80
    plc_neck                0, 0, 0, 0, 30, 30
    sleep                   10, 60
    plc_ret
    nop
    evt_end                 0

.proc main_0B
    if                      0, off_2084

off_1FD4:
    cmp                     0, 26, CMP_EQ, 2
    if                      0, off_2012
    ck                      5, 4, 0
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_2010
    member_cmp              0, 2, 5, 7, 0
    if                      0, off_200E
    member_cmp              0, 9, 0, 4, 0
    if                      0, off_200C
    cmp                     0, 29, CMP_GE, 28672
    evt_exec                255, I_GOSUB, main_0D
    sce_rnd
    nop
    endif
    nop

off_200C:
    endif
    nop

off_200E:
    endif
    nop

off_2010:
    endif
    nop

off_2012:
    if                      0, off_204A
    ck                      5, 5, 0
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_2048
    member_cmp              0, 2, 5, 7, 0
    if                      0, off_2046
    member_cmp              0, 9, 0, 6, 0
    if                      0, off_2044
    cmp                     0, 29, CMP_GE, 28672
    evt_exec                255, I_GOSUB, main_0E
    sce_rnd
    nop
    endif
    nop

off_2044:
    endif
    nop

off_2046:
    endif
    nop

off_2048:
    endif
    nop

off_204A:
    if                      0, off_2082
    ck                      5, 6, 0
    work_set                WK_ENEMY, 2
    nop
    if                      0, off_2080
    member_cmp              0, 2, 5, 7, 0
    if                      0, off_207E
    member_cmp              0, 9, 0, 6, 0
    if                      0, off_207C
    cmp                     0, 29, CMP_GE, 28672
    evt_exec                255, I_GOSUB, main_0F
    sce_rnd
    nop
    endif
    nop

off_207C:
    endif
    nop

off_207E:
    endif
    nop

off_2080:
    endif
    nop

off_2082:
    endif
    nop

off_2084:
    sleep                   10, 2
    goto                    255, 255, 0, off_1FD4
    evt_end                 0

.proc main_0C
    if                      0, off_20F4

off_2094:
    ck                      5, 4, 1
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_20DA
    member_cmp              0, 24, 6, 0, 128
    se_on                   2, 288, 3, 0, 0, 0
    if                      0, off_20CA
    ck                      5, 7, 0
    set                     5, 7, 1
    set                     15, 3, 1
    set                     15, 4, 0
    else                    0, off_20D8

off_20CA:
    set                     5, 7, 0
    set                     15, 4, 1
    set                     15, 3, 0
    nop
    nop

off_20D8:
    endif
    nop

off_20DA:
    if                      0, off_20E8
    member_cmp              0, 24, 6, 0, 64
    else                    0, off_20EE

off_20E8:
    set                     5, 4, 0
    nop
    nop

off_20EE:
    member_set              24, 0, 0
    endif
    nop

off_20F4:
    if                      0, off_2132
    ck                      5, 5, 1
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_2118
    member_cmp              0, 24, 6, 0, 128
    se_on                   2, 288, 259, 0, 0, 0
    endif
    nop

off_2118:
    if                      0, off_2126
    member_cmp              0, 24, 6, 0, 64
    else                    0, off_212C

off_2126:
    set                     5, 5, 0
    nop
    nop

off_212C:
    member_set              24, 0, 0
    endif
    nop

off_2132:
    if                      0, off_2170
    ck                      5, 6, 1
    work_set                WK_ENEMY, 2
    nop
    if                      0, off_2156
    member_cmp              0, 24, 6, 0, 128
    se_on                   2, 288, 515, 0, 0, 0
    endif
    nop

off_2156:
    if                      0, off_2164
    member_cmp              0, 24, 6, 0, 64
    else                    0, off_216A

off_2164:
    set                     5, 6, 0
    nop
    nop

off_216A:
    member_set              24, 0, 0
    endif
    nop

off_2170:
    evt_next
    nop
    goto                    255, 255, 0, off_2094
    evt_end                 0

.proc main_0D
    work_set                WK_ENEMY, 0
    set                     5, 4, 1
    nop
    member_set              23, 0, 128
    sleep                   10, 1
    member_copy             16, 23
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             23, 16
    nop
    evt_end                 0

.proc main_0E
    work_set                WK_ENEMY, 1
    set                     5, 5, 1
    nop
    member_set              23, 0, 64
    sleep                   10, 1
    member_copy             16, 23
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             23, 16
    nop
    evt_end                 0

.proc main_0F
    work_set                WK_ENEMY, 2
    set                     5, 6, 1
    nop
    member_set              23, 0, 64
    sleep                   10, 1
    member_copy             16, 23
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             23, 16
    nop
    evt_end                 0
    db                      0x08, 0x00
