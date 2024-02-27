.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20870, -25250, 1800, 3900, -18650, 0, -1220, 0, 5, 2, 4, 0, 39, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20870, -25250, 1800, 3900, -20920, 0, -18400, 0, 5, 6, 6, 0, 39, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20870, -25250, 1800, 3900, -1430, 0, -6160, 1024, 6, 0, 5, 0, 39, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_0566
    ck                      FG_COMMON, 130, 1
    set                     FG_COMMON, 154, 1
    endif
    nop

off_0566:
    if                      0, off_063E
    ck                      FG_STATUS, 3, 1
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_JACKET, 0, AI_04, 0, SBK_32, 0, 255, -20875, 0, -22315, 2048, 0, 0
    aot_set                 ID_AOT_3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20570, -26610, 1800, 1500, ID_MSG_1, 0, 0, 0, 255, 255
    if                      0, off_05F0
    ck                      FG_COMMON, 139, 0
    if                      0, off_05D6
    keep_item_ck            ITEM_MASTERKEY
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 255, 0, I_GOSUB, main_18, 0, 0
    aot_set                 ID_AOT_6, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 10, 0, ITEM_MASTERKEY, 0, aot, 0
    evt_exec                3, I_GOSUB, main_19
    else                    0, off_05EC

off_05D6:
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 255, 0, I_GOSUB, main_0D, 0, 0
    nop
    nop

off_05EC:
    else                    0, off_0606

off_05F0:
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 255, 0, I_GOSUB, main_17, 0, 0
    nop
    nop

off_0606:
    aot_set                 ID_AOT_5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20870, -25250, 1800, 3900, ID_MSG_7, 0, 0, 0, 255, 255
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    gosub                   main_07
    else                    0, off_06F2

off_063E:
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20570, -26610, 1800, 1500, 255, 0, I_GOSUB, main_06, 0, 0
    if                      0, off_06AA
    keep_item_ck            ITEM_MASTERKEY
    if                      0, off_0690
    ck                      FG_COMMON, 139, 0
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 8, 0, I_GOSUB, main_18, 0, 0
    aot_set                 ID_AOT_6, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 10, 0, ITEM_MASTERKEY, 0, aot, 0
    evt_exec                3, I_GOSUB, main_19
    else                    0, off_06A6

off_0690:
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 8, 0, I_GOSUB, main_14, 0, 0
    nop
    nop

off_06A6:
    else                    0, off_06C0

off_06AA:
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 255, 0, I_GOSUB, main_0D, 0, 0
    nop
    nop

off_06C0:
    if                      0, off_06D8
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    else                    0, off_06E4

off_06D8:
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    nop
    nop

off_06E4:
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    gosub                   main_07
    nop
    nop

off_06F2:
    sce_espr3d_on           0, 534, 0, 8192, -16300, 4000, -26900, 0, 1024, 1600, 0
    evt_end                 0

.proc aot
    gosub                   main_0C
    evt_end                 0

.proc main_02
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    cut_chg                 3
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -23780, 0, -23470
    dir_set                 0, 0, 0, 0
    gosub                   main_15
    if                      0, off_0742
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    evt_exec                255, I_GOSUB, main_0F
    gosub                   main_03
    else                    0, off_074A

off_0742:
    evt_exec                255, I_GOSUB, main_10
    gosub                   main_04
    nop
    nop

off_074A:
    sleep                   10, 20
    if                      0, off_0766
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    aot_reset               ID_AOT_0, SCE_DOOR, SAT_PL | SAT_FRONT, 38, 183, 0, 0, 60, 251
    else                    0, off_0772

off_0766:
    aot_reset               ID_AOT_1, SCE_DOOR, SAT_PL | SAT_FRONT, 72, 174, 0, 0, 32, 184
    nop
    nop

off_0772:
    plc_dest                0, 4, 32, -20000, -23470
    evt_end                 0

