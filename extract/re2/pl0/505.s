.version 2

.init
.proc init
    if                      0, off_0B52
    ck                      FG_COMMON, 99, 0
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, 13248, -1800, -16378, -616, 4, 4, 7, 1, 7, 0, 0, 0, UNLOCKED, 0
    else                    0, off_0C00

off_0B52:
    if                      0, off_0B7E
    ck                      FG_ENEMY_2, 23, 0
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, 13248, -1800, -16378, -616, 4, 9, 5, 1, 7, 0, 0, 0, UNLOCKED, 0
    else                    0, off_0BFE

off_0B7E:
    if                      0, off_0BDA
    cmp                     0, V_LAST_RDT, CMP_NE, 1542
    if                      0, off_0BB4
    ck                      FG_STATUS, F_SCENARIO, 0
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, -21329, 0, -23624, 2291, 5, 7, 0, 0, 41, 0, 0, 0, UNLOCKED, 0
    else                    0, off_0BD6

off_0BB4:
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, 13248, -1800, -16378, -616, 5, 0, 5, 1, 7, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_0BD6:
    else                    0, off_0BFC

off_0BDA:
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, 13050, -1800, -16579, 288, 5, 6, 8, 1, 7, 0, 0, 0, UNLOCKED, 0
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
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_0C16
    ck                      FG_COMMON, 130, 1
    set                     FG_COMMON, 154, 1
    endif
    nop

off_0C16:
    endif
    nop

off_0C18:
    evt_end                 0
    db                      0xA8, 0x70

.main
.proc main
    if                      0, off_0C80
    ck                      FG_STATUS, F_SCENARIO, 0
    gosub                   main_11
    endif
    nop

off_0C80:
    gosub                   main_13
    gosub                   main_02
    gosub                   main_03
    evt_end                 0

.proc aot
    gosub                   main_04
    gosub                   main_06
    evt_end                 0

.proc main_02
    if                      0, off_0D20
    ck                      FG_STATUS, F_PLAYER, 0
    if                      0, off_0CDE
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20054, -26848, 1130, 1410, ITEM_MAGNUMAMMO, 8, 11, ID_OBJ_2, IF_FLOOR
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 48, -20920, 0, -26684, 0, -512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0D1C

off_0CDE:
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21220, -27144, 930, 900, ITEM_MAGNUMAMMO, 8, 11, ID_OBJ_2, IF_FLOOR
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -20920, 0, -26684, 0, -512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0D1C:
    else                    0, off_0DA8

off_0D20:
    if                      0, off_0D68
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20054, -26848, 1130, 1410, ITEM_FLAMEROUNDS, 6, 11, ID_OBJ_2, IF_FLOOR
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 48, -20820, 0, -26584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0DA6

off_0D68:
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21220, -27144, 930, 900, ITEM_FLAMEROUNDS, 6, 11, ID_OBJ_2, IF_FLOOR
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -20820, 0, -26584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0DA6:
    nop
    nop

off_0DA8:
    evt_end                 0

.proc main_03
    if                      0, off_0DE0
    ck                      FG_COMMON, 99, 1
    if                      0, off_0DC4
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    goto                    255, 255, 0, off_0DE0
    endif
    nop

off_0DC4:
    if                      0, off_0DDE
    ck                      FG_COMMON, 97, 1
    if                      0, off_0DDC
    ck                      FG_COMMON, 109, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_PROG0_VOL, 0, 0
    endif
    nop

off_0DDC:
    endif
    nop

off_0DDE:
    endif
    nop

off_0DE0:
    evt_end                 0

.proc main_04
    if                      0, off_0DF8
    ck                      FG_COMMON, 99, 1
    if                      0, off_0DF6
    ck                      FG_COMMON, 109, 0
    gosub                   main_05
    endif
    nop

off_0DF6:
    endif
    nop

off_0DF8:
    evt_end                 0

.proc main_05
    if                      0, off_0E0C
    cmp                     0, V_04, CMP_EQ, 200
    goto                    255, 255, 0, off_0E54
    endif
    nop

