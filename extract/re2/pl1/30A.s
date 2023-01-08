.version 2
.init
.proc init_00
    if                      0, off_1694
    ck                      4, 254, 1
    set                     3, 99, 0
    set                     1, 3, 1
    endif
    nop

off_1694:
    door_aot_se             5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -18062, -18794, 2200, 1380, -17273, -5400, 1678, 488, 2, 9, 3, 3, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             6, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4932, -14464, 1830, 3510, -7988, -7200, -25463, -6104, 3, 0, 0, 4, 31, 0, 0, 0, UNLOCKED, 0
    mizu_div_set            2
    obj_model_set           0, 1, 130, 4, 4, 0, 1, 10, 26, -3550, -700, -10800, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 130, 4, 4, 0, 0, 10, 26, 950, -700, -15300, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 7, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -5442, -16994, 10900, 7700, 68, 253, 0, 0, 0, 0
    evt_end                 0

.main
.proc main_00
    if                      0, off_181E
    ck                      3, 99, 0
    if                      0, off_177C
    ck                      1, 3, 0
    aot_reset               6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 255, 255
    else                    0, off_181A

off_177C:
    if                      0, off_179E
    ck                      1, 1, 0
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 1, 32, 0, 255, -17438, -1800, -16289, 0, 0, 0
    else                    0, off_17B6

off_179E:
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 12, 1, 32, 0, 255, -17438, -1800, -16289, 0, 0, 0
    nop
    nop

off_17B6:
    aot_set                 0, SCE_EVENT, SAT_PL | SAT_UNDER, 1, 0, 1207, -19339, 8270, 9380, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 3, SCE_NORMAL, SAT_OB | SAT_UNDER, 1, 0, 807, -19339, 8270, 9380, 0, 0, 0, 0, 0, 0
    if                      0, off_1800
    ck                      1, 1, 0
    sce_em_set              0, 0, ENEMY_48, 3, 64, 4, 28, 0, 255, 0, -7200, 0, 1024, 0, 0
    else                    0, off_1818

off_1800:
    sce_em_set              0, 1, ENEMY_TYRANT1, 1, 64, 4, 18, 0, 255, 0, -7200, 0, 1040, 0, 0
    nop
    nop

off_1818:
    nop
    nop

off_181A:
    else                    0, off_1824

off_181E:
    sca_id_set              13, 0, 0
    nop
    nop

off_1824:
    gosub                   15
    evt_end                 0

.proc main_01
    gosub                   18
    evt_end                 0

.proc main_02
    sce_bgmtbl_set          0, 10, 3, 65295, 0
    evt_end                 0

.proc main_03
    set                     1, 27, 1
    set                     2, 7, 1
    aot_reset               0, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    set                     3, 99, 1
    work_set                WK_SPLAYER, 0
    splc_sce
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    sca_id_set              13, 0, 0
    sca_id_set              4, 0, 0
    gosub                   4
    gosub                   7
    gosub                   8
    gosub                   9
    gosub                   10
    gosub                   11
    gosub                   12
    work_set                WK_SPLAYER, 0
    splc_ret
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    work_set                WK_PLAYER, 0
    plc_ret
    if                      0, off_1898
    ck                      1, 1, 0
    save                    32, 15
    endif
    nop

off_1898:
    cut_auto                1
    gosub                   2
    set                     2, 7, 0
    set                     1, 27, 0
    aot_on                  2
    evt_end                 0

.proc main_04
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 33, 2715, -16033
    gosub                   13
    work_set                WK_SPLAYER, 0
    nop
    member_copy             4, 11
    nop
    member_copy             5, 13
    nop
    work_set                WK_PLAYER, 0
    nop
    work_copy               5, 10, 1
    work_copy               4, 4, 1
    plc_dest                0, 9, 33, 0, 0
    plc_neck                5, 2, 0, 0, 96, 96
    evt_exec                255, I_GOSUB, main_05
    while                   4, off_18F0
    ck                      5, 0, 0
    evt_next
    nop
    ewhile                  0

off_18F0:
    set                     5, 0, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             6, 11
    nop
    member_copy             7, 13
    nop
    work_set                WK_SPLAYER, 0
    nop
    work_copy               7, 10, 1
    work_copy               6, 4, 1
    plc_dest                0, 9, 34, 0, 0
    plc_neck                5, 1, 0, 0, 96, 96
    work_set                WK_SPLAYER, 0
    nop
    member_copy             4, 11
    nop
    member_copy             5, 13
    nop
    work_set                WK_PLAYER, 0
    nop
    work_copy               5, 10, 1
    work_copy               4, 4, 1
    plc_dest                0, 9, 33, 0, 0
    gosub                   13
    xa_on                   0, 49
    sleep                   10, 2
    message_on              0, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    wsleep
    wsleeping
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 256, 64, 64
    sleep                   10, 5
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_06
    while                   4, off_1988
    ck                      5, 0, 0
    evt_next
    nop
    ewhile                  0

