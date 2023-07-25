.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -25760, -2859, 3200, 1800, -10554, 0, -21548, -1024, 5, 2, 0, 0, 38, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -2360, -6460, 1800, 4000, -25346, -18000, -14052, 0, 5, 4, 0, 10, 38, 0, 0, 150, ITEM_POWERROOMKEY, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, 0, 0, 0, 0, -24500, 0, -24000, 0, 5, 5, 0, 0, 40, 5, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_1B
    sce_em_set              0, 1, ENEMY_ZOMBIE_SCIENTIST, 5, 64, 0, 0, 0, 255, -11100, 0, -26028, 2048, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             0, V_TEMP
    nop
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -20500, 0, -16000, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    save                    V_09, 1
    if                      0, off_2AD8
    cmp                     0, V_LAST_RDT, CMP_EQ, 1538
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 232, 234
    member_set              17, 3, 0
    save                    V_09, 2
    endif
    nop

off_2AD8:
    obj_model_set           1, 2, 0, 0, 0, 3, 0, 384, 0, -22650, -5400, -13450, 0, 0, 0, 0, -900, 0, 900, 132, 3, 132, 3
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, 100, 0, -14700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_2B46
    ck                      FG_GENERAL_1, 107, 1
    work_set                WK_OBJECT, 1
    nop
    member_set              11, 130, 201
    member_set              12, 0, 0
    member_set              13, 118, 243
    member_set              17, 0, 0
    sca_id_set              33, 0, 128
    endif
    nop

off_2B46:
    obj_model_set           3, 0, 0, 0, 0, 3, 0, 10, 16, -23800, -6840, -25800, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_2B9C
    ck                      FG_GAME, F_PLAYER, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 0, 0, -22000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2B9C:
    aot_set                 3, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 3, 0, -18200, -14400, 800, 1200, 5, 0, ITEM_SHOTGUNPARTS, 0, aot, 0
    aot_set                 23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -17600, -14100, 900, 1100, 255, 0, I_GOSUB, main_0A, 0, 0
    aot_set                 4, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -18200, -14400, 800, 1200, 5, 0, ITEM_FAIDSPRAY, 0, aot, 0
    aot_set                 24, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17600, -14100, 900, 1100, 255, 0, I_GOSUB, main_0C, 0, 0
    aot_set                 5, SCE_EVENT, SAT_SPL | SAT_UNDER, 3, 0, -20700, -15100, 3400, 1500, 255, 0, I_GOSUB, main_05, 0, 0
    aot_set                 6, SCE_EVENT, SAT_SPL | SAT_UNDER, 3, 0, -20700, -13600, 3400, 1400, 255, 0, I_GOSUB, main_06, 0, 0
    aot_set                 7, SCE_EVENT, SAT_SPL | SAT_UNDER, 0, 0, -20700, -15100, 2800, 2500, 255, 0, I_GOSUB, main_07, 0, 0
    aot_set                 8, SCE_EVENT, SAT_SPL | SAT_UNDER, 0, 0, -19700, -17200, 3400, 2100, 255, 0, I_GOSUB, main_08, 0, 0
    aot_set                 9, SCE_EVENT, SAT_SPL | SAT_UNDER, 0, 0, -17900, -16300, 1400, 3600, 255, 0, I_GOSUB, main_08, 0, 0
    aot_set                 10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, -1160, -16400, 1800, 3400, 255, 0, I_GOSUB, main_0F, 0, 0
    if                      0, off_2C74
    cmp                     0, V_CUT, CMP_EQ, 7
    evt_exec                255, I_GOSUB, main_10
    endif
    nop

off_2C74:
    aot_set                 11, SCE_EVENT, SAT_SPL | SAT_UNDER, 0, 0, -14600, -4200, 1800, 1800, 255, 0, I_GOSUB, main_14, 0, 0
    aot_set                 12, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -25500, -26700, 2700, 2700, 3, 0, 4, 0, 0, 0
    aot_set                 16, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5800, -24900, 2000, 2100, 9, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -22200, -5400, -26200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 16, -5180, -1800, -24200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            15, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -22600, -27000, 1000, 1200, ITEM_HERBG, 1, 57, 6, 1
    item_aot_set            13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5800, -24900, 2000, 2100, ITEM_INKRIBBON, 3, 58, 7, 0
    if                      0, off_2D70
    ck                      FG_GAME, F_PLAYER, 0
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 10, 16, -3930, 0, -26550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            17, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4600, -27400, 1200, 1200, ITEM_SHOTGUNAMMO, 7, 59, 8, 1
    else                    0, off_2DAE

