.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17272, -4239, 2200, 1400, -24700, -5400, -25832, 3808, 2, 3, 0, 3, 36, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -1512, -6566, 1810, 2080, -25951, -5400, -25696, 4104, 2, 5, 5, 3, 8, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17892, -18906, 2220, 1370, -8194, 0, 4890, 893, 2, 2, 4, 0, 14, 5, 0, 0, UNLOCKED, 0
    if                      0, off_0BD6
    ck                      1, 6, 1
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19412, -14556, 1710, 2980, 14, 0, 0, 0, 255, 255
    else                    0, off_0BF8

off_0BD6:
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19412, -14556, 1710, 2980, -13212, 0, -15929, -1960, 2, 12, 0, 0, 8, 1, 0, 0, UNLOCKED, 0
    nop
    nop

off_0BF8:
    evt_end                 0
    db                      0x26, 0x05

.main
.proc main_00
    if                      0, off_0C30
    ck                      1, 1, 1
    set                     4, 87, 1
    endif
    nop

off_0C30:
    if                      0, off_0E4A
    ck                      3, 128, 1
    if                      0, off_0D16
    ck                      3, 129, 0
    sce_em_set              0, 255, ENEMY_LEONKENNEDYRPD, 0, 64, 0, 0, 0, 255, -13864, 0, -5649, 1000, 770, 4
    if                      0, off_0D0E
    ck                      1, 1, 1
    sce_em_set              0, 0, ENEMY_SHERRYWITHPENDANT, 0, 64, 0, 0, 0, 255, -4864, 0, -6749, -1268, 770, 4
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 0, 0, -20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, 0, -20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, 0, -20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, 0, -20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0D0E:
    evt_exec                255, I_GOSUB, main_04
    else                    0, off_0E48

off_0D16:
    if                      0, off_0D5E
    ck                      1, 1, 1
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14172, -5607, 1080, 1120, ITEM_CLUBKEY, 3, 124, 0, 161
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, 0, -20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0D76

off_0D5E:
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14172, -5607, 1080, 1120, ITEM_CLUBKEY, 3, 124, 0, 161
    nop
    nop

off_0D76:
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -13444, 0, -4602, 384, 0, 3776, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_0DE2
    ck                      8, 194, 1
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -13444, -130, -4702, 1024, 0, 3776, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14172, -5607, 1080, 1120, ITEM_SHOTGUNAMMO, 7, 193, 1, 1
    endif
    nop

off_0DE2:
    if                      0, off_0E46
    ck                      3, 130, 1
    ck                      3, 131, 0
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 64, 0, 0, 0, 255, -13864, 0, -5649, -8438, 770, 4
    aot_reset               4, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    aot_reset               5, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, 0
    nop
    dir_set                 0, 0, 0, 0
    pos_set                 0, 0, 0, 0
    work_set                WK_OBJECT, 1
    nop
    dir_set                 0, 0, 0, 0
    pos_set                 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_0E46:
    nop
    nop

off_0E48:
    endif
    nop

off_0E4A:
    gosub                   2
    evt_end                 0

.proc main_01
    gosub                   3
    evt_end                 0

.proc main_02
    if                      0, off_0EB6
    ck                      1, 6, 1
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY1, 0, 0, 0, 5, 0, 41, -10828, 0, -4773, 1959, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIEGUY1, 0, 0, 0, 5, 0, 42, -14604, 0, -8361, 2055, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEGUY1, 0, 0, 0, 5, 0, 43, -15307, 0, -14951, 1991, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIEGUY1, 0, 0, 0, 5, 0, 44, -17263, 0, -11724, 1991, 0, 0
    else                    0, off_0EE0

off_0EB6:
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15370, -18550, 2900, 1400, 15, 0, 0, 0, 255, 255
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9880, -7650, 1700, 4600, 16, 0, 0, 0, 255, 255
    nop
    nop

off_0EE0:
    evt_end                 0

.proc main_03
    if                      0, off_0EEE
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_0EEE:
    switch                  26, off_0FDE

