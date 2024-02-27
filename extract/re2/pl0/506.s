.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 11, 0, -16200, -21882, 2680, 2000, -23694, 0, -19801, 856, 4, 3, 0, 0, 7, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, 600, -28082, 2190, 1800, -18465, -14400, -7887, 1024, 4, 7, 0, 8, 25, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_UNDER, 128, 0, -6727, -14155, 1050, 1070, 255, 0, I_GOSUB, main_03, 0, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -6230, -19440, -13750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_0E00
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 11, 0, -25512, -14890, 1800, 1800, ITEM_HANDGUNAMMO, 15, 68, ID_OBJ_1, IF_DEFAULT
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 11, 0, 10, 16, -24612, -21420, -13990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0E18

off_0E00:
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 11, 0, -25512, -18360, 1800, 2320, ITEM_HANDGUNAMMO, 15, 68, ID_OBJ_255, IF_FLOOR
    nop
    nop

off_0E18:
    if                      0, off_0E5C
    ck                      FG_ITEM_2, 25, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -10449, -21800, -20988, 0, 1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 11, 0, -12249, -22188, 2000, 2000, 255, 0, I_GOSUB, main_04, 0, 0
    endif
    nop

off_0E5C:
    if                      0, off_0E74
    cmp                     0, V_LAST_RDT, CMP_EQ, 1287
    set                     FG_ROOM, 0, 1
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -14040
    endif
    nop

off_0E74:
    gosub                   main_02
    evt_end                 0

.proc aot
    if                      0, off_0E84
    ck                      FG_STATUS, 11, 1
    gosub                   main_02
    endif
    nop

off_0E84:
    evt_end                 0

.proc main_02
    switch                  26, off_0F18
    case                    0, off_0E9E, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 61, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 31, 64
    break                   0

off_0E9E:
    case                    0, off_0EB2, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 71, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 64
    break                   0

off_0EB2:
    case                    0, off_0EC6, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 91, 64
    break                   0

off_0EC6:
    case                    0, off_0EDA, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 91, 64
    break                   0

off_0EDA:
    case                    0, off_0EEE, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 111, 64
    break                   0

off_0EEE:
    case                    0, off_0F02, 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 101, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 91, 64
    break                   0

off_0F02:
    case                    0, off_0F16, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 51, 64
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 0, 64
    break                   0

off_0F16:
    eswitch                 0

off_0F18:
    evt_end                 0

.proc main_03
    set                     FG_STOP, 7, 1
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_ret
    if                      0, off_0F48
    ck                      FG_ROOM, 0, 0
    set                     FG_ROOM, 0, 1
    save                    V_04, 50
    save                    V_05, 3
    member_set              M_FLOOR, 8
    else                    0, off_0F5A

off_0F48:
    set                     FG_ROOM, 0, 0
    save                    V_04, -50
    save                    V_05, 2
    member_set              M_FLOOR, 11
    nop
    nop

off_0F5A:
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  150, 10, 0, 0, 0
    nop_8a                  0, 2, 0, 44, 0
    nop_8b                  80, 108, 0, 0, 0
    se_on                   2, 267, 4, 0, 0, 0
    for                     0, off_0FBA, 54
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_Y_POS, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_0FBA:
    work_copy               5, 1, 0
    cut_chg                 0
    cut_auto                1
    nop_8a                  0, 4, 0, 54, 0
    nop_8b                  200, 8, 0, 54, 0
    for                     0, off_0FF8, 54
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_Y_POS, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_04
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_0FF8:
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    aot_reset               ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_UNDER, 255, 0, I_GOSUB, main_03, 0, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_04
    message_on              0, ID_MSG_1, 0, 255, 255
    evt_next
    nop
    if                      0, off_1054
    ck                      FG_MESSAGE, F_QUESTION, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Y_POS, -32000
    set                     FG_MAP_I, 9, 1
    set                     FG_MAP_I, 10, 1
    set                     FG_MAP_I, 11, 1
    set                     FG_ITEM_2, 25, 1
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_2, 0, 255, 255
    endif
    nop

off_1054:
    evt_end                 0
    db                      0x20, 0x00
