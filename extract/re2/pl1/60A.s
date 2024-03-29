.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11021, -19423, 3000, 1600, -25015, 0, -2792, 1064, 5, 11, 0, 0, 41, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17721, -19423, 2400, 1600, -12839, 0, -6247, 832, 5, 9, 2, 0, 53, 7, 0, 0, UNLOCKED, 0
    obj_model_set           ID_OBJ_0, 0, 130, 1, 3, 0, 0, 10, 6, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 130, 7, 3, 0, 0, 10, 6, 20000, 20000, 20000, -135, 2727, -132, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 130, 3, 3, 0, 0, 10, 6, 20000, 20000, 20000, 12, -384, 64, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 130, 2, 3, 0, 0, 10, 6, 20000, 20000, 20000, 0, -128, 64, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_11, 0, 0
    if                      0, off_0742
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_073E
    ck                      FG_COMMON, 131, 0
    gosub                   main_15
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    gosub                   main_0F
    if                      0, off_073C
    ck                      FG_ENEMY_2, 19, 0
    evt_exec                5, I_GOSUB, main_06
    endif
    nop

off_073C:
    endif
    nop

off_073E:
    else                    0, off_077A

off_0742:
    if                      0, off_0774
    ck                      FG_ZAPPING, 13, 0
    if                      0, off_0770
    ck                      FG_COMMON, 131, 0
    gosub                   main_15
    aot_reset               ID_AOT_1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    gosub                   main_0F
    if                      0, off_076E
    ck                      FG_ENEMY_2, 19, 0
    evt_exec                5, I_GOSUB, main_06
    endif
    nop

off_076E:
    endif
    nop

off_0770:
    else                    0, off_0778

off_0774:
    gosub                   main_10
    nop
    nop

off_0778:
    nop
    nop

off_077A:
    gosub                   main_1B
    gosub                   main_12
    gosub                   main_0E
    evt_exec                255, I_GOSUB, main_02
    evt_exec                255, I_GOSUB, main_1A
    evt_end                 0

.proc aot
    if                      0, off_07AE
    ck                      FG_COMMON, 131, 0
    if                      0, off_07AC
    ck                      FG_ZAPPING, 13, 0
    if                      0, off_07AA
    cmp                     0, V_USED_ITEM, CMP_EQ, 47
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_07AA:
    endif
    nop

off_07AC:
    endif
    nop

off_07AE:
    if                      0, off_07CC
    ck                      FG_ROOM, 20, 1
    if                      0, off_07CA
    ck                      FG_COMMON, 170, 0
    set                     FG_COMMON, 170, 1
    message_on              0, ID_MSG_3, 0, 0, 255
    endif
    nop

off_07CA:
    endif
    nop

off_07CC:
    evt_end                 0

.proc main_02
    evt_next
    work_set                WK_PLAYER, 0

off_07D2:
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    copy                    V_06, V_TEMP
    nop
    if                      0, off_083C
    cmp                     0, V_06, CMP_GE, 9
    if                      0, off_083A
    cmp                     0, V_06, CMP_LE, 11
    if                      0, off_0838
    member_cmp              0, 3, 0, 5, 0
    if                      0, off_0836
    member_cmp              0, 4, 0, 2, 0
    if                      0, off_0834
    sce_key_ck              1, 32
    if                      0, off_0832
    ck                      FG_ROOM, 32, 1
    if                      0, off_0830
    ck                      FG_USE, 47, 0
    if                      0, off_082E
    unk                     129, 1, 0
    nop
    evt_exec                255, I_GOSUB, main_03
    endif
    nop

off_082E:
    endif
    nop

off_0830:
    endif
    nop

off_0832:
    endif
    nop

off_0834:
    endif
    nop

off_0836:
    endif
    nop

off_0838:
    endif
    nop

off_083A:
    endif
    nop

off_083C:
    evt_next
    nop
    goto                    255, 255, 0, off_07D2
    evt_end                 0

.proc main_03
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_AND, V_TEMP, 4095
    copy                    V_07, V_TEMP
    nop
    if                      0, off_0880
    member_cmp              0, 9, 0, 5, 0
    if                      0, off_087E
    cmp                     0, V_07, CMP_LE, 2700
    if                      0, off_087C
    cmp                     0, V_07, CMP_GE, 2100
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_087C:
    endif
    nop

