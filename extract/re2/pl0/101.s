.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14900, -14025, 1630, 2440, -19045, 0, -18170, -416, 0, 0, 7, 0, 11, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24478, -26127, 2180, 1040, -23240, 0, 20939, 0, 0, 2, 0, 0, 2, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    gosub                   2
    item_aot_set            11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17422, -15899, 2000, 2000, ITEM_SHOTGUN, 5, 15, 255, 1
    aot_reset               11, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_01
    gosub                   3
    evt_end                 0

.proc main_02
    item_aot_set            8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25841, -21214, 1860, 1800, ITEM_HANDGUNAMMO, 15, 0, 1, 0
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16892, -24309, 1940, 2150, ITEM_HANDGUNAMMO, 15, 1, 2, 0
    aot_set                 13, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18840, -22225, 1670, 1240, 13, 0, 0, 0, 255, 255
    aot_set                 14, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25535, -21079, 1420, 4910, 14, 0, 0, 0, 255, 255
    aot_set                 15, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25752, -16140, 1670, 4300, 15, 0, 0, 0, 255, 255
    aot_set                 16, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21582, -25340, 5220, 1670, 16, 0, 0, 0, 255, 255
    aot_set                 17, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15186, -19163, 1800, 5000, 0, 0, 0, 0, 0, 0
    aot_set                 18, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17422, -15899, 2000, 2000, 0, 0, 0, 0, 0, 0
    aot_set                 19, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23079, -21689, 1490, 4100, 19, 0, 0, 0, 255, 255
    aot_set                 21, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21757, -12414, 3600, 1800, 14, 0, 0, 0, 255, 255
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -24602, -900, -20422, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -15836, -1800, -23546, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_19F2
    ck                      4, 26, 0
    set                     4, 26, 1
    aot_set                 2, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, -21312, -24499, 1400, 3200, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -19612, -24499, 5500, 3200, 255, 0, I_GOSUB, main_0E, 0, 0
    aot_set                 4, SCE_AUTO, SAT_AUTO, 0, 0, -16416, -15167, 2000, 2000, 0, 0, 0, 0, 0, 0
    aot_set                 5, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -17672, -17262, 1800, 6400, 255, 0, I_GOSUB, main_16, 0, 0
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -15872, -16062, 3600, 1800, 255, 0, I_GOSUB, main_16, 0, 0
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_16, 0, 0
    gosub                   4
    set                     5, 5, 1
    evt_exec                255, I_GOSUB, main_08
    else                    0, off_1A50

off_19F2:
    if                      0, off_1A26
    ck                      4, 27, 0
    aot_set                 2, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, -21312, -24499, 1400, 3200, 0, 0, 0, 0, 0, 0
    gosub                   14
    gosub                   4
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -15938, 0, -14711
    set                     5, 5, 1
    else                    0, off_1A4E

off_1A26:
    cut_replace             0, 7
    cut_replace             1, 8
    gosub                   7
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 17, 0, 0, 0, 255, 255
    aot_reset               17, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 17, 0, 0, 0, 255, 255
    aot_reset               18, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1D, 0, 0
    nop
    nop

off_1A4E:
    nop
    nop

off_1A50:
    evt_end                 0

.proc main_03
    if                      0, off_1A76
    ck                      5, 5, 1
    ck                      6, 62, 1
    ck                      6, 63, 1
    ck                      6, 64, 1
    ck                      6, 65, 1
    set                     5, 5, 0
    sce_bgm_control         1, 5, 0, 0, 65
    endif
    nop

off_1A76:
    if                      0, off_1A92
    ck                      5, 4, 0
    ck                      8, 15, 1
    set                     5, 4, 1
    work_set                WK_ENEMY, 0
    nop
    parts_set               0, 11, 2, 0
    endif
    nop

off_1A92:
    evt_end                 0

.proc main_04
    sce_em_set              0, 0, ENEMY_ROBERTKENDO, 0, 0, 0, 0, 0, 255, -23352, 0, -15292, 3950, 266, 4
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 64, 0, 0, 5, 1, 62, -32000, 0, -32000, 3415, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 64, 0, 0, 5, 2, 63, -32000, 0, -31000, 1240, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 64, 0, 0, 5, 0, 64, -32000, 0, -30000, 1288, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 64, 0, 0, 5, 0, 65, -32000, 0, -29000, 1448, 0, 0
    evt_exec                255, I_GOSUB, main_05
    evt_end                 0

