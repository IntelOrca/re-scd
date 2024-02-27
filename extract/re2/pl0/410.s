.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -4748, -8646, 2400, 3900, -5146, -7200, -5988, 136, 3, 9, 0, 4, 22, 4, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 2112, -22556, 6100, 1500, 4451, -1800, -22484, 1128, 3, 10, 10, 1, 43, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_12D0
    cmp                     0, V_NEXT_PLD, CMP_EQ, 14
    set                     FG_RBJ_SET, 0, 1
    rbj_reset
    nop
    if                      0, off_129C
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_1268
    ck                      FG_ZAPPING, 3, 1
    evt_exec                255, I_GOSUB, main_0B
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_EM | SAT_UNDER, 1, 0, 25000, 25000, 2700, 1800, -12909, 0, -12542, 2040, 3, 4, 4, 0, 54, 0, 0, 0, UNLOCKED, 0
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0F, 0, 0
    else                    0, off_1298

off_1268:
    evt_exec                255, I_GOSUB, main_0A
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_EM | SAT_UNDER, 1, 0, 25000, 25000, 2700, 1800, -12909, 0, -12542, 2040, 3, 4, 4, 0, 32, 0, 0, 0, UNLOCKED, 0
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0F, 0, 0
    nop
    nop

off_1298:
    else                    0, off_12CC

off_129C:
    evt_exec                255, I_GOSUB, main_0A
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_EM | SAT_UNDER, 1, 0, 25000, 25000, 2700, 1800, -12909, 0, -12542, 2040, 3, 4, 4, 0, 32, 0, 0, 0, UNLOCKED, 0
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0F, 0, 0
    nop
    nop

off_12CC:
    else                    0, off_139A

off_12D0:
    set                     FG_RBJ_SET, 2, 1
    rbj_reset
    nop
    if                      0, off_1346
    ck                      FG_COMMON, 52, 0
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_40, 0, SBK_0, 0, 255, -1269, -1800, -7849, 392, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_LEON_KENNEDY_BANDAGED, 0, AI_DEFAULT, 1, SBK_0, 0, 255, 20000, 20000, 20000, -3496, 0, 0
    if                      0, off_132A
    ck                      FG_STATUS, F_SCENARIO, 1
    ck                      FG_ZAPPING, 3, 1
    if                      0, off_1328
    ck                      FG_SCENARIO, 37, 0
    set                     FG_SCENARIO, 37, 1
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_1328:
    endif
    nop

off_132A:
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_UNDER, 1, 0, -1326, -9059, 3500, 2900, 255, 0, I_GOSUB, main_06, 0, 0
    evt_exec                255, I_GOSUB, main_08
    else                    0, off_1398

off_1346:
    if                      0, off_138C
    ck                      FG_STATUS, 3, 1
    if                      0, off_1372
    cmp                     0, V_LAST_RDT, CMP_EQ, 1033
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04, 1, SBK_31, 0, 255, -1040, -1800, -7058, -3496, 0, 0
    else                    0, off_138A

off_1372:
    sce_em_set              0, ID_EM_255, ENEMY_ADA_WONG_1, 0, AI_04, 0, SBK_31, 0, 255, 5172, 0, -21308, -1216, 0, 0
    nop
    nop

off_138A:
    endif
    nop

off_138C:
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0F, 0, 0
    nop
    nop

off_1398:
    nop
    nop

off_139A:
    mizu_div_set            2
    obj_model_set           ID_OBJ_0, 1, 130, 4, 4, 0, 0, 10, 26, -3600, -1440, -21600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_3, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -2687, -21529, 14600, 12500, 96, 250, 0, 0, 0, 0
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 593, -15432, 1800, 2400, ITEM_FAIDSPRAY, 1, 180, ID_OBJ_255, IF_DEFAULT
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 6293, -17432, 1800, 2400, ITEM_INKRIBBON, 3, 181, ID_OBJ_255, IF_DEFAULT
    evt_exec                255, I_GOSUB, main_12
    gosub                   main_10
    gosub                   main_11
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    evt_next
    set                     FG_STATUS, 27, 1
    set                     FG_STOP, 7, 1
    nop
    evt_exec                255, I_GOSUB, main_03
    cut_chg                 2
    sleep                   10, 60
    cut_chg                 1
    sleep                   10, 20
    xa_vol                  80
    xa_on                   0, 32
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 2
    cut_auto                1
    set                     FG_STATUS, 27, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_03
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 3732, 0, -19807
    member_set              M_Y_DIR, 3032
    member_set              M_FLOOR, 0
    sleep                   10, 60
    sleep                   10, 20
    plc_motion              0, 21, 64
    sleep                   10, 1
    plc_flg                 1, 65
    plc_neck                5, 2, 0, 0, 60, 60
    sleep                   10, 26
    plc_motion              0, 21, 193
    sleep                   10, 20
    plc_ret
    nop
    evt_end                 0