off_0EF2:
    case                    0, off_0F0C, 0
    sce_bgm_control         0, 0, 1, 70, 64
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0F0C:
    case                    0, off_0F26, 1
    sce_bgm_control         0, 0, 1, 60, 64
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0F26:
    case                    0, off_0F40, 2
    sce_bgm_control         0, 0, 1, 50, 64
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0F40:
    case                    0, off_0F5A, 3
    sce_bgm_control         0, 0, 1, 40, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0F5A:
    case                    0, off_0F74, 4
    sce_bgm_control         0, 0, 1, 1, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0F74:
    case                    0, off_0F8E, 5
    sce_bgm_control         0, 0, 1, 1, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0F8E:
    case                    0, off_0FA8, 6
    sce_bgm_control         0, 0, 1, 1, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0FA8:
    case                    0, off_0FC2, 7
    sce_bgm_control         0, 0, 1, 1, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0FC2:
    case                    0, off_0FDC, 8
    sce_bgm_control         0, 0, 1, 1, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0FDC:
    eswitch                 0

off_0FDE:
    do                      0, off_0FEC
    sleep                   10, 1
    edwhile                 off_0FEC
    ck                      1, 11, 0

off_0FEC:
    goto                    255, 255, 0, off_0EF2
    evt_end                 0

.proc main_04
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -15739, 0, -4824
    dir_set                 0, 0, 1024, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -14251, 0, -5700
    dir_set                 0, 0, 4080, 0
    set                     2, 7, 1
    cut_chg                 2
    sleep                   10, 10
    set                     1, 27, 1
    evt_exec                255, I_GOSUB, main_05
    evt_exec                255, I_GOSUB, main_06
    evt_end                 0

.proc main_05
    work_set                WK_SPLAYER, 0
    nop
    sleep                   10, 15
    plc_neck                5, 1, 0, 0, 148, 206
    sleep                   10, 25
    plc_dest                0, 9, 32, -12300, -4815
    gosub                   16
    plc_neck                5, 1, 0, 0, 148, 206
    plc_motion              0, 15, 1
    xa_on                   0, 58
    sleep                   10, 2
    message_on              0, 0, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 5
    cut_chg                 3
    plc_dest                0, 4, 32, -13800, -4715
    gosub                   16
    sleep                   10, 5
    xa_on                   0, 59
    sleep                   10, 2
    message_on              0, 1, 0, 0, 0
    sleep                   10, 5
    plc_motion              0, 19, 1
    sleep                   10, 15
    plc_motion              0, 15, 1
    sleep                   10, 25
    plc_motion              0, 22, 1
    sleep                   10, 20
    plc_motion              0, 16, 1
    sleep                   10, 10
    plc_motion              0, 18, 1
    sleep                   10, 20
    plc_motion              0, 21, 1
    wsleep
    wsleeping
    plc_motion              0, 23, 1
    plc_dest                0, 9, 32, -11100, -6015
    sleep                   10, 70
    plc_dest                0, 4, 32, -11600, -4215
    plc_neck                1, -7000, -6000, -4230, 32, 32
    sleep                   10, 5
    gosub                   16
    plc_motion              0, 23, 1
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 1
    plc_dest                0, 4, 33, -11100, -6015
    sleep                   10, 90
    plc_dest                0, 9, 33, -15100, -5015
    sleep                   10, 25
    sleep                   10, 150
    plc_motion              0, 29, 0
    sleep                   10, 10
    sleep                   10, 30
    plc_neck                0, 1, 0, 0, 96, 0
    sleep                   10, 4
    plc_dest                0, 4, 33, -10900, -6015
    gosub                   17
    plc_neck                1, -7000, -6000, -4230, 32, 32
    gosub                   16
    sleep                   10, 30
    plc_neck                5, 2, 0, 0, 96, 96
    sleep                   10, 5
    plc_dest                0, 9, 33, -12035, -4215
    plc_rot                 1, 3072
    sleep                   10, 25
    xa_on                   0, 60
    sleep                   10, 2
    message_on              0, 2, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                4, 3, 0, 0, 96, 64
    wsleep
    wsleeping
    plc_neck                5, 1, 0, 0, 96, 96
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -7000, -6000, -4230, 48, 8
    sleep                   10, 11
    plc_motion              2, 2, 1
    sleep                   10, 40
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                1, -7000, -6000, -4230, 48, 48
    sleep                   10, 40
    xa_on                   0, 61
    sleep                   10, 2
    message_on              0, 3, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 64, 64
    sleep                   10, 5
    plc_motion              0, 29, 1
    sleep                   10, 15
    plc_motion              0, 29, 1
    sleep                   10, 10
    plc_motion              2, 2, 1
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 40, 32
    plc_dest                0, 9, 32, -11100, -6015
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 31, 1
    nop
    sleep                   10, 25
    plc_motion              2, 2, 1
    wsleep
    wsleeping
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                1, -7000, -6000, -4230, 48, 24
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 64, 64
    sleep                   10, 5
    plc_motion              0, 29, 1
    xa_on                   0, 62
    sleep                   10, 2
    message_on              0, 4, 0, 0, 0
    sleep                   10, 5
    work_set                WK_PLAYER, 0
    plc_motion              0, 31, 1
    nop
    sleep                   10, 15
    plc_motion              0, 28, 1
    sleep                   10, 8
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 9, 32, -11100, -6015
    plc_neck                5, 1, 0, 0, 40, 32
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 21
    plc_motion              2, 2, 1
    wsleep
    wsleeping
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                3, 1, 0, 0, 0, 48
    sleep                   10, 30
    evt_exec                255, I_GOSUB, main_07
    evt_exec                255, I_GOSUB, main_08
    do                      0, off_12B2
    evt_next
    nop
    edwhile                 off_12B2
    ck                      5, 0, 0

