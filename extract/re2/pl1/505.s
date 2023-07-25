.version 2

.init
.proc init
    if                      0, off_0B52
    ck                      FG_GENERAL_1, 99, 0
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, 13248, -1800, -16378, -616, 4, 4, 7, 1, 7, 0, 0, 0, UNLOCKED, 0
    else                    0, off_0C00

off_0B52:
    if                      0, off_0B7E
    ck                      FG_7, 23, 0
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, 13248, -1800, -16378, -616, 4, 9, 5, 1, 7, 0, 0, 0, UNLOCKED, 0
    else                    0, off_0BFE

off_0B7E:
    if                      0, off_0BDA
    cmp                     0, V_LAST_RDT, CMP_NE, 1542
    if                      0, off_0BB4
    ck                      FG_GAME, F_SCENARIO, 0
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, -21329, 0, -23624, 2291, 5, 7, 0, 0, 41, 0, 0, 0, UNLOCKED, 0
    else                    0, off_0BD6

off_0BB4:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, 13248, -1800, -16378, -616, 5, 0, 5, 1, 7, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_0BD6:
    else                    0, off_0BFC

off_0BDA:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, 13050, -1800, -16579, 288, 5, 6, 8, 1, 7, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_0BFC:
    nop
    nop

off_0BFE:
    nop
    nop

off_0C00:
    if                      0, off_0C18
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_0C16
    ck                      FG_GENERAL_1, 130, 1
    set                     FG_GENERAL_1, 154, 1
    endif
    nop

off_0C16:
    endif
    nop

off_0C18:
    evt_end                 0

.main
.proc main
    if                      0, off_0C6E
    ck                      FG_GAME, F_SCENARIO, 0
    gosub                   main_11
    endif
    nop

off_0C6E:
    gosub                   main_13
    gosub                   main_02
    gosub                   main_03
    evt_end                 0

.proc aot
    gosub                   main_04
    gosub                   main_06
    evt_end                 0

.proc main_02
    if                      0, off_0D0E
    ck                      FG_GAME, F_PLAYER, 0
    if                      0, off_0CCC
    ck                      FG_0, F_DIFFICULT, 1
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20054, -26848, 1130, 1410, ITEM_MAGNUMAMMO, 8, 11, 2, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 48, -20920, 0, -26684, 0, -512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0D0A

off_0CCC:
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21220, -27144, 930, 900, ITEM_MAGNUMAMMO, 8, 11, 2, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -20920, 0, -26684, 0, -512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0D0A:
    else                    0, off_0D96

off_0D0E:
    if                      0, off_0D56
    ck                      FG_0, F_DIFFICULT, 1
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20054, -26848, 1130, 1410, ITEM_FLAMEROUNDS, 6, 11, 2, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 48, -20820, 0, -26584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0D94

off_0D56:
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21220, -27144, 930, 900, ITEM_FLAMEROUNDS, 6, 11, 2, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -20820, 0, -26584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0D94:
    nop
    nop

off_0D96:
    evt_end                 0

.proc main_03
    if                      0, off_0DCE
    ck                      FG_GENERAL_1, 99, 1
    if                      0, off_0DB2
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    goto                    255, 255, 0, off_0DCE
    endif
    nop

off_0DB2:
    if                      0, off_0DCC
    ck                      FG_GENERAL_1, 97, 1
    if                      0, off_0DCA
    ck                      FG_GENERAL_1, 109, 1
    sce_bgm_control         0, 2, 1, 0, 0
    endif
    nop

off_0DCA:
    endif
    nop

off_0DCC:
    endif
    nop

off_0DCE:
    evt_end                 0

.proc main_04
    if                      0, off_0DE6
    ck                      FG_GENERAL_1, 99, 1
    if                      0, off_0DE4
    ck                      FG_GENERAL_1, 109, 0
    gosub                   main_05
    endif
    nop

off_0DE4:
    endif
    nop

off_0DE6:
    evt_end                 0

.proc main_05
    if                      0, off_0DFA
    cmp                     0, V_04, CMP_EQ, 200
    goto                    255, 255, 0, off_0E42
    endif
    nop

