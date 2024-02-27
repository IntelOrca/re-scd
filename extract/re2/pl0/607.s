.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21070, -24800, 1800, 1800, -11470, 0, -13410, 0, 5, 6, 5, 0, 41, 1, 0, 0, UNLOCKED, 0
    if                      0, off_0B80
    ck                      FG_STATUS, F_PLAYER, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, -21274, 0, -23553, 2064, 5, 1, 0, 0, 39, 0, 0, 0, UNLOCKED, 0
    endif
    nop

off_0B80:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -21700, -1350, -26550, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_2, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22870, -26810, 2400, 1800, 0, 0, 1, 0, 0, 0
    aot_set                 ID_AOT_9, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24525, -25300, 1800, 1700, 10, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main
    if                      0, off_0CBC
    ck                      FG_STATUS, F_SCENARIO, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -23450, -1260, -25450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -19100, -2300, -16540, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24525, -25300, 1800, 1700, ITEM_INKRIBBON, 3, 27, ID_OBJ_3, IF_DEFAULT
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19760, -17470, 2000, 2000, ITEM_HERBG, 1, 52, ID_OBJ_2, IF_DEFAULT
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -32000, -32000, 1, 1, ITEM_SHOTGUNAMMO, 7, 53, ID_OBJ_255, IF_DEFAULT
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -25500, -1260, -21450, 0, -576, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26535, -21610, 1800, 1800, ITEM_MAGNUMAMMO, 8, 54, ID_OBJ_4, IF_GLINT_BLUE
    endif
    nop

off_0CBC:
    aot_set                 ID_AOT_8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26535, -23310, 1800, 8000, ID_MSG_18, 0, 0, 0, 255, 255
    if                      0, off_0D28
    ck                      FG_COMMON, 154, 0
    if                      0, off_0CFA
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_2, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -19000, 180, -19600, 3000, 258, 84
    else                    0, off_0D12

off_0CFA:
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_JACKET, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -19000, 180, -20000, 0, 256, 84
    nop
    nop

off_0D12:
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    else                    0, off_0D4C

off_0D28:
    if                      0, off_0D4A
    ck                      FG_STATUS, F_SCENARIO, 0
    ck                      FG_COMMON, 133, 0
    aot_set                 ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20470, -21450, 1800, 3600, ID_MSG_19, 0, 0, 0, 255, 255
    endif
    nop

off_0D4A:
    nop
    nop

off_0D4C:
    if                      0, off_0D6A
    ck                      FG_ITEM_2, 53, 0
    aot_set                 ID_AOT_10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24620, -16365, 2200, 1800, 255, 0, I_GOSUB, main_0B, 0, 0
    endif
    nop

off_0D6A:
    if                      0, off_0D90
    ck                      FG_COMMON, 130, 0
    if                      0, off_0D88
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    evt_exec                255, I_GOSUB, main_02
    else                    0, off_0D8E

off_0D88:
    evt_exec                255, I_GOSUB, main_08
    nop
    nop

off_0D8E:
    endif
    nop

