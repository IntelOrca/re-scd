.version 2

.init
.proc init
    door_aot_set_4p         ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9916, -11243, -8900, -10100, -6800, -12300, -7800, -13500, -21844, 0, -21680, 3552, 5, 8, 9, DOR_0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27411, -6569, 1000, 2100, -8350, 0, -9481, 1696, 5, 9, 0, 0, 41, 0, 0, 148, LOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26381, -2069, 2380, 1000, -9505, 0, -17209, 2728, 5, 10, 0, 0, 41, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6011, -26269, 1000, 2100, -26256, -18000, -22254, 115, 5, 14, 0, 10, 29, 1, 0, 0, UNLOCKED, 0
    door_aot_set_4p         ID_AOT_4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9916, -11243, -8900, -10100, -6800, -12300, -7800, -13500, -21844, 0, -21680, 3552, 5, 17, 9, DOR_0, 37, 0, 0, 0, UNLOCKED, 0
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main
    gosub                   main_06
    if                      0, off_1226
    ck                      FG_SCENARIO, 36, 1
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 172, 170, 0, 0, 80, 171
    endif
    nop

off_1226:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, 20000, 20000, 20000, 0, -3584, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1276
    ck                      FG_COMMON, 106, 1
    aot_set_4p              5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15680, -21636, -14500, -20500, -13500, -21500, -14600, -22700, 255, 0, I_GOSUB, main_03, 0, 0
    gosub                   main_04
    else                    0, off_1294

off_1276:
    aot_set_4p              5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15680, -21636, -14500, -20500, -13500, -21500, -14600, -22700, 255, 0, I_GOSUB, main_02, 0, 0
    nop
    nop

off_1294:
    if                      0, off_12E0
    ck                      FG_COMMON, 95, 0
    cut_be_set              2, 2, 1
    cut_be_set              2, 3, 0
    cut_be_set              6, 1, 1
    cut_be_set              6, 2, 0
    cut_be_set              8, 1, 1
    cut_be_set              8, 3, 0
    sca_id_set              0, 16, 248
    sca_id_set              1, 0, 4
    sca_id_set              2, 128, 0
    aot_set_4p              6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14400, -21738, -10800, -18300, -9400, -19900, -13000, -23400, 3, 0, 0, 0, 0, 255
    else                    0, off_1328

off_12E0:
    cut_be_set              2, 2, 0
    cut_be_set              2, 3, 1
    cut_be_set              6, 1, 0
    cut_be_set              6, 2, 1
    cut_be_set              8, 1, 0
    cut_be_set              8, 3, 1
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -13920, -5440, -21788
    sca_id_set              0, 0, 0
    sca_id_set              1, 0, 0
    sca_id_set              2, 0, 0
    aot_reset               ID_AOT_5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_2, 0, 0, 0, 0, 255
    set                     FG_PBF08, 1, 0
    set                     FG_PBF08, 3, 0
    evt_exec                255, I_GOSUB, main_0C
    nop
    nop

off_1328:
    gosub                   main_07
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_0, 0, 0, 255
    evt_next
    nop
    if                      0, off_135E
    ck                      FG_MESSAGE, F_QUESTION, 0
    message_on              0, ID_MSG_1, 0, 0, 255
    se_on                   2, 266, 0, -14449, -1400, -21046
    else                    0, off_136C

off_135E:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_136C:
    aot_reset               ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    evt_end                 0

.proc main_03
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    message_on              0, ID_MSG_0, 0, 0, 255
    evt_next
    nop
    if                      0, off_1414
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   2, 266, 0, -14449, -1400, -21046
    evt_next
    nop
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    cut_chg                 8
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    cut_be_set              2, 2, 0
    cut_be_set              2, 3, 1
    cut_be_set              6, 1, 0
    cut_be_set              6, 2, 1
    cut_be_set              8, 1, 0
    cut_be_set              8, 3, 1
    set                     FG_STATUS, 27, 1
    evt_exec                255, I_GOSUB, main_05
    while                   4, off_13EE
    ck                      FG_ROOM, 0, 0
    evt_next
    nop
    ewhile                  0

