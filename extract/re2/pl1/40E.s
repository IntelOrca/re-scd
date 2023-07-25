.version 2

.init
.proc init
    if                      0, off_3646
    ck                      FG_GAME, F_PLAYER, 1
    set                     FG_GENERAL_1, 103, 1
    endif
    nop

off_3646:
    if                      0, off_3672
    ck                      FG_GENERAL_1, 103, 0
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9500, -11111, 3600, 1700, -19720, 0, -22800, 150, 4, 0, 0, 0, 44, 0, 0, 0, UNLOCKED, 0
    else                    0, off_3694

off_3672:
    door_aot_se             5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9500, -11111, 3600, 1700, -32000, -32000, -32000, 3072, 4, 1, 1, 0, 44, 2, 0, 0, UNLOCKED, 0
    nop
    nop

off_3694:
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25222, -28211, 1800, 1800, -25504, -129, -14678, 1024, 3, 13, 0, 0, 7, 0, 0, 0, UNLOCKED, 0
    aot_reset               1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 96, 156, 127, 255, 170, 198
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, -32000, -32000, -32000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc init_01
    evt_end                 0

.main
.proc main
    sce_espr3d_on           0, 21, 0, 8192, -10350, -1600, -16750, 3072, 128, 1024, 0
    sce_espr3d_on           0, 1046, 0, 2816, -10600, -1600, -17400, 3072, 256, 1024, 0
    if                      0, off_37A0
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_3796
    ck                      FG_GENERAL_1, 93, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11192, -17240, 1300, 1500, 255, 0, I_GOSUB, main_11, 0, 0
    aot_set_4p              6, SCE_AUTO, SAT_EM | SAT_UNDER, 0, 0, -19400, -14300, -15400, -12900, -15400, -14200, -19400, -16300, 5, 0, 1, 0, 1, 0
    sca_id_set              19, 0, 144
    else                    0, off_379C

off_3796:
    sca_id_set              19, 128, 252
    nop
    nop

off_379C:
    else                    0, off_37EC

off_37A0:
    if                      0, off_37D4
    ck                      FG_GENERAL_1, 93, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11192, -17240, 1300, 1500, 255, 0, I_GOSUB, main_02, 0, 0
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10170, -11111, 3400, 1700, 0, 0, 0, 0, 255, 255
    else                    0, off_37EA

off_37D4:
    aot_set                 2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11192, -17240, 1300, 1500, 2, 0, 0, 0, 255, 255
    nop
    nop

off_37EA:
    nop
    nop

off_37EC:
    if                      0, off_3800
    ck                      FG_GENERAL_1, 93, 0
    aot_reset               5, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_3800:
    if                      0, off_383A
    ck                      FG_GAME, 3, 1
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 4, 0, 32, 0, 255, -25540, 0, -25760, 3150, 0, 0
    if                      0, off_3836
    cmp                     0, V_LAST_RDT, CMP_NE, 1037
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -32000, 0, -32000
    endif
    nop

off_3836:
    else                    0, off_38A6

off_383A:
    if                      0, off_38A4
    cmp                     0, V_LAST_RDT, CMP_EQ, 1037
    ck                      FG_GENERAL_1, 113, 0
    if                      0, off_386E
    ck                      FG_GAME, F_SCENARIO, 1
    ck                      FG_3, 192, 0
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 0, 0, 0, 0, 255, -32000, -32000, -32000, 0, 0, 0
    else                    0, off_389E

off_386E:
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 4, 0, 32, 0, 255, -25540, 0, -25760, 3150, 0, 0
    if                      0, off_389C
    cmp                     0, V_LAST_RDT, CMP_NE, 1037
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -32000, 0, -32000
    endif
    nop

off_389C:
    nop
    nop

off_389E:
    set                     FG_GAME, 3, 1
    endif
    nop

off_38A4:
    nop
    nop

