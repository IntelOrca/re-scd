.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16469, -26518, 1390, 1830, -25770, 0, -24897, 3720, 1, 7, 0, 0, 8, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_7, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24489, -27928, 2150, 930, -23193, 0, -9734, 912, 1, 2, 3, 0, 8, 0, 0, 131, UNLOCK, 0
    if                      0, off_0D24
    ck                      FG_STATUS, F_SCENARIO, 0
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, ITEM_FILMA, 1, 69, ID_OBJ_1, IF_DEFAULT
    else                    0, off_0D3C

off_0D24:
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, ITEM_FILMB, 1, 70, ID_OBJ_1, IF_DEFAULT
    nop
    nop

off_0D3C:
    aot_set                 ID_AOT_4, SCE_NORMAL, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22795, -23220, 2280, 800, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_5, SCE_NORMAL, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24842, -21898, 2650, 820, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_6, SCE_NORMAL, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27837, -25806, 1790, 3050, 0, 0, 0, 0, 0, 0
    if                      0, off_0E06
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 3, 131, -25474, 0, -25143, 79, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_42, 3, 132, -22804, 0, -23677, 1053, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_3, 3, 133, -19509, 0, -24796, 1941, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_42, 3, 134, -16956, 0, -21311, 1888, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_3, 3, 135, -21375, 0, -20558, 3432, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_42, 3, 136, -22484, 0, -19535, 56, 0, 0
    endif
    nop

off_0E06:
    evt_end                 0

.main
.proc main
    if                      0, off_0E2A
    ck                      FG_ITEM, 72, 0
    aot_reset               ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    else                    0, off_0E36

off_0E2A:
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0E36:
    if                      0, off_0E64
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_0E54
    ck                      FG_ITEM, 69, 0
    aot_reset               ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_05, 0, 0
    else                    0, off_0E60

off_0E54:
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0E60:
    else                    0, off_0E88

off_0E64:
    if                      0, off_0E7A
    ck                      FG_ITEM, 70, 0
    aot_reset               ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_05, 0, 0
    else                    0, off_0E86

off_0E7A:
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0E86:
    nop
    nop

off_0E88:
    if                      0, off_0E9E
    ck                      FG_SCENARIO, 33, 0
    aot_reset               ID_AOT_6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    else                    0, off_0EC2

off_0E9E:
    if                      0, off_0EB4
    ck                      FG_ITEM, 73, 0
    aot_reset               ID_AOT_6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    else                    0, off_0EC0

off_0EB4:
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0EC0:
    nop
    nop

off_0EC2:
    item_aot_set            ID_AOT_1, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, ITEM_BOWGUNAMMO, 36, 72, ID_OBJ_0, IF_DEFAULT
    if                      0, off_0EFA
    ck                      FG_STATUS, F_SCENARIO, 0
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, ITEM_FILMA, 1, 69, ID_OBJ_1, IF_DEFAULT
    else                    0, off_0F12

off_0EFA:
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, ITEM_FILMB, 1, 70, ID_OBJ_1, IF_DEFAULT
    nop
    nop

off_0F12:
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, ITEM_C4EXPLOSIVE, 1, 73, ID_OBJ_2, IF_DEFAULT
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, -2816, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 3520, -4416, -1406, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, -512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc aot
    if                      0, off_0FB0
    ck                      FG_ITEM, 73, 1
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0FB0:
    evt_end                 0

.proc main_02
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, ID_MSG_4, 0, 0, 255
    evt_next
    nop
    if                      0, off_0FF4
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   2, 295, 0, -25737, -1800, -24310
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    message_on              0, ID_MSG_6, 0, 0, 255
    evt_next
    set                     FG_SCENARIO, 33, 1
    nop
    evt_exec                255, I_GOSUB, main_03
    else                    0, off_100C

off_0FF4:
    se_on                   4, 261, 1, 0, 0, 0
    aot_reset               ID_AOT_6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    nop
    nop

off_100C:
    evt_end                 0

.proc main_03
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    cut_chg                 6
    se_on                   2, 296, 0, -25737, -1800, -24267
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
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, -25952, -800, -24094
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 16
    member_set2             M_POINTER, V_TEMP
    nop
    sleep                   10, 30
    aot_on                  ID_AOT_3
    evt_next
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    cut_old
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, 0, 0, 0
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
    cut_auto                1
    if                      0, off_10BA
    ck                      FG_ITEM, 73, 0
    aot_reset               ID_AOT_6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_10BA:
    if                      0, off_10D6
    ck                      FG_ITEM, 73, 1
    if                      0, off_10D4
    ck                      FG_ITEM, 113, 0
    message_on              0, ID_MSG_7, 0, 0, 255
    evt_next
    nop
    endif
    nop

off_10D4:
    endif
    nop

off_10D6:
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    evt_end                 0

.proc main_04
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 7, 1
    cut_chg                 4
    se_on                   2, 296, 0, -21422, -1800, -23270
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
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -20450, -1200, -22850
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 16
    member_set2             M_POINTER, V_TEMP
    nop
    sleep                   10, 30
    aot_on                  ID_AOT_1
    evt_next
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    cut_old
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
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, 0, 0, 0
    cut_auto                1
    if                      0, off_118C
    ck                      FG_ITEM, 72, 0
    aot_reset               ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    endif
    nop

off_118C:
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    evt_end                 0

.proc main_05
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 7, 1
    cut_chg                 5
    se_on                   2, 296, 0, -21631, -1800, -21938
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
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -23100, -1600, -21500
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 16
    member_set2             M_POINTER, V_TEMP
    nop
    sleep                   10, 30
    aot_on                  ID_AOT_2
    evt_next
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    cut_old
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, 0, 0, 0
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
    cut_auto                1
    if                      0, off_124E
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_124A
    ck                      FG_ITEM, 69, 0
    aot_reset               ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_05, 0, 0
    endif
    nop

off_124A:
    else                    0, off_1264

off_124E:
    if                      0, off_1262
    ck                      FG_ITEM, 70, 0
    aot_reset               ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_05, 0, 0
    endif
    nop

off_1262:
    nop
    nop

off_1264:
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 7, 0
    evt_end                 0
    db                      0x00, 0x00
