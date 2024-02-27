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
    if                      0, off_23DE
    ck                      FG_COMMON, 52, 1
    ck                      FG_COMMON, 77, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_23AE
    member_cmp              0, 17, 0, 4, 0
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04 | AI_08, 4, SBK_31, 0, 255, -15265, -7200, -14790, 0, 0, 0
    else                    0, off_23C6

off_23AE:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY2, 0, AI_10, 0, SBK_6, 2, 4, -21479, 0, -17442, 3285, 0, 0
    nop
    nop

off_23C6:
    aot_reset               ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0E, 0, 0
    aot_reset               ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0F, 0, 0
    else                    0, off_2406

off_23DE:
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2404
    member_cmp              0, 17, 0, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY2, 0, AI_10, 0, SBK_6, 2, 4, -21479, 0, -17442, 3285, 0, 0
    endif
    nop

off_2404:
    nop
    nop

off_2406:
    gosub                   main_03
    item_aot_set            ID_AOT_12, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -17033, -17326, 1600, 2100, ITEM_HANDGUNAMMO, 15, 130, ID_OBJ_255, IF_DEFAULT
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 16, -24673, -350, -25837, 0, -1664, 64, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26139, -26597, 1900, 1600, ITEM_SHOTGUNAMMO, 7, 131, ID_OBJ_6, IF_DEFAULT
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 0, 0, 10, 16, -17373, -2600, -19987, -3072, -4096, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_14, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18439, -20837, 1400, 2000, ITEM_MAGNUMAMMO, 8, 169, ID_OBJ_7, IF_GLINT_GRAY
    obj_model_set           ID_OBJ_8, 0, 0, 0, 0, 0, 0, 10, 16, -14033, -7200, -22976, 0, 1856, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_15, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -14633, -23526, 1200, 1200, ITEM_HERBG, 1, 178, ID_OBJ_8, IF_FLOOR
    obj_model_set           ID_OBJ_9, 0, 0, 0, 0, 0, 0, 10, 16, -13483, -7200, -22876, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_16, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -14133, -23526, 1200, 1200, ITEM_HERBG, 1, 179, ID_OBJ_9, IF_FLOOR
    obj_model_set           ID_OBJ_10, 0, 0, 0, 0, 0, 0, 10, 16, -13083, -7200, -22426, 0, -896, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_17, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -13533, -23426, 1200, 1200, ITEM_HERBG, 1, 168, ID_OBJ_10, IF_FLOOR
    aot_set                 ID_AOT_23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -12765, -19899, 1800, 2800, 255, 0, I_GOSUB, main_0A, 0, 0
    aot_set                 ID_AOT_25, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -12185, -19899, 1400, 900, 255, 0, I_GOSUB, main_0A, 0, 0
    aot_set                 ID_AOT_24, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12185, -19899, 1400, 900, 255, 0, I_GOSUB, main_08, 0, 0
    if                      0, off_259C
    ck                      FG_STATUS, F_SCENARIO, 1
    aot_reset               ID_AOT_0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_5, 0, 0, 0, 0, 255
    else                    0, off_25A8

off_259C:
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_25A8:
    gosub                   main_04
    if                      0, off_25C4
    ck                      FG_COMMON, 34, 0
    aot_reset               ID_AOT_23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    sca_id_set              0, 128, 254
    else                    0, off_25E0

off_25C4:
    aot_reset               ID_AOT_23, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, 20000, 20000, 20000
    sca_id_set              0, 0, 0
    nop
    nop

off_25E0:
    evt_exec                255, I_GOSUB, main_05
    aot_reset               ID_AOT_0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_2614
    cmp                     0, V_LAST_RDT, CMP_EQ, 1028
    set                     FG_ROOM, 5, 1
    evt_exec                255, I_GOSUB, main_10
    set                     FG_ROOM, 0, 1
    set                     FG_ROOM, 2, 0
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 1, 0
    else                    0, off_261A

