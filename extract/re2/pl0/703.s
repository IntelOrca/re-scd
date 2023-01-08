.version 2
.init
.proc init_00
    if                      0, off_1C58
    ck                      4, 254, 1
    set                     4, 136, 1
    set                     4, 137, 0
    set                     4, 141, 0
    set                     4, 140, 1
    set                     4, 169, 0
    set                     4, 184, 0
    endif
    nop

off_1C58:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14479, -20449, 2600, 1800, 1929, 0, -10053, -664, 6, 0, 4, 0, 42, 1, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28429, -24249, 1800, 2100, 20066, 0, -23376, 2120, 6, 4, 12, 0, 42, 2, 0, 0, UNLOCKED, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -22512, -20, -24236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 1, 0, 10, 16, -4519, -1800, -24340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 1, 0, 10, 0, -20, -2494, -23296, 0, 0, -448, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1D20
    ck                      4, 137, 1
    work_set                WK_OBJECT, 2
    nop
    dir_set                 0, 0, 0, 0
    endif
    nop

off_1D20:
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 22, 781, -2100, 23246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 22, 781, -2100, 23246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 22, 781, -2100, 23246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 22, 781, -2100, 23246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 22, 781, -2100, 23246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 10, 22, 781, -2100, 23246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 22, 781, -2100, 23246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main_00
    if                      0, off_1E92
    ck                      4, 136, 1
    if                      0, off_1E90
    ck                      4, 186, 0
    set                     4, 186, 1
    sce_bgmtbl_set          0, 1, 7, 11299, 32832
    sce_bgmtbl_set          0, 0, 7, 11299, 32832
    sce_bgmtbl_set          0, 2, 7, 11299, 32832
    sce_bgmtbl_set          0, 4, 7, 11299, 32832
    endif
    nop

off_1E90:
    endif
    nop

off_1E92:
    aot_set                 8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17989, -27149, 2660, 2350, 255, 0, I_GOSUB, main_05, 0, 0
    if                      0, off_1EBA
    ck                      4, 140, 1
    aot_reset               8, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1EBA:
    sce_em_set              0, 0, ENEMY_CLAIREREDFIELDNOJACKET, 0, 64, 0, 0, 0, 255, -15993, 0, -22433, -2048, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    if                      0, off_1EF8
    ck                      4, 137, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 16311, 0, 24740
    endif
    nop

off_1EF8:
    if                      0, off_1F2C
    ck                      4, 141, 0
    sce_em_set              0, 1, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 64, 0, 0, 0, 255, -16753, 0, -26146, 1024, 272, 68
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    else                    0, off_1F9A

off_1F2C:
    if                      0, off_1F6E
    ck                      4, 137, 0
    sce_em_set              0, 1, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 64, 0, 0, 0, 255, -16753, 0, -26146, 1024, 271, 68
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    else                    0, off_1F98

off_1F6E:
    sce_em_set              0, 1, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 64, 0, 0, 0, 255, -16314, 0, -21717, -2440, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    nop
    nop

off_1F98:
    nop
    nop

off_1F9A:
    gosub                   8
    evt_end                 0

.proc main_01
    gosub                   9
    if                      0, off_1FC8
    ck                      5, 4, 1
    if                      0, off_1FC6
    ck                      5, 5, 0
    if                      0, off_1FC4
    cmp                     0, 26, CMP_EQ, 2
    set                     5, 5, 1
    evt_exec                2, I_GOSUB, main_03
    endif
    nop

off_1FC4:
    endif
    nop

off_1FC6:
    endif
    nop

off_1FC8:
    evt_end                 0

.proc main_02
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -15993, 0, -22433
    dir_set                 0, 0, -2280, 0
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -16314, 0, -21717
    dir_set                 0, 0, -2440, 0
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    plc_motion              2, 5, 4
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -9
    member_set2             0, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -1025
    member_set2             0, 16
    nop
    set                     5, 4, 1
    sce_bgmtbl_set          0, 3, 7, 65315, 0
    sce_bgmtbl_set          0, 4, 7, 12323, 49152
    evt_end                 0

