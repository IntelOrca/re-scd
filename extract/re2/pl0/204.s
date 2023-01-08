.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 4967, -17787, 1930, 2270, -26492, 0, -25629, 0, 1, 1, 4, 0, 9, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18326, 3085, 2800, 1630, -25670, 0, -25775, 3072, 1, 5, 0, 0, 9, 1, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14126, -9615, 1600, 2130, -26443, 0, -21844, 0, 1, 3, 0, 0, 8, 1, 0, 133, ITEM_SPADEKEY, 0
    if                      0, off_1994
    ck                      1, 6, 1
    sce_em_set              0, 0, ENEMY_LICKERRED, 2, 5, 0, 51, 0, 130, -15578, -5408, -9613, 959, 0, 0
    sce_em_set              0, 1, ENEMY_LICKERRED, 2, 5, 0, 51, 0, 131, -16159, -5408, -3082, 5151, 0, 0
    sce_em_set              0, 2, ENEMY_LICKERRED, 2, 5, 0, 51, 0, 155, -1135, -5440, -15607, -2152, 0, 0
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, 0, 0, 255, 255
    endif
    nop

off_1994:
    evt_end                 0
    db                      0x85, 0x90

.main
.proc main_00
    if                      0, off_19D8
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_19D8:
    if                      0, off_19EA
    ck                      1, 1, 1
    set                     4, 86, 1
    set                     4, 85, 1
    endif
    nop

off_19EA:
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 2492, -15019, 3760, 1830, 0, 0, 0, 0, 255, 255
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2714, -13798, 2190, 1400, 1, 0, 0, 0, 255, 255
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7414, -15498, 5890, 3000, 3, 0, 0, 0, 255, 255
    aot_set                 12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15245, 634, 2100, 4500, 4, 0, 0, 0, 255, 255
    if                      0, off_1A4C
    ck                      4, 85, 0
    set                     4, 85, 1
    evt_exec                255, I_GOSUB, main_06
    endif
    nop

off_1A4C:
    item_aot_set            4, SCE_ITEM, SAT_AUTO, 0, 0, 32000, 32000, 1, 1, ITEM_HANDGUNAMMO, 15, 3, 255, 1
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14754, -608, 2590, 3100, ITEM_HERBG, 1, 46, 4, 1
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16484, -13394, 1400, 2100, 255, 0, I_GOSUB, main_08, 0, 0
    aot_set                 3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -19091, -16772, 1800, 2100, 10, 0, 86, 0, 1, 0
    aot_set                 8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19091, -16772, 1800, 2100, 255, 0, I_GOSUB, main_0D, 0, 0
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 7, 192, 0, 0, 3, 255, -14992, 0, -12079, 1440, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    if                      0, off_1B14
    ck                      1, 1, 0
    if                      0, off_1AF2
    ck                      4, 153, 0
    gosub                   2
    else                    0, off_1B10

off_1AF2:
    if                      0, off_1B00
    ck                      29, 9, 0
    gosub                   4
    else                    0, off_1B0E

off_1B00:
    if                      0, off_1B0C
    ck                      4, 192, 1
    gosub                   4
    endif
    nop

off_1B0C:
    nop
    nop

off_1B0E:
    nop
    nop

off_1B10:
    else                    0, off_1B62

off_1B14:
    if                      0, off_1B60
    ck                      4, 153, 1
    if                      0, off_1B5E
    ck                      29, 10, 0
    if                      0, off_1B32
    ck                      8, 119, 0
    gosub                   4
    else                    0, off_1B5C

off_1B32:
    if                      0, off_1B58
    ck                      4, 168, 0
    set                     4, 168, 1
    set                     6, 9, 0
    set                     6, 10, 0
    set                     6, 11, 0
    set                     6, 12, 0
    set                     6, 13, 0
    set                     6, 14, 0
    endif
    nop

off_1B58:
    gosub                   5
    nop
    nop

off_1B5C:
    endif
    nop

off_1B5E:
    endif
    nop

off_1B60:
    nop
    nop

