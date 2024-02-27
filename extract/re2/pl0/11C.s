.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5530, -4687, 1800, 1100, -703, 0, -17020, 816, 0, 7, 3, 0, 14, 5, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11422, -18315, 1800, 1800, -4696, 0, -1380, 560, 0, 9, 0, 0, 7, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 26, 0, -32000, -18000, -26000, 0, -512, 192, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 49152, 0, 26, 6, 0, -540, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 49152, 0, 26, 6, -15120, -36, 180, 3072, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 0, 12314, -300, 16638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_exec                255, I_GOSUB, main_02
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    cut_chg                 4
    cut_auto                1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 15742, 0, 9841
    member_set              M_Y_DIR, 2432
    evt_next
    plc_motion              0, 16, 0
    nop
    plc_neck                2, 0, -512, 0, 67, 67
    sleep                   10, 30
    plc_neck                2, 0, 512, 0, 40, 40
    sleep                   10, 40
    plc_neck                0, 0, 512, 0, 55, 55
    sleep                   10, 10
    plc_dest                0, 5, 32, 12718, 15429
    gosub                   main_0D
    plc_motion              1, 6, 0
    sleep                   10, 24
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 18
    se_on                   2, 267, 1, 0, 0, 0
    sleep                   10, 18
    plc_motion              1, 6, 128
    sleep                   10, 24
    plc_dest                0, 7, 32, 13176, 14458
    gosub                   main_0D
    sleep                   10, 10
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    se_on                   2, 266, 1, 0, 0, 0
    sce_espr_on             0, 4391, 0, 2560, 12314, -300, 16638, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    plc_neck                2, 0, -512, -512, 64, 64
    sleep                   10, 40
    plc_neck                2, 0, 512, -512, 48, 48
    sleep                   10, 40
    plc_neck                2, 0, -512, -512, 38, 38
    sleep                   10, 30
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 22
    sleep                   10, 10
    plc_dest                0, 5, 32, 11931, 17057
    gosub                   main_0D
    plc_dest                0, 21, 32, 1651, 96
    gosub                   main_0D
    gosub                   main_03
    cut_chg                 11
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -20000
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 12557, 0, 18010
    member_set              M_Y_DIR, 2512
    plc_motion              0, 15, 64
    plc_cnt                 1
    sleep                   10, 95
    plc_stop
    cut_chg                 10
    nop
    evt_exec                255, I_GOSUB, main_06
    sleep                   10, 120
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 22
    sce_fade_set            0, 2, 7, 0, 2
    sleep                   10, 59
    for                     0, off_0B78, 10
    sce_fade_adjust         0, 255, 127
    evt_next
    nop
    next                    0

off_0B78:
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    cut_chg                 12
    for                     0, off_0B9A, 60
    sce_fade_adjust         0, 255, 127
    evt_next
    nop
    next                    0

off_0B9A:
    sce_fade_adjust         0, 0, 0
    sce_fade_set            0, 2, 7, 1, 128
    evt_exec                255, I_GOSUB, main_07
    sleep                   10, 130
    sce_fade_set            0, 2, 7, 17, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 91, 65
    sleep                   10, 119
    set                     FG_SYSTEM, 10, 1

off_0BC0:
    sce_fade_adjust         0, 255, 127
    evt_next
    nop
    goto                    255, 255, 0, off_0BC0
    evt_end                 0

.proc main_03
    evt_exec                255, I_GOSUB, main_0B
    evt_exec                255, I_GOSUB, main_0C
    evt_exec                255, I_GOSUB, main_09
    evt_exec                255, I_GOSUB, main_0A
    cut_chg                 9
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               0, 500
    speed_set               2, 500
    for                     0, off_0BF6, 64
    add_speed
    evt_next
    next                    0

off_0BF6:
    speed_set               8, -10
    speed_set               6, -10
    for                     0, off_0C0A, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0C0A:
    cut_chg                 7
    member_set              M_Y_POS, -16200
    for                     0, off_0C1C, 20
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0C1C:
    evt_exec                255, I_GOSUB, main_04
    for                     0, off_0C2C, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0C2C:
    speed_set               8, -1
    speed_set               6, -1
    for                     0, off_0C40, 100
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0C40:
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_BE_FLAG, V_TEMP
    nop
    work_set                WK_OBJECT, ID_OBJ_0
    cut_chg                 8
    nop
    member_set              M_Y_POS, -12600
    speed_set               8, -2
    speed_set               6, -2
    for                     0, off_0C70, 100
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0C70:
    speed_set               8, 2
    speed_set               6, 2
    for                     0, off_0C84, 96
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0C84:
    speed_set               5, -2
    for                     0, off_0C94, 96
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0C94:
    speed_set               5, 0
    speed_set               8, -4
    speed_set               6, -4
    for                     0, off_0CAC, 48
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0CAC:
    evt_exec                255, I_GOSUB, main_05
    speed_set               8, -2
    speed_set               6, -2
    for                     0, off_0CC4, 40
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0CC4:
    speed_set               2, -20
    speed_set               0, -20
    for                     0, off_0CD8, 40
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0CD8:
    sleep                   10, 10
    se_on                   2, 268, 4, 0, 0, 0
    cut_chg                 10
    sleep                   10, 60
    evt_end                 0