off_0DFA:
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    if                      0, off_0E1A
    cmp                     0, V_04, CMP_GE, 90
    nop_8b                  120, 4, 0, 0, 0
    endif
    nop

off_0E1A:
    if                      0, off_0E2C
    cmp                     0, V_04, CMP_GE, 94
    nop_8b                  150, 4, 0, 0, 0
    endif
    nop

off_0E2C:
    if                      0, off_0E42
    cmp                     0, V_04, CMP_GE, 98
    save                    V_04, 0
    nop_8b                  80, 4, 0, 0, 0
    endif
    nop

off_0E42:
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_0E72
    ck                      FG_GAME, 3, 1
    if                      0, off_0E6E
    member_cmp              0, 9, 0, 4, 0
    if                      0, off_0E6C
    ck                      FG_GENERAL_2, 2, 0
    work_set                WK_SPLAYER, 0
    splc_sce
    set                     FG_GENERAL_2, 2, 1
    endif
    nop

off_0E6C:
    endif
    nop

off_0E6E:
    else                    0, off_0E92

off_0E72:
    if                      0, off_0E90
    ck                      FG_GENERAL_2, 2, 1
    if                      0, off_0E8E
    member_cmp              0, 9, 5, 4, 0
    work_set                WK_SPLAYER, 0
    splc_ret
    set                     FG_GENERAL_2, 2, 0
    endif
    nop

off_0E8E:
    endif
    nop

off_0E90:
    nop
    nop

off_0E92:
    evt_end                 0

.proc main_07
    cut_chg                 13
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 0, 0, 0
    evt_next
    nop
    se_on                   2, 16, 2, 0, 0, 0
    message_on              0, 2, 0, 255, 239
    evt_next
    nop
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 192, 51, 248, 248, 6, 192
    aot_on                  0
    evt_end                 0

.proc main_08
    sce_espr_on             0, 25, 0, 4096, -10900, -4600, -25000, 0
    sleep                   10, 14
    sce_espr_on             0, 25, 0, 4096, -10500, -4000, -27500, 0
    sleep                   10, 8
    sce_espr_on             0, 25, 0, 4096, -14200, -4600, -26200, 0
    sleep                   10, 10
    sce_espr_on             0, 25, 0, 4096, -10700, -4300, -23300, 0
    evt_end                 0

.proc main_09
    sce_fade_set            2, 2, 7, 255, 127
    sce_fade_adjust         2, 255, 127
    sce_fade_set            2, 2, 7, 0, 252
    evt_end                 0

.proc main_0A
    sce_fade_set            2, 2, 7, 255, 127
    for                     0, off_0F3A, 100
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_0F3A:
    sce_fade_set            2, 2, 7, 0, 252
    evt_end                 0

.proc main_0B
    nop_8b                  160, 10, 0, 0, 0
    se_on                   2, 10, 1, 0, 0, 0
    sce_bgm_control         2, 1, 0, 127, 64
    set                     FG_GAME, 29, 1
    sleep                   10, 30
    nop_8b                  160, 10, 0, 0, 0
    nop_8c                  0, 160, 0, 10, 0, 10, 0
    se_on                   2, 10, 1, 0, 0, 0
    sce_espr3d_on           0, 22, 0, 2304, -11500, -2200, -24410, 0, -1000, 0, 0
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 20
    if                      0, off_0FB2
    ck                      FG_GAME, F_SCENARIO, 0
    se_on                   2, 13, 1, 0, 0, 0
    else                    0, off_0FC0

off_0FB2:
    se_on                   2, 14, 1, 0, 0, 0
    nop
    nop

off_0FC0:
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 20
    set                     FG_GAME, 29, 0
    set                     FG_GENERAL_2, 0, 1
    evt_end                 0

.proc main_0C
    sce_fade_set            2, 2, 7, 255, 127
    sleep                   10, 5
    sce_fade_set            2, 2, 7, 255, 127
    sleep                   10, 2
    sce_fade_set            2, 2, 7, 255, 127
    sleep                   10, 2
    sce_fade_set            2, 2, 7, 255, 127
    for                     0, off_1004, 100
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_1004:
    sce_fade_set            2, 2, 7, 255, 127
    sleep                   10, 5
    sce_fade_set            2, 2, 7, 1, 192
    evt_end                 0

