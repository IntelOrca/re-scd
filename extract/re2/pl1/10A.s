.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23889, -26379, 1800, 2200, -26505, 0, -24896, 0, 0, 9, 6, 0, 0, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28159, -22686, 1600, 5020, -15091, 0, -18195, 2096, 0, 15, 0, 0, 5, 128, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15481, -9444, 2800, 1260, -18363, 0, -13512, 1039, 0, 11, 0, 0, 3, 1, 0, 0, UNLOCKED, 0
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21700, 8350, 1430, 1690, -9798, 0, -20111, -2143, 1, 27, 0, 0, 0, 0, 0, 0, UNLOCKED, 0
    if                      0, off_1AE4
    ck                      1, 6, 1
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 6, 0, 0, 6, 0, 74, -24336, 0, -25994, 2859, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 43, 0, 123, -23892, 0, -22831, 3125, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 0, 6, 0, 124, -25379, 0, -24310, 2995, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 0, 0, 43, 0, 125, -25923, 0, -25882, 3061, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 0, 0, 6, 0, 126, -23861, 0, -18512, 2199, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 0, 0, 0, 43, 0, 127, -24329, 0, -11488, 1280, 0, 0
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 0, 255
    evt_end                 0
    endif
    nop

off_1AE4:
    if                      0, off_1BE6
    ck                      4, 0, 0
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
    ck                      1, 1, 0
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 6, 0, 0, 5, 0, 76, -23968, 0, -12309, 1251, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 128, 0, 0, 6, 0, 77, -21635, 0, -4759, 1800, 0, 0
    else                    0, off_1BE2

off_1BB4:
    sce_em_set              0, 0, ENEMY_LICKERRED, 1, 1, 0, 14, 0, 76, -27000, -3000, -12400, 1024, 0, 0
    sce_em_set              0, 1, ENEMY_LICKERRED, 0, 0, 0, 14, 0, 77, -22712, 0, -6235, 1800, 0, 0
    nop
    nop

off_1BE2:
    else                    0, off_1C6C

off_1BE6:
    aot_set                 4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20400, -4500, 2460, 2500, 1, 0, 0, 0, 0, 255
    if                      0, off_1C6A
    ck                      1, 0, 0
    if                      0, off_1C3A
    ck                      1, 1, 0
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 6, 0, 0, 5, 0, 76, -23968, 0, -12309, 1251, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 0, 0, 0, 6, 0, 77, -21635, 0, -4759, 1800, 0, 0
    else                    0, off_1C68

off_1C3A:
    sce_em_set              0, 0, ENEMY_LICKERRED, 1, 1, 0, 14, 0, 76, -27000, -3000, -12400, 1024, 0, 0
    sce_em_set              0, 1, ENEMY_LICKERRED, 0, 0, 0, 14, 0, 77, -22712, 0, -6235, 1800, 0, 0
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
.proc main_00
    if                      0, off_1CA0
    ck                      1, 6, 1
    cut_be_set              0, 2, 1
    cut_be_set              1, 3, 1
    cut_be_set              4, 1, 1
    sca_id_set              6, 0, 0
    evt_end                 0
    endif
    nop

off_1CA0:
    set                     5, 0, 0
    if                      0, off_1CD0
    ck                      4, 0, 1
    cut_be_set              0, 2, 1
    cut_be_set              1, 3, 1
    cut_be_set              4, 1, 1
    aot_reset               4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, 0, 0, 0, 255
    sca_id_set              6, 0, 0
    sce_bgm_control         0, 0, 1, 1, 0
    else                    0, off_1D6A

off_1CD0:
    cut_be_set              0, 2, 0
    cut_be_set              1, 3, 0
    cut_be_set              4, 1, 0
    aot_set                 4, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -18930, -5777, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 5, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -18286, -7190, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 6, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -17505, -9080, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 7, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -19451, -6667, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 8, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -18275, -5390, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 9, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -16441, -8786, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 10, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, -14487, -8462, 1800, 1800, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1D6A:
    if                      0, off_1D76
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_1D76:
    if                      0, off_1DA0
    ck                      4, 87, 1
    sca_id_set              12, 0, 0
    cut_be_set              4, 1, 0
    cut_be_set              4, 2, 1
    cut_be_set              8, 2, 0
    cut_be_set              8, 3, 1
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    else                    0, off_1DEE

off_1DA0:
    cut_be_set              4, 1, 1
    cut_be_set              4, 2, 0
    cut_be_set              8, 2, 1
    cut_be_set              8, 3, 0
    aot_set                 5, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -19200, -4500, 2460, 2500, 10, 0, 66, 0, 1, 0
    if                      0, off_1DEC
    ck                      3, 32, 0
    if                      0, off_1DEA
    ck                      4, 0, 1
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -17888, -9080, 1800, 2200, 255, 0, I_GOSUB, main_02, 0, 0
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

