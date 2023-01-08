.version 2
.init
.proc init_00
    if                      0, off_0BBE
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_0BBE:
    sca_id_set              15, 0, 0
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14981, -23528, 1760, 4400, -24654, 0, -17018, -8248, 1, 0, 2, 0, 13, 2, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27925, -26794, 1630, 2090, 4348, 0, -16776, 2080, 1, 4, 0, 0, 9, 1, 0, 0, UNLOCKED, 0
    aot_set                 10, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16441, -27028, 3660, 3300, 0, 0, 1, 0, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -14471, -1446, -25361, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 8, SCE_HIKIDASHI, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26631, -18161, 2500, 1800, 1, 0, 9, 0, 6, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20320, -26780, 2720, 1400, ITEM_107, 1, 94, 2, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -18965, -650, -26103, 0, 1728, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20001, -17361, 6500, 1820, 0, 0, 0, 0, 255, 255
    aot_set                 4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21831, -17061, 1840, 1600, 1, 0, 0, 0, 255, 255
    aot_set                 5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27907, -19677, 1340, 2420, 3, 0, 0, 0, 255, 255
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26067, -27677, 1970, 1240, 4, 0, 0, 0, 255, 255
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20612, -22364, 2010, 1660, 5, 0, 0, 0, 255, 255
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23041, -26921, 800, 5220, 7, 0, 0, 0, 255, 255
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main_00
    if                      0, off_0D2E
    ck                      1, 6, 1
    gosub                   11
    evt_end                 0
    endif
    nop

off_0D2E:
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 10, 10, ITEM_FAIDSPRAY, 1, 92, 3, 0
    obj_model_set           3, 0, 0, 0, 0, 1, 0, 10, 48, -25765, -1250, -17753, -1024, 0, 1280, 0, 0, 0, 0, 0, 0, 0, 0
    gosub                   2
    evt_end                 0

.proc main_01
    if                      0, off_0D7A
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_0D7A:
    gosub                   3
    evt_end                 0

.proc main_02
    if                      0, off_0DBA
    ck                      1, 1, 0
    if                      0, off_0DB6
    ck                      4, 5, 0
    sce_em_set              0, 0, ENEMY_LICKERRED, 2, 68, 0, 14, 0, 24, -22183, -3640, -28187, 1904, 0, 0
    work_set                WK_ENEMY, 0
    nop
    save                    4, 28784
    save                    5, 112
    gosub                   5
    gosub                   8
    endif
    nop

off_0DB6:
    else                    0, off_0E38

off_0DBA:
    if                      0, off_0DF2
    ck                      0, 25, 0
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY1, 0, 32, 0, 42, 0, 117, -23968, 0, -22913, -2283, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIEGUY1, 6, 0, 0, 43, 0, 118, -19262, 0, -24778, -589, 0, 0
    else                    0, off_0E36

off_0DF2:
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY1, 0, 0, 0, 42, 0, 117, -25702, 0, -19265, 139, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIEGUY1, 0, 32, 0, 43, 0, 118, -24155, 0, -23363, 1877, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEGUY1, 6, 0, 0, 43, 0, 212, -19862, 0, -24968, -701, 0, 0
    nop
    nop

off_0E36:
    nop
    nop

off_0E38:
    evt_end                 0

.proc main_03
    if                      0, off_0E5C
    ck                      1, 1, 0
    if                      0, off_0E5A
    cmp                     0, 26, CMP_EQ, 4
    ck                      4, 5, 0
    evt_exec                255, I_GOSUB, main_04
    set                     4, 5, 1
    endif
    nop

off_0E5A:
    endif
    nop

off_0E5C:
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    save                    7, 0
    while                   6, off_0EE0
    cmp                     0, 7, CMP_NE, 45
    if                      0, off_0EA4
    cmp                     0, 7, CMP_GT, 16
    cmp                     0, 4, CMP_GT, 0
    copy                    16, 4
    nop
    calc                    0, OP_SUB, 16, 1028
    copy                    4, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 4
    copy                    5, 16
    nop
    gosub                   5
    endif
    nop

