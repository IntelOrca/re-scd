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
    if                      0, off_1CA0
    ck                      FG_STATUS, F_BONUS, 1
    cut_be_set              0, 2, 1
    cut_be_set              1, 3, 1
    cut_be_set              4, 1, 1
    sca_id_set              6, 0, 0
    evt_end                 0
    endif
    nop

off_1CA0:
    set                     FG_ROOM, 0, 0
    if                      0, off_1CD0
    ck                      FG_COMMON, 0, 1
    cut_be_set              0, 2, 1
    cut_be_set              1, 3, 1
    cut_be_set              4, 1, 1
    aot_reset               ID_AOT_4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_2, 0, 0, 0, 0, 255
    sca_id_set              6, 0, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 0
    else                    0, off_1D6A

off_1CD0:
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

off_1D6A:
    if                      0, off_1D76
    ck                      FG_STATUS, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_1D76:
    if                      0, off_1DA0
    ck                      FG_COMMON, 87, 1
    sca_id_set              12, 0, 0
    cut_be_set              4, 1, 0
    cut_be_set              4, 2, 1
    cut_be_set              8, 2, 0
    cut_be_set              8, 3, 1
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    else                    0, off_1DEE

off_1DA0:
    cut_be_set              4, 1, 1
    cut_be_set              4, 2, 0
    cut_be_set              8, 2, 1
    cut_be_set              8, 3, 0
    aot_set                 ID_AOT_5, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -19200, -4500, 2460, 2500, 10, 0, ITEM_C4DETONATOR, 0, aot, 0
    if                      0, off_1DEC
    ck                      FG_SCENARIO, 32, 0
    if                      0, off_1DEA
    ck                      FG_COMMON, 0, 1
    aot_set                 ID_AOT_6, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -17888, -9080, 1800, 2200, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_1DEA:
    endif
    nop

off_1DEC:
    nop
    nop

off_1DEE:
    evt_exec                255, I_GOSUB, main_07
    evt_end                 0

.proc aot
    if                      0, off_1E62
    ck                      FG_STATUS, F_BONUS, 0
    if                      0, off_1E44
    ck                      FG_COMMON, 0, 0
    if                      0, off_1E22
    cmp                     0, V_CUT, CMP_EQ, 2
    if                      0, off_1E20
    ck                      FG_ROOM, 0, 0
    set                     FG_ROOM, 0, 1
    evt_exec                8, I_GOSUB, main_08
    endif
    nop

off_1E20:
    endif
    nop

off_1E22:
    if                      0, off_1E40
    cmp                     0, V_CUT, CMP_GE, 3
    if                      0, off_1E3E
    ck                      FG_ROOM, 0, 0
    set                     FG_ROOM, 0, 1
    evt_exec                8, I_GOSUB, main_09
    endif
    nop

off_1E3E:
    endif
    nop

off_1E40:
    else                    0, off_1E60

off_1E44:
    if                      0, off_1E5E
    ck                      FG_COMMON, 87, 0
    if                      0, off_1E5C
    cmp                     0, V_USED_ITEM, CMP_EQ, 66
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_1E5C:
    endif
    nop

off_1E5E:
    nop
    nop

off_1E60:
    endif
    nop

off_1E62:
    evt_end                 0

.proc main_02
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_SCENARIO, 32, 1
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    xa_on                   0, 32
    evt_exec                255, I_GOSUB, main_03
    wsleep
    wsleeping
    sleep                   10, 15
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_03
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -18655, -1000, -4670, 40, 40
    sleep                   10, 5
    plc_motion              1, 1, 0
    sleep                   10, 4
    plc_stop
    nop
    sleep                   10, 30
    plc_stop
    nop
    plc_dest                0, 21, 3, 2968, 40
    while                   4, off_1EC8
    ck                      FG_ROOM, 3, 0
    evt_next
    nop
    ewhile                  0

off_1EC8:
    set                     FG_ROOM, 3, 0
    sleep                   10, 10
    plc_ret
    nop
    evt_end                 0

.proc main_04
    set                     FG_COMMON, 87, 1
    set                     FG_MAP_C, 1, 1
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    sce_item_lost           ITEM_C4DETONATOR
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sleep                   10, 10
    set                     FG_ROOM, 2, 1
    evt_exec                255, I_GOSUB, main_06
    evt_exec                255, I_GOSUB, main_05
    do                      0, off_1F16
    evt_next
    nop
    edwhile                 off_1F16
    ck                      FG_ROOM, 2, 1

off_1F16:
    sleep                   10, 20
    set                     FG_STATUS, 27, 0
    set                     FG_STOP, 7, 0
    sca_id_set              12, 0, 0
    cut_be_set              4, 1, 0
    cut_be_set              4, 2, 1
    cut_be_set              8, 2, 0
    cut_be_set              8, 3, 1
    evt_end                 0

.proc main_05
    while                   6, off_1F46
    cmp                     0, V_CUT, CMP_NE, 8
    evt_next
    nop
    ewhile                  0

