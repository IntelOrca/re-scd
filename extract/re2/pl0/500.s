.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22884, -21968, 4300, 1800, 14320, 0, -20070, 3072, 4, 1, 1, 0, 44, 1, 0, 0, UNLOCKED, 0
    set                     FG_GENERAL_1, 103, 1
    evt_end                 0

.main
.proc main
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, -32000, 0, -25100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15610, -23910, 1800, 2200, 0, 0, 0, 0, 255, 255
    save                    V_04, 0
    save                    V_05, 0
    save                    V_06, 0
    save                    V_07, 0
    save                    V_08, 0
    save                    V_09, 0
    save                    V_0A, 0
    save                    V_0B, 0
    if                      0, off_1682
    ck                      FG_3, 192, 0
    sce_em_set              0, 255, ENEMY_ADA_WONG_1, 0, 8, 0, 0, 0, 255, -20650, 0, -23060, 437, 0, 0
    sce_em_set              0, 0, ENEMY_BIRKIN_2, 2, 0, 0, 35, 0, 24, -20000, -5000, -24000, 0, 0, 0
    aot_reset               0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 52, 175, 0, 0, 230, 174
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22884, -21968, 4300, 1800, 1, 0, 0, 0, 255, 255
    evt_exec                255, I_GOSUB, main_02
    else                    0, off_169A

off_1682:
    sce_em_set              0, 255, ENEMY_ADA_WONG_1, 0, 4, 0, 31, 0, 255, -20650, 0, -23060, 437, 0, 0
    nop
    nop

off_169A:
    set                     13, 1, 0
    set                     13, 2, 0
    set                     13, 3, 0
    set                     13, 4, 0
    set                     13, 5, 0
    set                     13, 6, 0
    set                     14, 5, 0
    set                     14, 6, 0
    set                     14, 7, 0
    set                     14, 8, 0
    set                     14, 9, 0
    set                     14, 10, 0
    evt_end                 0

.proc aot
    gosub                   main_11
    evt_end                 0

.proc main_02
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -19720, 0, -22800
    dir_set                 0, 0, 150, 0
    cut_auto                0
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_04
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_03
    cut_chg                 0
    evt_next
    nop
    do                      0, off_170E
    evt_next
    nop
    edwhile                 off_170E
    cmp                     0, V_04, CMP_NE, 2

off_170E:
    sce_bgm_control         0, 1, 0, 0, 0
    gosub                   main_1E
    evt_exec                255, I_GOSUB, main_20
    cut_chg                 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -17000, 0, -22900
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -16080, 0, -24360
    sleep                   10, 20
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 18, 0
    evt_next
    nop
    member_copy             V_TEMP, 23
    nop
    calc                    0, OP_AND, V_TEMP, 240
    member_set2             23, V_TEMP
    nop
    sleep                   10, 7
    sce_bgm_control         1, 1, 0, 0, 0
    save                    V_07, 2
    se_on                   2, 11, 0, -16020, -4500, -23040
    evt_exec                255, I_GOSUB, main_0D
    gosub                   main_0F
    do                      0, off_178C
    evt_next
    nop
    edwhile                 off_178C
    cmp                     0, V_04, CMP_NE, 3

off_178C:
    cut_auto                0
    set                     FG_GENERAL_2, 5, 1
    cut_chg                 1
    work_set                WK_PLAYER, 0
    nop
    nop_8c                  0, 150, 50, 35, 0, 0, 0
    nop_8c                  0, 150, 50, 20, 0, 15, 0
    plc_neck                2, 0, 0, -300, 0, 60
    plc_motion              10, 15, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 34
    member_set2             12, V_TEMP
    nop
    for                     0, off_17DC, 40
    member_copy             V_TEMP, 11
    nop
    calc                    0, OP_SUB, V_TEMP, 15
    member_set2             11, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_17DC:
    plc_ret
    cut_auto                1
    nop
    evt_exec                255, I_GOSUB, main_19
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_next
    nop
    gosub                   main_07
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    plc_motion              2, 2, 4
    evt_next
    cut_auto                0
    if                      0, off_1814
    ck                      FG_GENERAL_2, 4, 1
    ck                      FG_GENERAL_2, 8, 1
    cut_chg                 4
    else                    0, off_1838