off_087E:
    endif
    nop

off_0880:
    if                      0, off_08A8
    member_cmp              0, 9, 0, 6, 0
    if                      0, off_08A6
    cmp                     0, V_07, CMP_LE, 2100
    if                      0, off_08A4
    cmp                     0, V_07, CMP_GE, 1600
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_08A4:
    endif
    nop

off_08A6:
    endif
    nop

off_08A8:
    if                      0, off_08D0
    member_cmp              0, 9, 0, 7, 0
    if                      0, off_08CE
    cmp                     0, V_07, CMP_LE, 1400
    if                      0, off_08CC
    cmp                     0, V_07, CMP_GE, 1000
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_08CC:
    endif
    nop

off_08CE:
    endif
    nop

off_08D0:
    evt_end                 0

.proc main_04
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    evt_exec                255, I_GOSUB, main_07
    cut_chg                 2
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_30, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    while                   4, off_091E
    ck                      FG_ROOM, 1, 0
    evt_next
    nop
    ewhile                  0

off_091E:
    sleep                   10, 74
    evt_exec                255, I_GOSUB, main_0C
    sleep                   10, 20
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 1
    sleep                   10, 100
    evt_exec                255, I_GOSUB, main_0A
    se_on                   2, 268, 1, 0, 0, 0
    sleep                   10, 16
    gosub                   main_0B
    sleep                   10, 12
    sce_fade_set            1, 2, 7, 255, 7
    set                     FG_ROOM, 3, 1
    sleep                   10, 15
    for                     0, off_096C, 30
    sce_fade_adjust         1, 255, 127
    evt_next
    nop
    next                    0

off_096C:
    sce_fade_set            1, 2, 7, 255, 247
    cut_auto                1
    sleep                   10, 46
    set                     FG_STATUS, 27, 0
    sleep                   10, 10
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_05
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    evt_exec                255, I_GOSUB, main_08
    cut_chg                 2
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_30, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    while                   4, off_09D2
    ck                      FG_ROOM, 1, 0
    evt_next
    nop
    ewhile                  0

off_09D2:
    sleep                   10, 74
    evt_exec                255, I_GOSUB, main_0C
    sleep                   10, 20
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 1
    sleep                   10, 100
    evt_exec                255, I_GOSUB, main_0A
    se_on                   2, 268, 1, 0, 0, 0
    sleep                   10, 16
    gosub                   main_0B
    sleep                   10, 12
    sce_fade_set            1, 2, 7, 255, 7
    set                     FG_ROOM, 3, 1
    sleep                   10, 15
    for                     0, off_0A20, 30
    sce_fade_adjust         1, 255, 127
    evt_next
    nop
    next                    0

off_0A20:
    sce_fade_set            1, 2, 7, 255, 247
    cut_auto                1
    sleep                   10, 46
    set                     FG_STATUS, 27, 0
    sleep                   10, 10
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_06
    sleep                   10, 3
    save                    V_08, 0
    while                   4, off_0B02
    ck                      FG_ROOM, 0, 0
    if                      0, off_0A58
    ck                      FG_ENEMY_2, 19, 1
    set                     FG_ROOM, 0, 1
    endif
    nop

off_0A58:
    if                      0, off_0A66
    ck                      FG_COMMON, 131, 1
    set                     FG_ROOM, 0, 1
    endif
    nop

off_0A66:
    if                      0, off_0A74
    ck                      FG_ZAPPING, 13, 1
    set                     FG_ROOM, 0, 1
    endif
    nop

off_0A74:
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_08, V_TEMP
    nop
    if                      0, off_0AFE
    cmp                     0, V_08, CMP_LE, 0
    if                      0, off_0ACA
    cmp                     0, V_RNG, CMP_GE, 30720
    if                      0, off_0AB4
    cmp                     0, V_RNG, 6, 1
    se_on                   2, 266, 3, 0, 0, 0
    save                    V_08, 30
    else                    0, off_0AC6

off_0AB4:
    se_on                   2, 266, 3, 0, 0, 0
    save                    V_08, 20
    nop
    nop

off_0AC6:
    else                    0, off_0AFC

