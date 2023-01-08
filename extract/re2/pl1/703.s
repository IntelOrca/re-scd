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
    if                      0, off_1E94
    ck                      4, 136, 1
    if                      0, off_1E92
    ck                      4, 186, 0
    set                     4, 186, 1
    sce_bgmtbl_set          0, 1, 7, 11299, 32832
    sce_bgmtbl_set          0, 0, 7, 11299, 32832
    sce_bgmtbl_set          0, 2, 7, 11299, 32832
    sce_bgmtbl_set          0, 4, 7, 11299, 32832
    endif
    nop

off_1E92:
    endif
    nop

off_1E94:
    aot_set                 8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15539, -21679, 1070, 1130, 255, 0, I_GOSUB, main_06, 0, 0
    if                      0, off_1EBC
    ck                      4, 140, 1
    aot_reset               8, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1EBC:
    sce_em_set              0, 0, ENEMY_LEONKENNEDYBANDAGED, 0, 64, 0, 0, 0, 255, -17530, 0, -24381, -2048, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    if                      0, off_1F24
    ck                      4, 137, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 1427, -1800, 24405
    sce_em_set              0, 1, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 64, 0, 0, 0, 255, -14990, 0, -21027, 768, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    else                    0, off_1F4E

off_1F24:
    sce_em_set              0, 1, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 64, 0, 0, 0, 255, -14990, 0, -21027, -2440, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    nop
    nop

off_1F4E:
    gosub                   9
    evt_end                 0

.proc main_01
    gosub                   10
    evt_end                 0

.proc main_02
    work_set                WK_PLAYER, 0
    nop
    member_set              17, 0, 0
    pos_set                 0, -16993, 0, -22433
    dir_set                 0, 0, -2048, 0
    plc_motion              2, 2, 68
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -9023, 0, -23473
    dir_set                 0, 0, -2048, 0
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -17314, 0, -21717
    dir_set                 0, 0, -2440, 0
    plc_motion              2, 5, 4
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    aot_reset               8, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    cut_chg                 3
    sce_bgmtbl_set          0, 3, 7, 65315, 0
    sce_bgmtbl_set          0, 4, 7, 12323, 49152
    evt_exec                2, I_GOSUB, main_03
    evt_end                 0

.proc main_03
    set                     2, 7, 1
    set                     1, 27, 1
    cut_chg                 3
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    work_set                WK_PLAYER, 0
    plc_motion              0, 17, 80
    nop
    plc_neck                5, 3, 1, 0, 96, 96
    sleep                   10, 30
    se_on                   2, 267, 0, -4582, 0, -23990
    sleep                   10, 10
    plc_neck                2, 0, 0, 0, 96, 96
    sleep                   10, 20
    plc_dest                0, 9, 33, -11262, -23778
    plc_rot                 0, 200
    gosub                   23
    cut_chg                 2
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 96, 96
    dir_set                 0, 0, 533, 0
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 32, -16965, -23776
    sleep                   10, 10
    cut_chg                 1
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 33, -21249, -23393
    gosub                   23
    xa_on                   0, 7
    message_on              0, 12, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 17, 0
    nop
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    plc_motion              2, 2, 4
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 0
    nop
    evt_end                 0

.proc main_05
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
    message_on              0, 10, 0, 0, 0
    evt_next
    nop
    plc_neck                2, 0, 0, 0, 32, 32
    plc_motion              0, 17, 0
    sleep                   10, 45
    plc_motion              0, 19, 0
    wsleep
    wsleeping
    xa_on                   0, 10
    message_on              0, 11, 0, 0, 0
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

