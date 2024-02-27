.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 10803, -9738, 5080, 3830, -13695, -1800, -26187, -904, 1, 0, 0, 1, 12, 0, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, -26272, -22795, 4280, 1900, ID_MSG_0, 0, 0, 0, 0, 255
    aot_set                 ID_AOT_2, SCE_NORMAL, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 10831, -28151, 4340, 2550, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_3, SCE_NORMAL, SAT_EM | SAT_UNDER, 3, 0, -26066, -23500, 2450, 1570, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_4, SCE_NORMAL, SAT_EM | SAT_UNDER, 3, 0, 21862, -18667, 6900, 8800, 0, 0, 0, 0, 0, 0
    if                      0, off_371A
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 25562, -16667, 1840, 3500, ITEM_HERBG, 1, 211, ID_OBJ_255, IF_DEFAULT
    endif
    nop

off_371A:
    evt_end                 0

.main
.proc main
    gosub                   main_02
    if                      0, off_3766
    ck                      FG_ROOM, 18, 0
    gosub                   main_10
    evt_exec                255, I_GOSUB, main_03
    evt_exec                255, I_GOSUB, main_05
    evt_exec                255, I_GOSUB, main_06
    evt_exec                255, I_GOSUB, main_11
    else                    0, off_377E

off_3766:
    evt_exec                255, I_GOSUB, main_03
    evt_exec                255, I_GOSUB, main_05
    gosub                   main_0F
    evt_exec                255, I_GOSUB, main_13
    evt_exec                255, I_GOSUB, main_12
    evt_exec                255, I_GOSUB, main_14
    nop
    nop

off_377E:
    set                     FG_PBF00, 5, 0
    evt_exec                255, I_GOSUB, main_07
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    set                     FG_ROOM, 18, 1
    save                    V_04, 0
    for                     0, off_37BA, 255
    if                      0, off_37AA
    work_copy               4, 2, 0
    ck                      FG_ITEM, 0, 1
    set                     FG_ROOM, 18, 0
    endif
    nop

off_37AA:
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    next                    0

off_37BA:
    save                    V_04, 0
    for                     0, off_37E6, 255
    if                      0, off_37D6
    work_copy               4, 2, 0
    ck                      FG_ITEM_2, 0, 1
    set                     FG_ROOM, 18, 0
    endif
    nop

off_37D6:
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    next                    0

off_37E6:
    if                      0, off_37F6
    ck                      FG_STATUS, F_EASY, 1
    set                     FG_ROOM, 18, 0
    else                    0, off_382C

off_37F6:
    if                      0, off_380E
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_380C
    ck                      FG_ROOM, 18, 1
    set                     FG_ZAPPING, 17, 1
    endif
    nop

off_380C:
    endif
    nop

off_380E:
    if                      0, off_381C
    ck                      FG_ZAPPING, 17, 1
    set                     FG_ROOM, 18, 1
    endif
    nop

off_381C:
    if                      0, off_382A
    ck                      FG_ENEMY, 195, 1
    set                     FG_ROOM, 18, 0
    endif
    nop

off_382A:
    nop
    nop

off_382C:
    evt_end                 0

.proc main_03
    sleep                   10, 5
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    evt_next

off_3845:
    nop
    if                      0, off_3888
    cmp                     0, V_CUT, CMP_EQ, 0
    if                      0, off_3886
    ck                      FG_ROOM, 9, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    if                      0, off_3884
    member_cmp              0, 2, 5, 7, 0
    if                      0, off_3882
    member_cmp              0, 9, 0, 3, 0
    if                      0, off_3880
    cmp                     0, V_RNG, CMP_GE, 32000
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
    goto                    255, 255, 0, off_3845
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, ID_EM_1
    set                     FG_ROOM, 9, 1
    nop
    member_set              M_SCE_FREE0, -29696
    evt_next
    nop
    member_copy             V_TEMP, M_SCE_FREE0
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_SCE_FREE0, V_TEMP
    nop
    evt_end                 0

.proc main_05

off_38B0:
    work_set                WK_ENEMY, ID_EM_1
    nop
    if                      0, off_3914
    ck                      FG_ROOM, 9, 1
    if                      0, off_38FA
    member_cmp              0, 24, 6, 0, 128
    se_on                   2, 266, 259, 0, 0, 0
    if                      0, off_38EA
    ck                      FG_ROOM, 11, 0
    set                     FG_ROOM, 11, 1
    set                     FG_PBF00, 2, 1
    set                     FG_PBF00, 5, 0
    else                    0, off_38F8