.proc main_0D
    sce_fade_set            2, 2, 7, 255, 127
    sleep                   10, 5
    sce_fade_set            2, 2, 7, 255, 127
    sleep                   10, 2
    sce_fade_set            2, 2, 7, 255, 127
    sleep                   10, 2
    sce_fade_set            2, 2, 7, 255, 127
    for                     0, off_1048, 140
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_1048:
    sce_fade_set            2, 2, 7, 255, 127
    sleep                   10, 5
    sce_fade_set            2, 2, 7, 1, 192
    evt_end                 0

.proc main_0E
    evt_next
    movie_on                6
    evt_next
    evt_end                 0

.proc main_0F
    set                     13, 2, 0
    set                     14, 3, 0
    set                     16, 1, 0
    set                     17, 1, 0
    set                     24, 1, 0
    evt_end                 0

.proc main_10
    set                     13, 2, 1
    set                     14, 3, 1
    set                     16, 1, 1
    set                     17, 1, 1
    set                     24, 1, 1
    evt_end                 0

.proc main_11
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22574, -23709, 850, 1150, ITEM_DOWNKEY, 1, 23, 0, 160
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -22121, -1800, -23239, 3136, -2944, 576, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_12
    evt_end                 0

.proc main_13
    if                      0, off_125E
    ck                      FG_GENERAL_1, 99, 1
    if                      0, off_1178
    ck                      FG_GENERAL_1, 97, 0
    set                     FG_9, 98, 1
    save                    V_04, 200
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 0, 0, 0, 0, 255, -14636, 0, -26045, 2992, 272, 84
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, 255, 0, I_GOSUB, main_07, 0, 0
    aot_reset               0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_GAME, 9, 1
    if                      0, off_115C
    ck                      FG_GAME, F_SCENARIO, 0
    save                    V_04, 60
    aot_set                 1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14846, -27185, 1290, 1490, 0, 0, 0, 0, 255, 255
    evt_exec                255, I_GOSUB, main_14
    else                    0, off_1174

off_115C:
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, 2048
    member_set2             7, V_TEMP
    nop
    evt_exec                255, I_GOSUB, main_16
    nop
    nop

off_1174:
    else                    0, off_125A

off_1178:
    if                      0, off_1200
    ck                      FG_GENERAL_1, 109, 0
    if                      0, off_11FC
    ck                      FG_7, 23, 1
    save                    V_04, 60
    if                      0, off_11CC
    ck                      FG_GAME, F_SCENARIO, 0
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 0, 0, 0, 0, 255, -14636, 0, -26200, 1024, 276, 84
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    gosub                   main_12
    evt_exec                255, I_GOSUB, main_18
    else                    0, off_11FA

off_11CC:
    sce_em_set              0, 255, ENEMY_SHERRY_JACKET, 0, 8, 0, 0, 0, 255, -14636, 0, -26045, 2992, 272, 84
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop
    evt_exec                255, I_GOSUB, main_19
    nop
    nop

off_11FA:
    endif
    nop

off_11FC:
    else                    0, off_1258

off_1200:
    if                      0, off_1252
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_1224
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    if                      0, off_1220
    ck                      FG_GENERAL_1, 120, 0
    evt_exec                255, I_GOSUB, main_1F
    endif
    nop

off_1220:
    else                    0, off_124E

off_1224:
    sce_em_set              0, 255, ENEMY_SHERRY_JACKET, 0, 8, 0, 0, 0, 255, -14636, 0, -26045, 2992, 272, 84
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop
    nop
    nop

off_124E:
    else                    0, off_1256

off_1252:
    gosub                   main_0F
    nop
    nop

off_1256:
    nop
    nop

off_1258:
    nop
    nop

off_125A:
    else                    0, off_126E

off_125E:
    if                      0, off_126A
    ck                      FG_GAME, F_SCENARIO, 0
    gosub                   main_0F
    endif
    nop

off_126A:
    gosub                   main_20
    nop
    nop

