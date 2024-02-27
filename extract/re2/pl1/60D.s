.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_AUTO, 0, 0, 32000, 3200, 1, 1, 24600, 0, -4616, 296, 5, 12, 0, 0, 49, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    evt_end                 0

.proc aot
    gosub                   main_03
    evt_end                 0

.proc main_02
    item_aot_set            ID_AOT_1, SCE_ITEM, SAT_AUTO, 0, 0, 32000, 32000, 1, 1, ITEM_MAINFUSE, 1, 24, ID_OBJ_3, IF_DEFAULT
    item_aot_set_4p         ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18111, -14130, -16991, -13190, -15681, -14640, -17081, -15620, ITEM_FUSECASE, 1, 61, 1, 0
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19961, -19521, 1810, 1060, 255, 0, I_GOSUB, main_05, 0, 0
    aot_set                 ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20742, -26359, 1800, 4100, 255, 0, I_GOSUB, main_0B, 0, 0
    aot_set                 ID_AOT_6, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -19961, -19521, 1810, 1060, 10, 0, ITEM_FUSECASE, 0, aot, 0
    aot_set                 ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16749, -18035, 1800, 2300, ID_MSG_1, 0, 0, 0, 255, 253
    sce_em_set              0, ID_EM_0, ENEMY_3E, 0, AI_40, 0, SBK_0, 0, 255, 32000, 0, 32000, 1024, 0, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, 31000, -1926, 31000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 0, -15476, -990, -14033, -704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 0, 30000, -1926, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 0, 29000, -1926, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 14, -21263, 0, -19884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 14, -22063, 0, -20684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 14, -21263, 0, -19884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22000, -14368, 1800, 1800, ITEM_FAIDSPRAY, 1, 69, ID_OBJ_7, IF_DEFAULT
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 0, 0, 10, 16, -21100, -2160, -13468, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    gosub                   main_04
    sce_espr3d_on           0, 2070, 0, 4096, -19638, -2178, -19080, 512, 0, 0, 0
    evt_end                 0

.proc main_03
    if                      0, off_0AF4
    ck                      FG_COMMON, 119, 0
    cmp                     0, V_USED_ITEM, CMP_EQ, 77
    evt_exec                255, I_GOSUB, main_06
    endif
    nop

off_0AF4:
    sce_fade_set            1, 1, 7, 0, 128
    sce_fade_adjust         1, 0, 16
    if                      0, off_0B0A
    ck                      FG_STATUS, 11, 1
    gosub                   main_04
    endif
    nop

off_0B0A:
    evt_end                 0

.proc main_04
    switch                  26, off_0B92
    case                    0, off_0B30, 0
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    member_set              M_Y_POS, 0
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    member_set              M_Y_POS, -32000
    break                   0

off_0B30:
    case                    0, off_0B50, 1
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_set              M_Y_POS, 0
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    member_set              M_Y_POS, -32000
    break                   0

off_0B50:
    case                    0, off_0B56, 2

off_0B56:
    case                    0, off_0B76, 3
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    member_set              M_Y_POS, 0
    break                   0

off_0B76:
    default                 0
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    member_set              M_Y_POS, -32000
    eswitch                 0

off_0B92:
    evt_end                 0

.proc main_05
    if                      0, off_0BA6
    ck                      FG_COMMON, 119, 0
    message_on              0, ID_MSG_0, 0, 0, 253
    else                    0, off_0BB4

off_0BA6:
    if                      0, off_0BB2
    ck                      FG_ITEM_2, 24, 0
    aot_on                  ID_AOT_1
    endif
    nop

off_0BB2:
    nop
    nop

off_0BB4:
    evt_end                 0

.proc main_06
    set                     FG_COMMON, 119, 1
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    cut_chg                 4
    gosub                   main_04
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -19080, -1926, -20340
    member_set              M_Y_DIR, 1024
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -20790, -1866, -20880
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -19656, -2170, -19422
    evt_next
    nop
    gosub                   main_0C
    speed_set               1, 12
    speed_set               4, 256
    sleep                   10, 10
    for                     0, off_0C08, 36
    add_speed
    evt_next
    next                    0

off_0C08:
    sleep                   10, 10
    work_set                WK_ENEMY, ID_EM_0
    nop
    speed_set               4, -16
    while                   6, off_0C22
    member_cmp              0, 15, 2, 52, 3
    add_speed
    evt_next
    ewhile                  0

off_0C22:
    member_set              M_Y_DIR, 820
    save                    V_04, 10
    gosub                   main_07
    gosub                   main_08
    evt_exec                255, I_GOSUB, main_09
    save                    V_04, 8
    gosub                   main_07
    gosub                   main_08
    save                    V_04, 11
    gosub                   main_07
    gosub                   main_08
    speed_set               4, 16
    while                   6, off_0C54
    member_cmp              0, 15, 3, 134, 6
    add_speed
    evt_next
    ewhile                  0

off_0C54:
    member_set              M_Y_DIR, 1670
    evt_exec                255, I_GOSUB, main_0A
    save                    V_04, 5
    gosub                   main_07
    gosub                   main_08
    speed_set               4, -16
    while                   6, off_0C76
    member_cmp              0, 15, 2, 0, 4
    add_speed
    evt_next
    ewhile                  0

off_0C76:
    member_set              M_Y_DIR, 1024
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    speed_set               1, -12
    speed_set               4, -256
    for                     0, off_0C90, 36
    add_speed
    evt_next
    next                    0

off_0C90:
    wsleep
    wsleeping
    sce_item_lost           ITEM_FUSECASE
    aot_on                  ID_AOT_1
    cut_old
    nop
    gosub                   main_04
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, 32000, -1836, 32000
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, 31000, -1776, 31000
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, 30000, -2170, 30000
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    pos_set                 0, 30000, -2170, 29000
    evt_next
    set                     FG_STATUS, 27, 0
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_07
    member_set              M_ROUTINE0, 1
    member_set2             M_ROUTINE1, V_04
    nop
    evt_end                 0

.proc main_08
    while                   6, off_0CEE
    member_cmp              0, 2, 0, 1, 0
    evt_next
    nop
    ewhile                  0

off_0CEE:
    evt_end                 0

.proc main_09
    sleep                   10, 91
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    super_set               0, 130, 135, 0, -452, 0, 2048, 0, 0
    evt_end                 0

.proc main_0A
    sleep                   10, 94
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    super_reset             0, 0, 0, 0
    pos_set                 0, 30000, 0, 32000
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    super_reset             0, 0, 0, 0
    pos_set                 0, 31000, 0, 32000
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    pos_set                 0, -19656, -1738, -19422
    evt_end                 0

.proc main_0B
    work_set                WK_PLAYER, 0
    nop
    parts_set               0, 2, 0, -32640
    parts_set               0, 2, 1, -32640
    parts_set               0, 5, 0, -32640
    parts_set               0, 5, 1, -32640
    parts_set               0, 3, 0, -32640
    parts_set               0, 3, 1, -32640
    parts_set               0, 6, 0, -32640
    parts_set               0, 6, 1, -32640
    parts_set               0, 4, 0, -32640
    parts_set               0, 2, 1, -32640
    parts_set               0, 7, 0, -32640
    parts_set               0, 5, 1, -32640
    aot_on                  ID_AOT_0
    evt_end                 0

.proc main_0C
    xa_on                   0, 28
    evt_end                 0
    db                      0x16, 0x15
