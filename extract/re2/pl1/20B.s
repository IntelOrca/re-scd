.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28381, -20818, 2000, 4100, -13128, 0, -9826, -1919, 1, 10, 0, 0, 4, 2, 0, 0, UNLOCKED, 0
    if                      0, off_2F5E
    ck                      FG_STATUS, F_BONUS, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2881, -11718, 2000, 1250, -24807, 0, -26298, -959, 1, 15, 0, 0, 5, 1, 0, 132, ITEM_HEARTKEY, 0
    else                    0, off_2F80

off_2F5E:
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2881, -11718, 2000, 1250, -24807, 0, -26298, -959, 1, 15, 0, 0, 5, 1, 0, 0, UNLOCKED, 0
    nop
    nop

off_2F80:
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -279, -26561, 1100, 2600, -20772, 0, -25169, 104, 0, 22, 0, 0, 19, 0, 0, 0, UNLOCKED, 0
    if                      0, off_3050
    ck                      FG_STATUS, F_BONUS, 1
    aot_reset               ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_18, 0, 0, 0, 0, 255
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 3, 75, -1639, 0, -22188, 3061, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_3, 3, 76, -19583, 0, -18364, 49, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_3, 3, 77, -14695, 0, -13861, 1064, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 3, 78, -24539, 0, -24982, 3569, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 3, 79, -23557, 0, -16107, 1237, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_3, 3, 80, -6049, 0, -22551, 2955, 0, 0
    sce_em_set              0, ID_EM_6, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 3, 154, -13668, 0, -25618, 4095, 0, 0
    else                    0, off_3088

off_3050:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 2, AI_40, 0, SBK_3, 3, 255, -2193, 0, -24459, 3585, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    nop
    nop

off_3088:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, -10908, -5250, -21736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 0, -21654, -5250, -14742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x76, 0x0C

.main
.proc main
    if                      0, off_3104
    ck                      FG_STATUS, F_BONUS, 1
    evt_exec                255, I_GOSUB, main_09
    evt_end                 0
    endif
    nop

off_3104:
    gosub                   main_0B
    gosub                   main_08
    aot_set                 ID_AOT_9, SCE_NORMAL, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12467, -12961, 1470, 1700, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_10, 0, 0, 0, 0, 0, 0, 10, 16, 20000, 20000, 20000, 0, -2176, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1470, 1700, ITEM_ACIDROUNDS, 6, 79, ID_OBJ_10, IF_DEFAULT
    obj_model_set           ID_OBJ_8, 0, 0, 0, 0, 0, 0, 10, 16, 20000, 20000, 20000, 0, -1856, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1470, 1700, 255, 0, I_GOSUB, main_0A, 0, 0
    if                      0, off_31A8
    ck                      FG_COMMON, 37, 0
    aot_reset               ID_AOT_9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    else                    0, off_31CC

off_31A8:
    aot_reset               ID_AOT_9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    if                      0, off_31CA
    ck                      FG_ITEM, 79, 1
    ck                      FG_ITEM, 83, 1
    aot_reset               ID_AOT_9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_31CA:
    nop
    nop

off_31CC:
    if                      0, off_3212
    ck                      FG_STATUS, F_SCENARIO, 1
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 0, 0, 10, 16, -4873, -1450, -26405, -832, -4096, -768, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5869, -27301, 2100, 2170, ITEM_VALVEHANDLE, 1, 82, ID_OBJ_7, IF_DEFAULT
    endif
    nop

off_3212:
    evt_exec                255, I_GOSUB, main_09
    evt_exec                255, I_GOSUB, main_07
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 7, 1
    cut_chg                 13
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    set                     FG_ROOM, 5, 0
    set                     FG_ROOM, 6, 0
    set                     FG_ROOM, 7, 0
    set                     FG_ROOM, 8, 0
    message_on              0, ID_MSG_13, 0, 0, 127
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_03
    if                      0, off_3286
    ck                      FG_MESSAGE, 29, 0
    if                      0, off_3284
    ck                      FG_MESSAGE, 30, 0
    if                      0, off_3282
    ck                      FG_MESSAGE, F_QUESTION, 1
    set                     FG_ROOM, 5, 1
    endif
    nop

off_3282:
    endif
    nop

off_3284:
    endif
    nop

off_3286:
    message_on              0, ID_MSG_14, 0, 0, 127
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_03
    if                      0, off_32B4
    ck                      FG_MESSAGE, 29, 0
    if                      0, off_32B2
    ck                      FG_MESSAGE, 30, 0
    if                      0, off_32B0
    ck                      FG_MESSAGE, F_QUESTION, 1
    set                     FG_ROOM, 6, 1
    endif
    nop

off_32B0:
    endif
    nop

off_32B2:
    endif
    nop

off_32B4:
    message_on              0, ID_MSG_15, 0, 0, 127
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_03
    if                      0, off_32E2
    ck                      FG_MESSAGE, 29, 0
    if                      0, off_32E0
    ck                      FG_MESSAGE, 30, 1
    if                      0, off_32DE
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_ROOM, 7, 1
    endif
    nop

off_32DE:
    endif
    nop