off_0E0C:
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    if                      0, off_0E2C
    cmp                     0, V_04, CMP_GE, 90
    nop_8b                  120, 4, 0, 0, 0
    endif
    nop

off_0E2C:
    if                      0, off_0E3E
    cmp                     0, V_04, CMP_GE, 94
    nop_8b                  150, 4, 0, 0, 0
    endif
    nop

off_0E3E:
    if                      0, off_0E54
    cmp                     0, V_04, CMP_GE, 98
    save                    V_04, 0
    nop_8b                  80, 4, 0, 0, 0
    endif
    nop

off_0E54:
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_0E84
    ck                      FG_STATUS, 3, 1
    if                      0, off_0E80
    member_cmp              0, 9, 0, 4, 0
    if                      0, off_0E7E
    ck                      FG_ROOM, 2, 0
    work_set                WK_SPLAYER, 0
    splc_sce
    set                     FG_ROOM, 2, 1
    endif
    nop

off_0E7E:
    endif
    nop

off_0E80:
    else                    0, off_0EA4

off_0E84:
    if                      0, off_0EA2
    ck                      FG_ROOM, 2, 1
    if                      0, off_0EA0
    member_cmp              0, 9, 5, 4, 0
    work_set                WK_SPLAYER, 0
    splc_ret
    set                     FG_ROOM, 2, 0
    endif
    nop

off_0EA0:
    endif
    nop

off_0EA2:
    nop
    nop

off_0EA4:
    evt_end                 0

.proc main_07
    cut_chg                 13
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 0, 0, 0
    evt_next
    nop
    se_on                   2, 16, 2, 0, 0, 0
    message_on              0, ID_MSG_2, 0, 255, 239
    evt_next
    nop
    aot_reset               ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 192, 51, 248, 248, 6, 192
    aot_on                  ID_AOT_0
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
    for                     0, off_0F4C, 100
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_0F4C:
    sce_fade_set            2, 2, 7, 0, 252
    evt_end                 0

.proc main_0B
    nop_8b                  160, 10, 0, 0, 0
    se_on                   2, 10, 1, 0, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 127, 64
    set                     FG_STATUS, 29, 1
    sleep                   10, 30
    nop_8b                  160, 10, 0, 0, 0
    nop_8c                  0, 160, 0, 10, 0, 10, 0
    se_on                   2, 10, 1, 0, 0, 0
    sce_espr3d_on           0, 22, 0, 2304, -11500, -2200, -24410, 0, -1000, 0, 0
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 20
    if                      0, off_0FC4
    ck                      FG_STATUS, F_SCENARIO, 0
    se_on                   2, 13, 1, 0, 0, 0
    else                    0, off_0FD2

off_0FC4:
    se_on                   2, 14, 1, 0, 0, 0
    nop
    nop

off_0FD2:
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 20
    set                     FG_STATUS, 29, 0
    set                     FG_ROOM, 0, 1
    evt_end                 0

.proc main_0C
    sce_fade_set            2, 2, 7, 255, 127
    sleep                   10, 5
    sce_fade_set            2, 2, 7, 255, 127
    sleep                   10, 2
    sce_fade_set            2, 2, 7, 255, 127
    sleep                   10, 2
    sce_fade_set            2, 2, 7, 255, 127
    for                     0, off_1016, 100
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_1016:
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
    for                     0, off_105A, 140
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_105A:
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
    set                     FG_PBF00, 2, 0
    set                     FG_PBF01, 3, 0
    set                     FG_PBF03, 1, 0
    set                     FG_PBF04, 1, 0
    set                     FG_PBF0B, 1, 0
    evt_end                 0

.proc main_10
    set                     FG_PBF00, 2, 1
    set                     FG_PBF01, 3, 1
    set                     FG_PBF03, 1, 1
    set                     FG_PBF04, 1, 1
    set                     FG_PBF0B, 1, 1
    evt_end                 0

.proc main_11
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22574, -23709, 850, 1150, ITEM_DOWNKEY, 1, 23, ID_OBJ_0, IF_GLINT_GRAY
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -22121, -1800, -23239, 3136, -2944, 576, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_12
    evt_end                 0