off_1814:
    if                      0, off_1822
    ck                      FG_GENERAL_2, 4, 1
    cut_chg                 6
    else                    0, off_1836

off_1822:
    if                      0, off_1830
    ck                      FG_GENERAL_2, 8, 1
    cut_chg                 5
    else                    0, off_1834

off_1830:
    cut_chg                 7
    nop
    nop

off_1834:
    nop
    nop

off_1836:
    nop
    nop

off_1838:
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -20400, 0, -25265
    dir_set                 0, 0, 3600, 0
    work_set                WK_SPLAYER, 0
    nop
    dir_set                 0, 0, 2756, 0
    unk                     130, 6, 0
    work_set                WK_SPLAYER, 0
    plc_motion              2, 2, 68
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -16605, -26092
    do                      0, off_187A
    evt_next
    nop
    edwhile                 off_187A
    ck                      FG_GENERAL_2, 32, 0

off_187A:
    plc_neck                1, -16605, 0, -26092, 50, 50
    set                     FG_GENERAL_2, 2, 1
    plc_neck                2, 0, 0, 0, 50, 50
    sleep                   10, 30
    evt_exec                255, I_GOSUB, main_05
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 50, 0
    set                     FG_GENERAL_2, 9, 1
    evt_next
    nop
    member_copy             V_TEMP, 23
    nop
    calc                    0, OP_AND, V_TEMP, 240
    member_set2             23, V_TEMP
    nop
    sleep                   10, 7
    se_on                   3, 0, 3, 0, 0, 0
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -16020, -4500, -23040, 50, 50
    work_set                WK_ENEMY, 0
    nop
    do                      0, off_18EA
    evt_next
    nop
    edwhile                 off_18EA
    member_cmp              0, 23, 5, 32, 0

off_18EA:
    set                     FG_GENERAL_2, 9, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 480, -320, 240, 160
    sleep                   10, 20
    set                     FG_GENERAL_2, 10, 1
    sce_bgm_control         1, 5, 0, 0, 0
    cut_chg                 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -18600, 0, -23355
    dir_set                 0, 0, 150, 0
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    copy                    V_0B, V_TEMP
    nop
    if                      0, off_193E
    cmp                     0, V_0B, CMP_NE, 0
    plc_motion              2, 9, 192
    endif
    nop

off_193E:
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -17740, 0, -25715
    dir_set                 0, 0, 2756, 0
    plc_motion              2, 9, 64
    plc_cnt                 9
    evt_next
    nop
    if                      0, off_196A
    cmp                     0, V_0B, CMP_NE, 0
    work_set                WK_PLAYER, 0
    plc_stop
    endif
    nop

off_196A:
    sleep                   10, 9
    evt_exec                255, I_GOSUB, main_06
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -240, -320, 20, 0
    sleep                   10, 48
    if                      0, off_1994
    cmp                     0, V_0B, CMP_NE, 0
    plc_motion              2, 9, 144
    endif
    nop

off_1994:
    plc_neck                2, 0, 480, -320, 20, 0
    sleep                   10, 48
    plc_neck                2, 0, -240, -320, 20, 0
    sleep                   10, 48
    plc_neck                2, 0, 480, -320, 20, 0
    sleep                   10, 33
    se_on                   2, 18, 1, 0, 0, 0
    gosub                   main_22
    evt_exec                255, I_GOSUB, main_18
    sleep                   10, 15
    plc_neck                2, 0, 0, -320, 20, 0
    sleep                   10, 24
    plc_neck                2, 0, 240, -320, 40, 0
    sleep                   10, 16
    gosub                   main_1B
    cut_chg                 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -18600, 0, -23355
    dir_set                 0, 0, 150, 0
    plc_neck                6, 0, 0, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -17740, 0, -25715
    dir_set                 0, 0, 2756, 0
    plc_neck                6, 0, 0, 0, 0, 0
    sleep                   10, 15
    gosub                   main_21
    evt_exec                255, I_GOSUB, main_18
    sce_bgmtbl_set          0, 0, 5, 65308, 0
    sce_bgm_control         0, 2, 1, 0, 0
    se_on                   2, 12, 1, 0, 0, 0
    sleep                   10, 30
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 240, 55, 0, 0, 154, 177
    aot_reset               2, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    set                     FG_3, 192, 1
    cut_auto                1
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    plc_ret
    work_set                WK_SPLAYER, 0
    splc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_03
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 32, -17000, -22900
    plc_neck                2, 0, 0, 0, 30, 30
    sleep                   10, 10
    do                      0, off_1AAE
    evt_next
    nop
    edwhile                 off_1AAE
    ck                      FG_GENERAL_2, 32, 0