off_32E0:
    endif
    nop

off_32E2:
    message_on              0, ID_MSG_16, 0, 0, 127
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_03
    if                      0, off_3310
    ck                      FG_MESSAGE, 29, 1
    if                      0, off_330E
    ck                      FG_MESSAGE, 30, 0
    if                      0, off_330C
    ck                      FG_MESSAGE, F_QUESTION, 1
    set                     FG_ROOM, 8, 1
    endif
    nop

off_330C:
    endif
    nop

off_330E:
    endif
    nop

off_3310:
    if                      0, off_333C
    ck                      FG_ROOM, 5, 1
    if                      0, off_333A
    ck                      FG_ROOM, 6, 1
    if                      0, off_3338
    ck                      FG_ROOM, 7, 1
    if                      0, off_3336
    ck                      FG_ROOM, 8, 1
    set                     FG_ROOM, 9, 1
    endif
    nop

off_3336:
    endif
    nop

off_3338:
    endif
    nop

off_333A:
    endif
    nop

off_333C:
    if                      0, off_3364
    ck                      FG_ROOM, 9, 1
    set                     FG_COMMON, 37, 1
    se_on                   2, 267, 1, 0, 0, 0
    aot_reset               ID_AOT_9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    aot_on                  ID_AOT_9
    else                    0, off_3392

off_3364:
    cut_chg                 10
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    cut_auto                1
    nop
    nop

off_3392:
    evt_end                 0

.proc main_03
    se_on                   2, 266, 1, 0, 0, 0
    sleep                   10, 2
    evt_end                 0

.proc main_04
    aot_reset               ID_AOT_9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 7, 1
    sce_fade_set            2, 2, 7, 0, 16
    sleep                   10, 7
    sce_fade_set            2, 2, 7, 0, 240
    sleep                   10, 1
    cut_chg                 14
    se_on                   2, 267, 1, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_10
    nop
    pos_set                 0, -11527, -100, -11476
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 16
    member_set2             M_POINTER, V_TEMP
    nop
    if                      0, off_3418
    ck                      FG_ITEM, 83, 0
    work_set                WK_OBJECT, ID_OBJ_8
    nop
    pos_set                 0, -11527, -50, -11526
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 16
    member_set2             M_POINTER, V_TEMP
    nop
    endif
    nop

off_3418:
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    sleep                   10, 30
    if                      0, off_3456
    ck                      FG_ITEM, 79, 0
    aot_on                  ID_AOT_10
    evt_next
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    nop
    sleep                   10, 29
    endif
    nop

off_3456:
    if                      0, off_3470
    ck                      FG_ITEM, 83, 0
    aot_on                  ID_AOT_11
    evt_next
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    nop
    sleep                   10, 29
    endif
    nop

off_3470:
    sce_fade_set            2, 2, 7, 0, 16
    sleep                   10, 7
    sce_fade_set            2, 2, 7, 0, 240
    sleep                   10, 1
    cut_chg                 10
    se_on                   2, 268, 1, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_10
    nop
    pos_set                 0, 20000, 20000, 20000
    work_set                WK_OBJECT, ID_OBJ_8
    nop
    pos_set                 0, 20000, 20000, 20000
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    if                      0, off_34E4
    ck                      FG_ITEM, 79, 1
    ck                      FG_ITEM, 83, 1
    aot_reset               ID_AOT_9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    else                    0, off_34F0

off_34E4:
    aot_reset               ID_AOT_9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    nop
    nop

off_34F0:
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    cut_auto                1
    evt_end                 0

.proc main_05
    do                      0, off_3528
    evt_next
    nop
    if                      0, off_3512
    cmp                     0, V_CUT, CMP_EQ, 5
    set                     FG_ROOM, 32, 1
    endif
    nop

off_3512:
    if                      0, off_3522
    cmp                     0, V_CUT, CMP_EQ, 6
    set                     FG_ROOM, 32, 1
    endif
    nop

off_3522:
    edwhile                 off_3528
    ck                      FG_ROOM, 32, 0

off_3528:
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -5
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    set                     FG_COMMON, 28, 1
    evt_end                 0

.proc main_06
    do                      0, off_357A
    evt_next
    nop
    if                      0, off_3564
    cmp                     0, V_CUT, CMP_EQ, 5
    set                     FG_ROOM, 33, 1
    endif
    nop

off_3564:
    if                      0, off_3574
    cmp                     0, V_CUT, CMP_EQ, 6
    set                     FG_ROOM, 33, 1
    endif
    nop

off_3574:
    edwhile                 off_357A
    ck                      FG_ROOM, 33, 0

off_357A:
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -5
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    set                     FG_COMMON, 29, 1
    evt_end                 0

.proc main_07
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_PROG0_VOL, 1, 64
    evt_next

off_35A7:
    nop
    switch                  26, off_368E
    case                    0, off_35BA, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_35BA:
    case                    0, off_35C8, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 90
    break                   0

off_35C8:
    case                    0, off_35D6, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 100
    break                   0

off_35D6:
    case                    0, off_35E4, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 55
    break                   0