off_38A6:
    if                      0, off_392C
    ck                      FG_GAME, F_SCENARIO, 0
    ck                      FG_GENERAL_1, 156, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -25860, -2520, -9220, 0, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -25925, -900, -8310, 0, 1344, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26682, -10500, 1400, 1900, ITEM_HANDGUNAMMO, 15, 202, 1, 0
    item_aot_set            8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26880, -8970, 1400, 1800, ITEM_FLAMEROUNDS, 6, 203, 2, 0
    endif
    nop

off_392C:
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25222, -28211, 1800, 1800, 255, 0, I_GOSUB, main_04, 0, 0
    if                      0, off_3956
    ck                      FG_GENERAL_1, 103, 1
    cmp                     0, V_LAST_RDT, CMP_EQ, 1281
    evt_exec                255, I_GOSUB, main_0C
    else                    0, off_395A

off_3956:
    gosub                   main_06
    nop
    nop

off_395A:
    if                      0, off_3998
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_397E
    ck                      FG_GAME, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_ADD, V_TEMP, 2048
    member_set2             7, V_TEMP
    nop
    endif
    nop

off_397E:
    if                      0, off_3996
    ck                      FG_3, 192, 0
    sce_bgmtbl_set          0, 14, 4, 7191, 49152
    sce_bgm_control         0, 1, 1, 127, 64
    endif
    nop

off_3996:
    endif
    nop

off_3998:
    set                     24, 5, 0
    set                     24, 6, 0
    if                      0, off_39B0
    ck                      FG_GENERAL_1, 77, 0
    set                     FG_GENERAL_1, 77, 1
    else                    0, off_3A02

off_39B0:
    if                      0, off_3A00
    cmp                     0, V_LAST_RDT, CMP_EQ, 1037
    ck                      FG_GENERAL_1, 113, 0
    if                      0, off_39DE
    ck                      FG_GAME, F_SCENARIO, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -24325, 0, -18160
    dir_set                 0, 0, 1024, 0
    else                    0, off_39FE

off_39DE:
    if                      0, off_39FC
    ck                      FG_3, 192, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -24325, 0, -18160
    dir_set                 0, 0, 1024, 0
    endif
    nop

off_39FC:
    nop
    nop

off_39FE:
    endif
    nop

off_3A00:
    nop
    nop

off_3A02:
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    if                      0, off_3A76
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_GENERAL_1, 93, 1
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, 0, 0, 255, 255
    if                      0, off_3A3A
    ck                      FG_GAME, F_PLAYER, 0
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 224, 177, 0, 0, 198, 168
    else                    0, off_3A46

off_3A3A:
    aot_reset               5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 131, 0, 131, 0, 131
    nop
    nop

off_3A46:
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
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

off_3A76:
    evt_end                 0

.proc main_03
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_3A8E
    member_cmp              0, 13, 1, 128, 193
    save                    V_04, 250
    else                    0, off_3AA8

off_3A8E:
    if                      0, off_3A9E
    member_cmp              0, 13, 3, 152, 189
    save                    V_04, 3990
    endif
    nop

off_3A9E:
    plc_dest                0, 21, 32, 5, 100
    nop
    nop

off_3AA8:
    do                      0, off_3AB4
    evt_next
    nop
    edwhile                 off_3AB4
    ck                      FG_GENERAL_2, 32, 0

off_3AB4:
    plc_neck                1, -10700, -900, -16450, 32, 32
    sleep                   10, 20
    plc_neck                4, 2, 0, 0, 32, 0
    sleep                   10, 30
    plc_dest                0, 9, 32, -11195, -16315
    do                      0, off_3AE4
    evt_next
    nop
    edwhile                 off_3AE4
    ck                      FG_GENERAL_2, 32, 0

off_3AE4:
    plc_dest                0, 4, 32, -11195, -16315
    if                      0, off_3B08
    member_cmp              0, 13, 1, 169, 192
    do                      0, off_3B04
    evt_next
    nop
    edwhile                 off_3B04
    member_cmp              0, 13, 1, 169, 192

