.version 2

.init
.proc init
    if                      0, off_3646
    ck                      FG_STATUS, F_PLAYER, 1
    set                     FG_COMMON, 103, 1
    endif
    nop

off_3646:
    if                      0, off_3672
    ck                      FG_COMMON, 103, 0
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9500, -11111, 3600, 1700, -19720, 0, -22800, 150, 4, 0, 0, 0, 44, 0, 0, 0, UNLOCKED, 0
    else                    0, off_3694

off_3672:
    door_aot_se             ID_AOT_5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9500, -11111, 3600, 1700, -32000, -32000, -32000, 3072, 4, 1, 1, 0, 44, 2, 0, 0, UNLOCKED, 0
    nop
    nop

off_3694:
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25222, -28211, 1800, 1800, -25504, -129, -14678, 1024, 3, 13, 0, 0, 7, 0, 0, 0, UNLOCKED, 0
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 96, 156, 127, 255, 170, 198
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, -32000, -32000, -32000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc init_01
    evt_end                 0

.main
.proc main
    sce_espr3d_on           0, 21, 0, 8192, -10350, -1600, -16750, 3072, 128, 1024, 0
    sce_espr3d_on           0, 1046, 0, 2816, -10600, -1600, -17400, 3072, 256, 1024, 0
    if                      0, off_376E
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_3764
    ck                      FG_COMMON, 93, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11192, -17240, 1300, 1500, 255, 0, I_GOSUB, main_11, 0, 0
    sca_id_set              19, 0, 144
    else                    0, off_376A

off_3764:
    sca_id_set              19, 128, 252
    nop
    nop

off_376A:
    else                    0, off_37BA

off_376E:
    if                      0, off_37A2
    ck                      FG_COMMON, 93, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11192, -17240, 1300, 1500, 255, 0, I_GOSUB, main_02, 0, 0
    aot_set                 ID_AOT_3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10170, -11111, 3400, 1700, ID_MSG_0, 0, 0, 0, 255, 255
    else                    0, off_37B8

off_37A2:
    aot_set                 ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11192, -17240, 1300, 1500, ID_MSG_2, 0, 0, 0, 255, 255
    nop
    nop

off_37B8:
    nop
    nop

off_37BA:
    if                      0, off_37CE
    ck                      FG_COMMON, 93, 0
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_37CE:
    if                      0, off_37F0
    ck                      FG_STATUS, 3, 1
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04, 0, SBK_31, 0, 255, -25540, 0, -25760, 3150, 0, 0
    else                    0, off_381C

off_37F0:
    if                      0, off_381A
    cmp                     0, V_LAST_RDT, CMP_EQ, 1037
    ck                      FG_COMMON, 113, 0
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04, 0, SBK_31, 0, 255, -25540, 0, -25760, 3150, 0, 0
    set                     FG_STATUS, 3, 1
    endif
    nop

off_381A:
    nop
    nop

off_381C:
    if                      0, off_38A2
    ck                      FG_STATUS, F_SCENARIO, 0
    ck                      FG_COMMON, 156, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -25925, -900, -8310, 0, 1344, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -25860, -2520, -9220, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26880, -8970, 1400, 1800, ITEM_SHOTGUNAMMO, 7, 202, ID_OBJ_2, IF_DEFAULT
    item_aot_set            ID_AOT_8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26682, -10500, 1400, 1900, ITEM_HANDGUNAMMO, 15, 203, ID_OBJ_1, IF_DEFAULT
    endif
    nop

off_38A2:
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25222, -28211, 1800, 1800, 255, 0, I_GOSUB, main_04, 0, 0
    if                      0, off_38CC
    ck                      FG_COMMON, 103, 1
    cmp                     0, V_LAST_RDT, CMP_EQ, 1281
    evt_exec                255, I_GOSUB, main_0C
    else                    0, off_38D0

off_38CC:
    gosub                   main_06
    nop
    nop

off_38D0:
    set                     FG_PBF0B, 5, 0
    set                     FG_PBF0B, 6, 0
    if                      0, off_38E8
    ck                      FG_COMMON, 77, 0
    set                     FG_COMMON, 77, 1
    else                    0, off_390E

off_38E8:
    if                      0, off_390C
    cmp                     0, V_LAST_RDT, CMP_EQ, 1037
    ck                      FG_COMMON, 113, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -24325, 0, -20500
    dir_set                 0, 0, 1024, 0
    endif
    nop

off_390C:
    nop
    nop