off_1988:
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 33, 2667, -13859
    gosub                   13
    wsleep
    wsleeping
    evt_end                 0

.proc main_05
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 5, 34, 2022, -17085
    while                   6, off_19B4
    cmp                     0, 1, CMP_NE, 3
    evt_next
    nop
    ewhile                  0

off_19B4:
    set                     5, 0, 1
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    plc_dest                0, 6, 34, 2022, -17085
    evt_end                 0

.proc main_06
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 5, 34, 2568, -12676
    plc_neck                2, 0, 0, 0, 64, 64
    while                   6, off_19F0
    cmp                     0, 1, CMP_EQ, 3
    evt_next
    nop
    ewhile                  0

off_19F0:
    sleep                   10, 80
    set                     5, 0, 1
    gosub                   14
    set                     5, 0, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             6, 11
    nop
    member_copy             7, 13
    nop
    work_set                WK_SPLAYER, 0
    nop
    work_copy               7, 10, 1
    work_copy               6, 4, 1
    plc_dest                0, 9, 34, 0, 0
    plc_neck                5, 1, 0, 0, 96, 96
    evt_end                 0

.proc main_07
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 33, 334, -13331
    sleep                   10, 5
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 4, 34, 530, -12356
    se_on                   2, 10, 0, 3170, -5200, -13080
    sce_espr_on             0, 25, 0, 4096, 3170, -6200, -14080, 0
    sce_espr_on             0, 25, 0, 8192, 3170, -5200, -13080, 0
    sce_espr_on             0, 25, 0, 4096, 3170, -7200, -12580, 0
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    plc_stop
    work_set                WK_SPLAYER, 0
    plc_stop
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -128, 64, 64
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, -128, 64, 64
    sleep                   10, 8
    sce_bgm_control         1, 1, 0, 0, 0
    sleep                   10, 12
    evt_end                 0

.proc main_08
    cut_chg                 6
    if                      0, off_1ACC
    ck                      1, 1, 0
    work_set                WK_ENEMY, 0
    nop
    else                    0, off_1AD2

off_1ACC:
    work_set                WK_ENEMY, 1
    nop
    nop
    nop

off_1AD2:
    pos_set                 0, 4469, -7200, -11015
    dir_set                 0, 0, 1024, 0
    member_set              23, 1, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 334, 0, -13331
    dir_set                 0, 0, 2549, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 856, 0, -12670
    dir_set                 0, 0, 1917, 0
    evt_next
    nop
    if                      0, off_1B20
    ck                      1, 1, 0
    work_set                WK_ENEMY, 0
    nop
    else                    0, off_1B26

off_1B20:
    work_set                WK_ENEMY, 1
    nop
    nop
    nop

off_1B26:
    pos_set                 0, 4469, -7200, -11015
    dir_set                 0, 0, 1024, 0
    if                      0, off_1B5E
    ck                      1, 1, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 96, 96
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 96, 96
    else                    0, off_1B7C

off_1B5E:
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 1, 0, 96, 96
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 3, 1, 0, 96, 96
    nop
    nop

off_1B7C:
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 33, 15763, -12914
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 9, 34, 15763, -12914
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    plc_motion              1, 1, 0
    nop
    sleep                   10, 5
    work_set                WK_SPLAYER, 0
    plc_motion              1, 1, 0
    nop
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 5
    work_set                WK_SPLAYER, 0
    plc_stop
    evt_end                 0

.proc main_09
    cut_chg                 7
    sleep                   10, 10
    if                      0, off_1BD8
    ck                      1, 1, 0
    work_set                WK_ENEMY, 0
    nop
    else                    0, off_1BDE

off_1BD8:
    work_set                WK_ENEMY, 1
    nop
    nop
    nop

off_1BDE:
    member_set              23, 2, 0
    sleep                   10, 60
    evt_end                 0