.proc main_03
    sce_shake_on            0, 255
    evt_next
    sce_shake_on            0, 254
    evt_next
    sce_shake_on            0, 253
    evt_next
    sce_shake_on            0, 252
    evt_next
    sce_shake_on            0, 253
    evt_next
    sce_shake_on            0, 254
    evt_next
    sce_shake_on            0, 255
    evt_next
    se_on                   2, 13, 1, 0, 0, 0
    evt_next
    sce_shake_on            0, 1
    evt_next
    sce_shake_on            0, 2
    evt_next
    sce_shake_on            0, 3
    evt_next
    sce_shake_on            0, 4
    evt_next
    sce_shake_on            0, 5
    evt_next
    nop
    for                     0, off_07C6, 100
    sce_shake_on            0, 6
    evt_next
    next                    0

off_07C6:
    for                     0, off_07DE, 3
    sce_shake_on            1, 7
    evt_next
    sce_shake_on            0, 7
    evt_next
    sce_shake_on            0, 6
    evt_next
    sce_shake_on            1, 6
    evt_next
    next                    0

off_07DE:
    sce_shake_on            0, 7
    evt_next
    sce_shake_on            0, 8
    evt_next
    sce_shake_on            0, 9
    evt_next
    se_on                   2, 14, 1, 0, 0, 0
    sce_shake_on            0, 10
    evt_next
    sce_shake_on            0, 9
    evt_next
    sce_shake_on            0, 8
    evt_next
    sce_shake_on            0, 7
    evt_next
    sce_shake_on            0, 6
    evt_next
    sce_shake_on            0, 5
    evt_next
    sce_shake_on            0, 4
    evt_next
    sce_shake_on            0, 3
    evt_next
    sce_shake_on            0, 2
    evt_next
    sce_shake_on            0, 1
    evt_next
    evt_end                 0

.proc main_04
    sce_shake_on            0, 1
    evt_next
    sce_shake_on            0, 2
    evt_next
    sce_shake_on            0, 3
    evt_next
    sce_shake_on            0, 4
    evt_next
    sce_shake_on            0, 3
    evt_next
    sce_shake_on            0, 2
    evt_next
    sce_shake_on            0, 1
    evt_next
    se_on                   2, 13, 1, 0, 0, 0
    evt_next
    sce_shake_on            0, 255
    evt_next
    sce_shake_on            0, 254
    evt_next
    sce_shake_on            0, 253
    evt_next
    sce_shake_on            0, 252
    evt_next
    sce_shake_on            0, 251
    evt_next
    nop
    for                     0, off_086A, 100
    sce_shake_on            0, 250
    evt_next
    next                    0

off_086A:
    for                     0, off_0882, 3
    sce_shake_on            1, 249
    evt_next
    sce_shake_on            0, 249
    evt_next
    sce_shake_on            0, 250
    evt_next
    sce_shake_on            1, 250
    evt_next
    next                    0

off_0882:
    sce_shake_on            0, 249
    evt_next
    sce_shake_on            0, 248
    evt_next
    sce_shake_on            0, 247
    evt_next
    sce_shake_on            0, 246
    nop
    se_on                   2, 14, 1, 0, 0, 0
    evt_next
    sce_shake_on            0, 247
    evt_next
    sce_shake_on            0, 248
    evt_next
    sce_shake_on            0, 249
    evt_next
    sce_shake_on            0, 250
    evt_next
    sce_shake_on            0, 251
    evt_next
    sce_shake_on            0, 252
    evt_next
    sce_shake_on            0, 253
    evt_next
    sce_shake_on            0, 254
    evt_next
    sce_shake_on            0, 255
    evt_next
    nop
    evt_end                 0

