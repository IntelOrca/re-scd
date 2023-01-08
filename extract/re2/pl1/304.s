.version 2
.init
.proc init_00
    if                      0, off_0FF2
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_0FF2:
    if                      0, off_1000
    ck                      4, 254, 1
    set                     3, 97, 0
    endif
    nop

off_1000:
    set                     4, 88, 1
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -26596, -27804, 2560, 1300, -24972, -5400, -13739, 552, 2, 3, 5, 3, 38, 3, 0, 0, UNLOCKED, 0
    door_aot_se             4, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8296, -22004, 2640, 1370, -16210, 0, -26018, -5184, 3, 2, 0, 0, 31, 0, 0, 0, UNLOCKED, 0
    mizu_div_set            2
    obj_model_set           0, 1, 130, 4, 4, 0, 12, 10, 26, -5350, -300, -26800, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 6, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -19482, -27994, 16000, 7500, 212, 254, 0, 0, 0, 0
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18696, -26554, 2040, 5250, 7, 0, 0, 0, 255, 255
    evt_end                 0
    db                      0xDF, 0x8F

.main
.proc main_00
    if                      0, off_10C0
    ck                      1, 6, 1
    gosub                   7
    evt_end                 0
    endif
    nop

off_10C0:
    gosub                   3
    evt_end                 0

.proc main_01
    if                      0, off_10D2
    ck                      1, 6, 1
    gosub                   6
    evt_end                 0
    endif
    nop

off_10D2:
    gosub                   6
    evt_end                 0

.proc main_02
    sce_bgmtbl_set          0, 4, 3, 65319, 0
    evt_end                 0

.proc main_03
    save                    4, 16
    sce_bgm_control         0, 0, 2, 1, 64
    gosub                   6
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -26596, -27804, 2560, 1300, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8296, -22004, 2640, 1370, 255, 0, I_GOSUB, main_05, 0, 0
    evt_end                 0

.proc main_04
    aot_on                  3
    evt_end                 0

.proc main_05
    aot_on                  4
    evt_end                 0

.proc main_06
    if                      0, off_11A8
    work_copy               4, 4, 1
    cmp                     0, 26, CMP_NE, 0
    switch                  26, off_11A2
    case                    0, off_113E, 0
    sce_bgm_control         0, 0, 1, 70, 64
    break                   0

off_113E:
    case                    0, off_114C, 1
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_114C:
    case                    0, off_115A, 2
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_115A:
    case                    0, off_1168, 3
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_1168:
    case                    0, off_1176, 4
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_1176:
    case                    0, off_1184, 5
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_1184:
    case                    0, off_1192, 6
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_1192:
    case                    0, off_11A0, 7
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_11A0:
    eswitch                 0

off_11A2:
    copy                    4, 26
    nop
    endif
    nop

off_11A8:
    evt_end                 0

.proc main_07
    if                      0, off_11B8
    ck                      4, 254, 1
    set                     4, 174, 0
    endif
    nop

off_11B8:
    save                    4, 16
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -26596, -27804, 2560, 1300, -24972, -5400, -13739, 552, 2, 3, 5, 3, 38, 3, 0, 0, UNLOCKED, 0
    aot_set                 4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -8296, -22004, 2640, 1370, 8, 0, 0, 0, 255, 255
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, -26596, -27804, 2560, 1300, 255, 0, I_GOSUB, main_04, 0, 0
    mizu_div_set            2
    obj_model_set           0, 1, 130, 4, 4, 0, 12, 10, 26, -5350, -300, -26800, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 6, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -19482, -27994, 16000, 7500, 212, 254, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1278
    ck                      4, 174, 0
    evt_exec                255, I_GOSUB, main_0A
    set                     4, 174, 1
    endif
    nop

off_1278:
    evt_end                 0

.proc main_08
    sce_bgm_control         0, 0, 1, 1, 0
    aot_on                  3
    evt_end                 0

.proc main_09
    for                     0, off_1354, 4
    sce_espr_on             0, 5376, 128, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 129, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 130, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 131, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 132, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 133, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 134, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 135, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 136, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sce_espr_on             0, 5376, 137, 4096, 0, 0, 0, 0
    sleep                   10, 2
    next                    0