off_0ACA:
    if                      0, off_0AE8
    cmp                     0, V_RNG, 6, 1
    se_on                   2, 266, 3, 0, 0, 0
    save                    V_08, 70
    else                    0, off_0AFA

off_0AE8:
    se_on                   2, 266, 3, 0, 0, 0
    save                    V_08, 50
    nop
    nop

off_0AFA:
    nop
    nop

off_0AFC:
    endif
    nop

off_0AFE:
    evt_next
    nop
    ewhile                  0

off_0B02:
    if                      0, off_0B10
    ck                      FG_STATUS, F_SCENARIO, 0
    set                     FG_ZAPPING, 13, 1
    endif
    nop

off_0B10:
    set                     FG_COMMON, 131, 1
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_30, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 217, 205, 0, 0, 153, 231
    evt_end                 0

.proc main_07
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -14942, 0, -15176
    member_set              M_Y_DIR, 1392
    plc_motion              1, 6, 64
    plc_cnt                 24
    sleep                   10, 1
    se_on                   2, 271, 1, 0, 0, 0
    sleep                   10, 60
    se_on                   2, 267, 1, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0D
    evt_exec                255, I_GOSUB, main_09
    plc_motion              1, 6, 192
    sleep                   10, 25
    plc_dest                0, 7, 2, -14389, -14295
    while                   4, off_0BAC
    ck                      FG_ROOM, 2, 0
    evt_next
    nop
    ewhile                  0

off_0BAC:
    plc_ret
    nop
    evt_end                 0

.proc main_08
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 30
    se_on                   2, 267, 1, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0D
    evt_exec                255, I_GOSUB, main_09
    plc_ret
    nop
    evt_end                 0

.proc main_09
    sce_espr_on             0, 14, 0, 4096, -15900, 0, -15900, 0
    evt_next
    nop
    sce_espr_on             0, 14, 0, 4352, -14900, 0, -15900, 0
    sce_espr_on             0, 14, 0, 6144, -15400, 0, -15900, 0
    sleep                   10, 2
    sce_espr_on             0, 14, 0, 6656, -15700, 0, -16400, 0
    sce_espr_on             0, 14, 0, 4864, -15200, 0, -16400, 0
    sce_espr_on             0, 14, 0, 4608, -15700, 0, -16400, 0
    sleep                   10, 2
    sce_espr_on             0, 14, 0, 5632, -14900, 0, -16900, 0
    sce_espr_on             0, 14, 0, 7168, -15400, 0, -16900, 0
    sce_espr_on             0, 14, 0, 4608, -15900, 0, -16900, 0
    sleep                   10, 2
    sce_espr_on             0, 14, 0, 4608, -14900, 0, -16900, 0
    sce_espr_on             0, 14, 0, 5120, -15400, 0, -16900, 0
    sce_espr_on             0, 14, 0, 6656, -15900, 0, -16900, 0
    sleep                   10, 2
    sce_espr_on             0, 14, 0, 4608, -16400, 0, -17300, 0
    sce_espr_on             0, 14, 0, 4608, -14900, 0, -17400, 0
    sce_espr_on             0, 14, 0, 7680, -15400, 0, -17400, 0
    sce_espr_on             0, 14, 0, 7424, -15900, 0, -17400, 0
    sleep                   10, 2
    save                    V_04, 0
    for                     0, off_0D2A, 4
    work_copy               4, 10, 1
    sce_espr_on             0, 14, 0, 4096, -16800, 0, -17600, 0
    work_copy               4, 10, 1
    sce_espr_on             0, 14, 0, 5120, -16300, 0, -17600, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 400
    copy                    V_04, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_0D2A:
    for                     0, off_0D56, 3
    work_copy               4, 10, 1
    sce_espr_on             0, 14, 0, 4096, -16800, 0, -17600, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 400
    copy                    V_04, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_0D56:
    set                     FG_ROOM, 1, 1
    evt_end                 0

