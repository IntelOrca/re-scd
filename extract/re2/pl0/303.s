.version 2

.init
.proc init
    if                      0, off_158E
    ck                      FG_GAME, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_158E:
    if                      0, off_15B8
    ck                      FG_GENERAL_1, 254, 1
    set                     FG_GENERAL_1, 57, 0
    set                     FG_ENEMY, 98, 0
    set                     FG_3, 101, 0
    set                     FG_3, 102, 0
    set                     FG_3, 103, 0
    set                     FG_3, 104, 0
    set                     FG_GENERAL_1, 58, 0
    set                     FG_GENERAL_1, 55, 1
    endif
    nop

off_15B8:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -27206, -13094, 3020, 1030, -25115, -7200, -25982, 3096, 2, 4, 0, 4, 38, 2, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -26486, -27444, 3020, 1030, -16053, 0, -4487, 1008, 2, 11, 2, 0, 36, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_163A
    ck                      FG_GAME, F_BONUS, 1
    gosub                   main_17
    evt_end                 0
    endif
    nop

off_163A:
    obj_model_set           0, 0, 0, 0, 0, 3, 0, 10, 16, -23449, -7970, -12532, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 3, 0, 10, 16, -23304, -7822, -12532, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 3, 0, 10, 16, -23153, -7970, -12532, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 3, 0, 10, 16, -23019, -7822, -12532, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_16EA
    ck                      FG_3, 101, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 0, 0, 0
    else                    0, off_16FC

off_16EA:
    sce_espr_on             0, 534, 0, 2560, -23469, -7800, -12532, 0
    nop
    nop

off_16FC:
    if                      0, off_1714
    ck                      FG_3, 102, 0
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, 0, 0, 0
    else                    0, off_1726

off_1714:
    sce_espr_on             0, 534, 0, 2560, -23326, -7960, -12532, 0
    nop
    nop

off_1726:
    if                      0, off_173E
    ck                      FG_3, 103, 0
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 0, 0, 0
    else                    0, off_1750

off_173E:
    sce_espr_on             0, 534, 0, 2560, -23184, -7800, -12532, 0
    nop
    nop

off_1750:
    if                      0, off_1768
    ck                      FG_3, 104, 0
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 0, 0, 0
    else                    0, off_177A

off_1768:
    sce_espr_on             0, 534, 0, 2560, -23042, -7960, -12532, 0
    nop
    nop

off_177A:
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -25006, -13094, 2130, 1030, 255, 0, I_GOSUB, main_0A, 0, 0
    aot_set                 6, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 3, 0, -25006, -13094, 2130, 1030, 10, 0, ITEM_BISHOPPLUG, 0, aot, 0
    aot_set                 3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 3, 0, -25006, -13094, 2130, 1030, 10, 0, ITEM_ROOKPLUG, 0, aot, 0
    aot_set                 4, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 3, 0, -25006, -13094, 2130, 1030, 10, 0, ITEM_KNIGHTPLUG, 0, aot, 0
    aot_set                 5, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 3, 0, -25006, -13094, 2130, 1030, 10, 0, ITEM_KINGPLUG, 0, aot, 0
    if                      0, off_17F2
    ck                      FG_GENERAL_1, 58, 0
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 255, 255
    endif
    nop

off_17F2:
    if                      0, off_181C
    ck                      FG_GENERAL_1, 55, 1
    if                      0, off_1808
    ck                      FG_GAME, F_SCENARIO, 0
    gosub                   main_0B
    else                    0, off_180C

off_1808:
    gosub                   main_0C
    nop
    nop

off_180C:
    if                      0, off_181A
    ck                      FG_ENEMY, 98, 1
    set                     FG_GENERAL_2, 6, 1
    endif
    nop

off_181A:
    endif
    nop

off_181C:
    if                      0, off_1834
    ck                      FG_3, 129, 0
    set                     FG_3, 128, 1
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_1834:
    evt_end                 0

.proc aot
    if                      0, off_1842
    ck                      FG_GAME, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_1842:
    if                      0, off_18BE
    ck                      FG_GENERAL_1, 55, 1
    if                      0, off_1892
    ck                      FG_GENERAL_1, 57, 0
    if                      0, off_1876
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_1870
    cmp                     0, V_CUT, CMP_EQ, 2
    set                     FG_GENERAL_1, 57, 1
    evt_exec                255, I_GOSUB, main_10
    else                    0, off_1872