off_1B62:
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 0, -18080, -32000, -14486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, -18080, -32000, -9036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 0, -18080, -32000, -3486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -14176, 0, -31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1C1A
    ck                      29, 9, 1
    set                     15, 3, 1
    set                     16, 2, 1
    set                     21, 1, 1
    set                     22, 3, 1
    set                     22, 4, 0
    else                    0, off_1C30

off_1C1A:
    set                     15, 3, 0
    set                     16, 2, 0
    set                     21, 1, 0
    set                     22, 3, 0
    set                     22, 4, 1
    nop
    nop

off_1C30:
    if                      0, off_1C62
    ck                      1, 1, 0
    if                      0, off_1C5E
    ck                      29, 9, 1
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 20, 251
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 20, 251
    work_set                WK_OBJECT, 3
    nop
    member_set              12, 20, 251
    evt_exec                255, I_GOSUB, main_14
    endif
    nop

off_1C5E:
    else                    0, off_1C8E

off_1C62:
    if                      0, off_1C8C
    ck                      29, 9, 1
    ck                      4, 153, 0
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 20, 251
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 20, 251
    work_set                WK_OBJECT, 3
    nop
    member_set              12, 20, 251
    evt_exec                255, I_GOSUB, main_15
    endif
    nop

off_1C8C:
    nop
    nop

off_1C8E:
    if                      0, off_1C9E
    ck                      29, 9, 1
    ck                      4, 153, 1
    else                    0, off_1CB6

off_1C9E:
    sce_espr3d_on           0, 4118, 0, 2048, -17690, -2358, -16074, 0, 1024, 0, 0
    nop
    nop

off_1CB6:
    evt_end                 0

.proc main_01
    if                      0, off_1CD0
    ck                      5, 1, 1
    ck                      6, 61, 1
    set                     5, 1, 0
    sce_bgm_control         1, 2, 0, 90, 65
    endif
    nop

off_1CD0:
    if                      0, off_1CE0
    cmp                     0, 2, CMP_EQ, 86
    evt_exec                255, I_GOSUB, main_0E
    endif
    nop

off_1CE0:
    evt_end                 0

.proc main_02
    if                      0, off_1D42
    ck                      4, 86, 0
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_FRONT, 0, 0, -19471, -4816, 7200, 1800, 255, 0, I_GOSUB, main_09, 0, 0
    sce_em_set              0, 1, ENEMY_LICKERRED, 16, 69, 0, 14, 0, 61, 32000, -5700, 32000, 1024, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, -15197, -5700, -4089, 1024, -512, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_exec                9, I_GOSUB, main_0A
    else                    0, off_1D5A

off_1D42:
    sce_em_set              0, 1, ENEMY_LICKERRED, 18, 5, 0, 14, 0, 61, -16169, -5400, -6579, 1024, 0, 0
    nop
    nop

off_1D5A:
    evt_end                 0

.proc main_03
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 9, -17125, 0, -3543, 3296, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 3, 10, -14999, 0, -1809, 2779, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 11, -17237, 0, -8062, 4011, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 1, 12, -16851, 0, -15924, 3371, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 13, -14656, 0, -11426, 2283, 0, 0
    evt_end                 0

.proc main_04
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 3, 9, -17125, 0, -3543, 3296, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 2, 10, -14999, 0, -1809, 2779, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 3, 11, -17237, 0, -8062, 4011, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 12, -16851, 0, -15924, 3371, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 1, 13, -14656, 0, -11426, 2283, 0, 0
    sce_em_set              0, 6, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 2, 14, 466, 0, -14702, 651, 0, 0
    evt_end                 0

.proc main_05
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 1, 9, -17237, 0, -8062, 4011, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 10, -16851, 0, -15924, 3371, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 0, 0, 0, 3, 3, 11, -14656, 0, -11426, 2283, 0, 0
    evt_end                 0

.proc main_06
    cut_chg                 6
    cut_auto                1
    evt_next
    work_set                WK_PLAYER, 0
    pos_set                 0, 4181, 0, -17026
    member_set              15, 80, 8
    evt_end                 0

