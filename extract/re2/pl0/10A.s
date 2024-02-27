.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23889, -26379, 1800, 2200, -26505, 0, -24896, 0, 0, 9, 6, 0, 0, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28159, -22686, 1600, 5020, -15091, 0, -18195, 2096, 0, 15, 0, 0, 5, 128, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15481, -9444, 2800, 1260, -18363, 0, -13512, 1039, 0, 11, 0, 0, 3, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21700, 8350, 1430, 1690, -9798, 0, -20111, -2143, 1, 27, 0, 0, 0, 0, 0, 0, UNLOCKED, 0
    if                      0, off_1AE4
    ck                      FG_STATUS, F_BONUS, 1
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_6, 0, 74, -24336, 0, -25994, 2859, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_43, 0, 123, -23892, 0, -22831, 3125, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_6, 0, 124, -25379, 0, -24310, 2995, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_43, 0, 125, -25923, 0, -25882, 3061, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_6, 0, 126, -23861, 0, -18512, 2199, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_43, 0, 127, -24329, 0, -11488, 1280, 0, 0
    aot_reset               ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_3, 0, 0, 0, 0, 255
    evt_end                 0
    endif
    nop

off_1AE4:
    if                      0, off_1BE6
    ck                      FG_COMMON, 0, 0
    sce_espr_on             0, 13, 0, 7680, -16530, -100, -4877, 512
    sce_espr_on             0, 14, 0, 10240, -17386, -100, -6290, 0
    sce_espr_on             0, 13, 0, 10240, -16605, -100, -7370, 3584
    sce_espr_on             0, 14, 0, 9216, -17251, -300, -5767, 20
    sce_espr_on             0, 13, 0, 8704, -17375, -500, -4490, 0
    sce_espr_on             0, 13, 0, 11776, -15541, -200, -7886, 3584
    sce_espr_on             0, 14, 0, 10240, -13587, -100, -7562, 512
    sce_espr_on             0, 13, 0, 11776, -17438, 0, -4630, 0
    sce_espr_on             0, 14, 0, 7680, -16030, -800, -5500, 0
    if                      0, off_1BB4
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_COP, 6, AI_DEFAULT, 0, SBK_5, 0, 76, -23968, 0, -12309, 1251, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_COP, 128, AI_DEFAULT, 0, SBK_6, 0, 77, -21635, 0, -4759, 1800, 0, 0
    else                    0, off_1BE2

off_1BB4:
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_RED, 1, AI_01, 0, SBK_14, 0, 76, -27000, -3000, -12400, 1024, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_LICKER_RED, 0, AI_DEFAULT, 0, SBK_14, 0, 77, -22712, 0, -6235, 1800, 0, 0
    nop
    nop

off_1BE2:
    else                    0, off_1C6C

off_1BE6:
    aot_set                 ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20400, -4500, 2460, 2500, ID_MSG_1, 0, 0, 0, 0, 255
    if                      0, off_1C6A
    ck                      FG_STATUS, F_PLAYER, 0
    if                      0, off_1C3A
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_COP, 6, AI_DEFAULT, 0, SBK_5, 0, 76, -23968, 0, -12309, 1251, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 0, SBK_6, 0, 77, -21635, 0, -4759, 1800, 0, 0
    else                    0, off_1C68

off_1C3A:
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_RED, 1, AI_01, 0, SBK_14, 0, 76, -27000, -3000, -12400, 1024, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_LICKER_RED, 0, AI_DEFAULT, 0, SBK_14, 0, 77, -22712, 0, -6235, 1800, 0, 0
    nop
    nop

off_1C68:
    endif
    nop

off_1C6A:
    nop
    nop

off_1C6C:
    evt_end                 0
    db                      0x48, 0xB0

.main
.proc main
    if                      0, off_1C96
    ck                      FG_STATUS, F_BONUS, 1
    cut_be_set              0, 2, 1
    cut_be_set              1, 3, 1
    cut_be_set              4, 1, 1
    sca_id_set              6, 0, 0
    evt_end                 0
    endif
    nop

off_1C96:
    set                     FG_ROOM, 0, 0
    if                      0, off_1CBC
    ck                      FG_COMMON, 0, 1
    cut_be_set              0, 2, 1
    cut_be_set              1, 3, 1
    cut_be_set              4, 1, 1
    sca_id_set              6, 0, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 0
    else                    0, off_1D56