.proc main_05
    sce_shake_on            0, 1
    evt_next
    sce_shake_on            0, 2
    evt_next
    sce_shake_on            0, 3
    evt_next
    sce_shake_on            0, 4
    evt_next
    sce_shake_on            0, 3
    evt_next
    sce_shake_on            0, 2
    evt_next
    sce_shake_on            0, 1
    evt_next
    se_on                   2, 13, 1, 0, 0, 0
    evt_next
    sce_shake_on            0, 255
    evt_next
    sce_shake_on            0, 254
    evt_next
    sce_shake_on            0, 253
    evt_next
    sce_shake_on            0, 252
    evt_next
    sce_shake_on            0, 251
    evt_next
    sce_shake_on            0, 250
    evt_next
    sce_shake_on            0, 249
    evt_next
    sce_shake_on            0, 248
    evt_next
    nop
    for                     0, off_091C, 100
    sce_shake_on            0, 247
    evt_next
    next                    0

off_091C:
    sce_shake_on            0, 246
    evt_next
    sce_shake_on            0, 245
    evt_next
    sce_shake_on            0, 244
    evt_next
    sce_shake_on            0, 243
    evt_next
    sce_shake_on            0, 244
    evt_next
    sce_shake_on            0, 245
    evt_next
    sce_shake_on            0, 246
    nop
    se_on                   2, 14, 1, 0, 0, 0
    evt_next
    sce_shake_on            0, 247
    evt_next
    sce_shake_on            0, 248
    evt_next
    sce_shake_on            0, 249
    evt_next
    sce_shake_on            0, 250
    evt_next
    sce_shake_on            0, 251
    evt_next
    sce_shake_on            0, 252
    evt_next
    sce_shake_on            0, 253
    evt_next
    sce_shake_on            0, 254
    evt_next
    sce_shake_on            0, 255
    evt_next
    nop
    sleep                   10, 20
    se_on                   2, 14, 1, 0, 0, 0
    sce_shake_on            0, 2
    nop
    sleep                   10, 1
    sce_shake_on            1, 0
    nop
    sleep                   10, 1
    sce_shake_on            0, 1
    nop
    sleep                   10, 1
    sleep                   10, 20
    for                     0, off_09BA, 3
    se_on                   2, 14, 1, 0, 0, 0
    sce_shake_on            1, 0
    evt_next
    sce_shake_on            0, 0
    evt_next
    sce_shake_on            0, 1
    evt_next
    sce_shake_on            1, 1
    evt_next
    next                    0

off_09BA:
    sleep                   10, 30
    gosub                   main_04
    evt_end                 0

.proc main_06
    cut_auto                0
    sce_espr_kill           22, 2, 0, 0
    nop
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    cut_chg                 1
    message_on              0, ID_MSG_0, 0, 255, 239
    evt_next
    nop
    if                      0, off_0BA8
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    se_on                   2, 12, 1, 0, 0, 0
    sce_espr_kill           22, 4, 0, 0
    nop
    if                      0, off_0B12
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    else                    0, off_0B98

off_0B12:
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    nop
    nop

off_0B98:
    set                     FG_STOP, 7, 0
    sleep                   10, 20
    evt_exec                2, I_GOSUB, main_02
    else                    0, off_0BCA

off_0BA8:
    sce_espr_kill           22, 4, 0, 0
    nop
    sce_espr3d_on           0, 534, 0, 8192, -16300, 4000, -26900, 0, 1024, 1600, 0
    cut_chg                 0
    cut_auto                1
    nop
    nop

off_0BCA:
    evt_end                 0

.proc main_07
    sce_espr_on             0, 300, 0, 553, -26370, -2590, -23345, 0
    sce_espr_on             0, 300, 0, 553, -26370, -2710, -23345, 0
    sce_espr_on             0, 812, 0, 723, -26370, -2590, -23585, 0
    sce_espr_on             0, 45, 0, 1408, -26370, -2870, -23595, 0
    evt_end                 0

.proc main_08
    sce_espr_kill           44, 1, 0, 0
    sce_espr_kill           44, 3, 0, 0
    sce_espr_kill           45, 0, 0, 0
    nop
    evt_end                 0

.proc main_09
    sce_espr_on             0, 2092, 0, 596, -26370, -2947, -23340, 0
    sce_espr_on             0, 556, 0, 596, -26370, -2800, -23335, 0
    sce_espr_on             0, 812, 0, 723, -26370, -2590, -23585, 0
    sce_espr_on             0, 45, 0, 1408, -26370, -2870, -23595, 0
    sce_espr_on             0, 557, 0, 1408, -26370, -2620, -23465, 0
    evt_end                 0

