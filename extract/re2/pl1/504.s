.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16642, -22441, 2800, 1900, -23882, 0, -19839, 904, 4, 3, 0, 0, 7, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 11238, -17701, 1800, 2200, -12007, 0, -25230, 2040, 4, 5, 0, 0, 7, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_1CC4
    ck                      FG_STATUS, 3, 1
    if                      0, off_1C8A
    ck                      FG_STATUS, F_PLAYER, 0
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04, 0, SBK_31, 0, 255, -16057, 0, -20217, 3488, 0, 0
    else                    0, off_1CA2

off_1C8A:
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 0, SBK_32, 0, 255, -16057, 0, -20217, 3488, 0, 0
    nop
    nop

off_1CA2:
    if                      0, off_1CC2
    cmp                     0, V_LAST_RDT, CMP_EQ, 1285
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 13328, -1800, -17811
    member_set              M_Y_DIR, 3656
    member_set              M_FLOOR, 1
    endif
    nop

off_1CC2:
    endif
    nop

off_1CC4:
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 9619, -13082, 1800, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 ID_AOT_5, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, 9619, -13082, 1800, 1800, 10, 0, ITEM_DOWNKEY, 0, aot, 0
    if                      0, off_1D34
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25512, -14890, 1800, 1800, ITEM_HANDGUNAMMO, 15, 68, ID_OBJ_0, IF_DEFAULT
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -24612, -1620, -13990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1D4C

off_1D34:
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25512, -18360, 1800, 2320, ITEM_HANDGUNAMMO, 15, 68, ID_OBJ_255, IF_FLOOR
    nop
    nop

off_1D4C:
    if                      0, off_1D90
    ck                      FG_ITEM_2, 25, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -11599, -2000, -21188, 0, 1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12249, -22188, 2000, 2000, 255, 0, I_GOSUB, main_0D, 0, 0
    endif
    nop

off_1D90:
    if                      0, off_1D9E
    ck                      FG_STATUS, F_SCENARIO, 1
    set                     FG_COMMON, 101, 1
    endif
    nop

off_1D9E:
    if                      0, off_1DAC
    ck                      FG_COMMON, 101, 1
    evt_exec                255, I_GOSUB, main_06
    endif
    nop

off_1DAC:
    gosub                   main_02
    evt_end                 0

.proc aot
    if                      0, off_1DC4
    ck                      FG_COMMON, 101, 0
    cmp                     0, V_USED_ITEM, CMP_EQ, 93
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_1DC4:
    if                      0, off_1DD0
    ck                      FG_STATUS, 11, 1
    gosub                   main_02
    endif
    nop

off_1DD0:
    evt_end                 0

.proc main_02
    switch                  26, off_1E64
    case                    0, off_1DE4, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 61, 64
    break                   0

off_1DE4:
    case                    0, off_1DF2, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 71, 64
    break                   0

off_1DF2:
    case                    0, off_1E00, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 64
    break                   0

off_1E00:
    case                    0, off_1E0E, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 64
    break                   0

off_1E0E:
    case                    0, off_1E1C, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 64
    break                   0

off_1E1C:
    case                    0, off_1E2A, 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 64
    break                   0

off_1E2A:
    case                    0, off_1E38, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 64
    break                   0

off_1E38:
    case                    0, off_1E46, 7
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 64
    break                   0

off_1E46:
    case                    0, off_1E54, 8
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 64
    break                   0

off_1E54:
    case                    0, off_1E62, 9
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 51, 64
    break                   0

off_1E62:
    eswitch                 0

off_1E64:
    evt_end                 0

.proc main_03
    set                     FG_STOP, 7, 1
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_1E88
    ck                      FG_COMMON, 101, 0
    message_on              0, ID_MSG_1, 0, 255, 255
    evt_next
    nop
    else                    0, off_1E8C

off_1E88:
    gosub                   main_04
    nop
    nop

off_1E8C:
    aot_reset               ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_04
    if                      0, off_1EAA
    cmp                     0, V_CUT, CMP_NE, 8
    cut_chg                 8
    endif
    nop

off_1EAA:
    message_on              0, ID_MSG_2, 0, 255, 255
    evt_next
    nop
    if                      0, off_1F2A
    ck                      FG_MESSAGE, F_QUESTION, 0
    if                      0, off_1EDE
    ck                      FG_STATUS, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 11687, 0, -9414
    member_set              M_FLOOR, 0
    splc_ret
    set                     FG_STOP, 1, 1
    set                     FG_STOP, 2, 1
    nop
    endif
    nop

off_1EDE:
    se_on                   2, 267, 0, 10098, -1870, -11952
    set                     FG_COMMON, 99, 1
    gosub                   main_07
    evt_next
    nop
    se_on                   2, 268, 0, 10098, -1870, -11952
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 10090, 0, -10932
    if                      0, off_1F20
    ck                      FG_STATUS, 3, 1
    set                     FG_STOP, 1, 0
    set                     FG_STOP, 2, 0
    evt_exec                255, I_GOSUB, main_09
    endif
    nop

