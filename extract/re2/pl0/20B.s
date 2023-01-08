.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28381, -20818, 2000, 4100, -13128, 0, -9826, -1919, 1, 10, 0, 0, 4, 2, 0, 0, UNLOCKED, 0
    if                      0, off_2F5E
    ck                      1, 6, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2881, -11718, 2000, 1250, -24807, 0, -26298, -959, 1, 15, 0, 0, 5, 1, 0, 132, ITEM_HEARTKEY, 0
    else                    0, off_2F80

off_2F5E:
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2881, -11718, 2000, 1250, -24807, 0, -26298, -959, 1, 15, 0, 0, 5, 1, 0, 0, UNLOCKED, 0
    nop
    nop

off_2F80:
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -279, -26561, 1100, 2600, -20772, 0, -25169, 104, 0, 22, 0, 0, 19, 0, 0, 0, UNLOCKED, 0
    if                      0, off_3050
    ck                      1, 6, 1
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 18, 0, 0, 0, 0, 255
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 6, 0, 0, 3, 3, 75, -1639, 0, -22188, 3061, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 76, -19583, 0, -18364, 49, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 77, -14695, 0, -13861, 1064, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 0, 0, 3, 3, 78, -24539, 0, -24982, 3569, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 6, 0, 0, 3, 3, 79, -23557, 0, -16107, 1237, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 80, -6049, 0, -22551, 2955, 0, 0
    sce_em_set              0, 6, ENEMY_ZOMBIERANDOM, 6, 0, 0, 3, 3, 154, -13668, 0, -25618, 4095, 0, 0
    else                    0, off_3088

off_3050:
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 2, 64, 0, 3, 3, 255, -2193, 0, -24459, 3585, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    nop
    nop

off_3088:
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, -10908, -5250, -21736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 0, -21654, -5250, -14742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x76, 0x0C

.main
.proc main_00
    if                      0, off_3104
    ck                      1, 6, 1
    evt_exec                255, I_GOSUB, main_09
    evt_end                 0
    endif
    nop

off_3104:
    gosub                   11
    gosub                   8
    aot_set                 9, SCE_NORMAL, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12467, -12961, 1470, 1700, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, 20000, 20000, 20000, 0, -2176, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1470, 1700, ITEM_SHOTGUNAMMO, 7, 78, 5, 0
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 10, 16, 20000, 20000, 20000, 0, -1856, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1470, 1700, 255, 0, I_GOSUB, main_0A, 0, 0
    if                      0, off_31A8
    ck                      4, 37, 0
    aot_reset               9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    else                    0, off_31DA

off_31A8:
    aot_reset               9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    if                      0, off_31CC
    ck                      8, 78, 1
    ck                      8, 83, 1
    aot_reset               9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    else                    0, off_31D8

off_31CC:
    aot_reset               9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    nop
    nop

off_31D8:
    nop
    nop

off_31DA:
    if                      0, off_3220
    ck                      1, 1, 1
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 10, 16, -4873, -1450, -26405, -832, -4096, -768, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5869, -27301, 2100, 2170, ITEM_VALVEHANDLE, 1, 82, 7, 0
    endif
    nop

off_3220:
    evt_exec                255, I_GOSUB, main_09
    evt_exec                255, I_GOSUB, main_07
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    set                     2, 2, 1
    set                     2, 7, 1
    cut_chg                 13
    work_set                WK_PLAYER, 0
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
    set                     5, 5, 0
    set                     5, 6, 0
    set                     5, 7, 0
    set                     5, 8, 0
    message_on              0, 13, 0, 0, 127
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_03
    if                      0, off_3294
    ck                      11, 29, 0
    if                      0, off_3292
    ck                      11, 30, 0
    if                      0, off_3290
    ck                      11, 31, 1
    set                     5, 5, 1
    endif
    nop

off_3290:
    endif
    nop

off_3292:
    endif
    nop

off_3294:
    message_on              0, 14, 0, 0, 127
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_03
    if                      0, off_32C2
    ck                      11, 29, 0
    if                      0, off_32C0
    ck                      11, 30, 0
    if                      0, off_32BE
    ck                      11, 31, 1
    set                     5, 6, 1
    endif
    nop

off_32BE:
    endif
    nop

off_32C0:
    endif
    nop

off_32C2:
    message_on              0, 15, 0, 0, 127
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_03
    if                      0, off_32F0
    ck                      11, 29, 0
    if                      0, off_32EE
    ck                      11, 30, 1
    if                      0, off_32EC
    ck                      11, 31, 0
    set                     5, 7, 1
    endif
    nop

off_32EC:
    endif
    nop

off_32EE:
    endif
    nop

off_32F0:
    message_on              0, 16, 0, 0, 127
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_03
    if                      0, off_331E
    ck                      11, 29, 1
    if                      0, off_331C
    ck                      11, 30, 0
    if                      0, off_331A
    ck                      11, 31, 1
    set                     5, 8, 1
    endif
    nop

off_331A:
    endif
    nop