off_390E:
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    message_on              0, ID_MSG_1, 0, 255, 255
    evt_next
    nop
    if                      0, off_3982
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_COMMON, 93, 1
    aot_reset               ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_2, 0, 0, 0, 255, 255
    if                      0, off_3946
    ck                      FG_STATUS, F_PLAYER, 0
    aot_reset               ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 224, 177, 0, 0, 198, 168
    else                    0, off_3952

off_3946:
    aot_reset               ID_AOT_5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 131, 0, 131, 0, 131
    nop
    nop

off_3952:
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    se_on                   2, 15, 0, -11000, -1440, -16550
    sleep                   10, 10
    se_on                   2, 14, 0, -11000, -1440, -16550
    cut_chg                 9
    cut_auto                1
    gosub                   main_05
    evt_next
    nop
    endif
    nop

off_3982:
    evt_end                 0

.proc main_03
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_399A
    member_cmp              0, 13, 1, 128, 193
    save                    V_04, 250
    else                    0, off_39B4

off_399A:
    if                      0, off_39AA
    member_cmp              0, 13, 3, 152, 189
    save                    V_04, 3990
    endif
    nop

off_39AA:
    plc_dest                0, 21, 32, 5, 100
    nop
    nop

off_39B4:
    do                      0, off_39C0
    evt_next
    nop
    edwhile                 off_39C0
    ck                      FG_ROOM, 32, 0

off_39C0:
    plc_neck                1, -10700, -900, -16450, 32, 32
    sleep                   10, 20
    plc_neck                4, 2, 0, 0, 32, 0
    sleep                   10, 30
    plc_dest                0, 9, 32, -11195, -16315
    do                      0, off_39F0
    evt_next
    nop
    edwhile                 off_39F0
    ck                      FG_ROOM, 32, 0

off_39F0:
    plc_dest                0, 4, 32, -11195, -16315
    if                      0, off_3A14
    member_cmp              0, 13, 1, 169, 192
    do                      0, off_3A10
    evt_next
    nop
    edwhile                 off_3A10
    member_cmp              0, 13, 1, 169, 192

off_3A10:
    else                    0, off_3A24

off_3A14:
    do                      0, off_3A22
    evt_next
    nop
    edwhile                 off_3A22
    member_cmp              0, 13, 3, 225, 191

off_3A22:
    nop
    nop

off_3A24:
    for                     0, off_3A3C, 10
    if                      0, off_3A38
    member_cmp              0, 11, 1, 225, 211
    break                   0
    endif
    nop

off_3A38:
    evt_next
    nop
    next                    0

off_3A3C:
    plc_dest                0, 21, 32, 0, 100
    do                      0, off_3A50
    evt_next
    nop
    edwhile                 off_3A50
    ck                      FG_ROOM, 32, 0

off_3A50:
    evt_exec                255, I_GOSUB, main_0D
    plc_motion              0, 15, 8
    sleep                   10, 45
    plc_motion              0, 15, 136
    sleep                   10, 45
    evt_end                 0

.proc main_04
    set                     FG_STATUS, 3, 0
    aot_reset               ID_AOT_1, SCE_DOOR, SAT_PL | SAT_FRONT, 96, 156, 127, 255, 170, 198
    evt_end                 0

.proc main_05
    cut_be_set              2, 2, 0
    cut_replace             1, 6
    cut_replace             2, 7
    cut_replace             3, 8
    cut_replace             4, 9
    cut_replace             5, 10
    nop
    evt_end                 0

.proc main_06
    if                      0, off_3AAE
    ck                      FG_COMMON, 93, 0
    if                      0, off_3AA4
    ck                      FG_STATUS, F_SCENARIO, 1
    cut_be_set              2, 3, 0
    else                    0, off_3AAA

off_3AA4:
    cut_be_set              2, 2, 0
    nop
    nop

off_3AAA:
    else                    0, off_3AB2

off_3AAE:
    gosub                   main_05
    nop
    nop

off_3AB2:
    evt_end                 0

.proc main_07
    set                     FG_COMMON, 93, 1
    se_on                   2, 11, 4, 0, 0, 0
    set                     FG_PBF0B, 5, 1
    set                     FG_PBF0B, 6, 1
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 30
    gosub                   main_08
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -32000, -32000, -32000
    set                     FG_ROOM, 0, 1
    cut_chg                 9
    cut_auto                1
    cut_replace             1, 6
    cut_replace             2, 7
    cut_replace             11, 8
    cut_replace             12, 9
    cut_replace             13, 10
    nop
    sca_id_set              19, 128, 252
    set                     FG_PBF0B, 5, 0
    set                     FG_PBF0B, 6, 0
    evt_end                 0

