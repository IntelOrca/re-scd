.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 25151, -28560, 3290, 1750, 12210, 0, -11899, 1120, 0, 5, 0, 0, 10, 0, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_1, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -24275, -28206, 17000, 10700, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_2, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -7565, -28223, 8990, 10900, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_3, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, 1255, -28338, 8200, 10800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_4, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, 9055, -28338, 15900, 10800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_5, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -22228, -21637, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_6, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -21824, -24696, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_7, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -23108, -20166, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_8, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -22021, -22650, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_9, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -21824, -26236, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_10, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -21824, -23636, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_11, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -22049, -23636, 1800, 1800, 0, 0, 0, 0, 0, 0
    if                      0, off_0D40
    cmp                     0, V_CUT, CMP_EQ, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 6, AI_10, 0, SBK_1, 0, 43, -23035, 0, -20374, 245, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 6, AI_10, 0, SBK_2, 0, 44, -25200, 0, -24045, 3984, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_10 | AI_INACTIVE, 0, SBK_1, 0, 45, 14152, 0, -23396, 3729, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_10 | AI_INACTIVE, 0, SBK_2, 0, 46, -7865, 0, -19561, 1561, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 6, AI_10 | AI_INACTIVE, 0, SBK_1, 0, 47, 5278, 0, -23047, 1633, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 134, AI_10, 0, SBK_2, 0, 48, -25624, 0, -21920, 289, 0, 0
    else                    0, off_0DC6

off_0D40:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 6, AI_10, 0, SBK_1, 0, 43, 20582, 0, -19501, 577, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 6, AI_10, 0, SBK_2, 0, 44, 25230, 0, -20270, 1045, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 0, AI_10, 0, SBK_1, 0, 45, -2868, 0, -21616, 117, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 0, AI_10, 0, SBK_2, 0, 46, -8812, 0, -22737, 121, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 0, AI_10, 0, SBK_1, 0, 47, 11435, 0, -23037, 3625, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 128, AI_10, 0, SBK_2, 0, 48, -11315, 0, -21351, 77, 0, 0
    nop
    nop

off_0DC6:
    evt_end                 0

.main
.proc main
    set                     FG_ROOM, 0, 1
    evt_exec                255, I_GOSUB, main_03
    if                      0, off_0DF4
    cmp                     0, V_CUT, CMP_EQ, 0
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_0DF4:
    evt_end                 0

.proc aot
    switch                  26, off_0E96
    case                    0, off_0E00, 0

off_0E00:
    case                    0, off_0E40, 1
    if                      0, off_0E18
    ck                      FG_ROOM, 4, 0
    set                     FG_ROOM, 4, 1
    evt_exec                10, I_GOSUB, main_08
    endif
    nop

off_0E18:
    if                      0, off_0E2C
    ck                      FG_ROOM, 0, 0
    set                     FG_ROOM, 0, 1
    set                     FG_ROOM, 2, 0
    gosub                   main_04
    endif
    nop

off_0E2C:
    if                      0, off_0E3E
    ck                      FG_ROOM, 5, 0
    set                     FG_ROOM, 5, 1
    evt_exec                10, I_GOSUB, main_09
    endif
    nop

off_0E3E:
    break                   0

off_0E40:
    case                    0, off_0E5C, 2
    if                      0, off_0E5A
    ck                      FG_ROOM, 1, 0
    set                     FG_ROOM, 1, 1
    set                     FG_ROOM, 3, 0
    gosub                   main_05
    endif
    nop

off_0E5A:
    break                   0

off_0E5C:
    case                    0, off_0E78, 3
    if                      0, off_0E76
    ck                      FG_ROOM, 2, 0
    set                     FG_ROOM, 2, 1
    set                     FG_ROOM, 0, 0
    gosub                   main_06
    endif
    nop

off_0E76:
    break                   0

off_0E78:
    case                    0, off_0E94, 4
    if                      0, off_0E92
    ck                      FG_ROOM, 3, 0
    set                     FG_ROOM, 3, 1
    set                     FG_ROOM, 1, 0
    gosub                   main_07
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
    cmp                     0, V_CUT, CMP_NE, 1

off_0EA6:
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    do                      0, off_0EC6
    evt_next
    nop
    edwhile                 off_0EC6
    cmp                     0, V_CUT, CMP_NE, 3

off_0EC6:
    work_set                WK_ENEMY, ID_EM_4
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    do                      0, off_0EE6
    evt_next
    nop
    edwhile                 off_0EE6
    cmp                     0, V_CUT, CMP_NE, 4

off_0EE6:
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    evt_end                 0

.proc main_03

off_0EFA:
    switch                  26, off_0F8C
    case                    0, off_0F12, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 120, 59
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 71, 65
    break                   0

off_0F12:
    case                    0, off_0F26, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 25
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 71, 65
    break                   0

off_0F26:
    case                    0, off_0F3A, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 61, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 71, 65
    break                   0

off_0F3A:
    case                    0, off_0F4E, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 31, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 71, 65
    break                   0

off_0F4E:
    case                    0, off_0F62, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 71, 65
    break                   0

off_0F62:
    case                    0, off_0F76, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 51, 65
    break                   0