.proc main_13
    if                      0, off_1242
    ck                      FG_COMMON, 99, 1
    if                      0, off_118A
    ck                      FG_COMMON, 97, 0
    set                     FG_MAP, 98, 1
    save                    V_04, 200
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_08, 0, SBK_0, 0, 255, -14636, 0, -26045, 2992, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    sce_em_set              0, ID_EM_0, ENEMY_BIRKIN_2, 3, AI_DEFAULT, 0, SBK_35, 0, 255, -14588, 0, -29210, 3040, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11806, -26045, 1300, 1500, 255, 0, I_GOSUB, main_07, 0, 0
    aot_set                 ID_AOT_1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15756, -25645, 860, 1830, ID_MSG_0, 0, 0, 0, 255, 255
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STATUS, 9, 1
    evt_exec                255, I_GOSUB, main_15
    else                    0, off_123E

off_118A:
    if                      0, off_11EA
    ck                      FG_COMMON, 109, 0
    if                      0, off_11E6
    ck                      FG_ENEMY_2, 23, 1
    save                    V_04, 60
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_2, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -14450, 180, -26395, 0, 275, 84
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    gosub                   main_12
    if                      0, off_11DE
    ck                      FG_STATUS, F_SCENARIO, 0
    evt_exec                255, I_GOSUB, main_1B
    else                    0, off_11E4

off_11DE:
    evt_exec                255, I_GOSUB, main_1C
    nop
    nop

off_11E4:
    endif
    nop

off_11E6:
    else                    0, off_123C

off_11EA:
    if                      0, off_123A
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_120E
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    if                      0, off_120A
    ck                      FG_COMMON, 120, 0
    evt_exec                255, I_GOSUB, main_26
    endif
    nop

off_120A:
    else                    0, off_1238

off_120E:
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_2, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -14450, 180, -26395, 0, 275, 84
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    nop
    nop

off_1238:
    endif
    nop

off_123A:
    nop
    nop

off_123C:
    nop
    nop

off_123E:
    else                    0, off_1248

off_1242:
    gosub                   main_0F
    gosub                   main_28
    nop
    nop

off_1248:
    aot_set                 ID_AOT_4, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -23666, -27547, 5770, 4400, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_14
    work_set                WK_SPLAYER, 0
    plc_motion              0, 22, 72
    plc_cnt                 0
    evt_next
    evt_end                 0

.proc main_15
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    gosub                   main_0E
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13380, 0, -24588
    dir_set                 0, 0, 2232, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -14471, 0, -25295
    dir_set                 0, 0, 2392, 0
    gosub                   main_0F
    gosub                   main_16
    gosub                   main_18
    gosub                   main_1A
    set                     FG_COMMON, 97, 1
    if                      0, off_12BC
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_bgmtbl_set          0, 5, 5, 13600, 49152
    else                    0, off_12C6

off_12BC:
    sce_bgmtbl_set          0, 5, 5, 5408, 49152
    nop
    nop

off_12C6:
    cut_auto                1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_16
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 76, 63
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 127, 64
    nop_8b                  160, 10, 0, 0, 0
    set                     FG_STATUS, 29, 1
    evt_exec                255, I_GOSUB, main_08
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -1024, 0, 50, 50
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 1024, 0, 40, 40
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -1024, 50, 50
    se_on                   2, 10, 1, 0, 0, 0
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 1024, 0, 50, 50
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -1024, 0, 40, 40
    sleep                   10, 10
    cut_chg                 10
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_08
    if                      0, off_136E
    ck                      FG_STATUS, F_SCENARIO, 0
    se_on                   2, 13, 1, 0, 0, 0
    else                    0, off_137C

off_136E:
    se_on                   2, 14, 1, 0, 0, 0
    nop
    nop

off_137C:
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -1024, 50, 50
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -1024, 0, 40, 40
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -1024, 0, 50, 50
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 1024, 0, 50, 50
    sleep                   10, 4
    set                     FG_STATUS, 29, 0
    evt_end                 0