off_38EA:
    set                     FG_ROOM, 11, 0
    set                     FG_PBF00, 2, 0
    set                     FG_PBF00, 5, 1
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
    set                     FG_ROOM, 9, 0
    nop
    nop

off_390E:
    member_set              M_SCE_FREE1, 0
    endif
    nop

off_3914:
    evt_next
    nop
    goto                    255, 255, 0, off_38B0
    evt_end                 0

.proc main_06

off_391E:
    switch                  26, off_3A16
    case                    0, off_3928, 4

off_3928:
    case                    0, off_3944, 5
    if                      0, off_3942
    ck                      FG_ROOM, 1, 0
    set                     FG_ROOM, 1, 1
    set                     FG_ROOM, 3, 0
    gosub                   main_08
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
    ck                      FG_ROOM, 2, 0
    set                     FG_ROOM, 2, 1
    set                     FG_ROOM, 3, 0
    gosub                   main_09
    endif
    nop

off_396A:
    if                      0, off_397A
    ck                      FG_ROOM, 17, 0
    set                     FG_ROOM, 17, 1
    gosub                   main_0C
    endif
    nop

off_397A:
    break                   0

off_397C:
    case                    0, off_39A8, 0
    if                      0, off_3996
    ck                      FG_ROOM, 2, 0
    set                     FG_ROOM, 2, 1
    set                     FG_ROOM, 3, 0
    gosub                   main_09
    endif
    nop

off_3996:
    if                      0, off_39A6
    ck                      FG_ROOM, 17, 1
    set                     FG_ROOM, 17, 0
    gosub                   main_0B
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
    ck                      FG_ROOM, 2, 0
    set                     FG_ROOM, 2, 1
    set                     FG_ROOM, 3, 0
    gosub                   main_09
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
    ck                      FG_ROOM, 3, 0
    set                     FG_ROOM, 3, 1
    set                     FG_ROOM, 1, 0
    set                     FG_ROOM, 2, 0
    gosub                   main_0A
    endif
    nop

off_3A12:
    break                   0

off_3A14:
    eswitch                 0

off_3A16:
    evt_next
    nop
    goto                    255, 255, 0, off_391E
    evt_end                 0

.proc main_07

off_3A20:
    switch                  26, off_3AF6
    case                    0, off_3A3E, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 58, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 85, 65
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
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 60, 65
    break                   0

off_3A6A:
    case                    0, off_3A78, 7
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 74, 65
    break                   0

off_3A78:
    case                    0, off_3A86, 8
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 24, 65
    break                   0

off_3A86:
    case                    0, off_3A94, 9
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 24, 65
    break                   0

off_3A94:
    case                    0, off_3AAE, 10
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 58, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 24, 65
    break                   0

off_3AAE:
    case                    0, off_3ABC, 11
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 24, 65
    break                   0

off_3ABC:
    case                    0, off_3ACA, 12
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 24, 65
    break                   0

off_3ACA:
    case                    0, off_3AD8, 13
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 24, 65
    break                   0

off_3AD8:
    case                    0, off_3AE6, 14
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 24, 65
    break                   0

off_3AE6:
    case                    0, off_3AF4, 15
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 24, 65
    break                   0

off_3AF4:
    eswitch                 0

off_3AF6:
    do                      0, off_3B02
    evt_next
    nop
    edwhile                 off_3B02
    ck                      FG_STATUS, 11, 0

off_3B02:
    goto                    255, 255, 0, off_3A20
    evt_end                 0

.proc main_08
    if                      0, off_3B54
    ck                      FG_ROOM, 21, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_Y_POS, -32000
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_3B54:
    if                      0, off_3B9E
    ck                      FG_ROOM, 22, 0
    work_set                WK_ENEMY, ID_EM_5
    nop
    member_set              M_Y_POS, -32000
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_3B9E:
    evt_end                 0

.proc main_09
    if                      0, off_3BDC
    ck                      FG_ROOM, 21, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_Y_POS, -5400
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 16383
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_3BDC:
    if                      0, off_3C18
    ck                      FG_ROOM, 22, 0
    work_set                WK_ENEMY, ID_EM_5
    nop
    member_set              M_Y_POS, -5400
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 16383
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_3C18:
    evt_end                 0

