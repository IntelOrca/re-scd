.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7575, -20958, 1810, 3900, -27984, -7200, -8032, 4247, 0, 16, 8, 4, 13, 2, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18417, -28082, 1900, 1800, -15275, 0, -16737, 9711, 0, 19, 2, 0, 1, 129, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -6002, -13532, 1800, 2600, -25817, -14400, -692, 0, 0, 23, 0, 8, 13, 1, 0, 0, UNLOCKED, 0
    if                      0, off_2926
    ck                      FG_GAME, F_BONUS, 1
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 7, 0, 0, 0, 255, 255
    endif
    nop

off_2926:
    evt_end                 0

.main
.proc main
    if                      0, off_29A0
    ck                      FG_GAME, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_29A0:
    item_aot_set            11, SCE_ITEM, SAT_AUTO, 0, 0, 0, 0, 0, 0, ITEM_SERPENTSTONE, 1, 21, 5, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -21480, -2090, -10450, 576, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    gosub                   main_02
    evt_end                 0

.proc aot
    gosub                   main_03
    evt_end                 0

.proc main_02
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 128, -450, -900, 1100, 900, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 129, -450, -900, 1100, 900, 255, 0, I_GOSUB, main_05, 0, 0
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 130, -450, -900, 1100, 900, 255, 0, I_GOSUB, main_06, 0, 0
    aot_set                 3, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -21000, -26400, 1100, 9000, 5, 0, ITEM_HANDGUNPARTS, 0, aot, 0
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22250, -11384, 2700, 1800, 255, 0, I_GOSUB, main_0C, 0, 0
    aot_set                 8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28086, -15615, 1800, 1800, 255, 0, I_GOSUB, main_0F, 0, 0
    sce_espr3d_on           0, 22, 0, 2048, -26900, -2250, -15000, 0, 1024, 0, 0
    aot_set                 9, SCE_EVENT, SAT_PL | SAT_UNDER, 3, 0, -22521, -14013, 1200, 2500, 255, 0, I_GOSUB, main_11, 0, 0
    aot_set                 13, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6945, -15945, 1800, 5200, 6, 0, 0, 0, 255, 255
    aot_set                 14, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17245, -12445, 12100, 1800, 3, 0, 0, 0, 255, 255
    aot_set                 15, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13145, -15945, 2900, 5100, 4, 0, 0, 0, 255, 255
    aot_set                 16, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -6588, -27157, 1800, 9000, 5, 0, 0, 0, 255, 255
    aot_set                 17, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -20355, -12040, 7700, 1800, 3, 0, 0, 0, 255, 255
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 8, 0, -21500, 0, -25500, 0, 3072, 0, -440, -1800, -2700, 700, 8, 7, 84, 11
    save                    V_04, 0
    set                     FG_GENERAL_2, 0, 1
    work_set                WK_OBJECT, 0
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 32
    member_set2             1, V_TEMP
    nop
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 8, 0, -21500, 0, -22800, 0, 3072, 0, -440, -1800, -2700, 700, 8, 7, 84, 11
    save                    V_05, 3
    set                     FG_GENERAL_2, 3, 1
    work_set                WK_OBJECT, 1
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 32
    member_set2             1, V_TEMP
    nop
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 8, 0, -21500, 0, -20100, 0, 3072, 0, -440, -1800, -2700, 700, 8, 7, 84, 11
    save                    V_06, 6
    set                     FG_GENERAL_2, 6, 1
    work_set                WK_OBJECT, 2
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 32
    member_set2             1, V_TEMP
    nop
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 8, 0, -21500, 0, -16500, 0, 3072, 0, -450, -1800, -2700, 700, 8, 7, 84, 11
    work_set                WK_OBJECT, 3
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 32
    member_set2             1, V_TEMP
    nop
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -22240, -1980, -10800, 1024, 1024, 3072, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            12, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7828, -24852, 1800, 2500, ITEM_HERBR, 1, 22, 6, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -6768, -1550, -23952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 0, -22000, -25400, -12400, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 10, 0, -22000, -25400, -13100, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 0, -22000, -25400, -13600, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           10, 0, 0, 0, 0, 0, 0, 10, 0, -20950, -25400, -12400, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           11, 0, 0, 0, 0, 0, 0, 10, 0, -20950, -25400, -13100, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           12, 0, 0, 0, 0, 0, 0, 10, 0, -20950, -25400, -13600, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_2D3E
    ck                      FG_GENERAL_1, 23, 1
    work_set                WK_OBJECT, 3
    nop
    member_set              13, 8, 188
    evt_exec                255, I_GOSUB, main_10
    endif
    nop

off_2D3E:
    set                     25, 1, 0
    if                      0, off_2D54
    ck                      FG_GENERAL_1, 24, 1
    work_set                WK_OBJECT, 4
    nop
    member_set              12, 224, 172
    endif
    nop

off_2D54:
    if                      0, off_2DA6
    ck                      FG_GENERAL_1, 53, 1
    aot_reset               9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sca_id_set              21, 0, 220
    sca_id_set              22, 0, 0
    set                     23, 1, 0
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, -23400, 180, -14100
    dir_set                 0, 0, 2816, 3072
    work_set                WK_OBJECT, 11
    nop
    pos_set                 0, -20370, 180, -12780
    dir_set                 0, 0, 1920, 3072
    set                     22, 1, 0
    set                     23, 1, 0
    else                    0, off_2DB8

off_2DA6:
    sca_id_set              21, 0, 0
    sca_id_set              22, 0, 220
    set                     23, 2, 0
    set                     23, 3, 0
    nop
    nop

off_2DB8:
    if                      0, off_2DCC
    ck                      FG_LOCK, 9, 1
    set                     18, 3, 1
    set                     18, 4, 0
    else                    0, off_2DD6

off_2DCC:
    set                     18, 3, 0
    set                     18, 4, 1
    nop
    nop

off_2DD6:
    if                      0, off_2DE6
    ck                      FG_LOCK, 10, 1
    set                     28, 3, 1
    else                    0, off_2DEC

off_2DE6:
    set                     28, 3, 0
    nop
    nop

off_2DEC:
    if                      0, off_2E92
    ck                      FG_GENERAL_1, 153, 0
    if                      0, off_2E4C
    ck                      FG_GAME, F_SCENARIO, 0
    if                      0, off_2E48
    ck                      FG_ITEM, 119, 1
    gosub                   main_19
    if                      0, off_2E1A
    ck                      FG_LOCK, 9, 1
    aot_reset               10, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_1D, 0, 0
    endif
    nop

