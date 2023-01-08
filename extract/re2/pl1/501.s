.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 12750, -22900, 3500, 1800, -32000, -32000, -32000, 2900, 3, 14, 10, 0, 44, 2, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 26673, -25367, 1400, 2000, -25800, 0, -14670, 0, 4, 2, 0, 0, 26, 1, 0, 0, UNLOCKED, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 0, -32000, 0, -25100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x03, 0x90

.main
.proc main_00
    if                      0, off_13BE
    ck                      1, 3, 1
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 0, 32, 0, 255, 26140, 0, -24720, 2500, 0, 0
    if                      0, off_13BC
    cmp                     0, 27, CMP_NE, 1282
    work_set                WK_ENEMY, 255
    nop
    pos_set                 0, -32000, -32000, -32000
    endif
    nop

off_13BC:
    endif
    nop

off_13BE:
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, -32000, 0, -32000, 0, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8670, -17386, 1800, 1400, ITEM_WEAPONBOXKEY, 1, 18, 0, 1
    if                      0, off_1408
    ck                      34, 18, 0
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_1408:
    if                      0, off_143C
    ck                      4, 187, 0
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 7715, -20742, 1800, 1800, 255, 0, I_GOSUB, main_07, 0, 0
    aot_set                 6, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, 7715, -20742, 1800, 1800, 10, 0, 47, 0, 1, 0
    else                    0, off_1480

off_143C:
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 7715, -20742, 1800, 1800, 255, 0, I_GOSUB, main_08, 0, 0
    if                      0, off_147E
    ck                      34, 18, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 9726, 0, -16629
    dir_set                 0, 0, 0, -2048
    sce_espr_on             0, 5893, 4, 8192, 0, 0, 0, 0
    endif
    nop

off_147E:
    nop
    nop

off_1480:
    if                      0, off_149C
    cmp                     0, 27, CMP_EQ, 1038
    if                      0, off_1498
    ck                      4, 103, 1
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_1498:
    else                    0, off_14A0

off_149C:
    gosub                   5
    nop
    nop

off_14A0:
    if                      0, off_14BC
    ck                      1, 1, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_ADD, 16, 2048
    member_set2             7, 16
    nop
    endif
    nop

off_14BC:
    evt_end                 0

.proc main_01
    gosub                   10
    evt_end                 0

.proc main_02
    do                      0, off_14CE
    evt_next
    nop
    edwhile                 off_14CE
    ck                      34, 18, 0

off_14CE:
    sce_espr_kill           5, 23, 4, 0
    nop
    evt_end                 0

.proc main_03
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, 4000, 0, -25100
    evt_exec                255, I_GOSUB, main_0B
    gosub                   12
    work_set                WK_OBJECT, 1
    nop
    se_on                   2, 11, 260, 0, 0, 0
    speed_set               0, 100
    for                     0, off_1506, 67
    add_speed
    evt_next
    next                    0

off_1506:
    speed_set               0, 80
    for                     0, off_1514, 10
    add_speed
    evt_next
    next                    0

off_1514:
    speed_set               0, 80
    for                     0, off_1522, 20
    add_speed
    evt_next
    next                    0

off_1522:
    se_on                   0, 1, 260, 0, 0, 0
    sleep                   10, 60
    sce_fade_set            0, 2, 7, 255, 2
    evt_end                 0

.proc main_04
    set                     2, 7, 1
    set                     1, 27, 1
    evt_next
    work_set                WK_PLAYER, 0
    pos_set                 0, -32000, -32000, -32000
    if                      0, off_156A
    ck                      1, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_ADD, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_156A:
    cut_auto                0
    cut_chg                 8
    gosub                   3
    sce_fade_set            0, 2, 7, 255, 241
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -32000, -32000, -32000
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 14320, 0, -20070
    dir_set                 0, 0, 3072, 0
    if                      0, off_15C2
    ck                      1, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 13140, 0, -20310
    dir_set                 0, 0, 3072, 0
    member_copy             16, 7
    nop
    calc                    0, OP_SUB, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_15C2:
    gosub                   5
    cut_chg                 5
    cut_auto                1
    sleep                   10, 16
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_05
    cut_replace             0, 4
    cut_replace             1, 5
    cut_replace             2, 6
    cut_replace             3, 7
    if                      0, off_15F4
    cmp                     0, 27, CMP_EQ, 1282
    cut_chg                 7
    cut_auto                1
    else                    0, off_1606

off_15F4:
    if                      0, off_1604
    cmp                     0, 27, CMP_NE, 1038
    cut_chg                 4
    cut_auto                1
    endif
    nop

off_1604:
    nop
    nop

off_1606:
    evt_end                 0

.proc main_06
    set                     2, 7, 1
    set                     1, 27, 1
    if                      0, off_162E
    ck                      1, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 11200, 0, -20265
    dir_set                 0, 0, 2048, 0
    endif
    nop