.proc main_07
    set                     2, 7, 1
    set                     1, 27, 1
    sce_bgm_control         0, 1, 0, 90, 65
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -14992, 0, -12079, 96, 96
    plc_dest                0, 9, 32, -15629, -12733
    plc_rot                 0, 128
    gosub                   22
    plc_dest                0, 4, 32, -15629, -12733
    sleep                   10, 10
    plc_motion              0, 5, 0
    sleep                   10, 60
    plc_ret
    set                     1, 27, 0
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_08
    if                      0, off_1F0C
    ck                      5, 2, 0
    set                     5, 2, 1
    message_on              0, 2, 0, 255, 255
    else                    0, off_1F24

off_1F0C:
    if                      0, off_1F1A
    ck                      8, 3, 0
    aot_on                  4
    else                    0, off_1F22

off_1F1A:
    message_on              0, 2, 0, 255, 255
    nop
    nop

off_1F22:
    nop
    nop

off_1F24:
    evt_end                 0

.proc main_09
    set                     4, 86, 1
    set                     5, 1, 1
    aot_reset               7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    set                     1, 27, 1
    cut_chg                 7
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -15412, 0, -6079
    member_set              15, 197, 11
    plc_neck                1, -15197, 0, -4089, 96, 96
    plc_dest                0, 4, 32, -15397, -5080
    gosub                   22
    plc_neck                2, 0, 0, -512, 20, 20
    sleep                   10, 10
    plc_motion              1, 1, 8
    sleep                   10, 5
    plc_stop
    nop
    evt_kill                9
    cut_chg                 4
    cut_auto                1
    evt_next
    work_set                WK_PLAYER, 0
    pos_set                 0, -15550, 0, -8371
    member_set              15, 15, 12
    plc_neck                2, 0, 0, 512, 60, 60
    movie_on                10
    evt_next
    work_set                WK_ENEMY, 1
    pos_set                 0, -14869, -5700, -3479
    member_set              23, 1, 0
    sleep                   10, 5
    sce_bgm_control         1, 1, 0, 90, 65
    if                      0, off_1FD6
    ck                      1, 0, 0
    sce_bgmtbl_set          0, 4, 2, 65287, 0
    sce_bgmtbl_set          0, 1, 2, 65287, 0
    else                    0, off_1FE8

off_1FD6:
    sce_bgmtbl_set          0, 4, 2, 65287, 0
    sce_bgmtbl_set          0, 1, 2, 65287, 0
    nop
    nop

off_1FE8:
    sleep                   10, 25
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 1, 0
    work_set                WK_PLAYER, 0
    plc_ret
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_0A
    if                      0, off_2022

off_2006:
    cmp                     0, 29, CMP_GT, 30000
    sce_espr_on             0, 1280, 0, 3072, -15197, -5700, -4089, 0
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_2022:
    evt_next
    nop
    goto                    255, 255, 0, off_2006
    evt_end                 0

.proc main_0B
    sleep                   10, 37
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 3
    copy                    4, 16
    nop
    switch                  4, off_208E
    case                    0, off_2056, 0
    se_on                   2, 267, 0, -14897, 0, -4519
    break                   0

off_2056:
    case                    0, off_206A, 1
    se_on                   2, 268, 0, -14897, 0, -4519
    break                   0

off_206A:
    case                    0, off_207E, 2
    se_on                   2, 269, 0, -14897, 0, -4519
    break                   0

off_207E:
    default                 0
    se_on                   2, 267, 0, -14897, 0, -4519
    eswitch                 0

off_208E:
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, 0
    nop
    speed_set               1, 0
    speed_set               7, 20
    do                      0, off_20AC
    evt_next
    add_speed
    add_aspeed
    nop
    edwhile                 off_20AC
    member_cmp              0, 12, 3, 156, 255

