.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -7391, -26655, 2100, 2900, -3107, 0, -12544, -8, 2, 10, 5, 0, 31, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, -26891, -14845, 2130, 1840, -20190, -7200, -22725, -927, 3, 1, 0, 4, 6, 1, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -24052, -14705, 2000, 1800, -17314, 0, -22704, -681, 3, 1, 8, 0, 6, 1, 0, 0, UNLOCKED, 0
    if                      0, off_15CE
    ck                      FG_GAME, F_PLAYER, 1
    if                      0, off_15C0
    ck                      FG_GAME, F_SCENARIO, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_15B0
    member_cmp              0, 6, 0, 15, 0
    set                     30, 2, 1
    set                     30, 3, 1
    else                    0, off_15BA

off_15B0:
    set                     30, 0, 1
    set                     30, 1, 1
    nop
    nop

off_15BA:
    rbj_reset
    nop
    else                    0, off_15CC

off_15C0:
    set                     30, 0, 1
    set                     30, 1, 1
    rbj_reset
    nop
    nop
    nop

off_15CC:
    endif
    nop

off_15CE:
    evt_end                 0

.main
.proc main
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_163E
    member_cmp              0, 17, 2, 4, 0
    if                      0, off_163C
    ck                      FG_GAME, F_SCENARIO, 1
    sce_em_set              0, 0, ENEMY_ZOMBIE_GUY1, 0, 0, 4, 36, 0, 1, -15041, -7200, -26534, 3360, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_GUY1, 0, 0, 4, 36, 0, 2, -24490, -7200, -24140, 1680, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_GUY1, 6, 0, 4, 36, 0, 3, -19512, -7200, -24125, 5231, 0, 0
    endif
    nop

off_163C:
    endif
    nop

off_163E:
    mizu_div_set            4
    obj_model_set           0, 1, 130, 4, 4, 0, 2, 10, 26, -27260, -8100, -23450, 0, -3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 1, 130, 4, 4, 0, 3, 10, 26, -10760, -900, -23450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 4, 0, 10, 16, -9080, -5900, -23000, 0, -3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 4, 0, -26960, -27060, 19800, 3600, 92, 224, 0, 0, 0, 0
    aot_set                 4, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -12760, -25350, 7700, 13100, 124, 252, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_16F0
    member_cmp              0, 17, 2, 4, 0
    evt_exec                255, I_GOSUB, main_05
    else                    0, off_16F6

off_16F0:
    evt_exec                255, I_GOSUB, main_07
    nop
    nop

off_16F6:
    evt_exec                255, I_GOSUB, main_03
    gosub                   main_02
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    aot_set                 31, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -29523, -27258, 2900, 6800, 3, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_03
    evt_next

off_1717:
    nop
    switch                  26, off_1828
    case                    0, off_1722, 0

off_1722:
    case                    0, off_173C, 10
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 101, 31
    sce_bgm_control         1, 0, 1, 1, 65
    break                   0

off_173C:
    case                    0, off_1756, 1
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 101, 51
    sce_bgm_control         1, 0, 1, 1, 65
    break                   0

off_1756:
    case                    0, off_1770, 2
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 71, 65
    sce_bgm_control         1, 0, 1, 1, 65
    break                   0

off_1770:
    case                    0, off_178A, 3
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 71, 81
    sce_bgm_control         1, 0, 1, 1, 65
    break                   0

off_178A:
    case                    0, off_17A4, 4
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 61, 128
    sce_bgm_control         1, 0, 1, 1, 65
    break                   0

off_17A4:
    case                    0, off_17BE, 5
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 1, 65
    sce_bgm_control         1, 0, 1, 71, 65
    break                   0

off_17BE:
    case                    0, off_17D8, 6
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 1, 65
    sce_bgm_control         1, 0, 1, 51, 65
    break                   0

off_17D8:
    case                    0, off_17F2, 7
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 1, 65
    sce_bgm_control         1, 0, 1, 41, 65
    break                   0

off_17F2:
    case                    0, off_180C, 8
    sce_bgm_control         0, 0, 1, 91, 65
    sce_bgm_control         0, 0, 2, 1, 65
    sce_bgm_control         1, 0, 1, 41, 21
    break                   0