off_2E1A:
    if                      0, off_2E2E
    ck                      FG_LOCK, 10, 1
    aot_reset               10, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_1C, 0, 0
    endif
    nop

off_2E2E:
    if                      0, off_2E46
    ck                      FG_LOCK, 9, 0
    ck                      FG_LOCK, 10, 0
    aot_reset               10, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_1E, 0, 0
    endif
    nop

off_2E46:
    endif
    nop

off_2E48:
    else                    0, off_2E90

off_2E4C:
    gosub                   main_19
    if                      0, off_2E62
    ck                      FG_LOCK, 9, 1
    aot_reset               10, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_20, 0, 0
    endif
    nop

off_2E62:
    if                      0, off_2E76
    ck                      FG_LOCK, 10, 1
    aot_reset               10, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_21, 0, 0
    endif
    nop

off_2E76:
    if                      0, off_2E8E
    ck                      FG_LOCK, 9, 0
    ck                      FG_LOCK, 10, 0
    aot_reset               10, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_1E, 0, 0
    endif
    nop

off_2E8E:
    nop
    nop

off_2E90:
    endif
    nop

off_2E92:
    evt_end                 0

.proc main_03
    if                      0, off_2EC6
    ck                      FG_GENERAL_1, 24, 0
    ck                      FG_GENERAL_2, 1, 1
    ck                      FG_GENERAL_2, 4, 1
    ck                      FG_GENERAL_2, 6, 1
    ck                      FG_GENERAL_1, 23, 1
    ck                      FG_GENERAL_2, 9, 0
    ck                      FG_GENERAL_2, 10, 0
    ck                      FG_GENERAL_2, 11, 0
    ck                      FG_GENERAL_2, 12, 0
    set                     FG_GENERAL_1, 24, 1
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_2EC6:
    if                      0, off_2ED0
    sce_trg_ck              1, 4096
    endif
    nop

off_2ED0:
    if                      0, off_2EE4
    cmp                     0, V_CUT, CMP_EQ, 7
    set                     35, 4, 1
    set                     FG_9, 128, 1
    endif
    nop

off_2EE4:
    evt_end                 0

.proc main_04
    if                      0, off_2EF2
    ck                      FG_GENERAL_2, 32, 0
    evt_end                 0
    endif
    nop

off_2EF2:
    copy                    V_07, V_04
    nop
    save                    V_08, 0
    gosub                   main_07
    if                      0, off_2F0A
    cmp                     0, V_0B, CMP_EQ, 4
    evt_end                 0
    endif
    nop

off_2F0A:
    set                     FG_GENERAL_2, 9, 1
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sleep                   10, 5
    sce_espr_kill           22, 0, 4, 0
    work_set                WK_OBJECT, 0
    switch                  11, off_2FA6
    case                    0, off_2F5C, 0
    se_on                   2, 268, 4, 0, 0, 0
    work_copy               4, 2, 0
    set                     FG_GENERAL_2, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 2, 0
    set                     FG_GENERAL_2, 0, 1
    gosub                   main_08
    break                   0

off_2F5C:
    case                    0, off_2F90, 1
    se_on                   2, 268, 4, 0, 0, 0
    work_copy               4, 2, 0
    set                     FG_GENERAL_2, 0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 2, 0
    set                     FG_GENERAL_2, 0, 1
    gosub                   main_09
    break                   0

off_2F90:
    case                    0, off_2F9A, 2
    gosub                   main_0A
    break                   0

off_2F9A:
    case                    0, off_2FA4, 3
    gosub                   main_0B
    break                   0

off_2FA4:
    eswitch                 0

off_2FA6:
    sce_espr3d_on           0, 22, 4, 2048, -450, -2250, -80, 0, 0, 0, 0
    set                     FG_GENERAL_2, 9, 0
    evt_next
    nop
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    evt_end                 0

.proc main_05
    if                      0, off_2FDA
    ck                      FG_GENERAL_2, 32, 0
    evt_end                 0
    endif
    nop

off_2FDA:
    copy                    V_07, V_05
    nop
    save                    V_08, 1
    gosub                   main_07
    if                      0, off_2FF2
    cmp                     0, V_0B, CMP_EQ, 4
    evt_end                 0
    endif
    nop

off_2FF2:
    set                     FG_GENERAL_2, 10, 1
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sleep                   10, 5
    sce_espr_kill           22, 0, 4, 1
    work_set                WK_OBJECT, 1
    switch                  11, off_308E
    case                    0, off_3044, 0
    se_on                   2, 270, 260, 0, 0, 0
    work_copy               5, 2, 0
    set                     FG_GENERAL_2, 0, 0
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_05, V_TEMP
    nop
    work_copy               5, 2, 0
    set                     FG_GENERAL_2, 0, 1
    gosub                   main_08
    break                   0

off_3044:
    case                    0, off_3078, 1
    se_on                   2, 270, 260, 0, 0, 0
    work_copy               5, 2, 0
    set                     FG_GENERAL_2, 0, 0
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_05, V_TEMP
    nop
    work_copy               5, 2, 0
    set                     FG_GENERAL_2, 0, 1
    gosub                   main_09
    break                   0

off_3078:
    case                    0, off_3082, 2
    gosub                   main_0A
    break                   0

off_3082:
    case                    0, off_308C, 3
    gosub                   main_0B
    break                   0

off_308C:
    eswitch                 0

off_308E:
    sce_espr3d_on           0, 22, 260, 2048, -450, -2250, -80, 0, 0, 0, 0
    set                     FG_GENERAL_2, 10, 0
    evt_next
    nop
    aot_reset               5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_05, 0, 0
    evt_end                 0

.proc main_06
    if                      0, off_30C2
    ck                      FG_GENERAL_2, 32, 0
    evt_end                 0
    endif
    nop

off_30C2:
    copy                    V_07, V_06
    nop
    save                    V_08, 2
    gosub                   main_07
    if                      0, off_30DA
    cmp                     0, V_0B, CMP_EQ, 4
    evt_end                 0
    endif
    nop

off_30DA:
    set                     FG_GENERAL_2, 11, 1
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sleep                   10, 5
    sce_espr_kill           22, 0, 4, 2
    work_set                WK_OBJECT, 2
    switch                  11, off_3176
    case                    0, off_312C, 0
    se_on                   2, 272, 516, 0, 0, 0
    work_copy               6, 2, 0
    set                     FG_GENERAL_2, 0, 0
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_06, V_TEMP
    nop
    work_copy               6, 2, 0
    set                     FG_GENERAL_2, 0, 1
    gosub                   main_08
    break                   0