.proc main_04
    evt_next
    work_set                WK_OBJECT, ID_OBJ_1

off_1488:
    speed_set               7, 1
    for                     0, off_14A8, 5
    speed_set               9, -1
    add_speed
    add_aspeed
    sleep                   10, 2
    speed_set               9, 0
    add_speed
    add_aspeed
    sleep                   10, 2
    next                    0

off_14A8:
    speed_set               7, -1
    for                     0, off_14C8, 10
    speed_set               9, 1
    add_speed
    add_aspeed
    sleep                   10, 2
    speed_set               9, 0
    add_speed
    add_aspeed
    sleep                   10, 2
    next                    0

off_14C8:
    speed_set               7, 1
    for                     0, off_14E8, 5
    speed_set               9, -1
    add_speed
    add_aspeed
    sleep                   10, 2
    speed_set               9, 0
    add_speed
    add_aspeed
    sleep                   10, 2
    next                    0

off_14E8:
    goto                    255, 255, 0, off_1488
    evt_end                 0

.proc main_05
    evt_next
    work_set                WK_OBJECT, ID_OBJ_1

off_14F4:
    speed_set               7, 1
    for                     0, off_1514, 5
    speed_set               9, -1
    add_speed
    add_aspeed
    sleep                   10, 2
    speed_set               9, 0
    add_speed
    add_aspeed
    sleep                   10, 2
    next                    0

off_1514:
    speed_set               7, -1
    for                     0, off_1534, 10
    speed_set               9, 1
    add_speed
    add_aspeed
    sleep                   10, 2
    speed_set               9, 0
    add_speed
    add_aspeed
    sleep                   10, 2
    next                    0

off_1534:
    speed_set               7, 1
    for                     0, off_1554, 5
    speed_set               9, -1
    add_speed
    add_aspeed
    sleep                   10, 2
    speed_set               9, 0
    add_speed
    add_aspeed
    sleep                   10, 2
    next                    0

off_1554:
    goto                    255, 255, 0, off_14F4
    evt_end                 0

.proc main_06
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STATUS, 27, 1
    set                     FG_STOP, 7, 1
    sleep                   10, 25
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 100, 64
    sce_bgmtbl_set          0, 16, 4, 65300, 0
    set                     FG_ROOM, 8, 1
    set                     FG_COMMON, 52, 1
    evt_exec                255, I_GOSUB, main_07
    evt_exec                255, I_GOSUB, main_09
    cut_chg                 7
    sleep                   10, 25
    message_on              0, ID_MSG_0, 0, 0, 0
    xa_on                   0, 33
    wsleep
    wsleeping
    message_on              0, ID_MSG_1, 0, 0, 0
    xa_on                   0, 34
    wsleep
    wsleeping
    message_on              0, ID_MSG_2, 0, 0, 0
    xa_on                   0, 35
    set                     FG_ROOM, 6, 1
    wsleep
    wsleeping
    sce_fade_set            2, 2, 7, 0, 4
    sleep                   10, 31
    sce_fade_adjust         2, 255, 127
    xa_on                   0, 41
    evt_next
    nop
    for                     0, off_15E0, 10
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_15E0:
    while                   4, off_15F0
    ck                      FG_STATUS, 26, 1
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    ewhile                  0

off_15F0:
    for                     0, off_15FE, 10
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_15FE:
    sce_fade_set            2, 2, 7, 0, 244
    set                     FG_ROOM, 2, 1
    sleep                   10, 31
    set                     FG_ROOM, 3, 1
    heal
    nop
    message_on              0, ID_MSG_3, 0, 0, 0
    xa_on                   0, 36
    set                     FG_ROOM, 6, 1
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 6
    sleep                   10, 2
    message_on              0, ID_MSG_4, 0, 0, 0
    xa_on                   0, 37
    set                     FG_ROOM, 5, 1
    wsleep
    wsleeping
    sleep                   10, 120
    message_on              0, ID_MSG_5, 0, 0, 0
    xa_on                   0, 38
    set                     FG_ROOM, 6, 1
    wsleep
    wsleeping
    message_on              0, ID_MSG_6, 0, 0, 0
    xa_on                   0, 39
    set                     FG_ROOM, 5, 1
    wsleep
    wsleeping
    sleep                   10, 45
    message_on              0, ID_MSG_7, 0, 0, 0
    xa_on                   0, 40
    set                     FG_ROOM, 6, 1
    wsleep
    wsleeping
    sleep                   10, 30
    set                     FG_STATUS, 27, 0
    set                     FG_STOP, 7, 1
    if                      0, off_1692
    cmp                     0, V_NEXT_PLD, CMP_EQ, 0
    save                    V_NEXT_PLD, 4
    else                    0, off_16A4