.proc main_0A
    sce_espr_on             0, 1029, 0, 4864, -15900, 0, -15900, 0
    evt_next
    nop
    sce_espr_on             0, 1029, 0, 5120, -14900, 0, -15900, 0
    sce_espr_on             0, 1029, 0, 6912, -15400, 0, -15900, 0
    sleep                   10, 2
    sce_espr_on             0, 1029, 0, 7424, -15700, 0, -16400, 0
    sce_espr_on             0, 1029, 0, 5632, -15200, 0, -16400, 0
    sce_espr_on             0, 1029, 0, 5376, -15700, 0, -16400, 0
    sce_espr_on             0, 516, 0, 6656, -16400, 0, -17300, 0
    sleep                   10, 2
    sce_espr_on             0, 1029, 0, 6400, -14900, 0, -16900, 0
    sce_espr_on             0, 1029, 0, 7936, -15400, 0, -16900, 0
    sce_espr_on             0, 1029, 0, 5376, -15900, 0, -16900, 0
    sleep                   10, 2
    sce_espr_on             0, 1029, 0, 5376, -14900, 0, -16900, 0
    sce_espr_on             0, 1029, 0, 5888, -15400, 0, -16900, 0
    sce_espr_on             0, 1029, 0, 7424, -15900, 0, -16900, 0
    sleep                   10, 2
    sce_espr_on             0, 1029, 0, 5376, -16400, 0, -17300, 0
    sce_espr_on             0, 1029, 0, 5376, -14900, 0, -17400, 0
    sce_espr_on             0, 1029, 0, 8448, -15400, 0, -17400, 0
    sce_espr_on             0, 1029, 0, 8192, -15900, 0, -17400, 0
    save                    V_04, 0
    for                     0, off_0EC2, 4
    work_copy               4, 10, 1
    sce_espr_on             0, 1029, 0, 4864, -16800, 0, -17600, 0
    work_copy               4, 10, 1
    sce_espr_on             0, 1029, 0, 5888, -16300, 0, -17600, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 400
    copy                    V_04, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_0EC2:
    for                     0, off_0EEE, 3
    work_copy               4, 10, 1
    sce_espr_on             0, 1029, 0, 4864, -16800, 0, -17600, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 400
    copy                    V_04, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_0EEE:
    sce_espr_kill           14, 0, 0, 0
    nop
    evt_end                 0

.proc main_0B
    sce_espr_on             0, 260, 0, 4608, -15900, 0, -15900, 0
    sce_espr_kill           4, 2, 0, 0
    evt_next
    sce_espr_on             0, 260, 0, 4864, -14900, 0, -15900, 0
    sce_espr_on             0, 260, 0, 6656, -15400, 0, -15900, 0
    sleep                   10, 2
    sce_espr_on             0, 260, 0, 7168, -15700, 0, -16400, 0
    sce_espr_on             0, 260, 0, 5376, -15200, 0, -16400, 0
    sce_espr_on             0, 260, 0, 5120, -15700, 0, -16400, 0
    sleep                   10, 2
    sce_espr_on             0, 260, 0, 6144, -14900, 0, -16900, 0
    sce_espr_on             0, 260, 0, 7680, -15400, 0, -16900, 0
    sce_espr_on             0, 260, 0, 5120, -15900, 0, -16900, 0
    sleep                   10, 2
    sce_espr_on             0, 260, 0, 5120, -14900, 0, -16900, 0
    sce_espr_on             0, 260, 0, 5632, -15400, 0, -16900, 0
    sce_espr_on             0, 260, 0, 7168, -15900, 0, -16900, 0
    sleep                   10, 2
    sce_espr_on             0, 260, 0, 5120, -16400, 0, -17300, 0
    sce_espr_on             0, 260, 0, 5120, -14900, 0, -17400, 0
    sce_espr_on             0, 260, 0, 7680, -15400, 0, -17400, 0
    sce_espr_on             0, 260, 0, 7424, -15900, 0, -17400, 0
    sleep                   10, 2
    save                    V_04, 0
    for                     0, off_1054, 4
    work_copy               4, 10, 1
    sce_espr_on             0, 260, 0, 4096, -16800, 0, -17600, 0
    work_copy               4, 10, 1
    sce_espr_on             0, 260, 0, 5120, -16300, 0, -17600, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 400
    copy                    V_04, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1054:
    for                     0, off_1080, 3
    work_copy               4, 10, 1
    sce_espr_on             0, 260, 0, 4096, -16800, 0, -17600, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 400
    copy                    V_04, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1080:
    evt_end                 0