off_2614:
    set                     FG_ROOM, 3, 1
    nop
    nop

off_261A:
    evt_exec                255, I_GOSUB, main_0C
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    if                      0, off_2638
    ck                      FG_ITEM, 62, 1
    aot_reset               ID_AOT_11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 27, 0, 100, 0, 129, 0
    else                    0, off_2644

off_2638:
    aot_reset               ID_AOT_11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 20, 0, 30, 0, 129, 0
    nop
    nop

off_2644:
    se_on                   2, 296, 1, 0, 0, 0
    aot_on                  ID_AOT_11
    evt_next
    nop
    if                      0, off_2668
    ck                      FG_ITEM, 129, 0
    aot_reset               ID_AOT_11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_2668:
    evt_end                 0

.proc main_03
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 4, 0, 10, 16, -21733, -8650, -26126, -192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -22433, -26226, 1200, 1500, ITEM_INKRIBBON, 3, 128, ID_OBJ_4, IF_DEFAULT
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
    if                      0, off_2738
    cmp                     0, V_LAST_RDT, CMP_EQ, 1028
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 85, 64
    else                    0, off_2750

off_2738:
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_274E
    member_cmp              0, 17, 0, 4, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 85, 64
    endif
    nop

off_274E:
    nop
    nop

off_2750:
    evt_end                 0

.proc main_06
    aot_reset               ID_AOT_23, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    if                      0, off_2778
    ck                      FG_STATUS, F_PLAYER, 0
    if                      0, off_2774
    keep_item_ck            ITEM_SMALLKEY
    set                     FG_ROOM, 32, 1
    endif
    nop

off_2774:
    else                    0, off_277E

off_2778:
    set                     FG_ROOM, 32, 1
    nop
    nop

off_277E:
    if                      0, off_27F4
    ck                      FG_ROOM, 32, 1
    message_on              0, ID_MSG_2, 0, 0, 255
    evt_next
    nop
    if                      0, off_27D8
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 262, 1, 0, 0, 0
    if                      0, off_27B8
    ck                      FG_STATUS, F_PLAYER, 0
    sce_item_ck_lost        ITEM_SMALLKEY, 1
    nop
    message_on              0, ID_MSG_13, 0, 0, 255
    else                    0, off_27C0

off_27B8:
    message_on              0, ID_MSG_14, 0, 0, 255
    nop
    nop

off_27C0:
    evt_next
    set                     FG_COMMON, 34, 1
    nop
    se_on                   2, 293, 1, 0, 0, 0
    gosub                   main_07
    else                    0, off_27F0

off_27D8:
    se_on                   4, 261, 1, 0, 0, 0
    aot_reset               ID_AOT_23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    nop
    nop

off_27F0:
    else                    0, off_2814

off_27F4:
    aot_reset               ID_AOT_23, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    message_on              0, ID_MSG_0, 0, 0, 255
    se_on                   2, 278, 1, 0, 0, 0
    evt_next
    nop
    nop
    nop

off_2814:
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
    for                     0, off_2854, 3
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2854:
    for                     0, off_285E, 45
    add_speed
    evt_next
    next                    0

off_285E:
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
    if                      0, off_28AA
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 262, 1, 0, 0, 0
    gosub                   main_09
    else                    0, off_28C2

off_28AA:
    se_on                   4, 261, 1, 0, 0, 0
    aot_reset               ID_AOT_24, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_08, 0, 0
    nop
    nop

off_28C2:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_09
    aot_reset               ID_AOT_24, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_28E4
    ck                      FG_COMMON, 52, 1
    ck                      FG_COMMON, 77, 0
    set                     FG_STATUS, 3, 1
    endif
    nop

off_28E4:
    aot_on                  ID_AOT_21
    evt_end                 0

.proc main_0A
    set                     FG_STOP, 7, 1
    aot_reset               ID_AOT_25, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_3, 0, 0, 255
    evt_next
    nop
    if                      0, off_2918
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 262, 1, 0, 0, 0
    gosub                   main_0B
    else                    0, off_2930

