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
    save                    V_04, 0
    gosub                   main_02
    gosub                   main_03
    evt_end                 0

.proc aot
    gosub                   main_0A
    evt_end                 0

.proc main_02
    aot_set                 ID_AOT_10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27431, -27516, 2700, 2700, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 ID_AOT_6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17701, -21627, 1500, 1600, 255, 0, I_GOSUB, main_09, 0, 0
    if                      0, off_09EA
    ck                      FG_STATUS, F_SCENARIO, 1
    aot_set                 ID_AOT_11, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -17701, -21627, 1500, 1600, 10, 0, ITEM_UPKEY, 0, aot, 0
    if                      0, off_0926
    ck                      FG_COMMON, 63, 0
    set                     FG_COMMON, 63, 1
    aot_set                 ID_AOT_13, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18488, -20538, 1080, 1270, ID_MSG_2, 0, 0, 0, 255, 255
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_08, 0, SBK_0, 0, 255, -23939, 0, -25348, 2984, 0, 0
    evt_exec                255, I_GOSUB, main_06
    else                    0, off_0998

off_0926:
    if                      0, off_0992
    ck                      FG_COMMON, 64, 1
    aot_set                 ID_AOT_13, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18488, -20538, 1080, 1270, ID_MSG_2, 0, 0, 0, 255, 255
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_08, 0, SBK_0, 0, 255, -18029, 0, -20281, 3903, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    sce_espr3d_on           0, 21, 0, 4096, -17200, -2100, -20300, 0, 1000, 0, 0
    evt_exec                255, I_GOSUB, main_07
    if                      0, off_098E
    ck                      FG_ITEM_2, 9, 1
    endif
    nop

off_098E:
    else                    0, off_0996

off_0992:
    gosub                   main_05
    nop
    nop

off_0996:
    nop
    nop

off_0998:
    if                      0, off_09DA
    ck                      FG_COMMON, 98, 1
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sce_espr3d_on           0, 22, 0, 1024, -17200, -1900, -20800, 0, 900, 0, 0
    sce_espr3d_on           0, 10261, 0, 4096, -17200, -2100, -20300, 0, 1000, 0, 0
    else                    0, off_09E6

off_09DA:
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_09E6:
    else                    0, off_09EE

off_09EA:
    gosub                   main_05
    nop
    nop

off_09EE:
    evt_end                 0

.proc main_03
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18568, -22447, 780, 950, ITEM_SHOTGUNAMMO, 7, 3, ID_OBJ_3, IF_DEFAULT
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -19190, -2130, -22410, 0, -2944, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19298, -22447, 710, 850, ITEM_MAGNUMAMMO, 8, 2, ID_OBJ_2, IF_DEFAULT
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -19688, -2080, -22410, -64, -2880, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_15, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26706, -21307, 1200, 1080, ITEM_FAIDSPRAY, 1, 26, ID_OBJ_4, IF_DEFAULT
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -26981, -2210, -20392, 0, -448, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21364, -24329, 1700, 1500, ITEM_INKRIBBON, 3, 80, ID_OBJ_6, IF_DEFAULT
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 16, -20514, -1410, -23529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_04
    message_on              0, ID_MSG_4, 0, 255, 255
    evt_next
    nop
    if                      0, off_0AFE
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_STATUS, 3, 0
    set                     FG_COMMON, 113, 1
    aot_on                  ID_AOT_0
    endif
    nop

off_0AFE:
    evt_end                 0

.proc main_05
    if                      0, off_0B48
    ck                      FG_STATUS, 3, 1
    if                      0, off_0B2C
    cmp                     0, V_LAST_RDT, CMP_EQ, 1288
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04 | AI_08, 0, SBK_31, 0, 255, -24650, 0, -26219, 3560, 0, 0
    else                    0, off_0B44

off_0B2C:
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04 | AI_08, 0, SBK_31, 0, 255, -24729, 0, -19284, 3560, 0, 0
    nop
    nop

off_0B44:
    else                    0, off_0B6E

off_0B48:
    if                      0, off_0B6C
    ck                      FG_COMMON, 113, 1
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04 | AI_08, 0, SBK_31, 0, 255, -24650, 0, -26219, 3560, 0, 0
    set                     FG_COMMON, 113, 0
    endif
    nop

off_0B6C:
    nop
    nop

off_0B6E:
    evt_end                 0