.proc main_03
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    dir_set                 0, 0, 533, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 96, 96
    plc_dest                0, 18, 32, -7642, -23421
    gosub                   21
    plc_dest                0, 5, 32, -15772, -23776
    sleep                   10, 18
    cut_chg                 1
    evt_next
    nop
    xa_on                   0, 7
    message_on              0, 5, 0, 0, 0
    sleep                   10, 18
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 6, 32, -15772, -23776
    evt_exec                6, I_GOSUB, main_04
    evt_next
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 0
    plc_cnt                 10
    sleep                   10, 20
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 9, 33, -21249, -23393
    gosub                   22
    evt_end                 0

.proc main_05
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_ENEMY, 1
    nop
    plc_neck                2, 0, -1024, 128, 64, 64
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -16151, 0, -24649
    dir_set                 0, 0, 1344, 0
    plc_neck                5, 3, 1, 0, 60, 60
    cut_chg                 9
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 25
    evt_next
    nop
    xa_on                   0, 6
    message_on              0, 6, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 1, 0, 60, 60
    plc_motion              0, 16, 0
    sleep                   10, 46
    plc_motion              0, 17, 0
    plc_cnt                 6
    sleep                   10, 60
    work_set                WK_ENEMY, 1
    nop
    plc_neck                2, 0, -1024, 1024, 64, 64
    sleep                   10, 5
    plc_neck                2, 0, -1024, 128, 64, 64
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    sleep                   10, 25
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    plc_ret
    cut_chg                 3
    cut_auto                1
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_06
    set                     2, 7, 1
    set                     1, 27, 1
    aot_reset               1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     4, 169, 1
    evt_next
    nop
    xa_on                   0, 8
    message_on              0, 9, 0, 0, 0
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 8, 32, -24383, -23726
    sleep                   10, 5
    plc_stop
    nop
    plc_neck                2, 0, 0, -180, 32, 32
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -200, -180, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, 200, -180, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, -200, -100, 32, 32
    sleep                   10, 20
    set                     5, 6, 1
    plc_dest                0, 8, 32, -20449, -23291
    sleep                   10, 10
    plc_stop
    nop
    plc_neck                2, 0, 100, -180, 32, 32
    sleep                   10, 40
    plc_neck                2, 0, -200, -180, 32, 32
    plc_dest                0, 8, 32, -24646, -17097
    sleep                   10, 20
    plc_stop
    nop
    plc_neck                2, 0, 200, -180, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, -200, -180, 32, 32
    sleep                   10, 10
    plc_neck                2, 0, 200, -180, 32, 32
    sleep                   10, 10
    plc_neck                2, 0, -200, -180, 32, 32
    sleep                   10, 20
    plc_neck                2, 0, 200, -180, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, -200, -180, 32, 32
    wsleep
    wsleeping
    se_on                   2, 266, 0, -22857, 0, -23541
    sleep                   10, 30
    set                     1, 4, 1
    save                    35, 120
    sleep                   10, 10
    plc_dest                0, 5, 32, -23342, -23770
    sleep                   10, 18
    se_on                   2, 278, 0, -23057, 0, -23541
    plc_dest                0, 6, 32, -23342, -23770
    sleep                   10, 10
    plc_neck                2, 0, 0, 1024, 32, 32
    sleep                   10, 20
    cut_chg                 12
    pos_set                 0, -23925, 0, -23185
    dir_set                 0, 0, 0, 0
    evt_next
    nop
    xa_on                   0, 9
    message_on              0, 13, 0, 0, 0
    evt_next
    nop
    plc_neck                2, 0, 0, 10, 32, 32
    plc_motion              0, 21, 0
    wsleep
    wsleeping
    xa_on                   0, 10
    message_on              0, 14, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 8
    pos_set                 0, -23216, 0, -23439
    set                     1, 27, 0
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     2, 7, 0
    evt_end                 0

.proc main_07
    evt_next
    set                     2, 7, 1
    set                     1, 27, 1
    cut_chg                 0
    work_set                WK_PLAYER, 0
    pos_set                 0, -13836, 0, -20831
    dir_set                 0, 0, 1424, 0
    plc_motion              10, 19, 68
    for                     0, off_2394, 60
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    super_on                0, 64, 0, 97, 1, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0
    evt_next
    nop
    next                    0