off_2D70:
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 10, 16, -3930, 0, -26550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            17, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4600, -27400, 1200, 1200, ITEM_FLAMEROUNDS, 12, 59, 8, 1
    nop
    nop

off_2DAE:
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 16, -11700, 0, -26850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            18, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12900, -27200, 1000, 1000, ITEM_7E, 1, 63, 9, 1
    aot_set                 19, SCE_EVENT, SAT_PL | SAT_UNDER, 3, 0, -29000, -17500, 29400, 16100, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 20, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -23250, -28750, 26250, 28600, 255, 0, I_GOSUB, main_04, 0, 0
    evt_exec                255, I_GOSUB, main_1A
    sce_bgm_control         1, 0, 1, 100, 64
    save                    V_07, 0
    save                    V_08, 1
    evt_end                 0

.proc aot
    switch                  9, off_2E9C
    case                    0, off_2E36, 0
    save                    V_07, 2
    break                   0

off_2E36:
    case                    0, off_2E68, 2
    if                      0, off_2E56
    ck                      FG_GENERAL_2, 14, 1
    aot_reset               23, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    save                    V_07, 1
    else                    0, off_2E66

off_2E56:
    aot_reset               23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0A, 0, 0
    save                    V_07, 0
    nop
    nop

off_2E66:
    break                   0

off_2E68:
    case                    0, off_2E9A, 1
    if                      0, off_2E88
    ck                      FG_GENERAL_2, 15, 1
    aot_reset               24, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    save                    V_07, 1
    else                    0, off_2E98

off_2E88:
    aot_reset               24, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0C, 0, 0
    save                    V_07, 0
    nop
    nop

off_2E98:
    break                   0

off_2E9A:
    eswitch                 0

off_2E9C:
    gosub                   main_02
    set                     FG_GENERAL_2, 14, 0
    set                     FG_GENERAL_2, 15, 0
    evt_end                 0

.proc main_02
    if                      0, off_2F34
    work_copy               8, 4, 1
    cmp                     0, V_07, CMP_NE, 0
    sce_espr_kill           22, 20, 4, 0
    sce_espr_kill           22, 4, 4, 0
    sce_espr_kill           22, 12, 4, 0
    nop
    switch                  7, off_2F32
    case                    0, off_2EEC, 0
    sce_espr3d_on           0, 5142, 4, 5376, -2600, -1900, 3200, 0, -1024, 0, 0
    save                    V_08, 0
    break                   0

off_2EEC:
    case                    0, off_2F0E, 1
    sce_espr3d_on           0, 1046, 4, 5376, -2600, -1900, 3200, 0, -1024, 0, 0
    save                    V_08, 1
    break                   0

off_2F0E:
    case                    0, off_2F30, 2
    sce_espr3d_on           0, 3094, 4, 5376, -2600, -1900, 3200, 0, -1024, 0, 0
    save                    V_08, 2
    break                   0

off_2F30:
    eswitch                 0

off_2F32:
    endif
    nop

off_2F34:
    evt_end                 0

.proc main_03
    set                     35, 13, 1
    set                     FG_9, 135, 1
    evt_end                 0

.proc main_04
    set                     35, 14, 1
    set                     FG_9, 136, 1
    evt_end                 0

.proc main_05
    set                     FG_GENERAL_2, 10, 1
    evt_end                 0

.proc main_06
    set                     FG_GENERAL_2, 10, 0
    set                     FG_GENERAL_2, 14, 1
    evt_end                 0

.proc main_07
    set                     FG_GENERAL_2, 11, 1
    evt_end                 0

.proc main_08
    set                     FG_GENERAL_2, 11, 0
    set                     FG_GENERAL_2, 15, 1
    evt_end                 0

.proc main_09
    set                     FG_GENERAL_2, 34, 1
    evt_end                 0

.proc main_0A
    if                      0, off_2F7C
    ck                      FG_GENERAL_2, 34, 0
    evt_end                 0
    endif
    nop