off_1F20:
    evt_exec                255, I_GOSUB, main_08
    evt_exec                255, I_GOSUB, main_0A
    endif
    nop

off_1F2A:
    cut_chg                 4
    cut_auto                1
    evt_end                 0

.proc main_05
    set                     FG_STOP, 7, 1
    set                     FG_COMMON, 101, 1
    sce_item_lost           ITEM_DOWNKEY
    cut_chg                 8
    se_on                   2, 266, 0, 10098, -1870, -11952
    gosub                   main_06
    gosub                   main_04
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_06
    sleep                   10, 10
    sce_espr3d_on2          1, 22, 4, 0, 0, 0, 2, 114, 39, 178, 248, 80, 209, 0, 2, 0, 0, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr3d_on2          2, 22, 4, 0, 0, 0, 2, 114, 39, 230, 248, 152, 209, 0, 2, 0, 0, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr3d_on2          3, 22, 4, 0, 0, 0, 2, 114, 39, 58, 249, 206, 209, 0, 2, 0, 0, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr3d_on2          4, 22, 4, 0, 0, 0, 2, 114, 39, 120, 249, 4, 210, 0, 2, 0, 0, 0, 0, 0, 0
    sleep                   10, 10
    evt_end                 0

.proc main_07
    sleep                   10, 10
    sce_espr_kill2          1
    sce_espr3d_on           0, 5142, 0, 512, 10152, -1880, -11942, 512, 0, 0, 0
    sleep                   10, 10
    sce_espr_kill2          2
    sce_espr3d_on           0, 5142, 0, 512, 10152, -1818, -11880, 512, 0, 0, 0
    sleep                   10, 10
    sce_espr_kill2          3
    sce_espr3d_on           0, 5142, 0, 512, 10152, -1744, -11816, 512, 0, 0, 0
    sleep                   10, 10
    sce_espr_kill2          4
    sce_espr3d_on           0, 5142, 0, 512, 10152, -1682, -11752, 512, 0, 0, 0
    sleep                   10, 30
    sce_espr3d_on           0, 3094, 0, 1024, 10188, -1548, -11626, 512, 0, 0, 0
    sleep                   10, 10
    evt_end                 0

.proc main_08
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    cut_auto                0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, 13276, -12228
    gosub                   main_0E
    cut_chg                 7
    plc_dest                0, 5, 32, 13138, -16812
    gosub                   main_0E
    plc_dest                0, 9, 32, 9368, -16882
    gosub                   main_0E
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    aot_on                  ID_AOT_1
    set                     FG_STATUS, 3, 1
    evt_end                 0

.proc main_09
    set                     FG_STATUS, 3, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 4, 33, 13605, -11196
    gosub                   main_0F
    plc_dest                0, 4, 33, 13138, -16812
    gosub                   main_0F
    plc_dest                0, 9, 33, 9368, -16882
    gosub                   main_0F
    evt_end                 0

.proc main_0A
    sleep                   10, 150
    aot_on                  ID_AOT_1
    set                     FG_STATUS, 3, 1
    evt_end                 0

.proc main_0B
    save                    V_04, -4096
    set                     FG_ROOM, 31, 0
    set                     FG_ROOM, 32, 0
    for                     0, off_2124, 8192
    work_set                WK_PLAYER, 0
    plc_ret
    pos_set                 0, 10090, 0, -10932
    member_set              M_FLOOR, 0
    member_set2             M_Y_DIR, V_04
    nop
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_0C
    cut_chg                 4
    cut_auto                1
    while                   4, off_210C
    ck                      FG_ROOM, 31, 0
    evt_next
    nop
    ewhile                  0

off_210C:
    set                     FG_ROOM, 31, 0
    set                     FG_ROOM, 32, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    next                    0

off_2124:
    evt_end                 0

.proc main_0C
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    cut_auto                0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, 13276, -12228
    gosub                   main_0E
    cut_chg                 7
    plc_dest                0, 5, 32, 13138, -16812
    gosub                   main_0E
    plc_dest                0, 9, 32, 9368, -16882
    gosub                   main_0E
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    set                     FG_ROOM, 31, 1
    evt_end                 0

.proc main_0D
    message_on              0, ID_MSG_3, 0, 255, 255
    evt_next
    nop
    if                      0, off_219E
    ck                      FG_MESSAGE, F_QUESTION, 0
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -32000
    set                     FG_MAP_I, 9, 1
    set                     FG_MAP_I, 10, 1
    set                     FG_MAP_I, 11, 1
    set                     FG_ITEM_2, 25, 1
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_4, 0, 255, 255
    endif
    nop

off_219E:
    evt_end                 0

.proc main_0E
    do                      0, off_21AC
    evt_next
    nop
    edwhile                 off_21AC
    ck                      FG_ROOM, 32, 0

off_21AC:
    evt_end                 0

.proc main_0F
    do                      0, off_21BA
    evt_next
    nop
    edwhile                 off_21BA
    ck                      FG_ROOM, 33, 0

off_21BA:
    evt_end                 0