off_312C:
    case                    0, off_3160, 1
    se_on                   2, 272, 516, 0, 0, 0
    work_copy               6, 2, 0
    set                     FG_GENERAL_2, 0, 0
    copy                    V_TEMP, V_06
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_06, V_TEMP
    nop
    work_copy               6, 2, 0
    set                     FG_GENERAL_2, 0, 1
    gosub                   main_09
    break                   0

off_3160:
    case                    0, off_316A, 2
    gosub                   main_0A
    break                   0

off_316A:
    case                    0, off_3174, 3
    gosub                   main_0B
    break                   0

off_3174:
    eswitch                 0

off_3176:
    sce_espr3d_on           0, 22, 516, 2048, -450, -2250, -80, 0, 0, 0, 0
    set                     FG_GENERAL_2, 11, 0
    evt_next
    nop
    aot_reset               6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    evt_end                 0

.proc main_07
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    if                      0, off_3256
    ck                      FG_INPUT, 30, 0
    work_copy               8, 5, 0
    se_on                   2, 267, 4, 0, 0, 0
    if                      0, off_3252
    ck                      FG_GENERAL_1, 23, 1
    if                      0, off_3210
    ck                      FG_INPUT, F_QUESTION, 0
    if                      0, off_31E0
    cmp                     0, V_07, CMP_EQ, 0
    save                    V_0B, 2
    return                  0
    endif
    nop

off_31E0:
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    if                      0, off_3204
    work_copy               7, 2, 0
    ck                      FG_GENERAL_2, 0, 0
    save                    V_0B, 0
    return                  0
    else                    0, off_320C

off_3204:
    save                    V_0B, 2
    return                  0
    nop
    nop

off_320C:
    else                    0, off_3250

off_3210:
    if                      0, off_3222
    cmp                     0, V_07, CMP_EQ, 8
    save                    V_0B, 3
    return                  0
    endif
    nop

off_3222:
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_07, V_TEMP
    nop
    if                      0, off_3246
    work_copy               7, 2, 0
    ck                      FG_GENERAL_2, 0, 0
    save                    V_0B, 1
    return                  0
    else                    0, off_324E

off_3246:
    save                    V_0B, 3
    return                  0
    nop
    nop

off_324E:
    nop
    nop

off_3250:
    endif
    nop

off_3252:
    else                    0, off_3264

off_3256:
    se_on                   4, 261, 1, 0, 0, 0
    nop
    nop

off_3264:
    save                    V_0B, 4
    evt_end                 0

.proc main_08
    nop_8b                  200, 1, 0, 0, 0
    nop_8b                  70, 60, 0, 0, 0
    member_copy             V_TEMP, 32
    nop
    calc                    0, OP_SUB, V_TEMP, 450
    member_set2             32, V_TEMP
    nop
    member_copy             V_TEMP, 35
    nop
    calc                    0, OP_ADD, V_TEMP, 450
    member_set2             35, V_TEMP
    nop
    speed_set               2, -15
    for                     0, off_32DC, 30
    add_speed
    nop
    member_copy             V_TEMP, 32
    nop
    calc                    0, OP_ADD, V_TEMP, 8
    member_set2             32, V_TEMP
    nop
    member_copy             V_TEMP, 35
    nop
    calc                    0, OP_SUB, V_TEMP, 8
    member_set2             35, V_TEMP
    nop
    evt_next
    add_speed
    member_copy             V_TEMP, 32
    nop
    calc                    0, OP_ADD, V_TEMP, 7
    member_set2             32, V_TEMP
    nop
    member_copy             V_TEMP, 35
    nop
    calc                    0, OP_SUB, V_TEMP, 7
    member_set2             35, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_32DC:
    member_set              32, 62, 254
    member_set              35, 188, 2
    evt_end                 0

.proc main_09
    nop_8b                  200, 1, 0, 0, 0
    nop_8b                  70, 60, 0, 0, 0
    member_copy             V_TEMP, 32
    nop
    calc                    0, OP_ADD, V_TEMP, 450
    member_set2             32, V_TEMP
    nop
    member_copy             V_TEMP, 35
    nop
    calc                    0, OP_ADD, V_TEMP, 450
    member_set2             35, V_TEMP
    nop
    speed_set               2, 15
    for                     0, off_3358, 30
    add_speed
    nop
    member_copy             V_TEMP, 32
    nop
    calc                    0, OP_SUB, V_TEMP, 8
    member_set2             32, V_TEMP
    nop
    member_copy             V_TEMP, 35
    nop
    calc                    0, OP_SUB, V_TEMP, 8
    member_set2             35, V_TEMP
    nop
    evt_next
    add_speed
    member_copy             V_TEMP, 32
    nop
    calc                    0, OP_SUB, V_TEMP, 7
    member_set2             32, V_TEMP
    nop
    member_copy             V_TEMP, 35
    nop
    calc                    0, OP_SUB, V_TEMP, 7
    member_set2             35, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_3358:
    member_set              32, 62, 254
    member_set              35, 188, 2
    evt_end                 0

.proc main_0A
    speed_set               2, -1
    for                     0, off_3370, 10
    add_speed
    evt_next
    next                    0

off_3370:
    sleep                   10, 30
    speed_set               2, 1
    for                     0, off_3382, 10
    add_speed
    evt_next
    next                    0

off_3382:
    evt_end                 0

.proc main_0B
    speed_set               2, 1
    for                     0, off_3392, 10
    add_speed
    evt_next
    next                    0

off_3392:
    sleep                   10, 30
    speed_set               2, -1
    for                     0, off_33A4, 10
    add_speed
    evt_next
    next                    0

off_33A4:
    evt_end                 0

.proc main_0C
    if                      0, off_33C6
    ck                      FG_GENERAL_1, 24, 0
    cut_chg                 13
    set                     FG_STATE, 7, 1
    evt_next
    nop
    message_on              0, 2, 0, 255, 255
    evt_next
    cut_old
    set                     FG_STATE, 7, 0
    else                    0, off_33E4

off_33C6:
    if                      0, off_33E2
    ck                      FG_ITEM, 21, 0
    cut_chg                 13
    set                     FG_STATE, 7, 1
    sleep                   10, 15
    aot_on                  11
    cut_old
    evt_next
    set                     FG_STATE, 7, 0
    endif
    nop

off_33E2:
    nop
    nop

off_33E4:
    evt_end                 0

