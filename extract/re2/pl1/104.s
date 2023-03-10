.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 25151, -28560, 3290, 1750, 12210, 0, -11899, 1120, 0, 5, 0, 0, 10, 0, 0, 0, UNLOCKED, 0
    aot_set                 1, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -24275, -28206, 17000, 10700, 0, 0, 0, 0, 0, 0
    aot_set                 2, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -7565, -28223, 8990, 10900, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, 1255, -28338, 8200, 10800, 0, 0, 0, 0, 0, 0
    aot_set                 4, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, 9055, -28338, 15900, 10800, 0, 0, 0, 0, 0, 0
    aot_set                 5, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -22228, -21637, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 6, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -21824, -24696, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 7, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -23108, -20166, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 8, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -22021, -22650, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 9, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -21824, -26236, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 10, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -21824, -23636, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 11, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -22049, -23636, 1800, 1800, 0, 0, 0, 0, 0, 0
    if                      0, off_0D40
    cmp                     0, 26, CMP_EQ, 0
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 6, 16, 0, 1, 0, 43, -23035, 0, -20374, 245, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 6, 16, 0, 2, 0, 44, -25200, 0, -24045, 3984, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 144, 0, 1, 0, 45, 14152, 0, -23396, 3729, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 144, 0, 2, 0, 46, -7865, 0, -19561, 1561, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 6, 144, 0, 1, 0, 47, 5278, 0, -23047, 1633, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 134, 16, 0, 2, 0, 48, -25624, 0, -21920, 289, 0, 0
    else                    0, off_0DC6

off_0D40:
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 6, 16, 0, 1, 0, 43, 20582, 0, -19501, 577, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 6, 16, 0, 2, 0, 44, 25230, 0, -20270, 1045, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 16, 0, 1, 0, 45, -2868, 0, -21616, 117, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 0, 16, 0, 2, 0, 46, -8812, 0, -22737, 121, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 16, 0, 1, 0, 47, 11435, 0, -23037, 3625, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 128, 16, 0, 2, 0, 48, -11315, 0, -21351, 77, 0, 0
    nop
    nop

off_0DC6:
    evt_end                 0

.main
.proc main_00
    set                     5, 0, 1
    evt_exec                255, I_GOSUB, main_03
    if                      0, off_0DF4
    cmp                     0, 26, CMP_EQ, 0
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_0DF4:
    evt_end                 0

.proc main_01
    switch                  26, off_0E96
    case                    0, off_0E00, 0

off_0E00:
    case                    0, off_0E40, 1
    if                      0, off_0E18
    ck                      5, 4, 0
    set                     5, 4, 1
    evt_exec                10, I_GOSUB, main_08
    endif
    nop

off_0E18:
    if                      0, off_0E2C
    ck                      5, 0, 0
    set                     5, 0, 1
    set                     5, 2, 0
    gosub                   4
    endif
    nop

off_0E2C:
    if                      0, off_0E3E
    ck                      5, 5, 0
    set                     5, 5, 1
    evt_exec                10, I_GOSUB, main_09
    endif
    nop

off_0E3E:
    break                   0

off_0E40:
    case                    0, off_0E5C, 2
    if                      0, off_0E5A
    ck                      5, 1, 0
    set                     5, 1, 1
    set                     5, 3, 0
    gosub                   5
    endif
    nop

off_0E5A:
    break                   0

off_0E5C:
    case                    0, off_0E78, 3
    if                      0, off_0E76
    ck                      5, 2, 0
    set                     5, 2, 1
    set                     5, 0, 0
    gosub                   6
    endif
    nop

off_0E76:
    break                   0

off_0E78:
    case                    0, off_0E94, 4
    if                      0, off_0E92
    ck                      5, 3, 0
    set                     5, 3, 1
    set                     5, 1, 0
    gosub                   7
    endif
    nop

off_0E92:
    break                   0

off_0E94:
    eswitch                 0

off_0E96:
    evt_end                 0

.proc main_02
    do                      0, off_0EA6
    evt_next
    nop
    edwhile                 off_0EA6
    cmp                     0, 26, CMP_NE, 1

off_0EA6:
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    do                      0, off_0EC6
    evt_next
    nop
    edwhile                 off_0EC6
    cmp                     0, 26, CMP_NE, 3

off_0EC6:
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    do                      0, off_0EE6
    evt_next
    nop
    edwhile                 off_0EE6
    cmp                     0, 26, CMP_NE, 4

off_0EE6:
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    evt_end                 0

.proc main_03
    switch                  26, off_0F8C

off_0EFE:
    case                    0, off_0F12, 0
    sce_bgm_control         0, 0, 1, 120, 59
    sce_bgm_control         0, 0, 2, 71, 65
    break                   0

off_0F12:
    case                    0, off_0F26, 1
    sce_bgm_control         0, 0, 1, 101, 25
    sce_bgm_control         0, 0, 2, 71, 65
    break                   0

off_0F26:
    case                    0, off_0F3A, 2
    sce_bgm_control         0, 0, 1, 61, 1
    sce_bgm_control         0, 0, 2, 71, 65
    break                   0

off_0F3A:
    case                    0, off_0F4E, 3
    sce_bgm_control         0, 0, 1, 31, 1
    sce_bgm_control         0, 0, 2, 71, 65
    break                   0

off_0F4E:
    case                    0, off_0F62, 4
    sce_bgm_control         0, 0, 1, 1, 65
    sce_bgm_control         0, 0, 2, 71, 65
    break                   0

off_0F62:
    case                    0, off_0F76, 5
    sce_bgm_control         0, 0, 1, 1, 65
    sce_bgm_control         0, 0, 2, 51, 65
    break                   0