off_2394:
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 20
    se_on                   2, 268, 0, -16753, 0, -26146
    sleep                   10, 10
    work_set                WK_ENEMY, 1
    plc_motion              0, 15, 68
    nop
    pos_set                 0, -16753, 0, -26146
    dir_set                 0, 0, 1024, 0
    plc_neck                2, 0, -1024, 128, 64, 64
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    evt_next
    cut_chg                 9
    work_set                WK_PLAYER, 0
    pos_set                 0, -16151, 0, -24649
    dir_set                 0, 0, 1344, 0
    plc_neck                5, 3, 1, 0, 60, 60
    evt_next
    nop
    xa_on                   0, 6
    message_on              0, 6, 0, 0, 0
    work_set                WK_ENEMY, 1
    work_set                WK_PLAYER, 0
    plc_neck                5, 3, 1, 0, 60, 60
    plc_motion              0, 16, 64
    plc_cnt                 10
    sleep                   10, 46
    plc_motion              0, 17, 0
    plc_cnt                 6
    sleep                   10, 60
    work_set                WK_ENEMY, 1
    nop
    plc_neck                2, 0, -1024, 1024, 64, 64
    sleep                   10, 5
    plc_neck                2, 0, -1024, 128, 64, 64
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    sleep                   10, 25
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    plc_ret
    cut_chg                 3
    cut_auto                1
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_08
    save                    9, 0
    door_aot_se             9, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 1, 1, -1686, -1800, -23280, 0, 6, 3, 11, 1, 42, 1, 0, 0, UNLOCKED, 0
    aot_set                 4, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -24349, -24549, 3660, 2370, 0, 0, 0, 0, 0, 0
    aot_set                 5, SCE_NORMAL, SAT_PL | SAT_UNDER, 1, 0, -6319, -24549, 3530, 2370, 0, 0, 0, 0, 0, 0
    save                    4, 15
    save                    5, 15
    if                      0, off_24D2
    ck                      4, 141, 0
    set                     4, 141, 1
    evt_exec                2, I_GOSUB, main_07
    endif
    nop

off_24D2:
    if                      0, off_24F0
    ck                      4, 184, 0
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -1189, -24199, 2600, 1630, 6, 0, I_GOSUB, main_0C, 0, 0
    endif
    nop

off_24F0:
    if                      0, off_24FE
    ck                      4, 140, 0
    cut_replace             6, 13
    nop
    endif
    nop

off_24FE:
    aot_set                 1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28429, -24249, 1800, 2100, 4, 0, 24, 6, 0, 0
    if                      0, off_255C
    ck                      4, 169, 1
    set                     5, 6, 1
    cut_replace             4, 8
    cut_chg                 8
    nop
    evt_exec                7, I_GOSUB, main_0F
    evt_exec                3, I_GOSUB, main_0E
    if                      0, off_255A
    ck                      4, 191, 1
    sce_bgm_control         0, 0, 2, 1, 65
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -24779, -25349, 2600, 3900, 2, 0, I_GOSUB, main_0A, 0, 0
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, I_GOSUB, main_0A, 0, 0
    endif
    nop

off_255A:
    endif
    nop

off_255C:
    evt_end                 0

.proc main_09
    if                      0, off_25F4
    ck                      5, 6, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_258A
    member_cmp              0, 9, 0, 4, 0
    if                      0, off_2586
    ck                      5, 0, 0
    set                     5, 0, 1
    evt_exec                9, I_GOSUB, main_11
    endif
    nop

off_2586:
    else                    0, off_25AC

off_258A:
    if                      0, off_25AA
    ck                      5, 0, 1
    if                      0, off_25A8
    ck                      5, 2, 1
    set                     5, 0, 0
    set                     5, 2, 0
    evt_exec                9, I_GOSUB, main_12
    endif
    nop

off_25A8:
    endif
    nop

off_25AA:
    nop
    nop