off_0D90:
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    evt_next
    nop
    sce_fade_set            1, 2, 7, 0, 248
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_COMMON, 130, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -20779, 0, -19906
    dir_set                 0, 0, 256, 0
    cut_auto                0
    cut_chg                 4
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 64
    nop
    plc_neck                2, 0, 0, -255, 0, 255
    evt_next
    work_set                WK_SPLAYER, 0
    plc_neck                2, 0, 128, 255, 128, 255
    evt_next
    work_set                WK_PLAYER, 0
    plc_neck                2, 0, -128, -255, 8, 0
    sleep                   10, 32
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -255, 20, 0
    sleep                   10, 16
    cut_chg                 8
    evt_next
    nop
    xa_on                   0, 41
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 255, 8, 0
    sleep                   10, 32
    plc_neck                2, 0, 128, 255, 8, 0
    sleep                   10, 32
    sleep                   10, 10
    wsleep
    wsleeping
    evt_next
    cut_chg                 1
    evt_next
    xa_on                   0, 29
    message_on              0, ID_MSG_0, 0, 0, 0
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 25, 0
    plc_neck                2, 0, 0, -128, 0, 30
    sleep                   10, 20
    plc_motion              0, 25, 128
    sleep                   10, 20
    wsleep
    wsleeping
    cut_chg                 8
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_03
    evt_next
    nop
    wsleep
    wsleeping
    cut_chg                 4
    sleep                   10, 20
    xa_on                   0, 31
    message_on              0, ID_MSG_1, 0, 0, 0
    evt_next
    plc_motion              0, 25, 0
    nop
    sleep                   10, 25
    plc_motion              0, 25, 128
    sleep                   10, 30
    plc_motion              0, 26, 0
    sleep                   10, 50
    plc_motion              0, 27, 0
    sleep                   10, 20
    sleep                   10, 15
    plc_motion              0, 27, 128
    sleep                   10, 25
    plc_motion              0, 26, 0
    sleep                   10, 25
    plc_motion              0, 26, 128
    sleep                   10, 25
    wsleep
    wsleeping
    cut_chg                 8
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_04
    sleep                   10, 2
    wsleep
    wsleeping
    cut_chg                 6
    work_set                WK_SPLAYER, 0
    evt_next
    xa_on                   0, 33
    message_on              0, ID_MSG_3, 0, 0, 0
    evt_exec                255, I_GOSUB, main_07
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 26, 0
    plc_neck                2, 0, 240, 0, 30, 0
    sleep                   10, 8
    plc_neck                2, 0, -240, 0, 30, 0
    sleep                   10, 16
    plc_neck                2, 0, 0, 0, 30, 0
    sleep                   10, 16
    plc_motion              0, 26, 128
    plc_neck                2, 0, -240, 0, 30, 0
    sleep                   10, 25
    wsleep
    wsleeping
    cut_chg                 8
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_05
    evt_next
    nop
    wsleep
    wsleeping
    cut_chg                 4
    evt_next
    nop
    xa_on                   0, 35
    evt_next
    nop
    plc_neck                2, 0, 0, 512, 0, 20
    wsleep
    wsleeping
    cut_chg                 8
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_06
    evt_next
    nop
    sleep                   10, 60
    plc_neck                2, 0, 0, -128, 0, 15
    wsleep
    wsleeping
    cut_chg                 4
    evt_next
    nop
    xa_on                   0, 37
    message_on              0, ID_MSG_6, 0, 0, 0
    plc_motion              0, 26, 0
    sleep                   10, 60
    plc_motion              0, 25, 0
    sleep                   10, 40
    plc_motion              0, 25, 128
    sleep                   10, 20
    wsleep
    wsleeping
    plc_motion              1, 6, 128
    sleep                   10, 25
    cut_chg                 1
    cut_auto                1
    plc_ret
    evt_next
    sce_bgmtbl_set          0, 7, 6, 65292, 0
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_03
    xa_on                   0, 30
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -400, 256, 15, 20
    sleep                   10, 35
    plc_neck                2, 0, 0, 256, 15, 20
    sleep                   10, 60
    plc_neck                2, 0, -512, 256, 20, 10
    sleep                   10, 40
    evt_end                 0

.proc main_04
    xa_on                   0, 32
    message_on              0, ID_MSG_2, 0, 0, 0
    plc_neck                2, 0, 120, 256, 15, 0
    sleep                   10, 30
    plc_neck                2, 0, -350, 256, 15, 0
    sleep                   10, 30
    plc_neck                2, 0, 120, 256, 15, 0
    sleep                   10, 30
    plc_neck                2, 0, -350, 256, 15, 0
    sleep                   10, 30
    plc_neck                2, 0, 512, 320, 20, 10
    evt_end                 0

.proc main_05
    xa_on                   0, 34
    message_on              0, ID_MSG_4, 0, 0, 0
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

.proc main_06
    xa_on                   0, 36
    message_on              0, ID_MSG_5, 0, 0, 0
    evt_next
    nop
    sleep                   10, 40
    plc_neck                2, 0, 0, 128, 20, 20
    sleep                   10, 80
    plc_neck                2, 0, -512, 64, 30, 10
    evt_end                 0