off_13EE:
    set                     FG_STATUS, 27, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_XOR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    cut_chg                 7
    set                     FG_PBF08, 1, 0
    set                     FG_PBF08, 3, 0
    cut_auto                1
    else                    0, off_142C

off_1414:
    se_on                   4, 5, 0, 0, 0, 0
    aot_reset               ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    nop
    nop

off_142C:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_04
    evt_next
    nop
    if                      0, off_1456
    ck                      FG_COMMON, 95, 0
    sce_espr3d_on           0, 22, 0, 2432, -14495, -1850, -21210, 0, 512, 0, 0
    else                    0, off_146E

off_1456:
    sce_espr3d_on           0, 4118, 0, 2432, -14495, -1850, -21210, 0, 512, 0, 0
    nop
    nop

off_146E:
    evt_end                 0

.proc main_05
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -13920, 0, -21788
    speed_set               1, -10
    speed_set               7, -2
    se_on                   2, 267, 4, 0, 0, 0
    nop_8c                  0, 80, 140, 75, 0, 0, 0
    nop_8b                  140, 75, 0, 75, 0
    nop_8a                  0, 8, 0, 150, 0
    nop_8c                  0, 160, 0, 50, 0, 150, 0
    for                     0, off_14B8, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_14B8:
    for                     0, off_14E0, 3
    speed_set               7, -2
    for                     0, off_14CE, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_14CE:
    speed_set               7, 2
    for                     0, off_14DE, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_14DE:
    next                    0

off_14E0:
    sce_espr_kill           22, 0, 0, 0
    set                     FG_COMMON, 95, 1
    set                     FG_MAP_C, 5, 1
    nop
    gosub                   main_04
    for                     0, off_1518, 10
    speed_set               7, -2
    for                     0, off_1506, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1506:
    speed_set               7, 2
    for                     0, off_1516, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1516:
    next                    0

off_1518:
    sca_id_set              0, 0, 0
    sca_id_set              1, 0, 0
    sca_id_set              2, 0, 0
    if                      0, off_1536
    ck                      FG_ENEMY_2, 21, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_1536:
    if                      0, off_1548
    ck                      FG_ENEMY_2, 22, 0
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_1548:
    set                     FG_ROOM, 0, 1
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               1, -30
    for                     0, off_157C, 2
    speed_set               7, -2
    for                     0, off_156A, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_156A:
    speed_set               7, 2
    for                     0, off_157A, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_157A:
    next                    0

off_157C:
    pos_set                 0, 2000, 2000, 2000
    aot_reset               ID_AOT_5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_2, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_06
    if                      0, off_159E
    ck                      FG_ENEMY_2, 164, 1
    set                     FG_ROOM, 1, 1
    endif
    nop

off_159E:
    if                      0, off_15AC
    ck                      FG_ENEMY_2, 165, 1
    set                     FG_ROOM, 2, 1
    endif
    nop

off_15AC:
    sce_em_set              0, ID_EM_0, ENEMY_VINES, 0, AI_20, 0, SBK_0, 0, 255, 8900, 0, -24422, 3568, 0, 0
    if                      0, off_165C
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_1602
    ck                      FG_COMMON, 95, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 7, AI_20 | AI_40, 0, SBK_19, 0, 21, -10700, 0, -24008, 2648, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 7, AI_20 | AI_40, 0, SBK_19, 0, 22, -9170, 0, -22312, 1592, 0, 0
    else                    0, off_1658

off_1602:
    if                      0, off_1628
    ck                      FG_ENEMY_2, 21, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 21, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 3, 1
    else                    0, off_162C

off_1628:
    gosub                   main_08
    nop
    nop

off_162C:
    if                      0, off_1652
    ck                      FG_ENEMY_2, 22, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 22, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    else                    0, off_1656

off_1652:
    gosub                   main_09
    nop
    nop

off_1656:
    nop
    nop

off_1658:
    else                    0, off_1788