.proc main_0C
    sce_espr_on             0, 5376, 0, 2560, -16500, -5800, -15800, 0
    sleep                   10, 25
    sce_espr_on             0, 5376, 0, 2560, -16500, -5800, -15800, 0
    sleep                   10, 3
    sce_espr_on             0, 5376, 0, 2560, -16500, -5800, -15800, 0
    sleep                   10, 40
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -19537, -4950, -16209
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -19787, -4870, -16259
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -19837, -4850, -16359
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    pos_set                 0, -19787, -4850, -16259
    se_on                   2, 270, 4, 0, 0, 0
    for                     0, off_1142, 4
    save                    V_05, 0
    for                     0, off_113E, 4
    work_copy               5, 2, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_TEMP, M_X_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 1125
    member_set2             M_X_POS, V_TEMP
    nop
    member_copy             V_TEMP, M_Z_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 300
    member_set2             M_Z_POS, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_05, V_TEMP
    nop
    next                    0

off_113E:
    evt_next
    nop
    next                    0

off_1142:
    while                   4, off_114E
    ck                      FG_ROOM, 3, 0
    evt_next
    nop
    ewhile                  0

off_114E:
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, 20000, 20000, 2000
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, 20000, 20000, 2000
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, 20000, 20000, 2000
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    pos_set                 0, 20000, 20000, 2000
    evt_end                 0

.proc main_0D
    light_pos_set2          2, 1, 11, -16700
    light_pos_set2          2, 1, 12, -500
    light_pos_set2          2, 1, 13, -16700
    light_pos_set2          1, 1, 11, -16700
    light_pos_set2          1, 1, 12, -500
    light_pos_set2          1, 1, 13, -16700
    light_color_set2        2, 1, 248, 68, 38
    light_color_set2        1, 1, 248, 68, 38
    while                   4, off_11E6
    ck                      FG_ROOM, 3, 0
    light_kido_set2         0, 2, 1, 5000
    light_kido_set2         0, 1, 1, 5000
    evt_next
    nop
    light_kido_set2         0, 2, 1, 3000
    light_kido_set2         0, 1, 1, 3000
    sleep                   10, 2
    light_kido_set2         0, 2, 1, 4000
    light_kido_set2         0, 1, 1, 4000
    evt_next
    nop
    ewhile                  0

off_11E6:
    light_pos_set2          1, 1, 11, -11750
    light_pos_set2          1, 1, 12, -4000
    light_pos_set2          1, 1, 13, -14490
    light_kido_set2         0, 1, 1, 8000
    light_color_set2        1, 1, 138, 138, 138
    light_pos_set2          2, 1, 11, -15350
    light_pos_set2          2, 1, 12, -4000
    light_pos_set2          2, 1, 13, -16090
    light_kido_set2         0, 2, 1, 8000
    light_color_set2        2, 1, 138, 138, 138
    evt_end                 0

.proc main_0E
    aot_set                 ID_AOT_29, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7011, -13369, 1800, 2200, 255, 0, I_GOSUB, main_18, 0, 0
    sce_espr3d_on           0, 4118, 0, 2560, -6500, -1670, -12800, 0, 1024, 0, 0
    if                      0, off_127C
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_1278
    ck                      FG_ZAPPING, 14, 1
    if                      0, off_126C
    ck                      FG_COMMON, 182, 0
    set                     FG_COMMON, 182, 1
    endif
    nop

off_126C:
    aot_reset               ID_AOT_29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_10, 0, 0, 0, 0, 239
    endif
    nop

off_1278:
    else                    0, off_12C6

off_127C:
    if                      0, off_12A0
    ck                      FG_ZAPPING, 14, 1
    if                      0, off_1292
    ck                      FG_COMMON, 182, 0
    set                     FG_COMMON, 182, 1
    endif
    nop

off_1292:
    aot_reset               ID_AOT_29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_10, 0, 0, 0, 0, 239
    else                    0, off_12C4

off_12A0:
    if                      0, off_12C2
    ck                      FG_COMMON, 164, 1
    if                      0, off_12B6
    ck                      FG_COMMON, 182, 0
    set                     FG_COMMON, 182, 1
    endif
    nop

off_12B6:
    aot_reset               ID_AOT_29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_10, 0, 0, 0, 0, 239
    endif
    nop

off_12C2:
    nop
    nop