off_2918:
    se_on                   4, 261, 1, 0, 0, 0
    aot_reset               ID_AOT_25, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0A, 0, 0
    nop
    nop

off_2930:
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

off_294F:
    work_set                WK_PLAYER, 0
    if                      0, off_2982
    member_cmp              0, 17, 0, 0, 0
    if                      0, off_296E
    ck                      FG_ROOM, 2, 0
    set                     FG_ROOM, 2, 1
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_296E:
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 1, 1
    set                     FG_MAP, 132, 1
    set                     35, 8, 1
    else                    0, off_299C

off_2982:
    set                     FG_ROOM, 0, 1
    set                     FG_ROOM, 2, 0
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 1, 0
    set                     FG_MAP, 131, 1
    set                     35, 7, 1
    nop
    nop

off_299C:
    evt_next
    nop
    goto                    255, 255, 0, off_294F
    evt_end                 0

.proc main_0D
    while                   4, off_2A66
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
    if                      0, off_2A4A
    cmp                     0, V_05, CMP_GE, 0
    if                      0, off_2A40
    cmp                     0, V_05, CMP_GE, 15000
    sleep                   10, 20
    else                    0, off_2A46

off_2A40:
    sleep                   10, 40
    nop
    nop

off_2A46:
    else                    0, off_2A64

off_2A4A:
    if                      0, off_2A5C
    cmp                     0, V_05, CMP_GE, -15000
    sleep                   10, 25
    else                    0, off_2A62

off_2A5C:
    sleep                   10, 15
    nop
    nop

off_2A62:
    nop
    nop

off_2A64:
    ewhile                  0

off_2A66:
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
    if                      0, off_2ABE
    ck                      FG_COMMON, 52, 1
    ck                      FG_COMMON, 77, 0
    evt_exec                255, I_GOSUB, main_13
    endif
    nop

off_2ABE:
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
    for                     0, off_2AE6, 2
    add_speed
    evt_next
    next                    0

off_2AE6:
    nop_8b                  100, 90, 0, 0, 0
    nop_8c                  0, 160, 80, 20, 0, 87, 0
    nop_8a                  0, 3, 0, 85, 0
    se_on                   0, 1, 0, 0, 0, 0
    for                     0, off_2B10, 8
    add_speed
    evt_next
    next                    0

off_2B10:
    speed_set               1, -35
    for                     0, off_2B1E, 20
    add_speed
    evt_next
    next                    0

off_2B1E:
    speed_set               1, -30
    for                     0, off_2B2C, 15
    add_speed
    evt_next
    next                    0

off_2B2C:
    speed_set               1, -25
    for                     0, off_2B3A, 15
    add_speed
    evt_next
    next                    0

off_2B3A:
    speed_set               1, -20
    for                     0, off_2B48, 15
    add_speed
    evt_next
    next                    0

off_2B48:
    speed_set               1, -15
    for                     0, off_2B56, 10
    add_speed
    evt_next
    next                    0

off_2B56:
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
    for                     0, off_2BE6, 10
    add_speed
    evt_next
    next                    0

off_2BE6:
    speed_set               1, -35
    for                     0, off_2BF4, 20
    add_speed
    evt_next
    next                    0

off_2BF4:
    speed_set               1, -30
    for                     0, off_2C02, 15
    add_speed
    evt_next
    next                    0

off_2C02:
    speed_set               1, -25
    for                     0, off_2C10, 15
    add_speed
    evt_next
    next                    0

off_2C10:
    speed_set               1, -20
    for                     0, off_2C1E, 15
    add_speed
    evt_next
    next                    0

off_2C1E:
    speed_set               1, -15
    for                     0, off_2C2C, 10
    add_speed
    evt_next
    next                    0

off_2C2C:
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
    db                      0x18, 0x00
