.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 12750, -22900, 3500, 1800, -32000, -32000, -32000, 2900, 3, 14, 10, 0, 44, 2, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 26673, -25367, 1400, 2000, -25800, 0, -14670, 0, 4, 2, 0, 0, 26, 1, 0, 0, UNLOCKED, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 0, -32000, 0, -25100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x03, 0x90

.main
.proc main
    if                      0, off_13E4
    ck                      FG_STATUS, 3, 1
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04, 0, SBK_31, 0, 255, 26140, 0, -24720, 2500, 0, 0
    if                      0, off_13BE
    cmp                     0, V_LAST_RDT, CMP_EQ, 1038
    work_set                WK_ENEMY, ID_EM_255
    nop
    pos_set                 0, -32000, -32000, -32000
    else                    0, off_13E0

off_13BE:
    if                      0, off_13DE
    cmp                     0, V_LAST_RDT, CMP_EQ, 1280
    work_set                WK_ENEMY, ID_EM_255
    nop
    pos_set                 0, 13140, 0, -20310
    dir_set                 0, 0, 3072, 0
    endif
    nop

off_13DE:
    nop
    nop

off_13E0:
    else                    0, off_1408

off_13E4:
    if                      0, off_1406
    cmp                     0, V_LAST_RDT, CMP_EQ, 1280
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04, 0, SBK_31, 0, 255, 13140, 0, -20310, 3072, 0, 0
    endif
    nop

off_1406:
    nop
    nop

off_1408:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, -32000, -32000, -32000, 0, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8670, -17386, 1800, 1400, ITEM_WEAPONBOXKEY, 1, 18, ID_OBJ_0, IF_FLOOR
    if                      0, off_1452
    ck                      FG_ITEM_2, 18, 0
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_1452:
    if                      0, off_1486
    ck                      FG_COMMON, 187, 0
    aot_set                 ID_AOT_7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 7715, -20742, 1800, 1800, 255, 0, I_GOSUB, main_07, 0, 0
    aot_set                 ID_AOT_6, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, 7715, -20742, 1800, 1800, 10, 0, ITEM_LIGHTER, 0, aot, 0
    else                    0, off_14CA

off_1486:
    aot_set                 ID_AOT_7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 7715, -20742, 1800, 1800, 255, 0, I_GOSUB, main_08, 0, 0
    if                      0, off_14C8
    ck                      FG_ITEM_2, 18, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, 9726, 0, -16629
    dir_set                 0, 0, 0, -2048
    sce_espr_on             0, 5893, 4, 8192, 0, 0, 0, 0
    endif
    nop

off_14C8:
    nop
    nop

off_14CA:
    if                      0, off_14E6
    cmp                     0, V_LAST_RDT, CMP_EQ, 1038
    if                      0, off_14E2
    ck                      FG_COMMON, 103, 1
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_14E2:
    else                    0, off_14EA

off_14E6:
    gosub                   main_05
    nop
    nop

off_14EA:
    evt_end                 0

.proc aot
    gosub                   main_0A
    evt_end                 0

.proc main_02
    do                      0, off_14FC
    evt_next
    nop
    edwhile                 off_14FC
    ck                      FG_ITEM_2, 18, 0

off_14FC:
    sce_espr_kill           5, 23, 4, 0
    nop
    evt_end                 0

.proc main_03
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, 4000, 0, -25100
    evt_exec                255, I_GOSUB, main_0B
    gosub                   main_0C
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    se_on                   2, 11, 260, 0, 0, 0
    speed_set               0, 100
    for                     0, off_1534, 67
    add_speed
    evt_next
    next                    0

off_1534:
    speed_set               0, 80
    for                     0, off_1542, 10
    add_speed
    evt_next
    next                    0

off_1542:
    speed_set               0, 80
    for                     0, off_1550, 20
    add_speed
    evt_next
    next                    0

off_1550:
    se_on                   0, 1, 260, 0, 0, 0
    sleep                   10, 60
    sce_fade_set            0, 2, 7, 255, 2
    evt_end                 0

.proc main_04
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    evt_next
    work_set                WK_PLAYER, 0
    pos_set                 0, -32000, -32000, -32000
    if                      0, off_1598
    ck                      FG_STATUS, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_ADD, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_1598:
    cut_auto                0
    cut_chg                 8
    gosub                   main_03
    sce_fade_set            0, 2, 7, 255, 241
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 14320, 0, -20070
    dir_set                 0, 0, 3072, 0
    if                      0, off_15F0
    ck                      FG_STATUS, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 13140, 0, -20310
    dir_set                 0, 0, 3072, 0
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_SUB, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_15F0:
    gosub                   main_05
    cut_chg                 5
    cut_auto                1
    sleep                   10, 16
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_05
    cut_replace             0, 4
    cut_replace             1, 5
    cut_replace             2, 6
    cut_replace             3, 7
    if                      0, off_1622
    cmp                     0, V_LAST_RDT, CMP_EQ, 1282
    cut_chg                 7
    cut_auto                1
    else                    0, off_1634

off_1622:
    if                      0, off_1632
    cmp                     0, V_LAST_RDT, CMP_NE, 1038
    cut_chg                 4
    cut_auto                1
    endif
    nop

