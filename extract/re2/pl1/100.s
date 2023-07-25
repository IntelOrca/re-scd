.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22155, -20156, 1770, 2280, -15332, 0, -11799, 1832, 0, 1, 0, 0, 11, 0, 0, 0, UNLOCKED, 0
    aot_set_4p              1, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, 7973, -6626, 11430, 8000, 18900, 7950, 28700, -6100, 0, 0, 0, 0, 0, 0
    aot_set_4p              2, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -827, 8174, 11810, 8400, 8500, -6300, 200, -7310, 0, 0, 0, 0, 0, 0
    aot_set_4p              3, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -11127, 8274, -300, 8600, 560, -7200, -8800, -6800, 0, 0, 0, 0, 0, 0
    aot_set_4p              4, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -21927, 8174, -10700, 8700, -8600, -6700, -22370, -6200, 0, 0, 0, 0, 0, 0
    aot_set_4p              5, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -22427, -5726, -12500, -5900, -13270, -14710, -21890, -14820, 0, 0, 0, 0, 0, 0
    aot_set                 6, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -21876, -27262, 9100, 13100, 0, 0, 0, 0, 0, 0
    aot_set                 7, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, 18929, -178, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 8, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, 20771, -1323, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 9, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, 18554, 4087, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 10, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, 22193, -1880, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 11, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, 18099, 2781, 1800, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 12, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, 18105, 800, 1900, 1800, 0, 0, 0, 0, 0, 0
    aot_set                 13, SCE_DAMAGE, SAT_PL | SAT_UNDER, 0, 0, 20073, -643, 1800, 1800, 0, 0, 0, 0, 0, 0
    if                      0, off_1272
    ck                      FG_0, F_DIFFICULT, 0
    sce_em_set              0, 0, ENEMY_ZOMBIE_RANDOM, 194, 80, 0, 1, 0, 35, 22813, 0, 210, 1947, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_RANDOM, 198, 16, 0, 2, 0, 36, 18312, 0, 3539, 973, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_RANDOM, 70, 16, 0, 1, 0, 37, 7007, 0, -1585, 3985, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_RANDOM, 70, 16, 0, 2, 0, 38, -1261, 0, -2567, 329, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIE_RANDOM, 64, 16, 0, 2, 0, 40, -4611, 0, 280, 2535, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIE_RANDOM, 64, 16, 0, 1, 0, 41, 2556, 0, -1003, 3405, 0, 0
    else                    0, off_12F8

off_1272:
    sce_em_set              0, 0, ENEMY_ZOMBIE_RANDOM, 194, 80, 0, 2, 0, 35, 22813, 0, 210, 1947, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_RANDOM, 198, 16, 0, 1, 0, 36, 18800, 0, 4007, 1407, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_RANDOM, 70, 16, 0, 2, 0, 37, 8439, 0, -2106, 3601, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_RANDOM, 70, 16, 0, 1, 0, 38, 9285, 0, 2426, 793, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIE_RANDOM, 64, 16, 0, 2, 0, 39, 1114, 0, 2689, 4717, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIE_RANDOM, 64, 16, 0, 1, 0, 40, -7356, 0, -1869, 71, 0, 0
    nop
    nop

off_12F8:
    evt_end                 0

.main
.proc main
    evt_exec                255, I_GOSUB, main_04
    evt_exec                255, I_GOSUB, main_02
    evt_end                 0

.proc aot
    switch                  26, off_1370
    case                    0, off_1328, 0

off_1328:
    case                    0, off_1354, 1
    if                      0, off_1340
    ck                      FG_GENERAL_2, 7, 0
    set                     FG_GENERAL_2, 7, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_1340:
    if                      0, off_1352
    ck                      FG_GENERAL_2, 5, 0
    set                     FG_GENERAL_2, 5, 1
    evt_exec                255, I_GOSUB, main_06
    endif
    nop

off_1352:
    break                   0