.proc main_06
    evt_next
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_PLAYER, 0
    member_copy             7, 11
    nop
    member_copy             8, 13
    nop
    work_set                WK_ENEMY, 1
    nop
    work_copy               8, 10, 1
    work_copy               7, 4, 1
    plc_dest                0, 9, 34, 0, 0
    gosub                   8
    cut_chg                 0
    evt_next
    nop
    xa_on                   0, 6
    message_on              0, 7, 0, 0, 0
    work_set                WK_ENEMY, 1
    nop
    plc_neck                5, 1, 0, 0, 60, 60
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 1, 0, 60, 60
    plc_motion              0, 17, 0
    sleep                   10, 60
    plc_motion              0, 18, 0
    plc_cnt                 2
    sleep                   10, 60
    work_set                WK_ENEMY, 1
    nop
    plc_neck                2, 0, 0, 128, 64, 64
    sleep                   10, 5
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 20
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_07
    evt_next
    set                     2, 7, 1
    set                     1, 27, 1
    cut_chg                 1
    work_set                WK_ENEMY, 1
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    dir_set                 0, 0, 768, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -13917, 0, -21153
    dir_set                 0, 0, 1448, 0
    plc_neck                2, 0, 256, 0, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, -256, 0, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 10
    plc_neck                5, 3, 1, 0, 60, 60
    sleep                   10, 10
    cut_chg                 0
    evt_next
    nop
    xa_on                   0, 6
    message_on              0, 7, 0, 0, 0
    work_set                WK_ENEMY, 1
    nop
    plc_neck                5, 1, 0, 0, 60, 60
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 1, 0, 60, 60
    plc_motion              0, 17, 0
    sleep                   10, 60
    plc_motion              0, 18, 0
    plc_cnt                 2
    sleep                   10, 60
    work_set                WK_ENEMY, 1
    nop
    plc_neck                2, 0, -1024, 128, 64, 64
    sleep                   10, 5
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 20
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_08
    do                      0, off_23E0
    evt_next
    nop
    edwhile                 off_23E0
    ck                      5, 34, 0

off_23E0:
    evt_end                 0

.proc main_09
    save                    9, 0
    door_aot_se             9, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 1, 1, -1686, -1800, -23280, 0, 6, 3, 11, 1, 42, 1, 0, 0, UNLOCKED, 0
    aot_set                 4, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -24349, -24549, 3660, 2370, 0, 0, 0, 0, 0, 0
    aot_set                 5, SCE_NORMAL, SAT_PL | SAT_UNDER, 1, 0, -6319, -24549, 3530, 2370, 0, 0, 0, 0, 0, 0
    save                    4, 15
    save                    5, 15
    if                      0, off_2448
    ck                      4, 141, 0
    set                     4, 141, 1
    evt_exec                2, I_GOSUB, main_07
    endif
    nop

off_2448:
    if                      0, off_2466
    ck                      4, 184, 0
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -1189, -24199, 2600, 1630, 6, 0, I_GOSUB, main_0D, 0, 0
    endif
    nop

off_2466:
    if                      0, off_2474
    ck                      4, 140, 0
    cut_replace             6, 13
    nop
    endif
    nop

off_2474:
    aot_set                 1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28429, -24249, 1800, 2100, 4, 0, 24, 5, 0, 0
    if                      0, off_24D2
    ck                      4, 169, 1
    set                     5, 6, 1
    cut_replace             4, 8
    cut_chg                 8
    nop
    evt_exec                7, I_GOSUB, main_10
    evt_exec                3, I_GOSUB, main_0F
    if                      0, off_24D0
    ck                      4, 191, 1
    sce_bgm_control         0, 0, 2, 1, 65
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -24779, -25349, 2600, 3900, 2, 0, I_GOSUB, main_0B, 0, 0
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, I_GOSUB, main_0B, 0, 0
    endif
    nop

off_24D0:
    endif
    nop

off_24D2:
    evt_end                 0

.proc main_0A
    if                      0, off_256A
    ck                      5, 6, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2500
    member_cmp              0, 9, 0, 4, 0
    if                      0, off_24FC
    ck                      5, 0, 0
    set                     5, 0, 1
    evt_exec                9, I_GOSUB, main_12
    endif
    nop

off_24FC:
    else                    0, off_2522

off_2500:
    if                      0, off_2520
    ck                      5, 0, 1
    if                      0, off_251E
    ck                      5, 2, 1
    set                     5, 0, 0
    set                     5, 2, 0
    evt_exec                9, I_GOSUB, main_13
    endif
    nop

off_251E:
    endif
    nop

off_2520:
    nop
    nop