.proc main_0A
    if                      0, off_3D38
    cmp                     0, V_CUT, CMP_EQ, 6
    if                      0, off_3CAC
    ck                      FG_ROOM, 21, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_3C6C
    member_cmp              0, 9, 0, 4, 0
    member_set              M_Y_POS, -5400
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 16383
    member_set2             M_TYPE, V_TEMP
    nop
    else                    0, off_3CAA

off_3C6C:
    member_set              M_Y_POS, -32000
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             M_TYPE, V_TEMP
    nop
    nop
    nop

off_3CAA:
    endif
    nop

off_3CAC:
    if                      0, off_3D34
    ck                      FG_ROOM, 22, 0
    work_set                WK_ENEMY, ID_EM_5
    nop
    if                      0, off_3CF4
    member_cmp              0, 9, 0, 4, 0
    member_set              M_Y_POS, -5400
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 16383
    member_set2             M_TYPE, V_TEMP
    nop
    else                    0, off_3D32

off_3CF4:
    member_set              M_Y_POS, -32000
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             M_TYPE, V_TEMP
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
    ck                      FG_ROOM, 21, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_Y_POS, -5400
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 16383
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_3D74:
    if                      0, off_3DB0
    ck                      FG_ROOM, 22, 0
    work_set                WK_ENEMY, ID_EM_5
    nop
    member_set              M_Y_POS, -5400
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 16383
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_3DB0:
    nop
    nop

off_3DB2:
    evt_end                 0

.proc main_0B
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_Y_POS, -5400
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 16383
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_set              M_Y_POS, -5400
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 16383
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_set              M_Y_POS, -5400
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 16383
    member_set2             M_TYPE, V_TEMP
    nop
    if                      0, off_3E86
    ck                      FG_ROOM, 16, 1
    work_set                WK_ENEMY, ID_EM_4
    nop
    member_set              M_Y_POS, -5400
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 16383
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_3E86:
    evt_end                 0

.proc main_0C
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_Y_POS, -32000
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_set              M_Y_POS, -32000
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_set              M_Y_POS, -32000
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    if                      0, off_3F92
    ck                      FG_ROOM, 16, 1
    work_set                WK_ENEMY, ID_EM_4
    nop
    member_set              M_Y_POS, -32000
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
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
    work_set                WK_ENEMY, ID_EM_6
    nop
    if                      0, off_3FCE
    member_cmp              0, 2, 5, 7, 0
    member_set              M_TYPE, 6
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    endif
    nop

off_3FCE:
    work_set                WK_ENEMY, ID_EM_7
    nop
    if                      0, off_3FFE
    member_cmp              0, 2, 5, 7, 0
    member_set              M_TYPE, 6
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    endif
    nop

off_3FFE:
    work_set                WK_ENEMY, ID_EM_8
    nop
    if                      0, off_402E
    member_cmp              0, 2, 5, 7, 0
    member_set              M_TYPE, 6
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    endif
    nop

off_402E:
    do                      0, off_403E
    sleep                   10, 1
    edwhile                 off_403E
    cmp                     0, V_CUT, CMP_EQ, 15

off_403E:
    work_set                WK_ENEMY, ID_EM_6
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_7
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_8
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_end                 0

.proc main_0F
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_BRAD, 6, AI_10, 0, SBK_2, 0, 195, -2915, 0, -14478, 4000, 0, 0
    item_aot_set            ID_AOT_31, SCE_ITEM, SAT_EM | SAT_MANUAL | SAT_FRONT, 0, 194, -1000, -1000, 2000, 2000, ITEM_SPECIALKEY, 1, 156, ID_OBJ_255, IF_FLOOR
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 6, AI_10, 3, SBK_2, 0, 255, -24137, -5400, -25367, 3061, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_10, 3, SBK_1, 1, 255, -26445, -5400, -29095, 3024, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 2, AI_10 | AI_40, 3, SBK_2, 3, 255, -26877, -5400, -25065, 3223, 0, 0
    evt_end                 0