.proc main_17
    sce_espr3d_on           0, 1539, 0, 6144, -14560, -2500, -26600, 0, 0, 0, 0
    sleep                   10, 8
    sce_espr3d_on           0, 1539, 0, 6144, -14960, -2500, -26600, 0, 0, 0, 0
    sleep                   10, 8
    sce_espr3d_on           0, 3075, 0, 6144, -14760, -2500, -26600, 0, 0, 0, 0
    sleep                   10, 8
    sce_espr3d_on           0, 3075, 0, 6144, -14560, -2500, -26600, 0, 0, 0, 0
    evt_end                 0

.proc main_18
    evt_next
    work_set                WK_SPLAYER, 0
    plc_dest                0, 9, 34, -12946, -24469
    sleep                   10, 3
    cut_chg                 11
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 1
    sleep                   10, 10
    nop_8b                  250, 14, 0, 0, 0
    sleep                   10, 3
    gosub                   main_10
    se_on                   2, 11, 1, 0, 0, 0
    set                     FG_STATUS, 29, 1
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 5
    sce_espr3d_on           0, 22, 0, 2304, -11500, -2200, -24410, 0, -1000, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 22, 0
    nop
    se_on                   2, 15, 2, 0, 0, 0
    evt_next
    nop
    se_on                   2, 17, 2, 0, 0, 0
    sce_espr_on             0, 0, 160, 4096, 0, -700, 0, -768
    evt_exec                255, I_GOSUB, main_19
    sleep                   10, 9
    set                     FG_STATUS, 29, 0
    sleep                   10, 20
    plc_stop
    work_set                WK_SPLAYER, 0
    pos_set                 0, -15602, 900, -24787
    dir_set                 0, 0, 648, 0
    plc_neck                2, 0, -1024, 0, 140, 140
    plc_motion              0, 19, 84
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 0
    sleep                   10, 30
    evt_end                 0

.proc main_19
    work_set                WK_SPLAYER, 0
    nop
    for                     0, off_1512, 15
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 50
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1512:
    evt_end                 0

.proc main_1A
    cut_chg                 12
    sleep                   10, 1
    save                    V_04, 60
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 32, 32
    sleep                   10, 7
    plc_dest                0, 5, 33, -14830, -24177
    xa_on                   0, 3
    sleep                   10, 1
    message_on              0, ID_MSG_6, 0, 0, 0
    wsleep
    wsleeping
    evt_next
    nop
    xa_on                   0, 4
    evt_next
    nop
    message_on              0, ID_MSG_7, 0, 0, 0
    plc_motion              0, 16, 8
    sleep                   10, 25
    wsleep
    wsleeping
    sleep                   10, 60
    plc_motion              0, 16, 128
    plc_cnt                 0
    sleep                   10, 25
    plc_neck                6, 0, 0, 0, 40, 40
    cut_chg                 0
    evt_end                 0

.proc main_1B
    set                     FG_STOP, 7, 1
    evt_next
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 76, 63
    work_set                WK_PLAYER, 0
    pos_set                 0, 0, 0, 0
    plc_motion              0, 20, 84
    plc_neck                2, 0, 0, -128, 0, 32
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 0, 0, 0
    plc_neck                2, 0, 1024, 0, 40, 40
    evt_next
    nop
    gosub                   main_0A
    save                    V_04, 200
    set                     FG_STATUS, 29, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_PROG0_VOL, 0, 0
    nop_8c                  0, 200, 0, 40, 0, 0, 0
    se_on                   2, 12, 1, 0, 0, 0
    set                     FG_COMMON, 190, 1
    cut_chg                 8
    sleep                   10, 40
    set                     FG_STATUS, 29, 0
    sleep                   10, 60
    evt_exec                255, I_GOSUB, main_1D
    evt_end                 0

.proc main_1C
    set                     FG_STOP, 7, 1
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 84
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 76, 63
    evt_next
    nop
    gosub                   main_0A
    save                    V_04, 200
    evt_exec                255, I_GOSUB, main_20
    evt_end                 0

