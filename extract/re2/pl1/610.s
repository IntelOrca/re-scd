.version 2

.init
.proc init
    if                      0, off_0F32
    ck                      FG_GENERAL_1, 96, 0
    door_aot_set_4p         0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26304, -15198, -27050, -14780, -25522, -13180, -24752, -13397, 15518, 0, -19012, 2583, 5, 12, 7, 0, 41, 0, 0, 0, UNLOCKED, 0
    else                    0, off_0F5C

off_0F32:
    door_aot_set_4p         0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26304, -15198, -27050, -14780, -25522, -13180, -24752, -13397, 15518, 0, -19012, 2583, 5, 12, 5, 0, 41, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_0F5C:
    if                      0, off_0F6A
    ck                      FG_GENERAL_1, 164, 1
    set                     FG_GAME, 12, 1
    endif
    nop

off_0F6A:
    evt_end                 0

.main
.proc main
    gosub                   main_04
    gosub                   main_02
    gosub                   main_0A
    if                      0, off_0FA4
    ck                      FG_GAME, F_SCENARIO, 1
    gosub                   main_05
    else                    0, off_0FA8

off_0FA4:
    gosub                   main_09
    nop
    nop

off_0FA8:
    gosub                   main_0B
    evt_end                 0

.proc aot
    if                      0, off_0FB8
    ck                      FG_GAME, F_SCENARIO, 0
    gosub                   main_0D
    endif
    nop

off_0FB8:
    evt_end                 0

.proc main_02
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12919, -17246, 1910, 1780, 255, 0, I_GOSUB, main_03, 0, 0
    evt_end                 0

.proc main_03
    if                      0, off_10A0
    ck                      FG_GENERAL_1, 100, 0
    message_on              0, 0, 0, 255, 255
    sleep                   10, 1
    if                      0, off_108E
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_GENERAL_1, 100, 1
    if                      0, off_101C
    ck                      FG_GAME, F_PLAYER, 0
    if                      0, off_100C
    ck                      FG_GAME, F_SCENARIO, 0
    aot_reset               6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 96, 0, 1, 0, 14, 0
    else                    0, off_1018

off_100C:
    aot_reset               6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 22, 0, 16, 0, 45, 0
    nop
    nop

off_1018:
    else                    0, off_1040

off_101C:
    if                      0, off_1032
    ck                      FG_GAME, F_SCENARIO, 0
    aot_reset               6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 96, 0, 1, 0, 14, 0
    else                    0, off_103E

off_1032:
    aot_reset               6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 24, 0, 6, 0, 46, 0
    nop
    nop

off_103E:
    nop
    nop

off_1040:
    se_on                   2, 10, 1, 0, 0, 0
    sce_espr_kill2          1
    sce_espr3d_on2          1, 22, 16, 0, 0, 0, 16, 212, 204, 30, 246, 12, 194, 0, 0, 24, 252, 0, 0, 0, 0
    sce_espr3d_on           0, 21, 0, 8192, -13500, -2200, -18300, 0, -800, 0, 0
    gosub                   main_08
    cut_replace             6, 1
    cut_replace             7, 2
    cut_replace             8, 3
    cut_chg                 1
    cut_auto                1
    nop
    else                    0, off_109C

off_108E:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_109C:
    else                    0, off_10A8

off_10A0:
    message_on              0, 1, 0, 255, 255
    nop
    nop

off_10A8:
    evt_end                 0

.proc main_04
    if                      0, off_10D8
    ck                      FG_GENERAL_1, 100, 0
    sce_espr3d_on2          1, 22, 0, 0, 0, 0, 16, 212, 204, 30, 246, 12, 194, 0, 0, 24, 252, 0, 0, 0, 0
    cut_replace             1, 6
    cut_replace             2, 7
    cut_replace             3, 8
    cut_auto                1
    nop
    else                    0, off_1118