off_1632:
    nop
    nop

off_1634:
    evt_end                 0

.proc main_06
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    if                      0, off_165C
    ck                      FG_STATUS, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 11200, 0, -20265
    dir_set                 0, 0, 2048, 0
    endif
    nop

off_165C:
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 10260, 0, -19300
    dir_set                 0, 0, 2048, 0
    plc_neck                2, 0, 0, 0, 30, 30
    sleep                   10, 10
    plc_motion              1, 6, 0
    sleep                   10, 25
    se_on                   2, 13, 1, 0, 0, 0
    sleep                   10, 25
    evt_exec                255, I_GOSUB, main_09
    sleep                   10, 1
    nop_8b                  200, 5, 0, 0, 0
    sleep                   10, 4
    plc_neck                2, 0, 0, -512, 0, 30
    if                      0, off_16CA
    ck                      FG_STATUS, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 0, 20, 20
    endif
    nop

off_16CA:
    se_on                   2, 10, 1, 0, 0, 0
    sleep                   10, 45
    cut_chg                 12
    if                      0, off_16FA
    ck                      FG_ITEM_2, 18, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, 9726, 0, -16629
    dir_set                 0, 0, 0, -2048
    endif
    nop

off_16FA:
    if                      0, off_1712
    ck                      FG_STATUS, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -480, 256, 100, 30
    endif
    nop

off_1712:
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 480, 256, 100, 30
    evt_next
    nop
    se_on                   2, 12, 1, 0, 0, 0
    sleep                   10, 60
    if                      0, off_1776
    ck                      FG_ITEM_2, 18, 0
    sce_espr_on             0, 5893, 4, 8192, 0, 0, 0, 0
    sleep                   10, 5
    sce_espr_on             0, 5893, 4, 8192, 0, 0, 0, 0
    sleep                   10, 5
    sce_espr_on             0, 5893, 4, 8192, 0, 0, 0, 0
    else                    0, off_177C

off_1776:
    sleep                   10, 10
    nop
    nop

off_177C:
    sleep                   10, 30
    if                      0, off_1790
    ck                      FG_ITEM_2, 18, 0
    sce_espr_kill           5, 23, 4, 0
    nop
    endif
    nop

off_1790:
    sce_fade_set            1, 3, 7, 0, 0
    for                     0, off_17AA, 6
    sce_fade_adjust         1, 0, 16
    evt_next
    nop
    sce_fade_adjust         1, 0, 0
    evt_next
    nop
    next                    0

off_17AA:
    cut_old
    nop
    sleep                   10, 20
    cut_auto                1
    if                      0, off_17CA
    ck                      FG_STATUS, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                6, 0, 0, 0, 0, 0
    endif
    nop

off_17CA:
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    plc_neck                6, 0, 0, 0, 0, 0
    sleep                   10, 25
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    nop
    evt_end                 0

.proc main_07
    cut_auto                0
    cut_chg                 10
    message_on              0, ID_MSG_2, 0, 255, 255
    evt_next
    cut_old
    cut_auto                1
    evt_end                 0

.proc main_08
    cut_auto                0
    cut_chg                 10
    message_on              0, ID_MSG_3, 0, 255, 255
    evt_next
    cut_old
    cut_auto                1
    evt_end                 0

.proc main_09
    sce_espr_on             0, 4135, 0, 4096, 7524, -1710, -19494, 1994
    sce_espr_on             0, 4135, 0, 4096, 7524, -1710, -19494, 1994
    sleep                   10, 50
    sce_espr_kill           39, 16, 0, 0
    nop
    evt_end                 0

.proc main_0A
    if                      0, off_1882
    ck                      FG_COMMON, 187, 0
    cmp                     0, V_USED_ITEM, CMP_EQ, 47
    evt_exec                255, I_GOSUB, main_06
    set                     FG_COMMON, 187, 1
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 7715, -20742, 1800, 1800, 255, 0, I_GOSUB, main_08, 0, 0
    endif
    nop

off_1882:
    evt_end                 0

.proc main_0B
    save                    V_04, 0
    save                    V_05, 0
    do                      0, off_18EE
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 16000
    copy                    V_04, V_TEMP
    nop
    light_kido_set          0, 20000
    light_kido_set          1, 18000
    light_pos_set           0, 0, 12, -900
    light_pos_set           0, 0, 13, -23800
    work_copy               4, 4, 1
    light_pos_set           0, 0, 11, 0
    light_pos_set           0, 1, 12, -4500
    light_pos_set           0, 1, 13, -23800
    work_copy               4, 4, 1
    light_pos_set           0, 1, 11, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 2500
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    edwhile                 off_18EE
    cmp                     0, V_CUT, CMP_EQ, 8

off_18EE:
    evt_end                 0

.proc main_0C
    nop_8b                  80, 5, 0, 0, 0
    nop_8c                  0, 50, 60, 30, 0, 0, 0
    nop_8c                  0, 60, 40, 30, 0, 20, 0
    nop_8c                  0, 40, 60, 30, 0, 40, 0
    nop_8c                  0, 60, 40, 20, 0, 60, 0
    nop_8c                  0, 60, 0, 27, 0, 70, 0
    evt_end                 0