off_1692:
    if                      0, off_16A2
    cmp                     0, V_NEXT_PLD, CMP_EQ, 2
    save                    V_NEXT_PLD, 6
    endif
    nop

off_16A2:
    nop
    nop

off_16A4:
    heal_partner
    aot_on                  ID_AOT_0
    set                     FG_STATUS, 3, 1
    set                     FG_ROOM, 8, 0
    nop
    evt_end                 0

.proc main_07
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 525, -1800, -7655
    member_set              M_Y_DIR, -2040
    plc_motion              0, 15, 0
    sleep                   10, 55
    plc_motion              0, 20, 16
    plc_neck                2, 0, 200, 100, 25, 10
    sleep                   10, 8
    plc_neck                2, 0, -200, 100, 25, 10
    sleep                   10, 8
    plc_motion              0, 20, 144
    plc_cnt                 4
    plc_neck                2, 0, 200, 100, 25, 10
    sleep                   10, 8
    plc_neck                2, 0, -200, 100, 25, 10
    sleep                   10, 8
    plc_neck                2, 0, 200, 100, 25, 10
    sleep                   10, 8
    plc_neck                2, 0, -200, 100, 25, 10
    sleep                   10, 8
    plc_motion              0, 17, 20
    plc_neck                2, 0, 200, 100, 25, 10
    sleep                   10, 8
    sleep                   10, 120
    while                   4, off_174A
    ck                      FG_ROOM, 2, 0
    evt_next
    nop
    ewhile                  0

off_174A:
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_08
    work_set                WK_ENEMY, ID_EM_0
    evt_next
    plc_motion              0, 17, 20
    while                   4, off_1768
    ck                      FG_ROOM, 2, 0
    evt_next
    nop
    ewhile                  0

off_1768:
    pos_set                 0, 525, -1800, -7655
    member_set              M_Y_DIR, -2040
    while                   4, off_1780
    ck                      FG_ROOM, 3, 0
    evt_next
    nop
    ewhile                  0

off_1780:
    sleep                   10, 25
    plc_motion              0, 18, 152
    sleep                   10, 25
    gosub                   main_0E
    plc_motion              0, 19, 16
    plc_neck                2, 0, 200, 100, 25, 10
    sleep                   10, 8
    plc_neck                2, 0, -200, 100, 25, 10
    sleep                   10, 8
    plc_neck                2, 0, 200, 100, 25, 10
    sleep                   10, 8
    plc_neck                2, 0, -200, 100, 25, 10
    plc_motion              0, 19, 144
    plc_cnt                 8
    sleep                   10, 8
    plc_neck                5, 2, 0, 0, 8, 10
    sleep                   10, 8
    sleep                   10, 30
    sleep                   10, 12
    plc_motion              0, 22, 0
    sleep                   10, 12
    gosub                   main_0E
    plc_neck                2, 0, -20, -80, 8, 20
    sleep                   10, 35
    plc_neck                5, 2, 0, 0, 8, 10
    sleep                   10, 300
    plc_dest                0, 4, 4, -5530, -7600
    while                   4, off_1820
    ck                      FG_ROOM, 4, 0
    evt_next
    nop
    ewhile                  0

off_1820:
    evt_end                 0