.proc main_07
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 320, 16, 0
    sleep                   10, 32
    sleep                   10, 20
    plc_neck                2, 0, -128, 320, 16, 0
    sleep                   10, 28
    evt_end                 0

.proc main_08
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    set                     FG_COMMON, 130, 1
    set                     FG_SCENARIO, 193, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -21305, 0, -23400
    dir_set                 0, 0, 2048, 0
    cut_auto                0
    plc_neck                2, 0, 512, 0, 50, 0
    sleep                   10, 20
    plc_dest                0, 5, 32, -21003, -20249
    sleep                   10, 10
    plc_neck                6, 0, 0, 0, 0, 0
    do                      0, off_1116
    evt_next
    nop
    edwhile                 off_1116
    ck                      FG_ROOM, 32, 0

off_1116:
    cut_chg                 4
    work_set                WK_PLAYER, 0
    nop
    dir_set                 0, 0, 4012, 0
    sleep                   10, 5
    plc_neck                5, 2, 0, 0, 30, 30
    plc_motion              0, 15, 0
    xa_on                   0, 39
    message_on              0, ID_MSG_7, 0, 0, 0
    sleep                   10, 20
    plc_motion              0, 15, 128
    sleep                   10, 20
    plc_motion              0, 21, 0
    sleep                   10, 30
    plc_motion              0, 19, 0
    sleep                   10, 30
    plc_motion              0, 19, 128
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 3
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 200
    member_set2             M_X_POS, V_TEMP
    nop
    evt_next
    plc_motion              0, 17, 0
    nop
    xa_on                   0, 40
    message_on              0, ID_MSG_8, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -512, 256, 30, 30
    sleep                   10, 24
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 4
    nop
    wsleep
    wsleeping
    plc_motion              1, 6, 16
    sleep                   10, 5
    sce_fade_set            1, 2, 7, 255, 3
    sleep                   10, 20
    sce_fade_adjust         1, 255, 127
    weapon_chg              0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -21070, 0, -24542
    sce_fade_set            1, 2, 7, 255, 243
    evt_exec                255, I_GOSUB, main_09
    evt_exec                255, I_GOSUB, main_0A
    sleep                   10, 20
    evt_end                 0

.proc main_09
    cut_chg                 12
    sca_id_set              0, 0, 0
    sca_id_set              1, 0, 0
    sca_id_set              2, 0, 0
    sca_id_set              3, 0, 0
    sca_id_set              4, 0, 0
    sca_id_set              5, 0, 0
    sca_id_set              6, 0, 0
    sca_id_set              7, 0, 0
    sca_id_set              8, 0, 0
    sca_id_set              9, 0, 0
    sca_id_set              10, 0, 0
    sca_id_set              11, 0, 0
    sca_id_set              12, 0, 0
    sca_id_set              13, 0, 0
    sca_id_set              14, 0, 0
    sca_id_set              15, 0, 0
    sca_id_set              16, 0, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -11013, 0, -13524
    member_set              M_Y_DIR, 1248
    plc_motion              10, 28, 4
    sleep                   10, 45
    cut_chg                 13
    pos_set                 0, -14407, 0, -18984
    member_set              M_Y_DIR, 2104
    sleep                   10, 90
    aot_on                  ID_AOT_1
    evt_end                 0

.proc main_0A
    evt_next
    work_set                WK_SPLAYER, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    plc_motion              0, 1, 4

off_129E:
    super_on                0, 64, 0, 97, 1, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0
    evt_next
    nop
    goto                    255, 255, 0, off_129E
    evt_end                 0

.proc main_0B
    se_on                   2, 40, 1, 0, 0, 0
    aot_on                  ID_AOT_5
    evt_next
    nop
    if                      0, off_12DC
    ck                      FG_ITEM_2, 53, 1
    aot_reset               ID_AOT_10, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_12DC:
    evt_end                 0
    db                      0xC7, 0x0D