off_1354:
    sce_espr_on             0, 5376, 128, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 2
    sce_espr_on             0, 5376, 130, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 2
    sce_espr_on             0, 5376, 132, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 2
    sce_espr_on             0, 5376, 134, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 2
    sce_espr_on             0, 5376, 136, 4096, 0, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 2
    sce_espr_on             0, 5376, 138, 4096, 0, 0, 0, 0
    sleep                   10, 2
    evt_end                 0

.proc main_0A
    set                     1, 27, 1
    set                     2, 7, 1
    evt_next
    set                     2, 7, 1
    cut_chg                 3
    work_set                WK_PLAYER, 0
    member_set              17, 0, 0
    pos_set                 0, -7435, 0, -24500
    dir_set                 0, 0, -1904, 0
    if                      0, off_1418
    ck                      0, 27, 0
    set                     0, 27, 1
    gosub                   11
    endif
    nop

off_1418:
    gosub                   12
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     2, 7, 0
    set                     1, 27, 0
    set                     31, 9, 1
    set                     31, 4, 1
    set                     33, 2, 1
    set                     33, 3, 1
    set                     33, 4, 1
    set                     33, 5, 1
    set                     33, 6, 1
    set                     33, 7, 1
    set                     33, 8, 1
    set                     32, 13, 1
    unk                     132, 4
    sleep                   10, 1
    sce_bgm_control         0, 1, 0, 0, 0
    set                     1, 4, 1
    save                    35, 0
    gosub                   2
    evt_end                 0

.proc main_0B
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 80
    plc_cnt                 11
    evt_next
    plc_stop
    nop
    sleep                   10, 60
    plc_motion              0, 16, 0
    plc_cnt                 11
    sleep                   10, 2
    plc_stop
    plc_motion              0, 16, 128
    plc_cnt                 37
    nop
    sleep                   10, 2
    plc_stop
    nop
    sleep                   10, 30
    plc_motion              0, 16, 0
    plc_cnt                 11
    sleep                   10, 2
    plc_stop
    plc_motion              0, 16, 128
    plc_cnt                 37
    nop
    sleep                   10, 2
    plc_stop
    nop
    sleep                   10, 10
    plc_motion              0, 16, 0
    plc_cnt                 11
    sleep                   10, 3
    plc_stop
    plc_motion              0, 16, 128
    plc_cnt                 37
    nop
    sleep                   10, 2
    plc_stop
    nop
    sleep                   10, 30
    plc_motion              0, 16, 80
    evt_exec                255, I_GOSUB, main_09
    se_on                   2, 11, 0, -7435, -3600, -24500
    plc_cnt                 11
    sleep                   10, 20
    sleep                   10, 10
    sleep                   10, 10
    plc_neck                2, 0, 0, 1024, 32, 32
    sleep                   10, 40
    plc_motion              1, 6, 144
    sleep                   10, 50
    plc_motion              0, 18, 0
    sleep                   10, 60
    plc_motion              0, 18, 128
    plc_cnt                 20
    sleep                   10, 60
    plc_neck                2, 0, 0, 0, 12, 12
    sleep                   10, 40
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 40
    plc_neck                2, 0, -1024, 0, 32, 32
    sleep                   10, 40
    cut_chg                 2
    plc_neck                2, 0, 1024, 0, 32, 32
    sleep                   10, 60
    plc_neck                2, 0, -1024, 0, 32, 32
    sleep                   10, 60
    cut_chg                 3
    plc_neck                2, 0, 0, 128, 12, 12
    sleep                   10, 60
    evt_end                 0

.proc main_0C
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 0, 96, 96
    sleep                   10, 10
    plc_neck                2, 0, -1024, 128, 32, 32
    sleep                   10, 5
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 64, 142, 0, 242, 0, 832, 2048, -68
    work_set                WK_PLAYER, 0
    plc_motion              0, 17, 0
    nop
    sleep                   10, 5
    plc_motion              0, 17, 128
    plc_cnt                 15
    sleep                   10, 5
    plc_motion              0, 17, 0
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 15
    plc_motion              0, 15, 0
    plc_cnt                 10
    sleep                   10, 5
    se_on                   2, 10, 0, -7435, -3600, -24500
    sleep                   10, 5
    xa_on                   0, 19
    message_on              0, 9, 0, 0, 0
    evt_next
    nop
    wsleep
    wsleeping
    xa_on                   0, 20
    message_on              0, 10, 0, 0, 0
    plc_motion              0, 15, 128
    wsleep
    wsleeping
    plc_motion              0, 17, 128
    plc_cnt                 8
    sleep                   10, 14
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
