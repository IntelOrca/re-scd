.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27580, -16397, 1000, 2000, -7827, 0, -25064, 2192, 3, 15, 0, 0, 30, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18680, -24197, 2300, 1000, -22447, -1800, -14990, 616, 3, 0, 9, 1, 6, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -21411, -23995, 2460, 800, -25690, -9000, -15339, 1048, 3, 0, 4, 5, 6, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 4, 0, -14711, -14695, 2500, 2500, -12217, 0, -26718, 3056, 3, 4, 6, 0, 40, 5, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_20, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, 20000, 20000, 1, 1, -12136, 0, -18578, 2123, 3, 1, 4, 0, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_21, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_UNDER, 0, 0, 20000, 20000, 1, 1, -12136, -7200, -18578, 2123, 3, 1, 2, 4, 22, 4, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_4, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -27090, -21710, 1700, 2200, 0, 0, 1, 0, 0, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 4, 0, 10, 16, -26799, -8680, -20184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 4, 0, 10, 16, -12465, -7200, -17144, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 4, 0, 10, 16, -13315, -7200, -13694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_5, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -23354, -26204, 1000, 1400, 5, 0, 0, 0, 0, 0
    set                     FG_PBF02, 2, 0
    set                     FG_PBF02, 4, 0
    evt_end                 0
    db                      0x8E, 0x1C

.main
.proc main
    if                      0, off_23C6
    ck                      FG_COMMON, 52, 1
    ck                      FG_COMMON, 77, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2396
    member_cmp              0, 17, 0, 4, 0
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 4, SBK_32, 0, 255, -15265, -7200, -14790, 0, 0, 0
    else                    0, off_23AE

off_2396:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY2, 0, AI_10, 0, SBK_6, 2, 4, -21479, 0, -17442, 3285, 0, 0
    nop
    nop

off_23AE:
    aot_reset               ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0E, 0, 0
    aot_reset               ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0F, 0, 0
    else                    0, off_23EE

off_23C6:
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_23EC
    member_cmp              0, 17, 0, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY2, 0, AI_10, 0, SBK_6, 2, 4, -21479, 0, -17442, 3285, 0, 0
    endif
    nop

off_23EC:
    nop
    nop

off_23EE:
    gosub                   main_03
    item_aot_set            ID_AOT_8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -27339, -26597, 1200, 1600, ITEM_FAIDSPRAY, 1, 129, ID_OBJ_255, IF_DEFAULT
    if                      0, off_241A
    ck                      FG_ITEM, 129, 0
    aot_reset               ID_AOT_8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_241A:
    item_aot_set            ID_AOT_9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -17033, -17326, 1600, 2100, ITEM_HANDGUNAMMO, 30, 130, ID_OBJ_255, IF_DEFAULT
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 0, 0, 10, 16, -24573, -3250, -25837, 0, -512, 64, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26139, -26597, 1900, 1600, ITEM_EXPLOSIVEROUNDS, 6, 131, ID_OBJ_7, IF_DEFAULT
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 16, -17478, -2900, -20187, -1152, -3904, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_12, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17908, -20837, 900, 1900, ITEM_BOWGUNAMMO, 36, 169, ID_OBJ_6, IF_DEFAULT
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 16, -19833, -8500, -17476, 0, 128, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -21463, -17536, 2100, 2300, ITEM_SEWERMANAGERFAX, 1, 132, ID_OBJ_5, IF_DEFAULT
    aot_set                 ID_AOT_23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -12765, -19899, 1800, 2800, 255, 0, I_GOSUB, main_0A, 0, 0
    aot_set                 ID_AOT_25, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -12185, -19899, 1400, 900, 255, 0, I_GOSUB, main_0A, 0, 0
    aot_set                 ID_AOT_24, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12185, -19899, 1400, 900, 255, 0, I_GOSUB, main_08, 0, 0
    gosub                   main_04
    if                      0, off_253C
    ck                      FG_COMMON, 34, 0
    aot_reset               ID_AOT_23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    sca_id_set              0, 128, 254
    else                    0, off_2558

off_253C:
    aot_reset               ID_AOT_23, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, 20000, 20000, 20000
    sca_id_set              0, 0, 0
    nop
    nop

