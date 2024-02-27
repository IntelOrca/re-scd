.version 2

.init
.proc init
    aot_set                 ID_AOT_12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20637, -19264, 2240, 740, ID_MSG_3, 0, 0, 0, 255, 255
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, -21679, 0, -989, 1128, 4, 8, 6, 0, 22, 5, 0, 0, UNLOCKED, 0
    if                      0, off_07EA
    ck                      FG_STATUS, F_SCENARIO, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25331, -19116, 2200, 1000, -15093, 0, -20758, 3168, 4, 4, 0, 0, 7, 1, 0, 0, UNLOCKED, 0
    else                    0, off_082C

off_07EA:
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25331, -19116, 2200, 1000, -15293, -19800, -20675, 3168, 4, 6, 0, 11, 7, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_7, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25331, -19116, 2200, 1000, -15146, 0, -20121, 3184, 4, 4, 0, 0, 7, 1, 0, 0, UNLOCKED, 0
    nop
    nop

off_082C:
    aot_set                 ID_AOT_2, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18310, -27260, 2600, 2500, 0, 0, 1, 0, 0, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -16540, -1480, -25810, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_16, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21364, -24329, 1700, 1500, 8, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    gosub                   main_03
    evt_end                 0

.proc aot
    gosub                   main_09
    evt_end                 0

.proc main_02
    aot_set                 ID_AOT_10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27431, -27516, 2700, 2700, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 ID_AOT_6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17701, -21627, 1500, 1600, 255, 0, I_GOSUB, main_08, 0, 0
    if                      0, off_09A6
    ck                      FG_STATUS, F_SCENARIO, 1
    aot_set                 ID_AOT_11, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -17701, -21627, 1500, 1600, 10, 0, ITEM_UPKEY, 0, aot, 0
    if                      0, off_090C
    ck                      FG_COMMON, 63, 0
    set                     FG_COMMON, 63, 1
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_08, 0, SBK_0, 0, 255, -23939, 0, -25348, 2984, 0, 0
    evt_exec                255, I_GOSUB, main_06
    else                    0, off_0954

off_090C:
    if                      0, off_094E
    ck                      FG_COMMON, 64, 1
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_08, 0, SBK_0, 0, 255, -23939, 0, -25348, 2984, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    if                      0, off_094A
    ck                      FG_ITEM_2, 9, 1
    evt_exec                255, I_GOSUB, main_07
    endif
    nop

off_094A:
    else                    0, off_0952

off_094E:
    gosub                   main_05
    nop
    nop

off_0952:
    nop
    nop

off_0954:
    if                      0, off_0996
    ck                      FG_COMMON, 98, 1
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sce_espr3d_on           0, 22, 0, 1024, -17200, -1900, -20800, 0, 900, 0, 0
    sce_espr3d_on           0, 10261, 0, 4096, -17200, -2100, -20300, 0, 1000, 0, 0
    else                    0, off_09A2

off_0996:
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_09A2:
    else                    0, off_09AA

off_09A6:
    gosub                   main_05
    nop
    nop

off_09AA:
    evt_end                 0

.proc main_03
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18568, -22447, 780, 950, ITEM_FLAMEROUNDS, 6, 2, ID_OBJ_2, IF_DEFAULT
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -19140, -2130, -22410, -64, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_0A30
    ck                      FG_STATUS, F_SCENARIO, 1
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19298, -22447, 710, 850, ITEM_ACIDROUNDS, 6, 3, ID_OBJ_5, IF_DEFAULT
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 16, -19538, -2080, -22410, -64, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0A6E

off_0A30:
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19298, -22447, 710, 850, ITEM_EXPLOSIVEROUNDS, 6, 3, ID_OBJ_3, IF_DEFAULT
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -19538, -2080, -22410, -64, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0A6E:
    item_aot_set            ID_AOT_15, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26706, -21307, 1200, 1080, ITEM_FAIDSPRAY, 1, 26, ID_OBJ_4, IF_DEFAULT
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -26981, -2210, -20392, 0, -448, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21364, -24329, 1700, 1500, ITEM_INKRIBBON, 3, 80, ID_OBJ_6, IF_DEFAULT
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 16, -20514, -1410, -23529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_04
    message_on              0, ID_MSG_4, 0, 255, 255
    evt_next
    nop
    if                      0, off_0B04
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_STATUS, 3, 0
    set                     FG_COMMON, 113, 1
    aot_on                  ID_AOT_0
    endif
    nop

off_0B04:
    evt_end                 0

.proc main_05
    if                      0, off_0B6A
    ck                      FG_STATUS, 3, 1
    if                      0, off_0B32
    cmp                     0, V_LAST_RDT, CMP_EQ, 1288
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 0, SBK_32, 0, 255, -24650, 0, -26219, 3560, 0, 0
    else                    0, off_0B4A

