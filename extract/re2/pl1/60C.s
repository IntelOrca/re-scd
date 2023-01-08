.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 22211, -5411, 1800, 3400, -20729, 0, -24149, 2160, 5, 13, 0, 0, 49, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 6355, -11840, 8400, -9800, 9900, -11400, 7900, -13400, 3801, 0, -21601, 2703, 5, 8, 11, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 14672, -19985, 16400, -18100, 17500, -19100, 15910, -20900, -24424, 0, -14288, 4017, 5, 16, 0, 0, 41, 1, 0, 149, ITEM_UMBRELLAKEYCARD, 0
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 4700, -26761, 1480, 3250, -18910, 0, -14940, -2409, 5, 15, 1, 0, 38, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 6355, -11840, 8400, -9800, 9900, -11400, 7900, -13400, 3801, 0, -21601, 2703, 5, 17, 11, 0, 37, 0, 0, 0, UNLOCKED, 0
    if                      0, off_0FB6
    ck                      4, 142, 0
    aot_reset               3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 255, 255
    endif
    nop

off_0FB6:
    if                      0, off_0FC4
    ck                      4, 164, 1
    set                     1, 12, 1
    endif
    nop

off_0FC4:
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main_00
    gosub                   10
    gosub                   2
    gosub                   5
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, 11204, 0, -19510, 0, -2560, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 13950, -22566, 1200, 1600, 255, 0, I_GOSUB, main_03, 0, 0
    if                      0, off_1064
    ck                      4, 96, 0
    aot_set_4p              10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 11042, -19597, 11550, -18770, 14500, -21830, 13950, -22660, 12, 0, 0, 0, 255, 255
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 0, 0, 0
    sca_id_set              0, 16, 248
    sca_id_set              1, 0, 4
    cut_replace             5, 7
    cut_replace             3, 8
    else                    0, off_1082

off_1064:
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 2000, 2000, 2000
    sca_id_set              0, 0, 0
    sca_id_set              1, 0, 0
    set                     16, 1, 0
    set                     16, 2, 0
    nop
    nop

off_1082:
    if                      0, off_10C6
    ck                      4, 106, 1
    if                      0, off_10AC
    ck                      4, 96, 0
    sce_espr3d_on2          1, 22, 0, 0, 0, 0, 16, 254, 56, 78, 248, 118, 173, 0, 0, 0, 254, 0, 0, 0, 0
    else                    0, off_10C4

off_10AC:
    sce_espr3d_on2          1, 22, 16, 0, 0, 0, 16, 254, 56, 78, 248, 118, 173, 0, 0, 0, 254, 0, 0, 0, 0
    nop
    nop

off_10C4:
    endif
    nop

off_10C6:
    evt_end                 0

.proc main_03
    if                      0, off_11BE
    ck                      4, 96, 0
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    if                      0, off_11AC
    ck                      11, 31, 0
    se_on                   2, 266, 1, 0, 0, 0
    if                      0, off_1100
    ck                      4, 106, 0
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    else                    0, off_11A8

off_1100:
    nop_8c                  0, 30, 140, 100, 0, 0, 0
    nop_8b                  140, 75, 0, 100, 0
    nop_8a                  0, 8, 0, 175, 0
    nop_8c                  0, 160, 0, 50, 0, 175, 0
    set                     2, 7, 1
    set                     1, 27, 1
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 11204, 0, -19510
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 0, 0, 0
    cut_replace             8, 3
    cut_replace             7, 5
    cut_chg                 3
    sleep                   10, 20
    sce_espr_kill2          1
    sce_espr3d_on2          1, 22, 16, 0, 0, 0, 16, 254, 56, 78, 248, 118, 173, 0, 0, 0, 254, 0, 0, 0, 0
    se_on                   2, 11, 4, 0, 0, 0
    evt_exec                255, I_GOSUB, main_04
    while                   4, off_1186
    ck                      5, 0, 0
    evt_next
    nop
    ewhile                  0

off_1186:
    cut_chg                 5
    cut_auto                1
    set                     16, 1, 0
    set                     16, 2, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 13645, 0, -20252
    set                     2, 7, 0
    set                     1, 27, 0
    nop
    nop

off_11A8:
    else                    0, off_11BA

off_11AC:
    se_on                   4, 261, 1, 0, 0, 0
    nop
    nop

off_11BA:
    else                    0, off_11C8

off_11BE:
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_11C8:
    evt_end                 0

