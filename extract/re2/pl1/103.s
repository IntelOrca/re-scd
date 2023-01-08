.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 10803, -9738, 5080, 3830, -13695, -1800, -26187, -904, 1, 0, 0, 1, 12, 0, 0, 0, UNLOCKED, 0
    aot_set                 1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -26272, -22795, 4280, 1900, 0, 0, 0, 0, 0, 255
    aot_set                 2, SCE_NORMAL, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 10831, -28151, 4340, 2550, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_NORMAL, SAT_EM | SAT_UNDER, 3, 0, -26066, -23500, 2450, 1570, 0, 0, 0, 0, 0, 0
    aot_set                 4, SCE_NORMAL, SAT_EM | SAT_UNDER, 3, 0, 21862, -18667, 6900, 8800, 0, 0, 0, 0, 0, 0
    if                      0, off_371A
    ck                      0, 25, 1
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 25562, -16667, 1840, 3500, ITEM_HERBG, 1, 211, 255, 0
    endif
    nop

off_371A:
    evt_end                 0

.main
.proc main_00
    gosub                   2
    if                      0, off_3766
    ck                      5, 18, 0
    gosub                   16
    evt_exec                255, I_GOSUB, main_03
    evt_exec                255, I_GOSUB, main_05
    evt_exec                255, I_GOSUB, main_06
    evt_exec                255, I_GOSUB, main_11
    else                    0, off_377E

off_3766:
    evt_exec                255, I_GOSUB, main_03
    evt_exec                255, I_GOSUB, main_05
    gosub                   15
    evt_exec                255, I_GOSUB, main_13
    evt_exec                255, I_GOSUB, main_12
    evt_exec                255, I_GOSUB, main_14
    nop
    nop

off_377E:
    set                     13, 5, 0
    evt_exec                255, I_GOSUB, main_07
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    set                     5, 18, 1
    save                    4, 0
    for                     0, off_37BA, 255
    if                      0, off_37AA
    work_copy               4, 2, 0
    ck                      8, 0, 1
    set                     5, 18, 0
    endif
    nop

off_37AA:
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    next                    0

off_37BA:
    save                    4, 0
    for                     0, off_37E6, 255
    if                      0, off_37D6
    work_copy               4, 2, 0
    ck                      34, 0, 1
    set                     5, 18, 0
    endif
    nop

off_37D6:
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    next                    0

off_37E6:
    if                      0, off_37F6
    ck                      1, 5, 1
    set                     5, 18, 0
    else                    0, off_382C

off_37F6:
    if                      0, off_380E
    ck                      1, 1, 0
    if                      0, off_380C
    ck                      5, 18, 1
    set                     29, 17, 1
    endif
    nop

off_380C:
    endif
    nop

off_380E:
    if                      0, off_381C
    ck                      29, 17, 1
    set                     5, 18, 1
    endif
    nop

off_381C:
    if                      0, off_382A
    ck                      6, 195, 1
    set                     5, 18, 0
    endif
    nop

off_382A:
    nop
    nop

off_382C:
    evt_end                 0

.proc main_03
    sleep                   10, 5
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    evt_next
    nop

off_3846:
    if                      0, off_3888
    cmp                     0, 26, CMP_EQ, 0
    if                      0, off_3886
    ck                      5, 9, 0
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_3884
    member_cmp              0, 2, 5, 7, 0
    if                      0, off_3882
    member_cmp              0, 9, 0, 3, 0
    if                      0, off_3880
    cmp                     0, 29, CMP_GE, 32000
    evt_exec                255, I_GOSUB, main_04
    endif
    nop

off_3880:
    endif
    nop

off_3882:
    endif
    nop

off_3884:
    endif
    nop

off_3886:
    endif
    nop

off_3888:
    evt_next
    nop
    goto                    255, 255, 0, off_3846 + 3
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 1
    set                     5, 9, 1
    nop
    member_set              23, 0, 140
    evt_next
    nop
    member_copy             16, 23
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             23, 16
    nop
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, 1
    nop

