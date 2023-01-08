.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11719, -6044, 2000, 1800, -15873, 0, -4733, 3464, 2, 8, 5, 0, 23, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_AUTO, 0, 0, -18619, -17544, 3000, 2800, -8880, -5400, -17056, 3072, 2, 9, 0, 3, 22, 5, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -17800, 0, -16450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_em_set              0, 0, ENEMY_CHIEFIRONS1, 0, 10, 0, 0, 0, 255, -14421, 0, -15487, 643, 0, 0
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15533, -16787, 1560, 1900, 6, 0, 0, 0, 255, 255
    evt_exec                255, I_GOSUB, main_03
    work_set                WK_OBJECT, 0
    nop
    member_set              16, 0, 251
    gosub                   2
    set                     16, 1, 0
    set                     16, 2, 0
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18531, -14343, 1800, 4390, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14831, -12773, 1800, 2200, 1, 0, 0, 0, 255, 255
    aot_set                 9, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15001, -19363, 2600, 1700, 3, 0, 0, 0, 255, 255
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11511, -18473, 3500, 1800, 4, 0, 0, 0, 255, 255
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18619, -17544, 3000, 2800, 255, 0, I_GOSUB, main_05, 0, 0
    evt_end                 0

.proc main_03
    set                     1, 25, 1
    evt_next
    work_set                WK_ENEMY, 0
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    plc_motion              0, 0, 192
    evt_next
    plc_stop
    set                     1, 25, 0
    evt_end                 0

.proc main_04
    cut_chg                 4
    message_on              0, 2, 0, 255, 255
    evt_next
    cut_old
    evt_end                 0

.proc main_05
    message_on              0, 5, 0, 255, 255
    evt_next
    nop
    if                      0, off_15A2
    ck                      11, 31, 0
    aot_on                  1
    endif
    nop

off_15A2:
    evt_end                 0