off_20AC:
    member_set              12, 156, 255
    se_on                   2, 266, 4, 0, 0, 0
    sce_espr_on             0, 1024, 0, 4096, -15400, 180, -4000, 0
    sce_espr_on             0, 1024, 0, 3072, -15600, 180, -3900, 0
    sce_espr_on             0, 1024, 0, 2560, -15700, 180, -3800, 0
    sce_espr_on             0, 1024, 0, 3072, -15700, 180, -3700, 0
    sce_espr_on             0, 1024, 0, 3328, -15600, 180, -3600, 0
    sce_espr_on             0, 1024, 0, 4352, -15300, 180, -3500, 0
    set                     5, 0, 1
    speed_set               1, 30
    speed_set               7, 0
    speed_set               4, 128
    for                     0, off_2136, 3
    add_speed
    evt_next
    next                    0

off_2136:
    sleep                   10, 10
    speed_set               1, 0
    speed_set               2, 2
    speed_set               3, 0
    speed_set               4, 0
    speed_set               9, -1
    for                     0, off_215A, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_215A:
    speed_set               9, -3
    speed_set               2, 4
    for                     0, off_216E, 8
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_216E:
    speed_set               9, -9
    speed_set               2, 10
    for                     0, off_2182, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2182:
    evt_end                 0

.proc main_0D
    cut_chg                 8
    if                      0, off_2198
    ck                      29, 9, 0
    message_on              0, 5, 0, 255, 239
    else                    0, off_21C8

off_2198:
    if                      0, off_21AA
    ck                      1, 1, 0
    message_on              0, 6, 0, 255, 239
    else                    0, off_21C6

off_21AA:
    if                      0, off_21BC
    ck                      4, 153, 0
    message_on              0, 6, 0, 255, 239
    else                    0, off_21C4

off_21BC:
    message_on              0, 7, 0, 255, 239
    nop
    nop

off_21C4:
    nop
    nop

off_21C6:
    nop
    nop

off_21C8:
    evt_next
    cut_old
    evt_end                 0

.proc main_0E
    set                     2, 7, 1
    set                     2, 2, 1
    set                     1, 27, 1
    set                     29, 9, 1
    if                      0, off_21EA
    ck                      4, 153, 1
    set                     4, 192, 1
    endif
    nop

off_21EA:
    set                     15, 3, 1
    set                     16, 2, 1
    set                     21, 1, 1
    set                     22, 3, 1
    set                     22, 4, 0
    sce_item_lost           86
    cut_chg                 9
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -17341, 0, -15876
    work_set                WK_ENEMY, 0
    nop
    gosub                   15
    work_set                WK_ENEMY, 1
    nop
    gosub                   15
    work_set                WK_ENEMY, 2
    nop
    gosub                   15
    work_set                WK_ENEMY, 3
    nop
    gosub                   15
    work_set                WK_ENEMY, 4
    nop
    gosub                   15
    work_set                WK_ENEMY, 5
    nop
    gosub                   15
    work_set                WK_ENEMY, 6
    nop
    gosub                   15
    evt_exec                255, I_GOSUB, main_14
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_10
    sleep                   10, 8
    evt_exec                255, I_GOSUB, main_11
    sleep                   10, 8
    evt_exec                255, I_GOSUB, main_12
    sleep                   10, 60
    cut_old
    set                     2, 7, 0
    set                     2, 2, 0
    set                     1, 27, 0
    nop
    evt_end                 0

.proc main_0F
    if                      0, off_2284
    member_cmp              0, 0, 6, 1, 0
    if                      0, off_2282
    member_cmp              0, 11, 3, 152, 189
    member_set              11, 152, 189
    endif
    nop

off_2282:
    endif
    nop

off_2284:
    evt_end                 0

.proc main_10
    work_set                WK_OBJECT, 1
    nop
    se_on                   2, 270, 260, 0, 0, 0
    gosub                   19
    evt_end                 0

.proc main_11
    work_set                WK_OBJECT, 2
    nop
    se_on                   2, 270, 516, 0, 0, 0
    gosub                   19
    evt_end                 0