off_38B4:
    if                      0, off_3914
    ck                      5, 9, 1
    if                      0, off_38FA
    member_cmp              0, 24, 6, 0, 128
    se_on                   2, 266, 259, 0, 0, 0
    if                      0, off_38EA
    ck                      5, 11, 0
    set                     5, 11, 1
    set                     13, 2, 1
    set                     13, 5, 0
    else                    0, off_38F8

off_38EA:
    set                     5, 11, 0
    set                     13, 2, 0
    set                     13, 5, 1
    nop
    nop

off_38F8:
    endif
    nop

off_38FA:
    if                      0, off_3908
    member_cmp              0, 24, 6, 0, 64
    else                    0, off_390E

off_3908:
    set                     5, 9, 0
    nop
    nop

off_390E:
    member_set              24, 0, 0
    endif
    nop

off_3914:
    evt_next
    nop
    goto                    255, 255, 0, off_38B4
    evt_end                 0

.proc main_06
    switch                  26, off_3A16

off_3922:
    case                    0, off_3928, 4

off_3928:
    case                    0, off_3944, 5
    if                      0, off_3942
    ck                      5, 1, 0
    set                     5, 1, 1
    set                     5, 3, 0
    gosub                   8
    endif
    nop

off_3942:
    break                   0

off_3944:
    case                    0, off_394A, 1

off_394A:
    case                    0, off_3950, 10

off_3950:
    case                    0, off_397C, 11
    if                      0, off_396A
    ck                      5, 2, 0
    set                     5, 2, 1
    set                     5, 3, 0
    gosub                   9
    endif
    nop

off_396A:
    if                      0, off_397A
    ck                      5, 17, 0
    set                     5, 17, 1
    gosub                   12
    endif
    nop

off_397A:
    break                   0

off_397C:
    case                    0, off_39A8, 0
    if                      0, off_3996
    ck                      5, 2, 0
    set                     5, 2, 1
    set                     5, 3, 0
    gosub                   9
    endif
    nop

off_3996:
    if                      0, off_39A6
    ck                      5, 17, 1
    set                     5, 17, 0
    gosub                   11
    endif
    nop

off_39A6:
    break                   0

off_39A8:
    case                    0, off_39AE, 7

off_39AE:
    case                    0, off_39B4, 8

off_39B4:
    case                    0, off_39BA, 9

off_39BA:
    case                    0, off_39C0, 12

off_39C0:
    case                    0, off_39C6, 13

off_39C6:
    case                    0, off_39CC, 14

off_39CC:
    case                    0, off_39E8, 15
    if                      0, off_39E6
    ck                      5, 2, 0
    set                     5, 2, 1
    set                     5, 3, 0
    gosub                   9
    endif
    nop

off_39E6:
    break                   0

off_39E8:
    case                    0, off_39EE, 2

off_39EE:
    case                    0, off_39F4, 3

off_39F4:
    case                    0, off_3A14, 6
    if                      0, off_3A12
    ck                      5, 3, 0
    set                     5, 3, 1
    set                     5, 1, 0
    set                     5, 2, 0
    gosub                   10
    endif
    nop

off_3A12:
    break                   0

off_3A14:
    eswitch                 0

off_3A16:
    evt_next
    nop
    goto                    255, 255, 0, off_3922
    evt_end                 0

.proc main_07
    switch                  26, off_3AF6

off_3A24:
    case                    0, off_3A3E, 0
    sce_bgm_control         0, 0, 1, 1, 65
    sce_bgm_control         0, 0, 2, 58, 65
    sce_bgm_control         0, 0, 3, 85, 65
    break                   0

off_3A3E:
    case                    0, off_3A44, 1

off_3A44:
    case                    0, off_3A4A, 2

off_3A4A:
    case                    0, off_3A50, 3

off_3A50:
    case                    0, off_3A56, 4

off_3A56:
    case                    0, off_3A5C, 5

off_3A5C:
    case                    0, off_3A6A, 6
    sce_bgm_control         0, 0, 3, 60, 65
    break                   0