off_1F46:
    sleep                   10, 40
    nop_8c                  0, 100, 200, 8, 0, 0, 0
    nop_8c                  0, 220, 160, 35, 0, 8, 0
    nop_8a                  0, 3, 0, 10, 0
    nop_8a                  0, 3, 0, 15, 0
    nop_8a                  0, 10, 0, 20, 0
    sce_espr_on             0, 6659, 0, 12288, -22619, -2000, -5620, 0
    sleep                   10, 2
    sce_espr_on             0, 6659, 0, 14336, -22917, -1800, -5620, 0
    sce_espr_on             0, 6659, 0, 11776, -22619, -3800, -5620, 0
    sleep                   10, 3
    sce_espr_on             0, 6659, 0, 13312, -23166, -2500, -6918, 0
    sce_espr_on             0, 6659, 0, 12288, -22619, -1200, -5620, 0
    evt_next
    nop
    sce_espr_on             0, 6659, 0, 12288, -21997, -3000, -6990, 0
    sce_espr_on             0, 1028, 0, 18432, -23217, -2000, -7337, 0
    se_on                   2, 266, 0, -19884, -1000, -4570
    save                    V_04, -23917
    save                    V_05, -22619
    save                    V_06, -23217
    for                     0, off_2082, 2
    evt_next
    nop
    work_copy               4, 8, 1
    sce_espr_on             0, 6659, 0, 12800, 0, -3800, -5620, 0
    work_copy               5, 8, 1
    sce_espr_on             0, 6659, 0, 11776, 0, -2400, -6081, 0
    work_copy               6, 8, 1
    sce_espr_on             0, 6659, 0, 14336, 0, -2000, -7337, 0
    work_copy               5, 8, 1
    sce_espr_on             0, 6659, 0, 11776, 0, -4800, -4820, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 300
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 200
    copy                    V_05, V_TEMP
    nop
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_SUB, V_TEMP, 250
    copy                    V_06, V_TEMP
    nop
    next                    0

off_2082:
    sce_fade_set            0, 1, 7, 0, 248
    set                     FG_STATUS, 29, 1
    save                    V_04, -23917
    save                    V_05, -22619
    save                    V_06, -23217
    sce_espr_on             0, 1028, 0, 18432, -23217, -3800, -7337, 0
    for                     0, off_212C, 3
    evt_next
    nop
    work_copy               4, 8, 1
    sce_espr_on             0, 6659, 0, 13056, 0, -3800, -5620, 0
    work_copy               5, 8, 1
    sce_espr_on             0, 6659, 0, 12032, 0, -2400, -6081, 0
    work_copy               6, 8, 1
    sce_espr_on             0, 6659, 0, 14592, 0, -2000, -7337, 0
    work_copy               5, 8, 1
    sce_espr_on             0, 6659, 0, 12032, 0, -4800, -4820, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 500
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 400
    copy                    V_05, V_TEMP
    nop
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_SUB, V_TEMP, 550
    copy                    V_06, V_TEMP
    nop
    next                    0

off_212C:
    sleep                   10, 20
    sce_espr_on             0, 25, 0, 496, -24800, -5100, -8800, 0
    sleep                   10, 10
    set                     FG_STATUS, 29, 0
    evt_end                 0

.proc main_06
    set                     FG_ROOM, 3, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 3, -26035, -5315
    plc_rot                 0, 160
    sleep                   10, 35
    plc_dest                0, 5, 3, -24118, -10848
    while                   4, off_2178
    ck                      FG_ROOM, 3, 0
    sleep                   10, 1
    ewhile                  0

off_2178:
    set                     FG_ROOM, 3, 0
    plc_dest                0, 9, 3, -26035, -10548
    while                   4, off_2192
    ck                      FG_ROOM, 3, 0
    sleep                   10, 1
    ewhile                  0

off_2192:
    plc_ret
    set                     FG_ROOM, 2, 0
    nop
    evt_end                 0

.proc main_07

off_219A:
    if                      0, off_21FE
    ck                      FG_COMMON, 0, 0
    switch                  26, off_21FC
    case                    0, off_21B4, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 52, 45
    break                   0

off_21B4:
    case                    0, off_21C2, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 56, 45
    break                   0

off_21C2:
    case                    0, off_21D0, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 72, 92
    break                   0

off_21D0:
    case                    0, off_21DE, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 96, 58
    break                   0

off_21DE:
    case                    0, off_21EC, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 127, 66
    break                   0

off_21EC:
    case                    0, off_21FA, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 110, 64
    break                   0

off_21FA:
    eswitch                 0

off_21FC:
    endif
    nop

off_21FE:
    do                      0, off_220A
    evt_next
    nop
    edwhile                 off_220A
    ck                      FG_STATUS, 11, 0

off_220A:
    goto                    255, 255, 0, off_219A
    evt_end                 0

.proc main_08
    light_pos_set           0, 0, 11, -20500
    light_pos_set           0, 0, 13, -4340
    for                     0, off_2228, 3
    evt_next
    nop
    next                    0

off_2228:
    light_pos_set           0, 0, 11, -21200
    light_pos_set           0, 0, 13, -6340
    evt_next
    nop
    light_pos_set           0, 0, 11, -21000
    light_pos_set           0, 0, 13, -5340
    for                     0, off_224C, 2
    evt_next
    nop
    next                    0

off_224C:
    set                     FG_ROOM, 0, 0
    evt_end                 0

.proc main_09
    light_kido_set          0, 20000
    light_pos_set           0, 1, 11, -18000
    light_pos_set           0, 1, 13, -5500
    for                     0, off_226C, 3
    evt_next
    nop
    next                    0

off_226C:
    light_kido_set          0, 9500
    light_pos_set           0, 1, 11, -18200
    light_pos_set           0, 1, 13, -5600
    evt_next
    nop
    light_kido_set          0, 13000
    light_pos_set           0, 1, 11, -18100
    light_pos_set           0, 1, 13, -5700
    for                     0, off_2298, 2
    evt_next
    nop
    next                    0

off_2298:
    set                     FG_ROOM, 0, 0
    evt_end                 0
    db                      0x30, 0x00