off_1AAE:
    plc_neck                2, 0, 0, 200, 0, 30
    sleep                   10, 20
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    evt_end                 0

.proc main_04
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -18550, 0, -24100
    dir_set                 0, 0, 0, 0
    plc_dest                0, 4, 33, -16080, -24360
    do                      0, off_1AF4
    evt_next
    nop
    edwhile                 off_1AF4
    ck                      FG_GENERAL_2, 33, 0

off_1AF4:
    plc_neck                2, 0, -240, 0, 30, 0
    sleep                   10, 20
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    do                      0, off_1B1E
    evt_next
    nop
    edwhile                 off_1B1E
    cmp                     0, V_04, CMP_NE, 3

off_1B1E:
    plc_motion              0, 21, 0
    sleep                   10, 12
    dir_set                 0, 0, 3072, 0
    plc_motion              10, 22, 0
    sleep                   10, 20
    se_on                   2, 14, 2, 0, 0, 0
    sleep                   10, 10
    member_copy             V_TEMP, 11
    nop
    calc                    0, OP_ADD, V_TEMP, 4096
    member_set2             11, V_TEMP
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_SUB, V_TEMP, 200
    member_set2             13, V_TEMP
    nop
    dir_set                 0, 0, 2600, 0
    plc_motion              0, 23, 0
    sleep                   10, 79
    plc_motion              0, 25, 0
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_ADD, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    sleep                   10, 40
    plc_motion              2, 2, 4
    plc_neck                2, 0, 0, -512, 0, 30
    sleep                   10, 18
    plc_neck                2, 0, 128, -512, 10, 0
    sleep                   10, 18
    plc_neck                2, 0, -512, -512, 10, 0
    sleep                   10, 40
    plc_neck                5, 3, 0, 0, 0, 0
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_ADD, V_TEMP, 1300
    copy                    V_0A, V_TEMP
    nop
    for                     0, off_1C5A, 4
    plc_neck                6, 0, 0, 0, 0, 0
    gosub                   main_08
    plc_neck                5, 3, 0, 0, 0, 0
    plc_motion              2, 9, 0
    for                     0, off_1C08, 5
    if                      0, off_1C04
    ck                      FG_GENERAL_2, 9, 0
    goto                    255, 0, 0, off_1C4C
    endif
    nop

off_1C04:
    evt_next
    nop
    next                    0

off_1C08:
    plc_motion              2, 13, 4
    for                     0, off_1C26, 30
    if                      0, off_1C22
    ck                      FG_GENERAL_2, 9, 0
    goto                    255, 0, 0, off_1C4C
    endif
    nop

off_1C22:
    evt_next
    nop
    next                    0

off_1C26:
    if                      0, off_1C4C
    ck                      FG_GENERAL_2, 9, 1
    gosub                   main_0A
    sleep                   10, 4
    gosub                   main_0A
    sce_espr_on             0, 0, 197, 8192, -720, 360, 0, 0
    sleep                   10, 34
    endif
    nop

off_1C4C:
    work_set                WK_SPLAYER, 0
    plc_motion              2, 11, 4
    nop
    sleep                   10, 5
    next                    0

off_1C5A:
    evt_end                 0

.proc main_05
    work_set                WK_SPLAYER, 0
    plc_motion              2, 9, 0
    nop
    sleep                   10, 10
    plc_neck                1, -16020, -4500, -23040, 50, 50
    sleep                   10, 30
    plc_motion              2, 13, 4
    sleep                   10, 10
    do                      0, off_1C8A
    evt_next
    nop
    edwhile                 off_1C8A
    ck                      FG_GENERAL_2, 9, 0