off_2558:
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_258C
    member_cmp              0, 6, 5, 15, 0
    if                      0, off_257C
    ck                      FG_STATUS, F_SCENARIO, 0
    aot_reset               ID_AOT_0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_5, 0, 0, 0, 0, 255
    else                    0, off_2588

off_257C:
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_2588:
    else                    0, off_25DC

off_258C:
    aot_reset               ID_AOT_24, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_6, 0, 0, 0, 0, 255
    if                      0, off_25AC
    ck                      FG_ITEM, 131, 0
    aot_reset               ID_AOT_11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_7, 0, 0, 0, 0, 255
    else                    0, off_25B8

off_25AC:
    aot_reset               ID_AOT_11, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_25B8:
    if                      0, off_25CE
    ck                      FG_ITEM, 169, 0
    aot_reset               ID_AOT_12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_7, 0, 0, 0, 0, 255
    else                    0, off_25DA

off_25CE:
    aot_reset               ID_AOT_12, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_25DA:
    nop
    nop

off_25DC:
    evt_exec                255, I_GOSUB, main_05
    if                      0, off_2606
    cmp                     0, V_LAST_RDT, CMP_EQ, 1028
    set                     FG_ROOM, 5, 1
    evt_exec                255, I_GOSUB, main_10
    set                     FG_ROOM, 0, 1
    set                     FG_ROOM, 2, 0
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 1, 0
    else                    0, off_260C

off_2606:
    set                     FG_ROOM, 3, 1
    nop
    nop

off_260C:
    evt_exec                255, I_GOSUB, main_0C
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    aot_reset               ID_AOT_8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 35, 0, 1, 0, 129, 0
    se_on                   2, 296, 1, 0, 0, 0
    aot_on                  ID_AOT_8
    evt_next
    nop
    if                      0, off_2642
    ck                      FG_ITEM, 129, 0
    aot_reset               ID_AOT_8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_2642:
    evt_end                 0

.proc main_03
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 4, 0, 10, 16, -21733, -8650, -26126, -192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -22433, -26226, 1200, 1500, ITEM_INKRIBBON, 3, 128, ID_OBJ_4, IF_DEFAULT
    evt_end                 0

.proc main_04
    aot_set                 ID_AOT_26, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -27523, -19258, 2900, 6800, ID_MSG_8, 0, 0, 0, 0, 255
    aot_set                 ID_AOT_27, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19273, -18726, 2500, 1400, ID_MSG_11, 0, 0, 0, 0, 255
    aot_set                 ID_AOT_28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23903, -19196, 1200, 2600, ID_MSG_12, 0, 0, 0, 0, 255
    aot_set                 ID_AOT_29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22913, -19226, 700, 6800, ID_MSG_11, 0, 0, 0, 0, 255
    aot_set                 ID_AOT_30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -17033, -17326, 1200, 1200, ID_MSG_9, 0, 0, 0, 0, 255
    aot_set                 ID_AOT_31, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -27339, -26597, 3200, 1600, ID_MSG_10, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_05
    evt_next
    nop
    if                      0, off_2712
    cmp                     0, V_LAST_RDT, CMP_EQ, 1028
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 85, 64
    else                    0, off_272A

off_2712:
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2728
    member_cmp              0, 17, 0, 4, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 85, 64
    endif
    nop

off_2728:
    nop
    nop

off_272A:
    evt_end                 0

.proc main_06
    aot_reset               ID_AOT_23, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    if                      0, off_2752
    ck                      FG_STATUS, F_PLAYER, 0
    if                      0, off_274E
    keep_item_ck            ITEM_SMALLKEY
    set                     FG_ROOM, 32, 1
    endif
    nop

off_274E:
    else                    0, off_2758

off_2752:
    set                     FG_ROOM, 32, 1
    nop
    nop

off_2758:
    if                      0, off_27CE
    ck                      FG_ROOM, 32, 1
    message_on              0, ID_MSG_1, 0, 0, 255
    evt_next
    nop
    if                      0, off_27B2
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 262, 1, 0, 0, 0
    if                      0, off_2792
    ck                      FG_STATUS, F_PLAYER, 0
    sce_item_ck_lost        ITEM_SMALLKEY, 1
    nop
    message_on              0, ID_MSG_13, 0, 0, 255
    else                    0, off_279A