.proc main_10
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 6, AI_10, 3, SBK_2, 0, 255, -24137, -5400, -25367, 3061, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 6, AI_10, 3, SBK_1, 0, 255, -26445, -5400, -29095, 3024, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 2, AI_10 | AI_40, 3, SBK_2, 3, 255, -23577, -5400, -26265, 3831, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 6, AI_10, 3, SBK_1, 0, 255, -25425, -5400, -28865, 3224, 0, 0
    set                     FG_ROOM, 16, 1
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 64, AI_DEFAULT, 3, SBK_1, 0, 56, -10880, -5400, -20763, 2015, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 70, AI_DEFAULT, 3, SBK_2, 0, 60, -1148, -5400, -22749, 2138, 0, 0
    if                      0, off_41A6
    ck                      FG_ENEMY, 56, 1
    set                     FG_ROOM, 21, 1
    endif
    nop

off_41A6:
    if                      0, off_41B4
    ck                      FG_ENEMY, 60, 1
    set                     FG_ROOM, 22, 1
    endif
    nop

off_41B4:
    sce_em_set              0, ID_EM_6, ENEMY_ZOMBIE_RANDOM, 6, AI_INACTIVE, 3, SBK_1, 0, 255, 13105, -5400, -30139, 3160, 0, 0
    sce_em_set              0, ID_EM_7, ENEMY_ZOMBIE_RANDOM, 6, AI_INACTIVE, 3, SBK_2, 0, 255, 15615, -5400, -29673, 2138, 0, 0
    sce_em_set              0, ID_EM_8, ENEMY_ZOMBIE_RANDOM, 6, AI_INACTIVE, 3, SBK_1, 0, 255, 18947, -5400, -30341, 2138, 0, 0
    evt_end                 0

.proc main_11

off_41F8:
    evt_next
    work_set                WK_PLAYER, 0
    if                      0, off_422E
    member_cmp              0, 9, 0, 2, 0
    if                      0, off_422C
    ck                      FG_ENEMY, 56, 1
    if                      0, off_422A
    ck                      FG_ENEMY, 60, 1
    if                      0, off_4228
    ck                      FG_ROOM, 0, 0
    set                     FG_ROOM, 0, 1
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
    cmp                     0, V_CUT, CMP_EQ, 10
    sca_id_set              8, 0, 94
    else                    0, off_425A

off_4240:
    if                      0, off_4252
    cmp                     0, V_CUT, CMP_EQ, 9
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
    goto                    255, 255, 0, off_41F8
    evt_end                 0

.proc main_12

off_4262:
    evt_next
    nop
    if                      0, off_4276
    cmp                     0, V_CUT, CMP_EQ, 10
    sca_id_set              8, 0, 94
    else                    0, off_4290

off_4276:
    if                      0, off_4288
    cmp                     0, V_CUT, CMP_EQ, 9
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
    goto                    255, 255, 0, off_4262
    evt_end                 0

.proc main_13

off_4298:
    switch                  26, off_440C
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
    ck                      FG_ROOM, 1, 0
    set                     FG_ROOM, 1, 1
    set                     FG_ROOM, 2, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_Y_POS, 0
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -1025
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 16383
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_42FE:
    break                   0

off_4300:
    case                    0, off_436A, 0
    if                      0, off_4316
    ck                      FG_ROOM, 17, 1
    set                     FG_ROOM, 17, 0
    gosub                   main_0B
    endif
    nop

off_4316:
    if                      0, off_4368
    ck                      FG_ROOM, 2, 0
    set                     FG_ROOM, 2, 1
    set                     FG_ROOM, 1, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_Y_POS, -32000
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             M_TYPE, V_TEMP
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
    ck                      FG_ROOM, 17, 0
    set                     FG_ROOM, 17, 1
    gosub                   main_0C
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
    ck                      FG_ROOM, 2, 0
    set                     FG_ROOM, 2, 1
    set                     FG_ROOM, 1, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_Y_POS, -32000
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 1024
    member_set2             M_POINTER, V_TEMP
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 16384
    member_set2             M_TYPE, V_TEMP
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
    goto                    255, 255, 0, off_4298
    evt_end                 0

.proc main_14

off_4416:
    if                      0, off_4432
    ck                      FG_ENEMY, 195, 1
    ck                      FG_ROOM, 20, 0
    set                     FG_ROOM, 20, 1
    aot_reset               ID_AOT_31, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 83, 0, 1, 0, 156, 0
    endif
    nop

off_4432:
    evt_next
    nop
    goto                    255, 255, 0, off_4416
    evt_end                 0