off_3A6A:
    case                    0, off_3A78, 7
    sce_bgm_control         0, 0, 3, 74, 65
    break                   0

off_3A78:
    case                    0, off_3A86, 8
    sce_bgm_control         0, 0, 3, 24, 65
    break                   0

off_3A86:
    case                    0, off_3A94, 9
    sce_bgm_control         0, 0, 3, 24, 65
    break                   0

off_3A94:
    case                    0, off_3AAE, 10
    sce_bgm_control         0, 0, 1, 1, 65
    sce_bgm_control         0, 0, 2, 58, 65
    sce_bgm_control         0, 0, 3, 24, 65
    break                   0

off_3AAE:
    case                    0, off_3ABC, 11
    sce_bgm_control         0, 0, 3, 24, 65
    break                   0

off_3ABC:
    case                    0, off_3ACA, 12
    sce_bgm_control         0, 0, 3, 24, 65
    break                   0

off_3ACA:
    case                    0, off_3AD8, 13
    sce_bgm_control         0, 0, 3, 24, 65
    break                   0

off_3AD8:
    case                    0, off_3AE6, 14
    sce_bgm_control         0, 0, 3, 24, 65
    break                   0

off_3AE6:
    case                    0, off_3AF4, 15
    sce_bgm_control         0, 0, 3, 24, 65
    break                   0

off_3AF4:
    eswitch                 0

off_3AF6:
    do                      0, off_3B02
    evt_next
    nop
    edwhile                 off_3B02
    ck                      1, 11, 0

off_3B02:
    goto                    255, 255, 0, off_3A24
    evt_end                 0

.proc main_08
    if                      0, off_3B54
    ck                      5, 21, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              12, 0, 131
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
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
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    endif
    nop

off_3B54:
    if                      0, off_3B9E
    ck                      5, 22, 0
    work_set                WK_ENEMY, 5
    nop
    member_set              12, 0, 131
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
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
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    endif
    nop

off_3B9E:
    evt_end                 0

.proc main_09
    if                      0, off_3BDC
    ck                      5, 21, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              12, 232, 234
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 16383
    member_set2             7, 16
    nop
    endif
    nop

off_3BDC:
    if                      0, off_3C18
    ck                      5, 22, 0
    work_set                WK_ENEMY, 5
    nop
    member_set              12, 232, 234
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 16383
    member_set2             7, 16
    nop
    endif
    nop

off_3C18:
    evt_end                 0

.proc main_0A
    if                      0, off_3D38
    cmp                     0, 26, CMP_EQ, 6
    if                      0, off_3CAC
    ck                      5, 21, 0
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_3C6C
    member_cmp              0, 9, 0, 4, 0
    member_set              12, 232, 234
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 16383
    member_set2             7, 16
    nop
    else                    0, off_3CAA

off_3C6C:
    member_set              12, 0, 131
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
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
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    nop
    nop

off_3CAA:
    endif
    nop

off_3CAC:
    if                      0, off_3D34
    ck                      5, 22, 0
    work_set                WK_ENEMY, 5
    nop
    if                      0, off_3CF4
    member_cmp              0, 9, 0, 4, 0
    member_set              12, 232, 234
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 16383
    member_set2             7, 16
    nop
    else                    0, off_3D32

off_3CF4:
    member_set              12, 0, 131
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
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
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    nop
    nop

off_3D32:
    endif
    nop

off_3D34:
    else                    0, off_3DB2

off_3D38:
    if                      0, off_3D74
    ck                      5, 21, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              12, 232, 234
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 16383
    member_set2             7, 16
    nop
    endif
    nop

off_3D74:
    if                      0, off_3DB0
    ck                      5, 22, 0
    work_set                WK_ENEMY, 5
    nop
    member_set              12, 232, 234
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 16383
    member_set2             7, 16
    nop
    endif
    nop

off_3DB0:
    nop
    nop

off_3DB2:
    evt_end                 0