off_0EA4:
    if                      0, off_0EB2
    cmp                     0, 7, CMP_EQ, 12
    gosub                   9
    endif
    nop

off_0EB2:
    if                      0, off_0EC0
    cmp                     0, 7, CMP_EQ, 16
    gosub                   10
    endif
    nop

off_0EC0:
    if                      0, off_0ECE
    cmp                     0, 7, CMP_EQ, 28
    gosub                   6
    endif
    nop

off_0ECE:
    copy                    16, 7
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    7, 16
    nop
    evt_next
    nop
    ewhile                  0

off_0EE0:
    gosub                   8
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    evt_end                 0

.proc main_05
    save                    6, 0
    for                     0, off_0F22, 22
    work_copy               4, 8, 1
    work_copy               6, 2, 0
    parts_set               0, 0, 0, 0
    work_copy               5, 8, 1
    work_copy               6, 2, 0
    parts_set               0, 0, 1, 0
    copy                    16, 6
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    6, 16
    nop
    next                    0

off_0F22:
    evt_end                 0

.proc main_06
    parts_set               0, 22, 2, 0
    parts_set               0, 8, 2, 0
    parts_set               0, 9, 2, 0
    parts_set               0, 7, 2, 0
    parts_set               0, 2, 2, 0
    parts_set               0, 1, 2, 0
    parts_set               0, 3, 2, 0
    parts_set               0, 10, 2, 0
    parts_set               0, 4, 2, 0
    parts_set               0, 5, 2, 0
    parts_set               0, 6, 2, 0
    parts_set               0, 11, 2, 0
    parts_set               0, 12, 2, 0
    parts_set               0, 13, 2, 0
    evt_end                 0

.proc main_07
    parts_set               0, 22, 2, 1
    parts_set               0, 8, 2, 1
    parts_set               0, 9, 2, 1
    parts_set               0, 7, 2, 1
    parts_set               0, 2, 2, 1
    parts_set               0, 1, 2, 1
    parts_set               0, 3, 2, 1
    parts_set               0, 10, 2, 1
    parts_set               0, 4, 2, 1
    parts_set               0, 5, 2, 1
    parts_set               0, 6, 2, 1
    parts_set               0, 11, 2, 1
    parts_set               0, 12, 2, 1
    parts_set               0, 13, 2, 1
    evt_end                 0

.proc main_08
    parts_set               0, 18, 2, 0
    parts_set               0, 19, 2, 0
    parts_set               0, 20, 2, 0
    parts_set               0, 21, 2, 0
    parts_set               0, 14, 2, 0
    parts_set               0, 15, 2, 0
    parts_set               0, 16, 2, 0
    parts_set               0, 17, 2, 0
    evt_end                 0

.proc main_09
    parts_set               0, 18, 2, 1
    parts_set               0, 19, 2, 1
    parts_set               0, 14, 2, 1
    parts_set               0, 15, 2, 1
    evt_end                 0

.proc main_0A
    parts_set               0, 20, 2, 1
    parts_set               0, 21, 2, 1
    parts_set               0, 16, 2, 1
    parts_set               0, 17, 2, 1
    evt_end                 0

.proc main_0B
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14981, -23528, 1760, 4400, -24654, 0, -17018, -8248, 1, 0, 2, 0, 13, 2, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27925, -26794, 1630, 2090, 4348, 0, -16776, 2080, 1, 4, 0, 0, 9, 1, 0, 0, UNLOCKED, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -14471, -1446, -25361, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_em_set              0, 0, ENEMY_BABYSPIDER, 0, 0, 0, 0, 0, 255, -15781, 0, -26161, 400, 0, 0
    sce_em_set              0, 1, ENEMY_SPIDER, 0, 0, 0, 16, 0, 115, -25303, 0, -24816, 2997, 0, 0
    sce_em_set              0, 2, ENEMY_SPIDER, 0, 0, 0, 16, 0, 116, -23836, 0, -19643, 3931, 0, 0
    evt_end                 0