.proc main_12
    work_set                WK_OBJECT, 3
    nop
    se_on                   2, 270, 772, 0, 0, 0
    gosub                   19
    evt_end                 0

.proc main_13
    nop_8b                  100, 22, 0, 0, 0
    nop_8a                  0, 6, 0, 20, 0
    member_set              12, 48, 238
    speed_set               1, 150
    for                     0, off_22E0, 22
    add_speed
    evt_next
    next                    0

off_22E0:
    speed_set               1, -10
    for                     0, off_22EE, 4
    add_speed
    evt_next
    next                    0

off_22EE:
    speed_set               1, 10
    for                     0, off_22FC, 4
    add_speed
    evt_next
    next                    0

off_22FC:
    evt_end                 0

.proc main_14
    if                      0, off_23AC

off_2302:
    cmp                     0, 29, CMP_GT, 29000
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 3
    copy                    7, 16
    nop
    work_copy               7, 4, 1
    for                     0, off_23AA, 0
    sce_rnd
    nop
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 200
    copy                    5, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, -2300
    copy                    5, 16
    nop
    sce_rnd
    nop
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 256
    copy                    6, 16
    nop
    copy                    16, 6
    nop
    calc                    0, OP_ADD, 16, 1024
    copy                    6, 16
    nop
    work_copy               5, 8, 1
    se_on                   2, 273, 0, -17600, 0, -15900
    sce_rnd
    nop
    if                      0, off_2388
    cmp                     0, 29, CMP_GT, 0
    copy                    16, 6
    nop
    calc                    0, OP_ADD, 16, 2048
    copy                    6, 16
    nop
    endif
    nop

off_2388:
    work_copy               6, 20, 1
    work_copy               5, 10, 1
    sce_espr3d_on           0, 1286, 0, 3584, -17600, 0, -15900, 0, 0, 0, 0
    evt_next
    nop
    next                    0

off_23AA:
    endif
    nop

off_23AC:
    evt_next
    nop
    goto                    255, 255, 0, off_2302
    evt_end                 0

.proc main_15
    if                      0, off_2464

off_23BA:
    cmp                     0, 29, CMP_GT, 24000
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 5
    copy                    7, 16
    nop
    work_copy               7, 4, 1
    for                     0, off_2462, 0
    sce_rnd
    nop
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 200
    copy                    5, 16
    nop
    copy                    16, 5
    nop
    calc                    0, OP_ADD, 16, -2300
    copy                    5, 16
    nop
    sce_rnd
    nop
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 256
    copy                    6, 16
    nop
    copy                    16, 6
    nop
    calc                    0, OP_ADD, 16, 1024
    copy                    6, 16
    nop
    work_copy               5, 8, 1
    se_on                   2, 273, 0, -17600, 0, -15900
    sce_rnd
    nop
    if                      0, off_2440
    cmp                     0, 29, CMP_GT, 0
    copy                    16, 6
    nop
    calc                    0, OP_ADD, 16, 2048
    copy                    6, 16
    nop
    endif
    nop

off_2440:
    work_copy               6, 20, 1
    work_copy               5, 10, 1
    sce_espr3d_on           0, 1286, 0, 3584, -17600, 0, -15900, 0, 0, 0, 0
    evt_next
    nop
    next                    0

off_2462:
    endif
    nop

off_2464:
    evt_next
    nop
    goto                    255, 255, 0, off_23BA
    evt_end                 0

.proc main_16
    do                      0, off_247A
    evt_next
    nop
    edwhile                 off_247A
    ck                      5, 32, 0

off_247A:
    evt_end                 0

.proc main_17
    set                     1, 2, 1
    aot_reset               1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_on                  1
    evt_end                 0

.proc main_18
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 1967, -16287, 2000, 2000, ITEM_KNIFE, 1, 0, 0, 0
    obj_model_set           0, 1, 130, 4, 7, 0, 1, 10, 16, 3146, 0, -15977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_19
    sleep                   10, 60
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 60
    plc_ret
    nop
    evt_end                 0