.proc main_0A
    sce_espr_kill           44, 8, 0, 0
    sce_espr_kill           44, 2, 0, 0
    sce_espr_kill           44, 3, 0, 0
    sce_espr_kill           45, 0, 0, 0
    sce_espr_kill           45, 1, 0, 0
    sce_espr_kill           45, 2, 0, 0
    evt_end                 0

.proc main_0B
    set                     FG_COMMON, 139, 1
    sce_espr_kill           44, 1, 0, 0
    nop
    sleep                   10, 20
    sce_espr_on             0, 2092, 0, 596, -26370, -2947, -23340, 0
    se_on                   2, 15, 1, 0, 0, 0
    sleep                   10, 40
    sce_espr_on             0, 556, 0, 596, -26370, -2800, -23335, 0
    se_on                   2, 15, 1, 0, 0, 0
    sleep                   10, 30
    sce_espr_on             0, 301, 0, 1408, -26370, -2620, -23465, 0
    se_on                   2, 15, 1, 0, 0, 0
    sleep                   10, 10
    evt_end                 0

.proc main_0C
    if                      0, off_0D26
    cmp                     0, V_CUT, CMP_EQ, 0
    if                      0, off_0D1A
    ck                      FG_ROOM, 0, 0
    gosub                   main_08
    else                    0, off_0D1E

off_0D1A:
    gosub                   main_0A
    nop
    nop

off_0D1E:
    set                     FG_ROOM, 0, 0
    else                    0, off_0D48

off_0D26:
    if                      0, off_0D46
    ck                      FG_ROOM, 0, 0
    if                      0, off_0D3C
    ck                      FG_COMMON, 139, 0
    gosub                   main_07
    else                    0, off_0D40

off_0D3C:
    gosub                   main_09
    nop
    nop

off_0D40:
    set                     FG_ROOM, 0, 1
    endif
    nop

off_0D46:
    nop
    nop

off_0D48:
    evt_end                 0

.proc main_0D
    cut_auto                0
    cut_chg                 2
    evt_next
    nop
    message_on              0, ID_MSG_2, 0, 255, 239
    evt_next
    cut_chg                 4
    cut_auto                1
    nop
    evt_end                 0

.proc main_0E
    save                    V_07, 74

off_0D62:
    sce_line_start          1, 1, 0
    work_copy               7, 1, 0
    sce_line_main           0, 255, 255, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    work_copy               7, 1, 0
    sce_line_main           0, 255, 255, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    work_copy               7, 1, 0
    sce_line_main           0, 254, 255, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    work_copy               7, 1, 0
    sce_line_main           0, 254, 255, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    work_copy               7, 1, 0
    sce_line_main           0, 254, 255, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    work_copy               7, 1, 0
    sce_line_main           0, 254, 255, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    work_copy               7, 1, 0
    sce_line_main           0, 254, 255, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    work_copy               7, 1, 0
    sce_line_main           0, 254, 255, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    work_copy               7, 1, 0
    sce_line_main           0, 254, 255, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    work_copy               7, 1, 0
    sce_line_main           0, 255, 255, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    work_copy               7, 1, 0
    sce_line_main           0, 255, 255, 0, 0
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    sce_line_end
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 8
    copy                    V_07, V_TEMP
    nop
    if                      0, off_0E8E
    cmp                     0, V_07, CMP_GE, 154
    save                    V_07, 48
    endif
    nop

off_0E8E:
    evt_next
    nop
    goto                    255, 255, 0, off_0D62
    evt_end                 0

.proc main_0F
    save                    V_09, 13
    gosub                   main_11
    sleep                   10, 13
    for                     0, off_0EBE, 12
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_09, V_TEMP
    nop
    gosub                   main_11
    sleep                   10, 10
    next                    0

off_0EBE:
    evt_end                 0

