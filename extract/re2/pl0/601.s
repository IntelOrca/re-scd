.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20870, -25250, 1800, 3900, -18650, 0, -1220, 0, 5, 2, 4, 0, 39, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20870, -25250, 1800, 3900, -20920, 0, -18400, 0, 5, 6, 6, 0, 39, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20870, -25250, 1800, 3900, -1430, 0, -6160, 1024, 6, 0, 5, 0, 39, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_056A
    ck                      FG_GENERAL_1, 130, 1
    set                     FG_GENERAL_1, 154, 1
    endif
    nop

off_056A:
    if                      0, off_0628
    ck                      FG_3, 193, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20570, -26610, 1800, 1500, 9, 0, I_GOSUB, main_06, 0, 0
    if                      0, off_05DE
    keep_item_ck            ITEM_MASTERKEY
    if                      0, off_05C4
    ck                      FG_GENERAL_1, 139, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 8, 0, I_GOSUB, main_1A, 0, 0
    aot_set                 6, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 10, 0, ITEM_MASTERKEY, 0, aot, 0
    evt_exec                3, I_GOSUB, main_1B
    else                    0, off_05DA

off_05C4:
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 8, 0, I_GOSUB, main_14, 0, 0
    nop
    nop

off_05DA:
    else                    0, off_05F4

off_05DE:
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 8, 0, I_GOSUB, main_0D, 0, 0
    nop
    nop

off_05F4:
    if                      0, off_060C
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    aot_reset               0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    else                    0, off_0618

off_060C:
    aot_reset               1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0618:
    aot_reset               2, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    gosub                   main_07
    else                    0, off_06DA

off_0628:
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20570, -26610, 1800, 1500, 1, 0, 0, 0, 255, 255
    if                      0, off_0674
    ck                      FG_GENERAL_1, 139, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 9, 0, I_GOSUB, main_1A, 0, 0
    aot_set                 6, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 10, 0, ITEM_MASTERKEY, 0, aot, 0
    evt_exec                3, I_GOSUB, main_1B
    else                    0, off_068A

off_0674:
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27385, -24450, 1400, 1900, 9, 0, I_GOSUB, main_17, 0, 0
    nop
    nop

off_068A:
    aot_set                 5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20870, -25250, 1800, 3900, 6, 0, 0, 0, 255, 255
    aot_reset               0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               2, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    sce_em_set              0, 255, ENEMY_SHERRY_JACKET, 0, 0, 0, 0, 0, 255, -23520, 900, -20829, 3072, 257, 84
    gosub                   main_07
    evt_exec                8, I_GOSUB, main_19
    nop
    nop

off_06DA:
    sce_espr3d_on           0, 534, 0, 8192, -16300, 4000, -26900, 0, 1024, 1600, 0
    evt_end                 0

.proc aot
    gosub                   main_0C
    evt_end                 0

.proc main_02
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    cut_chg                 3
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -23780, 0, -23470
    dir_set                 0, 0, 0, 0
    gosub                   main_15
    if                      0, off_072A
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    evt_exec                255, I_GOSUB, main_0F
    gosub                   main_03
    else                    0, off_0732

off_072A:
    evt_exec                255, I_GOSUB, main_10
    gosub                   main_04
    nop
    nop

off_0732:
    sleep                   10, 20
    if                      0, off_074E
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_FRONT, 38, 183, 0, 0, 60, 251
    else                    0, off_075A

off_074E:
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_FRONT, 72, 174, 0, 0, 32, 184
    nop
    nop

off_075A:
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
    for                     0, off_07AE, 100
    sce_shake_on            0, 6
    evt_next
    next                    0

off_07AE:
    for                     0, off_07C6, 3
    sce_shake_on            1, 7
    evt_next
    sce_shake_on            0, 7
    evt_next
    sce_shake_on            0, 6
    evt_next
    sce_shake_on            1, 6
    evt_next
    next                    0

off_07C6:
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
    for                     0, off_0852, 100
    sce_shake_on            0, 250
    evt_next
    next                    0

off_0852:
    for                     0, off_086A, 3
    sce_shake_on            1, 249
    evt_next
    sce_shake_on            0, 249
    evt_next
    sce_shake_on            0, 250
    evt_next
    sce_shake_on            1, 250
    evt_next
    next                    0

off_086A:
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
    for                     0, off_0904, 100
    sce_shake_on            0, 247
    evt_next
    next                    0

off_0904:
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
    for                     0, off_09A2, 3
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

off_09A2:
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
    message_on              0, 0, 0, 255, 239
    evt_next
    nop
    if                      0, off_0B90
    ck                      FG_INPUT, F_QUESTION, 0
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    set                     FG_STATE, 7, 1
    se_on                   2, 12, 1, 0, 0, 0
    sce_espr_kill           22, 4, 0, 0
    nop
    if                      0, off_0AFA
    cmp                     0, V_LAST_RDT, CMP_EQ, 1542
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    else                    0, off_0B80

