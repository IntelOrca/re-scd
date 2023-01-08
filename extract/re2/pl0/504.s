.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16642, -22441, 2800, 1900, -23882, 0, -19839, 904, 4, 3, 0, 0, 7, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 11238, -17701, 1800, 2200, -12007, 0, -25230, 2040, 4, 5, 0, 0, 7, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    if                      0, off_1CC4
    ck                      1, 3, 1
    if                      0, off_1C8A
    ck                      1, 0, 0
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 4, 0, 31, 0, 255, -16057, 0, -20217, 3488, 0, 0
    else                    0, off_1CA2

off_1C8A:
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 0, 32, 0, 255, -16057, 0, -20217, 3488, 0, 0
    nop
    nop

off_1CA2:
    if                      0, off_1CC2
    cmp                     0, 27, CMP_EQ, 1285
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 13328, -1800, -17811
    member_set              15, 72, 14
    member_set              17, 1, 0
    endif
    nop

off_1CC2:
    endif
    nop

off_1CC4:
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 9619, -13082, 1800, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 5, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, 9619, -13082, 1800, 1800, 10, 0, 93, 0, 1, 0
    if                      0, off_1D34
    ck                      0, 25, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25512, -14890, 1800, 1800, ITEM_HANDGUNAMMO, 15, 68, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -24612, -1620, -13990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1D4C

off_1D34:
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25512, -18360, 1800, 2320, ITEM_HANDGUNAMMO, 15, 68, 255, 1
    nop
    nop

off_1D4C:
    if                      0, off_1D90
    ck                      34, 25, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -11599, -2000, -21188, 0, 1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12249, -22188, 2000, 2000, 255, 0, I_GOSUB, main_0D, 0, 0
    endif
    nop

off_1D90:
    if                      0, off_1D9E
    ck                      1, 1, 1
    set                     4, 101, 1
    endif
    nop

off_1D9E:
    if                      0, off_1DAC
    ck                      4, 101, 1
    evt_exec                255, I_GOSUB, main_06
    endif
    nop

off_1DAC:
    gosub                   2
    evt_end                 0

.proc main_01
    if                      0, off_1DC4
    ck                      4, 101, 0
    cmp                     0, 2, CMP_EQ, 93
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_1DC4:
    if                      0, off_1DD0
    ck                      1, 11, 1
    gosub                   2
    endif
    nop

off_1DD0:
    evt_end                 0

.proc main_02
    switch                  26, off_1E64
    case                    0, off_1DE4, 0
    sce_bgm_control         1, 0, 1, 61, 64
    break                   0

off_1DE4:
    case                    0, off_1DF2, 1
    sce_bgm_control         1, 0, 1, 71, 64
    break                   0

off_1DF2:
    case                    0, off_1E00, 2
    sce_bgm_control         1, 0, 1, 101, 64
    break                   0

off_1E00:
    case                    0, off_1E0E, 3
    sce_bgm_control         1, 0, 1, 101, 64
    break                   0

off_1E0E:
    case                    0, off_1E1C, 4
    sce_bgm_control         1, 0, 1, 101, 64
    break                   0

off_1E1C:
    case                    0, off_1E2A, 5
    sce_bgm_control         1, 0, 1, 101, 64
    break                   0

off_1E2A:
    case                    0, off_1E38, 6
    sce_bgm_control         1, 0, 1, 101, 64
    break                   0

off_1E38:
    case                    0, off_1E46, 7
    sce_bgm_control         1, 0, 1, 101, 64
    break                   0

off_1E46:
    case                    0, off_1E54, 8
    sce_bgm_control         1, 0, 1, 101, 64
    break                   0

off_1E54:
    case                    0, off_1E62, 9
    sce_bgm_control         1, 0, 1, 51, 64
    break                   0

off_1E62:
    eswitch                 0

off_1E64:
    evt_end                 0

.proc main_03
    set                     2, 7, 1
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_1E88
    ck                      4, 101, 0
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    else                    0, off_1E8C

off_1E88:
    gosub                   4
    nop
    nop

off_1E8C:
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_04
    if                      0, off_1EAA
    cmp                     0, 26, CMP_NE, 8
    cut_chg                 8
    endif
    nop

off_1EAA:
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    if                      0, off_1F2A
    ck                      11, 31, 0
    if                      0, off_1EDE
    ck                      1, 3, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 11687, 0, -9414
    member_set              17, 0, 0
    splc_ret
    set                     2, 1, 1
    set                     2, 2, 1
    nop
    endif
    nop

off_1EDE:
    se_on                   2, 267, 0, 10098, -1870, -11952
    set                     4, 99, 1
    gosub                   7
    evt_next
    nop
    se_on                   2, 268, 0, 10098, -1870, -11952
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 10090, 0, -10932
    if                      0, off_1F20
    ck                      1, 3, 1
    set                     2, 1, 0
    set                     2, 2, 0
    evt_exec                255, I_GOSUB, main_09
    endif
    nop