off_126E:
    aot_set                 4, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -23666, -27547, 5770, 4400, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_14
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    gosub                   main_0E
    gosub                   main_0F
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12042, 0, -25042
    member_set              15, 32, 7
    sce_bgm_control         0, 0, 1, 76, 63
    sleep                   10, 8
    xa_on                   0, 4
    sleep                   10, 2
    message_on              0, 28, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 19, 16
    nop
    plc_neck                4, 2, 0, 0, 70, 70
    sleep                   10, 15
    plc_neck                3, 1, 0, 0, 70, 70
    sleep                   10, 8
    plc_neck                4, 6, 0, 0, 70, 70
    sleep                   10, 30
    plc_neck                4, 6, 0, 0, 50, 50
    wsleep
    wsleeping
    cut_chg                 3
    evt_exec                255, I_GOSUB, main_1E
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, -14494, -24902
    gosub                   main_22
    plc_dest                0, 9, 32, -14636, -26045
    gosub                   main_22
    plc_motion              1, 6, 0
    plc_neck                5, 2, 0, 0, 40, 40
    sleep                   10, 10
    xa_on                   0, 5
    sleep                   10, 2
    message_on              0, 29, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    plc_neck                4, 1, 0, 0, 50, 50
    sleep                   10, 5
    plc_motion              0, 21, 0
    plc_cnt                 15
    plc_neck                5, 2, 0, 0, 70, 70
    sleep                   10, 16
    plc_motion              0, 15, 0
    wsleep
    wsleeping
    xa_on                   0, 6
    sleep                   10, 2
    message_on              0, 30, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 20
    plc_neck                4, 2, 0, 0, 30, 30
    plc_motion              0, 16, 16
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 0
    save                    V_04, 200
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_0B
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -1024, 0, 50, 50
    sleep                   10, 30
    plc_neck                2, 0, 0, -1024, 50, 50
    sleep                   10, 30
    plc_neck                2, 0, 1024, 0, 50, 50
    sleep                   10, 30
    plc_neck                5, 2, 0, 0, 50, 50
    save                    V_04, 60
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    plc_cnt                 0
    nop
    sleep                   10, 20
    cut_auto                1
    sce_bgmtbl_set          0, 5, 5, 13600, 49152
    set                     FG_GENERAL_1, 97, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_15
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                4, 6, 0, 0, 40, 40
    sleep                   10, 40
    plc_neck                3, 2, 0, 0, 30, 30
    sleep                   10, 15
    plc_neck                4, 4, 0, 0, 30, 30
    sleep                   10, 25
    plc_neck                4, 4, 0, 0, 20, 20
    sleep                   10, 40
    plc_neck                4, 2, 0, 0, 40, 40
    sleep                   10, 20
    plc_neck                4, 6, 0, 0, 20, 20
    sleep                   10, 40
    evt_end                 0

.proc main_16
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    gosub                   main_0E
    sce_bgm_control         0, 0, 1, 76, 63
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12042, 0, -25042
    member_set              15, 32, 7
    sleep                   10, 15
    evt_exec                255, I_GOSUB, main_0B
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 32, -13016, -24496
    plc_neck                2, 0, -1024, 0, 50, 50
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             0, V_TEMP
    nop
    plc_neck                2, 0, 1024, 0, 50, 50
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -1024, 50, 50
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -1024, 0, 50, 50
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 1024, 0, 50, 50
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, -1024, 50, 50
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 50, 50
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 50, 50
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                6, 0, 0, 0, 32, 32
    plc_motion              0, 15, 128
    plc_cnt                 0
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -13154, -25395
    sleep                   10, 15
    save                    V_04, 60
    cut_chg                 10
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13016, -300, -24496
    dir_set                 0, 0, 1208, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -13383, -300, -25562
    dir_set                 0, 0, 3312, 0
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_17
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                4, 1, 0, 0, 40, 40
    plc_motion              0, 24, 16
    sleep                   10, 80
    if                      0, off_15A4
    ck                      FG_GAME, F_SCENARIO, 0
    se_on                   2, 13, 1, 0, 0, 0
    else                    0, off_15B2

off_15A4:
    se_on                   2, 14, 1, 0, 0, 0
    nop
    nop