off_1354:
    case                    0, off_136E, 2
    if                      0, off_136C
    ck                      FG_GENERAL_2, 6, 0
    set                     FG_GENERAL_2, 6, 1
    evt_exec                255, I_GOSUB, main_07
    endif
    nop

off_136C:
    break                   0

off_136E:
    eswitch                 0

off_1370:
    evt_end                 0

.proc main_02
    sleep                   10, 50
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    evt_exec                255, I_GOSUB, main_03
    evt_end                 0

.proc main_03

off_138E:
    switch                  26, off_13EE
    case                    0, off_13C0, 3
    if                      0, off_13BE
    ck                      FG_GENERAL_2, 12, 0
    ck                      FG_GENERAL_2, 14, 1
    set                     FG_GENERAL_2, 14, 0
    set                     FG_GENERAL_2, 12, 1
    if                      0, off_13BA
    ck                      FG_0, F_DIFFICULT, 0
    gosub                   main_08
    else                    0, off_13BC

off_13BA:
    nop
    nop

off_13BC:
    endif
    nop

off_13BE:
    break                   0

off_13C0:
    case                    0, off_13EC, 5
    if                      0, off_13EA
    ck                      FG_GENERAL_2, 14, 0
    set                     FG_GENERAL_2, 14, 1
    set                     FG_GENERAL_2, 12, 0
    if                      0, off_13E4
    ck                      FG_0, F_DIFFICULT, 0
    gosub                   main_09
    else                    0, off_13E8

off_13E4:
    gosub                   main_0B
    nop
    nop

off_13E8:
    endif
    nop

off_13EA:
    break                   0

off_13EC:
    eswitch                 0

off_13EE:
    evt_next
    nop
    goto                    255, 255, 0, off_138E
    evt_end                 0

.proc main_04
    evt_next

off_13F9:
    nop
    switch                  26, off_14B4
    case                    0, off_1412, 0
    sce_bgm_control         0, 0, 1, 120, 51
    sce_bgm_control         0, 0, 2, 71, 65
    break                   0

off_1412:
    case                    0, off_1426, 1
    sce_bgm_control         0, 0, 1, 106, 86
    sce_bgm_control         0, 0, 2, 71, 65
    break                   0

off_1426:
    case                    0, off_143A, 2
    sce_bgm_control         0, 0, 1, 96, 33
    sce_bgm_control         0, 0, 2, 71, 65
    break                   0

off_143A:
    case                    0, off_144E, 3
    sce_bgm_control         0, 0, 1, 106, 71
    sce_bgm_control         0, 0, 2, 71, 65
    break                   0

off_144E:
    case                    0, off_1462, 4
    sce_bgm_control         0, 0, 1, 81, 128
    sce_bgm_control         0, 0, 2, 71, 65
    break                   0

off_1462:
    case                    0, off_1476, 5
    sce_bgm_control         0, 0, 1, 51, 128
    sce_bgm_control         0, 0, 2, 61, 65
    break                   0

off_1476:
    case                    0, off_148A, 6
    sce_bgm_control         0, 0, 1, 31, 83
    sce_bgm_control         0, 0, 2, 51, 65
    break                   0

off_148A:
    case                    0, off_149E, 7
    sce_bgm_control         0, 0, 1, 26, 43
    sce_bgm_control         0, 0, 2, 51, 65
    break                   0

off_149E:
    case                    0, off_14B2, 8
    sce_bgm_control         0, 0, 1, 1, 65
    sce_bgm_control         0, 0, 2, 41, 65
    break                   0

off_14B2:
    eswitch                 0

off_14B4:
    do                      0, off_14C0
    evt_next
    nop
    edwhile                 off_14C0
    ck                      FG_GAME, 11, 0

off_14C0:
    goto                    255, 255, 0, off_13F9
    evt_end                 0

.proc main_05
    light_kido_set          0, 24000
    for                     0, off_14E8, 3
    evt_next
    nop
    if                      0, off_14E6
    cmp                     0, V_CUT, CMP_EQ, 2
    goto                    255, 255, 0, off_1520
    endif
    nop