.proc main_06
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -23354, 0, -25078
    member_set              M_Y_DIR, 2984
    evt_next
    work_set                WK_PLAYER, 0
    plc_dest                0, 4, 32, -22260, -24004
    sleep                   10, 18
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 4, 34, -23696, -24094
    sleep                   10, 8
    plc_neck                2, 0, 512, 0, 10, 10
    work_set                WK_PLAYER, 0
    nop
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
    plc_stop
    work_set                WK_PLAYER, 0
    plc_neck                5, 2, 0, 0, 30, 30
    sleep                   10, 8
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 30, 30
    sleep                   10, 20
    xa_on                   0, 0
    evt_next
    nop
    message_on              0, ID_MSG_5, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 16, 16
    nop
    sleep                   10, 48
    plc_motion              0, 17, 16
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    plc_neck                3, 1, 0, 0, 40, 40
    sleep                   10, 10
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -4097
    member_set2             M_TYPE, V_TEMP
    nop
    plc_neck                6, 0, 0, 0, 30, 30
    sleep                   10, 10
    plc_dest                0, 4, 0, -22117, -20250
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 144
    plc_cnt                 0
    work_set                WK_SPLAYER, 0
    sleep                   10, 30
    plc_flg                 1, 4
    plc_dest                0, 4, 0, -17948, -20256
    gosub                   main_0C
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    sleep                   10, 15
    set                     FG_STATUS, 3, 0
    work_set                WK_SPLAYER, 0
    splc_sce
    plc_motion              0, 22, 0
    sleep                   10, 100
    sce_espr3d_on           0, 21, 0, 4096, -17200, -2100, -20300, 0, 1000, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                6, 0, 0, 0, 40, 40
    sleep                   10, 10
    cut_chg                 0
    cut_auto                1
    set                     FG_COMMON, 64, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_exec                255, I_GOSUB, main_07
    evt_end                 0

.proc main_07
    evt_next
    nop
    while                   4, off_0D76
    ck                      FG_COMMON, 98, 0
    work_set                WK_SPLAYER, 0
    nop
    if                      0, off_0D1E
    cmp                     0, V_RNG, CMP_GE, 22528
    save                    V_04, 0
    plc_motion              0, 22, 0
    plc_cnt                 19
    sleep                   10, 100
    else                    0, off_0D72

off_0D1E:
    if                      0, off_0D70
    cmp                     0, V_RNG, CMP_LT, 18432
    if                      0, off_0D6E
    cmp                     0, V_RNG, CMP_GE, 14336
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    if                      0, off_0D5C
    cmp                     0, V_04, CMP_GE, 3
    save                    V_04, 0
    plc_motion              0, 22, 0
    plc_cnt                 19
    sleep                   10, 140
    else                    0, off_0D6C

off_0D5C:
    plc_neck                4, 2, 0, 0, 32, 32
    sleep                   10, 70
    nop
    nop

off_0D6C:
    endif
    nop

off_0D6E:
    endif
    nop

off_0D70:
    nop
    nop

off_0D72:
    evt_next
    nop
    ewhile                  0

off_0D76:
    evt_end                 0

.proc main_08
    evt_next
    work_set                WK_SPLAYER, 0
    aot_reset               ID_AOT_13, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_09
    if                      0, off_0DA4
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_0DA0
    ck                      FG_COMMON, 98, 0
    message_on              0, ID_MSG_1, 0, 255, 255
    endif
    nop

off_0DA0:
    else                    0, off_0DAC

off_0DA4:
    message_on              0, ID_MSG_0, 0, 255, 255
    nop
    nop

off_0DAC:
    evt_end                 0

.proc main_0A
    if                      0, off_0DD8
    ck                      FG_COMMON, 98, 0
    if                      0, off_0DD6
    cmp                     0, V_00, CMP_EQ, 11
    if                      0, off_0DD4
    cmp                     0, V_USED_ITEM, CMP_EQ, 94
    set                     FG_COMMON, 98, 1
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_0DD4:
    endif
    nop

off_0DD6:
    endif
    nop

off_0DD8:
    evt_end                 0

.proc main_0B
    sce_item_lost           ITEM_UPKEY
    aot_reset               ID_AOT_11, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -17952, 0, -21337
    dir_set                 0, 0, 3900, 0
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
    sce_espr_kill           21, 0, 0, 0
    nop
    sce_espr3d_on           0, 10261, 0, 4096, -17200, -2100, -20300, 0, 1000, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -17200, -2100, -20300, 32, 32
    sleep                   10, 50
    plc_neck                5, 2, 0, 0, 32, 32
    plc_dest                0, 9, 32, -19106, -20336
    sleep                   10, 6
    xa_on                   0, 1
    evt_next
    nop
    message_on              0, ID_MSG_6, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 30
    plc_motion              0, 21, 8
    wsleep
    wsleeping
    aot_reset               ID_AOT_7, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 214, 196, 0, 0, 103, 177
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_13, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_COMMON, 64, 0
    set                     FG_MAP, 93, 1
    work_set                WK_PLAYER, 0
    plc_ret
    work_set                WK_SPLAYER, 0
    splc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_0C
    do                      0, off_0EF8
    evt_next
    nop
    edwhile                 off_0EF8
    ck                      FG_ROOM, 0, 0

off_0EF8:
    set                     FG_ROOM, 0, 0
    evt_end                 0
    db                      0x34, 0x32