.proc main_08
    cut_chg                 13
    if                      0, off_3B2C
    ck                      FG_STATUS, F_PLAYER, 0
    ck                      FG_STATUS, F_SCENARIO, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -13210, 0, -16800
    dir_set                 0, 0, 0, 0
    endif
    nop

off_3B2C:
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, 30000, 900, -13300
    gosub                   main_0F
    evt_exec                255, I_GOSUB, main_0A
    evt_exec                255, I_GOSUB, main_09
    speed_set               0, -150
    for                     0, off_3B50, 80
    add_speed
    evt_next
    next                    0

off_3B50:
    se_on                   2, 12, 4, 0, 0, 0
    for                     0, off_3B66, 20
    add_speed
    evt_next
    next                    0

off_3B66:
    cut_chg                 11
    evt_exec                255, I_GOSUB, main_0A
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 10000
    member_set2             M_X_POS, V_TEMP
    nop
    speed_set               0, -100
    for                     0, off_3B8C, 87
    add_speed
    evt_next
    next                    0

off_3B8C:
    speed_set               0, -80
    for                     0, off_3B9A, 30
    add_speed
    evt_next
    next                    0

off_3B9A:
    speed_set               0, -60
    for                     0, off_3BA8, 10
    add_speed
    evt_next
    next                    0

off_3BA8:
    speed_set               0, -50
    for                     0, off_3BB6, 20
    add_speed
    evt_next
    next                    0

off_3BB6:
    se_on                   2, 13, 4, 0, 0, 0
    speed_set               0, -25
    for                     0, off_3BD0, 40
    add_speed
    evt_next
    next                    0

off_3BD0:
    sleep                   10, 10
    speed_set               0, 5
    for                     0, off_3BE2, 5
    add_speed
    evt_next
    next                    0

off_3BE2:
    speed_set               0, 10
    for                     0, off_3BF0, 10
    add_speed
    evt_next
    next                    0

off_3BF0:
    speed_set               0, 15
    for                     0, off_3BFE, 15
    add_speed
    evt_next
    next                    0

off_3BFE:
    speed_set               0, -15
    for                     0, off_3C0C, 15
    add_speed
    evt_next
    next                    0

off_3C0C:
    speed_set               0, -10
    for                     0, off_3C1A, 10
    add_speed
    evt_next
    next                    0

off_3C1A:
    speed_set               0, -5
    for                     0, off_3C28, 5
    add_speed
    evt_next
    next                    0

off_3C28:
    speed_set               0, 5
    for                     0, off_3C36, 5
    add_speed
    evt_next
    next                    0

off_3C36:
    speed_set               0, 10
    for                     0, off_3C44, 5
    add_speed
    evt_next
    next                    0

off_3C44:
    speed_set               0, -10
    for                     0, off_3C52, 5
    add_speed
    evt_next
    next                    0

off_3C52:
    speed_set               0, -5
    for                     0, off_3C60, 5
    add_speed
    evt_next
    next                    0

off_3C60:
    sleep                   10, 20
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               1, -20
    for                     0, off_3C78, 10
    add_speed
    evt_next
    next                    0

off_3C78:
    speed_set               1, -15
    for                     0, off_3C86, 16
    add_speed
    evt_next
    next                    0

off_3C86:
    speed_set               1, -10
    for                     0, off_3C94, 31
    add_speed
    evt_next
    next                    0

off_3C94:
    speed_set               1, -5
    for                     0, off_3CA2, 30
    add_speed
    evt_next
    next                    0

off_3CA2:
    speed_set               1, 0
    evt_end                 0

.proc main_0A
    save                    V_05, 0
    save                    V_06, 0
    do                      0, off_3D3A
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 16000
    copy                    V_05, V_TEMP
    nop
    if                      0, off_3D08
    cmp                     0, V_CUT, CMP_EQ, 13
    light_kido_set          0, 20000
    light_kido_set          1, 20000
    light_pos_set           0, 0, 12, -900
    light_pos_set           0, 0, 13, -12000
    work_copy               5, 4, 1
    light_pos_set           0, 0, 11, 0
    light_pos_set           0, 1, 12, -4500
    light_pos_set           0, 1, 13, -12000
    work_copy               5, 4, 1
    light_pos_set           0, 1, 11, 0
    else                    0, off_3D24

off_3D08:
    light_kido_set          0, -20536
    light_pos_set           0, 0, 12, -900
    light_pos_set           0, 0, 13, -12000
    work_copy               5, 4, 1
    light_pos_set           0, 0, 11, 0
    nop
    nop

off_3D24:
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 2500
    copy                    V_06, V_TEMP
    nop
    evt_next
    nop
    edwhile                 off_3D3A
    ck                      FG_ROOM, 0, 0

off_3D3A:
    evt_end                 0