off_12B2:
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, 0, 0, 0
    for                     0, off_12CC, 40
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_12CC:
    se_on                   2, 267, 4, 0, 0, 0
    for                     0, off_12E6, 60
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_12E6:
    sce_fade_set            2, 2, 7, 0, 252
    cut_chg                 4
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -6450, 0, -5000
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
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    plc_motion              1, 6, 128
    se_on                   2, 266, 4, 0, 0, 0
    nop_8a                  0, 2, 0, 0, 0
    nop_8b                  255, 3, 0, 0, 0
    set                     3, 129, 1
    set                     32, 4, 1
    if                      0, off_1362
    ck                      1, 1, 1
    evt_exec                255, I_GOSUB, main_09
    evt_chain               0, 24, 10
    sleep                   10, 20
    endif
    nop

off_1362:
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_07
    cut_chg                 3
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    plc_dest                0, 4, 32, -10700, -4600
    plc_neck                0, -10400, 0, -8400, 0, 0
    gosub                   16
    plc_neck                1, -10400, 0, -8400, 0, 0
    sleep                   10, 10
    plc_dest                0, 9, 32, -2500, -600
    gosub                   16
    plc_neck                0, 0, 0, 0, 32, 32
    gosub                   17
    gosub                   17
    plc_motion              10, 20, 0
    plc_flg                 0, 256
    plc_cnt                 1
    sleep                   10, 90
    evt_end                 0

.proc main_08
    work_set                WK_PLAYER, 0
    nop
    gosub                   16
    gosub                   16
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    plc_dest                0, 4, 33, -11250, -4550
    plc_neck                0, 1, 0, 0, 96, 0
    gosub                   17
    plc_dest                0, 9, 33, -4000, -7900
    gosub                   17
    plc_motion              10, 30, 0
    plc_flg                 0, 256
    plc_cnt                 1
    sleep                   10, 10
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    sleep                   10, 34
    se_on                   2, 268, 4, 0, 0, 0
    sleep                   10, 70
    cut_chg                 6
    sleep                   10, 86
    sce_fade_set            2, 2, 7, 128, 1
    sleep                   10, 30
    set                     5, 0, 1
    evt_end                 0

.proc main_09
    sce_espr_on2            8, 5, 7, 0, 0, 0, 16, 182, 247, 0, 0, 124, 236, 0, 0
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 20
    plc_neck                5, 3, 0, 0, 96, 96
    gosub                   18
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -2122, 0, -4996
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 1, 0, 0, 96, 96
    sleep                   10, 60
    plc_dest                0, 4, 33, -4000, -4950
    gosub                   17
    cut_chg                 5
    sleep                   10, 20
    plc_motion              1, 6, 0
    sleep                   10, 25
    plc_dest                0, 20, 33, 0, 0
    sleep                   10, 10
    cut_chg                 8
    sce_espr_kill2          8
    sce_fade_adjust         2, 255, 127
    sce_fade_set            2, 2, 7, 0, 252
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -7270, 0, -5460
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -3798, -2298, -5200
    dir_set                 0, -128, 1216, 0
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -3757, -2294, -5192
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -3813, -2400, -5219
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, -3850, -2356, -5150
    sleep                   10, 50
    se_on                   2, 8, 0, 0, 0, 0
    work_set                WK_OBJECT, 5
    nop
    for                     0, off_1538, 26
    member_copy             16, 16
    nop
    calc                    0, OP_ADD, 16, 38
    member_set2             16, 16
    nop
    evt_next
    nop
    next                    0