off_25AC:
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_25D0
    member_cmp              0, 9, 0, 5, 0
    if                      0, off_25CC
    ck                      5, 1, 0
    set                     5, 1, 1
    evt_exec                8, I_GOSUB, main_13
    endif
    nop

off_25CC:
    else                    0, off_25F2

off_25D0:
    if                      0, off_25F0
    ck                      5, 1, 1
    if                      0, off_25EE
    ck                      5, 3, 1
    set                     5, 1, 0
    set                     5, 3, 0
    evt_exec                8, I_GOSUB, main_14
    endif
    nop

off_25EE:
    endif
    nop

off_25F0:
    nop
    nop

off_25F2:
    endif
    nop

off_25F4:
    evt_end                 0

.proc main_0A
    set                     2, 7, 1
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_exec                6, I_GOSUB, main_0B
    sleep                   10, 3
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 8, 32, -29057, -23596
    sleep                   10, 5
    plc_neck                2, 0, 0, -1024, 32, 96
    plc_stop
    nop
    sleep                   10, 10
    sleep                   10, 20
    plc_neck                2, 0, 320, -1024, 32, 32
    sleep                   10, 20
    plc_neck                2, 0, -320, -1024, 32, 32
    plc_dest                0, 8, 32, -25057, 0
    sleep                   10, 10
    plc_stop
    nop
    sleep                   10, 20
    set                     1, 4, 0
    sce_bgm_control         0, 2, 0, 91, 65
    sce_bgm_control         1, 2, 0, 91, 65
    sce_bgm_control         2, 2, 0, 91, 65
    sce_fade_set            1, 2, 7, 17, 1
    sce_fade_adjust         1, 255, 127
    set                     0, 10, 1
    sce_fade_adjust         1, 255, 127

off_2682:
    evt_next
    nop
    goto                    255, 255, 0, off_2682
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    evt_end                 0

.proc main_0B
    for                     0, off_26AC, 4
    se_on                   2, 15, 0, -24899, 0, -23153
    sleep                   10, 29
    next                    0

off_26AC:
    evt_end                 0

.proc main_0C
    set                     2, 7, 1
    if                      0, off_26CE
    ck                      4, 136, 0
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    else                    0, off_28E4

off_26CE:
    if                      0, off_26E2
    ck                      4, 140, 0
    message_on              0, 15, 0, 255, 255
    evt_next
    nop
    else                    0, off_28E2

off_26E2:
    if                      0, off_28E0
    ck                      4, 137, 0
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    if                      0, off_28DE
    ck                      11, 31, 0
    set                     1, 27, 1
    work_set                WK_OBJECT, 1
    nop
    member_set              13, 236, 160
    set                     5, 7, 1
    cut_chg                 10
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -20, -2494, -23146
    work_set                WK_PLAYER, 0
    weapon_chg              0
    nop
    if                      0, off_2732
    ck                      1, 0, 0
    pos_set                 0, -1526, -1800, -23189
    else                    0, off_273C

off_2732:
    pos_set                 0, -1426, -1800, -23189
    nop
    nop

off_273C:
    dir_set                 0, 0, 0, 0
    plc_motion              0, 15, 0
    sleep                   10, 40
    sleep                   10, 3
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  250, 1, 0, 0, 0
    nop_8c                  0, 200, 150, 19, 0, 1, 0
    se_on                   2, 269, 0, -1327, -3800, -24491
    work_set                WK_OBJECT, 2
    nop
    for                     0, off_279A, 20
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 3
    member_set2             16, 16
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 12
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_279A:
    nop_8c                  0, 200, 50, 2, 0, 4, 0
    nop_8a                  0, 2, 0, 4, 0
    nop_8c                  0, 250, 50, 3, 0, 7, 0
    nop_8a                  0, 2, 0, 7, 0
    sleep                   10, 5
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 5
    member_set2             16, 16
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 13
    member_set2             12, 16
    nop
    sleep                   10, 2
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 5
    member_set2             16, 16
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 13
    member_set2             12, 16
    nop
    set                     5, 7, 0
    cut_chg                 6
    sleep                   10, 10
    se_on                   2, 270, 0, -1327, -3800, -24491
    gosub                   16
    cut_chg                 7
    sce_bgm_control         1, 5, 0, 0, 0
    sleep                   10, 30
    set                     1, 4, 0
    set                     4, 184, 1
    cut_replace             4, 8
    cut_replace             6, 11
    if                      0, off_2836
    ck                      1, 0, 0
    cut_chg                 11
    else                    0, off_2842