.proc main_1D
    set                     FG_STATUS, 27, 1
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    pos_set                 0, -13645, 0, -25119
    dir_set                 0, 0, 1272, 0
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    pos_set                 0, -14450, 180, -26395
    cut_chg                 3
    sleep                   10, 35
    work_set                WK_PLAYER, 0
    nop
    xa_on                   0, 5
    sleep                   10, 2
    message_on              0, ID_MSG_16, 0, 0, 0
    plc_motion              0, 17, 0
    plc_neck                2, 0, 0, -128, 0, 30
    sleep                   10, 20
    plc_motion              0, 17, 128
    sleep                   10, 20
    wsleep
    wsleeping
    xa_on                   0, 6
    sleep                   10, 2
    message_on              0, ID_MSG_17, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 0
    nop
    sleep                   10, 80
    plc_motion              0, 19, 0
    sleep                   10, 20
    wsleep
    wsleeping
    cut_chg                 4
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -14224, 0, -25269
    member_set              M_Y_DIR, 968
    evt_next
    plc_motion              0, 21, 0
    nop
    sleep                   10, 29
    speed_set               2, -166
    add_speed
    evt_next
    plc_motion              0, 22, 0
    sleep                   10, 50
    sce_fade_set            2, 2, 7, 0, 4
    sleep                   10, 32
    for                     0, off_16FA, 10
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_16FA:
    weapon_chg              0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -11
    member_set2             M_POINTER, V_TEMP
    nop
    for                     0, off_171C, 10
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_171C:
    set                     FG_ROOM, 0, 0
    evt_exec                255, I_GOSUB, main_1E
    evt_exec                255, I_GOSUB, main_1F
    sce_fade_set            2, 2, 7, 0, 240
    sleep                   10, 8
    gosub                   main_2A
    aot_on                  ID_AOT_0
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_COMMON, 109, 1
    set                     FG_MAP, 105, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_1E
    evt_next
    work_set                WK_PLAYER, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    cut_chg                 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    plc_motion              10, 15, 4
    pos_set                 0, 11394, 0, -10585
    member_set              M_Y_DIR, 2176
    sleep                   10, 26
    plc_stop
    set                     FG_ROOM, 0, 1
    nop
    plc_neck                2, 0, -256, 0, 30, 30
    sleep                   10, 40
    plc_neck                2, 0, 0, -256, 30, 30
    sleep                   10, 25
    cut_chg                 6
    sleep                   10, 20
    plc_neck                2, 0, 256, 0, 30, 30
    sleep                   10, 40
    plc_neck                6, 0, 0, 0, 30, 30
    sleep                   10, 60
    cut_chg                 5
    set                     FG_ROOM, 0, 0
    plc_motion              10, 15, 4
    sleep                   10, 34
    cut_chg                 6
    pos_set                 0, 36, 0, -11789
    member_set              M_Y_DIR, 1936
    sleep                   10, 60
    cut_chg                 7
    pos_set                 0, -7284, 0, -13791
    member_set              M_Y_DIR, 2088
    sleep                   10, 60
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -11
    member_set2             M_POINTER, V_TEMP
    nop
    set                     FG_ROOM, 1, 1
    sce_bgmtbl_set          0, 5, 5, 255, 0
    evt_end                 0

.proc main_1F
    evt_next
    work_set                WK_SPLAYER, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop

off_1834:
    plc_motion              0, 21, 4

off_1838:
    super_on                0, 64, 0, 41, 1, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0
    evt_next
    nop
    if                      0, off_185C
    ck                      FG_ROOM, 0, 0
    goto                    255, 255, 0, off_1838
    else                    0, off_1872

off_185C:
    plc_stop
    nop
    while                   4, off_186A
    ck                      FG_ROOM, 0, 1
    evt_next
    nop
    ewhile                  0

off_186A:
    goto                    255, 255, 0, off_1834
    nop
    nop

off_1872:
    evt_end                 0