off_2F7C:
    message_on              0, 9, 0, 255, 255
    evt_next
    nop
    if                      0, off_3092
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_STATE, 7, 1
    se_on                   2, 17, 0, 0, 0, 0
    sleep                   10, 10
    save                    V_09, 0
    cut_chg                 1
    nop_8b                  100, 180, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 177, 0
    nop_8a                  0, 3, 0, 175, 0
    se_on                   2, 11, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    save                    V_05, 0
    for                     0, off_3042, 180
    work_set                WK_OBJECT, 0
    nop
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 30
    member_set2             12, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 30
    member_set2             12, V_TEMP
    nop
    if                      0, off_3022
    ck                      FG_GENERAL_2, 10, 1
    work_set                WK_OBJECT, 1
    nop
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 30
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_3022:
    evt_next
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_05, V_TEMP
    nop
    if                      0, off_3040
    cmp                     0, V_05, CMP_EQ, 75
    cut_chg                 10
    endif
    nop

off_3040:
    next                    0

off_3042:
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 0, 0
    member_set              17, 0, 0
    work_set                WK_PLAYER, 0
    nop
    member_set              12, 0, 0
    member_set              17, 0, 0
    if                      0, off_3070
    ck                      FG_GENERAL_2, 10, 1
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 0, 0
    member_set              17, 0, 0
    endif
    nop

off_3070:
    set                     FG_GENERAL_2, 10, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             0, V_TEMP
    nop
    save                    V_09, 1
    gosub                   main_17
    set                     35, 14, 1
    endif
    nop

off_3092:
    evt_end                 0

.proc main_0B
    set                     FG_GENERAL_2, 35, 1
    evt_end                 0

.proc main_0C
    if                      0, off_30A6
    ck                      FG_GENERAL_2, 35, 0
    evt_end                 0
    endif
    nop

off_30A6:
    message_on              0, 9, 0, 255, 255
    evt_next
    nop
    if                      0, off_31B8
    ck                      FG_INPUT, F_QUESTION, 0
    set                     FG_STATE, 7, 1
    se_on                   2, 17, 0, 0, 0, 0
    sleep                   10, 10
    save                    V_09, 0
    cut_chg                 10
    nop_8b                  100, 180, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 177, 0
    nop_8a                  0, 3, 0, 175, 0
    se_on                   2, 11, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    save                    V_05, 0
    for                     0, off_316C, 180
    work_set                WK_OBJECT, 0
    nop
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    member_set2             12, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    member_set2             12, V_TEMP
    nop
    if                      0, off_314C
    ck                      FG_GENERAL_2, 11, 1
    work_set                WK_OBJECT, 1
    nop
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_314C:
    evt_next
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_05, V_TEMP
    nop
    if                      0, off_316A
    cmp                     0, V_05, CMP_EQ, 75
    cut_chg                 1
    endif
    nop

off_316A:
    next                    0

off_316C:
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 232, 234
    member_set              17, 3, 0
    work_set                WK_PLAYER, 0
    nop
    member_set              12, 232, 234
    member_set              17, 3, 0
    if                      0, off_319A
    ck                      FG_GENERAL_2, 11, 1
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 232, 234
    member_set              17, 3, 0
    endif
    nop

off_319A:
    set                     FG_GENERAL_2, 11, 0
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             0, V_TEMP
    nop
    save                    V_09, 2
    gosub                   main_17
    endif
    nop

off_31B8:
    evt_end                 0

.proc main_0D
    for                     0, off_320C, 20
    work_set                WK_OBJECT, 2
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_SUB, V_TEMP, 5
    member_set2             15, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_SUB, V_TEMP, 5
    member_set2             15, V_TEMP
    nop
    evt_next
    work_set                WK_OBJECT, 2
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_ADD, V_TEMP, 5
    member_set2             15, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_ADD, V_TEMP, 5
    member_set2             15, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_320C:
    evt_end                 0

.proc main_0E
    for                     0, off_3260, 2
    work_set                WK_OBJECT, 2
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    member_set2             15, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_SUB, V_TEMP, 30
    member_set2             15, V_TEMP
    nop
    evt_next
    work_set                WK_OBJECT, 2
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_ADD, V_TEMP, 30
    member_set2             15, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, 15
    nop
    calc                    0, OP_ADD, V_TEMP, 30
    member_set2             15, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_3260:
    evt_end                 0

.proc main_0F
    aot_on                  2
    evt_end                 0