off_3B04:
    else                    0, off_3B18

off_3B08:
    do                      0, off_3B16
    evt_next
    nop
    edwhile                 off_3B16
    member_cmp              0, 13, 3, 225, 191

off_3B16:
    nop
    nop

off_3B18:
    for                     0, off_3B30, 10
    if                      0, off_3B2C
    member_cmp              0, 11, 1, 225, 211
    break                   0
    endif
    nop

off_3B2C:
    evt_next
    nop
    next                    0

off_3B30:
    plc_dest                0, 21, 32, 0, 100
    do                      0, off_3B44
    evt_next
    nop
    edwhile                 off_3B44
    ck                      FG_GENERAL_2, 32, 0

off_3B44:
    evt_exec                255, I_GOSUB, main_0D
    plc_motion              0, 15, 8
    sleep                   10, 45
    plc_motion              0, 15, 136
    sleep                   10, 45
    evt_end                 0

.proc main_04
    set                     FG_GAME, 3, 0
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_FRONT, 96, 156, 127, 255, 170, 198
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
    if                      0, off_3BA2
    ck                      FG_GENERAL_1, 93, 0
    if                      0, off_3B98
    ck                      FG_GAME, F_SCENARIO, 1
    cut_be_set              2, 3, 0
    else                    0, off_3B9E

off_3B98:
    cut_be_set              2, 2, 0
    nop
    nop

off_3B9E:
    else                    0, off_3BA6

off_3BA2:
    gosub                   main_05
    nop
    nop

off_3BA6:
    evt_end                 0

.proc main_07
    set                     FG_GENERAL_1, 93, 1
    se_on                   2, 11, 4, 0, 0, 0
    set                     24, 5, 1
    set                     24, 6, 1
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 30
    gosub                   main_08
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -32000, -32000, -32000
    set                     FG_GENERAL_2, 0, 1
    cut_chg                 9
    cut_auto                1
    cut_replace             1, 6
    cut_replace             2, 7
    cut_replace             11, 8
    cut_replace             12, 9
    cut_replace             13, 10
    nop
    sca_id_set              19, 128, 252
    set                     24, 5, 0
    set                     24, 6, 0
    evt_end                 0

.proc main_08
    cut_chg                 13
    if                      0, off_3C20
    ck                      FG_GAME, F_PLAYER, 0
    ck                      FG_GAME, F_SCENARIO, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -13210, 0, -16800
    dir_set                 0, 0, 0, 0
    endif
    nop

off_3C20:
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 30000, 900, -13300
    gosub                   main_0F
    evt_exec                255, I_GOSUB, main_0A
    evt_exec                255, I_GOSUB, main_09
    speed_set               0, -150
    for                     0, off_3C44, 80
    add_speed
    evt_next
    next                    0

off_3C44:
    se_on                   2, 12, 4, 0, 0, 0
    for                     0, off_3C5A, 20
    add_speed
    evt_next
    next                    0

off_3C5A:
    cut_chg                 11
    evt_exec                255, I_GOSUB, main_0A
    work_set                WK_OBJECT, 0
    nop
    member_copy             V_TEMP, 11
    nop
    calc                    0, OP_SUB, V_TEMP, 10000
    member_set2             11, V_TEMP
    nop
    speed_set               0, -100
    for                     0, off_3C80, 87
    add_speed
    evt_next
    next                    0

off_3C80:
    speed_set               0, -80
    for                     0, off_3C8E, 30
    add_speed
    evt_next
    next                    0

off_3C8E:
    speed_set               0, -60
    for                     0, off_3C9C, 10
    add_speed
    evt_next
    next                    0

off_3C9C:
    speed_set               0, -50
    for                     0, off_3CAA, 20
    add_speed
    evt_next
    next                    0

off_3CAA:
    se_on                   2, 13, 4, 0, 0, 0
    speed_set               0, -25
    for                     0, off_3CC4, 40
    add_speed
    evt_next
    next                    0