off_1C8A:
    gosub                   main_0A
    sleep                   10, 4
    sce_espr_on             0, 0, 197, 8192, -720, 360, 0, 0
    gosub                   main_09
    sleep                   10, 4
    sce_espr_on             0, 0, 198, 8192, -720, -360, 0, 0
    if                      0, off_1CC4
    ck                      FG_GENERAL_2, 4, 1
    cut_chg                 3
    else                    0, off_1CC8

off_1CC4:
    cut_chg                 2
    nop
    nop

off_1CC8:
    gosub                   main_09
    sleep                   10, 4
    sce_espr_on             0, 0, 199, 8192, -720, -360, 0, 0
    work_set                WK_ENEMY, 0
    nop
    sce_parts_down          7, 220, 10, 20, 0, 100, 0, 10, 0, 0, 0, 0, 4, 0, 12
    sce_espr_on             0, 768, 197, 8192, -720, 360, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              2, 9, 128
    nop
    sleep                   10, 10
    sce_espr_on             0, 768, 197, 8192, -720, 360, 0, 0
    sleep                   10, 2
    se_on                   2, 16, 3, 0, 1800, 0
    sleep                   10, 8
    sce_espr_on             0, 768, 197, 8192, -720, 360, 0, 0
    evt_end                 0

.proc main_06
    plc_motion              2, 9, 144
    plc_neck                2, 0, -320, -320, 16, 20
    sleep                   10, 20
    plc_neck                2, 0, 320, -320, 16, 20
    sleep                   10, 4
    plc_motion              2, 2, 4
    sleep                   10, 36
    plc_neck                2, 0, -400, -320, 16, 20
    sleep                   10, 48
    plc_neck                2, 0, 400, -320, 16, 20
    sleep                   10, 48
    plc_neck                2, 0, 240, 0, 16, 20
    sleep                   10, 40
    sleep                   10, 15
    plc_neck                2, 0, -240, 0, 40, 0
    sleep                   10, 8
    sleep                   10, 15
    evt_end                 0

.proc main_07
    for                     0, off_1F02, 4

off_1DB4:
    sleep                   10, 45
    work_set                WK_PLAYER, 0
    nop
    for                     0, off_1E42, 2
    if                      0, off_1DFC
    member_cmp              0, 13, 2, 20, 161
    if                      0, off_1DDE
    member_cmp              0, 11, 4, 225, 166
    save                    V_06, 16
    else                    0, off_1DF8

off_1DDE:
    if                      0, off_1DF0
    member_cmp              0, 11, 4, 135, 184
    save                    V_06, 17
    else                    0, off_1DF6

off_1DF0:
    save                    V_06, 18
    nop
    nop

off_1DF6:
    nop
    nop

off_1DF8:
    else                    0, off_1E2A

off_1DFC:
    if                      0, off_1E0E
    member_cmp              0, 11, 4, 35, 164
    save                    V_06, 19
    else                    0, off_1E28

off_1E0E:
    if                      0, off_1E20
    member_cmp              0, 11, 4, 219, 181
    save                    V_06, 20
    else                    0, off_1E26

off_1E20:
    save                    V_06, 21
    nop
    nop

off_1E26:
    nop
    nop

off_1E28:
    nop
    nop

off_1E2A:
    if                      0, off_1E40
    work_copy               6, 4, 1
    cmp                     0, V_09, CMP_NE, 0
    goto                    255, 0, 0, off_1E4C
    endif
    nop

off_1E40:
    next                    0

off_1E42:
    save                    V_09, 0
    goto                    255, 0, 0, off_1DB4

off_1E4C:
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_AND, V_TEMP, 15
    copy                    V_07, V_TEMP
    nop
    gosub                   main_0C
    work_set                WK_ENEMY, 0
    nop
    member_set2             23, V_06
    nop
    member_copy             V_09, 23
    nop
    member_copy             V_TEMP, 23
    nop
    calc                    0, OP_AND, V_TEMP, 15
    copy                    V_05, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_0B, V_TEMP
    nop
    set                     FG_GENERAL_2, 9, 1
    sleep                   10, 8
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 3
    copy                    V_05, V_TEMP
    nop
    if                      0, off_1ED2
    work_copy               5, 2, 0
    ck                      FG_GENERAL_2, 0, 0
    se_on                   2, 11, 3, 0, 0, 0
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_AND, V_TEMP, 15
    copy                    V_07, V_TEMP
    nop
    evt_exec                255, I_GOSUB, main_0D
    gosub                   main_0F
    work_copy               5, 2, 0
    set                     FG_GENERAL_2, 0, 1
    else                    0, off_1EE0