off_1F20:
    evt_exec                255, I_GOSUB, main_08
    evt_exec                255, I_GOSUB, main_0A
    endif
    nop

off_1F2A:
    cut_chg                 4
    cut_auto                1
    evt_end                 0

.proc main_05
    set                     2, 7, 1
    set                     4, 101, 1
    sce_item_lost           93
    cut_chg                 8
    se_on                   2, 266, 0, 10098, -1870, -11952
    gosub                   6
    gosub                   4
    set                     2, 7, 0
    evt_end                 0

.proc main_06
    sleep                   10, 10
    sce_espr3d_on2          1, 22, 4, 0, 0, 0, 2, 114, 39, 178, 248, 80, 209, 0, 2, 0, 0, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr3d_on2          2, 22, 4, 0, 0, 0, 2, 114, 39, 230, 248, 152, 209, 0, 2, 0, 0, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr3d_on2          3, 22, 4, 0, 0, 0, 2, 114, 39, 58, 249, 206, 209, 0, 2, 0, 0, 0, 0, 0, 0
    sleep                   10, 10
    sce_espr3d_on2          4, 22, 4, 0, 0, 0, 2, 114, 39, 120, 249, 4, 210, 0, 2, 0, 0, 0, 0, 0, 0
    sleep                   10, 10
    evt_end                 0

.proc main_07
    sleep                   10, 10
    sce_espr_kill2          1
    sce_espr3d_on           0, 5142, 0, 512, 10152, -1880, -11942, 512, 0, 0, 0
    sleep                   10, 10
    sce_espr_kill2          2
    sce_espr3d_on           0, 5142, 0, 512, 10152, -1818, -11880, 512, 0, 0, 0
    sleep                   10, 10
    sce_espr_kill2          3
    sce_espr3d_on           0, 5142, 0, 512, 10152, -1744, -11816, 512, 0, 0, 0
    sleep                   10, 10
    sce_espr_kill2          4
    sce_espr3d_on           0, 5142, 0, 512, 10152, -1682, -11752, 512, 0, 0, 0
    sleep                   10, 30
    sce_espr3d_on           0, 3094, 0, 1024, 10188, -1548, -11626, 512, 0, 0, 0
    sleep                   10, 10
    evt_end                 0

.proc main_08
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    set                     1, 27, 1
    cut_auto                0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, 13276, -12228
    gosub                   14
    cut_chg                 7
    plc_dest                0, 5, 32, 13138, -16812
    gosub                   14
    plc_dest                0, 9, 32, 9368, -16882
    gosub                   14
    cut_auto                1
    set                     2, 7, 0
    set                     1, 27, 0
    aot_on                  1
    set                     1, 3, 1
    evt_end                 0

.proc main_09
    set                     1, 3, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 4, 33, 13605, -11196
    gosub                   15
    plc_dest                0, 4, 33, 13138, -16812
    gosub                   15
    plc_dest                0, 9, 33, 9368, -16882
    gosub                   15
    evt_end                 0

.proc main_0A
    sleep                   10, 150
    aot_on                  1
    set                     1, 3, 1
    evt_end                 0

.proc main_0B
    save                    4, -4096
    set                     5, 31, 0
    set                     5, 32, 0
    for                     0, off_2124, 8192
    work_set                WK_PLAYER, 0
    plc_ret
    pos_set                 0, 10090, 0, -10932
    member_set              17, 0, 0
    member_set2             15, 4
    nop
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_0C
    cut_chg                 4
    cut_auto                1
    while                   4, off_210C
    ck                      5, 31, 0
    evt_next
    nop
    ewhile                  0

off_210C:
    set                     5, 31, 0
    set                     5, 32, 0
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    next                    0

off_2124:
    evt_end                 0

.proc main_0C
    set                     2, 7, 1
    set                     1, 27, 1
    cut_auto                0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 5, 32, 13276, -12228
    gosub                   14
    cut_chg                 7
    plc_dest                0, 5, 32, 13138, -16812
    gosub                   14
    plc_dest                0, 9, 32, 9368, -16882
    gosub                   14
    cut_auto                1
    set                     2, 7, 0
    set                     1, 27, 0
    set                     5, 31, 1
    evt_end                 0

.proc main_0D
    message_on              0, 3, 0, 255, 255
    evt_next
    nop
    if                      0, off_219E
    ck                      11, 31, 0
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 0, 131
    set                     33, 9, 1
    set                     33, 10, 1
    set                     33, 11, 1
    set                     34, 25, 1
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    message_on              0, 4, 0, 255, 255
    endif
    nop

off_219E:
    evt_end                 0

.proc main_0E
    do                      0, off_21AC
    evt_next
    nop
    edwhile                 off_21AC
    ck                      5, 32, 0

off_21AC:
    evt_end                 0

.proc main_0F
    do                      0, off_21BA
    evt_next
    nop
    edwhile                 off_21BA
    ck                      5, 33, 0

off_21BA:
    evt_end                 0