off_1870:
    nop
    nop

off_1872:
    else                    0, off_1890

off_1876:
    if                      0, off_188C
    cmp                     0, V_CUT, CMP_EQ, 2
    set                     FG_GENERAL_1, 57, 1
    evt_exec                255, I_GOSUB, main_11
    else                    0, off_188E

off_188C:
    nop
    nop

off_188E:
    nop
    nop

off_1890:
    endif
    nop

off_1892:
    if                      0, off_18BC
    ck                      FG_ENEMY, 98, 1
    if                      0, off_18BA
    ck                      FG_GENERAL_2, 6, 0
    if                      0, off_18B8
    ck                      FG_GENERAL_2, 5, 0
    set                     FG_GENERAL_2, 5, 1
    sce_bgm_control         0, 5, 0, 0, 0
    gosub                   main_02
    endif
    nop

off_18B8:
    endif
    nop

off_18BA:
    endif
    nop

off_18BC:
    endif
    nop

off_18BE:
    gosub                   main_04
    evt_end                 0

.proc main_02
    sce_bgmtbl_set          0, 3, 3, 255, 0
    evt_end                 0

.proc main_03
    work_set                WK_PLAYER, 0
    nop
    save                    V_20, 14
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 75, 193, 0, 0, 121, 238
    aot_on                  1
    evt_end                 0

.proc main_04
    if                      0, off_1A1E
    cmp                     0, V_00, CMP_EQ, 6
    if                      0, off_1938
    ck                      FG_3, 101, 0
    if                      0, off_1936
    cmp                     0, V_USED_ITEM, CMP_EQ, 59
    if                      0, off_1914
    ck                      FG_GENERAL_1, 57, 0
    set                     FG_3, 101, 1
    sce_item_lost           ITEM_BISHOPPLUG
    evt_exec                255, I_GOSUB, main_05
    else                    0, off_1934

off_1914:
    if                      0, off_1926
    ck                      FG_ENEMY, 98, 0
    message_on              0, 0, 0, 255, 255
    else                    0, off_1932

off_1926:
    set                     FG_3, 101, 1
    sce_item_lost           ITEM_BISHOPPLUG
    evt_exec                255, I_GOSUB, main_05
    nop
    nop

off_1932:
    nop
    nop

off_1934:
    endif
    nop

off_1936:
    endif
    nop

off_1938:
    if                      0, off_1984
    ck                      FG_3, 102, 0
    if                      0, off_1982
    cmp                     0, V_USED_ITEM, CMP_EQ, 60
    if                      0, off_1960
    ck                      FG_GENERAL_1, 57, 0
    set                     FG_3, 102, 1
    sce_item_lost           ITEM_ROOKPLUG
    evt_exec                255, I_GOSUB, main_06
    else                    0, off_1980

off_1960:
    if                      0, off_1972
    ck                      FG_ENEMY, 98, 0
    message_on              0, 0, 0, 255, 255
    else                    0, off_197E

off_1972:
    set                     FG_3, 102, 1
    sce_item_lost           ITEM_ROOKPLUG
    evt_exec                255, I_GOSUB, main_06
    nop
    nop

off_197E:
    nop
    nop

off_1980:
    endif
    nop

off_1982:
    endif
    nop

off_1984:
    if                      0, off_19D0
    ck                      FG_3, 103, 0
    if                      0, off_19CE
    cmp                     0, V_USED_ITEM, CMP_EQ, 61
    if                      0, off_19AC
    ck                      FG_GENERAL_1, 57, 0
    set                     FG_3, 103, 1
    sce_item_lost           ITEM_KNIGHTPLUG
    evt_exec                255, I_GOSUB, main_07
    else                    0, off_19CC

off_19AC:
    if                      0, off_19BE
    ck                      FG_ENEMY, 98, 0
    message_on              0, 0, 0, 255, 255
    else                    0, off_19CA

off_19BE:
    set                     FG_3, 103, 1
    sce_item_lost           ITEM_KNIGHTPLUG
    evt_exec                255, I_GOSUB, main_07
    nop
    nop

off_19CA:
    nop
    nop

off_19CC:
    endif
    nop

off_19CE:
    endif
    nop