off_1ED2:
    se_on                   3, 0, 3, 0, 0, 0
    nop
    nop

off_1EE0:
    member_copy             V_TEMP, 23
    nop
    calc                    0, OP_AND, V_TEMP, 240
    member_set2             23, V_TEMP
    nop
    do                      0, off_1EFC
    evt_next
    nop
    edwhile                 off_1EFC
    member_cmp              0, 23, 5, 0, 0

off_1EFC:
    set                     FG_GENERAL_2, 9, 0
    next                    0

off_1F02:
    evt_end                 0

.proc main_08

off_1F04:
    if                      0, off_1F60
    cmp                     0, V_0B, CMP_GE, 1
    switch                  11, off_1F5C
    case                    0, off_1F1E, 1
    save                    V_0B, 2253
    break                   0

off_1F1E:
    case                    0, off_1F2A, 2
    save                    V_0B, 2445
    break                   0

off_1F2A:
    case                    0, off_1F36, 3
    save                    V_0B, 2893
    break                   0

off_1F36:
    case                    0, off_1F42, 4
    save                    V_0B, 2125
    break                   0

off_1F42:
    case                    0, off_1F4E, 5
    save                    V_0B, 2125
    break                   0

off_1F4E:
    case                    0, off_1F5A, 6
    save                    V_0B, 2253
    break                   0

off_1F5A:
    eswitch                 0

off_1F5C:
    else                    0, off_1F6A

off_1F60:
    evt_next
    nop
    goto                    255, 255, 0, off_1F04
    nop
    nop

off_1F6A:
    work_set                WK_SPLAYER, 0
    nop
    work_copy               11, 4, 1
    plc_dest                0, 21, 33, 0, 30
    do                      0, off_1F86
    evt_next
    nop
    edwhile                 off_1F86
    ck                      FG_GENERAL_2, 33, 0

off_1F86:
    save                    V_0B, 0
    evt_end                 0

.proc main_09
    work_set                WK_SPLAYER, 0
    plc_motion              2, 10, 8
    evt_next
    se_on                   2, 13, 2, 0, 0, 0
    sce_espr_on             0, 24, 171, 3584, 138, 615, 8, 0
    sce_espr_on             0, 2563, 171, 3584, 138, 615, 8, 0
    sleep                   10, 3
    sce_espr_on             0, 2051, 171, 2304, 260, 200, 60, 0
    sce_espr_on             0, 2051, 171, 2304, 260, 200, 60, 0
    work_copy               10, 14, 1
    sce_espr_on             0, 2, 171, 1792, 260, 200, 60, 0
    evt_end                 0

.proc main_0A
    work_set                WK_SPLAYER, 0
    plc_motion              2, 12, 8
    evt_next
    se_on                   2, 13, 2, 0, 0, 0
    sce_espr_on             0, 24, 171, 3584, 138, 615, 8, 0
    sce_espr_on             0, 2563, 171, 3584, 138, 615, 8, 0
    sleep                   10, 3
    sce_espr_on             0, 2051, 171, 2304, 260, 200, 60, 0
    sce_espr_on             0, 2051, 171, 2304, 260, 200, 60, 0
    work_copy               10, 14, 1
    sce_espr_on             0, 2, 171, 1792, 260, 200, 60, 0
    evt_end                 0

.proc main_0B
    work_set                WK_SPLAYER, 0
    plc_motion              2, 14, 8
    evt_next
    se_on                   2, 13, 2, 0, 0, 0
    sce_espr_on             0, 24, 171, 3584, 138, 615, 8, 0
    sce_espr_on             0, 2563, 171, 3584, 138, 615, 8, 0
    sleep                   10, 3
    sce_espr_on             0, 2051, 171, 2304, 260, 200, 60, 0
    sce_espr_on             0, 2051, 171, 2304, 260, 200, 60, 0
    work_copy               10, 14, 1
    sce_espr_on             0, 2, 171, 1792, 260, 200, 60, 0
    evt_end                 0