off_2836:
    cut_chg                 3
    work_set                WK_PLAYER, 0
    plc_motion              2, 2, 68
    nop
    nop
    nop

off_2842:
    sce_bgm_control         1, 2, 0, 0, 0
    sce_bgm_control         2, 2, 0, 0, 0
    sce_bgm_control         0, 2, 0, 0, 0
    evt_next
    movie_on                13
    work_set                WK_OBJECT, 2
    pos_set                 0, -20, -2494, -23296
    sce_fade_set            2, 2, 7, 0, 0
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    sce_fade_set            2, 2, 7, 0, 240
    set                     1, 27, 0
    set                     4, 137, 1
    evt_exec                7, I_GOSUB, main_0F
    evt_exec                3, I_GOSUB, main_0E
    gosub                   2
    sce_bgm_control         1, 2, 0, 0, 0
    sce_bgm_control         2, 2, 0, 0, 0
    sce_bgm_control         0, 1, 0, 0, 0
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    aot_reset               7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, I_GOSUB, main_06, 0, 0
    if                      0, off_28DC
    ck                      1, 0, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -2241, -1800, -23444
    dir_set                 0, 0, 0, 0
    plc_motion              1, 6, 208
    sleep                   10, 48
    endif
    nop

off_28DC:
    endif
    nop

off_28DE:
    endif
    nop

off_28E0:
    nop
    nop

off_28E2:
    nop
    nop

off_28E4:
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     2, 7, 0
    evt_end                 0

.proc main_0D
    cut_replace             4, 8
    cut_replace             6, 11
    if                      0, off_2904
    ck                      1, 0, 0
    cut_chg                 11
    else                    0, off_2910

off_2904:
    cut_chg                 3
    work_set                WK_PLAYER, 0
    plc_motion              2, 2, 68
    nop
    nop
    nop

off_2910:
    set                     4, 137, 1
    evt_exec                7, I_GOSUB, main_0F
    evt_exec                3, I_GOSUB, main_0E
    gosub                   2
    sce_bgm_control         1, 2, 0, 0, 0
    sce_bgm_control         2, 2, 0, 0, 0
    sce_bgm_control         0, 1, 0, 0, 0
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, I_GOSUB, main_06, 0, 0
    evt_end                 0

.proc main_0E

off_2946:
    nop_8b                  150, 3, 0, 0, 0
    sce_shake_on            1, 1
    nop
    sleep                   10, 1
    sce_shake_on            255, 1
    nop
    sleep                   10, 1
    sce_shake_on            1, 0
    nop
    sleep                   10, 5
    nop_8b                  100, 3, 0, 0, 0
    sce_shake_on            1, 0
    nop
    sleep                   10, 1
    sce_shake_on            255, 1
    nop
    sleep                   10, 1
    sce_shake_on            1, 1
    nop
    sleep                   10, 1
    sce_shake_on            255, 0
    nop
    sleep                   10, 10
    nop_8b                  100, 3, 0, 0, 0
    sce_shake_on            255, 1
    nop
    sleep                   10, 1
    sce_shake_on            1, 1
    nop
    sleep                   10, 1
    sleep                   10, 10
    nop_8b                  150, 3, 0, 0, 0
    sce_shake_on            1, 1
    nop
    sleep                   10, 1
    sce_shake_on            255, 1
    nop
    sleep                   10, 1
    sce_shake_on            1, 0
    nop
    sleep                   10, 5
    nop_8b                  100, 3, 0, 0, 0
    sce_shake_on            1, 0
    nop
    sleep                   10, 1
    sce_shake_on            255, 1
    nop
    sleep                   10, 1
    sce_shake_on            1, 1
    nop
    sleep                   10, 1
    sce_shake_on            255, 0
    nop
    sleep                   10, 10
    nop_8b                  100, 3, 0, 0, 0
    sce_shake_on            1, 1
    nop
    sleep                   10, 1
    sce_shake_on            255, 0
    nop
    sleep                   10, 1
    sleep                   10, 10
    if                      0, off_2A14
    cmp                     0, 9, CMP_GE, 2
    save                    9, 0
    evt_next
    nop
    endif
    nop