off_19D0:
    if                      0, off_1A1C
    ck                      FG_3, 104, 0
    if                      0, off_1A1A
    cmp                     0, V_USED_ITEM, CMP_EQ, 62
    if                      0, off_19F8
    ck                      FG_GENERAL_1, 57, 0
    set                     FG_3, 104, 1
    sce_item_lost           ITEM_KINGPLUG
    evt_exec                255, I_GOSUB, main_08
    else                    0, off_1A18

off_19F8:
    if                      0, off_1A0A
    ck                      FG_ENEMY, 98, 0
    message_on              0, 0, 0, 255, 255
    else                    0, off_1A16

off_1A0A:
    set                     FG_3, 104, 1
    sce_item_lost           ITEM_KINGPLUG
    evt_exec                255, I_GOSUB, main_08
    nop
    nop

off_1A16:
    nop
    nop

off_1A18:
    endif
    nop

off_1A1A:
    endif
    nop

off_1A1C:
    endif
    nop

off_1A1E:
    evt_end                 0

.proc main_05
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 2, 1
    cut_chg                 9
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -23449, -7970, -12532
    sce_espr_on             0, 534, 0, 2560, -23469, -7800, -12532, 0
    sleep                   10, 3
    se_on                   2, 10, 0, -23449, -8158, -12532
    sleep                   10, 30
    cut_chg                 3
    cut_auto                1
    gosub                   main_09
    set                     FG_STATE, 2, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_06
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 2, 1
    cut_chg                 9
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -23304, -7822, -12532
    sce_espr_on             0, 534, 0, 2560, -23326, -7960, -12532, 0
    sleep                   10, 3
    se_on                   2, 10, 0, -23449, -8158, -12532
    sleep                   10, 30
    cut_chg                 3
    cut_auto                1
    gosub                   main_09
    set                     FG_STATE, 2, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_07
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 2, 1
    cut_chg                 9
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -23153, -7970, -12532
    sce_espr_on             0, 534, 0, 2560, -23184, -7800, -12532, 0
    sleep                   10, 3
    se_on                   2, 10, 0, -23449, -8158, -12532
    sleep                   10, 30
    cut_chg                 3
    cut_auto                1
    gosub                   main_09
    set                     FG_STATE, 2, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_08
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 2, 1
    cut_chg                 9
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -23019, -7822, -12532
    sce_espr_on             0, 534, 0, 2560, -23042, -7960, -12532, 0
    sleep                   10, 3
    se_on                   2, 10, 0, -23449, -8158, -12532
    sleep                   10, 30
    cut_chg                 3
    cut_auto                1
    gosub                   main_09
    set                     FG_STATE, 2, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_09
    if                      0, off_1BA2
    ck                      FG_3, 101, 1
    if                      0, off_1BA0
    ck                      FG_3, 102, 1
    if                      0, off_1B9E
    ck                      FG_3, 103, 1
    if                      0, off_1B9C
    ck                      FG_3, 104, 1
    if                      0, off_1B9A
    ck                      FG_GENERAL_1, 58, 0
    se_on                   2, 11, 0, -23449, -8158, -12532
    set                     FG_GENERAL_1, 58, 1
    nop_8a                  0, 3, 0, 10, 0
    nop_8b                  255, 3, 0, 11, 0
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 229, 157, 224, 227, 130, 154
    evt_next
    nop
    endif
    nop

off_1B9A:
    endif
    nop

off_1B9C:
    endif
    nop

off_1B9E:
    endif
    nop

off_1BA0:
    endif
    nop

off_1BA2:
    evt_end                 0

.proc main_0A
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 2, 1
    if                      0, off_1BDA
    ck                      FG_GENERAL_1, 57, 0
    cut_chg                 9
    if                      0, off_1BC8
    ck                      FG_GENERAL_1, 58, 0
    message_on              0, 1, 0, 255, 255
    else                    0, off_1BD0

off_1BC8:
    message_on              0, 2, 0, 255, 255
    nop
    nop

off_1BD0:
    evt_next
    cut_chg                 3
    cut_auto                1
    nop
    else                    0, off_1C14

off_1BDA:
    if                      0, off_1BEE
    ck                      FG_ENEMY, 98, 0
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    else                    0, off_1C12

off_1BEE:
    cut_chg                 9
    if                      0, off_1C02
    ck                      FG_GENERAL_1, 58, 0
    message_on              0, 1, 0, 255, 255
    else                    0, off_1C0A