.proc main_20
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    evt_next
    set                     FG_STATUS, 29, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_PROG0_VOL, 0, 0
    nop
    nop_8c                  0, 200, 0, 50, 0, 0, 0
    se_on                   2, 12, 1, 0, 0, 0
    cut_chg                 9
    sleep                   10, 40
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13645, 0, -25119
    dir_set                 0, 0, 1272, 0
    cut_chg                 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 32, 32
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    set                     FG_STATUS, 29, 0
    nop
    se_on                   2, 16, 2, 0, 0, 0
    sce_espr3d_on           0, 6166, 0, 2304, -11600, -2240, -24360, 0, -1000, 0, 0
    sleep                   10, 10
    plc_neck                1, -11600, -2240, -24360, 70, 70
    sleep                   10, 11
    cut_chg                 13
    evt_next
    nop
    message_on              0, ID_MSG_5, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 10
    sce_espr_kill           22, 24, 0, 0
    work_set                WK_SPLAYER, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    pos_set                 0, -14450, 180, -26395
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    pos_set                 0, -13645, 0, -25119
    dir_set                 0, 0, 1272, 0
    plc_motion              0, 20, 84
    sce_espr3d_on           0, 6166, 0, 2304, -11600, -2240, -24360, 0, -1000, 0, 0
    cut_chg                 3
    plc_neck                2, 0, 0, -255, 0, 255
    evt_next
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    nop
    sleep                   10, 40
    xa_on                   0, 17
    evt_next
    work_set                WK_PLAYER, 0
    plc_neck                2, 0, 128, 128, 32, 32
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -400, 256, 15, 20
    sleep                   10, 20
    plc_neck                2, 0, 0, 256, 15, 20
    sleep                   10, 30
    wsleep
    wsleeping
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 128, 255, 15, 15
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 64
    nop
    sleep                   10, 4
    xa_on                   0, 7
    message_on              0, ID_MSG_9, 0, 0, 0
    evt_next
    plc_motion              0, 17, 0
    nop
    plc_neck                2, 0, 0, -128, 0, 30
    sleep                   10, 20
    plc_motion              0, 17, 128
    sleep                   10, 20
    wsleep
    wsleeping
    cut_chg                 4
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_21
    evt_next
    nop
    wsleep
    wsleeping
    cut_chg                 3
    sleep                   10, 20
    xa_on                   0, 9
    message_on              0, ID_MSG_10, 0, 0, 0
    evt_next
    plc_motion              0, 17, 0
    nop
    sleep                   10, 25
    plc_motion              0, 17, 128
    sleep                   10, 30
    plc_motion              0, 18, 0
    sleep                   10, 50
    plc_motion              0, 19, 0
    sleep                   10, 20
    sleep                   10, 15
    plc_motion              0, 19, 128
    sleep                   10, 25
    plc_motion              0, 18, 0
    sleep                   10, 25
    plc_motion              0, 18, 128
    sleep                   10, 25
    wsleep
    wsleeping
    cut_chg                 4
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_22
    sleep                   10, 2
    wsleep
    wsleeping
    cut_chg                 3
    evt_next
    nop
    xa_on                   0, 11
    message_on              0, ID_MSG_15, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 0
    plc_neck                2, 0, 240, 0, 30, 0
    sleep                   10, 8
    plc_neck                2, 0, -240, 0, 30, 0
    sleep                   10, 16
    plc_neck                2, 0, 0, 0, 30, 0
    sleep                   10, 16
    plc_motion              0, 18, 128
    plc_neck                2, 0, -240, 0, 30, 0
    sleep                   10, 25
    wsleep
    wsleeping
    cut_chg                 4
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_23
    evt_next
    nop
    wsleep
    wsleeping
    cut_chg                 3
    evt_next
    nop
    xa_on                   0, 13
    evt_next
    nop
    plc_neck                2, 0, 0, 512, 0, 10
    wsleep
    wsleeping
    cut_chg                 4
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_24
    evt_next
    nop
    sleep                   10, 60
    plc_neck                2, 0, 0, -128, 0, 15
    wsleep
    wsleeping
    cut_chg                 3
    evt_next
    nop
    xa_on                   0, 15
    message_on              0, ID_MSG_14, 0, 0, 0
    plc_motion              0, 18, 0
    sleep                   10, 60
    plc_motion              0, 17, 0
    sleep                   10, 40
    plc_motion              0, 17, 128
    sleep                   10, 20
    wsleep
    wsleeping
    plc_motion              1, 6, 128
    sleep                   10, 25
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -11
    member_set2             M_POINTER, V_TEMP
    nop
    cut_chg                 0
    cut_auto                1
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_COMMON, 190, 1
    set                     FG_COMMON, 109, 1
    sce_bgmtbl_set          0, 5, 5, 255, 0
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_21
    xa_on                   0, 8
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -400, 256, 15, 20
    sleep                   10, 35
    plc_neck                2, 0, 0, 256, 15, 20
    sleep                   10, 60
    plc_neck                2, 0, -512, 256, 20, 10
    sleep                   10, 40
    evt_end                 0