.proc main_0D
    cut_chg                 13
    set                     FG_STATE, 7, 1
    evt_next
    nop
    se_on                   2, 266, 1028, 0, 0, 0
    work_set                WK_OBJECT, 4
    nop
    speed_set               1, 0
    speed_set               7, 5
    sleep                   10, 5
    se_on                   2, 269, 1028, 0, 0, 0
    while                   6, off_3426
    member_cmp              0, 12, 4, 0, 251
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_3426:
    member_set              12, 224, 172
    sleep                   10, 15
    set                     FG_STATE, 7, 0
    cut_old
    nop
    evt_end                 0

.proc main_0E
    set                     FG_GENERAL_1, 24, 0
    evt_next
    work_set                WK_OBJECT, 4
    member_set              12, 0, 251
    set                     25, 1, 1
    speed_set               1, 0
    speed_set               7, -5
    se_on                   2, 269, 1028, 0, 0, 0
    while                   6, off_346A
    member_cmp              0, 12, 2, 68, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_346A:
    member_set              12, 68, 248
    set                     25, 1, 0
    evt_end                 0

.proc main_0F
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    if                      0, off_358A
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_STATE, 7, 1
    se_on                   2, 266, 0, -28086, -1800, -15615
    if                      0, off_34F2
    ck                      FG_GENERAL_1, 23, 0
    set                     FG_GENERAL_1, 23, 1
    set                     FG_GENERAL_2, 12, 1
    sleep                   10, 5
    nop_8b                  200, 1, 0, 0, 0
    nop_8b                  70, 60, 0, 0, 0
    se_on                   2, 268, 772, 0, 0, 0
    work_set                WK_OBJECT, 3
    nop
    speed_set               2, -30
    for                     0, off_34D2, 15
    add_speed
    evt_next
    next                    0

off_34D2:
    cut_chg                 4
    for                     0, off_34DE, 15
    add_speed
    evt_next
    next                    0

off_34DE:
    sleep                   10, 14
    gosub                   main_10
    sleep                   10, 15
    set                     FG_GENERAL_2, 12, 0
    cut_old
    nop
    else                    0, off_3584

off_34F2:
    set                     FG_GENERAL_1, 23, 0
    cut_chg                 4
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_350C
    member_cmp              0, 13, 3, 172, 194
    member_set              13, 172, 194
    endif
    nop

off_350C:
    sleep                   10, 15
    sce_espr_kill           22, 0, 4, 0
    sce_espr_kill           22, 0, 4, 1
    sce_espr_kill           22, 0, 4, 2
    nop
    sleep                   10, 15
    nop_8b                  200, 1, 0, 0, 0
    nop_8b                  70, 60, 0, 0, 0
    se_on                   2, 268, 772, 0, 0, 0
    work_set                WK_OBJECT, 3
    nop
    speed_set               2, 30
    for                     0, off_354E, 15
    add_speed
    evt_next
    next                    0

off_354E:
    if                      0, off_3572
    ck                      FG_GENERAL_1, 24, 1
    cut_chg                 12
    evt_exec                255, I_GOSUB, main_0E
    for                     0, off_3566, 15
    add_speed
    evt_next
    next                    0

off_3566:
    sleep                   10, 15
    cut_chg                 14
    cut_auto                1
    else                    0, off_3582

off_3572:
    cut_chg                 14
    cut_auto                1
    for                     0, off_3580, 15
    add_speed
    evt_next
    next                    0

off_3580:
    nop
    nop

off_3582:
    nop
    nop

off_3584:
    set                     FG_STATE, 7, 0
    endif
    nop

off_358A:
    evt_end                 0

.proc main_10
    evt_next
    nop
    sce_espr3d_on           0, 22, 4, 2048, -450, -2250, -80, 0, 0, 0, 0
    sce_espr3d_on           0, 22, 260, 2048, -450, -2250, -80, 0, 0, 0, 0
    sce_espr3d_on           0, 22, 516, 2048, -450, -2250, -80, 0, 0, 0, 0
    evt_end                 0

.proc main_11
    set                     FG_GENERAL_1, 53, 1
    set                     FG_STATE, 7, 1
    sca_id_set              22, 0, 0
    aot_reset               9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     23, 1, 0
    set                     23, 2, 1
    set                     22, 1, 0
    evt_exec                255, I_GOSUB, main_13
    evt_exec                255, I_GOSUB, main_15
    evt_exec                255, I_GOSUB, main_17
    evt_exec                255, I_GOSUB, main_14
    evt_exec                255, I_GOSUB, main_16
    evt_exec                255, I_GOSUB, main_18
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  255, 5, 0, 0, 0
    se_on                   2, 275, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    speed_set               1, 100
    speed_set               7, 30
    plc_motion              0, 18, 8
    for                     0, off_3640, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3640:
    plc_motion              0, 16, 12
    cut_chg                 12
    cut_auto                1
    evt_exec                255, I_GOSUB, main_12
    while                   6, off_365C
    member_cmp              0, 12, 4, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_365C:
    nop_8a                  0, 4, 0, 0, 0
    nop_8b                  200, 10, 0, 0, 0
    se_on                   2, 287, 1, 0, 0, 0
    member_set              12, 0, 0
    member_set              17, 0, 0
    plc_motion              0, 10, 8
    sleep                   10, 3
    plc_flg                 1, 0
    sleep                   10, 8
    plc_cnt                 36
    plc_flg                 0, 144
    sleep                   10, 6
    plc_neck                4, 4, 0, 0, 96, 96
    plc_cnt                 11
    plc_flg                 1, 16
    sleep                   10, 10
    plc_stop
    nop
    sleep                   10, 30
    plc_stop
    nop
    sleep                   10, 60
    plc_ret
    set                     23, 3, 1
    nop
    sca_id_set              21, 0, 220
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_12
    sce_espr_on             0, 25, 0, 3072, -22500, -4500, -13500, 0
    sce_espr_on             0, 25, 0, 2048, -22500, -4700, -13500, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 2560, -22500, -4500, -13300, 0
    sce_espr_on             0, 25, 0, 1792, -22500, -4900, -13300, 0
    sleep                   10, 20
    sce_espr_on             0, 25, 0, 2816, -21500, -4300, -12500, 0
    sce_espr_on             0, 25, 0, 1792, -21500, -4700, -12500, 0
    sleep                   10, 5
    sce_espr_on             0, 25, 0, 3072, -21500, -4500, -12500, 0
    sce_espr_on             0, 25, 0, 1792, -21500, -4700, -12500, 0
    sleep                   10, 45
    sce_espr_on             0, 25, 0, 2560, -21900, -4000, -13000, 0
    sce_espr_on             0, 25, 0, 2048, -21900, -4400, -13000, 0
    sce_espr_on             0, 25, 0, 1536, -21900, -5200, -13000, 0
    sce_espr_on             0, 25, 0, 1024, -21900, -5600, -13000, 0
    evt_end                 0

