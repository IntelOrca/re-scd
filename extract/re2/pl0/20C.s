.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11225, -28122, 2100, 1800, 9066, 0, 1245, 1624, 1, 10, 5, 0, 9, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23061, -26514, 1800, 2200, -26510, 0, -24891, -344, 1, 13, 6, 0, 47, 0, 0, 140, ITEM_CLUBKEY, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28100, -8200, 1800, 1800, -17300, 0, -13000, -2048, 1, 14, 3, 0, 28, 0, 0, 141, ITEM_DIAMONDKEY, 0
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28100, -19800, 1800, 2200, -17300, 0, -25600, -2048, 1, 14, 0, 0, 8, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    if                      0, off_1C9C
    ck                      1, 1, 0
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 6, 0, 0, 42, 0, 91, -11128, 0, -15665, 1065, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 42, 0, 92, -13526, 0, -8712, 3232, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 42, 0, 93, -24620, 0, -16970, 2333, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEGIRL, 0, 0, 0, 44, 0, 148, -17394, 0, -7662, 7816, 0, 0
    else                    0, off_1D38

off_1C9C:
    if                      0, off_1D36
    ck                      4, 128, 0
    set                     6, 197, 0
    sce_em_set              0, 0, ENEMY_TYRANT1, 6, 67, 0, 18, 0, 197, -13200, -9000, -16000, 0, 0, 0
    if                      0, off_1CE6
    ck                      4, 79, 1
    work_set                WK_ENEMY, 0
    nop
    member_set              7, 0, 0
    pos_set                 0, -10500, 0, -15200
    dir_set                 0, 0, 0, 0
    sce_bgm_control         0, 1, 0, 0, 0
    endif
    nop

off_1CE6:
    if                      0, off_1D34
    ck                      6, 200, 0
    if                      0, off_1D10
    ck                      1, 0, 0
    item_aot_set            10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 194, -900, -900, 1800, 1800, ITEM_SHOTGUNAMMO, 7, 207, 255, 1
    else                    0, off_1D28

off_1D10:
    item_aot_set            10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 194, -900, -900, 1800, 1800, ITEM_BOWGUNAMMO, 36, 207, 255, 1
    nop
    nop

off_1D28:
    aot_reset               10, SCE_AUTO, SAT_PL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1D34:
    endif
    nop

off_1D36:
    nop
    nop

off_1D38:
    if                      0, off_1DC8
    ck                      6, 200, 1
    if                      0, off_1D88
    ck                      1, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -11000, 0, -24000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11900, -25100, 1800, 1800, ITEM_SHOTGUNAMMO, 7, 207, 1, 1
    else                    0, off_1DC6

off_1D88:
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -11000, 0, -24000, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11900, -25100, 1800, 1800, ITEM_BOWGUNAMMO, 36, 207, 1, 1
    nop
    nop

off_1DC6:
    endif
    nop

off_1DC8:
    if                      0, off_1E1A
    ck                      1, 1, 1
    ck                      4, 78, 1
    cut_replace             2, 9
    cut_replace             3, 10
    if                      0, off_1DEA
    cmp                     0, 26, CMP_EQ, 3
    cut_chg                 10
    cut_auto                1
    endif
    nop

off_1DEA:
    if                      0, off_1E02
    ck                      4, 79, 1
    cut_replace             1, 7
    set                     21, 2, 0
    set                     21, 4, 0
    nop
    else                    0, off_1E18

off_1E02:
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -12440, -15100, 3900, 1800, 255, 0, I_GOSUB, main_05, 0, 0
    nop
    nop

off_1E18:
    endif
    nop

off_1E1A:
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -22770, 0, -21120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23421, -21421, 1200, 1200, ITEM_HERBR, 1, 170, 0, 1
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25840, -28450, 2600, 1800, 0, 0, 0, 0, 255, 255
    evt_end                 0

.proc main_01
    if                      0, off_1EA8
    ck                      1, 1, 1
    ck                      4, 79, 1
    ck                      4, 128, 0
    if                      0, off_1EA6
    ck                      6, 197, 1
    ck                      5, 20, 0
    if                      0, off_1E9A
    ck                      6, 200, 0
    evt_exec                255, I_GOSUB, main_02
    set                     6, 200, 1
    endif
    nop

off_1E9A:
    sce_bgm_control         0, 5, 0, 0, 0
    set                     5, 20, 1
    endif
    nop

off_1EA6:
    endif
    nop

off_1EA8:
    evt_end                 0

.proc main_02
    if                      0, off_1EDA
    ck                      8, 207, 0
    sleep                   10, 151
    if                      0, off_1ECC
    ck                      1, 0, 0
    aot_reset               10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 21, 0, 7, 0, 207, 0
    else                    0, off_1ED8

off_1ECC:
    aot_reset               10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 29, 0, 36, 0, 207, 0
    nop
    nop

off_1ED8:
    endif
    nop

off_1EDA:
    evt_end                 0

.proc main_03
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_04
    work_set                WK_PLAYER, 0
    plc_motion              1, 1, 0
    nop
    sleep                   10, 10
    plc_dest                0, 20, 0, 0, 0
    evt_end                 0

.proc main_05
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sce_bgm_control         0, 1, 0, 0, 0
    sce_bgmtbl_set          0, 13, 2, 65287, 0
    set                     4, 79, 1
    set                     2, 7, 1
    evt_exec                255, I_GOSUB, main_04
    cut_replace             1, 7
    set                     21, 2, 0
    nop
    sce_espr_on             0, 47, 0, 4096, -10800, -2000, -16600, 0
    sce_espr_on             0, 303, 0, 4096, -11300, -1900, -17400, 0
    sce_espr_on             0, 559, 0, 4096, -11300, -2700, -16700, 0
    sce_espr_on             0, 815, 0, 4096, -11000, -2850, -17300, 0
    sce_espr_on             0, 4, 0, 8192, -11300, -2000, -16600, 0
    sce_espr_on             0, 4, 0, 8192, -11300, -1900, -17400, 0
    sce_espr_on             0, 4, 0, 8192, -11300, -2700, -16700, 0
    sce_espr_on             0, 4, 0, 8192, -11000, -2850, -17300, 0
    sce_espr_on             0, 1284, 0, 8192, -11300, -2000, -16600, 0
    sce_espr_on             0, 1284, 0, 8192, -11300, -1900, -17400, 0
    sce_espr_on             0, 1284, 0, 8192, -11300, -2700, -16700, 0
    sce_espr_on             0, 1284, 0, 8192, -11000, -2850, -17300, 0
    nop_8a                  0, 10, 0, 0, 0
    nop_8b                  200, 2, 0, 0, 0
    nop_8b                  250, 6, 0, 2, 0
    se_on                   2, 10, 0, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -13200, 0, -16000
    member_set              23, 1, 0
    sleep                   10, 10
    sce_espr_on             0, 4, 0, 8192, -11000, -1000, -16600, 0
    sce_espr_on             0, 4, 0, 8192, -11000, -900, -17400, 0
    sce_espr_on             0, 4, 0, 8192, -11000, -1700, -16700, 0
    sce_espr_on             0, 4, 0, 8192, -11000, -1850, -17300, 0
    sleep                   10, 5
    set                     21, 4, 0
    sce_espr_on             0, 4, 0, 4096, -10000, 0, -16600, 0
    sce_espr_on             0, 4, 0, 4096, -10000, 0, -17400, 0
    sce_espr_on             0, 4, 0, 4096, -10000, -700, -16700, 0
    sce_espr_on             0, 4, 0, 4096, -10000, -850, -17300, 0
    sleep                   10, 20
    gosub                   3
    evt_end                 0