.proc main_22
    xa_on                   0, 10
    message_on              0, ID_MSG_11, 0, 0, 0
    plc_neck                2, 0, 120, 256, 15, 0
    sleep                   10, 30
    plc_neck                2, 0, -350, 256, 15, 0
    sleep                   10, 30
    plc_neck                2, 0, 120, 256, 15, 0
    sleep                   10, 30
    plc_neck                2, 0, -350, 256, 15, 0
    sleep                   10, 30
    plc_neck                2, 0, 512, 256, 20, 0
    evt_end                 0

.proc main_23
    xa_on                   0, 12
    message_on              0, ID_MSG_12, 0, 0, 0
    evt_next
    nop
    sleep                   10, 20
    plc_neck                2, 0, -512, 256, 20, 20
    sleep                   10, 52
    plc_neck                2, 0, -128, 256, 20, 20
    sleep                   10, 20
    plc_neck                2, 0, -512, 256, 20, 20
    sleep                   10, 60
    plc_neck                2, 0, -512, 128, 20, 10
    evt_end                 0

.proc main_24
    xa_on                   0, 14
    message_on              0, ID_MSG_13, 0, 0, 0
    evt_next
    nop
    sleep                   10, 40
    plc_neck                2, 0, -512, 320, 0, 20
    sleep                   10, 80
    plc_neck                2, 0, -512, 64, 0, 10
    evt_end                 0

.proc main_25
    work_set                WK_SPLAYER, 0
    nop
    member_set              M_Y_DIR, 3336
    plc_motion              0, 18, 20
    evt_end                 0

.proc main_26
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    evt_next
    work_set                WK_PLAYER, 0
    plc_neck                4, 2, 0, 0, 42, 42
    sleep                   10, 20
    xa_on                   0, 16
    message_on              0, ID_MSG_3, 0, 0, 0
    sleep                   10, 30
    plc_motion              0, 23, 0
    wsleep
    wsleeping
    plc_motion              0, 23, 128
    plc_cnt                 0
    sleep                   10, 30
    plc_ret
    set                     FG_COMMON, 120, 1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    nop
    evt_end                 0

.proc main_27
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_5, 0, 255, -8352, 0, -20929, 3248, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_5, 0, 255, -15359, 0, -17534, 1600, 0, 0
    evt_end                 0

.proc main_28
    if                      0, off_1D08
    ck                      FG_STATUS, 3, 1
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04 | AI_08, 0, SBK_31, 0, 255, -12245, 0, -26013, 2400, 0, 0
    endif
    nop

off_1D08:
    evt_end                 0

.proc main_29
    do                      0, off_1D16
    evt_next
    nop
    edwhile                 off_1D16
    ck                      FG_ROOM, 0, 0

off_1D16:
    set                     FG_ROOM, 0, 0
    evt_end                 0

.proc main_2A
    do                      0, off_1D28
    evt_next
    nop
    edwhile                 off_1D28
    ck                      FG_ROOM, 1, 0

off_1D28:
    set                     FG_ROOM, 1, 0
    evt_end                 0

.proc main_2B
    do                      0, off_1D3A
    evt_next
    nop
    edwhile                 off_1D3A
    ck                      FG_ROOM, 33, 0

off_1D3A:
    evt_end                 0