.proc main_10
    set                     FG_STATE, 7, 1
    evt_next
    nop
    nop_8b                  100, 90, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 87, 0
    nop_8a                  0, 3, 0, 85, 0
    se_on                   0, 1, 516, 0, 0, 0
    evt_exec                255, I_GOSUB, main_11
    evt_exec                255, I_GOSUB, main_12
    sleep                   10, 90
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_11
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 96, 9
    gosub                   main_13
    evt_end                 0

.proc main_12
    work_set                WK_PLAYER, 0
    nop
    member_set              11, 100, 0
    member_set              12, 96, 9
    member_set              13, 148, 198
    member_set              15, 0, 8
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             0, V_TEMP
    nop
    gosub                   main_13
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             0, V_TEMP
    nop
    evt_end                 0

.proc main_13
    speed_set               1, -40
    for                     0, off_32EC, 10
    add_speed
    evt_next
    next                    0

off_32EC:
    speed_set               1, -35
    for                     0, off_32FA, 20
    add_speed
    evt_next
    next                    0

off_32FA:
    speed_set               1, -30
    for                     0, off_3308, 15
    add_speed
    evt_next
    next                    0

off_3308:
    speed_set               1, -25
    for                     0, off_3316, 15
    add_speed
    evt_next
    next                    0

off_3316:
    speed_set               1, -20
    for                     0, off_3324, 15
    add_speed
    evt_next
    next                    0

off_3324:
    speed_set               1, -15
    for                     0, off_3332, 10
    add_speed
    evt_next
    next                    0

off_3332:
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    member_set2             12, V_TEMP
    nop
    sleep                   10, 5
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 35
    member_set2             12, V_TEMP
    nop
    evt_end                 0

.proc main_14
    set                     FG_GENERAL_1, 107, 1
    aot_reset               11, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sca_id_set              33, 0, 128
    evt_end                 0

.proc main_15
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 33, 2048, 128
    gosub                   main_19
    sleep                   10, 20
    cut_chg                 14
    work_set                WK_OBJECT, 5
    nop
    super_set               0, 128, 142, 0, 220, 10, 1024, -2048, 0
    se_on                   2, 10, 0, 0, 0, 0
    sleep                   10, 60
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 0, 0
    plc_motion              0, 16, 0
    sleep                   10, 20
    cut_chg                 6
    sleep                   10, 1
    xa_on                   0, 11
    message_on              0, 0, 0, 0, 0
    sleep                   10, 20
    plc_motion              0, 15, 0
    sleep                   10, 5
    plc_motion              0, 15, 128
    plc_cnt                 10
    sleep                   10, 5
    wsleep
    wsleeping
    cut_chg                 14
    sleep                   10, 1
    xa_on                   0, 12
    message_on              0, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 30
    plc_motion              0, 15, 128
    sleep                   10, 5
    plc_motion              0, 15, 0
    plc_cnt                 10
    sleep                   10, 30
    plc_motion              0, 15, 128
    sleep                   10, 5
    plc_motion              0, 15, 0
    plc_cnt                 10
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 6
    sleep                   10, 1
    xa_on                   0, 13
    message_on              0, 2, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 128
    nop
    sleep                   10, 15
    sleep                   10, 30
    plc_motion              0, 15, 0
    sleep                   10, 5
    plc_motion              0, 15, 128
    plc_cnt                 10
    sleep                   10, 5
    sleep                   10, 30
    plc_motion              0, 15, 0
    sleep                   10, 5
    plc_motion              0, 15, 128
    plc_cnt                 10
    sleep                   10, 5
    sleep                   10, 30
    plc_motion              0, 15, 0
    sleep                   10, 5
    plc_motion              0, 15, 128
    plc_cnt                 10
    sleep                   10, 5
    sleep                   10, 30
    plc_motion              0, 15, 0
    sleep                   10, 5
    plc_motion              0, 15, 128
    plc_cnt                 10
    sleep                   10, 5
    sleep                   10, 30
    plc_motion              0, 15, 0
    sleep                   10, 5
    plc_motion              0, 15, 128
    plc_cnt                 10
    sleep                   10, 5
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 14
    sleep                   10, 1
    xa_on                   0, 14
    message_on              0, 3, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 30
    plc_motion              0, 15, 128
    sleep                   10, 5
    plc_motion              0, 15, 0
    plc_cnt                 10
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 6
    sleep                   10, 1
    xa_on                   0, 15
    message_on              0, 4, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 128
    nop
    sleep                   10, 15
    sleep                   10, 30
    plc_motion              0, 15, 0
    sleep                   10, 5
    plc_motion              0, 15, 128
    plc_cnt                 10
    sleep                   10, 5
    sleep                   10, 30
    plc_motion              0, 15, 0
    sleep                   10, 5
    plc_motion              0, 15, 128
    plc_cnt                 10
    sleep                   10, 5
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 14
    sleep                   10, 1
    xa_on                   0, 16
    message_on              0, 5, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 30
    plc_motion              0, 15, 128
    sleep                   10, 5
    plc_motion              0, 15, 0
    plc_cnt                 10
    sleep                   10, 30
    plc_motion              0, 15, 128
    sleep                   10, 5
    plc_motion              0, 15, 0
    plc_cnt                 10
    sleep                   10, 10
    plc_motion              0, 15, 128
    sleep                   10, 5
    plc_motion              0, 15, 0
    plc_cnt                 10
    sleep                   10, 15
    sleep                   10, 30
    plc_motion              0, 17, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    work_set                WK_OBJECT, 5
    nop
    super_set               0, 0, 0, 0, -22000, 0, 0, 0, 0
    sleep                   10, 20
    cut_chg                 6
    sce_bgm_control         0, 1, 0, 0, 0
    sce_bgmtbl_set          0, 3, 6, 8209, 32768
    gosub                   main_18
    unk                     132, 3
    evt_end                 0

