.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -19346, -7702, 1900, 1800, 2039, -14400, -26140, 3000, 4, 6, 5, 8, 25, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_2288
    ck                      FG_GENERAL_1, 94, 0
    ck                      FG_GENERAL_1, 67, 0
    sce_em_set              0, 0, ENEMY_TYRANT_1, 3, 65, 8, 18, 0, 142, -32000, -32000, -32000, 0, 0, 0
    if                      0, off_2194
    ck                      FG_GAME, F_PLAYER, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 194, -900, -900, 1800, 1800, ITEM_SHOTGUNAMMO, 7, 76, 255, 1
    else                    0, off_21AC

off_2194:
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 194, -900, -900, 1800, 1800, ITEM_ACIDROUNDS, 6, 76, 255, 1
    nop
    nop

off_21AC:
    aot_reset               4, SCE_AUTO, SAT_PL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 18, -32000, -32000, -32000, 768, 1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 130, 1, 8, 0, 0, 10, 16, -32000, -32000, -32000, 0, 1024, -256, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 130, 1, 8, 0, 0, 10, 16, -32000, -32000, -32000, 0, 1024, -256, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 130, 1, 8, 0, 0, 10, 16, -32000, -32000, -32000, 0, 1024, -256, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -18608, -25487, 1600, 2900, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -19346, -7702, 1900, 1800, 255, 0, I_GOSUB, main_0B, 0, 0
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0C
    else                    0, off_2356

off_2288:
    if                      0, off_22F2
    ck                      FG_7, 142, 1
    obj_model_set           1, 0, 0, 0, 0, 8, 0, 10, 16, -17570, -14400, -14600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_22D8
    ck                      FG_GAME, F_PLAYER, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -18470, -15500, 1400, 1500, ITEM_SHOTGUNAMMO, 7, 76, 1, 1
    else                    0, off_22F0

off_22D8:
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -18470, -15500, 1400, 1500, ITEM_ACIDROUNDS, 6, 76, 1, 1
    nop
    nop

off_22F0:
    endif
    nop

off_22F2:
    aot_set                 1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -18608, -25487, 1600, 2900, 1, 0, 0, 0, 255, 255
    gosub                   main_09
    if                      0, off_2354
    ck                      FG_GENERAL_1, 94, 1
    sce_espr3d_on           0, 21, 0, 4096, -18000, -16950, -24174, 0, 1024, 0, 0
    sce_espr3d_on           0, 21, 0, 4096, -18000, -16960, -24174, 0, 1024, 0, 0
    sce_espr3d_on           0, 21, 0, 4096, -18000, -16950, -24174, 0, 1024, 0, 0
    endif
    nop

off_2354:
    nop
    nop

off_2356:
    obj_model_set           0, 0, 0, 0, 0, 8, 0, 10, 16, -20360, -15800, -25350, 2048, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, -19710, -26566, 1100, 1600, ITEM_UPKEY, 1, 9, 0, 192
    sce_espr3d_on           0, 1046, 0, 1280, -18000, -17350, -24174, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 1280, -18000, -17350, -24174, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 1280, -18000, -17350, -24174, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 1280, -18000, -17350, -24174, 0, 1024, 0, 0
    sce_espr3d_on           0, 1046, 0, 1280, -18000, -17350, -24174, 0, 1024, 0, 0
    if                      0, off_2428
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_241C
    ck                      FG_GAME, F_PLAYER, 0
    sce_bgmtbl_set          0, 7, 5, 8478, 64
    else                    0, off_2426

off_241C:
    sce_bgmtbl_set          0, 7, 5, 8478, 64
    nop
    nop

off_2426:
    endif
    nop

off_2428:
    sce_bgm_control         1, 1, 0, 0, 0
    sce_bgm_control         1, 0, 1, 90, 64
    evt_end                 0

.proc aot
    gosub                   main_02
    gosub                   main_08
    gosub                   main_0D
    evt_end                 0

.proc main_02
    if                      0, off_24AC
    ck                      34, 9, 1
    ck                      FG_GENERAL_1, 94, 0
    ck                      FG_GENERAL_1, 67, 0
    if                      0, off_2464
    ck                      FG_GENERAL_2, 2, 0
    gosub                   main_0A
    work_set                WK_ENEMY, 0
    set                     FG_GENERAL_2, 2, 1
    nop
    gosub                   main_09
    endif
    nop

off_2464:
    if                      0, off_24AA
    cmp                     0, V_CUT, CMP_EQ, 8
    ck                      FG_GENERAL_2, 1, 0
    sce_bgm_control         1, 2, 0, 0, 0
    sce_bgm_control         0, 1, 0, 0, 0
    aot_reset               1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 255, 255
    set                     FG_GENERAL_2, 1, 1
    set                     FG_GENERAL_1, 67, 1
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 8, 0
    pos_set                 0, -19800, -14400, -17680
    dir_set                 0, 0, 2048, 0
    endif
    nop

off_24AA:
    endif
    nop

off_24AC:
    evt_end                 0