off_10D8:
    sce_espr3d_on2          1, 22, 16, 0, 0, 0, 16, 212, 204, 30, 246, 12, 194, 0, 0, 24, 252, 0, 0, 0, 0
    sce_espr3d_on           0, 21, 0, 8192, -13500, -2200, -18300, 0, -800, 0, 0
    gosub                   main_08
    if                      0, off_1116
    ck                      FG_GENERAL_1, 105, 1
    cut_replace             1, 9
    cut_replace             2, 10
    endif
    nop

off_1116:
    nop
    nop

off_1118:
    evt_end                 0

.proc main_05
    if                      0, off_1128
    ck                      FG_GAME, F_SCENARIO, 0
    gosub                   main_06
    else                    0, off_113C

off_1128:
    if                      0, off_1136
    ck                      FG_LOCK, 14, 1
    gosub                   main_07
    else                    0, off_113A

off_1136:
    gosub                   main_06
    nop
    nop

off_113A:
    nop
    nop

off_113C:
    sce_em_set              0, 2, ENEMY_VINES, 0, 32, 0, 19, 0, 255, -20003, 0, -23213, 3744, 0, 0
    sce_em_set              0, 3, ENEMY_VINES, 0, 32, 0, 19, 0, 255, -13283, 0, -15862, 2016, 0, 0
    evt_end                 0

.proc main_06
    sce_em_set              0, 0, ENEMY_IVY, 16, 0, 0, 19, 0, 25, -20003, 0, -23213, 3744, 0, 0
    sce_em_set              0, 1, ENEMY_IVY, 16, 0, 0, 19, 0, 26, -13283, 0, -15862, 2016, 0, 0
    evt_end                 0

.proc main_07
    sce_em_set              0, 0, ENEMY_IVY_PURPLE, 16, 0, 0, 19, 0, 25, -20003, 0, -23213, 3744, 0, 0
    sce_em_set              0, 1, ENEMY_IVY_PURPLE, 16, 0, 0, 19, 0, 26, -13283, 0, -15862, 2016, 0, 0
    evt_end                 0

.proc main_08
    if                      0, off_1208
    ck                      FG_GAME, F_PLAYER, 0
    if                      0, off_11EE
    ck                      FG_GAME, F_SCENARIO, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -20567, -1500, -23891
    dir_set                 0, -2368, 0, 2048
    else                    0, off_1204

off_11EE:
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -20567, -1500, -23891
    dir_set                 0, -1024, -1984, -704
    nop
    nop

off_1204:
    else                    0, off_1240

off_1208:
    if                      0, off_1228
    ck                      FG_GAME, F_SCENARIO, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -20567, -1500, -23891
    dir_set                 0, -2368, 0, 2048
    else                    0, off_123E

off_1228:
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -21367, -1250, -24291
    dir_set                 0, 0, 0, 0
    nop
    nop

off_123E:
    nop
    nop

off_1240:
    evt_end                 0

.proc main_09
    sce_em_set              0, 0, ENEMY_ZOMBIE_TESTSUBJECT, 0, 0, 0, 47, 128, 25, -20013, 0, -21384, 41, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_TESTSUBJECT, 6, 0, 0, 47, 128, 26, -13639, 0, -16339, 6109, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_TESTSUBJECT, 0, 0, 0, 47, 128, 128, -21652, 0, -26462, -319, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_SCIENTIST, 0, 0, 0, 47, 128, 129, -20199, 0, -23560, 4321, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIE_SCIENTIST, 0, 0, 0, 47, 128, 141, -20199, 0, -23560, 4321, 0, 0
    evt_end                 0

.proc main_0A
    if                      0, off_1326
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_12D8
    ck                      FG_GENERAL_1, 105, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22463, -27352, 1680, 800, 255, 0, I_GOSUB, main_0C, 0, 0
    endif
    nop

off_12D8:
    if                      0, off_130C
    ck                      FG_GENERAL_1, 104, 0
    aot_set                 8, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -14924, -18934, 1690, 1170, 10, 0, ITEM_VACCINECART, 0, aot, 0
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14924, -18934, 1690, 1170, 7, 0, 0, 0, 255, 255
    else                    0, off_1322

off_130C:
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14924, -18934, 1690, 1170, 6, 0, 0, 0, 255, 255
    nop
    nop