.proc main_10
    save                    V_09, 1
    gosub                   main_11
    sleep                   10, 13
    for                     0, off_0EE6, 12
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_09, V_TEMP
    nop
    gosub                   main_11
    sleep                   10, 10
    next                    0

off_0EE6:
    evt_end                 0

.proc main_11
    save                    V_08, -22250
    save                    V_0A, 13
    sce_espr_kill           22, 0, 0, 0
    sce_espr_kill           22, 16, 0, 0
    for                     0, off_0FCA, 13
    if                      0, off_0F5E
    work_copy               10, 4, 1
    cmp                     0, V_09, CMP_NE, 0
    switch                  10, off_0F5A
    case                    0, off_0F18, 1

off_0F18:
    case                    0, off_0F3A, 13
    work_copy               8, 12, 1
    sce_espr3d_on           0, 4118, 0, 2560, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0

off_0F3A:
    default                 0
    work_copy               8, 12, 1
    sce_espr3d_on           0, 4118, 0, 2048, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0
    eswitch                 0

off_0F5A:
    else                    0, off_0FAC

off_0F5E:
    switch                  10, off_0FAA
    case                    0, off_0F68, 1

off_0F68:
    case                    0, off_0F8A, 13
    work_copy               8, 12, 1
    sce_espr3d_on           0, 22, 0, 2560, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0

off_0F8A:
    default                 0
    work_copy               8, 12, 1
    sce_espr3d_on           0, 22, 0, 2048, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0
    eswitch                 0

off_0FAA:
    nop
    nop

off_0FAC:
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_SUB, V_TEMP, 200
    copy                    V_08, V_TEMP
    nop
    copy                    V_TEMP, V_0A
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_0A, V_TEMP
    nop
    next                    0

off_0FCA:
    evt_end                 0

.proc main_12
    save                    V_09, 1
    gosub                   main_13
    sleep                   10, 13
    for                     0, off_0FF2, 6
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_09, V_TEMP
    nop
    gosub                   main_13
    sleep                   10, 20
    next                    0

off_0FF2:
    sleep                   10, 4
    sleep                   10, 90
    sleep                   10, 4
    for                     0, off_101A, 6
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_09, V_TEMP
    nop
    gosub                   main_13
    sleep                   10, 20
    next                    0

off_101A:
    evt_end                 0

.proc main_13
    save                    V_08, -22250
    save                    V_0A, 13
    sce_espr_kill           22, 0, 0, 0
    sce_espr_kill           22, 8, 0, 0
    for                     0, off_10FE, 13
    if                      0, off_1092
    work_copy               10, 4, 1
    cmp                     0, V_09, CMP_NE, 0
    switch                  10, off_108E
    case                    0, off_104C, 1

off_104C:
    case                    0, off_106E, 13
    work_copy               8, 12, 1
    sce_espr3d_on           0, 22, 0, 2560, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0

off_106E:
    default                 0
    work_copy               8, 12, 1
    sce_espr3d_on           0, 22, 0, 2048, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0
    eswitch                 0

off_108E:
    else                    0, off_10E0

off_1092:
    switch                  10, off_10DE
    case                    0, off_109C, 1

off_109C:
    case                    0, off_10BE, 13
    work_copy               8, 12, 1
    sce_espr3d_on           0, 2070, 0, 2560, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0

off_10BE:
    default                 0
    work_copy               8, 12, 1
    sce_espr3d_on           0, 2070, 0, 2048, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0
    eswitch                 0

off_10DE:
    nop
    nop

off_10E0:
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_SUB, V_TEMP, 200
    copy                    V_08, V_TEMP
    nop
    copy                    V_TEMP, V_0A
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_0A, V_TEMP
    nop
    next                    0

off_10FE:
    evt_end                 0

.proc main_14
    cut_chg                 2
    message_on              0, ID_MSG_5, 0, 255, 239
    evt_next
    cut_chg                 0
    cut_auto                1
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_15
    nop_8c                  0, 150, 80, 23, 0, 0, 0
    nop_8c                  0, 80, 60, 90, 0, 23, 0
    nop_8c                  0, 150, 0, 25, 0, 113, 0
    evt_end                 0