off_331C:
    endif
    nop

off_331E:
    if                      0, off_334A
    ck                      5, 5, 1
    if                      0, off_3348
    ck                      5, 6, 1
    if                      0, off_3346
    ck                      5, 7, 1
    if                      0, off_3344
    ck                      5, 8, 1
    set                     5, 9, 1
    endif
    nop

off_3344:
    endif
    nop

off_3346:
    endif
    nop

off_3348:
    endif
    nop

off_334A:
    if                      0, off_3372
    ck                      5, 9, 1
    set                     4, 37, 1
    se_on                   2, 267, 1, 0, 0, 0
    aot_reset               9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    aot_on                  9
    else                    0, off_33A0

off_3372:
    cut_chg                 10
    work_set                WK_PLAYER, 0
    nop
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
    set                     2, 7, 0
    set                     2, 2, 0
    cut_auto                1
    nop
    nop

off_33A0:
    evt_end                 0

.proc main_03
    se_on                   2, 266, 1, 0, 0, 0
    sleep                   10, 2
    evt_end                 0

.proc main_04
    aot_reset               9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     2, 2, 1
    set                     2, 7, 1
    sce_fade_set            2, 2, 7, 0, 16
    sleep                   10, 7
    sce_fade_set            2, 2, 7, 0, 240
    sleep                   10, 1
    cut_chg                 14
    se_on                   2, 267, 1, 0, 0, 0
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -11527, -100, -11476
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 16
    member_set2             0, 16
    nop
    if                      0, off_3426
    ck                      8, 83, 0
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, -11527, -50, -11526
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 16
    member_set2             0, 16
    nop
    endif
    nop

off_3426:
    work_set                WK_PLAYER, 0
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
    sleep                   10, 30
    if                      0, off_3464
    ck                      8, 78, 0
    aot_on                  10
    evt_next
    set                     2, 7, 1
    set                     2, 2, 1
    nop
    sleep                   10, 29
    endif
    nop

off_3464:
    if                      0, off_347E
    ck                      8, 83, 0
    aot_on                  11
    evt_next
    set                     2, 7, 1
    set                     2, 2, 1
    nop
    sleep                   10, 29
    endif
    nop

off_347E:
    sce_fade_set            2, 2, 7, 0, 16
    sleep                   10, 7
    sce_fade_set            2, 2, 7, 0, 240
    sleep                   10, 1
    cut_chg                 10
    se_on                   2, 268, 1, 0, 0, 0
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, 20000, 20000, 20000
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, 20000, 20000, 20000
    work_set                WK_PLAYER, 0
    nop
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
    if                      0, off_34F2
    ck                      8, 78, 1
    ck                      8, 83, 1
    aot_reset               9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    else                    0, off_34FE

off_34F2:
    aot_reset               9, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    nop
    nop

off_34FE:
    set                     2, 7, 0
    set                     2, 2, 0
    cut_auto                1
    evt_end                 0

.proc main_05
    do                      0, off_3536
    evt_next
    nop
    if                      0, off_3520
    cmp                     0, 26, CMP_EQ, 5
    set                     5, 32, 1
    endif
    nop

off_3520:
    if                      0, off_3530
    cmp                     0, 26, CMP_EQ, 6
    set                     5, 32, 1
    endif
    nop

off_3530:
    edwhile                 off_3536
    ck                      5, 32, 0

off_3536:
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -5
    member_set2             0, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    set                     4, 28, 1
    evt_end                 0

.proc main_06
    do                      0, off_3588
    evt_next
    nop
    if                      0, off_3572
    cmp                     0, 26, CMP_EQ, 5
    set                     5, 33, 1
    endif
    nop

off_3572:
    if                      0, off_3582
    cmp                     0, 26, CMP_EQ, 6
    set                     5, 33, 1
    endif
    nop

off_3582:
    edwhile                 off_3588
    ck                      5, 33, 0

off_3588:
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -5
    member_set2             0, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    set                     4, 29, 1
    evt_end                 0

.proc main_07
    sce_bgm_control         0, 1, 1, 1, 64
    evt_next
    nop

off_35B6:
    switch                  26, off_369C
    case                    0, off_35C8, 0
    sce_bgm_control         0, 0, 1, 50, 64
    break                   0

off_35C8:
    case                    0, off_35D6, 1
    sce_bgm_control         0, 0, 1, 70, 90
    break                   0

off_35D6:
    case                    0, off_35E4, 2
    sce_bgm_control         0, 0, 1, 60, 100
    break                   0

off_35E4:
    case                    0, off_35F2, 3
    sce_bgm_control         0, 0, 1, 70, 55
    break                   0

off_35F2:
    case                    0, off_3600, 4
    sce_bgm_control         0, 0, 1, 90, 55
    break                   0

off_3600:
    case                    0, off_360E, 5
    sce_bgm_control         0, 0, 1, 70, 64
    break                   0

off_360E:
    case                    0, off_361C, 6
    sce_bgm_control         0, 0, 1, 70, 80
    break                   0