off_1538:
    sleep                   10, 30
    xa_on                   0, 63
    sleep                   10, 2
    message_on              0, 5, 0, 0, 0
    wsleep
    wsleeping
    sce_fade_set            2, 2, 7, 128, 1
    sleep                   10, 50
    for                     0, off_1564, 10
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_1564:
    cut_chg                 5
    sce_fade_set            2, 2, 7, 0, 252
    work_set                WK_OBJECT, 3
    nop
    pos_set                 0, -3798, -22298, -5200
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -3757, -22294, -5192
    work_set                WK_OBJECT, 5
    nop
    pos_set                 0, -3813, -22400, -5219
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, -3850, -22356, -5150
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -4035, 0, -4952
    sleep                   10, 10
    plc_motion              0, 28, 1
    sleep                   10, 60
    parts_set               0, 15, 2, 1
    set                     3, 80, 1
    set                     3, 129, 1
    set                     32, 4, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_0A
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 10
    plc_neck                0, 1, 0, 0, 96, 96
    plc_dest                0, 5, 34, -1700, -5415
    sleep                   10, 10
    sce_bgm_control         1, 1, 80, 65, 0
    gosub                   18
    se_on                   2, 270, 4, 0, 0, 0
    pos_set                 0, 0, 0, 0
    sleep                   10, 15
    se_on                   2, 274, 4, 0, 0, 0
    sleep                   10, 25
    se_on                   2, 275, 4, 0, 0, 0
    evt_end                 0

.proc main_0B
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -11150, 0, -5200
    dir_set                 0, 0, -65, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -1940, 0, -5200
    dir_set                 0, 0, 2200, 0
    evt_exec                255, I_GOSUB, main_0C
    evt_end                 0

.proc main_0C
    cut_chg                 5
    sleep                   10, 10
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 4, 33, -6500, -5415
    sleep                   10, 10
    cut_chg                 4
    gosub                   17
    sleep                   10, 5
    plc_neck                1, -11500, -6000, -4230, 48, 48
    sleep                   10, 10
    xa_on                   0, 64
    sleep                   10, 5
    message_on              0, 6, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 29, 0
    nop
    sleep                   10, 15
    wsleep
    wsleeping
    plc_motion              0, 32, 0
    sleep                   10, 10
    cut_chg                 3
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -7000, -6000, -4230, 48, 72
    xa_on                   0, 65
    sleep                   10, 2
    message_on              0, 7, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 30
    plc_motion              0, 16, 0
    wsleep
    wsleeping
    plc_motion              0, 22, 0
    sleep                   10, 10
    cut_chg                 4
    sleep                   10, 10
    xa_on                   0, 66
    sleep                   10, 2
    message_on              0, 8, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 31, 0
    nop
    sleep                   10, 20
    plc_motion              0, 29, 0
    sleep                   10, 20
    plc_motion              2, 2, 0
    wsleep
    wsleeping
    sleep                   10, 5
    cut_chg                 4
    work_set                WK_SPLAYER, 0
    plc_motion              0, 33, 0
    nop
    evt_exec                255, I_GOSUB, main_0D
    sleep                   10, 9
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 7, 32, -13700, -5515
    sleep                   10, 20
    plc_neck                1, -12300, 0, -4230, 96, 96
    cut_chg                 3
    sleep                   10, 20
    if                      0, off_1780
    ck                      8, 194, 1
    xa_on                   0, 67
    message_on              0, 9, 0, 0, 0
    wsleep
    wsleeping
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 30
    endif
    nop

off_1780:
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 20
    plc_dest                0, 9, 32, -12300, -4230
    sleep                   10, 50
    plc_neck                1, -7000, -6000, -4230, 48, 72
    sleep                   10, 10
    cut_chg                 4
    sleep                   10, 5
    xa_on                   0, 68
    sleep                   10, 2
    message_on              0, 10, 0, 0, 0
    sleep                   10, 5
    work_set                WK_SPLAYER, 0
    plc_motion              0, 29, 0
    nop
    sleep                   10, 25
    plc_motion              0, 32, 0
    sleep                   10, 45
    plc_motion              0, 28, 0
    sleep                   10, 25
    plc_motion              0, 31, 0
    sleep                   10, 40
    plc_motion              0, 25, 0
    wsleep
    wsleeping
    plc_neck                0, 1, 0, 0, 96, 96
    plc_dest                0, 5, 33, -1900, -5415
    sleep                   10, 35
    cut_chg                 3
    sleep                   10, 5
    se_on                   2, 274, 4, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -7000, -6000, -4230, 48, 72
    plc_dest                0, 5, 33, -11300, -5015
    sleep                   10, 25
    se_on                   2, 275, 4, 0, 0, 0
    xa_on                   0, 69
    sleep                   10, 2
    message_on              0, 11, 0, 0, 0
    plc_motion              0, 17, 0
    sleep                   10, 25
    plc_motion              0, 15, 0
    wsleep
    wsleeping
    plc_motion              2, 2, 0
    sleep                   10, 25
    set                     3, 131, 1
    if                      0, off_1868
    ck                      1, 1, 1
    evt_chain               0, 24, 15
    endif
    nop