.proc main_16
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 33, 2048, 128
    gosub                   main_19
    sleep                   10, 20
    sleep                   10, 1
    xa_on                   0, 1
    message_on              0, 7, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                4, 2, 0, 0, 60, 30
    plc_motion              0, 16, 0
    sleep                   10, 30
    plc_motion              0, 16, 128
    sleep                   10, 30
    plc_motion              0, 15, 0
    sleep                   10, 20
    sleep                   10, 10
    wsleep
    wsleeping
    cut_chg                 14
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 512, 128, 60, 30
    sleep                   10, 30
    plc_neck                2, 0, -512, 128, 60, 30
    sleep                   10, 30
    cut_chg                 6
    sleep                   10, 1
    xa_on                   0, 2
    message_on              0, 8, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 0, 0
    sleep                   10, 30
    plc_motion              0, 15, 128
    sleep                   10, 20
    wsleep
    wsleeping
    sce_bgm_control         0, 1, 0, 0, 0
    sce_bgmtbl_set          0, 3, 6, 8209, 32768
    gosub                   main_18
    evt_end                 0

.proc main_17
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    cut_auto                1
    evt_end                 0

.proc main_18
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_19
    do                      0, off_36A8
    evt_next
    nop
    edwhile                 off_36A8
    ck                      FG_GENERAL_2, 33, 0

off_36A8:
    evt_end                 0

.proc main_1A
    if                      0, off_3914
    ck                      FG_GENERAL_2, 20, 0
    copy                    V_TEMP, V_1D
    nop
    calc                    0, OP_MOD, V_TEMP, 7
    copy                    V_06, V_TEMP
    nop
    switch                  6, off_3912
    case                    0, off_3708, 0
    se_on                   2, 15, 0, 0, 0, 0
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -10400, 0
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -7600, 0
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -4800, 0
    break                   0

off_3708:
    case                    0, off_370E, 1

off_370E:
    case                    0, off_3742, 65535
    se_on                   2, 15, 0, 0, 0, 0
    sce_espr_on             0, 260, 0, 4096, -10500, -2700, -21500, 0
    sce_espr_on             0, 260, 0, 4096, -10500, -4900, -21500, 0
    break                   0

off_3742:
    case                    0, off_3748, 2

off_3748:
    case                    0, off_37B0, 65534
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -10400, 0
    se_on                   2, 16, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -7600, 0
    se_on                   2, 16, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -4800, 0
    se_on                   2, 16, 0, 0, 0, 0
    sleep                   10, 10
    break                   0

off_37B0:
    case                    0, off_37B6, 3

off_37B6:
    case                    0, off_37F2, 65533
    se_on                   2, 15, 0, 0, 0, 0
    sce_espr_on             0, 260, 0, 4096, -10500, -2700, -21500, 0
    sleep                   10, 10
    sce_espr_on             0, 260, 0, 4096, -10500, -4900, -21500, 0
    sleep                   10, 10
    break                   0

off_37F2:
    case                    0, off_37F8, 4