.proc main_0C
    gosub                   main_0E
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 25, 0, 4096, 0, -4500, 0, 0
    sleep                   10, 5
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 300
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_SUB, V_TEMP, 200
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 25, 0, 4096, 0, -4500, 0, 0
    sleep                   10, 10
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 500
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 500
    copy                    V_07, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 25, 0, 4096, 0, -4500, 0, 0
    sleep                   10, 30
    evt_end                 0

.proc main_0D
    gosub                   main_0E
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 540
    copy                    V_07, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -4200, 0, 0
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3076, 0, 16384, 0, -4200, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 900
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, 360
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -4200, 0, 0
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3076, 0, 16384, 0, -4200, 0, 0
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_SUB, V_TEMP, 720
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -4200, 0, 0
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3076, 0, 16384, 0, -4200, 0, 0
    sleep                   10, 1
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 900
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, 360
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 281, 0, 8192, 0, -4200, 0, 0
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -3900, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 900
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, 360
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 281, 0, 8192, 0, -4200, 0, 0
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -3900, 0, 0
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_SUB, V_TEMP, 720
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 281, 0, 8192, 0, -4200, 0, 0
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -3900, 0, 0
    sleep                   10, 2
    for                     0, off_23A8, 3
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 900
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, 360
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -3900, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 900
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, 360
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -3900, 0, 0
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_SUB, V_TEMP, 720
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -3900, 0, 0
    sleep                   10, 2
    next                    0

off_23A8:
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 1440
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, 360
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -4200, 0, 0
    sleep                   10, 3
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 540
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_SUB, V_TEMP, 540
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -4200, 0, 0
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, 1440
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 25, 0, 8192, 0, -4200, 0, 0
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -4200, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 540
    copy                    V_07, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, 540
    copy                    V_08, V_TEMP
    nop
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 25, 0, 8192, 0, -4200, 0, 0
    work_copy               8, 16, 1
    work_copy               7, 8, 1
    sce_espr_on             0, 3843, 0, 16384, 0, -4200, 0, 0
    sleep                   10, 10
    evt_end                 0

.proc main_0E
    switch                  7, off_250A
    case                    0, off_24B8, 0
    save                    V_07, -25056
    save                    V_08, -22878
    break                   0

off_24B8:
    case                    0, off_24C8, 1
    save                    V_07, -20574
    save                    V_08, -23130
    break                   0

off_24C8:
    case                    0, off_24D8, 2
    save                    V_07, -16020
    save                    V_08, -23040
    break                   0

off_24D8:
    case                    0, off_24E8, 3
    save                    V_07, -25020
    save                    V_08, -25344
    break                   0

off_24E8:
    case                    0, off_24F8, 4
    save                    V_07, -22014
    save                    V_08, -25200
    break                   0

off_24F8:
    case                    0, off_2508, 5
    save                    V_07, -15948
    save                    V_08, -25596
    break                   0

off_2508:
    eswitch                 0

off_250A:
    evt_end                 0

.proc main_0F
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  255, 7, 0, 0, 0
    for                     0, off_2524, 2
    sce_shake_on            0, 5
    evt_next
    next                    0

off_2524:
    evt_next
    nop
    for                     0, off_2532, 2
    sce_shake_on            0, 5
    evt_next
    next                    0

off_2532:
    evt_end                 0

.proc main_10
    se_on                   2, 10, 0, -18000, -4500, -23500
    for                     0, off_254C, 5
    sce_shake_on            0, 5
    evt_next
    next                    0

off_254C:
    sleep                   10, 10
    evt_end                 0

.proc main_11
    gosub                   main_12
    gosub                   main_13
    gosub                   main_14
    gosub                   main_15
    gosub                   main_16
    gosub                   main_17
    evt_end                 0

.proc main_12
    if                      0, off_2572
    ck                      FG_GENERAL_2, 3, 1
    set                     14, 2, 0
    set                     14, 10, 1
    endif
    nop