off_1C02:
    message_on              0, 2, 0, 255, 255
    nop
    nop

off_1C0A:
    evt_next
    cut_chg                 3
    cut_auto                1
    nop
    nop
    nop

off_1C12:
    nop
    nop

off_1C14:
    set                     FG_STATE, 2, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_0B
    if                      0, off_1C56
    ck                      FG_GENERAL_1, 57, 0
    sce_em_set              0, 0, ENEMY_BIRKIN_GOO_CHILD, 0, 0, 3, 21, 0, 98, -18276, -5500, -15894, 917, 0, 0
    sce_em_set              0, 1, ENEMY_BIRKIN_GOO, 0, 0, 3, 20, 0, 255, -18276, -5500, -15894, 917, 0, 0
    else                    0, off_1CCA

off_1C56:
    if                      0, off_1C66
    ck                      FG_ENEMY, 98, 0
    sce_bgm_control         0, 1, 0, 0, 0
    endif
    nop

off_1C66:
    sce_em_set              0, 0, ENEMY_BIRKIN_GOO_CHILD, 1, 0, 3, 21, 0, 98, -17843, -5400, -24775, 1989, 0, 0
    sce_em_set              0, 1, ENEMY_BIRKIN_GOO, 0, 0, 3, 20, 0, 99, -17843, -5400, -24775, 1989, 0, 0
    if                      0, off_1CC8
    ck                      FG_ENEMY, 98, 0
    sce_em_set              0, 2, ENEMY_BIRKIN_GOO, 3, 0, 3, 20, 0, 129, -20774, -5400, -24891, 2069, 0, 0
    sce_em_set              0, 3, ENEMY_BIRKIN_GOO, 3, 0, 3, 20, 0, 130, -23237, -5400, -23988, 1509, 0, 0
    endif
    nop

off_1CC8:
    nop
    nop

off_1CCA:
    save                    V_06, 0
    evt_end                 0

.proc main_0C
    if                      0, off_1D18
    ck                      FG_GENERAL_1, 57, 0
    sce_em_set              0, 0, ENEMY_BIRKIN_1, 0, 0, 3, 28, 0, 98, -18075, -5400, -14230, 1080, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 3, 0, 10, 0, -19828, -6153, -18579, 1600, 0, 963, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1D40

off_1D18:
    if                      0, off_1D28
    ck                      FG_ENEMY, 98, 0
    sce_bgm_control         0, 1, 0, 0, 0
    endif
    nop

off_1D28:
    sce_em_set              0, 0, ENEMY_BIRKIN_1, 1, 0, 3, 28, 0, 98, -17643, -5400, -24593, -2287, 0, 0
    nop
    nop

off_1D40:
    save                    V_06, 0
    evt_end                 0

.proc main_0D
    if                      0, off_1D62
    ck                      FG_GENERAL_1, 57, 0
    if                      0, off_1D5C
    ck                      FG_GAME, F_SCENARIO, 0
    gosub                   main_0E
    else                    0, off_1D60

off_1D5C:
    gosub                   main_0F
    nop
    nop

off_1D60:
    endif
    nop

off_1D62:
    evt_end                 0

.proc main_0E
    if                      0, off_1D7C
    cmp                     0, V_1D, CMP_GT, 30000
    se_on                   3, 24, 0, -18276, -5500, -15894
    endif
    nop

off_1D7C:
    evt_end                 0

.proc main_0F
    if                      0, off_1DA6
    cmp                     0, V_06, CMP_GT, 30
    if                      0, off_1DA0
    cmp                     0, V_1D, CMP_GT, 0
    se_on                   3, 4, 0, -18075, -5400, -14230
    endif
    nop

off_1DA0:
    save                    V_06, 0
    endif
    nop

off_1DA6:
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_06, V_TEMP
    nop
    evt_end                 0