.proc main_09
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -835, -1800, -7655
    member_set              M_Y_DIR, -72
    sleep                   10, 20
    plc_motion              0, 20, 0
    sleep                   10, 18
    plc_motion              0, 20, 192
    plc_cnt                 2
    sleep                   10, 20
    plc_motion              0, 18, 64
    sleep                   10, 25
    plc_motion              0, 15, 0
    sleep                   10, 60
    gosub                   main_0D
    plc_motion              0, 16, 0
    sleep                   10, 20
    plc_motion              0, 16, 144
    sleep                   10, 16
    plc_neck                2, 0, 100, 150, 80, 80
    plc_motion              0, 16, 16
    plc_cnt                 12
    sleep                   10, 16
    plc_motion              0, 16, 144
    sleep                   10, 24
    plc_neck                2, 0, -100, 50, 80, 80
    plc_motion              0, 16, 16
    plc_cnt                 12
    sleep                   10, 16
    plc_motion              0, 16, 128
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 80, 80
    plc_motion              0, 17, 20
    sleep                   10, 50
    while                   4, off_18C0
    ck                      FG_ROOM, 2, 0
    evt_next
    nop
    ewhile                  0

off_18C0:
    sleep                   10, 10
    plc_neck                5, 3, 0, 0, 80, 80
    plc_motion              0, 18, 128
    sleep                   10, 26
    gosub                   main_0D
    plc_neck                2, 0, 40, -80, 10, 10
    gosub                   main_0D
    plc_neck                5, 3, 0, 0, 80, 80
    sleep                   10, 30
    plc_neck                2, 0, 200, 100, 25, 10
    sleep                   10, 8
    plc_neck                2, 0, -200, 100, 25, 10
    sleep                   10, 8
    plc_neck                2, 0, 200, 100, 25, 10
    sleep                   10, 8
    plc_neck                2, 0, -200, 100, 25, 10
    sleep                   10, 8
    gosub                   main_0D
    sleep                   10, 30
    plc_motion              0, 19, 16
    sleep                   10, 40
    plc_motion              0, 19, 128
    plc_cnt                 10
    sleep                   10, 20
    sleep                   10, 10
    plc_neck                2, 0, -500, 0, 25, 10
    sleep                   10, 10
    set                     FG_ROOM, 0, 0
    plc_motion              0, 21, 0
    plc_rot                 1, 2048
    sleep                   10, 40
    evt_end                 0

.proc main_0A
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    sce_bgmtbl_set          0, 16, 4, 5396, 49152
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 0, -253, -7842
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_0C
    se_on                   2, 282, 0, 2904, -1800, -13806
    while                   4, off_19A2
    ck                      FG_ROOM, 0, 0
    evt_next
    nop
    ewhile                  0

off_19A2:
    set                     FG_ROOM, 0, 0
    cut_chg                 6
    sleep                   10, 25
    plc_neck                2, 0, 300, 60, 20, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 100, 64
    sleep                   10, 30
    plc_dest                0, 21, 0, -3456, 128
    while                   4, off_19D4
    ck                      FG_ROOM, 0, 0
    evt_next
    nop
    ewhile                  0

off_19D4:
    set                     FG_ROOM, 1, 1
    sleep                   10, 20
    plc_neck                2, 0, 240, -20, 80, 2
    sleep                   10, 5
    plc_neck                2, 0, -240, -20, 80, 2
    sleep                   10, 5
    nop_8a                  0, 3, 0, 0, 0
    nop_8b                  110, 1, 0, 0, 0
    nop_8b                  180, 8, 0, 1, 0
    se_on                   2, 284, 0, -201, -1800, -10402
    plc_neck                2, 0, 240, -20, 80, 2
    sleep                   10, 2
    plc_motion              0, 15, 72
    sleep                   10, 3
    plc_neck                2, 0, -240, -20, 80, 2
    sleep                   10, 10
    if                      0, off_1A4A
    ck                      FG_ITEM, 63, 0
    save                    V_NEXT_PLD, 0
    else                    0, off_1A50

off_1A4A:
    save                    V_NEXT_PLD, 2
    nop
    nop

off_1A50:
    evt_next
    aot_on                  ID_AOT_2
    set                     FG_STATUS, 27, 0
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_0B
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    sce_bgmtbl_set          0, 16, 4, 5396, 49152
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 0, -253, -7842
    while                   4, off_1A86
    ck                      FG_ROOM, 0, 0
    evt_next
    nop
    ewhile                  0

off_1A86:
    set                     FG_ROOM, 0, 0
    cut_chg                 6
    plc_neck                2, 0, 400, -40, 8, 2
    sleep                   10, 40
    plc_neck                2, 0, 200, -60, 8, 2
    sleep                   10, 60
    if                      0, off_1AB8
    ck                      FG_ITEM, 63, 0
    save                    V_NEXT_PLD, 0
    else                    0, off_1ABE

off_1AB8:
    save                    V_NEXT_PLD, 2
    nop
    nop