off_2522:
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2546
    member_cmp              0, 9, 0, 5, 0
    if                      0, off_2542
    ck                      5, 1, 0
    set                     5, 1, 1
    evt_exec                8, I_GOSUB, main_14
    endif
    nop

off_2542:
    else                    0, off_2568

off_2546:
    if                      0, off_2566
    ck                      5, 1, 1
    if                      0, off_2564
    ck                      5, 3, 1
    set                     5, 1, 0
    set                     5, 3, 0
    evt_exec                8, I_GOSUB, main_15
    endif
    nop

off_2564:
    endif
    nop

off_2566:
    nop
    nop

off_2568:
    endif
    nop

off_256A:
    evt_end                 0

.proc main_0B
    set                     2, 7, 1
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_exec                6, I_GOSUB, main_0C
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

off_25F8:
    evt_next
    nop
    goto                    255, 255, 0, off_25F8
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    evt_end                 0

.proc main_0C
    for                     0, off_2622, 4
    se_on                   2, 15, 0, -24899, 0, -23153
    sleep                   10, 29
    next                    0

off_2622:
    evt_end                 0

.proc main_0D
    set                     2, 7, 1
    if                      0, off_2644
    ck                      4, 136, 0
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    else                    0, off_285A

off_2644:
    if                      0, off_2658
    ck                      4, 140, 0
    message_on              0, 15, 0, 255, 255
    evt_next
    nop
    else                    0, off_2858

off_2658:
    if                      0, off_2856
    ck                      4, 137, 0
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    if                      0, off_2854
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
    if                      0, off_26A8
    ck                      1, 0, 0
    pos_set                 0, -1526, -1800, -23189
    else                    0, off_26B2

off_26A8:
    pos_set                 0, -1426, -1800, -23189
    nop
    nop

off_26B2:
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
    for                     0, off_2710, 20
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

off_2710:
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
    gosub                   17
    cut_chg                 7
    sce_bgm_control         1, 5, 0, 0, 0
    sleep                   10, 30
    set                     1, 4, 0
    set                     4, 184, 1
    cut_replace             4, 8
    cut_replace             6, 11
    if                      0, off_27AC
    ck                      1, 0, 0
    cut_chg                 11
    else                    0, off_27B8

off_27AC:
    cut_chg                 3
    work_set                WK_PLAYER, 0
    plc_motion              2, 2, 68
    nop
    nop
    nop

off_27B8:
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
    evt_exec                7, I_GOSUB, main_10
    evt_exec                3, I_GOSUB, main_0F
    gosub                   2
    sce_bgm_control         1, 2, 0, 0, 0
    sce_bgm_control         2, 2, 0, 0, 0
    sce_bgm_control         0, 1, 0, 0, 0
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    aot_reset               7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, I_GOSUB, main_05, 0, 0
    if                      0, off_2852
    ck                      1, 0, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -2241, -1800, -23444
    dir_set                 0, 0, 0, 0
    plc_motion              1, 6, 208
    sleep                   10, 48
    endif
    nop

off_2852:
    endif
    nop

off_2854:
    endif
    nop

off_2856:
    nop
    nop

off_2858:
    nop
    nop

off_285A:
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     2, 7, 0
    evt_end                 0

.proc main_0E
    cut_replace             4, 8
    cut_replace             6, 11
    if                      0, off_287A
    ck                      1, 0, 0
    cut_chg                 11
    else                    0, off_2886

off_287A:
    cut_chg                 3
    work_set                WK_PLAYER, 0
    plc_motion              2, 2, 68
    nop
    nop
    nop

off_2886:
    set                     4, 137, 1
    evt_exec                7, I_GOSUB, main_10
    evt_exec                3, I_GOSUB, main_0F
    gosub                   2
    sce_bgm_control         1, 2, 0, 0, 0
    sce_bgm_control         2, 2, 0, 0, 0
    sce_bgm_control         0, 1, 0, 0, 0
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, I_GOSUB, main_05, 0, 0
    evt_end                 0

.proc main_0F

off_28BC:
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
    if                      0, off_298A
    cmp                     0, 9, CMP_GE, 2
    save                    9, 0
    evt_next
    nop
    endif
    nop

off_298A:
    copy                    16, 9
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    9, 16
    nop
    goto                    255, 255, 0, off_28BC + 4
    evt_end                 0