off_14E6:
    next                    0

off_14E8:
    light_kido_set          0, 30000
    evt_next
    nop
    if                      0, off_1500
    cmp                     0, V_CUT, CMP_EQ, 2
    goto                    255, 255, 0, off_1520
    endif
    nop

off_1500:
    light_kido_set          0, 26000
    for                     0, off_1520, 2
    evt_next
    nop
    if                      0, off_151E
    cmp                     0, V_CUT, CMP_EQ, 2
    goto                    255, 255, 0, off_1520
    endif
    nop

off_151E:
    next                    0

off_1520:
    set                     FG_GENERAL_2, 7, 0
    evt_end                 0

.proc main_06
    sce_espr_kill           13, 0, 0, 0
    sce_espr_kill           14, 0, 0, 0
    sce_espr_kill           4, 18, 0, 0
    nop
    sce_espr_on             0, 14, 0, 14336, 29736, -3200, -4741, -512
    sce_espr_on             0, 13, 0, 12288, 23787, -4400, 7110, 0
    sce_espr_on             0, 13, 0, 9216, 26406, -9200, 4430, 0
    sce_espr_on             0, 4612, 0, 15872, 29736, -3200, -4741, 1024
    sce_espr_on             0, 4612, 0, 16384, 26406, -9600, 4430, -512
    sce_espr_on             0, 4612, 0, 14336, 23787, -4600, 7110, -1024
    sce_espr_on             0, 13, 0, 12288, 24129, 0, 4722, -512
    sce_espr_on             0, 14, 0, 12800, 22971, 0, -423, 0
    sce_espr_on             0, 14, 0, 13312, 19754, 0, 4987, -512
    sce_espr_on             0, 13, 0, 11520, 22293, 0, 1020, 0
    sce_espr_on             0, 14, 0, 12544, 21299, 5, 3981, 0
    sce_espr_on             0, 13, 0, 10240, 19005, 0, 1700, -512
    sce_espr_on             0, 14, 0, 10240, 23473, 0, 2857, 512
    sce_espr_on             0, 4612, 0, 11776, 22129, 0, 4722, -512
    sce_espr_on             0, 4612, 0, 10240, 20000, 0, 190, -256
    set                     FG_GENERAL_2, 5, 1
    set                     FG_GENERAL_2, 6, 0
    evt_end                 0

.proc main_07
    sce_espr_kill           13, 0, 0, 0
    sce_espr_kill           14, 0, 0, 0
    sce_espr_kill           4, 18, 0, 0
    nop
    sce_espr_on             0, 13, 0, 7680, -1431, -1500, -5174, -512
    sce_espr_on             0, 14, 0, 6144, -750, -1700, -6274, 0
    sce_espr_on             0, 4612, 0, 8192, -2150, -1550, -5300, 512
    sce_espr_on             0, 14, 0, 6144, -1404, -1400, -6541, 0
    set                     FG_GENERAL_2, 6, 1
    set                     FG_GENERAL_2, 5, 0
    evt_end                 0

.proc main_08
    if                      0, off_16FE
    ck                      FG_ENEMY, 38, 0
    work_set                WK_ENEMY, 3
    nop
    kage_set                3, 3, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    if                      0, off_16D0
    member_cmp              0, 9, 0, 5, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, 12974, 0, -1630
    member_set              15, 245, 246
    endif
    nop

off_16D0:
    if                      0, off_16FC
    member_cmp              0, 9, 0, 6, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, 12974, 0, -1630
    member_set              15, 245, 246
    endif
    nop

off_16FC:
    endif
    nop

off_16FE:
    evt_end                 0

.proc main_09
    if                      0, off_1748
    ck                      FG_ENEMY, 35, 0
    work_set                WK_ENEMY, 0
    nop
    kage_set                3, 0, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    if                      0, off_1746
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -10738, 0, -1318
    member_set              15, 139, 8
    endif
    nop