off_1ABE:
    evt_next
    aot_on                  ID_AOT_2
    set                     FG_STATUS, 27, 0
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_0C
    sce_espr_on             0, 26, 0, 6144, 3871, -1700, -14176, 1024
    sce_espr_on             0, 26, 0, 6144, 5242, -1700, -13094, 1024
    while                   4, off_1B32
    ck                      FG_ROOM, 1, 0
    sce_espr_on             0, 26, 0, 6144, 4910, -1700, -13042, 1024
    sleep                   10, 1
    sce_espr_on             0, 26, 0, 6144, 4010, -1700, -13032, 1024
    sleep                   10, 1
    sce_espr_on             0, 26, 0, 6144, 4510, -1700, -12832, 1024
    sleep                   10, 2
    ewhile                  0

off_1B32:
    sleep                   10, 30
    evt_next
    nop
    sce_espr_on             0, 26, 0, 6144, 438, -1700, -9922, 1024
    sce_espr_on             0, 26, 0, 6144, 338, -1700, -9902, 1536
    evt_next
    nop
    sce_espr_on             0, 26, 0, 6144, 638, -1700, -9982, 512
    sce_espr_on             0, 26, 0, 6144, 565, -1700, -9952, 1024
    evt_next
    nop
    sce_espr_on             0, 26, 0, 6144, 465, -1700, -9932, 1536
    sce_espr_on             0, 26, 0, 6144, 665, -1700, -9912, 512
    evt_end                 0

.proc main_0D
    while                   4, off_1BAA
    ck                      FG_ROOM, 6, 0
    evt_next
    nop
    ewhile                  0

off_1BAA:
    set                     FG_ROOM, 6, 0
    evt_end                 0

.proc main_0E
    while                   4, off_1BBC
    ck                      FG_ROOM, 5, 0
    evt_next
    nop
    ewhile                  0

off_1BBC:
    set                     FG_ROOM, 5, 0
    evt_end                 0

.proc main_0F
    message_on              0, ID_MSG_15, 0, 0, 255
    evt_next
    nop
    if                      0, off_1BFA
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    aot_reset               ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 230, 235, 224, 227, 156, 232
    aot_on                  ID_AOT_0
    evt_next
    nop
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0F, 0, 0
    else                    0, off_1C08

off_1BFA:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_1C08:
    evt_end                 0

.proc main_10
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6567, 1910, 1000, 1000, ITEM_INKRIBBON, 3, 255, ID_OBJ_255, IF_DEFAULT
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6567, 1910, 1000, 1000, ITEM_FAIDSPRAY, 1, 255, ID_OBJ_255, IF_DEFAULT
    evt_end                 0

.proc main_11
    aot_set_4p              30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2723, -9858, 477, -9858, 3477, -17058, -1823, -27458, 13, 0, 0, 0, 0, 255
    aot_set_4p              31, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 5697, -9358, 10697, -9358, 11187, -23258, 7277, -20478, 13, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_12

off_1C72:
    switch                  26, off_1D24
    case                    0, off_1C84, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 81, 65
    break                   0

off_1C84:
    case                    0, off_1C92, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 91, 65
    break                   0

off_1C92:
    case                    0, off_1CA0, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 86, 65
    break                   0

off_1CA0:
    case                    0, off_1CAE, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 91, 65
    break                   0

off_1CAE:
    case                    0, off_1CD0, 4
    if                      0, off_1CC6
    ck                      FG_ROOM, 8, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 91, 65
    else                    0, off_1CCE

off_1CC6:
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    nop
    nop

off_1CCE:
    break                   0

off_1CD0:
    case                    0, off_1CDE, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 91, 65
    break                   0

off_1CDE:
    case                    0, off_1D00, 6
    if                      0, off_1CF6
    ck                      FG_ROOM, 8, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 91, 65
    else                    0, off_1CFE

off_1CF6:
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    nop
    nop

off_1CFE:
    break                   0

off_1D00:
    case                    0, off_1D22, 7
    if                      0, off_1D18
    ck                      FG_ROOM, 8, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 91, 65
    else                    0, off_1D20

off_1D18:
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    nop
    nop

off_1D20:
    break                   0

off_1D22:
    eswitch                 0

off_1D24:
    do                      0, off_1D30
    evt_next
    nop
    edwhile                 off_1D30
    ck                      FG_STATUS, 11, 0

off_1D30:
    goto                    255, 255, 0, off_1C72
    evt_end                 0