.proc main_10
    set                     FG_GAME, 27, 1
    set                     FG_STATE, 7, 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -18075, -5400, -14230
    dir_set                 0, 0, 1080, 0
    gosub                   main_12
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -18276, -5500, -15894
    dir_set                 0, 0, 917, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 100
    member_set2             12, V_TEMP
    nop
    cut_chg                 3
    evt_next
    sce_bgm_control         0, 1, 0, 0, 0
    nop
    sleep                   10, 136
    xa_on                   0, 47
    xa_vol                  115
    sleep                   10, 264
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -17976, -6900, -16494
    dir_set                 0, 0, 917, 0
    cut_chg                 7
    evt_next
    nop
    xa_on                   0, 48
    sleep                   10, 260
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -18276, -5400, -15894
    dir_set                 0, 0, 917, 0
    cut_chg                 2
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_11
    set                     FG_GAME, 27, 1
    set                     FG_STATE, 7, 1
    sca_id_set              0, 0, 0
    sca_id_set              1, 0, 0
    sca_id_set              2, 0, 0
    sca_id_set              3, 0, 0
    sca_id_set              4, 0, 0
    sca_id_set              5, 0, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -18075, -5400, -14230
    dir_set                 0, 0, 1080, 0
    gosub                   main_12
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    cut_chg                 3
    sce_bgm_control         0, 1, 0, 0, 0
    sleep                   10, 170
    sleep                   10, 30
    evt_exec                255, I_GOSUB, main_15
    sleep                   10, 38
    set                     FG_GENERAL_2, 1, 1
    evt_next
    work_set                WK_OBJECT, 4
    pos_set                 0, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -17426, -5400, -17634
    dir_set                 0, 0, 705, 0
    cut_chg                 7
    sleep                   10, 55
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -18531, -5400, -18226
    dir_set                 0, 0, 957, 0
    cut_chg                 6
    gosub                   main_13
    cut_chg                 7
    work_set                WK_PLAYER, 0
    plc_stop
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -17426, -5400, -17634
    dir_set                 0, 0, 705, 0
    evt_next
    nop
    xa_on                   0, 46
    sleep                   10, 390
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -17950, -5400, -18425
    sca_id_set              0, 0, 92
    sca_id_set              1, 0, 92
    sca_id_set              2, 0, 220
    sca_id_set              3, 0, 220
    sca_id_set              4, 0, 92
    sca_id_set              5, 16, 220
    cut_chg                 2
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_12
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 33, -18059, -23839
    plc_neck                2, 0, 0, 0, 96, 96
    sleep                   10, 40
    plc_neck                5, 3, 0, 0, 96, 96
    sleep                   10, 10
    evt_end                 0

.proc main_13
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 8, 33, -18249, -26480
    sleep                   10, 30
    evt_end                 0

.proc main_14
    work_set                WK_OBJECT, 4
    nop
    save                    V_05, 7
    for                     0, off_1FBC, 7
    member_copy             V_TEMP, 12
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             12, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1FBC:
    evt_end                 0

.proc main_15
    work_set                WK_OBJECT, 4
    nop
    save                    V_05, 7
    for                     0, off_1FEA, 7
    member_copy             V_TEMP, 12
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             12, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1FEA:
    sleep                   10, 10
    save                    V_05, 5
    save                    V_04, 5
    for                     0, off_2034, 5
    member_copy             V_TEMP, 11
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             11, V_TEMP
    nop
    member_copy             V_TEMP, 12
    nop
    calc2                   OP_SUB, V_TEMP, V_05
    member_set2             12, V_TEMP
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_2034:
    sleep                   10, 10
    for                     0, off_205C, 7
    member_copy             V_TEMP, 12
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             12, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_205C:
    evt_end                 0

.proc main_16
    do                      0, off_206A
    evt_next
    nop
    edwhile                 off_206A
    ck                      FG_GENERAL_2, 33, 0

off_206A:
    evt_end                 0

.proc main_17
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -27206, -13094, 3020, 1030, -25115, -7200, -25982, 3096, 2, 4, 0, 4, 38, 2, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -26486, -27444, 3020, 1030, -16053, 0, -4487, 1008, 2, 11, 2, 0, 36, 0, 0, 0, UNLOCKED, 0
    sce_em_set              0, 0, ENEMY_ZOMBIE_GIRL, 0, 0, 3, 10, 0, 103, -19796, -5400, -14402, 416, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_RANDOM, 0, 0, 3, 3, 0, 104, -17847, -5400, -19997, 2888, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_RANDOM, 0, 0, 3, 3, 0, 105, -22448, -5400, -26234, 3784, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_RANDOM, 0, 0, 3, 3, 0, 159, -13149, -5400, -14763, 2040, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIE_RANDOM, 0, 0, 3, 3, 0, 160, -24235, -5400, -24399, 16, 0, 0
    evt_end                 0