off_2A14:
    copy                    16, 9
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    9, 16
    nop
    goto                    255, 255, 0, off_2946 + 4
    evt_end                 0

.proc main_0F
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 30000, -4400, -26500
    dir_set                 0, 0, -1024, 0
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, 30000, -4400, -20000
    dir_set                 0, 0, -1024, -2048
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, 20000, -4400, -26500
    dir_set                 0, 0, -1024, 0
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, 20000, -4400, -20000
    dir_set                 0, 0, -1024, -2048
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 10000, -4400, -26500
    dir_set                 0, 0, -1024, 0
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, 10000, -4400, -20000
    dir_set                 0, 0, -1024, -2048
    work_set                WK_OBJECT, 9
    nop
    pos_set                 0, -19000, -4000, -18000
    dir_set                 0, 0, -1024, -2048
    work_set                WK_OBJECT, 3
    nop

off_2ABA:
    if                      0, off_2ADE
    member_cmp              0, 11, 3, 0, 0
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 30000, -4400, -26500
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, 30000, -4400, -20000
    endif
    nop

off_2ADE:
    work_set                WK_OBJECT, 5
    nop
    if                      0, off_2B06
    member_cmp              0, 11, 3, 0, 0
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, 30000, -4400, -26500
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, 30000, -4400, -20000
    endif
    nop

off_2B06:
    work_set                WK_OBJECT, 7
    nop
    if                      0, off_2B2E
    member_cmp              0, 11, 3, 0, 0
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 30000, -4400, -26500
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, 30000, -4400, -20000
    endif
    nop

off_2B2E:
    work_set                WK_OBJECT, 9
    nop
    if                      0, off_2B4A
    member_cmp              0, 11, 3, 208, 138
    work_set                WK_OBJECT, 9
    nop
    pos_set                 0, -19000, -4000, -18000
    endif
    nop

off_2B4A:
    work_set                WK_OBJECT, 3
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 1000
    member_set2             11, 16
    nop
    work_set                WK_OBJECT, 4
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 1000
    member_set2             11, 16
    nop
    work_set                WK_OBJECT, 5
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 1000
    member_set2             11, 16
    nop
    work_set                WK_OBJECT, 6
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 1000
    member_set2             11, 16
    nop
    work_set                WK_OBJECT, 7
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 1000
    member_set2             11, 16
    nop
    work_set                WK_OBJECT, 8
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 1000
    member_set2             11, 16
    nop
    work_set                WK_OBJECT, 9
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 1000
    member_set2             11, 16
    nop
    evt_next
    nop
    goto                    255, 255, 0, off_2ABA
    evt_end                 0