off_2572:
    evt_end                 0

.proc main_13
    if                      0, off_258A
    ck                      FG_GENERAL_2, 4, 1
    set                     14, 4, 0
    set                     14, 5, 1
    set                     14, 7, 1
    endif
    nop

off_258A:
    evt_end                 0

.proc main_14
    if                      0, off_259E
    ck                      FG_GENERAL_2, 5, 1
    set                     13, 5, 1
    set                     13, 6, 1
    endif
    nop

off_259E:
    evt_end                 0

.proc main_15
    if                      0, off_25B2
    ck                      FG_GENERAL_2, 6, 1
    set                     14, 1, 0
    set                     14, 9, 1
    endif
    nop

off_25B2:
    evt_end                 0

.proc main_16
    if                      0, off_25CA
    ck                      FG_GENERAL_2, 7, 1
    set                     14, 3, 0
    set                     14, 6, 1
    set                     14, 8, 1
    endif
    nop

off_25CA:
    evt_end                 0

.proc main_17
    if                      0, off_25E6
    ck                      FG_GENERAL_2, 8, 1
    set                     13, 1, 1
    set                     13, 2, 1
    set                     13, 3, 1
    set                     13, 4, 1
    endif
    nop

off_25E6:
    evt_end                 0

.proc main_18
    sce_shake_on            0, 2
    evt_next
    sce_shake_on            0, 2
    evt_next
    for                     0, off_2608, 4
    sce_shake_on            0, 1
    evt_next
    sce_shake_on            0, 0
    evt_next
    sce_shake_on            0, 255
    evt_next
    sce_shake_on            0, 0
    evt_next
    next                    0

off_2608:
    sce_shake_on            0, 2
    evt_next
    sce_shake_on            0, 0
    evt_next
    evt_end                 0

.proc main_19
    work_set                WK_SPLAYER, 0
    nop
    do                      0, off_264E
    if                      0, off_2636
    cmp                     0, V_CUT, CMP_EQ, 1
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    else                    0, off_2646

off_2636:
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             1, V_TEMP
    nop
    nop
    nop

off_2646:
    evt_next
    nop
    edwhile                 off_264E
    ck                      FG_GENERAL_2, 10, 0

off_264E:
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             1, V_TEMP
    nop
    evt_end                 0

.proc main_1A
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 800, 0, -25100
    evt_exec                255, I_GOSUB, main_1C
    gosub                   main_24
    work_set                WK_OBJECT, 0
    nop
    se_on                   2, 15, 4, 0, 0, 0
    speed_set               0, 100
    for                     0, off_268E, 67
    add_speed
    evt_next
    next                    0

off_268E:
    speed_set               0, 80
    for                     0, off_269C, 10
    add_speed
    evt_next
    next                    0

off_269C:
    speed_set               0, 80
    for                     0, off_26AA, 28
    add_speed
    evt_next
    next                    0

off_26AA:
    sce_fade_set            0, 2, 7, 255, 2
    for                     0, off_26BA, 42
    add_speed
    evt_next
    next                    0

off_26BA:
    evt_end                 0

.proc main_1B
    cut_chg                 8
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -32000, -32000, -31000
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_ADD, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    gosub                   main_1A
    sce_fade_set            0, 2, 7, 255, 241
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_SUB, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_SUB, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    evt_end                 0

.proc main_1C
    save                    V_05, 0
    save                    V_0B, 0
    do                      0, off_2784
    work_set                WK_OBJECT, 0
    nop
    member_copy             V_TEMP, 11
    nop
    calc                    0, OP_SUB, V_TEMP, 16000
    copy                    V_05, V_TEMP
    nop
    light_kido_set          0, 20000
    light_kido_set          1, 18000
    light_pos_set           0, 0, 12, -900
    light_pos_set           0, 0, 13, -23800
    work_copy               5, 4, 1
    light_pos_set           0, 0, 11, 0
    light_pos_set           0, 1, 12, -4500
    light_pos_set           0, 1, 13, -23800
    work_copy               5, 4, 1
    light_pos_set           0, 1, 11, 0
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 2500
    copy                    V_0B, V_TEMP
    nop
    evt_next
    nop
    edwhile                 off_2784
    cmp                     0, V_CUT, CMP_EQ, 8