off_15B2:
    plc_motion              0, 25, 20
    sleep                   10, 60
    plc_motion              0, 26, 0
    sleep                   10, 53
    pos_set                 0, -13217, -300, -25132
    evt_next
    plc_motion              11, 0, 4
    nop
    sleep                   10, 10
    cut_chg                 0
    work_set                WK_PLAYER, 0
    nop
    member_set              12, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    member_set              12, 0, 0
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             0, V_TEMP
    nop
    evt_next
    plc_motion              2, 2, 20
    nop
    plc_neck                5, 1, 0, 0, 32, 32
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 16
    nop
    sleep                   10, 40
    xa_on                   0, 9
    evt_next
    nop
    message_on              0, 33, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    sleep                   10, 40
    plc_motion              0, 17, 0
    sleep                   10, 50
    plc_motion              0, 16, 0
    sleep                   10, 50
    plc_motion              1, 6, 144
    sleep                   10, 20
    plc_neck                6, 0, 0, 0, 32, 32
    sleep                   10, 50
    wsleep
    wsleeping
    cut_auto                1
    sce_bgmtbl_set          0, 5, 5, 9760, 49152
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             0, V_TEMP
    nop
    set                     FG_GENERAL_1, 97, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_17
    xa_on                   0, 8
    evt_next
    nop
    message_on              0, 32, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 26, 16
    sleep                   10, 80
    plc_motion              0, 27, 20
    sleep                   10, 60
    plc_motion              0, 28, 0
    sleep                   10, 63
    wsleep
    wsleeping
    evt_end                 0

.proc main_18
    set                     FG_STATE, 7, 1
    sce_bgm_control         0, 0, 1, 76, 63
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 0, 0, 0
    plc_motion              0, 21, 84
    plc_neck                5, 2, 0, 0, 40, 40
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 0, 0, 0
    evt_next
    nop
    gosub                   main_0A
    save                    V_04, 200
    set                     FG_GAME, 29, 1
    sce_bgm_control         0, 2, 1, 0, 0
    nop_8c                  0, 200, 0, 40, 0, 0, 0
    se_on                   2, 12, 1, 0, 0, 0
    set                     FG_GENERAL_1, 190, 1
    cut_chg                 8
    sleep                   10, 40
    set                     FG_GAME, 29, 0
    sleep                   10, 60
    evt_exec                255, I_GOSUB, main_1A
    evt_end                 0

.proc main_19
    set                     FG_STATE, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              0, 21, 84
    sce_bgm_control         0, 0, 1, 76, 63
    evt_next
    gosub                   main_0A
    save                    V_04, 200
    evt_exec                255, I_GOSUB, main_1D
    evt_end                 0

.proc main_1A
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             0, V_TEMP
    nop
    pos_set                 0, -13645, 0, -25119
    dir_set                 0, 0, 1272, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -14636, 0, -26200
    gosub                   main_0F
    cut_chg                 3
    sleep                   10, 35
    xa_on                   0, 18
    sleep                   10, 2
    message_on              0, 27, 0, 0, 0
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 40, 40
    sleep                   10, 6
    plc_motion              0, 15, 0
    sleep                   10, 30
    wsleep
    wsleeping
    xa_on                   0, 10
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                3, 2, 0, 0, 20, 20
    sleep                   10, 15
    wsleep
    wsleeping
    cut_chg                 4
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -14224, 0, -25269
    member_set              15, 200, 3
    evt_next
    plc_motion              0, 29, 0
    nop
    sleep                   10, 29
    speed_set               2, -160
    add_speed
    evt_next
    plc_motion              0, 30, 0
    sleep                   10, 50
    sce_fade_set            2, 2, 7, 0, 4
    sleep                   10, 32
    for                     0, off_17FA, 10
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_17FA:
    weapon_chg              0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -11
    member_set2             0, V_TEMP
    nop
    for                     0, off_181C, 10
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_181C:
    set                     FG_GENERAL_2, 0, 0
    evt_exec                255, I_GOSUB, main_1B
    evt_exec                255, I_GOSUB, main_1C
    sce_fade_set            2, 2, 7, 0, 240
    sleep                   10, 8
    gosub                   main_21
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -11
    member_set2             0, V_TEMP
    nop
    if                      0, off_1858
    member_cmp              0, 6, 0, 1, 0
    save                    V_20, 5
    else                    0, off_185E