.proc main_03
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    if                      0, off_2546
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_STATE, 7, 1
    set                     FG_GENERAL_1, 94, 1
    se_on                   2, 10, 0, -18000, -16950, -24174
    sce_espr3d_on           0, 21, 0, 4096, -18000, -16950, -24174, 0, 1024, 0, 0
    sce_espr3d_on           0, 21, 0, 4096, -18000, -16960, -24174, 0, 1024, 0, 0
    sce_espr3d_on           0, 21, 0, 4096, -18000, -16950, -24174, 0, 1024, 0, 0
    light_kido_set          0, 5000
    gosub                   main_04
    cut_old
    cut_auto                1
    set                     FG_GENERAL_2, 1, 1
    work_set                WK_PLAYER, 0
    pos_set                 0, -19354, -14400, -24024
    dir_set                 0, 0, 0, 0
    aot_reset               1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 255, 255
    plc_ret
    set                     FG_STATE, 7, 0
    nop
    endif
    nop

off_2546:
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -18460, -14400, -8380
    dir_set                 0, 0, 1024, 0
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -19300, -17400, -17500
    dir_set                 0, 768, 1024, -1024
    gosub                   main_0A
    cut_chg                 6
    evt_exec                255, I_GOSUB, main_07
    evt_next
    nop
    gosub                   main_05
    if                      0, off_2588
    ck                      FG_GENERAL_2, 2, 0
    gosub                   main_09
    endif
    nop

off_2588:
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    sleep                   10, 10
    sce_bgm_control         1, 2, 0, 0, 0
    sce_bgm_control         0, 1, 0, 0, 0
    sleep                   10, 250
    member_set              23, 2, 0
    sleep                   10, 60
    member_set              23, 4, 0
    sleep                   10, 47
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 13
    nop
    calc                    0, OP_ADD, V_TEMP, 1800
    member_set2             13, V_TEMP
    nop
    set                     FG_GENERAL_2, 0, 1
    gosub                   main_06
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 8, 0
    evt_end                 0

.proc main_06
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -19100, -17400, -17300
    dir_set                 0, 0, 1024, -256
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -18700, -17400, -17300
    dir_set                 0, 0, 1024, -256
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -18300, -17400, -17300
    dir_set                 0, 0, 1024, -256
    se_on                   2, 11, 0, -18000, -16950, -24174
    sleep                   10, 120
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -32000, -32000, -32000
    evt_end                 0

.proc main_07
    save                    V_04, 30
    do                      0, off_2754
    sce_line_start          1, 1, 0
    work_copy               4, 1, 0
    sce_line_main           0, 255, 255, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 254, 255, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 253, 255, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 252, 255, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 251, 255, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 252, 255, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 253, 255, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 254, 255, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 1, 0
    sce_line_main           0, 255, 255, 0, 0
    sce_line_end
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 6
    copy                    V_04, V_TEMP
    nop
    if                      0, off_274C
    cmp                     0, V_04, CMP_GE, 210
    save                    V_04, 30
    endif
    nop

off_274C:
    evt_next
    nop
    edwhile                 off_2754
    ck                      FG_GENERAL_2, 0, 0

off_2754:
    evt_end                 0

.proc main_08
    if                      0, off_276A
    ck                      FG_GENERAL_1, 94, 1
    cmp                     0, V_CUT, CMP_EQ, 5
    light_kido_set          0, 5000
    endif
    nop

off_276A:
    evt_end                 0

.proc main_09
    cut_replace             1, 7
    cut_replace             2, 8
    evt_end                 0

.proc main_0A
    aot_reset               0, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 247, 7, 192, 199, 228, 153
    aot_reset               3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0B, 0, 0
    evt_end                 0

.proc main_0B
    if                      0, off_27B2
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_27A6
    ck                      FG_GAME, F_PLAYER, 0
    sce_bgmtbl_set          0, 7, 5, 8703, 0
    else                    0, off_27B0

off_27A6:
    sce_bgmtbl_set          0, 7, 5, 8703, 0
    nop
    nop

off_27B0:
    endif
    nop

off_27B2:
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_FRONT, 247, 7, 192, 199, 228, 153
    evt_end                 0

.proc main_0C
    do                      0, off_27CA
    evt_next
    nop
    edwhile                 off_27CA
    ck                      FG_7, 142, 0

off_27CA:
    sce_bgm_control         0, 5, 0, 0, 0
    sce_bgm_control         1, 1, 0, 0, 0
    sleep                   10, 151
    if                      0, off_27F0
    ck                      FG_GAME, F_PLAYER, 0
    aot_reset               4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 21, 0, 7, 0, 76, 0
    else                    0, off_27FC

off_27F0:
    aot_reset               4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 26, 0, 6, 0, 76, 0
    nop
    nop

off_27FC:
    evt_end                 0

.proc main_0D
    switch                  26, off_2872
    case                    0, off_2810, 0
    sce_bgm_control         1, 0, 1, 90, 64
    break                   0

off_2810:
    case                    0, off_2816, 1

off_2816:
    case                    0, off_2824, 7
    sce_bgm_control         1, 0, 1, 105, 64
    break                   0

off_2824:
    case                    0, off_282A, 2

off_282A:
    case                    0, off_2838, 8
    sce_bgm_control         1, 0, 1, 115, 64
    break                   0

off_2838:
    case                    0, off_2846, 3
    sce_bgm_control         1, 0, 1, 115, 64
    break                   0

off_2846:
    case                    0, off_2854, 4
    sce_bgm_control         1, 0, 1, 115, 64
    break                   0

off_2854:
    case                    0, off_2862, 5
    sce_bgm_control         1, 0, 1, 105, 64
    break                   0

off_2862:
    case                    0, off_2870, 6
    sce_bgm_control         1, 0, 1, 0, 0
    break                   0

off_2870:
    eswitch                 0

off_2872:
    evt_end                 0