off_3CC4:
    sleep                   10, 10
    speed_set               0, 5
    for                     0, off_3CD6, 5
    add_speed
    evt_next
    next                    0

off_3CD6:
    speed_set               0, 10
    for                     0, off_3CE4, 10
    add_speed
    evt_next
    next                    0

off_3CE4:
    speed_set               0, 15
    for                     0, off_3CF2, 15
    add_speed
    evt_next
    next                    0

off_3CF2:
    speed_set               0, -15
    for                     0, off_3D00, 15
    add_speed
    evt_next
    next                    0

off_3D00:
    speed_set               0, -10
    for                     0, off_3D0E, 10
    add_speed
    evt_next
    next                    0

off_3D0E:
    speed_set               0, -5
    for                     0, off_3D1C, 5
    add_speed
    evt_next
    next                    0

off_3D1C:
    speed_set               0, 5
    for                     0, off_3D2A, 5
    add_speed
    evt_next
    next                    0

off_3D2A:
    speed_set               0, 10
    for                     0, off_3D38, 5
    add_speed
    evt_next
    next                    0

off_3D38:
    speed_set               0, -10
    for                     0, off_3D46, 5
    add_speed
    evt_next
    next                    0

off_3D46:
    speed_set               0, -5
    for                     0, off_3D54, 5
    add_speed
    evt_next
    next                    0

off_3D54:
    sleep                   10, 20
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, 0
    nop
    speed_set               1, -20
    for                     0, off_3D6C, 10
    add_speed
    evt_next
    next                    0

off_3D6C:
    speed_set               1, -15
    for                     0, off_3D7A, 16
    add_speed
    evt_next
    next                    0

off_3D7A:
    speed_set               1, -10
    for                     0, off_3D88, 31
    add_speed
    evt_next
    next                    0

off_3D88:
    speed_set               1, -5
    for                     0, off_3D96, 30
    add_speed
    evt_next
    next                    0

off_3D96:
    speed_set               1, 0
    evt_end                 0

.proc main_0A
    save                    V_05, 0
    save                    V_06, 0
    do                      0, off_3E2E
    work_set                WK_OBJECT, 0
    nop
    member_copy             V_TEMP, 11
    nop
    calc                    0, OP_SUB, V_TEMP, 16000
    copy                    V_05, V_TEMP
    nop
    if                      0, off_3DFC
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
    else                    0, off_3E18

off_3DFC:
    light_kido_set          0, -20536
    light_pos_set           0, 0, 12, -900
    light_pos_set           0, 0, 13, -12000
    work_copy               5, 4, 1
    light_pos_set           0, 0, 11, 0
    nop
    nop

off_3E18:
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 2500
    copy                    V_06, V_TEMP
    nop
    evt_next
    nop
    edwhile                 off_3E2E
    ck                      FG_GENERAL_2, 0, 0

off_3E2E:
    evt_end                 0

.proc main_0B
    evt_next
    work_set                WK_OBJECT, 0
    pos_set                 0, 5000, 0, -13300
    cut_chg                 11
    evt_exec                255, I_GOSUB, main_0A
    gosub                   main_10
    se_on                   2, 12, 4, 0, 0, 0
    work_set                WK_OBJECT, 0
    nop
    speed_set               0, -100
    for                     0, off_3E62, 87
    add_speed
    evt_next
    next                    0

off_3E62:
    speed_set               0, -80
    for                     0, off_3E70, 10
    add_speed
    evt_next
    next                    0

off_3E70:
    speed_set               0, -80
    for                     0, off_3E7E, 20
    add_speed
    evt_next
    next                    0

off_3E7E:
    sce_fade_set            1, 2, 7, 255, 2
    for                     0, off_3E8E, 10
    add_speed
    evt_next
    next                    0

off_3E8E:
    se_on                   2, 16, 4, 0, 0, 0
    sleep                   10, 20
    evt_end                 0

.proc main_0C
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    if                      0, off_3EC4
    ck                      FG_GAME, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_ADD, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    endif
    nop