.proc main_13
    work_set                WK_OBJECT, 7
    nop
    member_set              12, 232, 234
    speed_set               5, 256
    speed_set               3, 64
    speed_set               1, 100
    sleep                   10, 4
    for                     0, off_37BA, 4
    add_speed
    evt_next
    next                    0

off_37BA:
    sleep                   10, 2
    member_set              12, 224, 177
    evt_end                 0

.proc main_14
    work_set                WK_OBJECT, 10
    nop
    member_set              12, 232, 234
    speed_set               5, -256
    speed_set               3, 64
    speed_set               1, 100
    sleep                   10, 2
    for                     0, off_37E6, 4
    add_speed
    evt_next
    next                    0

off_37E6:
    sleep                   10, 4
    member_set              12, 224, 177
    evt_end                 0

.proc main_15
    work_set                WK_OBJECT, 8
    nop
    member_set              12, 232, 234
    speed_set               5, 512
    speed_set               1, 80
    speed_set               0, -100
    speed_set               7, 16
    for                     0, off_3814, 2
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3814:
    speed_set               0, -10
    speed_set               4, 64
    speed_set               5, 128
    while                   6, off_3830
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_3830:
    member_set              12, 246, 255
    speed_set               7, 20
    speed_set               1, -80
    speed_set               0, -100
    speed_set               2, -100
    speed_set               5, 512
    speed_set               3, 64
    while                   6, off_385C
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_385C:
    member_set              12, 180, 0
    member_set              14, 0, 0
    member_set              15, 0, 10
    member_set              16, 0, 12
    speed_set               0, 0
    speed_set               2, 0
    speed_set               5, 0
    speed_set               1, -50
    speed_set               5, 256
    add_speed
    evt_next
    speed_set               0, 0
    speed_set               5, 0
    speed_set               1, -20
    speed_set               5, -256
    add_speed
    evt_next
    speed_set               0, 0
    speed_set               5, 0
    speed_set               1, 20
    speed_set               5, 256
    add_speed
    evt_next
    speed_set               0, 0
    speed_set               5, 0
    speed_set               1, 50
    speed_set               5, -256
    add_speed
    nop
    member_set              14, 0, 0
    evt_end                 0

.proc main_16
    work_set                WK_OBJECT, 11
    nop
    member_set              12, 232, 234
    speed_set               5, -512
    speed_set               1, 180
    speed_set               0, 100
    speed_set               7, 25
    for                     0, off_38E2, 2
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_38E2:
    speed_set               0, 10
    speed_set               4, 64
    speed_set               3, 128
    while                   6, off_38FE
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_38FE:
    member_set              12, 246, 255
    speed_set               7, 20
    speed_set               1, -100
    speed_set               0, 20
    speed_set               2, 20
    speed_set               5, 128
    speed_set               3, 512
    while                   6, off_392A
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_392A:
    member_set              12, 180, 0
    member_set              14, 0, 0
    member_set              16, 0, 12
    speed_set               0, 0
    speed_set               5, 0
    speed_set               1, -50
    speed_set               5, 256
    add_speed
    evt_next
    speed_set               0, 0
    speed_set               5, 0
    speed_set               1, -20
    speed_set               5, -256
    add_speed
    evt_next
    speed_set               0, 0
    speed_set               5, 0
    speed_set               1, 20
    speed_set               5, 256
    add_speed
    evt_next
    speed_set               0, 0
    speed_set               5, 0
    speed_set               1, 50
    speed_set               5, -256
    add_speed
    nop
    member_set              14, 0, 0
    evt_end                 0

.proc main_17
    work_set                WK_OBJECT, 9
    nop
    member_set              12, 232, 234
    speed_set               5, 256
    speed_set               3, -64
    speed_set               1, 100
    sleep                   10, 2
    for                     0, off_39A6, 4
    add_speed
    evt_next
    next                    0

off_39A6:
    sleep                   10, 4
    member_set              12, 224, 177
    evt_end                 0

.proc main_18
    work_set                WK_OBJECT, 12
    nop
    member_set              12, 232, 234
    speed_set               5, -256
    speed_set               3, -64
    speed_set               1, 100
    sleep                   10, 2
    for                     0, off_39D2, 4
    add_speed
    evt_next
    next                    0

off_39D2:
    sleep                   10, 4
    member_set              12, 224, 177
    evt_end                 0

.proc main_19
    aot_set_4p              10, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -14822, -27630, -23122, -19930, -5822, -8130, -11722, -27630, 255, 0, I_GOSUB, main_20, 0, 0
    obj_model_set           13, 0, 0, 0, 0, 0, 0, 10, 0, -18080, -32000, -14486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           14, 0, 0, 0, 0, 0, 0, 10, 0, -18080, -32000, -9036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           15, 0, 0, 0, 0, 0, 0, 10, 0, -18080, -32000, -3486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_em_set              0, 0, ENEMY_ZOMBIE_RANDOM, 10, 64, 0, 0, 3, 255, 32000, 0, 32000, 0, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_RANDOM, 10, 64, 0, 0, 0, 255, 32000, 0, 31000, 0, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_RANDOM, 10, 64, 0, 0, 3, 255, 32000, 0, 30000, 0, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIE_RANDOM, 10, 64, 0, 0, 1, 255, 32000, 0, 29000, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    work_set                WK_ENEMY, 1
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    work_set                WK_ENEMY, 2
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    work_set                WK_ENEMY, 3
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    evt_end                 0

.proc main_1A

off_3B0C:
    if                      0, off_3BBA
    cmp                     0, V_1D, CMP_GT, 22000
    copy                    V_TEMP, V_1D
    nop
    calc                    0, OP_MOD, V_TEMP, 5
    copy                    V_0A, V_TEMP
    nop
    work_copy               10, 4, 1
    for                     0, off_3BB8, 0
    sce_rnd
    nop
    copy                    V_TEMP, V_1D
    nop
    calc                    0, OP_MOD, V_TEMP, 200
    copy                    V_08, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, -2300
    copy                    V_08, V_TEMP
    nop
    sce_rnd
    nop
    copy                    V_TEMP, V_1D
    nop
    calc                    0, OP_MOD, V_TEMP, 256
    copy                    V_09, V_TEMP
    nop
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 1024
    copy                    V_09, V_TEMP
    nop
    work_copy               8, 8, 1
    se_on                   2, 260, 0, -17600, 0, -15900
    sce_rnd
    nop
    if                      0, off_3B96
    cmp                     0, V_1D, CMP_GT, 0
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 2048
    copy                    V_09, V_TEMP
    nop
    endif
    nop

