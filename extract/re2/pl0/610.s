.version 2

.init
.proc init
    if                      0, off_0F2A
    ck                      FG_GENERAL_1, 96, 0
    door_aot_set_4p         0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26304, -15198, -27050, -14780, -25522, -13180, -24752, -13397, 15518, 0, -19012, 2583, 5, 12, 7, 0, 41, 0, 0, 0, UNLOCKED, 0
    else                    0, off_0F54

off_0F2A:
    door_aot_set_4p         0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26304, -15198, -27050, -14780, -25522, -13180, -24752, -13397, 15518, 0, -19012, 2583, 5, 12, 5, 0, 41, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_0F54:
    if                      0, off_0F62
    ck                      FG_GENERAL_1, 164, 1
    set                     FG_GAME, 12, 1
    endif
    nop

off_0F62:
    evt_end                 0

.main
.proc main
    gosub                   main_04
    gosub                   main_02
    gosub                   main_0B
    gosub                   main_0A
    if                      0, off_0F96
    ck                      FG_GAME, F_SCENARIO, 1
    gosub                   main_05
    else                    0, off_0F9A

off_0F96:
    gosub                   main_09
    nop
    nop

off_0F9A:
    evt_end                 0

.proc aot
    gosub                   main_0D
    evt_end                 0

.proc main_02
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12919, -17246, 1910, 1780, 255, 0, I_GOSUB, main_03, 0, 0
    evt_end                 0

.proc main_03
    if                      0, off_1086
    ck                      FG_GENERAL_1, 100, 0
    message_on              0, 0, 0, 255, 255
    sleep                   10, 1
    if                      0, off_1074
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_GENERAL_1, 100, 1
    if                      0, off_1002
    ck                      FG_GAME, F_PLAYER, 0
    if                      0, off_0FF2
    ck                      FG_GAME, F_SCENARIO, 0
    aot_reset               6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 96, 0, 1, 0, 14, 0
    else                    0, off_0FFE

off_0FF2:
    aot_reset               6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 22, 0, 16, 0, 45, 0
    nop
    nop

off_0FFE:
    else                    0, off_1026

off_1002:
    if                      0, off_1018
    ck                      FG_GAME, F_SCENARIO, 0
    aot_reset               6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 96, 0, 1, 0, 14, 0
    else                    0, off_1024

off_1018:
    aot_reset               6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 24, 0, 6, 0, 46, 0
    nop
    nop

off_1024:
    nop
    nop

off_1026:
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
    else                    0, off_1082

off_1074:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_1082:
    else                    0, off_108E

off_1086:
    message_on              0, 1, 0, 255, 255
    nop
    nop

off_108E:
    evt_end                 0

.proc main_04
    if                      0, off_10BE
    ck                      FG_GENERAL_1, 100, 0
    sce_espr3d_on2          1, 22, 0, 0, 0, 0, 16, 212, 204, 30, 246, 12, 194, 0, 0, 24, 252, 0, 0, 0, 0
    cut_replace             1, 6
    cut_replace             2, 7
    cut_replace             3, 8
    cut_auto                1
    nop
    else                    0, off_10FE

off_10BE:
    sce_espr3d_on2          1, 22, 16, 0, 0, 0, 16, 212, 204, 30, 246, 12, 194, 0, 0, 24, 252, 0, 0, 0, 0
    sce_espr3d_on           0, 21, 0, 8192, -13500, -2200, -18300, 0, -800, 0, 0
    gosub                   main_08
    if                      0, off_10FC
    ck                      FG_GENERAL_1, 105, 1
    cut_replace             1, 9
    cut_replace             2, 10
    endif
    nop

off_10FC:
    nop
    nop

off_10FE:
    evt_end                 0

.proc main_05
    if                      0, off_110E
    ck                      FG_GAME, F_SCENARIO, 0
    gosub                   main_06
    else                    0, off_1122