.proc main_05
    evt_next
    work_set                WK_ENEMY, 1
    gosub                   6
    work_set                WK_ENEMY, 2
    nop
    gosub                   6
    work_set                WK_ENEMY, 3
    nop
    gosub                   6
    work_set                WK_ENEMY, 4
    nop
    gosub                   6
    evt_end                 0

.proc main_06
    member_set              2, 8, 0
    member_set              3, 0, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    evt_end                 0

.proc main_07
    sce_em_set              0, 0, ENEMY_ROBERTKENDO, 0, 1, 0, 0, 0, 255, -16422, 0, -14899, 2432, 263, 68
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    if                      0, off_1B90
    ck                      8, 15, 1
    work_set                WK_ENEMY, 0
    nop
    parts_set               0, 11, 2, 0
    endif
    nop

off_1B90:
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 64, 0, 0, 5, 1, 62, -16987, 0, -12329, 1147, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 64, 0, 0, 5, 2, 63, -20712, 0, -14721, 1227, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 64, 0, 0, 5, 0, 64, -16067, 0, -20327, 2715, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 64, 0, 0, 5, 0, 65, -17163, 0, -23205, 2051, 0, 0
    evt_end                 0

.proc main_08
    cut_chg                 5
    cut_auto                1
    evt_next
    work_set                WK_PLAYER, 0
    pos_set                 0, -15312, 0, -13362
    member_set              15, 16, 7
    evt_end                 0

.proc main_09
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 4, 33, -15372, -14079
    gosub                   21
    plc_dest                0, 9, 33, -10797, -14190
    gosub                   21
    plc_motion              0, 0, 0
    sleep                   10, 20
    se_on                   2, 266, 0, -15400, -1800, -14138
    sleep                   10, 10
    plc_motion              0, 0, 192
    sleep                   10, 5
    plc_motion              0, 0, 64
    plc_cnt                 10
    sleep                   10, 5
    plc_stop
    nop
    sleep                   10, 25
    plc_dest                0, 9, 33, -16121, -12737
    gosub                   21
    plc_motion              0, 4, 0
    plc_neck                2, 0, 0, 512, 90, 90
    set                     5, 2, 1
    evt_end                 0

.proc main_0A
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     4, 27, 1
    evt_kill                9
    set                     2, 7, 1
    set                     1, 27, 1
    sca_id_set              11, 0, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -15350, 0, -14993
    member_set              15, 61, 7
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -13053, 0, -14873
    member_set              15, 99, 8
    gosub                   15
    work_set                WK_ENEMY, 2
    nop
    pos_set                 0, -13105, 0, -15769
    member_set              15, 83, 7
    gosub                   15
    work_set                WK_ENEMY, 3
    nop
    pos_set                 0, -12903, 0, -16469
    member_set              15, 119, 7
    gosub                   15
    work_set                WK_ENEMY, 4
    nop
    pos_set                 0, -13104, 0, -17269
    member_set              15, 211, 7
    gosub                   15
    evt_exec                255, I_GOSUB, main_0D
    evt_exec                255, I_GOSUB, main_1E
    sleep                   10, 4
    cut_chg                 12
    evt_next
    nop
    xa_on                   0, 8
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -21569, 0, -22513
    member_set              15, 3, 13
    sleep                   10, 20
    work_set                WK_ENEMY, 4
    nop
    member_set              2, 8, 0
    member_set              3, 2, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_set              26, 2, 0
    sleep                   10, 45
    wsleep
    wsleeping
    cut_chg                 9
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -15063, 0, -13804
    member_set              15, 205, 6
    work_set                WK_ENEMY, 2
    nop
    pos_set                 0, -14807, 0, -15489
    member_set              15, 209, 8
    work_set                WK_ENEMY, 3
    nop
    pos_set                 0, -16174, 0, -16537
    member_set              15, 131, 13
    work_set                WK_ENEMY, 4
    nop
    pos_set                 0, -14961, 0, -16750
    member_set              15, 61, 9
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -15553, 0, -15324
    member_set              15, 224, 1
    evt_next
    nop
    xa_on                   0, 9
    sleep                   10, 10
    work_set                WK_ENEMY, 1
    nop
    gosub                   16
    sleep                   10, 5
    work_set                WK_ENEMY, 2
    nop
    gosub                   16
    sleep                   10, 15
    work_set                WK_ENEMY, 3
    nop
    gosub                   16
    sleep                   10, 100
    wsleep
    wsleeping
    sca_id_set              11, 0, 252
    evt_exec                255, I_GOSUB, main_12
    work_set                WK_PLAYER, 0
    plc_ret
    cut_replace             0, 7
    cut_replace             1, 8
    cut_chg                 2
    cut_auto                1
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 17, 0, 0, 0, 255, 255
    aot_reset               17, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 17, 0, 0, 0, 255, 255
    aot_reset               18, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1D, 0, 0
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_0B
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 3, 4, 0, 128, 128
    plc_dest                0, 9, 33, -13104, -17269
    plc_rot                 0, 64
    gosub                   21
    plc_motion              0, 0, 8
    sleep                   10, 4
    plc_neck                4, 4, 0, 0, 128, 128
    sleep                   10, 14
    plc_neck                5, 3, 4, 0, 128, 128
    plc_motion              1, 1, 8
    sleep                   10, 5
    plc_stop
    nop
    evt_end                 0