off_361C:
    case                    0, off_362A, 7
    sce_bgm_control         0, 0, 1, 110, 80
    break                   0

off_362A:
    case                    0, off_3638, 8
    sce_bgm_control         0, 0, 1, 80, 40
    break                   0

off_3638:
    case                    0, off_3646, 9
    sce_bgm_control         0, 0, 1, 80, 64
    break                   0

off_3646:
    case                    0, off_3654, 10
    sce_bgm_control         0, 0, 1, 70, 40
    break                   0

off_3654:
    case                    0, off_3662, 11
    sce_bgm_control         0, 0, 1, 60, 100
    break                   0

off_3662:
    case                    0, off_3670, 12
    sce_bgm_control         0, 0, 1, 80, 40
    break                   0

off_3670:
    case                    0, off_367E, 13
    sce_bgm_control         0, 0, 1, 70, 40
    break                   0

off_367E:
    case                    0, off_368C, 14
    sce_bgm_control         0, 0, 1, 70, 40
    break                   0

off_368C:
    case                    0, off_369A, 15
    sce_bgm_control         0, 0, 1, 70, 40
    break                   0

off_369A:
    eswitch                 0

off_369C:
    do                      0, off_36A8
    evt_next
    nop
    edwhile                 off_36A8
    ck                      1, 11, 0

off_36A8:
    goto                    255, 255, 0, off_35B6 + 3
    evt_end                 0

.proc main_08
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2703, -24979, 1200, 1200, ITEM_HANDGUNAMMO, 15, 74, 255, 1
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 10, 16, -15962, -1800, -17208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17685, -16193, 1700, 1800, ITEM_INKRIBBON, 3, 84, 9, 0
    if                      0, off_3748
    ck                      1, 1, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -6777, -1500, -13443, 0, -384, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            31, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7585, -14893, 1300, 1700, ITEM_HANDGUNAMMO, 15, 48, 2, 0
    endif
    nop

off_3748:
    item_aot_set            29, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5465, -13751, 1800, 1600, ITEM_HERBG, 1, 81, 255, 1
    if                      0, off_377E
    ck                      0, 25, 1
    item_aot_set            28, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5465, -13751, 1800, 1600, ITEM_HERBG, 1, 217, 255, 1
    endif
    nop

off_377E:
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, 0
    nop

off_3784:
    if                      0, off_379A
    cmp                     0, 26, CMP_EQ, 1
    pos_set                 0, 20000, 20000, 20000
    else                    0, off_37A4

off_379A:
    pos_set                 0, -10908, -5250, -21736
    nop
    nop

off_37A4:
    speed_set               4, 55
    add_speed
    work_set                WK_OBJECT, 1
    speed_set               4, 51
    add_speed
    evt_next
    goto                    255, 255, 0, off_3784
    evt_end                 0

.proc main_0A
    message_on              0, 0, 0, 0, 255
    evt_next
    nop
    if                      0, off_380A
    ck                      11, 31, 0
    se_on                   4, 262, 2052, 0, 0, 0
    set                     8, 83, 1
    set                     33, 2, 1
    set                     33, 3, 1
    set                     33, 4, 1
    set                     35, 2, 1
    set                     35, 3, 1
    set                     35, 4, 1
    work_set                WK_OBJECT, 8
    nop
    pos_set                 0, 20000, 20000, 20000
    evt_next
    nop
    message_on              0, 17, 0, 0, 255
    else                    0, off_3818

off_380A:
    se_on                   4, 261, 2052, 0, 0, 0
    nop
    nop

off_3818:
    evt_end                 0

.proc main_0B
    if                      0, off_3828
    ck                      1, 1, 0
    gosub                   12
    else                    0, off_3856

off_3828:
    if                      0, off_3836
    ck                      4, 153, 0
    gosub                   12
    else                    0, off_3854

off_3836:
    if                      0, off_3844
    ck                      29, 10, 1
    gosub                   13
    else                    0, off_3852

off_3844:
    if                      0, off_3850
    ck                      29, 9, 0
    gosub                   13
    endif
    nop

off_3850:
    nop
    nop

off_3852:
    nop
    nop

off_3854:
    nop
    nop

off_3856:
    evt_end                 0

.proc main_0C
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 74, -8656, 0, -12993, 1681, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 3, 3, 75, -14816, 0, -17549, 1539, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 1, 0, 0, 3, 3, 84, -16163, 0, -25308, 2073, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 6, 0, 0, 3, 3, 149, -22326, 0, -14870, 905, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 6, 0, 0, 3, 3, 202, -24575, 0, -21871, 3999, 0, 0
    evt_end                 0

.proc main_0D
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 179, -2447, 0, -17837, 177, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 180, -14381, 0, -16738, 1696, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 6, 0, 0, 3, 3, 181, -12952, 0, -26195, 3097, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 6, 0, 0, 3, 3, 182, -21981, 0, -15546, 849, 0, 0
    evt_end                 0
    db                      0x60, 0x08
