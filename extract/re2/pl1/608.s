.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10290, 8069, 2300, 1800, -8792, 0, -26442, -992, 5, 6, 7, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22904, -21106, -21090, -23000, -22193, -24040, -24044, -22184, -8893, 0, -12514, 1576, 5, 11, 6, DOR_0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 3296, -23026, 5100, -21180, 6390, -22130, 4136, -24518, 8890, 0, -12464, 512, 5, 12, 6, DOR_0, 37, 0, 0, 0, UNLOCKED, 0
    if                      0, off_27CA
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_27C8
    ck                      FG_COMMON, 130, 1
    set                     FG_COMMON, 154, 1
    endif
    nop

off_27C8:
    endif
    nop

off_27CA:
    if                      0, off_27FC
    ck                      FG_STATUS, F_PLAYER, 1
    if                      0, off_27FA
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_27F8
    ck                      FG_COMMON, 133, 1
    aot_reset               ID_AOT_1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_4, 0, 0, 0, 255, 255
    aot_reset               ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_4, 0, 0, 0, 255, 255
    endif
    nop

off_27F8:
    endif
    nop

off_27FA:
    endif
    nop

off_27FC:
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main
    gosub                   main_02
    gosub                   main_03
    if                      0, off_2844
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_2842
    ck                      FG_COMMON, 92, 1
    gosub                   main_09
    endif
    nop

off_2842:
    endif
    nop

off_2844:
    gosub                   main_12
    evt_end                 0

.proc aot
    gosub                   main_07
    gosub                   main_04
    gosub                   main_13
    evt_end                 0

.proc main_02
    save                    V_05, 255
    sce_em_set              0, ID_EM_0, ENEMY_3F, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -9059, -300, -9005, 1024, 0, 0
    if                      0, off_28B4
    ck                      FG_COMMON, 106, 0
    aot_set                 ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, ID_MSG_0, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_5, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, 10, 0, ITEM_MAINFUSE, 0, aot, 0
    cut_replace             1, 4
    cut_replace             2, 5
    if                      0, off_28B0
    cmp                     0, V_ROOM, CMP_EQ, 8
    cut_replace             3, 6
    nop
    endif
    nop

off_28B0:
    else                    0, off_28CE

off_28B4:
    set                     FG_PBF0A, 5, 0
    aot_set                 ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, ID_MSG_1, 0, 0, 0, 255, 255
    nop
    nop

off_28CE:
    evt_exec                255, I_GOSUB, main_06
    evt_end                 0

.proc main_03
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_04
    if                      0, off_2926
    ck                      FG_COMMON, 106, 0
    if                      0, off_2924
    cmp                     0, V_00, CMP_EQ, 5
    if                      0, off_2922
    cmp                     0, V_USED_ITEM, CMP_EQ, 76
    set                     FG_COMMON, 106, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_2922:
    endif
    nop

off_2924:
    endif
    nop

off_2926:
    evt_end                 0

.proc main_05
    sce_item_lost           ITEM_MAINFUSE
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    copy                    V_04, V_CUT
    nop
    cut_chg                 6
    work_set                WK_PLAYER, 0
    nop
    member_set              M_Y_POS, 15536
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    super_set               0, 130, 129, 0, -700, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    nop_8c                  0, 0, 120, 80, 0, 0, 0
    nop_8a                  0, 40, 0, 10, 0
    sleep                   10, 7
    se_on                   2, 10, 3, 0, 0, 0
    sleep                   10, 3
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_ROUTINE0, 1
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               1, 20
    for                     0, off_299A, 20
    add_speed
    evt_next
    next                    0

off_299A:
    sleep                   10, 15
    nop_8b                  240, 15, 0, 0, 0
    sleep                   10, 15
    nop_8c                  0, 240, 0, 10, 0, 0, 0
    sleep                   10, 10
    sce_fade_set            2, 2, 7, 0, 32
    sleep                   10, 10
    sleep                   10, 4
    for                     0, off_29D0, 10
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_29D0:
    cut_replace             4, 1
    cut_replace             5, 2
    cut_replace             6, 3
    set                     FG_PBF0A, 5, 0
    cut_chg                 3
    nop
    sce_fade_set            2, 2, 7, 0, 252
    sleep                   10, 60
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 3
    copy                    V_04, V_TEMP
    nop
    aot_reset               ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_1, 0, 0, 0, 255, 255
    work_copy               4, 1, 0
    cut_chg                 0
    work_set                WK_PLAYER, 0
    nop
    member_set              M_Y_POS, 0
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_06
    evt_next
    nop
    if                      0, off_2A3C
    ck                      FG_COMMON, 106, 1
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -9059, -600, -9005
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_2A3C:
    evt_end                 0