off_3B96:
    work_copy               9, 20, 1
    work_copy               8, 10, 1
    sce_espr3d_on           0, 1286, 0, 3584, -17600, 0, -15900, 0, 0, 0, 0
    evt_next
    nop
    next                    0

off_3BB8:
    endif
    nop

off_3BBA:
    evt_next
    nop
    goto                    255, 255, 0, off_3B0C
    evt_end                 0

.proc main_1B

off_3BC4:
    if                      0, off_3C72
    cmp                     0, V_1D, CMP_GT, 22000
    copy                    V_TEMP, V_1D
    nop
    calc                    0, OP_MOD, V_TEMP, 5
    copy                    V_0A, V_TEMP
    nop
    work_copy               10, 4, 1
    for                     0, off_3C70, 0
    sce_rnd
    nop
    copy                    V_TEMP, V_1D
    nop
    calc                    0, OP_MOD, V_TEMP, 200
    copy                    V_08, V_TEMP
    nop
    copy                    V_TEMP, V_08
    nop
    calc                    0, OP_ADD, V_TEMP, -2480
    copy                    V_08, V_TEMP
    nop
    sce_rnd
    nop
    copy                    V_TEMP, V_1D
    nop
    calc                    0, OP_MOD, V_TEMP, 256
    copy                    V_09, V_TEMP
    nop
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 1024
    copy                    V_09, V_TEMP
    nop
    work_copy               8, 8, 1
    se_on                   2, 260, 0, -15800, 0, -7000
    sce_rnd
    nop
    if                      0, off_3C4E
    cmp                     0, V_1D, CMP_GT, 0
    copy                    V_TEMP, V_09
    nop
    calc                    0, OP_ADD, V_TEMP, 2048
    copy                    V_09, V_TEMP
    nop
    endif
    nop

off_3C4E:
    work_copy               9, 20, 1
    work_copy               8, 10, 1
    sce_espr3d_on           0, 1286, 0, 3584, -15800, 0, -7000, 0, 0, 0, 0
    evt_next
    nop
    next                    0

off_3C70:
    endif
    nop

off_3C72:
    evt_next
    nop
    goto                    255, 255, 0, off_3BC4
    evt_end                 0

.proc main_1C
    set                     FG_STATE, 7, 1
    set                     FG_GENERAL_1, 153, 1
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    se_on                   2, 257, 0, -27122, 3600, -18830
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  200, 6, 0, 0, 0
    sleep                   10, 10
    set                     FG_GAME, 27, 1
    gosub                   main_22
    cut_chg                 5
    sce_bgm_control         0, 5, 0, 0, 65
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_23
    sleep                   10, 26
    evt_exec                255, I_GOSUB, main_26
    sleep                   10, 40
    evt_exec                255, I_GOSUB, main_25
    sleep                   10, 40
    evt_exec                255, I_GOSUB, main_24
    sleep                   10, 110
    gosub                   main_35
    cut_old
    sce_bgm_control         0, 1, 0, 81, 65
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    nop
    evt_end                 0

.proc main_1D
    set                     FG_STATE, 7, 1
    set                     FG_GENERAL_1, 153, 1
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    se_on                   2, 257, 0, -4417, 3600, -18830
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  200, 6, 0, 0, 0
    sleep                   10, 10
    set                     FG_GAME, 27, 1
    gosub                   main_22
    cut_chg                 15
    sce_bgm_control         0, 5, 0, 0, 65
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_28
    sleep                   10, 26
    evt_exec                255, I_GOSUB, main_2B
    sleep                   10, 40
    evt_exec                255, I_GOSUB, main_2A
    sleep                   10, 30
    evt_exec                255, I_GOSUB, main_29
    sleep                   10, 110
    gosub                   main_35
    cut_old
    sce_bgm_control         0, 1, 0, 81, 65
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    nop
    evt_end                 0

.proc main_1E
    set                     FG_STATE, 7, 1
    set                     FG_GENERAL_1, 153, 1
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    se_on                   2, 257, 0, -27122, 3600, -18830
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  200, 6, 0, 0, 0
    sleep                   10, 10
    se_on                   2, 257, 0, -4417, 3600, -18830
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  200, 6, 0, 0, 0
    set                     FG_GAME, 27, 1
    gosub                   main_22
    cut_chg                 5
    sce_bgm_control         0, 5, 0, 0, 65
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_26
    sleep                   10, 46
    evt_exec                255, I_GOSUB, main_23
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_25
    sleep                   10, 40
    evt_exec                255, I_GOSUB, main_24
    sleep                   10, 110
    work_set                WK_ENEMY, 0
    nop
    gosub                   main_1F
    pos_set                 0, -16360, 0, -8700
    work_set                WK_ENEMY, 1
    nop
    gosub                   main_1F
    pos_set                 0, -16360, 0, -14238
    work_set                WK_ENEMY, 2
    nop
    gosub                   main_1F
    pos_set                 0, -16360, 0, -18450
    work_set                WK_ENEMY, 3
    nop
    gosub                   main_1F
    pos_set                 0, -16360, 0, -9600
    cut_old
    cut_chg                 15
    nop
    evt_exec                255, I_GOSUB, main_28
    sleep                   10, 36
    evt_exec                255, I_GOSUB, main_2B
    sleep                   10, 70
    evt_exec                255, I_GOSUB, main_29
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_2A
    sleep                   10, 110
    gosub                   main_35
    cut_old
    sce_bgm_control         0, 1, 0, 81, 65
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    nop
    evt_end                 0

.proc main_1F
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 8
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             0, V_TEMP
    nop
    member_set              23, 0, 0
    member_set              2, 1, 0
    member_set              3, 15, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_set              15, 0, 8
    parts_set               0, 0, 0, 0
    parts_set               0, 0, 1, 0
    parts_set               0, 1, 0, 0
    parts_set               0, 1, 1, 0
    parts_set               0, 2, 0, 0
    parts_set               0, 2, 1, 0
    parts_set               0, 3, 0, 0
    parts_set               0, 3, 1, 0
    parts_set               0, 4, 0, 0
    parts_set               0, 4, 1, 0
    parts_set               0, 5, 0, 0
    parts_set               0, 5, 1, 0
    parts_set               0, 6, 0, 0
    parts_set               0, 6, 1, 0
    parts_set               0, 7, 0, 0
    parts_set               0, 7, 1, 0
    parts_set               0, 8, 0, 0
    parts_set               0, 8, 1, 0
    parts_set               0, 9, 0, 0
    parts_set               0, 9, 1, 0
    parts_set               0, 10, 0, 0
    parts_set               0, 10, 1, 0
    parts_set               0, 11, 0, 0
    parts_set               0, 11, 1, 0
    parts_set               0, 12, 0, 0
    parts_set               0, 12, 1, 0
    parts_set               0, 13, 0, 0
    parts_set               0, 13, 1, 0
    parts_set               0, 14, 0, 0
    parts_set               0, 14, 1, 0
    evt_end                 0