off_0AFA:
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 5142, 0, 2048, -20520, -2592, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 2048, -20520, -2754, -25704, 0, 1024, 0, 0
    nop
    nop

off_0B80:
    set                     FG_STATE, 7, 0
    sleep                   10, 20
    evt_exec                2, I_GOSUB, main_02
    else                    0, off_0BB2

off_0B90:
    sce_espr_kill           22, 4, 0, 0
    nop
    sce_espr3d_on           0, 534, 0, 8192, -16300, 4000, -26900, 0, 1024, 1600, 0
    cut_chg                 0
    cut_auto                1
    nop
    nop

off_0BB2:
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
    set                     FG_GENERAL_1, 139, 1
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
    if                      0, off_0D0E
    cmp                     0, V_CUT, CMP_EQ, 0
    if                      0, off_0D02
    ck                      FG_GENERAL_2, 0, 0
    gosub                   main_08
    else                    0, off_0D06

off_0D02:
    gosub                   main_0A
    nop
    nop

off_0D06:
    set                     FG_GENERAL_2, 0, 0
    else                    0, off_0D30

off_0D0E:
    if                      0, off_0D2E
    ck                      FG_GENERAL_2, 0, 0
    if                      0, off_0D24
    ck                      FG_GENERAL_1, 139, 0
    gosub                   main_07
    else                    0, off_0D28

off_0D24:
    gosub                   main_09
    nop
    nop

off_0D28:
    set                     FG_GENERAL_2, 0, 1
    endif
    nop

off_0D2E:
    nop
    nop

off_0D30:
    evt_end                 0

.proc main_0D
    cut_auto                0
    cut_chg                 2
    evt_next
    nop
    message_on              0, 2, 0, 255, 239
    evt_next
    cut_chg                 4
    cut_auto                1
    nop
    evt_end                 0

.proc main_0E
    save                    V_07, 74

off_0D4A:
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
    if                      0, off_0E76
    cmp                     0, V_07, CMP_GE, 154
    save                    V_07, 48
    endif
    nop

off_0E76:
    evt_next
    nop
    goto                    255, 255, 0, off_0D4A
    evt_end                 0

.proc main_0F
    save                    V_09, 13
    gosub                   main_11
    sleep                   10, 13
    for                     0, off_0EA6, 12
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_09, V_TEMP
    nop
    gosub                   main_11
    sleep                   10, 10
    next                    0

off_0EA6:
    evt_end                 0

.proc main_10
    save                    V_09, 1
    gosub                   main_11
    sleep                   10, 13
    for                     0, off_0ECE, 12
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_09, V_TEMP
    nop
    gosub                   main_11
    sleep                   10, 10
    next                    0

off_0ECE:
    evt_end                 0

.proc main_11
    save                    V_08, -22250
    save                    V_0A, 13
    sce_espr_kill           22, 0, 0, 0
    sce_espr_kill           22, 16, 0, 0
    for                     0, off_0FB2, 13
    if                      0, off_0F46
    work_copy               10, 4, 1
    cmp                     0, V_09, CMP_NE, 0
    switch                  10, off_0F42
    case                    0, off_0F00, 1

off_0F00:
    case                    0, off_0F22, 13
    work_copy               8, 12, 1
    sce_espr3d_on           0, 4118, 0, 2560, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0

off_0F22:
    default                 0
    work_copy               8, 12, 1
    sce_espr3d_on           0, 4118, 0, 2048, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0
    eswitch                 0

off_0F42:
    else                    0, off_0F94

off_0F46:
    switch                  10, off_0F92
    case                    0, off_0F50, 1

off_0F50:
    case                    0, off_0F72, 13
    work_copy               8, 12, 1
    sce_espr3d_on           0, 22, 0, 2560, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0

off_0F72:
    default                 0
    work_copy               8, 12, 1
    sce_espr3d_on           0, 22, 0, 2048, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0
    eswitch                 0

off_0F92:
    nop
    nop

off_0F94:
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

off_0FB2:
    evt_end                 0

.proc main_12
    save                    V_09, 1
    gosub                   main_13
    sleep                   10, 13
    for                     0, off_0FDA, 6
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_09, V_TEMP
    nop
    gosub                   main_13
    sleep                   10, 20
    next                    0

off_0FDA:
    sleep                   10, 4
    sleep                   10, 90
    sleep                   10, 4
    for                     0, off_1002, 6
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_09, V_TEMP
    nop
    gosub                   main_13
    sleep                   10, 20
    next                    0

off_1002:
    evt_end                 0

.proc main_13
    save                    V_08, -22250
    save                    V_0A, 13
    sce_espr_kill           22, 0, 0, 0
    sce_espr_kill           22, 8, 0, 0
    for                     0, off_10E6, 13
    if                      0, off_107A
    work_copy               10, 4, 1
    cmp                     0, V_09, CMP_NE, 0
    switch                  10, off_1076
    case                    0, off_1034, 1