off_2784:
    evt_end                 0

.proc main_1D
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -2800, 0, -13300
    evt_exec                255, I_GOSUB, main_1F
    gosub                   main_23
    work_set                WK_OBJECT, 0
    nop
    se_on                   2, 17, 4, 0, 0, 0
    speed_set               0, 80
    for                     0, off_27B6, 10
    add_speed
    evt_next
    next                    0

off_27B6:
    speed_set               0, 90
    for                     0, off_27C4, 28
    add_speed
    evt_next
    next                    0

off_27C4:
    speed_set               0, 100
    for                     0, off_27D2, 67
    add_speed
    evt_next
    next                    0

off_27D2:
    sce_fade_set            0, 2, 7, 255, 2
    for                     0, off_27E2, 42
    add_speed
    evt_next
    next                    0

off_27E2:
    evt_end                 0

.proc main_1E
    cut_chg                 9
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -32000, -32000, -31000
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_ADD, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    gosub                   main_1D
    sce_fade_set            0, 2, 7, 255, 241
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_SUB, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    evt_end                 0

.proc main_1F
    save                    V_05, 0
    save                    V_0B, 0
    do                      0, off_289E
    work_set                WK_OBJECT, 0
    nop
    member_copy             V_TEMP, 11
    nop
    calc                    0, OP_SUB, V_TEMP, 16000
    copy                    V_05, V_TEMP
    nop
    light_kido_set          0, 20000
    light_kido_set          1, 18000
    light_pos_set           0, 0, 12, -900
    light_pos_set           0, 0, 13, -12000
    work_copy               5, 4, 1
    light_pos_set           0, 0, 11, 0
    light_pos_set           0, 1, 12, -4500
    light_pos_set           0, 1, 13, -12000
    work_copy               5, 4, 1
    light_pos_set           0, 1, 11, 0
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 2500
    copy                    V_0B, V_TEMP
    nop
    evt_next
    nop
    edwhile                 off_289E
    cmp                     0, V_CUT, CMP_EQ, 9

off_289E:
    save                    V_05, 0
    save                    V_0B, 0
    evt_end                 0

.proc main_20
    while                   4, off_28C6
    ck                      FG_GENERAL_2, 2, 0
    nop_8c                  0, 100, 0, 20, 0, 20, 0
    nop_8c                  0, 100, 0, 10, 0, 40, 0
    sleep                   10, 60
    ewhile                  0

off_28C6:
    evt_end                 0

.proc main_21
    nop_8c                  0, 200, 100, 20, 0, 0, 0
    nop_8c                  0, 250, 0, 10, 0, 12, 0
    evt_end                 0

.proc main_22
    nop_8c                  0, 150, 0, 20, 0, 0, 0
    nop_8c                  0, 150, 0, 10, 0, 12, 0
    evt_end                 0

.proc main_23
    nop_8b                  80, 5, 0, 0, 0
    nop_8c                  0, 50, 60, 30, 0, 0, 0
    nop_8c                  0, 60, 30, 40, 0, 20, 0
    nop_8c                  0, 30, 60, 40, 0, 50, 0
    nop_8c                  0, 60, 40, 30, 0, 80, 0
    nop_8c                  0, 40, 60, 30, 0, 100, 0
    nop_8c                  0, 60, 40, 30, 0, 120, 0
    nop_8c                  0, 60, 0, 27, 0, 140, 0
    evt_end                 0

.proc main_24
    nop_8b                  80, 5, 0, 0, 0
    nop_8c                  0, 50, 60, 30, 0, 0, 0
    nop_8c                  0, 60, 40, 30, 0, 20, 0
    nop_8c                  0, 40, 60, 30, 0, 40, 0
    nop_8c                  0, 60, 30, 30, 0, 60, 0
    nop_8c                  0, 30, 60, 30, 0, 80, 0
    nop_8c                  0, 60, 30, 20, 0, 90, 0
    nop_8c                  0, 30, 60, 20, 0, 100, 0
    nop_8c                  0, 60, 0, 27, 0, 120, 0
    evt_end                 0