.proc main_0B
    evt_next
    work_set                WK_OBJECT, ID_OBJ_0
    pos_set                 0, 5000, 0, -13300
    cut_chg                 11
    evt_exec                255, I_GOSUB, main_0A
    gosub                   main_10
    se_on                   2, 12, 4, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               0, -100
    for                     0, off_3D6E, 87
    add_speed
    evt_next
    next                    0

off_3D6E:
    speed_set               0, -80
    for                     0, off_3D7C, 10
    add_speed
    evt_next
    next                    0

off_3D7C:
    speed_set               0, -80
    for                     0, off_3D8A, 20
    add_speed
    evt_next
    next                    0

off_3D8A:
    sce_fade_set            1, 2, 7, 255, 2
    for                     0, off_3D9A, 10
    add_speed
    evt_next
    next                    0

off_3D9A:
    se_on                   2, 16, 4, 0, 0, 0
    sleep                   10, 20
    evt_end                 0

.proc main_0C
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    if                      0, off_3DD0
    ck                      FG_STATUS, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_ADD, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_3DD0:
    cut_auto                0
    cut_chg                 11
    set                     FG_PBF0B, 5, 1
    set                     FG_PBF0B, 6, 1
    gosub                   main_0B
    sce_fade_set            1, 2, 7, 255, 241
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -32000, -32000, -32000
    set                     FG_ROOM, 0, 1
    cut_be_set              2, 2, 0
    cut_replace             1, 6
    cut_replace             2, 7
    cut_replace             3, 8
    cut_replace             4, 9
    cut_replace             5, 10
    work_set                WK_PLAYER, 0
    pos_set                 0, -7750, 0, -8830
    dir_set                 0, 0, 2250, 0
    if                      0, off_3E46
    ck                      FG_STATUS, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -6610, 0, -8950
    dir_set                 0, 0, 2250, 0
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_SUB, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_3E46:
    cut_chg                 10
    set                     FG_PBF0B, 5, 0
    set                     FG_PBF0B, 6, 0
    cut_auto                1
    sleep                   10, 16
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_0D
    sleep                   10, 12
    se_on                   2, 10, 1, 0, 0, 0
    sleep                   10, 16
    se_on                   2, 10, 1, 0, 0, 0
    sleep                   10, 16
    se_on                   2, 10, 1, 0, 0, 0
    sleep                   10, 16
    se_on                   2, 10, 1, 0, 0, 0
    sleep                   10, 16
    se_on                   2, 10, 1, 0, 0, 0
    evt_end                 0

.proc main_0E
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -320, 0, 25, 30
    sleep                   10, 14
    plc_neck                2, 0, -120, 0, 25, 30
    sleep                   10, 8
    plc_neck                2, 0, -320, 0, 25, 30
    sleep                   10, 8
    evt_end                 0

.proc main_0F
    nop_8b                  90, 2, 0, 0, 0
    nop_8c                  0, 30, 40, 20, 0, 0, 0
    nop_8b                  40, 80, 0, 20, 0
    nop_8c                  0, 50, 40, 20, 0, 100, 0
    nop_8b                  40, 77, 0, 120, 0
    nop_8c                  0, 40, 50, 20, 0, 197, 0
    nop_8b                  45, 70, 0, 217, 0
    nop_8c                  0, 40, 80, 20, 0, 31, 1
    nop_8b                  90, 5, 0, 51, 1
    nop_8b                  80, 15, 0, 56, 1
    nop_8c                  0, 80, 50, 5, 0, 71, 1
    nop_8c                  0, 50, 80, 5, 0, 76, 1
    nop_8b                  80, 15, 0, 81, 1
    nop_8c                  0, 80, 50, 5, 0, 96, 1
    nop_8c                  0, 50, 80, 5, 0, 101, 1
    nop_8b                  80, 10, 0, 106, 1
    evt_end                 0

.proc main_10
    nop_8b                  80, 5, 0, 0, 0
    nop_8c                  0, 50, 60, 30, 0, 0, 0
    nop_8c                  0, 60, 30, 40, 0, 20, 0
    nop_8c                  0, 40, 60, 30, 0, 50, 0
    nop_8c                  0, 60, 40, 30, 0, 70, 0
    nop_8c                  0, 60, 0, 27, 0, 90, 0
    evt_end                 0

.proc main_11
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    work_set                WK_SPLAYER, 0
    splc_sce
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 224, 177, 0, 0, 198, 168
    gosub                   main_03
    gosub                   main_07
    work_set                WK_PLAYER, 0
    plc_ret
    work_set                WK_SPLAYER, 0
    splc_ret
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0