off_1CBC:
    cut_be_set              0, 2, 0
    cut_be_set              1, 3, 0
    cut_be_set              4, 1, 0
    aot_set                 ID_AOT_4, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -18930, -5777, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_5, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -18286, -7190, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_6, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -17505, -9080, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_7, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -19451, -6667, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_8, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -18275, -5390, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_9, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -16441, -8786, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_10, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -14487, -8462, 1800, 1800, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1D56:
    if                      0, off_1D80
    ck                      FG_COMMON, 87, 1
    sca_id_set              12, 0, 0
    cut_be_set              4, 1, 0
    cut_be_set              4, 2, 1
    cut_be_set              8, 2, 0
    cut_be_set              8, 3, 1
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    else                    0, off_1D92

off_1D80:
    cut_be_set              4, 1, 1
    cut_be_set              4, 2, 0
    cut_be_set              8, 2, 1
    cut_be_set              8, 3, 0
    nop
    nop

off_1D92:
    evt_exec                255, I_GOSUB, main_02
    evt_end                 0

.proc aot
    if                      0, off_1DEC
    ck                      FG_STATUS, F_BONUS, 0
    if                      0, off_1DE8
    ck                      FG_COMMON, 0, 0
    if                      0, off_1DC6
    cmp                     0, V_CUT, CMP_EQ, 2
    if                      0, off_1DC4
    ck                      FG_ROOM, 0, 0
    set                     FG_ROOM, 0, 1
    evt_exec                255, I_GOSUB, main_03
    endif
    nop

off_1DC4:
    endif
    nop

off_1DC6:
    if                      0, off_1DE4
    cmp                     0, V_CUT, CMP_GE, 3
    if                      0, off_1DE2
    ck                      FG_ROOM, 0, 0
    set                     FG_ROOM, 0, 1
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_1DE2:
    endif
    nop

off_1DE4:
    else                    0, off_1DEA

off_1DE8:
    nop
    nop

off_1DEA:
    endif
    nop

off_1DEC:
    evt_end                 0

.proc main_02

off_1DEE:
    if                      0, off_1E52
    ck                      FG_COMMON, 0, 0
    switch                  26, off_1E50
    case                    0, off_1E08, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 52, 45
    break                   0

off_1E08:
    case                    0, off_1E16, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 56, 45
    break                   0

off_1E16:
    case                    0, off_1E24, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 72, 92
    break                   0

off_1E24:
    case                    0, off_1E32, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 96, 58
    break                   0

off_1E32:
    case                    0, off_1E40, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 127, 66
    break                   0

off_1E40:
    case                    0, off_1E4E, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 110, 64
    break                   0

off_1E4E:
    eswitch                 0

off_1E50:
    endif
    nop

off_1E52:
    do                      0, off_1E5E
    evt_next
    nop
    edwhile                 off_1E5E
    ck                      FG_STATUS, 11, 0

off_1E5E:
    goto                    255, 255, 0, off_1DEE
    evt_end                 0

.proc main_03
    light_pos_set           0, 0, 11, -20500
    light_pos_set           0, 0, 13, -4340
    for                     0, off_1E7C, 3
    evt_next
    nop
    next                    0

off_1E7C:
    light_pos_set           0, 0, 11, -21200
    light_pos_set           0, 0, 13, -6340
    evt_next
    nop
    light_pos_set           0, 0, 11, -21000
    light_pos_set           0, 0, 13, -5340
    for                     0, off_1EA0, 2
    evt_next
    nop
    next                    0

off_1EA0:
    set                     FG_ROOM, 0, 0
    evt_end                 0

.proc main_04
    light_kido_set          0, 20000
    light_pos_set           0, 1, 11, -18000
    light_pos_set           0, 1, 13, -5500
    for                     0, off_1EC0, 3
    evt_next
    nop
    next                    0

off_1EC0:
    light_kido_set          0, 9500
    light_pos_set           0, 1, 11, -18200
    light_pos_set           0, 1, 13, -5600
    evt_next
    nop
    light_kido_set          0, 13000
    light_pos_set           0, 1, 11, -18100
    light_pos_set           0, 1, 13, -5700
    for                     0, off_1EEC, 2
    evt_next
    nop
    next                    0

off_1EEC:
    set                     FG_ROOM, 0, 0
    evt_end                 0
    db                      0x00, 0x04