off_1322:
    else                    0, off_133C

off_1326:
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14924, -18934, 1690, 1170, 6, 0, 0, 0, 255, 255
    nop
    nop

off_133C:
    evt_end                 0

.proc main_0B
    if                      0, off_147C
    ck                      FG_GAME, F_SCENARIO, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21317, -24541, 1200, 1500, ITEM_MODISK, 1, 14, 0, 160
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -20567, -1500, -23891, -2368, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22773, -18241, 1030, 1220, ITEM_VACCINECART, 1, 15, 2, 160
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -21456, -2050, -17500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_13EA
    ck                      FG_GENERAL_1, 104, 1
    work_set                WK_OBJECT, 2
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_ADD, V_TEMP, 11
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -13456, -1750, -18950
    dir_set                 0, -576, 0, 0
    endif
    nop

off_13EA:
    item_aot_set            5, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14924, -18934, 1690, 1170, ITEM_VACCINEBASE, 1, 17, 2, 160
    if                      0, off_142E
    ck                      34, 17, 0
    if                      0, off_141E
    ck                      FG_GENERAL_1, 105, 0
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    else                    0, off_142A

off_141E:
    aot_reset               5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 81, 0, 1, 0, 17, 0
    nop
    nop

off_142A:
    else                    0, off_143C

off_142E:
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 0, 0, 0
    nop
    nop

off_143C:
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24753, -18221, 1320, 1110, ITEM_EXPLOSIVEROUNDS, 6, 46, 3, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -23256, -1800, -17700, -128, 0, -448, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_14BA

off_147C:
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21317, -24541, 1200, 1500, ITEM_EXPLOSIVEROUNDS, 6, 46, 3, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -21367, -1250, -24291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_14BA:
    if                      0, off_14F4
    ck                      FG_GENERAL_1, 100, 0
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_14E4
    ck                      FG_GAME, F_SCENARIO, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 0, 0, 0
    else                    0, off_14F2

off_14E4:
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 0, 0, 0
    nop
    nop

off_14F2:
    endif
    nop

off_14F4:
    evt_end                 0

.proc main_0C
    if                      0, off_1516
    ck                      FG_GENERAL_1, 100, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -21527, 0, -26611
    dir_set                 0, 0, 800, 0
    cut_chg                 4
    endif
    nop

off_1516:
    if                      0, off_152A
    ck                      FG_GENERAL_1, 100, 0
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    else                    0, off_15D2

off_152A:
    if                      0, off_15C6
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_15B8
    ck                      FG_GENERAL_1, 105, 0
    message_on              0, 3, 0, 255, 255
    evt_next
    nop
    if                      0, off_15A6
    ck                      FG_INPUT, F_QUESTION, 0
    se_on                   2, 11, 1, 0, 0, 0
    if                      0, off_1598
    ck                      FG_GENERAL_1, 104, 1
    set                     FG_GENERAL_1, 105, 1
    nop_8c                  0, 40, 120, 150, 0, 0, 0
    nop_8c                  0, 120, 0, 40, 0, 150, 0
    se_on                   2, 13, 1, 0, 0, 0
    aot_reset               5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 81, 0, 1, 0, 17, 0
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    gosub                   main_0F
    else                    0, off_15A2

off_1598:
    message_on              0, 4, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_15A2:
    else                    0, off_15B4

off_15A6:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_15B4:
    else                    0, off_15C2

off_15B8:
    message_on              0, 5, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_15C2:
    else                    0, off_15D0

off_15C6:
    message_on              0, 5, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_15D0:
    nop
    nop

off_15D2:
    if                      0, off_15E2
    ck                      FG_GENERAL_1, 100, 1
    wsleep
    wsleeping
    cut_chg                 3
    cut_auto                1
    endif
    nop

off_15E2:
    evt_end                 0

.proc main_0D
    if                      0, off_160E
    ck                      FG_GENERAL_1, 104, 0
    if                      0, off_160C
    cmp                     0, V_00, CMP_EQ, 8
    if                      0, off_160A
    cmp                     0, V_USED_ITEM, CMP_EQ, 79
    set                     FG_GENERAL_1, 104, 1
    evt_exec                255, I_GOSUB, main_0E
    endif
    nop