off_0F76:
    case                    0, off_0F8A, 6
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 41, 65
    break                   0

off_0F8A:
    eswitch                 0

off_0F8C:
    do                      0, off_0F98
    evt_next
    nop
    edwhile                 off_0F98
    ck                      FG_STATUS, 11, 0

off_0F98:
    goto                    255, 255, 0, off_0EFA
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, ID_EM_2
    nop
    if                      0, off_0FD6
    ck                      FG_ENEMY, 45, 0
    if                      0, off_0FD4
    member_cmp              0, 9, 2, 3, 0
    member_set              M_TYPE, 4102
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 13
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    pos_set                 0, 1145, 0, -21930
    endif
    nop

off_0FD4:
    endif
    nop

off_0FD6:
    work_set                WK_ENEMY, ID_EM_3
    nop
    if                      0, off_100C
    ck                      FG_ENEMY, 46, 0
    if                      0, off_100A
    member_cmp              0, 9, 2, 3, 0
    member_set              M_TYPE, 4102
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 13
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    pos_set                 0, 5116, 0, -22557
    endif
    nop

off_100A:
    endif
    nop

off_100C:
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_1044
    ck                      FG_ENEMY, 43, 0
    if                      0, off_1042
    member_cmp              0, 9, 2, 4, 0
    member_set              M_TYPE, 4102
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 13
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    pos_set                 0, -17091, 0, -20195
    endif
    nop

off_1042:
    endif
    nop

off_1044:
    work_set                WK_ENEMY, ID_EM_1
    nop
    if                      0, off_107E
    ck                      FG_ENEMY, 44, 0
    if                      0, off_107C
    member_cmp              0, 9, 2, 4, 0
    member_set              M_TYPE, 4102
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 13
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    member_set              M_Y_DIR, 3915
    pos_set                 0, -15419, 0, -23539
    endif
    nop

off_107C:
    endif
    nop

off_107E:
    evt_end                 0

.proc main_06
    work_set                WK_ENEMY, ID_EM_2
    nop
    if                      0, off_10B6
    ck                      FG_ENEMY, 45, 0
    if                      0, off_10B4
    member_cmp              0, 9, 0, 1, 0
    member_set              M_TYPE, 4102
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 13
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    pos_set                 0, -7091, 0, -18990
    endif
    nop

off_10B4:
    endif
    nop

off_10B6:
    work_set                WK_ENEMY, ID_EM_3
    nop
    if                      0, off_10F0
    ck                      FG_ENEMY, 46, 0
    if                      0, off_10EE
    member_cmp              0, 9, 0, 1, 0
    member_set              M_TYPE, 4102
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 13
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    member_set              M_Y_DIR, 3806
    pos_set                 0, -7804, 0, -23907
    endif
    nop

off_10EE:
    endif
    nop

off_10F0:
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_112A
    ck                      FG_ENEMY, 43, 0
    if                      0, off_1128
    member_cmp              0, 9, 0, 1, 0
    member_set              M_TYPE, 4102
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 13
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    member_set              M_Y_DIR, 1073
    pos_set                 0, -17091, 0, -20195
    endif
    nop

off_1128:
    endif
    nop

off_112A:
    work_set                WK_ENEMY, ID_EM_1
    nop
    if                      0, off_117C
    ck                      FG_ENEMY, 44, 0
    if                      0, off_117A
    member_cmp              0, 9, 0, 1, 0
    member_set              M_TYPE, 4102
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 13
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    if                      0, off_116A
    member_cmp              0, 29, 6, 1, 0
    pos_set                 0, 24815, 0, -19002
    else                    0, off_1178

off_116A:
    member_set              M_Y_DIR, 1851
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
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_11B4
    ck                      FG_ENEMY, 43, 0
    if                      0, off_11B2
    member_cmp              0, 9, 4, 2, 0
    member_set              M_TYPE, 4102
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 13
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    pos_set                 0, 858, 0, -21143
    endif
    nop

off_11B2:
    endif
    nop

off_11B4:
    work_set                WK_ENEMY, ID_EM_1
    nop
    if                      0, off_11EA
    ck                      FG_ENEMY, 44, 0
    if                      0, off_11E8
    member_cmp              0, 9, 4, 2, 0
    member_set              M_TYPE, 4102
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 13
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
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
    cmp                     0, V_CUT, CMP_EQ, 3
    goto                    255, 255, 0, off_1244
    endif
    nop

off_120A:
    next                    0

off_120C:
    light_kido_set          0, 10000
    evt_next
    nop
    if                      0, off_1224
    cmp                     0, V_CUT, CMP_EQ, 3
    goto                    255, 255, 0, off_1244
    endif
    nop

off_1224:
    light_kido_set          0, 16000
    for                     0, off_1244, 2
    evt_next
    nop
    if                      0, off_1242
    cmp                     0, V_CUT, CMP_EQ, 3
    goto                    255, 255, 0, off_1244
    endif
    nop

off_1242:
    next                    0

off_1244:
    set                     FG_ROOM, 4, 0
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
    set                     FG_ROOM, 5, 1
    evt_end                 0