off_0F76:
    case                    0, off_0F8A, 6
    sce_bgm_control         0, 0, 1, 1, 65
    sce_bgm_control         0, 0, 2, 41, 65
    break                   0

off_0F8A:
    eswitch                 0

off_0F8C:
    do                      0, off_0F98
    evt_next
    nop
    edwhile                 off_0F98
    ck                      1, 11, 0

off_0F98:
    goto                    255, 255, 0, off_0EFE
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 2
    nop
    if                      0, off_0FD6
    ck                      6, 45, 0
    if                      0, off_0FD4
    member_cmp              0, 9, 2, 3, 0
    member_set              7, 6, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, 1145, 0, -21930
    endif
    nop

off_0FD4:
    endif
    nop

off_0FD6:
    work_set                WK_ENEMY, 3
    nop
    if                      0, off_100C
    ck                      6, 46, 0
    if                      0, off_100A
    member_cmp              0, 9, 2, 3, 0
    member_set              7, 6, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, 5116, 0, -22557
    endif
    nop

off_100A:
    endif
    nop

off_100C:
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_1044
    ck                      6, 43, 0
    if                      0, off_1042
    member_cmp              0, 9, 2, 4, 0
    member_set              7, 6, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -17091, 0, -20195
    endif
    nop

off_1042:
    endif
    nop

off_1044:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_107E
    ck                      6, 44, 0
    if                      0, off_107C
    member_cmp              0, 9, 2, 4, 0
    member_set              7, 6, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_set              15, 75, 15
    pos_set                 0, -15419, 0, -23539
    endif
    nop

off_107C:
    endif
    nop

off_107E:
    evt_end                 0

.proc main_06
    work_set                WK_ENEMY, 2
    nop
    if                      0, off_10B6
    ck                      6, 45, 0
    if                      0, off_10B4
    member_cmp              0, 9, 0, 1, 0
    member_set              7, 6, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -7091, 0, -18990
    endif
    nop

off_10B4:
    endif
    nop

off_10B6:
    work_set                WK_ENEMY, 3
    nop
    if                      0, off_10F0
    ck                      6, 46, 0
    if                      0, off_10EE
    member_cmp              0, 9, 0, 1, 0
    member_set              7, 6, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_set              15, 222, 14
    pos_set                 0, -7804, 0, -23907
    endif
    nop

off_10EE:
    endif
    nop

off_10F0:
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_112A
    ck                      6, 43, 0
    if                      0, off_1128
    member_cmp              0, 9, 0, 1, 0
    member_set              7, 6, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_set              15, 49, 4
    pos_set                 0, -17091, 0, -20195
    endif
    nop

off_1128:
    endif
    nop

off_112A:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_117C
    ck                      6, 44, 0
    if                      0, off_117A
    member_cmp              0, 9, 0, 1, 0
    member_set              7, 6, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    if                      0, off_116A
    member_cmp              0, 29, 6, 1, 0
    pos_set                 0, 24815, 0, -19002
    else                    0, off_1178

off_116A:
    member_set              15, 59, 7
    pos_set                 0, 25967, 0, -20581
    nop
    nop

off_1178:
    endif
    nop

off_117A:
    endif
    nop

off_117C:
    evt_end                 0

.proc main_07
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_11B4
    ck                      6, 43, 0
    if                      0, off_11B2
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 6, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, 858, 0, -21143
    endif
    nop

off_11B2:
    endif
    nop

off_11B4:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_11EA
    ck                      6, 44, 0
    if                      0, off_11E8
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 6, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -528, 0, -23653
    endif
    nop

off_11E8:
    endif
    nop

off_11EA:
    evt_end                 0

.proc main_08
    light_kido_set          0, 14000
    for                     0, off_120C, 3
    evt_next
    nop
    if                      0, off_120A
    cmp                     0, 26, CMP_EQ, 3
    goto                    255, 255, 0, off_1248
    endif
    nop

off_120A:
    next                    0

off_120C:
    light_kido_set          0, 10000
    evt_next
    nop
    if                      0, off_1224
    cmp                     0, 26, CMP_EQ, 3
    goto                    255, 255, 0, off_1248
    endif
    nop

off_1224:
    light_kido_set          0, 16000
    for                     0, off_1244, 2
    evt_next
    nop
    if                      0, off_1242
    cmp                     0, 26, CMP_EQ, 3
    goto                    255, 255, 0, off_1248
    endif
    nop

off_1242:
    next                    0

off_1244:
    set                     5, 4, 0

off_1248:
    evt_end                 0

.proc main_09
    sce_espr_on             0, 14, 0, 11776, -22828, 0, -21137, 0
    sce_espr_on             0, 14, 0, 13312, -21624, 0, -23796, -512
    sce_espr_on             0, 14, 0, 12800, -22908, 0, -19266, -512
    sce_espr_on             0, 14, 0, 11776, -21921, 0, -21750, 0
    sce_espr_on             0, 14, 0, 13312, -23549, -800, -25336, 0
    sce_espr_on             0, 14, 0, 12288, -25897, -5400, -20630, 0
    sce_espr_on             0, 14, 0, 15360, -25075, -5300, -22433, -512
    sce_espr_on             0, 13, 0, 9216, -30584, -9200, -17382, 0
    sce_espr_on             0, 4612, 0, 15360, -30584, -9600, -17382, 512
    sce_espr_on             0, 4612, 0, 16384, -27921, -200, -19750, -252
    sce_espr_on             0, 4612, 0, 16896, -26853, -100, -24166, 312
    set                     5, 5, 1
    evt_end                 0