.proc main_0C
    work_set                WK_PLAYER, 0
    plc_ret
    set                     1, 27, 0
    set                     2, 7, 0
    cut_auto                1
    evt_end                 0

.proc main_0D
    nop_8a                  0, 4, 0, 0, 0
    nop_8a                  0, 4, 0, 4, 0
    nop_8b                  255, 6, 0, 3, 0
    nop_8b                  200, 6, 0, 9, 0
    nop_8b                  100, 6, 0, 15, 0
    se_on                   2, 289, 0, -14166, -1800, -16160
    sce_espr_on             0, 19, 0, 10240, -14500, -3600, -15800, 2048
    sce_espr_on             0, 19, 0, 10240, -14500, -2200, -16200, 2048
    sce_espr_on             0, 19, 0, 10240, -14500, -3400, -17500, 2048
    sce_espr_on             0, 19, 0, 8192, -14500, -3000, -15200, 2048
    sce_espr_on             0, 18, 0, 8192, -14500, -2100, -16200, 2048
    sce_espr_on             0, 19, 0, 8192, -14500, -3300, -16500, 2048
    sce_espr_on             0, 18, 0, 8192, -14500, -2900, -17100, 2048
    sce_espr_on             0, 19, 0, 8192, -14500, -2200, -17200, 2048
    sce_espr_on             0, 18, 0, 8192, -14500, -3600, -18000, 2048
    sce_espr_on             0, 531, 0, 6144, -14500, -2900, -15700, 2048
    sce_espr_on             0, 530, 0, 6144, -14500, -2600, -16100, 2048
    sce_espr_on             0, 531, 0, 6144, -14500, -1400, -16800, 2048
    sce_espr_on             0, 530, 0, 6144, -14500, -2800, -17900, 2048
    sce_espr_on             0, 531, 0, 6144, -14500, -2700, -17400, 2048
    sce_espr_on             0, 530, 0, 6144, -14500, -1500, -18100, 2048
    sce_espr_on             0, 785, 0, 4096, -14500, -2000, -15100, 2048
    sce_espr_on             0, 785, 0, 4096, -14500, -1900, -15800, 2048
    sce_espr_on             0, 785, 0, 4096, -14500, -1500, -16200, 2048
    sce_espr_on             0, 785, 0, 4096, -14500, -2200, -17200, 2048
    sce_espr_on             0, 785, 0, 4096, -14500, -1800, -17500, 2048
    sce_espr_on             0, 785, 0, 4096, -14500, -2000, -18200, 2048
    sce_espr_on             0, 1041, 0, 4096, -14500, -1800, -15500, 2048
    sce_espr_on             0, 1042, 0, 4096, -14500, -1700, -15900, 2048
    sce_espr_on             0, 1041, 0, 4096, -14500, -1900, -16700, 2048
    sce_espr_on             0, 1042, 0, 4096, -14500, -2000, -17200, 2048
    sce_espr_on             0, 1041, 0, 4096, -14500, -1500, -17500, 2048
    sce_espr_on             0, 1042, 0, 4096, -14500, -1600, -18100, 2048
    sce_espr_on             0, 1041, 0, 2048, -14500, -1700, -15200, 2048
    sce_espr_on             0, 1043, 0, 2048, -14500, -1500, -16200, 2048
    sce_espr_on             0, 1041, 0, 2048, -14500, -1400, -16500, 2048
    sce_espr_on             0, 1043, 0, 2048, -14500, -1600, -17300, 2048
    sce_espr_on             0, 1041, 0, 2048, -14500, -1300, -17700, 2048
    sce_espr_on             0, 1043, 0, 2048, -14500, -1800, -18300, 2048
    sce_espr_on             0, 19, 0, 6144, -14500, -1500, -15100, 2048
    sce_espr_on             0, 18, 0, 6144, -14500, -1100, -16000, 2048
    sce_espr_on             0, 19, 0, 6144, -14500, -800, -16400, 2048
    sce_espr_on             0, 18, 0, 6144, -14500, -1200, -16800, 2048
    sce_espr_on             0, 19, 0, 6144, -14500, -1300, -17200, 2048
    sce_espr_on             0, 18, 0, 6144, -14500, -1800, -17900, 2048
    sleep                   10, 5
    se_on                   2, 289, 0, -14166, -1800, -16160
    sleep                   10, 2
    sce_bgm_control         0, 2, 0, 90, 0
    sce_bgm_control         1, 1, 0, 90, 65
    sce_bgmtbl_set          0, 1, 1, 255, 0
    evt_end                 0