.proc main_04
    work_set                WK_OBJECT, 0
    nop
    speed_set               1, -10
    speed_set               7, -2
    for                     0, off_11E2, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_11E2:
    for                     0, off_120A, 3
    speed_set               7, -2
    for                     0, off_11F8, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_11F8:
    speed_set               7, 2
    for                     0, off_1208, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1208:
    next                    0

off_120A:
    set                     4, 96, 1
    set                     32, 6, 1
    for                     0, off_123A, 7
    speed_set               7, -2
    for                     0, off_1228, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1228:
    speed_set               7, 2
    for                     0, off_1238, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1238:
    next                    0

off_123A:
    work_set                WK_OBJECT, 0
    nop
    sca_id_set              0, 0, 0
    sca_id_set              1, 0, 0
    speed_set               1, -30
    for                     0, off_1272, 5
    speed_set               7, -2
    for                     0, off_1260, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1260:
    speed_set               7, 2
    for                     0, off_1270, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1270:
    next                    0

off_1272:
    set                     5, 0, 1
    pos_set                 0, 2000, 2000, 2000
    evt_end                 0

.proc main_05
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 6174, -28005, 870, 1110, 255, 0, I_GOSUB, main_06, 0, 0
    if                      0, off_12CE
    ck                      1, 1, 0
    if                      0, off_12B8
    ck                      4, 143, 1
    sce_espr_on2            2, 22, 24, 0, 0, 0, 10, 122, 28, 38, 248, 106, 150, 0, 0
    else                    0, off_12CA

off_12B8:
    sce_espr_on2            2, 22, 0, 0, 0, 0, 10, 68, 27, 38, 248, 156, 150, 0, 0
    nop
    nop

off_12CA:
    else                    0, off_133A

off_12CE:
    if                      0, off_1308
    ck                      29, 2, 0
    if                      0, off_12F2
    ck                      4, 143, 1
    sce_espr_on2            2, 22, 24, 0, 0, 0, 10, 122, 28, 38, 248, 106, 150, 0, 0
    else                    0, off_1304

off_12F2:
    sce_espr_on2            2, 22, 0, 0, 0, 0, 10, 68, 27, 38, 248, 156, 150, 0, 0
    nop
    nop

off_1304:
    else                    0, off_1338

off_1308:
    if                      0, off_1324
    ck                      4, 143, 1
    sce_espr_on2            2, 22, 8, 0, 0, 0, 12, 20, 30, 48, 248, 156, 150, 0, 0
    else                    0, off_1336

off_1324:
    sce_espr_on2            2, 22, 24, 0, 0, 0, 10, 122, 28, 38, 248, 106, 150, 0, 0
    nop
    nop

off_1336:
    nop
    nop

off_1338:
    nop
    nop

off_133A:
    evt_end                 0

.proc main_06
    if                      0, off_1450
    ck                      1, 1, 0
    message_on              0, 4, 0, 255, 255
    evt_next
    nop
    if                      0, off_1410
    ck                      4, 143, 0
    message_on              0, 5, 0, 255, 255
    evt_next
    nop
    if                      0, off_13FE
    ck                      11, 31, 0
    gosub                   8
    if                      0, off_138E
    ck                      4, 91, 0
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, 6, 0, 255, 255
    evt_next
    nop
    gosub                   9
    goto                    255, 255, 0, off_1604
    else                    0, off_13C0

off_138E:
    se_on                   2, 19, 1, 0, 0, 0
    message_on              0, 7, 0, 255, 255
    evt_next
    set                     29, 2, 1
    set                     4, 143, 1
    sce_espr_kill2          2
    nop
    sce_espr_on2            2, 22, 24, 0, 0, 0, 10, 122, 28, 38, 248, 106, 150, 0, 0
    gosub                   9
    nop
    nop

off_13C0:
    message_on              0, 8, 0, 255, 255
    evt_next
    nop
    if                      0, off_13EC
    ck                      11, 31, 0
    gosub                   8
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, 9, 0, 255, 255
    evt_next
    nop
    gosub                   9
    else                    0, off_13FA

off_13EC:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_13FA:
    else                    0, off_140C

off_13FE:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_140C:
    else                    0, off_144C

off_1410:
    message_on              0, 8, 0, 255, 255
    evt_next
    nop
    if                      0, off_143C
    ck                      11, 31, 0
    gosub                   8
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, 9, 0, 255, 255
    evt_next
    nop
    gosub                   9
    else                    0, off_144A

off_143C:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_144A:
    nop
    nop

off_144C:
    else                    0, off_1600

