.version 2
.init
.proc init_00
    set                     19, 2, 0
    if                      0, off_2736
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_2736:
    if                      0, off_2748
    ck                      4, 254, 1
    set                     8, 119, 1
    set                     4, 148, 0
    endif
    nop

off_2748:
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -15189, 5901, 2600, 2390, -13956, -1800, 6456, 1024, 1, 0, 5, 1, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 622, -24130, 1650, 2890, -24013, 0, -21286, 0, 0, 15, 1, 0, 13, 1, 0, 0, UNLOCKED, 0
    door_aot_se             4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -30334, -9880, 2120, 3900, -8304, 0, -18865, 2096, 0, 18, 0, 0, 13, 3, 0, 0, UNLOCKED, 0
    if                      0, off_27EE
    ck                      1, 1, 1
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -25500, -28042, 1990, 2040, ITEM_UNICORNMEDAL, 1, 17, 3, 0
    obj_model_set           3, 0, 0, 0, 0, 4, 0, 10, 16, -24633, -10122, -26502, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_27EE:
    obj_model_set           0, 0, 0, 0, 0, 4, 0, 10, 16, -13160, -7200, 7080, -2048, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_28EC
    ck                      1, 1, 0
    if                      0, off_28D0
    ck                      8, 119, 0
    if                      0, off_2872
    ck                      0, 25, 0
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 0, 0, 4, 3, 3, 21, -26023, -7200, -12482, -4795, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 0, 0, 4, 3, 3, 22, -3664, -7200, -7618, -2391, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIECOP, 6, 0, 4, 4, 3, 23, -19976, -7200, 10825, 1248, 0, 0
    else                    0, off_28CC

off_2872:
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 6, 0, 4, 3, 3, 21, -25599, -7200, -11750, 3843, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 6, 0, 4, 3, 3, 22, -3075, -7200, -7953, 267, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIECOP, 6, 0, 4, 4, 3, 23, -22773, -7200, 10899, 3233, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIECOP, 6, 0, 4, 4, 3, 209, -3551, -7200, -25272, 3573, 0, 0
    nop
    nop

off_28CC:
    else                    0, off_28E8

off_28D0:
    sce_em_set              0, 0, ENEMY_LICKERRED, 0, 0, 4, 14, 3, 112, -13885, -7200, 10620, 2175, 0, 0
    nop
    nop

off_28E8:
    else                    0, off_29D0

off_28EC:
    if                      0, off_29B6
    ck                      8, 119, 0
    if                      0, off_2942
    ck                      0, 25, 0
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 0, 0, 4, 3, 3, 21, -23441, -7200, -7087, 2437, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 0, 0, 4, 3, 3, 22, -24885, -7200, -24890, 2705, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIECOP, 0, 0, 4, 4, 3, 23, -26304, -7200, -22809, 2895, 0, 0
    else                    0, off_29B2

off_2942:
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 6, 0, 4, 3, 3, 21, -23551, -7200, -7056, 2437, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 4, 3, 3, 22, -24146, -7200, -25908, 2519, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 4, 4, 3, 23, -25460, -7200, -22636, 2841, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 0, 4, 4, 3, 209, -25488, -7200, -13767, 3024, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 0, 4, 4, 3, 210, -26223, -7200, -24975, -848, 0, 0
    nop
    nop

off_29B2:
    else                    0, off_29CE

off_29B6:
    sce_em_set              0, 0, ENEMY_LICKERRED, 0, 0, 4, 14, 3, 112, -13885, -7200, 10620, 2175, 0, 0
    nop
    nop

off_29CE:
    nop
    nop

off_29D0:
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main_00
    if                      0, off_29F0
    ck                      1, 6, 1
    gosub                   6
    evt_end                 0
    endif
    nop

off_29F0:
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -15189, 5901, 2600, 2390, 255, 0, I_GOSUB, main_02, 0, 0
    if                      0, off_2A66
    ck                      4, 148, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, 11550, -1800, 6039
    obj_model_set           1, 0, 0, 0, 0, 4, 0, 10, 16, 27600, 7200, 23800, -2048, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 4, 0, 10, 16, 27600, 7200, 23800, -2048, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2A66:
    if                      0, off_2A7A
    ck                      4, 70, 0
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_05, 0, 0
    endif
    nop

off_2A7A:
    evt_end                 0

.proc main_01
    if                      0, off_2A88
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_2A88:
    evt_end                 0

.proc main_02
    if                      0, off_2D4A
    ck                      4, 148, 0
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    if                      0, off_2D46
    ck                      11, 31, 0
    set                     2, 7, 1
    set                     2, 2, 1
    set                     2, 3, 1
    set                     1, 27, 1
    work_set                WK_PLAYER, 0
    nop
    member_copy             4, 11
    nop
    member_copy             5, 13
    nop
    member_copy             6, 15
    nop
    gosub                   3
    set                     4, 148, 1
    aot_reset               2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 124, 201, 248, 248, 56, 25
    cut_chg                 14
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -13160, -15000, 7080
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -13160, -15000, 7080
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -13160, -15000, 7080
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12294, -8000, 9323
    dir_set                 0, 0, 1024, 0
    se_on                   2, 266, 0, -15508, -1800, 6039
    sleep                   10, 30
    se_on                   2, 267, 0, -15508, -1800, 6039
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 3, 0, 0, 0
    nop_8b                  100, 51, 0, 3, 0
    nop_8c                  0, 255, 50, 9, 0, 54, 0
    for                     0, off_2B82, 55
    work_set                WK_OBJECT, 0
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 40
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 40
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 40
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_2B82:
    work_set                WK_OBJECT, 0
    nop
    for                     0, off_2BAE, 5
    member_copy             16, 15
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 5
    member_set2             15, 16
    nop
    evt_next
    nop
    next                    0