off_1858:
    save                    V_20, 7
    nop
    nop

off_185E:
    aot_on                  0
    cut_auto                1
    set                     FG_GENERAL_1, 109, 1
    set                     FG_9, 105, 1
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_1B
    evt_next
    work_set                WK_PLAYER, 0
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop
    cut_chg                 5
    sce_bgm_control         1, 1, 0, 0, 0
    plc_motion              10, 22, 4
    pos_set                 0, 11394, 0, -10585
    member_set              15, 128, 8
    sleep                   10, 26
    plc_stop
    set                     FG_GENERAL_2, 0, 1
    nop
    plc_neck                2, 0, -256, 0, 40, 40
    sleep                   10, 40
    plc_neck                2, 0, 0, -256, 40, 40
    sleep                   10, 25
    cut_chg                 6
    sleep                   10, 20
    plc_neck                2, 0, 256, 0, 40, 40
    sleep                   10, 40
    plc_neck                6, 0, 256, 0, 40, 40
    sleep                   10, 60
    cut_chg                 5
    set                     FG_GENERAL_2, 0, 0
    plc_motion              10, 22, 4
    sleep                   10, 34
    cut_chg                 6
    pos_set                 0, 36, 0, -11789
    member_set              15, 144, 7
    sleep                   10, 60
    cut_chg                 7
    pos_set                 0, -7284, 0, -13791
    member_set              15, 40, 8
    sleep                   10, 60
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -11
    member_set2             0, V_TEMP
    nop
    set                     FG_GENERAL_2, 1, 1
    sce_bgmtbl_set          0, 5, 5, 255, 0
    evt_end                 0

.proc main_1C
    evt_next
    work_set                WK_SPLAYER, 0
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop

off_1960:
    plc_motion              0, 21, 4

off_1964:
    super_on                0, 64, 0, 41, 1, 156, 255, 39, 0, 0, 0, 0, 0, 0, 0
    evt_next
    nop
    if                      0, off_1988
    ck                      FG_GENERAL_2, 0, 0
    goto                    255, 255, 0, off_1964
    else                    0, off_199E

off_1988:
    plc_stop
    nop
    while                   4, off_1996
    ck                      FG_GENERAL_2, 0, 1
    evt_next
    nop
    ewhile                  0

off_1996:
    goto                    255, 255, 0, off_1960
    nop
    nop

off_199E:
    evt_end                 0

