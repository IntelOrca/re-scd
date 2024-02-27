.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26352, -13197, 2300, 1830, -25078, 0, -6508, 3512, 1, 15, 6, 0, 24, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -26016, -1800, -24145, 0, 1728, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26716, -24895, 1000, 1900, ITEM_ACIDROUNDS, 6, 85, ID_OBJ_1, IF_DEFAULT
    if                      0, off_1304
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24213, -17961, 1000, 1600, ITEM_INKRIBBON, 3, 219, ID_OBJ_255, IF_DEFAULT
    endif
    nop

off_1304:
    gosub                   main_03
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_COP, 2, AI_40, 0, SBK_0, 0, 255, -23657, 0, -24051, 3911, 0, 0
    work_set                WK_ENEMY, ID_EM_1
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
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -24666, -1080, -25595, 0, 831, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_1, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25216, -25895, 1300, 1200, ITEM_WATCHMANDIARY, 1, 91, ID_OBJ_0, IF_DEFAULT
    evt_end                 0

.proc main_03
    aot_set_4p              25, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21513, -13518, -20713, -12518, -18813, -13218, -19713, -14978, 0, 0, 0, 0, 0, 255
    aot_set_4p              28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23713, -24688, -24353, -24088, -22723, -23378, -22203, -23948, 2, 0, 0, 0, 0, 255
    aot_set                 ID_AOT_29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27113, -18428, 3900, 2900, ID_MSG_3, 0, 0, 0, 0, 255
    aot_set                 ID_AOT_30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27113, -20938, 6300, 1340, ID_MSG_4, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    while                   6, off_1400
    cmp                     0, V_CUT, CMP_NE, 3
    evt_next
    nop
    ewhile                  0

off_1400:
    pos_set                 0, -20648, 0, -16840
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    se_on                   3, 258, 3, 0, 0, 0
    evt_end                 0