off_165C:
    if                      0, off_16F6
    ck                      FG_ZAPPING, 14, 0
    if                      0, off_169C
    ck                      FG_COMMON, 95, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 21, -10700, 0, -24008, 2648, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 22, -9148, 0, -22456, 5464, 0, 0
    else                    0, off_16F2

off_169C:
    if                      0, off_16C2
    ck                      FG_ENEMY_2, 21, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 21, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 3, 1
    else                    0, off_16C6

off_16C2:
    gosub                   main_08
    nop
    nop

off_16C6:
    if                      0, off_16EC
    ck                      FG_ENEMY_2, 22, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 22, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    else                    0, off_16F0

off_16EC:
    gosub                   main_09
    nop
    nop

off_16F0:
    nop
    nop

off_16F2:
    else                    0, off_1786

off_16F6:
    if                      0, off_172E
    ck                      FG_COMMON, 95, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 21, -10700, 0, -24008, 2648, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 22, -9170, 0, -22312, 1592, 0, 0
    else                    0, off_1784

off_172E:
    if                      0, off_1754
    ck                      FG_ENEMY_2, 21, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 21, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 3, 1
    else                    0, off_1758

off_1754:
    gosub                   main_0A
    nop
    nop

off_1758:
    if                      0, off_177E
    ck                      FG_ENEMY_2, 22, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 22, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    else                    0, off_1782

off_177E:
    gosub                   main_0B
    nop
    nop

off_1782:
    nop
    nop

off_1784:
    nop
    nop

off_1786:
    nop
    nop

off_1788:
    evt_end                 0

.proc main_07
    if                      0, off_1798
    ck                      FG_COMMON, 164, 1
    set                     FG_STATUS, 12, 1
    endif
    nop

off_1798:
    evt_end                 0

.proc main_08
    if                      0, off_17F8
    ck                      FG_ENEMY_2, 21, 1
    if                      0, off_17CC
    ck                      FG_ENEMY_2, 164, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 164, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 1, 1
    set                     FG_ROOM, 3, 1
    else                    0, off_17F6

off_17CC:
    if                      0, off_17F4
    ck                      FG_ENEMY_2, 165, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 165, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 2, 1
    set                     FG_ROOM, 3, 1
    endif
    nop

off_17F4:
    nop
    nop

off_17F6:
    endif
    nop

off_17F8:
    evt_end                 0

.proc main_09
    if                      0, off_1850
    ck                      FG_ENEMY_2, 22, 1
    if                      0, off_1828
    ck                      FG_ROOM, 1, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 164, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    else                    0, off_184E

off_1828:
    if                      0, off_184C
    ck                      FG_ROOM, 2, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 165, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    endif
    nop

off_184C:
    nop
    nop

off_184E:
    endif
    nop

off_1850:
    evt_end                 0

.proc main_0A
    if                      0, off_18B0
    ck                      FG_ENEMY_2, 21, 1
    if                      0, off_1884
    ck                      FG_ENEMY_2, 164, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 164, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 1, 1
    set                     FG_ROOM, 3, 1
    else                    0, off_18AE

off_1884:
    if                      0, off_18AC
    ck                      FG_ENEMY_2, 165, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 165, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 2, 1
    set                     FG_ROOM, 3, 1
    endif
    nop

off_18AC:
    nop
    nop

off_18AE:
    endif
    nop

off_18B0:
    evt_end                 0

.proc main_0B
    if                      0, off_1908
    ck                      FG_ENEMY_2, 21, 1
    if                      0, off_18E0
    ck                      FG_ROOM, 1, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 164, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    else                    0, off_1906

off_18E0:
    if                      0, off_1904
    ck                      FG_ROOM, 2, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 165, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    endif
    nop

off_1904:
    nop
    nop

off_1906:
    endif
    nop

off_1908:
    evt_end                 0

.proc main_0C
    evt_next
    nop
    if                      0, off_191E
    ck                      FG_ROOM, 3, 1
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_191E:
    if                      0, off_1930
    ck                      FG_ROOM, 4, 1
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_1930:
    evt_end                 0
    db                      0x08, 0x00