.proc main_20
    set                     FG_STATE, 7, 1
    set                     FG_GENERAL_1, 153, 1
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    se_on                   2, 257, 0, -27122, 3600, -18830
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  200, 6, 0, 0, 0
    sleep                   10, 10
    set                     FG_GAME, 27, 1
    gosub                   main_22
    cut_chg                 5
    sce_bgm_control         0, 5, 0, 0, 65
    evt_exec                9, I_GOSUB, main_1A
    work_set                WK_OBJECT, 13
    nop
    pos_set                 0, -18080, -1260, -14486
    member_set              15, 0, 0
    work_set                WK_OBJECT, 14
    nop
    pos_set                 0, -18080, -1260, -9036
    member_set              15, 0, 0
    work_set                WK_OBJECT, 15
    nop
    pos_set                 0, -18080, -1260, -3486
    member_set              15, 0, 0
    sleep                   10, 60
    evt_kill                9
    evt_exec                255, I_GOSUB, main_2E
    sleep                   10, 16
    evt_exec                255, I_GOSUB, main_30
    evt_exec                255, I_GOSUB, main_23
    sleep                   10, 46
    evt_exec                255, I_GOSUB, main_25
    sleep                   10, 40
    evt_exec                255, I_GOSUB, main_26
    sleep                   10, 60
    evt_exec                255, I_GOSUB, main_24
    sleep                   10, 110
    gosub                   main_35
    cut_old
    sce_bgm_control         0, 1, 0, 81, 65
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    nop
    evt_end                 0

.proc main_21
    set                     FG_STATE, 7, 1
    set                     FG_GENERAL_1, 153, 1
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    se_on                   2, 257, 0, -4417, 3600, -18830
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  200, 6, 0, 0, 0
    sleep                   10, 10
    set                     FG_GAME, 27, 1
    gosub                   main_22
    cut_chg                 15
    sce_bgm_control         0, 5, 0, 0, 65
    evt_exec                9, I_GOSUB, main_1B
    work_set                WK_OBJECT, 13
    nop
    pos_set                 0, -16182, -1440, -8100
    member_set              15, 0, 8
    work_set                WK_OBJECT, 14
    nop
    pos_set                 0, -16182, -1440, -13338
    member_set              15, 0, 8
    work_set                WK_OBJECT, 15
    nop
    pos_set                 0, -16182, -1440, -17550
    member_set              15, 0, 8
    sleep                   10, 60
    evt_kill                9
    evt_exec                255, I_GOSUB, main_2F
    sleep                   10, 16
    evt_exec                255, I_GOSUB, main_30
    evt_exec                255, I_GOSUB, main_29
    sleep                   10, 20
    evt_exec                255, I_GOSUB, main_2A
    sleep                   10, 60
    evt_exec                255, I_GOSUB, main_28
    sleep                   10, 33
    evt_exec                255, I_GOSUB, main_2B
    sleep                   10, 110
    gosub                   main_35
    cut_old
    sce_bgm_control         0, 1, 0, 81, 65
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    nop
    evt_end                 0

.proc main_22
    work_set                WK_OBJECT, 5
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    nop
    member_set              43, 128, 0
    plc_motion              1, 1, 0
    sleep                   10, 6
    plc_stop
    nop
    plc_neck                2, 0, -512, 0, 64, 64
    sleep                   10, 20
    plc_neck                2, 0, 512, 0, 40, 40
    sleep                   10, 40
    evt_end                 0

.proc main_23
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -18200, 180, -12936
    se_on                   2, 276, 3, 0, 0, 0
    gosub                   main_27
    evt_end                 0

.proc main_24
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -18200, 180, -8136
    se_on                   2, 278, 259, 0, 0, 0
    gosub                   main_27
    evt_end                 0

.proc main_25
    work_set                WK_ENEMY, 2
    nop
    pos_set                 0, -18380, 360, -2586
    se_on                   2, 277, 515, 0, 0, 0
    gosub                   main_27
    evt_end                 0

.proc main_26
    work_set                WK_ENEMY, 3
    nop
    pos_set                 0, -18380, 360, -13836
    se_on                   2, 276, 771, 0, 0, 0
    gosub                   main_27
    evt_end                 0

.proc main_27
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop
    member_set              15, 0, 0
    member_set              23, 1, 0
    member_set              17, 10, 0
    save                    V_07, 0
    gosub                   main_2D
    evt_next
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             1, V_TEMP
    nop
    for                     0, off_41D6, 16
    evt_next
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 2056
    copy                    V_07, V_TEMP
    nop
    gosub                   main_2D
    next                    0

off_41D6:
    se_on                   2, 258, 0, -18200, -1800, -8136
    sleep                   10, 84
    se_on                   2, 259, 0, -18200, 0, -8136
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             0, V_TEMP
    nop
    speed_set               1, -10
    for                     0, off_420E, 18
    add_speed
    evt_next
    next                    0

off_420E:
    evt_end                 0

.proc main_28
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -16360, 0, -9700
    se_on                   2, 277, 3, 0, 0, 0
    gosub                   main_2C
    evt_end                 0

.proc main_29
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -16360, 0, -14238
    se_on                   2, 276, 259, 0, 0, 0
    gosub                   main_2C
    evt_end                 0

.proc main_2A
    work_set                WK_ENEMY, 2
    nop
    pos_set                 0, -16180, 180, -19500
    se_on                   2, 277, 515, 0, 0, 0
    gosub                   main_2C
    evt_end                 0

.proc main_2B
    work_set                WK_ENEMY, 3
    nop
    pos_set                 0, -16000, 180, -8900
    se_on                   2, 278, 771, 0, 0, 0
    gosub                   main_2C
    evt_end                 0

.proc main_2C
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    calc                    0, OP_OR, V_TEMP, 2
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             0, V_TEMP
    nop
    member_set              15, 0, 8
    member_set              17, 10, 0
    member_set              23, 1, 0
    save                    V_07, 0
    gosub                   main_2D
    evt_next
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             1, V_TEMP
    nop
    for                     0, off_42D6, 16
    evt_next
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_ADD, V_TEMP, 2056
    copy                    V_07, V_TEMP
    nop
    gosub                   main_2D
    next                    0