off_110E:
    if                      0, off_111C
    ck                      FG_LOCK, 14, 1
    gosub                   main_07
    else                    0, off_1120

off_111C:
    gosub                   main_06
    nop
    nop

off_1120:
    nop
    nop

off_1122:
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
    if                      0, off_11EE
    ck                      FG_GAME, F_PLAYER, 0
    if                      0, off_11D4
    ck                      FG_GAME, F_SCENARIO, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -20567, -1500, -23891
    dir_set                 0, -2368, 0, 2048
    else                    0, off_11EA

off_11D4:
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -20567, -1500, -23891
    dir_set                 0, -1024, -1984, -704
    nop
    nop

off_11EA:
    else                    0, off_1226

off_11EE:
    if                      0, off_120E
    ck                      FG_GAME, F_SCENARIO, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -20567, -1500, -23891
    dir_set                 0, -2368, 0, 2048
    else                    0, off_1224

off_120E:
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -21367, -1250, -24291
    dir_set                 0, 0, 0, 0
    nop
    nop

off_1224:
    nop
    nop

off_1226:
    evt_end                 0

.proc main_09
    sce_em_set              0, 0, ENEMY_ZOMBIE_TESTSUBJECT, 0, 0, 0, 47, 128, 25, -20013, 0, -21384, 41, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_TESTSUBJECT, 6, 0, 0, 47, 128, 26, -13639, 0, -16339, 6109, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_TESTSUBJECT, 0, 0, 0, 47, 128, 128, -21652, 0, -26462, -319, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_SCIENTIST, 0, 0, 0, 47, 128, 129, -20199, 0, -23560, 4321, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIE_SCIENTIST, 0, 0, 0, 47, 128, 141, -20199, 0, -23560, 4321, 0, 0
    evt_end                 0

.proc main_0A
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15284, -19774, 1690, 1560, 6, 0, 0, 0, 255, 255
    evt_end                 0

.proc main_0B
    if                      0, off_136E
    ck                      FG_GAME, F_SCENARIO, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21317, -24541, 1200, 1500, ITEM_MODISK, 1, 14, 0, 160
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -20567, -1500, -23891, -2368, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23773, -18341, 1840, 1370, ITEM_FAIDSPRAY, 1, 12, 1, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -21406, -1850, -17550, 0, -1536, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24753, -18221, 1320, 1110, ITEM_MAGNUMAMMO, 8, 45, 2, 160
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -23256, -1800, -17700, -1024, -1984, -704, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_13AC

off_136E:
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21317, -24541, 1200, 1500, ITEM_MAGNUMAMMO, 16, 45, 2, 160
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -20567, -1500, -23891, -1024, -1984, -704, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_13AC:
    if                      0, off_13E6
    ck                      FG_GENERAL_1, 100, 0
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_13D6
    ck                      FG_GAME, F_SCENARIO, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 0, 0, 0
    else                    0, off_13E4

off_13D6:
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 0, 0, 0
    nop
    nop

off_13E4:
    endif
    nop

off_13E6:
    evt_end                 0

.proc main_0C
    if                      0, off_13FA
    ck                      FG_GENERAL_1, 100, 0
    message_on              0, 2, 0, 255, 255
    else                    0, off_1402

off_13FA:
    message_on              0, 5, 0, 255, 255
    nop
    nop

off_1402:
    wsleep
    wsleeping
    if                      0, off_1414
    ck                      FG_GENERAL_1, 100, 1
    cut_chg                 3
    cut_auto                1
    else                    0, off_141A

off_1414:
    cut_chg                 8
    cut_auto                1
    nop
    nop

off_141A:
    evt_end                 0

.proc main_0D
    if                      0, off_143C
    ck                      FG_3, 160, 0
    if                      0, off_143A
    ck                      34, 14, 1
    sce_bgmtbl_set          0, 12, 6, 10769, 49216
    set                     FG_3, 160, 1
    endif
    nop

off_143A:
    endif
    nop

off_143C:
    evt_end                 0