off_1868:
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_0D
    work_set                WK_OBJECT, 0
    nop
    sleep                   10, 23
    se_on                   2, 273, 4, 0, 0, 0
    pos_set                 0, -7700, -3000, -4665
    dir_set                 0, 0, 0, 1536
    speed_set               0, -180
    speed_set               1, -260
    speed_set               6, -30
    speed_set               7, -20
    for                     0, off_18B8, 6
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_18B8:
    dir_set                 0, 384, 0, 3776
    speed_set               0, -180
    speed_set               1, 120
    speed_set               6, -30
    speed_set               7, 60
    for                     0, off_18DC, 11
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_18DC:
    pos_set                 0, -13044, 0, -4602
    se_on                   2, 269, 4, 0, 0, 0
    sleep                   10, 1
    pos_set                 0, -13344, 0, -4502
    sleep                   10, 1
    pos_set                 0, -13444, 0, -4702
    if                      0, off_191E
    ck                      1, 1, 1
    aot_reset               4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 92, 0, 3, 0, 124, 0
    else                    0, off_192A

off_191E:
    aot_reset               4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 92, 0, 3, 0, 124, 0
    nop
    nop

off_192A:
    evt_end                 0

.proc main_0E
    work_set                WK_OBJECT, 1
    nop
    sleep                   10, 23
    se_on                   2, 273, 4, 0, 0, 0
    pos_set                 0, -7700, -3000, -4665
    dir_set                 0, 0, 0, 1536
    speed_set               0, -180
    speed_set               1, -260
    speed_set               6, -30
    speed_set               7, -20
    for                     0, off_196C, 6
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_196C:
    dir_set                 0, 384, 0, 3776
    speed_set               0, -180
    speed_set               1, 120
    speed_set               6, -30
    speed_set               7, 60
    for                     0, off_1990, 11
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1990:
    pos_set                 0, -13044, 0, -4602
    se_on                   2, 265, 4, 0, 0, 0
    dir_set                 0, 224, 0, 3776
    sleep                   10, 1
    pos_set                 0, -13344, 0, -4502
    dir_set                 0, 524, 0, 3776
    sleep                   10, 1
    pos_set                 0, -13444, -130, -4702
    dir_set                 0, 1024, 0, 3776
    aot_reset               5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 21, 0, 7, 0, 193, 0
    evt_end                 0

.proc main_0F
    se_on                   2, 271, 4, 0, 0, 0
    sleep                   10, 50
    work_set                WK_PLAYER, 0
    plc_motion              0, 23, 1
    nop
    sleep                   10, 25
    work_set                WK_OBJECT, 2
    nop
    super_set               0, 64, 142, 32, 218, 18, -1088, 0, -1856
    sleep                   10, 5
    se_on                   2, 272, 4, 0, 0, 0
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              0, 36, 1
    nop
    sleep                   10, 30
    xa_on                   0, 70
    message_on              0, 12, 0, 0, 0
    sleep                   10, 5
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    plc_motion              0, 35, 1
    nop
    sleep                   10, 20
    xa_on                   0, 71
    message_on              0, 13, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 10
    set                     4, 89, 1
    set                     32, 1, 1
    work_set                WK_OBJECT, 2
    nop
    super_reset             0, -1088, 0, -1856
    pos_set                 0, 0, -20000, 0
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    unk                     132, 1
    evt_end                 0

.proc main_10
    do                      0, off_1A96
    evt_next
    nop
    edwhile                 off_1A96
    ck                      5, 32, 0

off_1A96:
    evt_end                 0

.proc main_11
    do                      0, off_1AA4
    evt_next
    nop
    edwhile                 off_1AA4
    ck                      5, 33, 0

off_1AA4:
    evt_end                 0

.proc main_12
    do                      0, off_1AB2
    evt_next
    nop
    edwhile                 off_1AB2
    ck                      5, 34, 0

off_1AB2:
    evt_end                 0