off_35E4:
    case                    0, off_35F2, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 55
    break                   0

off_35F2:
    case                    0, off_3600, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 64
    break                   0

off_3600:
    case                    0, off_360E, 6
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 80
    break                   0

off_360E:
    case                    0, off_361C, 7
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 110, 80
    break                   0

off_361C:
    case                    0, off_362A, 8
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 40
    break                   0

off_362A:
    case                    0, off_3638, 9
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 64
    break                   0

off_3638:
    case                    0, off_3646, 10
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 40
    break                   0

off_3646:
    case                    0, off_3654, 11
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 100
    break                   0

off_3654:
    case                    0, off_3662, 12
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 80, 40
    break                   0

off_3662:
    case                    0, off_3670, 13
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 40
    break                   0

off_3670:
    case                    0, off_367E, 14
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 40
    break                   0

off_367E:
    case                    0, off_368C, 15
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 40
    break                   0

off_368C:
    eswitch                 0

off_368E:
    do                      0, off_369A
    evt_next
    nop
    edwhile                 off_369A
    ck                      FG_STATUS, 11, 0

off_369A:
    goto                    255, 255, 0, off_35A7
    evt_end                 0

.proc main_08
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2703, -24979, 1200, 1200, ITEM_HANDGUNAMMO, 15, 74, ID_OBJ_255, IF_FLOOR
    obj_model_set           ID_OBJ_9, 0, 0, 0, 0, 0, 0, 10, 16, -15962, -1800, -17208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17685, -16193, 1700, 1800, ITEM_INKRIBBON, 3, 84, ID_OBJ_9, IF_DEFAULT
    if                      0, off_373A
    ck                      FG_STATUS, F_SCENARIO, 1
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -6777, -1500, -13443, 0, -384, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_31, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7585, -14893, 1300, 1700, ITEM_HANDGUNAMMO, 15, 48, ID_OBJ_2, IF_DEFAULT
    endif
    nop

off_373A:
    item_aot_set            ID_AOT_29, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5465, -13751, 1800, 1600, ITEM_HERBG, 1, 81, ID_OBJ_255, IF_FLOOR
    if                      0, off_3770
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_28, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5465, -13751, 1800, 1600, ITEM_HERBG, 1, 217, ID_OBJ_255, IF_FLOOR
    endif
    nop

off_3770:
    evt_end                 0

.proc main_09

off_3772:
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    if                      0, off_378C
    cmp                     0, V_CUT, CMP_EQ, 1
    pos_set                 0, 20000, 20000, 20000
    else                    0, off_3796

off_378C:
    pos_set                 0, -10908, -5250, -21736
    nop
    nop

off_3796:
    speed_set               4, 55
    add_speed
    work_set                WK_OBJECT, ID_OBJ_1
    speed_set               4, 51
    add_speed
    evt_next
    goto                    255, 255, 0, off_3772
    evt_end                 0

.proc main_0A
    message_on              0, ID_MSG_0, 0, 0, 255
    evt_next
    nop
    if                      0, off_37FC
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 262, 2052, 0, 0, 0
    set                     FG_ITEM, 83, 1
    set                     FG_MAP_I, 2, 1
    set                     FG_MAP_I, 3, 1
    set                     FG_MAP_I, 4, 1
    set                     35, 2, 1
    set                     35, 3, 1
    set                     35, 4, 1
    work_set                WK_OBJECT, ID_OBJ_8
    nop
    pos_set                 0, 20000, 20000, 20000
    evt_next
    nop
    message_on              0, ID_MSG_17, 0, 0, 255
    else                    0, off_380A

off_37FC:
    se_on                   4, 261, 2052, 0, 0, 0
    nop
    nop

off_380A:
    evt_end                 0

.proc main_0B
    if                      0, off_381A
    ck                      FG_STATUS, F_SCENARIO, 0
    gosub                   main_0C
    else                    0, off_3848

off_381A:
    if                      0, off_3828
    ck                      FG_COMMON, 153, 0
    gosub                   main_0C
    else                    0, off_3846

off_3828:
    if                      0, off_3836
    ck                      FG_ZAPPING, 10, 1
    gosub                   main_0D
    else                    0, off_3844

off_3836:
    if                      0, off_3842
    ck                      FG_ZAPPING, 9, 0
    gosub                   main_0D
    endif
    nop

off_3842:
    nop
    nop

off_3844:
    nop
    nop

off_3846:
    nop
    nop

off_3848:
    evt_end                 0

.proc main_0C
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_3, 3, 74, -8656, 0, -12993, 1681, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 3, 75, -14816, 0, -17549, 1539, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 1, AI_DEFAULT, 0, SBK_3, 3, 84, -16163, 0, -25308, 2073, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 3, 149, -22326, 0, -14870, 905, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 3, 202, -24575, 0, -21871, 3999, 0, 0
    evt_end                 0

.proc main_0D
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_3, 3, 179, -2447, 0, -17837, 177, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_3, 3, 180, -14381, 0, -16738, 1696, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 3, 181, -12952, 0, -26195, 3097, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 3, 182, -21981, 0, -15546, 849, 0, 0
    evt_end                 0