off_3EC4:
    cut_auto                0
    cut_chg                 11
    set                     24, 5, 1
    set                     24, 6, 1
    gosub                   main_0B
    sce_fade_set            1, 2, 7, 255, 241
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -32000, -32000, -32000
    set                     FG_GENERAL_2, 0, 1
    cut_be_set              2, 2, 0
    cut_replace             1, 6
    cut_replace             2, 7
    cut_replace             3, 8
    cut_replace             4, 9
    cut_replace             5, 10
    work_set                WK_PLAYER, 0
    pos_set                 0, -7750, 0, -8830
    dir_set                 0, 0, 2250, 0
    if                      0, off_3F3A
    ck                      FG_GAME, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -6610, 0, -8950
    dir_set                 0, 0, 2250, 0
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_SUB, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    endif
    nop

off_3F3A:
    cut_chg                 10
    set                     24, 5, 0
    set                     24, 6, 0
    cut_auto                1
    sleep                   10, 16
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
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
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    set                     FG_3, 192, 1
    aot_reset               5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 224, 177, 0, 0, 198, 168
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               2, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               6, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 5, 0, ITEM_KNIFE, 0, aot, 0
    evt_exec                255, I_GOSUB, main_12
    gosub                   main_03
    gosub                   main_07
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_12
    do                      0, off_40CE
    evt_next
    nop
    edwhile                 off_40CE
    ck                      FG_GENERAL_2, 1, 0

off_40CE:
    se_on                   0, 1, 0, -24300, 0, -26400
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    cut_chg                 0
    nop
    plc_neck                6, 0, 0, 0, 0, 0
    gosub                   main_14
    cut_chg                 7
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -18600, 0, -12720
    dir_set                 0, 0, 1780, 0
    plc_dest                0, 4, 32, -22150, -14250
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_15
    sleep                   10, 20
    cut_chg                 6
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -23740, 0, -13325
    dir_set                 0, 0, 1060, 0
    sce_bgm_control         1, 1, 1, 0, 0
    evt_exec                255, I_GOSUB, main_13
    gosub                   main_16
    evt_next
    work_set                WK_SPLAYER, 0
    unk                     137
    nop
    plc_neck                6, 0, 0, 0, 0, 0
    splc_ret
    work_set                WK_PLAYER, 0
    plc_neck                6, 0, 0, 0, 0, 0
    plc_ret
    cut_auto                1
    nop
    sce_bgmtbl_set          0, 14, 4, 65303, 0
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_13
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -24600, 0, -13600
    dir_set                 0, 0, 1060, 0
    plc_motion              0, 23, 80
    sleep                   10, 20
    sce_bgm_control         0, 2, 0, 0, 0
    evt_end                 0

.proc main_14
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -24240, 0, -25750
    dir_set                 0, 0, 3072, 0
    plc_neck                4, 2, 0, 0, 0, 20
    sleep                   10, 30
    plc_neck                6, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_15
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -24320, 0, -26100
    dir_set                 0, 0, 3072, 0
    plc_dest                0, 5, 33, -24320, -19700
    evt_end                 0

.proc main_16
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -25455, 0, -17410
    dir_set                 0, 0, 3200, 0
    plc_dest                0, 5, 33, -24870, -14670
    do                      0, off_4210
    evt_next
    nop
    edwhile                 off_4210
    ck                      FG_GENERAL_2, 33, 0

off_4210:
    plc_dest                0, 21, 33, 3345, 50
    do                      0, off_4224
    evt_next
    nop
    edwhile                 off_4224
    ck                      FG_GENERAL_2, 33, 0

