.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26352, -13197, 2300, 1830, -25078, 0, -6508, 3512, 1, 15, 6, 0, 24, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    gosub                   2
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -26016, -1800, -24145, 0, 1728, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26716, -24895, 1000, 1900, ITEM_ACIDROUNDS, 6, 85, 1, 0
    if                      0, off_1304
    ck                      0, 25, 1
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24213, -17961, 1000, 1600, ITEM_INKRIBBON, 3, 219, 255, 0
    endif
    nop

off_1304:
    gosub                   3
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 2, 64, 0, 0, 0, 255, -23657, 0, -24051, 3911, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -24666, -1080, -25595, 0, 831, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            1, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25216, -25895, 1300, 1200, ITEM_119, 1, 91, 0, 0
    evt_end                 0

.proc main_03
    aot_set_4p              25, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21513, -13518, -20713, -12518, -18813, -13218, -19713, -14978, 0, 0, 0, 0, 0, 255
    aot_set_4p              28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23713, -24688, -24353, -24088, -22723, -23378, -22203, -23948, 2, 0, 0, 0, 0, 255
    aot_set                 29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27113, -18428, 3900, 2900, 3, 0, 0, 0, 0, 255
    aot_set                 30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27113, -20938, 6300, 1340, 4, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    while                   6, off_1400
    cmp                     0, 26, CMP_NE, 3
    evt_next
    nop
    ewhile                  0

off_1400:
    pos_set                 0, -20648, 0, -16840
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    se_on                   3, 258, 3, 0, 0, 0
    evt_end                 0