off_1450:
    if                      0, off_1462
    ck                      4, 142, 0
    message_on              0, 4, 0, 255, 255
    evt_next
    nop
    endif
    nop

off_1462:
    if                      0, off_1564
    ck                      29, 2, 0
    if                      0, off_1524
    ck                      4, 143, 0
    message_on              0, 5, 0, 255, 255
    evt_next
    nop
    if                      0, off_1512
    ck                      11, 31, 0
    gosub                   8
    if                      0, off_14A6
    ck                      4, 91, 0
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, 6, 0, 255, 255
    evt_next
    nop
    gosub                   9
    else                    0, off_14D4

off_14A6:
    se_on                   2, 19, 1, 0, 0, 0
    message_on              0, 7, 0, 255, 255
    evt_next
    set                     4, 143, 1
    sce_espr_kill2          2
    nop
    sce_espr_on2            2, 22, 24, 0, 0, 0, 10, 122, 28, 38, 248, 106, 150, 0, 0
    gosub                   9
    nop
    nop

off_14D4:
    message_on              0, 8, 0, 255, 255
    evt_next
    nop
    if                      0, off_1500
    ck                      11, 31, 0
    gosub                   8
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, 9, 0, 255, 255
    evt_next
    nop
    gosub                   9
    else                    0, off_150E

off_1500:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_150E:
    else                    0, off_1520

off_1512:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_1520:
    else                    0, off_1560

off_1524:
    message_on              0, 8, 0, 255, 255
    evt_next
    nop
    if                      0, off_1550
    ck                      11, 31, 0
    gosub                   8
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, 9, 0, 255, 255
    evt_next
    nop
    gosub                   9
    else                    0, off_155E

off_1550:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_155E:
    nop
    nop

off_1560:
    else                    0, off_15FE

off_1564:
    if                      0, off_15F2
    ck                      4, 143, 0
    message_on              0, 8, 0, 255, 255
    evt_next
    nop
    if                      0, off_15E0
    ck                      11, 31, 0
    gosub                   8
    if                      0, off_15C4
    ck                      4, 91, 1
    se_on                   2, 19, 1, 0, 0, 0
    message_on              0, 10, 0, 255, 255
    evt_next
    set                     4, 143, 1
    set                     4, 142, 1
    sce_espr_kill2          2
    nop
    sce_espr_on2            2, 22, 8, 0, 0, 0, 12, 20, 30, 48, 248, 156, 150, 0, 0
    aot_reset               3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 34, 182, 0, 0, 164, 197
    gosub                   9
    else                    0, off_15DC

off_15C4:
    se_on                   2, 18, 1, 0, 0, 0
    message_on              0, 6, 0, 255, 255
    evt_next
    nop
    gosub                   9
    nop
    nop

off_15DC:
    else                    0, off_15EE

off_15E0:
    se_on                   4, 5, 1, 0, 0, 0
    nop
    nop

off_15EE:
    else                    0, off_15FC

off_15F2:
    message_on              0, 11, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_15FC:
    nop
    nop

off_15FE:
    nop
    nop

off_1600:
    work_set                WK_PLAYER, 0
    plc_ret

off_1604:
    evt_end                 0

.proc main_07
    set                     2, 7, 1
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 33, 6662, -26445
    do                      0, off_1622
    evt_next
    nop
    edwhile                 off_1622
    ck                      5, 33, 0

off_1622:
    sleep                   10, 4
    plc_dest                0, 9, 33, 6703, -32568
    do                      0, off_163A
    evt_next
    nop
    edwhile                 off_163A
    ck                      5, 33, 0

off_163A:
    member_set              15, 7, 4
    set                     2, 7, 0
    evt_end                 0

.proc main_08
    set                     2, 7, 1
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_1662
    ck                      1, 0, 0
    plc_motion              0, 26, 0
    sleep                   10, 20
    plc_stop
    nop
    else                    0, off_166E

off_1662:
    plc_motion              0, 15, 0
    sleep                   10, 20
    plc_stop
    nop
    nop
    nop

off_166E:
    sleep                   10, 10
    set                     2, 7, 0
    evt_end                 0

.proc main_09
    set                     2, 7, 1
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_1696
    ck                      1, 0, 0
    plc_motion              0, 26, 128
    plc_cnt                 70
    sleep                   10, 20
    else                    0, off_16A2

off_1696:
    plc_motion              0, 15, 128
    plc_cnt                 70
    sleep                   10, 20
    nop
    nop

off_16A2:
    set                     2, 7, 0
    evt_end                 0

.proc main_0A
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_end                 0