off_37F8:
    case                    0, off_3860, 65532
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -7600, 0
    se_on                   2, 16, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -4800, 0
    se_on                   2, 16, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -10400, 0
    se_on                   2, 16, 0, 0, 0, 0
    sleep                   10, 10
    break                   0

off_3860:
    case                    0, off_3866, 5

off_3866:
    case                    0, off_38A2, 65531
    se_on                   2, 15, 0, 0, 0, 0
    sce_espr_on             0, 260, 0, 4096, -10500, -4900, -21500, 0
    sleep                   10, 10
    sce_espr_on             0, 260, 0, 4096, -10500, -2700, -21500, 0
    sleep                   10, 10
    break                   0

off_38A2:
    case                    0, off_38A8, 6

off_38A8:
    case                    0, off_3910, 65530
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -4800, 0
    se_on                   2, 16, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -10400, 0
    se_on                   2, 16, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr_on             0, 260, 0, 4096, -16500, -2000, -7600, 0
    se_on                   2, 16, 0, 0, 0, 0
    sleep                   10, 10
    break                   0

off_3910:
    eswitch                 0

off_3912:
    endif
    nop

off_3914:
    sleep                   10, 100
    evt_exec                255, I_GOSUB, main_1A
    evt_end                 0

.proc main_1B
    if                      0, off_3930
    ck                      FG_GENERAL_1, 254, 1
    set                     FG_GENERAL_1, 115, 0
    set                     FG_GENERAL_1, 92, 1
    endif
    nop

off_3930:
    if                      0, off_3968
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_3966
    ck                      FG_GENERAL_1, 115, 0
    if                      0, off_3964
    ck                      FG_GENERAL_1, 92, 1
    sce_em_set              0, 0, ENEMY_2C, 0, 64, 0, 0, 0, 255, 17288, 0, 17275, 4875, 0, 0
    evt_exec                255, I_GOSUB, main_1C
    endif
    nop

off_3964:
    endif
    nop

off_3966:
    endif
    nop

off_3968:
    evt_end                 0

.proc main_1C
    set                     FG_GENERAL_1, 115, 1
    evt_next
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    sce_bgm_control         1, 2, 0, 0, 0
    set                     FG_GENERAL_2, 20, 1
    cut_chg                 15
    nop
    sce_fade_set            1, 2, 7, 0, 254
    for                     0, off_3994, 64
    evt_next
    nop
    next                    0

off_3994:
    sleep                   10, 40
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -6321, 600, -14526
    dir_set                 0, 0, 2048, 0
    member_set              23, 1, 0
    se_on                   2, 270, 0, -8021, 600, -14526
    evt_next
    nop
    se_on                   2, 264, 0, -8021, 600, -14526
    sleep                   10, 52
    se_on                   2, 265, 0, -8021, 600, -14526
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  255, 5, 0, 1, 0
    nop_8c                  0, 255, 50, 7, 0, 6, 0
    nop_8c                  0, 50, 0, 35, 0, 13, 0
    sleep                   10, 2
    set                     FG_GAME, 29, 1
    sleep                   10, 5
    set                     FG_GAME, 29, 0
    set                     FG_GAME, 28, 1
    sleep                   10, 8
    set                     FG_GAME, 28, 0
    sleep                   10, 30
    sce_fade_set            1, 2, 7, 0, 2
    for                     0, off_3A26, 64
    evt_next
    nop
    next                    0

off_3A26:
    cut_chg                 6
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 8021, 600, 14526
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     FG_GAME, 27, 0
    set                     FG_STATE, 7, 0
    sce_bgm_control         1, 1, 1, 100, 64
    set                     FG_GENERAL_2, 20, 0
    if                      0, off_3A74
    ck                      FG_GENERAL_1, 115, 1
    ck                      FG_GENERAL_1, 108, 0
    if                      0, off_3A68
    ck                      FG_GAME, F_PLAYER, 0
    evt_exec                255, I_GOSUB, main_15
    else                    0, off_3A6E

off_3A68:
    evt_exec                255, I_GOSUB, main_16
    nop
    nop

off_3A6E:
    set                     FG_GENERAL_1, 108, 1
    endif
    nop

off_3A74:
    evt_end                 0

.proc main_1D
    do                      0, off_3A82
    evt_next
    nop
    edwhile                 off_3A82
    ck                      FG_GENERAL_2, 32, 0

off_3A82:
    evt_end                 0