.proc main_07
    if                      0, off_2A8E
    work_copy               5, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    copy                    V_05, V_CUT
    nop
    switch                  26, off_2A8C
    case                    0, off_2A5A, 1

off_2A5A:
    case                    0, off_2A60, 2

off_2A60:
    case                    0, off_2A66, 3

off_2A66:
    case                    0, off_2A6C, 4

off_2A6C:
    case                    0, off_2A72, 5

off_2A72:
    case                    0, off_2A80, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_2A80:
    default                 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 127, 64
    break                   0
    eswitch                 0

off_2A8C:
    endif
    nop

off_2A8E:
    evt_end                 0

.proc main_08
    if                      0, off_2AC8
    work_copy               5, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    copy                    V_05, V_CUT
    nop
    switch                  26, off_2AC6
    case                    0, off_2AAC, 1

off_2AAC:
    case                    0, off_2ABA, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_2ABA:
    default                 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 127, 64
    break                   0
    eswitch                 0

off_2AC6:
    endif
    nop

off_2AC8:
    evt_end                 0

.proc main_09
    aot_set                 ID_AOT_11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17406, -15422, 1350, 1080, 255, 0, I_GOSUB, main_11, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -16718, 0, -14982, 16256, -4800, 12352, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14950, -15570, 710, 860, ITEM_MASTERKEY, 1, 29, ID_OBJ_2, IF_GLINT_GRAY | IF_FLOOR
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -14568, 0, -14982, 0, -576, -1344, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_2BE6
    ck                      FG_COMMON, 133, 0
    aot_set                 ID_AOT_10, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -12132, -7453, 5800, 1800, 255, 0, I_GOSUB, main_0A, 0, 0
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_JACKET, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -15770, 0, -15778, 221, 272, 0
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    sce_em_set              0, ID_EM_1, ENEMY_ANNETTEBIRKIN_1, 0, AI_01 | AI_08, 0, SBK_0, 0, 255, -14243, 900, -15928, 3691, 271, 20
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    calc                    0, OP_OR, V_TEMP, 4
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    aot_set                 ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14906, -16632, 1750, 1090, ID_MSG_2, 0, 0, 0, 255, 255
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, 0, 0, 0
    else                    0, off_2C60

off_2BE6:
    if                      0, off_2C18
    ck                      FG_ITEM_2, 29, 0
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_JACKET, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -15770, 0, -15778, 221, 272, 0
    work_set                WK_ENEMY, ID_EM_255
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    endif
    nop

off_2C18:
    sce_em_set              0, ID_EM_1, ENEMY_ANNETTEBIRKIN_1, 0, AI_01 | AI_08, 0, SBK_0, 0, 255, -14243, 900, -15928, 3691, 257, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    aot_set                 ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14906, -16632, 1750, 1090, ID_MSG_2, 0, 0, 0, 255, 255
    evt_exec                255, I_GOSUB, main_10
    nop
    nop

off_2C60:
    evt_end                 0