.proc main_10
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

off_2A30:
    if                      0, off_2A54
    member_cmp              0, 11, 3, 0, 0
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, 30000, -4400, -26500
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, 30000, -4400, -20000
    endif
    nop

off_2A54:
    work_set                WK_OBJECT, 5
    nop
    if                      0, off_2A7C
    member_cmp              0, 11, 3, 0, 0
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, 30000, -4400, -26500
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, 30000, -4400, -20000
    endif
    nop

off_2A7C:
    work_set                WK_OBJECT, 7
    nop
    if                      0, off_2AA4
    member_cmp              0, 11, 3, 0, 0
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 30000, -4400, -26500
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, 30000, -4400, -20000
    endif
    nop

off_2AA4:
    work_set                WK_OBJECT, 9
    nop
    if                      0, off_2AC0
    member_cmp              0, 11, 3, 208, 138
    work_set                WK_OBJECT, 9
    nop
    pos_set                 0, -19000, -4000, -18000
    endif
    nop

off_2AC0:
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
    goto                    255, 255, 0, off_2A30
    evt_end                 0

.proc main_11
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

.proc main_12
    se_on                   2, 267, 0, -22745, 0, -23990
    work_set                WK_OBJECT, 0
    nop
    work_copy               4, 4, 1
    for                     0, off_2E46, 0
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 115
    member_set2             13, 16
    nop
    evt_next
    nop
    next                    0

off_2E46:
    sca_id_set              18, 0, 0
    member_set              13, 26, 154
    for                     0, off_2E5A, 20
    sleep                   10, 1
    next                    0

off_2E5A:
    set                     5, 2, 1
    evt_end                 0

.proc main_13
    se_on                   2, 267, 0, -22745, 0, -23990
    sca_id_set              18, 128, 252
    work_set                WK_OBJECT, 0
    nop
    member_set              13, 26, 154
    save                    4, 0
    for                     0, off_2EA2, 15
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

off_2EA2:
    member_set              13, 84, 161
    evt_end                 0

.proc main_14
    se_on                   2, 267, 0, -4582, 0, -23990
    work_set                WK_OBJECT, 1
    nop
    work_copy               5, 4, 1
    for                     0, off_2EDE, 0
    if                      0, off_2EDA
    ck                      5, 7, 0
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 115
    member_set2             13, 16
    nop
    endif
    nop

off_2EDA:
    evt_next
    nop
    next                    0

off_2EDE:
    sca_id_set              19, 0, 0
    if                      0, off_2EF0
    ck                      5, 7, 0
    member_set              13, 26, 154
    endif
    nop

off_2EF0:
    for                     0, off_2EFC, 20
    sleep                   10, 1
    next                    0

off_2EFC:
    set                     5, 3, 1
    evt_end                 0

.proc main_15
    if                      0, off_2F18
    ck                      5, 7, 0
    se_on                   2, 267, 0, -4582, 0, -23990
    endif
    nop

off_2F18:
    sca_id_set              19, 128, 252
    work_set                WK_OBJECT, 1
    nop
    if                      0, off_2F2E
    ck                      5, 7, 0
    member_set              13, 26, 154
    endif
    nop

off_2F2E:
    save                    5, 0
    for                     0, off_2F62, 15
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    5, 16
    nop
    if                      0, off_2F5E
    ck                      5, 7, 0
    member_copy             16, 13
    nop
    calc                    0, OP_ADD, 16, 115
    member_set2             13, 16
    nop
    endif
    nop

off_2F5E:
    evt_next
    nop
    next                    0

off_2F62:
    if                      0, off_2F70
    ck                      5, 7, 0
    member_set              13, 236, 160
    endif
    nop

off_2F70:
    evt_end                 0

.proc main_16
    do                      0, off_2F7E
    evt_next
    nop
    edwhile                 off_2F7E
    ck                      5, 32, 0

off_2F7E:
    evt_end                 0

.proc main_17
    do                      0, off_2F8C
    evt_next
    nop
    edwhile                 off_2F8C
    ck                      5, 33, 0

off_2F8C:
    evt_end                 0
    db                      0x20, 0x00