.proc main_0E
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_0A, 0, 0
    evt_end                 0

.proc main_0F
    member_set              2, 8, 0
    member_set              3, 1, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    member_set              20, 97, 192
    member_set              21, 111, 197
    evt_end                 0

.proc main_10
    member_set              2, 8, 0
    member_set              3, 3, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    member_set              26, 2, 0
    evt_end                 0

.proc main_11
    member_set              2, 1, 0
    member_set              3, 8, 0
    member_set              4, 3, 0
    member_set              5, 0, 0
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    evt_end                 0

.proc main_12
    sleep                   10, 10
    work_set                WK_ENEMY, 4
    nop
    gosub                   17
    sleep                   10, 20
    work_set                WK_ENEMY, 3
    nop
    gosub                   17
    sleep                   10, 100
    work_set                WK_ENEMY, 2
    nop
    gosub                   17
    sleep                   10, 50
    work_set                WK_ENEMY, 1
    nop
    gosub                   17
    evt_end                 0

.proc main_13
    if                      0, off_21EA

off_21A2:
    cmp                     0, 29, CMP_GT, 30000
    work_set                WK_PLAYER, 0
    nop
    member_copy             4, 11
    nop
    member_copy             5, 13
    nop
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_21D0
    work_copy               5, 8, 1
    work_copy               4, 2, 1
    dir_ck                  0, 0, 0, 0, 0, 94, 1
    else                    0, off_21E8

off_21D0:
    work_copy               5, 10, 1
    work_copy               4, 4, 1
    plc_dest                0, 9, 33, 0, 0
    gosub                   21
    plc_motion              0, 5, 20
    nop
    nop

off_21E8:
    endif
    nop

off_21EA:
    sleep                   10, 4
    goto                    255, 255, 0, off_21A2
    evt_end                 0

.proc main_14
    do                      0, off_2202
    evt_next
    nop
    edwhile                 off_2202
    ck                      5, 32, 0

off_2202:
    evt_end                 0

.proc main_15
    do                      0, off_2210
    evt_next
    nop
    edwhile                 off_2210
    ck                      5, 33, 0

off_2210:
    evt_end                 0

.proc main_16
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    xa_vol                  120
    set                     2, 7, 1
    xa_on                   0, 0
    sleep                   10, 2
    message_on              0, 0, 0, 0, 0
    sleep                   10, 3
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 5
    plc_neck                5, 3, 0, 0, 148, 206
    sleep                   10, 8
    plc_dest                0, 9, 32, -23662, -14325
    plc_rot                 0, 128
    gosub                   20
    wsleep
    wsleeping
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -16011, 0, -13702
    plc_motion              0, 5, 20
    cut_chg                 10
    sleep                   10, 45
    cut_chg                 11
    evt_next
    nop
    xa_on                   0, 1
    sleep                   10, 2
    message_on              0, 1, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 9, 8
    nop
    se_on                   2, 267, 3, 0, 0, 0
    sleep                   10, 10
    plc_motion              0, 10, 4
    plc_neck                2, 0, 0, 128, 96, 96
    sleep                   10, 10
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 45
    wsleep
    wsleeping
    cut_chg                 5
    evt_next
    nop
    xa_on                   0, 2
    message_on              0, 2, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 0, 8
    nop
    sleep                   10, 10
    plc_neck                4, 4, 0, 0, 128, 128
    sleep                   10, 25
    plc_motion              0, 1, 8
    plc_neck                5, 3, 0, 0, 96, 96
    sleep                   10, 10
    plc_motion              0, 3, 8
    wsleep
    wsleeping
    cut_chg                 10
    sleep                   10, 60
    evt_exec                255, I_GOSUB, main_17
    work_set                WK_ENEMY, 0
    plc_motion              0, 9, 8
    nop
    se_on                   2, 267, 3, 0, 0, 0
    sleep                   10, 60
    plc_motion              0, 8, 128
    sleep                   10, 15
    plc_motion              0, 4, 0
    cut_chg                 11
    evt_next
    work_set                WK_PLAYER, 0
    member_set              15, 48, 6
    plc_motion              0, 5, 20
    xa_on                   0, 3
    work_set                WK_ENEMY, 0
    plc_motion              0, 3, 0
    nop
    sleep                   10, 45
    message_on              0, 3, 0, 0, 0
    evt_exec                255, I_GOSUB, main_19
    evt_exec                255, I_GOSUB, main_1B
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 5
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_1A
    xa_on                   0, 10
    message_on              0, 4, 0, 0, 0
    while                   4, off_2396
    ck                      5, 0, 0
    evt_next
    nop
    ewhile                  0