off_12C4:
    nop
    nop

off_12C6:
    aot_set_4p              30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17533, -15498, -15240, -11960, -14529, -12570, -16066, -15660, 1, 0, 0, 0, 0, 255
    aot_set                 ID_AOT_31, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18443, -11158, 8700, 1100, ID_MSG_2, 0, 0, 0, 0, 239
    evt_end                 0

.proc main_0F
    sce_em_set              0, ID_EM_0, ENEMY_VINES, 32, AI_20, 0, SBK_48, 0, 19, -16450, -3446, -17850, 0, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_VINES, 32, AI_20, 0, SBK_48, 0, 19, -16850, -3376, -17850, 0, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_VINES, 32, AI_20, 0, SBK_48, 0, 19, -16650, -3560, -17850, 0, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_VINES, 32, AI_20, 0, SBK_48, 0, 19, -16250, -3736, -17850, 0, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_VINES, 32, AI_20, 0, SBK_48, 0, 19, -16300, -3246, -17850, 0, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_VINES, 0, AI_20, 0, SBK_48, 0, 19, -16650, -3546, -17850, 0, 0, 0
    evt_end                 0

.proc main_10
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 56, -14374, 0, -16135, 880, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 57, -10259, 0, -14647, 678, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_NAKED, 6, AI_DEFAULT, 0, SBK_46, 0, 58, -12842, 0, -11757, 2088, 0, 0
    evt_end                 0

.proc main_11
    aot_reset               ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 73, 158, 0, 0, 24, 245
    if                      0, off_13D8
    ck                      FG_ROOM, 0, 0
    evt_kill                5
    endif
    nop

off_13D8:
    sleep                   10, 5
    aot_on                  ID_AOT_0
    evt_end                 0

.proc main_12
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -11837, 0, -11409, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13311, -11969, 1600, 1500, 255, 0, I_GOSUB, main_16, 0, 0
    obj_model_set           ID_OBJ_8, 0, 0, 0, 0, 0, 0, 10, 16, -3987, -900, -11309, 1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7011, -13369, 1800, 2200, ITEM_LABSECURITYMANUAL, 1, 50, ID_OBJ_8, IF_DEFAULT
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 16, -11887, -800, -17209, -64, -1472, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12591, -17759, 1300, 1100, ITEM_USERREGISTRATION, 1, 62, ID_OBJ_6, IF_DEFAULT
    if                      0, off_14D8
    ck                      FG_STATUS, F_SCENARIO, 1
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 0, 0, 10, 16, -13587, -900, -17009, 0, -1344, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14621, -17649, 1100, 1100, ITEM_UMBRELLAKEYCARD, 2, 47, ID_OBJ_7, IF_GLINT_RED
    endif
    nop

off_14D8:
    if                      0, off_14FA
    ck                      FG_STATUS, F_PLAYER, 0
    item_aot_set            ID_AOT_13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6911, -18409, 1400, 2400, ITEM_FLAMETHROWER, 100, 51, ID_OBJ_255, IF_DEFAULT
    else                    0, off_1512

off_14FA:
    item_aot_set            ID_AOT_13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6911, -18409, 1400, 2400, ITEM_BOWGUNAMMO, 36, 51, ID_OBJ_255, IF_DEFAULT
    nop
    nop

off_1512:
    if                      0, off_1526
    ck                      FG_ITEM_2, 51, 0
    aot_reset               ID_AOT_13, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_13, 0, 0
    endif
    nop

off_1526:
    evt_end                 0

.proc main_13
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    if                      0, off_1546
    ck                      FG_STATUS, F_PLAYER, 0
    aot_reset               ID_AOT_13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 16, 0, 100, 0, 51, 0
    else                    0, off_1552

off_1546:
    aot_reset               ID_AOT_13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 29, 0, 36, 0, 51, 0
    nop
    nop

off_1552:
    se_on                   2, 269, 1, 0, 0, 0
    aot_on                  ID_AOT_13
    evt_next
    nop
    if                      0, off_1576
    ck                      FG_ITEM_2, 51, 0
    aot_reset               ID_AOT_13, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_13, 0, 0
    endif
    nop

off_1576:
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    evt_end                 0