off_2BAE:
    for                     0, off_2BDC, 4
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 40
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 40
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_2BDC:
    se_on                   2, 267, 0, -15508, -1800, 6039
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 3, 0, 0, 0
    nop_8b                  100, 51, 0, 3, 0
    nop_8c                  0, 255, 50, 9, 0, 54, 0
    for                     0, off_2C30, 55
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 40
    member_set2             12, 16
    nop
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 40
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_2C30:
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 124, 215
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 124, 215
    for                     0, off_2C68, 5
    member_copy             16, 15
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 5
    member_set2             15, 16
    nop
    evt_next
    nop
    next                    0

off_2C68:
    for                     0, off_2C84, 4
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 40
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_2C84:
    se_on                   2, 267, 0, -15508, -1800, 6039
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 3, 0, 0, 0
    nop_8b                  100, 51, 0, 3, 0
    nop_8c                  0, 255, 50, 9, 0, 54, 0
    for                     0, off_2CC6, 55
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 40
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_2CC6:
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 248, 224
    for                     0, off_2CF6, 5
    member_copy             16, 15
    nop
    calc                    0, OP_SUB, 16, 5
    member_set2             15, 16
    nop
    evt_next
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 5
    member_set2             15, 16
    nop
    evt_next
    nop
    next                    0

off_2CF6:
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -13160, -7200, 7080
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, 13160, -7200, -7080
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 13160, -7200, -7080
    work_set                WK_PLAYER, 0
    nop
    member_set2             11, 4
    nop
    member_set              12, 224, 227
    member_set2             13, 5
    nop
    member_set2             15, 6
    nop
    cut_chg                 13
    cut_auto                1
    gosub                   4
    set                     1, 27, 0
    set                     2, 7, 0
    set                     2, 2, 0
    set                     2, 3, 0
    endif
    nop

off_2D46:
    else                    0, off_2D60

off_2D4A:
    message_on              0, 3, 0, 255, 255
    evt_next
    nop
    if                      0, off_2D5E
    ck                      11, 31, 0
    aot_on                  2
    endif
    nop

off_2D5E:
    nop
    nop

off_2D60:
    evt_end                 0

.proc main_03
    if                      0, off_2E9A
    ck                      8, 119, 0
    if                      0, off_2DA2
    ck                      6, 21, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_2DA2:
    if                      0, off_2DDA
    ck                      6, 22, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_2DDA:
    if                      0, off_2E12
    ck                      6, 23, 0
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_2E12:
    if                      0, off_2E96
    ck                      0, 25, 1
    if                      0, off_2E52
    ck                      6, 209, 0
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_2E52:
    if                      0, off_2E94
    ck                      1, 1, 1
    if                      0, off_2E92
    ck                      6, 210, 0
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_2E92:
    endif
    nop

off_2E94:
    endif
    nop

off_2E96:
    else                    0, off_2ED4

off_2E9A:
    if                      0, off_2ED2
    ck                      6, 112, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_2ED2:
    nop
    nop

off_2ED4:
    evt_end                 0

.proc main_04
    if                      0, off_300E
    ck                      8, 119, 0
    if                      0, off_2F16
    ck                      6, 21, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    endif
    nop

off_2F16:
    if                      0, off_2F4E
    ck                      6, 22, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    endif
    nop

off_2F4E:
    if                      0, off_2F86
    ck                      6, 23, 0
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    endif
    nop

off_2F86:
    if                      0, off_300A
    ck                      0, 25, 1
    if                      0, off_2FC6
    ck                      6, 209, 0
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    endif
    nop

off_2FC6:
    if                      0, off_3008
    ck                      1, 1, 1
    if                      0, off_3006
    ck                      6, 210, 0
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    endif
    nop

off_3006:
    endif
    nop

off_3008:
    endif
    nop

off_300A:
    else                    0, off_3048

off_300E:
    if                      0, off_3046
    ck                      6, 112, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    endif
    nop

off_3046:
    nop
    nop

off_3048:
    evt_end                 0

.proc main_05
    set                     2, 7, 1
    se_on                   2, 22, 0, -28237, -7200, -8048
    message_on              0, 1, 0, 255, 255
    evt_next
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_06
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 622, -24130, 1650, 2890, -24013, 0, -21286, 0, 0, 15, 1, 0, 13, 1, 0, 0, UNLOCKED, 0
    door_aot_se             4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -30334, -9880, 2120, 3900, -8304, 0, -18865, 2096, 0, 18, 0, 0, 13, 3, 0, 0, UNLOCKED, 0
    sce_em_set              0, 0, ENEMY_IVYPURPLE, 17, 0, 0, 19, 0, 133, -14955, -7200, 10835, 2109, 0, 0
    sce_em_set              0, 1, ENEMY_IVYPURPLE, 17, 0, 0, 19, 0, 134, -1881, -7250, -7592, 3017, 0, 0
    sce_em_set              0, 2, ENEMY_VINES, 0, 32, 0, 0, 0, 255, -20285, -7200, 10210, 1016, 0, 0
    evt_end                 0