.proc main_04
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               4, 1
    speed_set               10, 1
    for                     0, off_0D08, 45
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0D08:
    speed_set               10, -1
    for                     0, off_0D18, 65
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0D18:
    speed_set               10, 1
    for                     0, off_0D28, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0D28:
    speed_set               10, 0
    for                     0, off_0D38, 20
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0D38:
    speed_set               4, 1
    for                     0, off_0D48, 80
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0D48:
    sleep                   10, 20
    speed_set               4, -1
    for                     0, off_0D5C, 80
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0D5C:
    evt_end                 0

.proc main_05
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               4, -1
    speed_set               10, -1
    for                     0, off_0D78, 18
    add_speed
    evt_next
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0D78:
    speed_set               10, 1
    for                     0, off_0D8A, 32
    add_speed
    evt_next
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0D8A:
    speed_set               10, -1
    for                     0, off_0D9C, 14
    add_speed
    evt_next
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0D9C:
    speed_set               4, -5
    for                     0, off_0DAA, 40
    add_speed
    evt_next
    next                    0

off_0DAA:
    speed_set               4, -2
    for                     0, off_0DB8, 10
    add_speed
    evt_next
    next                    0

off_0DB8:
    evt_end                 0

.proc main_06
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -12600
    speed_set               1, 40
    for                     0, off_0DD2, 180
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0DD2:
    evt_end                 0

.proc main_07
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    se_on                   2, 13, 4, 0, 0, 0
    pos_set                 0, -32000, -10000, -32000
    dir_set                 0, 0, 3584, 192
    speed_set               0, 1180
    speed_set               6, -10
    speed_set               2, 1180
    speed_set               8, -10
    speed_set               1, 300
    for                     0, off_0E14, 40
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0E14:
    evt_exec                255, I_GOSUB, main_08
    speed_set               1, 200
    for                     0, off_0E28, 40
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0E28:
    speed_set               0, 20
    speed_set               2, 20
    speed_set               1, 30
    for                     0, off_0E3E, 50
    add_speed
    evt_next
    next                    0

off_0E3E:
    speed_set               0, 10
    speed_set               2, 10
    speed_set               1, 30
    for                     0, off_0E54, 50
    add_speed
    evt_next
    next                    0

off_0E54:
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_copy             V_TEMP, M_BE_FLAG
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_BE_FLAG, V_TEMP
    nop
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, ID_OBJ_0

off_0E6D:
    nop
    speed_set               4, 3
    for                     0, off_0E80, 10
    add_speed
    nop
    sleep                   10, 2
    next                    0

off_0E80:
    speed_set               4, -3
    for                     0, off_0E92, 20
    add_speed
    nop
    sleep                   10, 3
    next                    0

off_0E92:
    speed_set               4, 3
    for                     0, off_0EA4, 10
    add_speed
    nop
    sleep                   10, 4
    next                    0

off_0EA4:
    speed_set               4, 2
    for                     0, off_0EB6, 25
    add_speed
    nop
    sleep                   10, 2
    next                    0

off_0EB6:
    speed_set               4, -2
    for                     0, off_0EC8, 50
    add_speed
    nop
    sleep                   10, 2
    next                    0

off_0EC8:
    speed_set               4, 2
    for                     0, off_0EDA, 25
    add_speed
    nop
    sleep                   10, 2
    next                    0

off_0EDA:
    speed_set               4, 2
    for                     0, off_0EEC, 15
    add_speed
    nop
    sleep                   10, 1
    next                    0

off_0EEC:
    speed_set               4, -2
    for                     0, off_0EFE, 30
    add_speed
    nop
    sleep                   10, 2
    next                    0

off_0EFE:
    speed_set               4, 2
    for                     0, off_0F10, 15
    add_speed
    nop
    sleep                   10, 1
    next                    0

off_0F10:
    goto                    255, 255, 0, off_0E6D
    evt_end                 0

.proc main_0A
    work_set                WK_OBJECT, ID_OBJ_0

off_0F1B:
    nop
    speed_set               1, 5
    for                     0, off_0F2C, 20
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0F2C:
    speed_set               1, -5
    for                     0, off_0F3C, 40
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0F3C:
    speed_set               1, 5
    for                     0, off_0F4C, 20
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0F4C:
    speed_set               1, 6
    for                     0, off_0F5C, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0F5C:
    speed_set               1, -6
    for                     0, off_0F6C, 60
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0F6C:
    speed_set               1, 6
    for                     0, off_0F7C, 30
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0F7C:
    speed_set               1, 7
    for                     0, off_0F8C, 25
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0F8C:
    speed_set               1, -7
    for                     0, off_0F9C, 50
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0F9C:
    speed_set               1, 7
    for                     0, off_0FAC, 25
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_0FAC:
    goto                    255, 255, 0, off_0F1B
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    speed_set               4, 512

off_0FBC:
    add_speed
    evt_next
    goto                    255, 255, 0, off_0FBC
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    speed_set               4, 512

off_0FCE:
    add_speed
    evt_next
    goto                    255, 255, 0, off_0FCE
    evt_end                 0

.proc main_0D
    do                      0, off_0FE4
    evt_next
    nop
    edwhile                 off_0FE4
    ck                      FG_ROOM, 32, 0

off_0FE4:
    evt_end                 0
    db                      0x04, 0x07