.proc main_14
    aot_set_4p              4, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -18011, -18069, -18200, -13600, -14890, -15254, -14299, -18074, 10, 0, 47, 0, 1, 0
    aot_set_4p              5, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -15311, -18069, -15200, -16530, -13190, -15554, -13699, -18074, 5, 0, 32, 0, 1, 0
    aot_set_4p              6, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -15011, -16969, -15600, -15700, -13890, -14454, -13199, -15674, 5, 0, 32, 0, 1, 0
    aot_set_4p              7, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -15611, -16269, -16710, -15300, -15190, -13554, -13900, -14574, 5, 0, 32, 0, 1, 0
    evt_end                 0

.proc main_15
    aot_set_4p              4, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -18011, -18069, -18200, -13600, -14890, -15254, -14299, -18074, 10, 0, 47, 0, 1, 0
    aot_set_4p              5, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -14511, -17269, -14700, -15730, -12890, -15074, -12799, -17274, 5, 0, 32, 0, 1, 0
    aot_set_4p              6, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -14511, -16269, -15100, -15000, -13790, -14054, -12799, -15274, 5, 0, 32, 0, 1, 0
    aot_set_4p              7, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -14911, -15269, -16010, -14300, -14890, -12954, -13700, -14074, 5, 0, 32, 0, 1, 0
    evt_end                 0

.proc main_16
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 0, 1
    message_on              0, ID_MSG_5, 0, 0, 239
    evt_next
    nop
    if                      0, off_1692
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    gosub                   main_17
    else                    0, off_16A0

off_1692:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_16A0:
    set                     FG_STOP, 0, 0
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_17
    if                      0, off_16C0
    poison_ck
    nop
    message_on              0, ID_MSG_7, 0, 0, 239
    evt_next
    poison_clr
    else                    0, off_16CA

off_16C0:
    message_on              0, ID_MSG_6, 0, 0, 239
    evt_next
    nop
    nop
    nop

off_16CA:
    evt_end                 0

.proc main_18
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 0, 1
    message_on              0, ID_MSG_8, 0, 0, 239
    evt_next
    nop
    if                      0, off_16FA
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    gosub                   main_19
    else                    0, off_1708

off_16FA:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_1708:
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 0, 0
    evt_end                 0

.proc main_19
    set                     FG_COMMON, 164, 1
    se_on                   2, 272, 1, 0, 0, 0
    set                     FG_STATUS, 12, 1
    evt_exec                255, I_GOSUB, main_1C
    if                      0, off_173C
    ck                      FG_STATUS, F_SCENARIO, 0
    set                     FG_ZAPPING, 14, 1
    endif
    nop

off_173C:
    aot_reset               ID_AOT_29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_9, 0, 0, 0, 0, 239
    sce_espr_kill           22, 16, 0, 0
    nop
    sce_espr3d_on           0, 22, 0, 2560, -6500, -1670, -12800, 0, 1024, 0, 0
    evt_end                 0

.proc main_1A
    sce_espr3d_on           0, 21, 0, 7856, -6510, -2140, -12540, 0, 1024, 0, 0
    sleep                   10, 2
    sce_espr3d_on           0, 21, 0, 7856, -6510, -2140, -12540, 0, 1024, 0, 0
    evt_end                 0

.proc main_1B
    if                      0, off_17A4
    ck                      FG_COMMON, 164, 1
    set                     FG_STATUS, 12, 1
    endif
    nop

off_17A4:
    evt_end                 0

.proc main_1C
    for                     0, off_17B4, 2
    sce_fade_adjust         2, 0, 1
    evt_next
    nop
    next                    0

off_17B4:
    for                     0, off_17C2, 2
    sce_fade_adjust         2, 0, 2
    evt_next
    nop
    next                    0

off_17C2:
    for                     0, off_17D0, 2
    sce_fade_adjust         2, 0, 3
    evt_next
    nop
    next                    0

off_17D0:
    for                     0, off_17DE, 2
    sce_fade_adjust         2, 0, 4
    evt_next
    nop
    next                    0

off_17DE:
    sce_fade_adjust         2, 0, 5
    evt_next
    nop
    sce_fade_adjust         2, 0, 6
    evt_next
    nop
    sce_fade_adjust         2, 0, 7
    evt_next
    nop
    evt_end                 0
    db                      0x51, 0x51