off_2792:
    message_on              0, ID_MSG_14, 0, 0, 255
    nop
    nop

off_279A:
    evt_next
    set                     FG_COMMON, 34, 1
    nop
    se_on                   2, 293, 1, 0, 0, 0
    gosub                   main_07
    else                    0, off_27CA

off_27B2:
    se_on                   4, 261, 1, 0, 0, 0
    aot_reset               ID_AOT_23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    nop
    nop

off_27CA:
    else                    0, off_27EE

off_27CE:
    aot_reset               ID_AOT_23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    message_on              0, ID_MSG_0, 0, 0, 255
    se_on                   2, 278, 1, 0, 0, 0
    evt_next
    nop
    nop
    nop

off_27EE:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_07
    set                     FG_PBF02, 2, 1
    nop_8c                  0, 80, 70, 55, 0, 13, 0
    nop_8b                  120, 5, 0, 67, 0
    sleep                   10, 17
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    speed_set               2, 0
    speed_set               8, -20
    se_on                   2, 266, 516, 0, 0, 0
    for                     0, off_282E, 3
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_282E:
    for                     0, off_2838, 45
    add_speed
    evt_next
    next                    0

off_2838:
    aot_reset               ID_AOT_23, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    pos_set                 0, 20000, 20000, 20000
    set                     FG_PBF02, 2, 0
    sca_id_set              0, 0, 0
    evt_end                 0

.proc main_08
    set                     FG_STOP, 7, 1
    aot_reset               ID_AOT_24, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_4, 0, 0, 255
    evt_next
    nop
    if                      0, off_2884
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 262, 1, 0, 0, 0
    gosub                   main_09
    else                    0, off_289C

off_2884:
    se_on                   4, 261, 1, 0, 0, 0
    aot_reset               ID_AOT_24, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_08, 0, 0
    nop
    nop

off_289C:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_09
    aot_reset               ID_AOT_24, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_28BE
    ck                      FG_COMMON, 52, 1
    ck                      FG_COMMON, 77, 0
    set                     FG_STATUS, 3, 1
    endif
    nop

off_28BE:
    aot_on                  ID_AOT_21
    evt_end                 0

.proc main_0A
    set                     FG_STOP, 7, 1
    aot_reset               ID_AOT_25, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_3, 0, 0, 255
    evt_next
    nop
    if                      0, off_28F2
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 262, 1, 0, 0, 0
    gosub                   main_0B
    else                    0, off_290A

off_28F2:
    se_on                   4, 261, 1, 0, 0, 0
    aot_reset               ID_AOT_25, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0A, 0, 0
    nop
    nop

off_290A:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0B
    aot_reset               ID_AOT_25, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STATUS, 3, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 1, 64
    aot_on                  ID_AOT_20
    evt_end                 0

.proc main_0C
    evt_next

off_2929:
    work_set                WK_PLAYER, 0
    if                      0, off_295C
    member_cmp              0, 17, 0, 0, 0
    if                      0, off_2948
    ck                      FG_ROOM, 2, 0
    set                     FG_ROOM, 2, 1
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_2948:
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 1, 1
    set                     FG_MAP, 132, 1
    set                     35, 8, 1
    else                    0, off_2976

off_295C:
    set                     FG_ROOM, 0, 1
    set                     FG_ROOM, 2, 0
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 1, 0
    set                     FG_MAP, 131, 1
    set                     35, 7, 1
    nop
    nop

off_2976:
    evt_next
    nop
    goto                    255, 255, 0, off_2929
    evt_end                 0

.proc main_0D
    while                   4, off_2A40
    ck                      FG_ROOM, 2, 1
    copy                    V_04, V_RNG
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_AND, V_TEMP, 8191
    copy                    V_04, V_TEMP
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 22000
    copy                    V_04, V_TEMP
    nop
    sce_rnd
    nop
    copy                    V_05, V_RNG
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_AND, V_TEMP, 8191
    copy                    V_05, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 22000
    copy                    V_05, V_TEMP
    nop
    work_copy               5, 16, 1
    work_copy               4, 8, 1
    sce_espr_on             0, 5376, 0, 2048, 0, -4500, 0, 0
    sleep                   10, 30
    work_copy               5, 14, 1
    work_copy               4, 6, 1
    se_on                   2, 267, 0, 0, -4500, 0
    copy                    V_05, V_RNG
    nop
    if                      0, off_2A24
    cmp                     0, V_05, CMP_GE, 0
    if                      0, off_2A1A
    cmp                     0, V_05, CMP_GE, 15000
    sleep                   10, 20
    else                    0, off_2A20