off_2396:
    wsleep
    wsleeping
    xa_on                   0, 4
    message_on              0, 5, 0, 0, 0
    sce_bgm_control         0, 1, 0, 90, 65
    while                   4, off_23B4
    ck                      5, 1, 0
    evt_next
    nop
    ewhile                  0

off_23B4:
    evt_exec                255, I_GOSUB, main_18
    evt_exec                255, I_GOSUB, main_09
    set                     5, 0, 0
    set                     5, 1, 0
    wsleep
    wsleeping
    xa_on                   0, 5
    message_on              0, 6, 0, 0, 0
    while                   4, off_23DC
    ck                      5, 2, 0
    evt_next
    nop
    ewhile                  0

off_23DC:
    wsleep
    wsleeping
    xa_on                   0, 6
    message_on              0, 7, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, -512, 512, 100, 100
    sleep                   10, 5
    plc_neck                2, 0, 512, 512, 100, 100
    sleep                   10, 10
    plc_neck                2, 0, -512, 512, 100, 100
    plc_motion              0, 2, 0
    sleep                   10, 10
    plc_neck                2, 0, 0, 512, 100, 100
    sleep                   10, 5
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 30
    plc_motion              0, 4, 0
    sleep                   10, 8
    plc_neck                4, 4, 0, 0, 96, 96
    sleep                   10, 20
    plc_motion              0, 1, 0
    sleep                   10, 20
    plc_motion              0, 1, 128
    sleep                   10, 20
    plc_motion              0, 4, 0
    sleep                   10, 36
    plc_motion              0, 3, 0
    plc_neck                4, 4, 0, 0, 96, 96
    sleep                   10, 25
    plc_motion              0, 2, 0
    sleep                   10, 25
    plc_motion              0, 4, 0
    sleep                   10, 24
    plc_motion              0, 5, 20
    plc_neck                5, 1, 0, 0, 96, 96
    wsleep
    wsleeping
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1C, 0, 0
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1C, 0, 0
    evt_exec                9, I_GOSUB, main_13
    cut_chg                 0
    cut_auto                1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_17
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 0, 8
    nop
    sleep                   10, 5
    plc_stop
    nop
    evt_end                 0

.proc main_18
    work_set                WK_PLAYER, 0
    plc_motion              0, 2, 0
    nop
    sleep                   10, 30
    plc_motion              0, 4, 0
    sleep                   10, 24
    evt_end                 0

.proc main_19
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    plc_motion              0, 6, 0
    plc_rot                 1, 1024
    sleep                   10, 30
    plc_dest                0, 4, 33, -23332, -22980
    evt_end                 0

.proc main_1A
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -20981, 0, -19745
    member_set              15, 69, 253
    plc_dest                0, 4, 33, -15972, -17238
    gosub                   21
    set                     5, 0, 1
    plc_dest                0, 4, 33, -15764, -14920
    gosub                   21
    evt_end                 0

.proc main_1B
    while                   4, off_2544
    ck                      5, 0, 0
    evt_next
    nop
    ewhile                  0

off_2544:
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -15908, -16698
    gosub                   20
    plc_dest                0, 7, 32, -16233, -12483
    gosub                   20
    plc_motion              0, 4, 0
    sleep                   10, 14
    set                     5, 1, 1
    evt_end                 0