.proc main_16
    nop_8c                  0, 150, 80, 26, 0, 0, 0
    nop_8c                  0, 80, 60, 90, 0, 26, 0
    nop_8c                  0, 150, 0, 16, 0, 116, 0
    nop_8b                  200, 3, 0, 152, 0
    nop_8b                  150, 12, 0, 175, 0
    nop_8c                  0, 150, 80, 23, 0, 217, 0
    nop_8c                  0, 80, 60, 90, 0, 240, 0
    nop_8c                  0, 150, 0, 25, 0, 74, 1
    evt_end                 0

.proc main_17
    cut_chg                 2
    message_on              0, ID_MSG_4, 0, 255, 239
    evt_next
    nop
    if                      0, off_11FC
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    set                     FG_STATUS, 27, 1
    set                     FG_STOP, 7, 1
    se_on                   2, 12, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              2, 2, 68
    nop
    pos_set                 0, -23690, 0, -23700
    dir_set                 0, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -24515, 0, -22690
    dir_set                 0, 0, 0, 0
    evt_kill                7
    evt_next
    cut_chg                 3
    nop
    evt_exec                255, I_GOSUB, main_12
    gosub                   main_16
    gosub                   main_05
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              12, 0, 4
    nop
    sleep                   10, 10
    aot_reset               ID_AOT_2, SCE_DOOR, SAT_PL | SAT_FRONT, 106, 250, 0, 0, 240, 231
    work_set                WK_SPLAYER, 0
    plc_motion              12, 0, 4
    nop
    else                    0, off_1208

off_11FC:
    cut_chg                 0
    cut_auto                1
    evt_kill                7
    set                     FG_STOP, 7, 0
    nop
    nop

off_1208:
    evt_end                 0

.proc main_18
    cut_chg                 2
    evt_exec                7, I_GOSUB, main_0E
    evt_next
    nop
    message_on              0, ID_MSG_2, 0, 255, 239
    evt_next
    nop
    message_on              0, ID_MSG_3, 0, 255, 239
    evt_next
    nop
    if                      0, off_1272
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_STOP, 7, 1
    sce_item_lost           ITEM_MASTERKEY
    se_on                   2, 10, 1, 0, 0, 0
    gosub                   main_0B
    sleep                   10, 110
    if                      0, off_125E
    ck                      FG_STATUS, 3, 0
    aot_reset               ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, I_GOSUB, main_14, 0, 0
    evt_kill                7
    evt_chain               0, 24, 20
    else                    0, off_126E

off_125E:
    aot_reset               ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, I_GOSUB, main_17, 0, 0
    evt_chain               0, 24, 23
    nop
    nop

off_126E:
    else                    0, off_127A

off_1272:
    cut_chg                 0
    cut_auto                1
    evt_kill                7
    nop
    nop

off_127A:
    evt_end                 0

.proc main_19
    if                      0, off_12EA
    ck                      FG_COMMON, 139, 0
    do                      0, off_1292
    evt_next
    nop
    edwhile                 off_1292
    cmp                     0, V_USED_ITEM, CMP_NE, 98

off_1292:
    set                     FG_STOP, 7, 1
    cut_chg                 2
    evt_exec                7, I_GOSUB, main_0E
    evt_next
    sce_item_lost           ITEM_MASTERKEY
    nop
    se_on                   2, 10, 1, 0, 0, 0
    gosub                   main_0B
    sleep                   10, 110
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    if                      0, off_12D8
    ck                      FG_STATUS, 3, 0
    aot_reset               ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, I_GOSUB, main_14, 0, 0
    evt_kill                7
    evt_chain               0, 24, 20
    else                    0, off_12E8

off_12D8:
    aot_reset               ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, I_GOSUB, main_17, 0, 0
    evt_chain               0, 24, 23
    nop
    nop

off_12E8:
    endif
    nop

off_12EA:
    evt_end                 0