.proc main_01
    if                      0, off_1E62
    ck                      1, 6, 0
    if                      0, off_1E44
    ck                      4, 0, 0
    if                      0, off_1E22
    cmp                     0, 26, CMP_EQ, 2
    if                      0, off_1E20
    ck                      5, 0, 0
    set                     5, 0, 1
    evt_exec                8, I_GOSUB, main_08
    endif
    nop

off_1E20:
    endif
    nop

off_1E22:
    if                      0, off_1E40
    cmp                     0, 26, CMP_GE, 3
    if                      0, off_1E3E
    ck                      5, 0, 0
    set                     5, 0, 1
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
    ck                      4, 87, 0
    if                      0, off_1E5C
    cmp                     0, 2, CMP_EQ, 66
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
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     3, 32, 1
    set                     2, 7, 1
    set                     1, 27, 1
    xa_on                   0, 32
    evt_exec                255, I_GOSUB, main_03
    wsleep
    wsleeping
    sleep                   10, 15
    set                     2, 7, 0
    set                     1, 27, 0
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
    ck                      5, 3, 0
    evt_next
    nop
    ewhile                  0

off_1EC8:
    set                     5, 3, 0
    sleep                   10, 10
    plc_ret
    nop
    evt_end                 0

.proc main_04
    set                     4, 87, 1
    set                     32, 1, 1
    set                     2, 7, 1
    set                     1, 27, 1
    sce_item_lost           66
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sleep                   10, 10
    set                     5, 2, 1
    evt_exec                255, I_GOSUB, main_06
    evt_exec                255, I_GOSUB, main_05
    do                      0, off_1F16
    evt_next
    nop
    edwhile                 off_1F16
    ck                      5, 2, 1

off_1F16:
    sleep                   10, 20
    set                     1, 27, 0
    set                     2, 7, 0
    sca_id_set              12, 0, 0
    cut_be_set              4, 1, 0
    cut_be_set              4, 2, 1
    cut_be_set              8, 2, 0
    cut_be_set              8, 3, 1
    evt_end                 0

.proc main_05
    while                   6, off_1F46
    cmp                     0, 26, CMP_NE, 8
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
    save                    4, -23917
    save                    5, -22619
    save                    6, -23217
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
    copy                    16, 4
    nop
    calc                    0, OP_SUB, 16, 300
    copy                    4, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 200
    copy                    5, 16
    nop
    copy                    16, 6
    nop
    calc                    0, OP_SUB, 16, 250
    copy                    6, 16
    nop
    next                    0

off_2082:
    sce_fade_set            0, 1, 7, 0, 248
    set                     1, 29, 1
    save                    4, -23917
    save                    5, -22619
    save                    6, -23217
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
    copy                    16, 4
    nop
    calc                    0, OP_SUB, 16, 500
    copy                    4, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 400
    copy                    5, 16
    nop
    copy                    16, 6
    nop
    calc                    0, OP_SUB, 16, 550
    copy                    6, 16
    nop
    next                    0

off_212C:
    sleep                   10, 20
    sce_espr_on             0, 25, 0, 496, -24800, -5100, -8800, 0
    sleep                   10, 10
    set                     1, 29, 0
    evt_end                 0

.proc main_06
    set                     5, 3, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 3, -26035, -5315
    plc_rot                 0, 160
    sleep                   10, 35
    plc_dest                0, 5, 3, -24118, -10848
    while                   4, off_2178
    ck                      5, 3, 0
    sleep                   10, 1
    ewhile                  0

off_2178:
    set                     5, 3, 0
    plc_dest                0, 9, 3, -26035, -10548
    while                   4, off_2192
    ck                      5, 3, 0
    sleep                   10, 1
    ewhile                  0

off_2192:
    plc_ret
    set                     5, 2, 0
    nop
    evt_end                 0

.proc main_07
    if                      0, off_21FE

off_219E:
    ck                      4, 0, 0
    switch                  26, off_21FC
    case                    0, off_21B4, 0
    sce_bgm_control         0, 0, 1, 52, 45
    break                   0

off_21B4:
    case                    0, off_21C2, 1
    sce_bgm_control         0, 0, 1, 56, 45
    break                   0

off_21C2:
    case                    0, off_21D0, 2
    sce_bgm_control         0, 0, 1, 72, 92
    break                   0

off_21D0:
    case                    0, off_21DE, 3
    sce_bgm_control         0, 0, 1, 96, 58
    break                   0

off_21DE:
    case                    0, off_21EC, 4
    sce_bgm_control         0, 0, 1, 127, 66
    break                   0

off_21EC:
    case                    0, off_21FA, 5
    sce_bgm_control         0, 0, 1, 110, 64
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
    ck                      1, 11, 0

off_220A:
    goto                    255, 255, 0, off_219E
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
    set                     5, 0, 0
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
    set                     5, 0, 0
    evt_end                 0
    db                      0x30, 0x00