.proc main_0A
    cut_chg                 6
    work_set                WK_PLAYER, 0
    nop
    dir_set                 0, 0, 3397, 0
    plc_motion              1, 1, 64
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 856, 0, -12670
    dir_set                 0, 0, 1373, 0
    plc_neck                2, 0, 0, 256, 64, 64
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    plc_stop
    xa_on                   0, 50
    sleep                   10, 1
    message_on              0, 3, 0, 0, 0
    sleep                   10, 4
    work_set                WK_PLAYER, 0
    nop
    member_copy             6, 11
    nop
    member_copy             7, 13
    nop
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 5, 34, 128, -13874
    sleep                   10, 5
    dir_set                 0, 0, 1313, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 96, 96
    sleep                   10, 5
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 32, 32
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 16
    nop
    sleep                   10, 12
    plc_stop
    nop
    sleep                   10, 5
    if                      0, off_1CAE
    ck                      1, 1, 0
    plc_neck                5, 3, 0, 0, 32, 32
    else                    0, off_1CBA

off_1CAE:
    plc_neck                5, 3, 1, 0, 32, 32
    nop
    nop

off_1CBA:
    sleep                   10, 30
    wsleep
    wsleeping
    evt_end                 0

.proc main_0B
    cut_chg                 7
    sleep                   10, 10
    if                      0, off_1CD8
    ck                      1, 1, 0
    work_set                WK_ENEMY, 0
    nop
    else                    0, off_1CDE

off_1CD8:
    work_set                WK_ENEMY, 1
    nop
    nop
    nop

off_1CDE:
    member_set              23, 4, 0
    sleep                   10, 60
    evt_end                 0

.proc main_0C
    cut_chg                 4
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 96, 96
    plc_motion              0, 17, 8
    evt_next
    nop
    xa_on                   0, 51
    sleep                   10, 2
    message_on              0, 2, 0, 0, 0
    sleep                   10, 3
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 7, 34, 2376, -11819
    sleep                   10, 10
    plc_stop
    nop
    sleep                   10, 5
    plc_neck                2, 0, 0, 256, 64, 64
    sleep                   10, 5
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 10
    wsleep
    wsleeping
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 33, -2794, -13047
    sleep                   10, 5
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 5, 34, -3040, -12118
    gosub                   13
    evt_end                 0

.proc main_0D
    do                      0, off_1D72
    evt_next
    nop
    edwhile                 off_1D72
    ck                      5, 33, 0

off_1D72:
    evt_end                 0

.proc main_0E
    do                      0, off_1D80
    evt_next
    nop
    edwhile                 off_1D80
    ck                      5, 34, 0

off_1D80:
    evt_end                 0

.proc main_0F
    save                    8, 16
    sce_bgm_control         0, 0, 2, 1, 0
    gosub                   18
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -18062, -18794, 2200, 1380, 255, 0, I_GOSUB, main_10, 0, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4932, -14464, 1830, 3510, 255, 0, I_GOSUB, main_11, 0, 0
    evt_end                 0

.proc main_10
    message_on              0, 4, 0, 255, 255
    evt_next
    nop
    if                      0, off_1DCC
    ck                      11, 31, 0
    aot_on                  5
    endif
    nop

off_1DCC:
    evt_end                 0

.proc main_11
    aot_on                  6
    evt_end                 0

.proc main_12
    if                      0, off_1E5C
    work_copy               8, 4, 1
    cmp                     0, 26, CMP_NE, 0
    switch                  26, off_1E56
    case                    0, off_1DF2, 0
    sce_bgm_control         0, 0, 1, 50, 64
    break                   0

off_1DF2:
    case                    0, off_1E00, 1
    sce_bgm_control         0, 0, 1, 60, 64
    break                   0

off_1E00:
    case                    0, off_1E0E, 2
    sce_bgm_control         0, 0, 1, 70, 64
    break                   0

off_1E0E:
    case                    0, off_1E1C, 3
    sce_bgm_control         0, 0, 1, 90, 40
    break                   0

off_1E1C:
    case                    0, off_1E2A, 4
    sce_bgm_control         0, 0, 1, 100, 64
    break                   0

off_1E2A:
    case                    0, off_1E38, 5
    sce_bgm_control         0, 0, 1, 100, 64
    break                   0

off_1E38:
    case                    0, off_1E46, 6
    sce_bgm_control         0, 0, 1, 100, 64
    break                   0

off_1E46:
    case                    0, off_1E54, 7
    sce_bgm_control         0, 0, 1, 100, 64
    break                   0

off_1E54:
    eswitch                 0

off_1E56:
    copy                    8, 26
    nop
    endif
    nop

off_1E5C:
    evt_end                 0
    db                      0x00, 0x00