.proc main_1D
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    evt_next
    set                     FG_GAME, 29, 1
    sce_bgm_control         0, 2, 1, 0, 0
    nop
    nop_8c                  0, 200, 0, 50, 0, 0, 0
    se_on                   2, 12, 1, 0, 0, 0
    cut_chg                 9
    sleep                   10, 40
    cut_chg                 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13712, 0, -24632
    dir_set                 0, 0, 1192, 0
    plc_neck                5, 2, 0, 0, 40, 40
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 32, 32
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    set                     FG_GAME, 29, 0
    nop
    se_on                   2, 16, 2, 0, 0, 0
    sce_espr3d_on           0, 6166, 0, 2304, -11600, -2240, -24360, 0, -1000, 0, 0
    sleep                   10, 10
    plc_neck                1, -11600, -2240, -24360, 70, 70
    sleep                   10, 11
    cut_chg                 13
    evt_next
    nop
    message_on              0, 5, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 10
    sce_espr_kill           22, 24, 0, 0
    work_set                WK_PLAYER, 0
    pos_set                 0, -13712, 0, -24632
    dir_set                 0, 0, 1192, 0
    plc_motion              0, 21, 84
    plc_neck                5, 2, 0, 0, 40, 40
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -14636, 0, -26045
    sce_espr3d_on           0, 6166, 0, 2304, -11600, -2240, -24360, 0, -1000, 0, 0
    cut_chg                 3
    sce_bgm_control         1, 1, 0, 0, 0
    sleep                   10, 35
    xa_on                   0, 13
    sleep                   10, 2
    message_on              0, 21, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                3, 1, 0, 0, 40, 40
    sleep                   10, 10
    plc_neck                5, 1, 0, 0, 30, 30
    wsleep
    wsleeping
    xa_on                   0, 14
    sleep                   10, 2
    message_on              0, 22, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 40, 40
    sleep                   10, 2
    plc_motion              0, 17, 0
    sleep                   10, 60
    plc_motion              0, 16, 0
    sleep                   10, 27
    plc_motion              0, 16, 128
    plc_cnt                 0
    sleep                   10, 27
    plc_motion              0, 21, 20
    wsleep
    wsleeping
    xa_on                   0, 12
    sleep                   10, 2
    message_on              0, 23, 0, 0, 0
    plc_motion              0, 17, 0
    plc_neck                2, 0, 256, 256, 20, 20
    sleep                   10, 20
    plc_neck                2, 0, 256, -128, 20, 20
    sleep                   10, 30
    plc_neck                5, 2, 0, 0, 20, 20
    plc_motion              0, 16, 0
    sleep                   10, 37
    plc_motion              0, 16, 128
    plc_cnt                 0
    sleep                   10, 37
    plc_motion              0, 21, 20
    wsleep
    wsleeping
    cut_chg                 4
    evt_next
    nop
    xa_on                   0, 15
    sleep                   10, 2
    message_on              0, 24, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                3, 1, 0, 0, 40, 40
    sleep                   10, 40
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 256, 256, 20, 20
    sleep                   10, 15
    plc_neck                2, 0, 256, -128, 20, 20
    sleep                   10, 15
    wsleep
    wsleeping
    xa_on                   0, 16
    sleep                   10, 2
    message_on              0, 25, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 180, 180, 0, 20
    sleep                   10, 100
    wsleep
    wsleeping
    xa_on                   0, 17
    sleep                   10, 2
    message_on              0, 26, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                4, 2, 0, 0, 60, 60
    sleep                   10, 50
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 256, 256, 20, 20
    sleep                   10, 8
    plc_neck                2, 0, 256, -128, 20, 20
    sleep                   10, 8
    sleep                   10, 50
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 50, 50
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 256, 256, 20, 20
    sleep                   10, 8
    plc_neck                2, 0, 256, -128, 20, 20
    sleep                   10, 8
    wsleep
    wsleeping
    cut_chg                 3
    evt_next
    nop
    xa_on                   0, 18
    sleep                   10, 2
    message_on              0, 27, 0, 0, 0
    sleep                   10, 20
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 144
    nop
    sleep                   10, 40
    cut_chg                 0
    cut_auto                1
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_GENERAL_1, 109, 1
    set                     FG_GENERAL_1, 190, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    evt_end                 0

.proc main_1E
    work_set                WK_SPLAYER, 0
    nop
    member_set              15, 128, 12
    plc_motion              0, 17, 64
    sleep                   10, 49
    plc_motion              0, 18, 20
    evt_end                 0

.proc main_1F
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    evt_next
    work_set                WK_PLAYER, 0
    plc_neck                4, 2, 0, 0, 42, 42
    sleep                   10, 20
    xa_on                   0, 19
    message_on              0, 4, 0, 0, 0
    sleep                   10, 30
    plc_motion              0, 19, 0
    wsleep
    wsleeping
    plc_motion              0, 19, 128
    plc_cnt                 0
    sleep                   10, 30
    plc_ret
    set                     FG_GENERAL_1, 120, 1
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    nop
    evt_end                 0

.proc main_20
    if                      0, off_1D1E
    ck                      FG_GAME, 3, 1
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 4, 0, 32, 0, 255, -12245, 0, -26013, 2400, 0, 0
    if                      0, off_1D1C
    ck                      FG_GAME, F_SCENARIO, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, 2048
    member_set2             7, V_TEMP
    nop
    endif
    nop

off_1D1C:
    endif
    nop

off_1D1E:
    evt_end                 0

.proc main_21
    do                      0, off_1D2C
    evt_next
    nop
    edwhile                 off_1D2C
    ck                      FG_GENERAL_2, 1, 0

off_1D2C:
    set                     FG_GENERAL_2, 1, 0
    evt_end                 0

.proc main_22
    do                      0, off_1D3E
    evt_next
    nop
    edwhile                 off_1D3E
    ck                      FG_GENERAL_2, 32, 0

off_1D3E:
    evt_end                 0