off_160A:
    endif
    nop

off_160C:
    endif
    nop

off_160E:
    evt_end                 0

.proc main_0E
    sce_item_lost           ITEM_VACCINECART
    aot_reset               8, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, 0, 0, 255, 255
    se_on                   2, 12, 1, 0, 0, 0
    work_set                WK_OBJECT, 2
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_ADD, V_TEMP, 11
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -13456, -1750, -18950
    dir_set                 0, -576, 0, 0
    evt_end                 0

.proc main_0F
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    set                     FG_STATE, 2, 1
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    gosub                   main_11
    cut_replace             1, 9
    cut_replace             2, 10
    set                     FG_STATE, 2, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             1, V_TEMP
    nop
    cut_auto                1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_10
    do                      0, off_16AE
    evt_next
    nop
    edwhile                 off_16AE
    ck                      FG_GENERAL_2, 32, 0

off_16AE:
    evt_end                 0

.proc main_11
    sce_espr3d_on           0, 22, 0, 2048, -20220, -2800, -26800, 0, 0, 0, 0
    se_on                   2, 270, 0, -20220, -2800, -26800
    sleep                   10, 15
    sce_espr3d_on           0, 3350, 0, 1792, -20070, -2720, -26800, 0, 0, 0, 0
    se_on                   2, 271, 0, -20070, -2720, -26800
    sleep                   10, 15
    sce_espr3d_on           0, 3350, 0, 1792, -20300, -2720, -26800, 0, 0, 0, 0
    se_on                   2, 271, 0, -20300, -2720, -26800
    sleep                   10, 15
    sce_espr3d_on           0, 3350, 0, 1792, -20520, -2720, -26800, 0, 0, 0, 0
    se_on                   2, 271, 0, -20520, -2720, -26800
    sleep                   10, 15
    sce_espr3d_on           0, 3350, 0, 1792, -20750, -2720, -26800, 0, 0, 0, 0
    se_on                   2, 271, 0, -20750, -2720, -26800
    sleep                   10, 15
    sce_espr3d_on           0, 3350, 0, 1792, -20980, -2720, -26800, 0, 0, 0, 0
    se_on                   2, 271, 0, -20980, -2720, -26800
    sce_espr_kill           22, 0, 0, 0
    nop
    sce_espr3d_on           0, 6166, 0, 2048, -20640, -2800, -26800, 0, 0, 0, 0
    se_on                   2, 270, 0, -20640, -2800, -26800
    sleep                   10, 15
    sce_espr3d_on           0, 3350, 0, 1792, -20070, -2560, -26800, 0, 0, 0, 0
    se_on                   2, 271, 0, -20070, -2560, -26800
    sleep                   10, 15
    sce_espr3d_on           0, 3350, 0, 1792, -20300, -2560, -26800, 0, 0, 0, 0
    se_on                   2, 271, 0, -20300, -2560, -26800
    sleep                   10, 15
    sce_espr3d_on           0, 3350, 0, 1792, -20520, -2560, -26800, 0, 0, 0, 0
    se_on                   2, 271, 0, -20520, -2560, -26800
    sleep                   10, 15
    sce_espr3d_on           0, 3350, 0, 1792, -20750, -2560, -26800, 0, 0, 0, 0
    se_on                   2, 271, 0, -20750, -2560, -26800
    sleep                   10, 15
    sce_espr3d_on           0, 3350, 0, 1792, -20980, -2560, -26800, 0, 0, 0, 0
    se_on                   2, 271, 0, -20980, -2560, -26800
    sce_espr_kill           22, 24, 0, 0
    nop
    sce_espr3d_on           0, 4118, 0, 2048, -21050, -2800, -26800, 0, 0, 0, 0
    se_on                   2, 272, 0, -21050, -2800, -26800
    sleep                   10, 20
    sce_espr_kill           22, 16, 0, 0
    nop
    evt_end                 0
