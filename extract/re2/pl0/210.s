.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26352, -13197, 2300, 1830, -25078, 0, -6508, 3512, 1, 15, 6, 0, 24, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    gosub                   3
    if                      0, off_12F2
    ck                      1, 1, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -26116, -1800, -23995, 0, 1728, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26716, -24895, 1000, 1900, ITEM_MAGNUM, 8, 85, 1, 0
    else                    0, off_1330

off_12F2:
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -26116, -1800, -23995, 0, 1728, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26716, -24895, 1000, 1900, ITEM_MAGNUMAMMO, 8, 85, 2, 160
    nop
    nop

off_1330:
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26016, -20995, 1400, 1400, ITEM_SHOTGUNAMMO, 7, 87, 255, 0
    if                      0, off_135A
    ck                      8, 87, 0
    aot_reset               3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_135A:
    if                      0, off_137A
    ck                      0, 25, 1
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24213, -17961, 1000, 1600, ITEM_INKRIBBON, 3, 219, 255, 0
    endif
    nop

off_137A:
    gosub                   4
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    aot_reset               3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 21, 0, 7, 0, 87, 0
    se_on                   2, 296, 1, 0, 0, 0
    aot_on                  3
    evt_next
    nop
    if                      0, off_13AE
    ck                      8, 87, 0
    aot_reset               3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_13AE:
    evt_end                 0

.proc main_03
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

.proc main_04
    aot_set_4p              25, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21513, -13518, -20713, -12518, -18813, -13218, -19713, -14978, 0, 0, 0, 0, 0, 255
    aot_set_4p              28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23713, -24688, -24353, -24088, -22723, -23378, -22203, -23948, 2, 0, 0, 0, 0, 255
    aot_set                 29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27113, -18428, 3900, 2900, 3, 0, 0, 0, 0, 255
    aot_set                 30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27113, -20938, 6300, 1340, 4, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    while                   6, off_14A6
    cmp                     0, 26, CMP_NE, 3
    evt_next
    nop
    ewhile                  0

off_14A6:
    pos_set                 0, -20648, 0, -16840
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    se_on                   3, 258, 3, 0, 0, 0
    evt_end                 0
    db                      0x00, 0x20