.proc main_1C
    set                     2, 7, 1
    set                     1, 27, 1
    evt_kill                9
    work_set                WK_PLAYER, 0
    nop
    member_copy             4, 11
    nop
    member_copy             5, 13
    nop
    work_set                WK_ENEMY, 0
    nop
    work_copy               5, 10, 1
    work_copy               4, 4, 1
    plc_dest                0, 9, 33, 0, 0
    gosub                   21
    xa_on                   0, 7
    message_on              0, 8, 0, 0, 0
    plc_motion              0, 1, 0
    sleep                   10, 20
    plc_motion              0, 1, 128
    sleep                   10, 20
    plc_motion              0, 4, 128
    sleep                   10, 24
    plc_motion              0, 5, 20
    sleep                   10, 22
    plc_motion              0, 3, 0
    sleep                   10, 20
    plc_motion              0, 3, 128
    sleep                   10, 20
    plc_motion              0, 5, 20
    evt_exec                9, I_GOSUB, main_13
    wsleep
    wsleeping
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_1D
    aot_reset               18, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_2604
    ck                      5, 3, 0
    message_on              0, 18, 0, 255, 255
    set                     5, 3, 1
    else                    0, off_2626

off_2604:
    if                      0, off_261C
    ck                      8, 15, 0
    aot_reset               11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 7, 0, 4, 0, 15, 0
    aot_on                  11
    else                    0, off_2624

off_261C:
    message_on              0, 18, 0, 255, 255
    nop
    nop

off_2624:
    nop
    nop

off_2626:
    aot_reset               18, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1D, 0, 0
    evt_end                 0

.proc main_1E
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 3, 4, 0, 128, 128
    plc_dest                0, 21, 33, 440, 64
    plc_rot                 0, 64
    gosub                   21
    plc_motion              0, 0, 8
    sleep                   10, 4
    plc_neck                4, 4, 0, 0, 128, 128
    sleep                   10, 4
    plc_motion              0, 11, 8
    plc_neck                5, 3, 4, 0, 128, 128
    sleep                   10, 7
    evt_exec                255, I_GOSUB, main_1F
    plc_motion              0, 12, 0
    evt_end                 0

.proc main_1F
    evt_next
    nop
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  255, 4, 0, 3, 0
    se_on                   2, 268, 3, 0, 0, 0
    sce_espr_on             0, 24, 203, 7424, 150, 1300, 0, 0
    sce_espr_on             0, 1025, 203, 4096, 150, 1300, 0, 0
    sce_espr_on             0, 3075, 203, 6144, 150, 1300, 0, 0
    sce_espr_on             0, 3587, 203, 4096, 150, 1800, 0, 0
    sce_espr_on             0, 513, 203, 20480, 150, 1800, 0, 0
    sce_espr_on             0, 3587, 203, 7424, 150, 2300, 0, 0
    evt_exec                255, I_GOSUB, main_20
    sleep                   10, 25
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 1300
    copy                    4, 16
    nop
    sce_espr_on             0, 2051, 203, 3328, 184, 558, -80, 0
    work_copy               4, 14, 1
    sce_espr_on             0, 514, 203, 2304, 184, 558, -80, 0
    evt_next
    nop
    sce_espr_on             0, 2051, 203, 3328, 184, 538, -80, 0
    evt_end                 0

.proc main_20
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 42
    nop
    calc                    0, OP_OR, 16, 64
    member_set2             42, 16
    nop
    sce_parts_bomb          0, 12, 64, 16, 16, 83, 3, 100, 0, 10, 0, 0, 0, 20, 0
    sce_parts_down          13, 83, 3, 200, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0
    sce_espr_on             0, 0, 1228, 7424, 0, 0, 0, 851
    sce_espr_on             0, 0, 1228, 4096, -180, 0, 0, 851
    sce_espr_on             0, 0, 1228, 2048, 0, 0, -180, 851
    for                     0, off_27CA, 20
    sce_espr_on             0, 0, 1216, 4096, 0, -450, 500, 3300
    sleep                   10, 5
    next                    0

off_27CA:
    evt_end                 0

.proc main_21
    aot_reset               0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 17, 0, 0, 0, 255, 255
    evt_end                 0

.proc main_22
    save                    4, 1

off_27DC:
    for                     0, off_281C, 4
    work_copy               4, 2, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 0, 0
    if                      0, off_280A
    member_cmp              0, 0, 6, 1, 0
    member_cmp              0, 9, 0, 4, 0
    cmp                     0, 29, CMP_GT, 0
    member_set              23, 0, 72
    endif
    nop

off_280A:
    sce_rnd
    nop
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    next                    0

off_281C:
    evt_next
    nop
    goto                    255, 255, 0, off_27DC
    evt_end                 0
    db                      0x80, 0x78
