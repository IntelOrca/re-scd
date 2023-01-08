.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5647, -9132, 1520, 2100, -4168, 0, -8105, 0, 6, 0, 5, 0, 46, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27827, -24132, 1530, 2510, -10020, 0, -13773, 2068, 6, 2, 0, 0, 26, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    gosub                   2
    evt_end                 0

.proc main_01
    gosub                   3
    evt_end                 0

.proc main_02
    aot_set                 3, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -30699, -4614, 1800, 2260, 0, 0, 1, 0, 0, 0
    item_aot_set            4, SCE_ITEM, SAT_AUTO, 0, 0, 0, 0, 1, 1, ITEM_JOINTPLUGBLUE, 1, 34, 255, 0
    item_aot_set            5, SCE_ITEM, SAT_AUTO, 0, 0, 0, 0, 1, 1, ITEM_JOINTPLUGRED, 1, 39, 255, 0
    aot_set                 8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6161, -19655, 1800, 1800, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5061, -21792, 1710, 1960, 255, 0, I_GOSUB, main_0C, 0, 0
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -31834, -6844, 1800, 2400, 1, 0, 0, 0, 255, 255
    if                      0, off_1F5C
    ck                      4, 183, 0
    aot_set_4p              10, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -11011, -10597, -8211, -1097, -4511, -997, -8711, -12697, 255, 0, I_GOSUB, main_0D, 0, 0
    endif
    nop

off_1F5C:
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -30540, -1440, -3210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -4464, -3456, -20700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -4464, -3186, -20700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -4464, -2916, -20700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -4464, -2646, -20700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -4464, -2376, -20700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 16, -4464, -2106, -20700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_20B8
    ck                      4, 144, 1
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -4464, -23456, -20700
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -4464, -23186, -20700
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -4464, -22916, -20700
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -4464, -22646, -20700
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, -4464, -22376, -20700
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, -4464, -22106, -20700
    endif
    nop

off_20B8:
    if                      0, off_20CA
    ck                      34, 34, 0
    set                     22, 3, 0
    set                     21, 3, 0
    endif
    nop

off_20CA:
    if                      0, off_20DC
    ck                      34, 39, 0
    set                     22, 4, 0
    set                     21, 6, 0
    endif
    nop

off_20DC:
    set                     14, 3, 0
    set                     21, 5, 0
    sce_espr3d_on           0, 22, 0, 3840, -5200, -1656, -18700, 0, 1024, 0, 0
    evt_end                 0

.proc main_03
    evt_end                 0

.proc main_04
    if                      0, off_2122
    ck                      4, 144, 0
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    if                      0, off_2120
    ck                      11, 31, 0
    set                     4, 144, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_2120:
    endif
    nop

off_2122:
    evt_end                 0

.proc main_05
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -4464, -3456, -20700
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -4464, -3186, -20700
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -4464, -2916, -20700
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -4464, -2646, -20700
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, -4464, -2376, -20700
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, -4464, -2106, -20700
    se_on                   2, 266, 1, 0, 0, 0
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_06
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_07
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_09
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_0A
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_0B
    sleep                   10, 30
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -4464, -23456, -20700
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -4464, -23186, -20700
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -4464, -22916, -20700
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -4464, -22646, -20700
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, -4464, -22376, -20700
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, -4464, -22106, -20700
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_06
    se_on                   2, 267, 516, 0, 0, 0
    work_set                WK_OBJECT, 2
    nop
    speed_set               2, -55
    for                     0, off_2224, 30
    add_speed
    evt_next
    next                    0

off_2224:
    evt_end                 0

.proc main_07
    se_on                   2, 267, 772, 0, 0, 0
    work_set                WK_OBJECT, 3
    nop
    speed_set               2, 55
    for                     0, off_2244, 30
    add_speed
    evt_next
    next                    0

off_2244:
    evt_end                 0

.proc main_08
    se_on                   2, 267, 1028, 0, 0, 0
    work_set                WK_OBJECT, 4
    nop
    speed_set               2, -55
    for                     0, off_2264, 30
    add_speed
    evt_next
    next                    0

off_2264:
    evt_end                 0

.proc main_09
    se_on                   2, 267, 1284, 0, 0, 0
    work_set                WK_OBJECT, 5
    nop
    speed_set               2, 55
    for                     0, off_2284, 30
    add_speed
    evt_next
    next                    0

off_2284:
    evt_end                 0

.proc main_0A
    se_on                   2, 267, 1540, 0, 0, 0
    work_set                WK_OBJECT, 6
    nop
    speed_set               2, -55
    for                     0, off_22A4, 30
    add_speed
    evt_next
    next                    0

off_22A4:
    evt_end                 0

.proc main_0B
    se_on                   2, 268, 1796, 0, 0, 0
    work_set                WK_OBJECT, 7
    nop
    speed_set               2, 55
    for                     0, off_22C4, 30
    add_speed
    evt_next
    next                    0

off_22C4:
    evt_end                 0

.proc main_0C
    if                      0, off_2314
    ck                      4, 144, 1
    if                      0, off_22F0
    ck                      34, 34, 0
    aot_on                  4
    evt_next
    nop
    if                      0, off_22EC
    ck                      34, 34, 1
    set                     22, 3, 1
    set                     21, 3, 1
    endif
    nop

off_22EC:
    else                    0, off_2312

off_22F0:
    if                      0, off_2310
    ck                      34, 39, 0
    aot_on                  5
    evt_next
    nop
    if                      0, off_230E
    ck                      34, 39, 1
    set                     22, 4, 1
    set                     21, 6, 1
    endif
    nop

off_230E:
    endif
    nop

off_2310:
    nop
    nop

off_2312:
    endif
    nop

off_2314:
    evt_end                 0

.proc main_0D
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     4, 183, 1
    set                     1, 27, 1
    set                     1, 25, 1
    se_on                   2, 269, 1, 0, 0, 0
    set                     1, 29, 1
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 7, 0, 1, 0
    nop_8b                  150, 20, 0, 8, 0
    nop_8c                  0, 150, 30, 30, 0, 28, 0
    sleep                   10, 3
    set                     2, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 30
    set                     1, 29, 0
    gosub                   14
    set                     1, 4, 1
    save                    35, 300
    sleep                   10, 5
    plc_motion              0, 16, 0
    plc_neck                2, 0, 512, -256, 36, 36
    sleep                   10, 30
    plc_neck                2, 0, -512, -256, 36, 36
    sleep                   10, 30
    plc_neck                2, 0, 512, -256, 36, 36
    sleep                   10, 30
    plc_neck                0, 0, 0, 0, 36, 36
    wsleep
    wsleeping
    plc_ret
    set                     1, 25, 0
    set                     2, 7, 0
    set                     1, 27, 0
    nop
    evt_end                 0

.proc main_0E
    xa_on                   0, 4
    message_on              0, 2, 0, 0, 0
    evt_end                 0
