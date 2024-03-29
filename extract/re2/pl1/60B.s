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
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, 20000, 20000, 20000, 0, -3584, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1258
    ck                      FG_COMMON, 106, 1
    aot_set_4p              5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15680, -21636, -14500, -20500, -13500, -21500, -14600, -22700, 255, 0, I_GOSUB, main_03, 0, 0
    gosub                   main_04
    else                    0, off_1276

off_1258:
    aot_set_4p              5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15680, -21636, -14500, -20500, -13500, -21500, -14600, -22700, 255, 0, I_GOSUB, main_02, 0, 0
    nop
    nop

off_1276:
    if                      0, off_12C2
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
    else                    0, off_130A

off_12C2:
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

off_130A:
    gosub                   main_07
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_0, 0, 0, 255
    evt_next
    nop
    if                      0, off_1340
    ck                      FG_MESSAGE, F_QUESTION, 0
    message_on              0, ID_MSG_1, 0, 0, 255
    se_on                   2, 266, 0, -14449, -1400, -21046
    else                    0, off_134E

off_1340:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_134E:
    aot_reset               ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    evt_end                 0

.proc main_03
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    message_on              0, ID_MSG_0, 0, 0, 255
    evt_next
    nop
    if                      0, off_13F6
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
    while                   4, off_13D0
    ck                      FG_ROOM, 0, 0
    evt_next
    nop
    ewhile                  0

off_13D0:
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
    else                    0, off_140E

off_13F6:
    se_on                   4, 5, 0, 0, 0, 0
    aot_reset               ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    nop
    nop

off_140E:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_04
    evt_next
    nop
    if                      0, off_1438
    ck                      FG_COMMON, 95, 0
    sce_espr3d_on           0, 22, 0, 2432, -14495, -1850, -21210, 0, 512, 0, 0
    else                    0, off_1450

off_1438:
    sce_espr3d_on           0, 4118, 0, 2432, -14495, -1850, -21210, 0, 512, 0, 0
    nop
    nop

off_1450:
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
    for                     0, off_149A, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_149A:
    for                     0, off_14C2, 3
    speed_set               7, -2
    for                     0, off_14B0, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_14B0:
    speed_set               7, 2
    for                     0, off_14C0, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_14C0:
    next                    0

off_14C2:
    sce_espr_kill           22, 0, 0, 0
    set                     FG_COMMON, 95, 1
    set                     FG_MAP_C, 5, 1
    nop
    gosub                   main_04
    for                     0, off_14FA, 10
    speed_set               7, -2
    for                     0, off_14E8, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_14E8:
    speed_set               7, 2
    for                     0, off_14F8, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_14F8:
    next                    0

off_14FA:
    sca_id_set              0, 0, 0
    sca_id_set              1, 0, 0
    sca_id_set              2, 0, 0
    if                      0, off_1518
    ck                      FG_ENEMY_2, 21, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_1518:
    if                      0, off_152A
    ck                      FG_ENEMY_2, 22, 0
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_152A:
    set                     FG_ROOM, 0, 1
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               1, -30
    for                     0, off_155E, 2
    speed_set               7, -2
    for                     0, off_154C, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_154C:
    speed_set               7, 2
    for                     0, off_155C, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_155C:
    next                    0

off_155E:
    pos_set                 0, 2000, 2000, 2000
    aot_reset               ID_AOT_5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_2, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_06
    if                      0, off_1580
    ck                      FG_ENEMY_2, 164, 1
    set                     FG_ROOM, 1, 1
    endif
    nop

off_1580:
    if                      0, off_158E
    ck                      FG_ENEMY_2, 165, 1
    set                     FG_ROOM, 2, 1
    endif
    nop

off_158E:
    sce_em_set              0, ID_EM_0, ENEMY_VINES, 0, AI_20, 0, SBK_0, 0, 255, 8900, 0, -24422, 3568, 0, 0
    if                      0, off_163E
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_15E4
    ck                      FG_COMMON, 95, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 7, AI_20 | AI_40, 0, SBK_19, 0, 21, -10700, 0, -24008, 2648, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 7, AI_20 | AI_40, 0, SBK_19, 0, 22, -9170, 0, -22312, 1592, 0, 0
    else                    0, off_163A

off_15E4:
    if                      0, off_160A
    ck                      FG_ENEMY_2, 21, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 21, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 3, 1
    else                    0, off_160E

off_160A:
    gosub                   main_08
    nop
    nop

off_160E:
    if                      0, off_1634
    ck                      FG_ENEMY_2, 22, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 22, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    else                    0, off_1638