.proc main_0B
    work_set                WK_ENEMY, 1
    nop
    member_set              12, 232, 234
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 16383
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 2
    nop
    member_set              12, 232, 234
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 16383
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 3
    nop
    member_set              12, 232, 234
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 16383
    member_set2             7, 16
    nop
    if                      0, off_3E86
    ck                      5, 16, 1
    work_set                WK_ENEMY, 4
    nop
    member_set              12, 232, 234
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 16383
    member_set2             7, 16
    nop
    endif
    nop

off_3E86:
    evt_end                 0

.proc main_0C
    work_set                WK_ENEMY, 1
    nop
    member_set              12, 0, 131
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 2
    nop
    member_set              12, 0, 131
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 3
    nop
    member_set              12, 0, 131
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    if                      0, off_3F92
    ck                      5, 16, 1
    work_set                WK_ENEMY, 4
    nop
    member_set              12, 0, 131
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    endif
    nop

off_3F92:
    evt_end                 0

.proc main_0D
    evt_exec                255, I_GOSUB, main_0E
    cut_chg                 15
    cut_auto                1
    evt_end                 0

.proc main_0E
    work_set                WK_ENEMY, 6
    nop
    if                      0, off_3FCE
    member_cmp              0, 2, 5, 7, 0
    member_set              7, 6, 0
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    endif
    nop

off_3FCE:
    work_set                WK_ENEMY, 7
    nop
    if                      0, off_3FFE
    member_cmp              0, 2, 5, 7, 0
    member_set              7, 6, 0
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    endif
    nop

off_3FFE:
    work_set                WK_ENEMY, 8
    nop
    if                      0, off_402E
    member_cmp              0, 2, 5, 7, 0
    member_set              7, 6, 0
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    endif
    nop

off_402E:
    do                      0, off_403E
    sleep                   10, 1
    edwhile                 off_403E
    cmp                     0, 26, CMP_EQ, 15

off_403E:
    work_set                WK_ENEMY, 6
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_ENEMY, 7
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    work_set                WK_ENEMY, 8
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             1, 16
    nop
    evt_end                 0

.proc main_0F
    sce_em_set              0, 0, ENEMY_ZOMBIEBRAD, 6, 16, 0, 2, 0, 195, -2915, 0, -14478, 4000, 0, 0
    item_aot_set            31, SCE_ITEM, SAT_EM | SAT_MANUAL | SAT_FRONT, 0, 194, -1000, -1000, 2000, 2000, ITEM_SPECIALKEY, 1, 156, 255, 1
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 6, 16, 3, 2, 0, 255, -24137, -5400, -25367, 3061, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 16, 3, 1, 1, 255, -26445, -5400, -29095, 3024, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 2, 80, 3, 2, 3, 255, -26877, -5400, -25065, 3223, 0, 0
    evt_end                 0

.proc main_10
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 6, 16, 3, 2, 0, 255, -24137, -5400, -25367, 3061, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 16, 3, 1, 0, 255, -26445, -5400, -29095, 3024, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 2, 80, 3, 2, 3, 255, -23577, -5400, -26265, 3831, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 6, 16, 3, 1, 0, 255, -25425, -5400, -28865, 3224, 0, 0
    set                     5, 16, 1
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 64, 0, 3, 1, 0, 56, -10880, -5400, -20763, 2015, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 70, 0, 3, 2, 0, 60, -1148, -5400, -22749, 2138, 0, 0
    if                      0, off_41A6
    ck                      6, 56, 1
    set                     5, 21, 1
    endif
    nop

off_41A6:
    if                      0, off_41B4
    ck                      6, 60, 1
    set                     5, 22, 1
    endif
    nop

off_41B4:
    sce_em_set              0, 6, ENEMY_ZOMBIERANDOM, 6, 128, 3, 1, 0, 255, 13105, -5400, -30139, 3160, 0, 0
    sce_em_set              0, 7, ENEMY_ZOMBIERANDOM, 6, 128, 3, 2, 0, 255, 15615, -5400, -29673, 2138, 0, 0
    sce_em_set              0, 8, ENEMY_ZOMBIERANDOM, 6, 128, 3, 1, 0, 255, 18947, -5400, -30341, 2138, 0, 0
    evt_end                 0