off_180C:
    case                    0, off_1826, 9
    sce_bgm_control         0, 0, 1, 71, 65
    sce_bgm_control         0, 0, 2, 1, 65
    sce_bgm_control         1, 0, 1, 21, 65
    break                   0

off_1826:
    eswitch                 0

off_1828:
    do                      0, off_1834
    evt_next
    nop
    edwhile                 off_1834
    ck                      FG_GAME, 11, 0

off_1834:
    goto                    255, 255, 0, off_1717
    evt_end                 0

.proc main_04
    evt_next

off_183D:
    nop
    switch                  26, off_1968
    case                    0, off_1848, 0

off_1848:
    case                    0, off_1862, 10
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 101, 31
    sce_bgm_control         1, 0, 3, 1, 65
    break                   0

off_1862:
    case                    0, off_187C, 1
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 101, 51
    sce_bgm_control         1, 0, 3, 1, 65
    break                   0

off_187C:
    case                    0, off_1896, 2
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 71, 81
    sce_bgm_control         1, 0, 3, 1, 65
    break                   0

off_1896:
    case                    0, off_18B0, 3
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 71, 81
    sce_bgm_control         1, 0, 3, 1, 65
    break                   0

off_18B0:
    case                    0, off_18CA, 4
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 61, 128
    sce_bgm_control         1, 0, 3, 1, 65
    break                   0

off_18CA:
    case                    0, off_18E4, 4
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 71, 65
    break                   0

off_18E4:
    case                    0, off_18FE, 5
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 71, 65
    break                   0

off_18FE:
    case                    0, off_1918, 6
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 51, 65
    break                   0

off_1918:
    case                    0, off_1932, 7
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 41, 65
    break                   0

off_1932:
    case                    0, off_194C, 8
    sce_bgm_control         1, 0, 1, 91, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 41, 21
    break                   0

off_194C:
    case                    0, off_1966, 9
    sce_bgm_control         1, 0, 1, 71, 65
    sce_bgm_control         1, 0, 2, 1, 65
    sce_bgm_control         1, 0, 3, 21, 65
    break                   0

off_1966:
    eswitch                 0

off_1968:
    do                      0, off_1974
    evt_next
    nop
    edwhile                 off_1974
    ck                      FG_GAME, 11, 0

off_1974:
    goto                    255, 255, 0, off_183D
    evt_end                 0

.proc main_05
    evt_next
    nop
    sce_espr_on             0, 284, 0, 4096, -12900, -9600, -24200, 1024
    sce_espr_on             0, 34, 0, 4096, -7300, -11500, -25300, 0
    sce_espr_on             0, 34, 0, 4096, -7300, -11500, -25300, 0
    sce_espr_on             0, 34, 0, 4096, -26700, -13200, -19700, 0
    sce_espr_on             0, 34, 0, 4096, -26700, -13200, -19700, 0
    evt_end                 0

.proc main_06
    sce_espr_kill           34, 0, 0, 0
    sce_espr_kill           28, 1, 0, 0
    evt_end                 0

.proc main_07
    evt_next
    nop
    sce_espr_on             0, 34, 0, 4096, -22600, -5300, -16900, 0
    sce_espr_on             0, 34, 0, 4096, -22600, -5300, -16900, 0
    sce_espr_on             0, 284, 0, 4096, -9200, -7900, -23450, 3072
    sce_espr_on             0, 284, 0, 4096, -8920, -7850, -23450, 3072
    sce_espr_on             0, 284, 0, 4096, -8660, -7900, -23450, 3072
    sce_espr_on             0, 284, 0, 4096, -8400, -7900, -23450, 3072
    evt_end                 0

.proc main_08
    obj_model_set           3, 0, 0, 0, 0, 4, 0, 10, 16, -25226, -9000, -17689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, -25226, -17689, 1520, 1500, ITEM_HERBB, 1, 186, 3, 1
    obj_model_set           4, 0, 0, 0, 0, 4, 0, 10, 16, -25226, -9000, -19189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 5, 0, -25226, -19189, 1520, 1500, ITEM_HERBB, 1, 187, 4, 1
    evt_end                 0