off_162E:
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 10260, 0, -19300
    dir_set                 0, 0, 2048, 0
    plc_neck                2, 0, 0, 0, 30, 30
    sleep                   10, 10
    plc_motion              1, 6, 0
    sleep                   10, 25
    se_on                   2, 13, 1, 0, 0, 0
    sleep                   10, 25
    evt_exec                255, I_GOSUB, main_09
    sleep                   10, 1
    nop_8b                  200, 5, 0, 0, 0
    sleep                   10, 4
    plc_neck                2, 0, 0, -512, 0, 30
    if                      0, off_169C
    ck                      1, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 0, 20, 20
    endif
    nop

off_169C:
    se_on                   2, 10, 1, 0, 0, 0
    sleep                   10, 45
    cut_chg                 12
    if                      0, off_16CC
    ck                      34, 18, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 9726, 0, -16629
    dir_set                 0, 0, 0, -2048
    endif
    nop

off_16CC:
    if                      0, off_16E4
    ck                      1, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -480, 256, 100, 30
    endif
    nop

off_16E4:
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 480, 256, 100, 30
    evt_next
    nop
    se_on                   2, 12, 1, 0, 0, 0
    sleep                   10, 60
    if                      0, off_1748
    ck                      34, 18, 0
    sce_espr_on             0, 5893, 4, 8192, 0, 0, 0, 0
    sleep                   10, 5
    sce_espr_on             0, 5893, 4, 8192, 0, 0, 0, 0
    sleep                   10, 5
    sce_espr_on             0, 5893, 4, 8192, 0, 0, 0, 0
    else                    0, off_174E

off_1748:
    sleep                   10, 10
    nop
    nop

off_174E:
    sleep                   10, 30
    if                      0, off_1762
    ck                      34, 18, 0
    sce_espr_kill           5, 23, 4, 0
    nop
    endif
    nop

off_1762:
    sce_fade_set            1, 3, 7, 0, 0
    for                     0, off_177C, 6
    sce_fade_adjust         1, 0, 16
    evt_next
    nop
    sce_fade_adjust         1, 0, 0
    evt_next
    nop
    next                    0

off_177C:
    cut_old
    nop
    sleep                   10, 20
    cut_auto                1
    if                      0, off_179C
    ck                      1, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                6, 0, 0, 0, 0, 0
    endif
    nop

off_179C:
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    plc_neck                6, 0, 0, 0, 0, 0
    sleep                   10, 25
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    nop
    evt_end                 0

.proc main_07
    cut_auto                0
    cut_chg                 10
    message_on              0, 2, 0, 255, 255
    evt_next
    cut_old
    cut_auto                1
    evt_end                 0

.proc main_08
    cut_auto                0
    cut_chg                 10
    message_on              0, 3, 0, 255, 255
    evt_next
    cut_old
    cut_auto                1
    evt_end                 0

.proc main_09
    sce_espr_on             0, 4135, 0, 4096, 7524, -1710, -19494, 1994
    sce_espr_on             0, 4135, 0, 4096, 7524, -1710, -19494, 1994
    sleep                   10, 50
    sce_espr_kill           39, 16, 0, 0
    nop
    evt_end                 0

.proc main_0A
    if                      0, off_1854
    ck                      4, 187, 0
    cmp                     0, 2, CMP_EQ, 47
    evt_exec                255, I_GOSUB, main_06
    set                     4, 187, 1
    aot_reset               6, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               5, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               7, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 7715, -20742, 1800, 1800, 255, 0, I_GOSUB, main_08, 0, 0
    endif
    nop

off_1854:
    evt_end                 0

.proc main_0B
    save                    4, 0
    save                    5, 0
    do                      0, off_18C0
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 16000
    copy                    4, 16
    nop
    light_kido_set          0, 20000
    light_kido_set          1, 18000
    light_pos_set           0, 0, 12, -900
    light_pos_set           0, 0, 13, -23800
    work_copy               4, 4, 1
    light_pos_set           0, 0, 11, 0
    light_pos_set           0, 1, 12, -4500
    light_pos_set           0, 1, 13, -23800
    work_copy               4, 4, 1
    light_pos_set           0, 1, 11, 0
    copy                    16, 4
    nop
    calc                    0, OP_SUB, 16, 2500
    copy                    5, 16
    nop
    evt_next
    nop
    edwhile                 off_18C0
    cmp                     0, 26, CMP_EQ, 8

off_18C0:
    evt_end                 0

.proc main_0C
    nop_8b                  80, 5, 0, 0, 0
    nop_8c                  0, 50, 60, 30, 0, 0, 0
    nop_8c                  0, 60, 40, 30, 0, 20, 0
    nop_8c                  0, 40, 60, 30, 0, 40, 0
    nop_8c                  0, 60, 40, 20, 0, 60, 0
    nop_8c                  0, 60, 0, 27, 0, 70, 0
    evt_end                 0
    db                      0x40, 0x20