.proc main_10
    sce_espr3d_on           0, 2582, 0, 1796, -190, -3100, -25710, -1024, 0, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 1796, -190, -3100, -25810, -1024, 0, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 1796, -190, -3100, -25910, -1024, 0, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 1796, -190, -2440, -25560, 0, 1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 1796, -190, -2440, -25660, 0, 1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 1796, -190, -2440, -25760, 0, 1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 1796, -190, -2440, -25860, 0, 1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 696, -2250, -5340, -25800, 0, 1724, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 696, -2250, -5340, -25750, 0, 1724, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 696, -2250, -5340, -25700, 0, 1724, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 696, -2250, -5390, -25800, 0, 1724, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 696, -2250, -5390, -25750, 0, 1724, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 696, -2250, -5390, -25700, 0, 1724, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 696, -2250, -5450, -25800, 0, 1724, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 696, -2250, -5450, -25750, 0, 1724, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 696, -2250, -5450, -25700, 0, 1724, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 1796, -1340, -3460, -21380, -1024, 0, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 1796, -1340, -3460, -21600, -1024, 0, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 4296, -340, -3490, -21500, -1024, 600, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 4296, 660, -3160, -25680, -1024, 600, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 1796, 210, -2200, -20300, 0, 1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 1796, 210, -2200, -20400, 0, 1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 1796, 210, -2200, -20500, 0, 1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 2582, 0, 1796, 210, -2200, -20600, 0, 1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 534, 0, 5336, -40, -3920, -22770, 0, 1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 534, 0, 5336, -40, -3920, -25463, 0, 1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 3869, -1810, -4220, -21070, 0, -1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 3629, -2130, -4830, -21330, 0, -1024, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 4096, -1950, -3730, -25870, -50, -200, 0, 0
    evt_next
    nop
    sce_espr3d_on           0, 4630, 0, 4096, -1810, -4260, -25950, -50, -200, 0, 0
    evt_next
    nop
    evt_end                 0

.proc main_11
    se_on                   2, 267, 0, -22745, 0, -23990
    work_set                WK_OBJECT, 0
    nop
    work_copy               4, 4, 1
    for                     0, off_2ED0, 0
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 115
    member_set2             13, 16
    nop
    evt_next
    nop
    next                    0

off_2ED0:
    sca_id_set              18, 0, 0
    member_set              13, 26, 154
    for                     0, off_2EE4, 20
    sleep                   10, 1
    next                    0

off_2EE4:
    set                     5, 2, 1
    evt_end                 0

.proc main_12
    se_on                   2, 267, 0, -22745, 0, -23990
    sca_id_set              18, 128, 252
    work_set                WK_OBJECT, 0
    nop
    member_set              13, 26, 154
    save                    4, 0
    for                     0, off_2F2C, 15
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    member_copy             16, 13
    nop
    calc                    0, OP_ADD, 16, 115
    member_set2             13, 16
    nop
    evt_next
    nop
    next                    0

off_2F2C:
    member_set              13, 84, 161
    evt_end                 0

.proc main_13
    se_on                   2, 267, 0, -4582, 0, -23990
    work_set                WK_OBJECT, 1
    nop
    work_copy               5, 4, 1
    for                     0, off_2F68, 0
    if                      0, off_2F64
    ck                      5, 7, 0
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 115
    member_set2             13, 16
    nop
    endif
    nop

off_2F64:
    evt_next
    nop
    next                    0

off_2F68:
    sca_id_set              19, 0, 0
    if                      0, off_2F7A
    ck                      5, 7, 0
    member_set              13, 26, 154
    endif
    nop

off_2F7A:
    for                     0, off_2F86, 20
    sleep                   10, 1
    next                    0

off_2F86:
    set                     5, 3, 1
    evt_end                 0

.proc main_14
    if                      0, off_2FA2
    ck                      5, 7, 0
    se_on                   2, 267, 0, -4582, 0, -23990
    endif
    nop

off_2FA2:
    sca_id_set              19, 128, 252
    work_set                WK_OBJECT, 1
    nop
    if                      0, off_2FB8
    ck                      5, 7, 0
    member_set              13, 26, 154
    endif
    nop

off_2FB8:
    save                    5, 0
    for                     0, off_2FEC, 15
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    5, 16
    nop
    if                      0, off_2FE8
    ck                      5, 7, 0
    member_copy             16, 13
    nop
    calc                    0, OP_ADD, 16, 115
    member_set2             13, 16
    nop
    endif
    nop

off_2FE8:
    evt_next
    nop
    next                    0

off_2FEC:
    if                      0, off_2FFA
    ck                      5, 7, 0
    member_set              13, 236, 160
    endif
    nop

off_2FFA:
    evt_end                 0

.proc main_15
    do                      0, off_3008
    evt_next
    nop
    edwhile                 off_3008
    ck                      5, 32, 0

off_3008:
    evt_end                 0

.proc main_16
    do                      0, off_3016
    evt_next
    nop
    edwhile                 off_3016
    ck                      5, 33, 0

off_3016:
    evt_end                 0