.proc main_0A
    aot_reset               ID_AOT_10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 127, 64
    sce_bgm_control         BGM_CHANNEL_SUB1, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 35, -11373, -9359
    sleep                   10, 5
    plc_neck                2, 0, 1024, 0, 20, 20
    sleep                   10, 40
    cut_chg                 2
    pos_set                 0, -9930, 0, -7329
    dir_set                 0, 0, -3261, 0
    plc_neck                6, 0, 0, 0, 120, 120
    evt_next
    nop
    plc_dest                0, 9, 35, -11373, -9359
    sleep                   10, 5
    plc_neck                2, 0, 1024, 0, 20, 20
    sleep                   10, 80
    work_set                WK_SPLAYER, 0
    cut_chg                 13
    evt_next
    gosub                   main_0B
    gosub                   main_0C
    gosub                   main_0D
    gosub                   main_0E
    gosub                   main_0F
    aot_reset               ID_AOT_11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_11, 0, 0
    aot_reset               ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_2, 0, 0, 0, 255, 255
    cut_chg                 8
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -14568, 0, -14982
    cut_auto                1
    set                     FG_COMMON, 133, 1
    aot_reset               ID_AOT_1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_4, 0, 0, 0, 255, 255
    aot_reset               ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_4, 0, 0, 0, 255, 255
    work_set                WK_PLAYER, 0
    plc_ret
    sce_bgmtbl_set          0, 8, 6, 10001, 32768
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_0B
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                4, 1, 0, 0, 40, 0
    sleep                   10, 10
    plc_neck                4, 1, 0, 0, 30, 0
    xa_on                   0, 23
    sleep                   10, 2
    message_on              0, ID_MSG_5, 0, 0, 0
    sleep                   10, 80
    plc_neck                4, 1, 0, 0, 20, 0
    sleep                   10, 10
    plc_neck                4, 1, 0, 0, 20, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_0C
    xa_on                   0, 25
    sleep                   10, 2
    message_on              0, ID_MSG_6, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 256, 384, 30, 30
    work_set                WK_ENEMY, ID_EM_1
    nop
    plc_neck                2, 0, -512, 0, 30, 30
    plc_motion              0, 16, 16
    sleep                   10, 30
    plc_stop
    plc_motion              0, 16, 144
    plc_cnt                 120
    nop
    sleep                   10, 30
    plc_motion              0, 15, 20
    sleep                   10, 100
    plc_motion              0, 16, 16
    sleep                   10, 40
    plc_stop
    nop
    sleep                   10, 80
    plc_motion              0, 16, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_0D
    cut_chg                 12
    evt_next
    nop
    xa_on                   0, 26
    sleep                   10, 2
    message_on              0, ID_MSG_7, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -512, 0, 30, 0
    sleep                   10, 20
    plc_neck                2, 0, 512, 0, 30, 0
    sleep                   10, 20
    plc_neck                2, 0, -256, 0, 20, 0
    sleep                   10, 20
    plc_neck                2, 0, 256, 0, 20, 0
    wsleep
    wsleeping
    sleep                   10, 30
    evt_end                 0

.proc main_0E
    sleep                   10, 20
    cut_chg                 8
    evt_next
    work_set                WK_PLAYER, 0
    pos_set                 0, -13151, 0, -12539
    dir_set                 0, 0, -2656, 0
    evt_next
    nop
    plc_neck                5, 2, 0, 0, 40, 40
    plc_dest                0, 4, 35, -14862, -14903
    gosub                   main_14
    cut_chg                 12
    evt_next
    plc_motion              0, 15, 0
    nop
    plc_neck                2, 0, 0, -128, 40, 40
    sleep                   10, 30
    xa_on                   0, 27
    sleep                   10, 2
    message_on              0, ID_MSG_8, 0, 0, 0
    plc_motion              0, 16, 0
    sleep                   10, 10
    plc_neck                2, 0, 0, 256, 32, 32
    sleep                   10, 15
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 15
    wsleep
    wsleeping
    evt_end                 0

.proc main_0F
    sleep                   10, 70
    work_set                WK_PLAYER, 0
    nop
    plc_neck                3, 1, 0, 0, 32, 32
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 144
    plc_cnt                 0
    nop
    sleep                   10, 40
    evt_end                 0

.proc main_10
    set                     FG_STATUS, 25, 1
    evt_next
    work_set                WK_ENEMY, ID_EM_1
    plc_motion              0, 16, 192
    plc_cnt                 0
    evt_next
    plc_stop
    set                     FG_STATUS, 25, 0
    evt_end                 0

.proc main_11
    set                     FG_STOP, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 30
    message_on              0, ID_MSG_3, 0, 255, 255
    evt_next
    plc_motion              1, 6, 128
    nop
    sleep                   10, 30
    plc_ret
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_12
    if                      0, off_2F30
    ck                      FG_STATUS, 3, 1
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_JACKET, 0, AI_04, 0, SBK_0, 0, 255, -7908, 0, 7511, -2949, 0, 0
    endif
    nop

off_2F30:
    evt_end                 0

.proc main_13
    if                      0, off_2F5E
    ck                      FG_COMMON, 176, 0
    if                      0, off_2F5C
    ck                      FG_ITEM_2, 29, 1
    set                     FG_COMMON, 176, 1
    work_set                WK_ENEMY, ID_EM_255
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -5
    member_set2             M_POINTER, V_TEMP
    nop
    heal_partner
    splc_ret
    endif
    nop

off_2F5C:
    endif
    nop

off_2F5E:
    evt_end                 0

.proc main_14
    do                      0, off_2F6C
    evt_next
    nop
    edwhile                 off_2F6C
    ck                      FG_ROOM, 35, 0

off_2F6C:
    evt_end                 0
    db                      0x08, 0x00