off_1634:
    gosub                   main_09
    nop
    nop

off_1638:
    nop
    nop

off_163A:
    else                    0, off_176A

off_163E:
    if                      0, off_16D8
    ck                      FG_ZAPPING, 14, 0
    if                      0, off_167E
    ck                      FG_COMMON, 95, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 21, -10700, 0, -24008, 2648, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 22, -9148, 0, -22456, 5464, 0, 0
    else                    0, off_16D4

off_167E:
    if                      0, off_16A4
    ck                      FG_ENEMY_2, 21, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 21, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 3, 1
    else                    0, off_16A8

off_16A4:
    gosub                   main_08
    nop
    nop

off_16A8:
    if                      0, off_16CE
    ck                      FG_ENEMY_2, 22, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 22, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    else                    0, off_16D2

off_16CE:
    gosub                   main_09
    nop
    nop

off_16D2:
    nop
    nop

off_16D4:
    else                    0, off_1768

off_16D8:
    if                      0, off_1710
    ck                      FG_COMMON, 95, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 21, -10700, 0, -24008, 2648, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 22, -9170, 0, -22312, 1592, 0, 0
    else                    0, off_1766

off_1710:
    if                      0, off_1736
    ck                      FG_ENEMY_2, 21, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 21, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 3, 1
    else                    0, off_173A

off_1736:
    gosub                   main_0A
    nop
    nop

off_173A:
    if                      0, off_1760
    ck                      FG_ENEMY_2, 22, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 22, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    else                    0, off_1764

off_1760:
    gosub                   main_0B
    nop
    nop

off_1764:
    nop
    nop

off_1766:
    nop
    nop

off_1768:
    nop
    nop

off_176A:
    evt_end                 0

.proc main_07
    if                      0, off_177A
    ck                      FG_COMMON, 164, 1
    set                     FG_STATUS, 12, 1
    endif
    nop

off_177A:
    evt_end                 0

.proc main_08
    if                      0, off_17DA
    ck                      FG_ENEMY_2, 21, 1
    if                      0, off_17AE
    ck                      FG_ENEMY_2, 164, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 164, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 1, 1
    set                     FG_ROOM, 3, 1
    else                    0, off_17D8

off_17AE:
    if                      0, off_17D6
    ck                      FG_ENEMY_2, 165, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 165, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 2, 1
    set                     FG_ROOM, 3, 1
    endif
    nop

off_17D6:
    nop
    nop

off_17D8:
    endif
    nop

off_17DA:
    evt_end                 0

.proc main_09
    if                      0, off_1832
    ck                      FG_ENEMY_2, 22, 1
    if                      0, off_180A
    ck                      FG_ROOM, 1, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 164, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    else                    0, off_1830

off_180A:
    if                      0, off_182E
    ck                      FG_ROOM, 2, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 18, AI_20 | AI_40, 0, SBK_19, 0, 165, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    endif
    nop

off_182E:
    nop
    nop

off_1830:
    endif
    nop

off_1832:
    evt_end                 0

.proc main_0A
    if                      0, off_1892
    ck                      FG_ENEMY_2, 21, 1
    if                      0, off_1866
    ck                      FG_ENEMY_2, 164, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 164, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 1, 1
    set                     FG_ROOM, 3, 1
    else                    0, off_1890

off_1866:
    if                      0, off_188E
    ck                      FG_ENEMY_2, 165, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 165, -10565, 0, -15529, 2050, 0, 0
    set                     FG_ROOM, 2, 1
    set                     FG_ROOM, 3, 1
    endif
    nop

off_188E:
    nop
    nop

off_1890:
    endif
    nop

off_1892:
    evt_end                 0

.proc main_0B
    if                      0, off_18EA
    ck                      FG_ENEMY_2, 21, 1
    if                      0, off_18C2
    ck                      FG_ROOM, 1, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 164, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    else                    0, off_18E8

off_18C2:
    if                      0, off_18E6
    ck                      FG_ROOM, 2, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY_PURPLE, 18, AI_20 | AI_40, 0, SBK_19, 0, 165, -19360, 0, -14197, -512, 0, 0
    set                     FG_ROOM, 4, 1
    endif
    nop

off_18E6:
    nop
    nop

off_18E8:
    endif
    nop

off_18EA:
    evt_end                 0

.proc main_0C
    evt_next
    nop
    if                      0, off_1900
    ck                      FG_ROOM, 3, 1
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_1900:
    if                      0, off_1912
    ck                      FG_ROOM, 4, 1
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_1912:
    evt_end                 0