off_42D6:
    se_on                   2, 258, 0, -16360, -1800, -14238
    sleep                   10, 84
    se_on                   2, 259, 0, -16360, 0, -14238
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             0, V_TEMP
    nop
    evt_end                 0

.proc main_2D
    work_copy               7, 4, 1
    parts_set               0, 0, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 0, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 1, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 1, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 2, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 2, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 3, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 3, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 4, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 4, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 5, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 5, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 6, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 6, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 7, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 7, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 8, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 8, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 9, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 9, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 10, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 10, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 11, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 11, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 12, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 12, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 13, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 13, 1, 0
    work_copy               7, 4, 1
    parts_set               0, 14, 0, 0
    work_copy               7, 4, 1
    parts_set               0, 14, 1, 0
    evt_end                 0

.proc main_2E
    se_on                   2, 261, 0, -17600, -2200, -15900
    sleep                   10, 2
    se_on                   2, 262, 0, -17600, -2200, -15900
    sce_espr_on             0, 24, 0, 5120, -17600, -2200, -15900, 0
    sce_espr_on             0, 24, 0, 5120, -17600, -2100, -15900, 0
    sce_espr_on             0, 24, 0, 5632, -17600, -2100, -15800, 0
    sce_espr_on             0, 280, 0, 6144, -17600, -2200, -15900, 0
    sce_espr_on             0, 280, 0, 6656, -17600, -2100, -15800, 0
    sce_espr_on             0, 5635, 0, 2048, -17600, -2200, -15900, 0
    sce_espr_on             0, 5635, 0, 2048, -17600, -2100, -15800, 0
    sce_espr_on             0, 5635, 0, 2048, -17600, -2200, -16000, 0
    sce_espr_on             0, 4611, 0, 4096, -17600, -2200, -15900, 0
    sce_espr_on             0, 3075, 0, 4096, -17600, -2200, -15900, 0
    sce_espr_on             0, 281, 0, 2048, -17600, -2100, -15800, 0
    sleep                   10, 6
    se_on                   2, 263, 0, -17600, -2200, -15900
    sce_espr_on             0, 281, 0, 1792, -17600, -2100, -15900, 0
    sce_espr_on             0, 2564, 0, 3072, -17600, -2150, -15900, 0
    sce_espr_on             0, 2564, 0, 3072, -17600, -2100, -15850, 0
    sce_espr_on             0, 2564, 0, 2560, -17600, -2200, -15950, 0
    sce_espr_on             0, 2564, 0, 3072, -17600, -2100, -15900, 0
    sleep                   10, 2
    sce_espr_on             0, 281, 0, 1536, -17600, -2100, -15700, 0
    sleep                   10, 10
    sce_espr_on             0, 281, 0, 1280, -17600, -2100, -15800, 0
    se_on                   2, 264, 0, -17600, -2200, -15900
    evt_end                 0

.proc main_2F
    se_on                   2, 261, 0, -16182, -2380, -7000
    sleep                   10, 6
    se_on                   2, 262, 0, -16182, -2380, -7000
    sce_espr_on             0, 24, 0, 5120, -16182, -2380, -7000, 0
    sce_espr_on             0, 24, 0, 5120, -16182, -2280, -7000, 0
    sce_espr_on             0, 24, 0, 5632, -16182, -2280, -6900, 0
    sce_espr_on             0, 280, 0, 6144, -16182, -2380, -7000, 0
    sce_espr_on             0, 280, 0, 6656, -16182, -2280, -6900, 0
    sce_espr_on             0, 5635, 0, 2048, -16182, -2380, -7000, 0
    sce_espr_on             0, 5635, 0, 2048, -16182, -2280, -6900, 0
    sce_espr_on             0, 5635, 0, 2048, -16182, -2380, -7100, 0
    sce_espr_on             0, 4611, 0, 4096, -16182, -2380, -7000, 0
    sce_espr_on             0, 3075, 0, 4096, -16182, -2380, -7000, 0
    sce_espr_on             0, 281, 0, 2048, -16182, -2280, -6900, 0
    sleep                   10, 2
    se_on                   2, 263, 0, -16182, -2380, -7000
    sce_espr_on             0, 281, 0, 1792, -16182, -2280, -7000, 0
    sce_espr_on             0, 2564, 0, 3072, -16182, -2330, -7000, 0
    sce_espr_on             0, 2564, 0, 3072, -16182, -2280, -6950, 0
    sce_espr_on             0, 2564, 0, 2560, -16182, -2380, -7050, 0
    sce_espr_on             0, 2564, 0, 3072, -16182, -2280, -7000, 0
    sleep                   10, 2
    sce_espr_on             0, 281, 0, 1536, -16182, -2280, -6800, 0
    sleep                   10, 10
    sce_espr_on             0, 281, 0, 1280, -16182, -2280, -6900, 0
    se_on                   2, 264, 0, -16182, -2380, -7000
    evt_end                 0

.proc main_30
    evt_exec                255, I_GOSUB, main_31
    sleep                   10, 8
    evt_exec                255, I_GOSUB, main_32
    sleep                   10, 8
    evt_exec                255, I_GOSUB, main_33
    evt_end                 0

.proc main_31
    se_on                   2, 265, 3332, 0, 0, 0
    work_set                WK_OBJECT, 13
    nop
    gosub                   main_34
    evt_end                 0

.proc main_32
    se_on                   2, 265, 3588, 0, 0, 0
    work_set                WK_OBJECT, 14
    nop
    gosub                   main_34
    evt_end                 0

.proc main_33
    se_on                   2, 265, 3844, 0, 0, 0
    work_set                WK_OBJECT, 15
    nop
    gosub                   main_34
    evt_end                 0

.proc main_34
    speed_set               1, -150
    for                     0, off_4754, 22
    add_speed
    evt_next
    next                    0

off_4754:
    member_set              12, 0, 131
    evt_end                 0

.proc main_35
    work_set                WK_PLAYER, 0
    nop
    member_set              43, 0, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 32000, 0, 32000
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, 32000, 0, 31000
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    work_set                WK_ENEMY, 2
    nop
    pos_set                 0, 32000, 0, 30000
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    work_set                WK_ENEMY, 3
    nop
    pos_set                 0, 32000, 0, 29000
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             1, V_TEMP
    nop
    work_set                WK_OBJECT, 11
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             1, V_TEMP
    nop
    sce_espr_kill           4, 10, 0, 0
    nop
    evt_end                 0