off_1746:
    endif
    nop

off_1748:
    if                      0, off_1790
    ck                      FG_ENEMY, 36, 0
    work_set                WK_ENEMY, 1
    nop
    kage_set                3, 1, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    if                      0, off_178E
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -12841, 0, -427
    member_set              15, 99, 9
    endif
    nop

off_178E:
    endif
    nop

off_1790:
    if                      0, off_17D8
    ck                      FG_ENEMY, 37, 0
    work_set                WK_ENEMY, 2
    nop
    kage_set                3, 2, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    if                      0, off_17D6
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -12148, 0, -427
    member_set              15, 248, 8
    endif
    nop

off_17D6:
    endif
    nop

off_17D8:
    if                      0, off_1820
    ck                      FG_ENEMY, 38, 0
    kage_set                3, 3, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    work_set                WK_ENEMY, 3
    nop
    if                      0, off_181E
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -17506, 0, -14535
    member_set              15, 97, 12
    endif
    nop

off_181E:
    endif
    nop

off_1820:
    evt_end                 0

.proc main_0A
    if                      0, off_1896
    ck                      FG_ENEMY, 38, 0
    work_set                WK_ENEMY, 3
    nop
    kage_set                3, 3, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    if                      0, off_1868
    member_cmp              0, 9, 0, 5, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, 12974, 0, -1630
    member_set              15, 245, 246
    endif
    nop

off_1868:
    if                      0, off_1894
    member_cmp              0, 9, 0, 6, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, 12974, 0, -1630
    member_set              15, 245, 246
    endif
    nop

off_1894:
    endif
    nop

off_1896:
    evt_end                 0

.proc main_0B
    if                      0, off_18E0
    ck                      FG_ENEMY, 35, 0
    work_set                WK_ENEMY, 0
    nop
    kage_set                3, 0, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    if                      0, off_18DE
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -11344, 0, -3127
    member_set              15, 160, 9
    endif
    nop

off_18DE:
    endif
    nop

off_18E0:
    if                      0, off_1928
    ck                      FG_ENEMY, 36, 0
    work_set                WK_ENEMY, 1
    nop
    kage_set                3, 1, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    if                      0, off_1926
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 64, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -10271, 0, -31
    member_set              15, 193, 8
    endif
    nop

off_1926:
    endif
    nop

off_1928:
    if                      0, off_1970
    ck                      FG_ENEMY, 37, 0
    work_set                WK_ENEMY, 2
    nop
    kage_set                3, 2, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    if                      0, off_196E
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -15950, 0, -18787
    member_set              15, 107, 12
    endif
    nop

off_196E:
    endif
    nop

off_1970:
    if                      0, off_19B8
    ck                      FG_ENEMY, 38, 0
    kage_set                3, 3, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    work_set                WK_ENEMY, 3
    nop
    if                      0, off_19B6
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -18202, 0, -13424
    member_set              15, 75, 11
    endif
    nop

off_19B6:
    endif
    nop

off_19B8:
    if                      0, off_1A00
    ck                      FG_ENEMY, 39, 0
    kage_set                3, 4, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    work_set                WK_ENEMY, 4
    nop
    if                      0, off_19FE
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -11275, 0, -1193
    member_set              15, 157, 8
    endif
    nop

off_19FE:
    endif
    nop

off_1A00:
    if                      0, off_1A48
    ck                      FG_ENEMY, 40, 0
    kage_set                3, 5, 191, 191, 191, 144, 1, 88, 2, 0, 0, 0, 0
    work_set                WK_ENEMY, 5
    nop
    if                      0, off_1A46
    member_cmp              0, 9, 4, 2, 0
    member_set              7, 70, 16
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    pos_set                 0, -6688, 0, -2886
    member_set              15, 31, 250
    endif
    nop

off_1A46:
    endif
    nop

off_1A48:
    evt_end                 0