off_1034:
    case                    0, off_1056, 13
    work_copy               8, 12, 1
    sce_espr3d_on           0, 22, 0, 2560, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0

off_1056:
    default                 0
    work_copy               8, 12, 1
    sce_espr3d_on           0, 22, 0, 2048, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0
    eswitch                 0

off_1076:
    else                    0, off_10C8

off_107A:
    switch                  10, off_10C6
    case                    0, off_1084, 1

off_1084:
    case                    0, off_10A6, 13
    work_copy               8, 12, 1
    sce_espr3d_on           0, 2070, 0, 2560, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0

off_10A6:
    default                 0
    work_copy               8, 12, 1
    sce_espr3d_on           0, 2070, 0, 2048, -20400, -4100, 0, 1024, 1024, 0, 0
    break                   0
    eswitch                 0

off_10C6:
    nop
    nop

off_10C8:
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

off_10E6:
    evt_end                 0

.proc main_14
    cut_chg                 2
    message_on              0, 5, 0, 255, 239
    evt_next
    cut_chg                 0
    cut_auto                1
    set                     FG_STATE, 7, 0
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
    message_on              0, 4, 0, 255, 239
    evt_next
    nop
    if                      0, off_11E0
    ck                      FG_INPUT, F_QUESTION, 0
    aot_reset               4, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    set                     FG_GAME, 27, 1
    set                     FG_STATE, 7, 1
    se_on                   2, 12, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -23690, 0, -23700
    dir_set                 0, 0, 0, 0
    weapon_chg              0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 64
    work_set                WK_SPLAYER, 0
    plc_motion              0, 15, 64
    evt_next
    work_set                WK_PLAYER, 0
    plc_stop
    nop
    evt_kill                7
    evt_exec                5, I_GOSUB, main_18
    evt_next
    cut_chg                 3
    nop
    evt_exec                255, I_GOSUB, main_12
    gosub                   main_16
    gosub                   main_05
    sleep                   10, 20
    aot_reset               2, SCE_DOOR, SAT_PL | SAT_FRONT, 106, 250, 0, 0, 240, 231
    work_set                WK_PLAYER, 0
    plc_motion              10, 15, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 0, 4
    else                    0, off_11EC

off_11E0:
    cut_chg                 0
    cut_auto                1
    evt_kill                7
    set                     FG_STATE, 7, 0
    nop
    nop

off_11EC:
    evt_end                 0

.proc main_18

off_11EE:
    evt_next
    work_set                WK_SPLAYER, 0
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             0, V_TEMP
    nop
    super_on                0, 64, 0, 97, 1, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0
    goto                    255, 255, 0, off_11EE
    evt_end                 0

.proc main_19
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -23360, 0, -22000
    dir_set                 0, 0, 3072, 0
    plc_motion              0, 16, 68
    sleep                   10, 5
    plc_motion              1, 6, 128
    sleep                   10, 25
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    nop
    evt_end                 0

.proc main_1A
    cut_chg                 2
    evt_exec                7, I_GOSUB, main_0E
    evt_next
    nop
    message_on              0, 2, 0, 255, 239
    evt_next
    nop
    message_on              0, 3, 0, 255, 239
    evt_next
    nop
    if                      0, off_12CA
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_STATE, 7, 1
    sce_item_ck_lost        ITEM_MASTERKEY, 1
    nop
    se_on                   2, 10, 1, 0, 0, 0
    gosub                   main_0B
    sleep                   10, 110
    aot_reset               6, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    if                      0, off_12B6
    ck                      FG_3, 193, 0
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, I_GOSUB, main_14, 0, 0
    evt_kill                7
    evt_chain               0, 24, 20
    else                    0, off_12C6

off_12B6:
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, I_GOSUB, main_17, 0, 0
    evt_chain               0, 24, 23
    nop
    nop

off_12C6:
    else                    0, off_12D2

off_12CA:
    cut_chg                 0
    cut_auto                1
    evt_kill                7
    nop
    nop

off_12D2:
    evt_end                 0

.proc main_1B
    if                      0, off_1342
    ck                      FG_GENERAL_1, 139, 0
    do                      0, off_12EA
    evt_next
    nop
    edwhile                 off_12EA
    cmp                     0, V_USED_ITEM, CMP_NE, 98

off_12EA:
    set                     FG_STATE, 7, 1
    cut_chg                 2
    evt_exec                7, I_GOSUB, main_0E
    evt_next
    sce_item_ck_lost        ITEM_MASTERKEY, 1
    se_on                   2, 10, 1, 0, 0, 0
    gosub                   main_0B
    sleep                   10, 110
    aot_reset               6, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    if                      0, off_1330
    ck                      FG_3, 193, 0
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, I_GOSUB, main_14, 0, 0
    evt_kill                7
    evt_chain               0, 24, 20
    else                    0, off_1340

off_1330:
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 6, 0, I_GOSUB, main_17, 0, 0
    evt_chain               0, 24, 23
    nop
    nop

off_1340:
    endif
    nop

off_1342:
    evt_end                 0