off_4224:
    cut_chg                 14
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_17
    plc_motion              0, 4, 16
    sleep                   10, 80
    plc_motion              0, 5, 20
    sleep                   10, 60
    plc_motion              0, 6, 0
    sleep                   10, 53
    pos_set                 0, -24749, 0, -14274
    evt_next
    plc_motion              11, 0, 68
    nop
    sleep                   10, 10
    cut_chg                 6
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 64
    nop
    pos_set                 0, -23740, 0, -13325
    dir_set                 0, 0, 1360, 0
    gosub                   main_18
    gosub                   main_19
    gosub                   main_1A
    gosub                   main_1B
    gosub                   main_1C
    evt_end                 0

.proc main_17
    xa_on                   0, 48
    message_on              0, 9, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 16
    nop
    sleep                   10, 80
    plc_motion              0, 25, 20
    sleep                   10, 60
    plc_motion              0, 26, 0
    sleep                   10, 63
    wsleep
    wsleeping
    evt_next
    nop
    evt_end                 0

.proc main_18
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 0
    work_set                WK_SPLAYER, 0
    plc_motion              2, 2, 68
    sleep                   10, 50
    xa_on                   0, 43
    message_on              0, 4, 0, 0, 0
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 128
    plc_cnt                 29
    nop
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 18, 0
    plc_cnt                 9
    sleep                   10, 20
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 0, 0, 200
    work_set                WK_PLAYER, 0
    plc_motion              0, 17, 0
    nop
    sleep                   10, 15
    plc_motion              0, 21, 0
    sleep                   10, 20
    plc_motion              0, 21, 128
    sleep                   10, 20
    plc_motion              0, 17, 0
    sleep                   10, 30
    plc_motion              0, 17, 128
    sleep                   10, 30
    wsleep
    wsleeping
    evt_next
    nop
    evt_end                 0

.proc main_19
    work_set                WK_PLAYER, 0
    plc_motion              0, 19, 0
    nop
    xa_on                   0, 44
    message_on              0, 5, 0, 0, 0
    evt_next
    work_set                WK_SPLAYER, 0
    plc_motion              0, 3, 0
    sleep                   10, 24
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 4
    nop
    sleep                   10, 6
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 512, 0, 20
    sleep                   10, 20
    plc_neck                4, 2, 0, 0, 30, 0
    wsleep
    wsleeping
    evt_next
    nop
    evt_end                 0

.proc main_1A
    xa_on                   0, 45
    message_on              0, 6, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 0
    sleep                   10, 30
    plc_neck                2, 0, 320, 0, 20, 0
    sleep                   10, 16
    plc_neck                2, 0, -320, 0, 20, 0
    sleep                   10, 32
    plc_neck                2, 0, 0, 0, 20, 0
    sleep                   10, 16
    plc_motion              0, 21, 0
    sleep                   10, 20
    plc_motion              0, 17, 0
    sleep                   10, 30
    plc_motion              0, 17, 136
    sleep                   10, 15
    wsleep
    wsleeping
    evt_next
    nop
    evt_end                 0

.proc main_1B
    work_set                WK_PLAYER, 0
    plc_motion              0, 19, 0
    nop
    xa_on                   0, 46
    message_on              0, 7, 0, 0, 0
    evt_next
    work_set                WK_SPLAYER, 0
    plc_neck                2, 0, 0, 300, 0, 15
    sleep                   10, 20
    plc_neck                2, 0, 360, 300, 30, 0
    sleep                   10, 4
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 4
    nop
    sleep                   10, 8
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -360, 300, 30, 0
    sleep                   10, 24
    plc_neck                2, 0, 0, 300, 30, 0
    sleep                   10, 12
    plc_neck                2, 0, 0, -120, 0, 15
    wsleep
    wsleeping
    evt_next
    nop
    evt_end                 0

.proc main_1C
    xa_on                   0, 47
    message_on              0, 8, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_neck                2, 0, 0, 768, 0, 20
    sleep                   10, 30
    plc_neck                4, 2, 0, 0, 50, 0
    plc_motion              0, 17, 0
    sleep                   10, 30
    plc_motion              0, 17, 128
    sleep                   10, 30
    wsleep
    wsleeping
    evt_next
    nop
    evt_end                 0