off_0B32:
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 0, SBK_32, 0, 255, -24729, 0, -19284, 3560, 0, 0
    nop
    nop

off_0B4A:
    if                      0, off_0B66
    ck                      FG_STATUS, F_SCENARIO, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 2048
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_0B66:
    else                    0, off_0BA8

off_0B6A:
    if                      0, off_0BA6
    ck                      FG_COMMON, 113, 1
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 0, SBK_32, 0, 255, -24650, 0, -26219, 3560, 0, 0
    if                      0, off_0BA4
    ck                      FG_STATUS, F_SCENARIO, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 2048
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_0BA4:
    endif
    nop

off_0BA6:
    nop
    nop

off_0BA8:
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -23354, 0, -25078
    member_set              M_Y_DIR, 2984
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    evt_next
    work_set                WK_PLAYER, 0
    plc_dest                0, 4, 33, -22260, -24004
    sleep                   10, 18
    plc_neck                2, 0, 256, 1024, 20, 20
    sleep                   10, 18
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -1024, 20, 20
    sleep                   10, 8
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 1024, 20, 20
    cut_chg                 1
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 0
    nop
    sleep                   10, 29
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, -1024
    member_set2             M_Y_DIR, V_TEMP
    nop
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 30, 30
    sleep                   10, 8
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 30, 30
    sleep                   10, 20
    xa_on                   0, 1
    sleep                   10, 2
    message_on              0, ID_MSG_7, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 40
    plc_motion              0, 17, 0
    sleep                   10, 50
    plc_motion              0, 20, 0
    wsleep
    wsleeping
    xa_on                   0, 2
    sleep                   10, 2
    message_on              0, ID_MSG_8, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                3, 1, 0, 0, 70, 70
    sleep                   10, 10
    plc_neck                5, 1, 0, 0, 80, 80
    sleep                   10, 10
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    plc_neck                6, 0, 0, 0, 80, 80
    cut_chg                 0
    cut_auto                1
    set                     FG_STATUS, 3, 0
    set                     FG_COMMON, 64, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_07
    evt_next
    work_set                WK_SPLAYER, 0
    splc_ret
    set                     FG_COMMON, 64, 0
    nop
    evt_end                 0

.proc main_08
    if                      0, off_0CFE
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_0CFA
    ck                      FG_COMMON, 98, 0
    message_on              0, ID_MSG_1, 0, 255, 255
    endif
    nop

off_0CFA:
    else                    0, off_0D06

off_0CFE:
    message_on              0, ID_MSG_0, 0, 255, 255
    nop
    nop

off_0D06:
    evt_end                 0

.proc main_09
    if                      0, off_0D32
    ck                      FG_COMMON, 98, 0
    if                      0, off_0D30
    cmp                     0, V_00, CMP_EQ, 11
    if                      0, off_0D2E
    cmp                     0, V_USED_ITEM, CMP_EQ, 94
    set                     FG_COMMON, 98, 1
    evt_exec                255, I_GOSUB, main_0A
    endif
    nop

off_0D2E:
    endif
    nop

off_0D30:
    endif
    nop

off_0D32:
    evt_end                 0

.proc main_0A
    sce_item_lost           ITEM_UPKEY
    aot_reset               ID_AOT_11, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -17952, 0, -21337
    dir_set                 0, 0, 3437, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -18230, 0, -20056
    dir_set                 0, 0, 4669, 0
    splc_sce
    nop
    sce_espr3d_on           0, 22, 0, 1024, -17200, -1900, -20800, 0, 900, 0, 0
    set                     FG_COMMON, 98, 1
    se_on                   2, 10, 1, 0, 0, 0
    sleep                   10, 15
    se_on                   2, 11, 1, 0, 0, 0
    sleep                   10, 100
    sce_espr3d_on           0, 10261, 0, 4096, -17200, -2100, -20300, 0, 1000, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -17200, -2100, -20300, 32, 32
    sleep                   10, 50
    plc_neck                5, 2, 0, 0, 32, 32
    plc_dest                0, 9, 33, -19106, -20336
    sleep                   10, 6
    xa_on                   0, 3
    evt_next
    nop
    message_on              0, ID_MSG_9, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 17, 0
    nop
    sleep                   10, 30
    plc_motion              0, 16, 8
    wsleep
    wsleeping
    aot_reset               ID_AOT_7, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 214, 196, 0, 0, 103, 177
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_MAP, 93, 1
    work_set                WK_PLAYER, 0
    plc_ret
    work_set                WK_SPLAYER, 0
    splc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_0B
    do                      0, off_0E3E
    evt_next
    nop
    edwhile                 off_0E3E
    ck                      FG_ROOM, 0, 0

off_0E3E:
    set                     FG_ROOM, 0, 0
    evt_end                 0