.proc main_11
    evt_next
    work_set                WK_PLAYER, 0

off_41FC:
    if                      0, off_422E
    member_cmp              0, 9, 0, 2, 0
    if                      0, off_422C
    ck                      6, 56, 1
    if                      0, off_422A
    ck                      6, 60, 1
    if                      0, off_4228
    ck                      5, 0, 0
    set                     5, 0, 1
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_4228:
    endif
    nop

off_422A:
    endif
    nop

off_422C:
    endif
    nop

off_422E:
    if                      0, off_4240
    cmp                     0, 26, CMP_EQ, 10
    sca_id_set              8, 0, 94
    else                    0, off_425A

off_4240:
    if                      0, off_4252
    cmp                     0, 26, CMP_EQ, 9
    sca_id_set              8, 0, 94
    else                    0, off_4258

off_4252:
    sca_id_set              8, 0, 254
    nop
    nop

off_4258:
    nop
    nop

off_425A:
    goto                    255, 255, 0, off_41FC
    evt_end                 0

.proc main_12
    evt_next
    nop

off_4264:
    if                      0, off_4276
    cmp                     0, 26, CMP_EQ, 10
    sca_id_set              8, 0, 94
    else                    0, off_4290

off_4276:
    if                      0, off_4288
    cmp                     0, 26, CMP_EQ, 9
    sca_id_set              8, 0, 94
    else                    0, off_428E

off_4288:
    sca_id_set              8, 0, 254
    nop
    nop

off_428E:
    nop
    nop

off_4290:
    goto                    255, 255, 0, off_4264 + 2
    evt_end                 0

.proc main_13
    switch                  26, off_440C

off_429C:
    case                    0, off_42A2, 2

off_42A2:
    case                    0, off_42A8, 3

off_42A8:
    case                    0, off_42AE, 6

off_42AE:
    case                    0, off_42B4, 4

off_42B4:
    case                    0, off_4300, 5
    if                      0, off_42FE
    ck                      5, 1, 0
    set                     5, 1, 1
    set                     5, 2, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              12, 0, 0
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    member_copy             16, 1
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             1, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 16383
    member_set2             7, 16
    nop
    endif
    nop

off_42FE:
    break                   0

off_4300:
    case                    0, off_436A, 0
    if                      0, off_4316
    ck                      5, 17, 1
    set                     5, 17, 0
    gosub                   11
    endif
    nop

off_4316:
    if                      0, off_4368
    ck                      5, 2, 0
    set                     5, 2, 1
    set                     5, 1, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              12, 0, 131
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
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
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    endif
    nop

off_4368:
    break                   0

off_436A:
    case                    0, off_4370, 1

off_4370:
    case                    0, off_4376, 10

off_4376:
    case                    0, off_438C, 11
    if                      0, off_438C
    ck                      5, 17, 0
    set                     5, 17, 1
    gosub                   12
    endif
    nop

off_438C:
    case                    0, off_4392, 7

off_4392:
    case                    0, off_4398, 8

off_4398:
    case                    0, off_439E, 9

off_439E:
    case                    0, off_43A4, 12

off_43A4:
    case                    0, off_43AA, 13

off_43AA:
    case                    0, off_43B0, 14

off_43B0:
    case                    0, off_440A, 15
    if                      0, off_4408
    ck                      5, 2, 0
    set                     5, 2, 1
    set                     5, 1, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              12, 0, 131
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
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
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    endif
    nop

off_4408:
    break                   0

off_440A:
    eswitch                 0

off_440C:
    evt_next
    nop
    goto                    255, 255, 0, off_429C
    evt_end                 0

.proc main_14
    if                      0, off_4432

off_441A:
    ck                      6, 195, 1
    ck                      5, 20, 0
    set                     5, 20, 1
    aot_reset               31, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 83, 0, 1, 0, 156, 0
    endif
    nop

off_4432:
    evt_next
    nop
    goto                    255, 255, 0, off_441A
    evt_end                 0