off_2A1A:
    sleep                   10, 40
    nop
    nop

off_2A20:
    else                    0, off_2A3E

off_2A24:
    if                      0, off_2A36
    cmp                     0, V_05, CMP_GE, -15000
    sleep                   10, 25
    else                    0, off_2A3C

off_2A36:
    sleep                   10, 15
    nop
    nop

off_2A3C:
    nop
    nop

off_2A3E:
    ewhile                  0

off_2A40:
    evt_end                 0

.proc main_0E
    set                     FG_STOP, 7, 1
    aot_reset               ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 81, 168, 248, 248, 114, 197
    set                     FG_STATUS, 3, 0
    aot_on                  ID_AOT_1
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0F
    set                     FG_STOP, 7, 1
    aot_reset               ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 166, 155, 216, 220, 21, 196
    set                     FG_STATUS, 3, 0
    aot_on                  ID_AOT_2
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_10
    set                     FG_STOP, 7, 1
    set                     FG_PBF02, 4, 1
    evt_exec                255, I_GOSUB, main_11
    evt_exec                255, I_GOSUB, main_12
    if                      0, off_2A98
    ck                      FG_COMMON, 52, 1
    ck                      FG_COMMON, 77, 0
    evt_exec                255, I_GOSUB, main_13
    endif
    nop

off_2A98:
    sleep                   10, 90
    set                     FG_ROOM, 5, 0
    set                     FG_STOP, 7, 0
    set                     FG_PBF02, 4, 0
    evt_end                 0

.proc main_11
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    member_set              M_Y_POS, -4800
    speed_set               1, -40
    for                     0, off_2AC0, 2
    add_speed
    evt_next
    next                    0

off_2AC0:
    nop_8b                  100, 90, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 87, 0
    nop_8a                  0, 3, 0, 85, 0
    se_on                   0, 1, 0, 0, 0, 0
    for                     0, off_2AEA, 8
    add_speed
    evt_next
    next                    0

off_2AEA:
    speed_set               1, -35
    for                     0, off_2AF8, 20
    add_speed
    evt_next
    next                    0

off_2AF8:
    speed_set               1, -30
    for                     0, off_2B06, 15
    add_speed
    evt_next
    next                    0

off_2B06:
    speed_set               1, -25
    for                     0, off_2B14, 15
    add_speed
    evt_next
    next                    0

off_2B14:
    speed_set               1, -20
    for                     0, off_2B22, 15
    add_speed
    evt_next
    next                    0

off_2B22:
    speed_set               1, -15
    for                     0, off_2B30, 10
    add_speed
    evt_next
    next                    0

off_2B30:
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    member_set2             M_Y_POS, V_TEMP
    nop
    sleep                   10, 5
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 35
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_end                 0

.proc main_12
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13629, -4800, -12997
    member_set              M_Y_DIR, 2048
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    gosub                   main_14
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    evt_end                 0

.proc main_13
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -13349, -4800, -13749
    member_set              M_Y_DIR, 2048
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    gosub                   main_14
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    evt_end                 0

.proc main_14
    speed_set               1, -40
    for                     0, off_2BC0, 10
    add_speed
    evt_next
    next                    0

off_2BC0:
    speed_set               1, -35
    for                     0, off_2BCE, 20
    add_speed
    evt_next
    next                    0

off_2BCE:
    speed_set               1, -30
    for                     0, off_2BDC, 15
    add_speed
    evt_next
    next                    0

off_2BDC:
    speed_set               1, -25
    for                     0, off_2BEA, 15
    add_speed
    evt_next
    next                    0

off_2BEA:
    speed_set               1, -20
    for                     0, off_2BF8, 15
    add_speed
    evt_next
    next                    0

off_2BF8:
    speed_set               1, -15
    for                     0, off_2C06, 10
    add_speed
    evt_next
    next                    0

off_2C06:
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    member_set2             M_Y_POS, V_TEMP
    nop
    sleep                   10, 5
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 35
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_end                 0
