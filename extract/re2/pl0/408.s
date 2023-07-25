.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -1291, 12945, 4300, 1800, -19503, -1800, -26477, 3112, 3, 7, 5, 1, 21, 3, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -12491, -345, 1160, 2400, -9093, -1800, -857, 2064, 3, 10, 8, 1, 28, 1, 0, 0, UNLOCKED, 0
    aot_set                 12, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -8700, -1985, 1300, 1800, 7, 0, 0, 0, 0, 0
    aot_set                 10, SCE_STATUS, SAT_PL | SAT_MANUAL | SAT_UNDER, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           0, 1, 130, 4, 4, 1, 4, 10, 26, -9800, -1320, -3700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 0, 0, -20000, 0, 0, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 1, 0, 10, 16, -6067, -1800, 2410, 0, -640, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 1, 0, 10, 16, -5117, -1800, 2410, 0, -1728, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -6567, 1910, 1000, 1000, ITEM_HERBG, 1, 149, 3, 1
    item_aot_set            8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -5617, 1910, 1000, 1000, ITEM_HERBG, 1, 150, 4, 1
    obj_model_set           5, 0, 0, 0, 0, 1, 0, 10, 16, -7017, -2450, -990, 0, -3776, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_2958
    ck                      FG_GAME, F_PLAYER, 0
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -7400, -1890, 1300, 1700, ITEM_SHOTGUNAMMO, 7, 185, 5, 0
    else                    0, off_2970

off_2958:
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -7400, -1890, 1300, 1700, ITEM_FLAMEROUNDS, 6, 185, 5, 0
    nop
    nop

off_2970:
    if                      0, off_29B6
    ck                      FG_0, F_DIFFICULT, 1
    obj_model_set           7, 0, 0, 0, 0, 1, 0, 10, 16, -9650, -1500, -1835, 0, -3776, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -8000, -1285, 800, 1100, ITEM_INKRIBBON, 3, 214, 7, 0
    endif
    nop

off_29B6:
    evt_end                 0

.main
.proc main
    if                      0, off_2A26
    ck                      FG_GAME, 3, 1
    if                      0, off_2A0C
    cmp                     0, V_LAST_RDT, CMP_EQ, 1031
    sce_em_set              0, 255, ENEMY_ADA_WONG_1, 0, 4, 1, 31, 0, 255, -697, -1800, 12829, 784, 0, 0
    else                    0, off_2A24

off_2A0C:
    sce_em_set              0, 255, ENEMY_ADA_WONG_1, 0, 4, 1, 31, 0, 255, -8414, -1800, 1465, -88, 0, 0
    nop
    nop

off_2A24:
    endif
    nop

off_2A26:
    gosub                   main_02
    gosub                   main_11
    if                      0, off_2A64
    ck                      FG_GENERAL_1, 30, 0
    cut_be_set              0, 1, 0
    cut_be_set              0, 2, 1
    cut_be_set              3, 2, 1
    cut_be_set              8, 1, 0
    cut_be_set              8, 2, 0
    cut_be_set              8, 3, 1
    cut_be_set              8, 4, 1
    sca_id_set              0, 0, 222
    sca_id_set              22, 0, 254
    sca_id_set              23, 0, 254
    sca_id_set              26, 0, 0
    gosub                   main_0E
    else                    0, off_2AAC

off_2A64:
    sca_id_set              0, 0, 0
    cut_be_set              0, 1, 1
    cut_be_set              0, 2, 0
    cut_be_set              3, 2, 0
    cut_be_set              8, 1, 1
    cut_be_set              8, 2, 1
    cut_be_set              8, 3, 0
    cut_be_set              8, 4, 0
    gosub                   main_0F
    aot_reset               28, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               29, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sca_id_set              0, 0, 0
    sca_id_set              22, 0, 0
    sca_id_set              23, 0, 0
    sca_id_set              26, 128, 244
    nop
    nop

off_2AAC:
    aot_set                 3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 1, 0, 8119, 1765, 2100, 2000, 10, 0, ITEM_VALVEHANDLE, 0, aot, 0
    aot_set                 4, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 1, 0, -9640, 3290, 2100, 1500, 10, 0, ITEM_VALVEHANDLE, 0, aot, 0
    aot_set                 5, SCE_FLAG_CHG, SAT_OB | SAT_UNDER, 1, 0, -4747, 3290, 11100, 2450, 10, 0, ITEM_VALVEHANDLE, 0, main, 0
    aot_set                 20, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -6347, -2115, 16680, 3890, 172, 249, 0, 0, 0, 0
    aot_set                 21, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -4647, 1585, 10910, 1990, 172, 249, 0, 0, 0, 0
    aot_set                 22, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -4647, 5485, 10910, 5290, 172, 249, 0, 0, 0, 0
    aot_set                 23, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -11247, 7385, 8210, 6490, 172, 249, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_03
    evt_end                 0

.proc aot
    if                      0, off_2B4E
    cmp                     0, V_USED_ITEM, CMP_EQ, 50
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_2B4E:
    evt_end                 0

.proc main_02
    aot_set                 24, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 8209, 5565, 2000, 5300, 30, 0, 0, 0, 0, 255
    aot_set                 25, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9091, 4865, 2500, 2300, 30, 0, 0, 0, 0, 255
    aot_set                 26, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 8119, 1765, 2100, 2000, 31, 0, 0, 0, 0, 255
    aot_set                 27, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9640, 3290, 2100, 1500, 31, 0, 0, 0, 0, 255
    aot_set                 28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 4259, 3525, 2100, 1980, 32, 0, 0, 0, 0, 255
    aot_set                 29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -4061, 3525, 2100, 1980, 32, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_03

off_2BCA:
    evt_next
    sce_bgm_control         0, 0, 1, 71, 64
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    nop
    do                      0, off_2BEA
    evt_next
    nop
    edwhile                 off_2BEA
    ck                      FG_GAME, 11, 0

off_2BEA:
    goto                    255, 255, 0, off_2BCA
    evt_end                 0

.proc main_04
    cut_chg                 4
    sleep                   10, 60
    cut_old
    cut_auto                1
    nop
    evt_end                 0

.proc main_05
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2C1C
    member_cmp              0, 9, 0, 3, 0
    set                     FG_GENERAL_2, 1, 1
    else                    0, off_2C22

off_2C1C:
    set                     FG_GENERAL_2, 1, 0
    nop
    nop

off_2C22:
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_06
    sleep                   10, 100
    if                      0, off_2C4E
    ck                      FG_GENERAL_1, 30, 0
    evt_exec                255, I_GOSUB, main_0D
    else                    0, off_2C54

off_2C4E:
    evt_exec                255, I_GOSUB, main_0C
    nop
    nop

off_2C54:
    cut_chg                 13
    if                      0, off_2C76
    ck                      FG_GAME, F_PLAYER, 1
    if                      0, off_2C74
    ck                      FG_3, 35, 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 5363, -1800, 13097
    endif
    nop

off_2C74:
    endif
    nop

off_2C76:
    set                     FG_GAME, 28, 1
    sleep                   10, 8
    set                     FG_GAME, 28, 0
    while                   4, off_2C90
    ck                      FG_GENERAL_2, 31, 0
    sleep                   10, 1
    ewhile                  0

off_2C90:
    if                      0, off_2D22
    ck                      FG_GENERAL_1, 30, 0
    set                     FG_GENERAL_1, 30, 1
    cut_be_set              0, 1, 1
    cut_be_set              0, 2, 0
    cut_be_set              3, 2, 0
    cut_be_set              8, 1, 1
    cut_be_set              8, 2, 1
    cut_be_set              8, 3, 0
    cut_be_set              8, 4, 0
    sca_id_set              0, 0, 0
    sca_id_set              22, 0, 0
    sca_id_set              23, 0, 0
    sca_id_set              26, 128, 244
    if                      0, off_2CD6
    ck                      FG_GENERAL_2, 1, 1
    cut_chg                 1
    else                    0, off_2CDA

off_2CD6:
    cut_chg                 3
    nop
    nop

off_2CDA:
    if                      0, off_2CFA
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_2CF8
    ck                      FG_3, 35, 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 5463, -1800, 11997
    endif
    nop

off_2CF8:
    endif
    nop

off_2CFA:
    set                     FG_GAME, 28, 1
    sleep                   10, 8
    set                     FG_GAME, 28, 0
    sleep                   10, 20
    aot_reset               28, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               29, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    else                    0, off_2DAC

off_2D22:
    set                     FG_GENERAL_1, 30, 0
    cut_be_set              0, 1, 0
    cut_be_set              0, 2, 1
    cut_be_set              3, 2, 1
    cut_be_set              8, 1, 0
    cut_be_set              8, 2, 0
    cut_be_set              8, 3, 1
    cut_be_set              8, 4, 1
    sca_id_set              0, 0, 222
    sca_id_set              22, 0, 254
    sca_id_set              23, 0, 254
    sca_id_set              26, 0, 0
    cut_chg                 4
    set                     FG_GAME, 28, 1
    sleep                   10, 8
    set                     FG_GAME, 28, 0
    sleep                   10, 20
    if                      0, off_2D72
    ck                      FG_GENERAL_2, 1, 1
    cut_chg                 5
    else                    0, off_2D76

off_2D72:
    cut_chg                 7
    nop
    nop

off_2D76:
    if                      0, off_2D96
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_2D94
    ck                      FG_3, 35, 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 5463, -1800, 11997
    endif
    nop

off_2D94:
    endif
    nop

off_2D96:
    aot_reset               28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 32, 0, 0, 0, 0, 255
    aot_reset               29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 32, 0, 0, 0, 0, 255
    nop
    nop

off_2DAC:
    cut_auto                1
    aot_reset               3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 10, 0, ITEM_VALVEHANDLE, 0, aot, 0
    aot_reset               4, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 10, 0, ITEM_VALVEHANDLE, 0, aot, 0
    sleep                   10, 30
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    aot_on                  10
    evt_next
    set                     FG_GENERAL_2, 3, 1
    nop
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    set                     FG_GENERAL_2, 2, 0
    nop
    evt_exec                255, I_GOSUB, main_07
    set                     FG_GENERAL_2, 3, 0
    nop_8c                  0, 90, 110, 12, 0, 80, 0
    if                      0, off_2E00
    ck                      FG_GENERAL_2, 1, 1
    evt_exec                255, I_GOSUB, main_08
    else                    0, off_2E06

off_2E00:
    evt_exec                255, I_GOSUB, main_09
    nop
    nop

off_2E06:
    sleep                   10, 10
    sleep                   10, 10
    do                      0, off_2E1A
    evt_next
    nop
    edwhile                 off_2E1A
    ck                      FG_GENERAL_2, 2, 0

off_2E1A:
    evt_end                 0

.proc main_07
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_2E52
    ck                      FG_GAME, F_PLAYER, 1
    if                      0, off_2E40
    ck                      FG_GENERAL_2, 1, 1
    pos_set                 0, 7634, -1800, 3029
    member_set              15, 0, 0
    else                    0, off_2E4E

off_2E40:
    pos_set                 0, -7004, -1800, 3595
    member_set              15, 0, 8
    nop
    nop

off_2E4E:
    else                    0, off_2E7A

off_2E52:
    if                      0, off_2E6A
    ck                      FG_GENERAL_2, 1, 1
    pos_set                 0, 7216, -1800, 2979
    member_set              15, 0, 0
    else                    0, off_2E78

off_2E6A:
    pos_set                 0, -6586, -1800, 3555
    member_set              15, 0, 8
    nop
    nop

off_2E78:
    nop
    nop

off_2E7A:
    sleep                   10, 20
    if                      0, off_2E8E
    ck                      FG_GAME, F_PLAYER, 1
    plc_motion              0, 15, 0
    else                    0, off_2E94

off_2E8E:
    plc_motion              0, 15, 1
    nop
    nop

off_2E94:
    sleep                   10, 30
    if                      0, off_2EA8
    ck                      FG_GAME, F_PLAYER, 1
    plc_motion              0, 16, 0
    else                    0, off_2EAE

off_2EA8:
    plc_motion              0, 16, 1
    nop
    nop

off_2EAE:
    sleep                   10, 28
    se_on                   2, 266, 1, 0, 0, 0
    sleep                   10, 22
    sleep                   10, 12
    plc_cnt                 50
    plc_motion              0, 16, 192
    sleep                   10, 50
    plc_cnt                 30
    plc_motion              0, 15, 192
    sleep                   10, 30
    set                     FG_GENERAL_2, 2, 1
    plc_ret
    nop
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, 8514, -3600, 3024
    member_set              16, 0, 252
    sleep                   10, 20
    sleep                   10, 30
    speed_set               3, 0
    speed_set               9, 1
    for                     0, off_2F0E, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F0E:
    speed_set               3, 10
    speed_set               9, 1
    for                     0, off_2F24, 5
    add_speed
    evt_next
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F24:
    speed_set               9, 2
    for                     0, off_2F34, 23
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F34:
    speed_set               9, -10
    for                     0, off_2F44, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F44:
    for                     0, off_2F74, 1
    sleep                   10, 17
    speed_set               3, 32
    speed_set               9, 2
    for                     0, off_2F62, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F62:
    speed_set               9, -8
    for                     0, off_2F72, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2F72:
    next                    0

off_2F74:
    while                   4, off_2F80
    ck                      FG_GENERAL_2, 3, 0
    evt_next
    nop
    ewhile                  0

off_2F80:
    pos_set                 0, 0, -20000, 0
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -7884, -3600, 3600
    member_set              14, 0, 0
    member_set              15, 0, 0
    member_set              16, 0, 4
    sleep                   10, 20
    sleep                   10, 30
    speed_set               3, 0
    speed_set               9, -1
    for                     0, off_2FBE, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2FBE:
    speed_set               3, -10
    speed_set               9, -1
    for                     0, off_2FD4, 5
    add_speed
    evt_next
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2FD4:
    speed_set               9, -2
    for                     0, off_2FE4, 23
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2FE4:
    speed_set               9, 10
    for                     0, off_2FF4, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2FF4:
    for                     0, off_3024, 1
    sleep                   10, 17
    speed_set               3, -32
    speed_set               9, -2
    for                     0, off_3012, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3012:
    speed_set               9, 8
    for                     0, off_3022, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3022:
    next                    0

off_3024:
    while                   4, off_3030
    ck                      FG_GENERAL_2, 3, 0
    evt_next
    nop
    ewhile                  0

off_3030:
    pos_set                 0, 0, -20000, 0
    evt_end                 0

.proc main_0A

off_303A:
    if                      0, off_304A
    cmp                     0, V_CUT, CMP_EQ, 2
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_304A:
    do                      0, off_3056
    evt_next
    nop
    edwhile                 off_3056
    ck                      FG_GAME, 11, 0

off_3056:
    goto                    255, 255, 0, off_303A
    evt_end                 0

.proc main_0B

off_305E:
    save                    V_04, 6000
    for                     0, off_3080, 20
    work_copy               4, 2, 1
    light_kido_set          0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 100
    copy                    V_04, V_TEMP
    nop
    next                    0

off_3080:
    for                     0, off_309E, 20
    work_copy               4, 2, 1
    light_kido_set          0, 0
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 100
    copy                    V_04, V_TEMP
    nop
    next                    0

off_309E:
    if                      0, off_30B0
    cmp                     0, V_CUT, CMP_EQ, 2
    goto                    255, 255, 0, off_305E
    endif
    nop

off_30B0:
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 900, -1800, 4500
    dir_set                 0, 0, -1024, 0
    se_on                   2, 15, 0, 1100, -9000, 4700
    nop_8c                  0, 170, 130, 16, 0, 0, 0
    speed_set               1, -25
    for                     0, off_30E8, 16
    add_speed
    evt_next
    next                    0

off_30E8:
    speed_set               4, -3
    nop_8c                  0, 120, 140, 8, 0, 0, 0
    nop_8c                  0, 140, 120, 8, 0, 8, 0
    nop_8c                  0, 120, 140, 8, 0, 16, 0
    nop_8c                  0, 140, 120, 8, 0, 24, 0
    nop_8c                  0, 120, 140, 8, 0, 32, 0
    nop_8c                  0, 140, 120, 8, 0, 40, 0
    nop_8c                  0, 120, 140, 8, 0, 48, 0
    nop_8c                  0, 140, 120, 8, 0, 56, 0
    nop_8c                  0, 120, 140, 8, 0, 64, 0
    nop_8c                  0, 140, 120, 8, 0, 72, 0
    nop_8c                  0, 120, 140, 8, 0, 80, 0
    nop_8c                  0, 140, 120, 8, 0, 88, 0
    nop_8c                  0, 120, 140, 8, 0, 96, 0
    nop_8c                  0, 140, 120, 8, 0, 104, 0
    nop_8c                  0, 120, 140, 8, 0, 112, 0
    nop_8c                  0, 140, 120, 8, 0, 120, 0
    nop_8c                  0, 120, 140, 8, 0, 128, 0
    nop_8c                  0, 140, 120, 8, 0, 136, 0
    nop_8c                  0, 120, 140, 8, 0, 144, 0
    nop_8c                  0, 140, 120, 8, 0, 152, 0
    for                     0, off_31B8, 20
    speed_set               10, -1
    for                     0, off_31A4, 2
    add_speed
    add_aspeed
    evt_next
    add_speed
    evt_next
    nop
    next                    0

off_31A4:
    speed_set               10, 1
    for                     0, off_31B6, 2
    add_speed
    add_aspeed
    evt_next
    add_speed
    evt_next
    nop
    next                    0

off_31B6:
    next                    0

off_31B8:
    speed_set               4, 0
    set                     FG_GENERAL_2, 31, 1
    nop_8c                  0, 160, 200, 2, 0, 0, 0
    nop_8c                  0, 200, 160, 4, 0, 2, 0
    gosub                   main_0E
    evt_next
    set                     FG_GENERAL_2, 31, 0
    nop
    se_on                   2, 270, 0, 900, -9000, 4500
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_0D
    work_set                WK_OBJECT, 2
    nop
    se_on                   2, 15, 0, 1100, -9000, 4700
    pos_set                 0, 900, -9000, 4500
    dir_set                 0, 0, -2048, 0
    speed_set               1, 25
    nop_8c                  0, 170, 130, 16, 0, 0, 0
    for                     0, off_3224, 16
    add_speed
    evt_next
    next                    0

off_3224:
    speed_set               4, 3
    nop_8c                  0, 120, 140, 8, 0, 0, 0
    nop_8c                  0, 140, 120, 8, 0, 8, 0
    nop_8c                  0, 120, 140, 8, 0, 16, 0
    nop_8c                  0, 140, 120, 8, 0, 24, 0
    nop_8c                  0, 120, 140, 8, 0, 32, 0
    nop_8c                  0, 140, 120, 8, 0, 40, 0
    nop_8c                  0, 120, 140, 8, 0, 48, 0
    nop_8c                  0, 140, 120, 8, 0, 56, 0
    nop_8c                  0, 120, 140, 8, 0, 64, 0
    nop_8c                  0, 140, 120, 8, 0, 72, 0
    nop_8c                  0, 120, 140, 8, 0, 80, 0
    nop_8c                  0, 140, 120, 8, 0, 88, 0
    nop_8c                  0, 120, 140, 8, 0, 96, 0
    nop_8c                  0, 140, 120, 8, 0, 104, 0
    nop_8c                  0, 120, 140, 8, 0, 112, 0
    nop_8c                  0, 140, 120, 8, 0, 120, 0
    nop_8c                  0, 120, 140, 8, 0, 128, 0
    nop_8c                  0, 140, 120, 8, 0, 136, 0
    nop_8c                  0, 120, 140, 8, 0, 144, 0
    nop_8c                  0, 140, 120, 8, 0, 152, 0
    for                     0, off_32F4, 20
    speed_set               10, 1
    for                     0, off_32E0, 2
    add_speed
    add_aspeed
    evt_next
    add_speed
    evt_next
    nop
    next                    0

off_32E0:
    speed_set               10, -1
    for                     0, off_32F2, 2
    add_speed
    add_aspeed
    evt_next
    add_speed
    evt_next
    nop
    next                    0

off_32F2:
    next                    0

off_32F4:
    speed_set               4, 0
    set                     FG_GENERAL_2, 31, 1
    nop_8c                  0, 160, 220, 2, 0, 0, 0
    nop_8c                  0, 220, 140, 10, 0, 2, 0
    gosub                   main_0F
    evt_next
    set                     FG_GENERAL_2, 31, 0
    nop
    se_on                   2, 272, 0, 900, -1800, 4500
    sce_espr_on             0, 26, 0, 8192, 4800, -1800, 5200, 2048
    sce_espr_on             0, 26, 0, 8192, 4800, -1800, 3600, 0
    sce_espr_on             0, 26, 0, 8192, 3800, -1800, 5200, 2048
    sce_espr_on             0, 26, 0, 8192, 3800, -1800, 3600, 0
    sce_espr_on             0, 26, 0, 8192, 2800, -1800, 5200, 2048
    sce_espr_on             0, 26, 0, 8192, 2800, -1800, 3600, 0
    sce_espr_on             0, 26, 0, 8192, 1800, -1800, 5200, 2048
    sce_espr_on             0, 26, 0, 8192, 1800, -1800, 3600, 0
    sce_espr_on             0, 26, 0, 8192, 800, -1800, 5200, 2048
    sce_espr_on             0, 26, 0, 8192, 800, -1800, 3600, 0
    sce_espr_on             0, 26, 0, 8192, -200, -1800, 5200, 2048
    sce_espr_on             0, 26, 0, 8192, -200, -1800, 3600, 0
    sce_espr_on             0, 26, 0, 8192, -1200, -1800, 5200, 2048
    sce_espr_on             0, 26, 0, 8192, -1200, -1800, 3600, 0
    sce_espr_on             0, 26, 0, 8192, -2200, -1800, 5200, 2048
    sce_espr_on             0, 26, 0, 8192, -2200, -1800, 3600, 0
    evt_exec                255, I_GOSUB, main_10
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_0E
    if                      0, off_343E
    ck                      FG_GENERAL_2, 9, 1
    sce_espr_kill           22, 20, 0, 0
    evt_next
    endif
    nop

off_343E:
    set                     FG_GENERAL_2, 9, 1
    sce_espr3d_on           0, 1046, 0, 4096, 9000, -4700, 3200, 0, 3072, 0, 0
    sce_espr3d_on           0, 1046, 0, 4096, -8600, -4700, 3900, 0, 1024, 0, 0
    evt_end                 0

.proc main_0F
    if                      0, off_3480
    ck                      FG_GENERAL_2, 9, 1
    sce_espr_kill           22, 4, 0, 0
    evt_next
    endif
    nop

off_3480:
    set                     FG_GENERAL_2, 9, 1
    sce_espr3d_on           0, 5142, 0, 4096, 9000, -4700, 3200, 0, 3072, 0, 0
    sce_espr3d_on           0, 5142, 0, 4096, -8600, -4700, 3900, 0, 1024, 0, 0
    evt_end                 0

.proc main_10
    work_set                WK_OBJECT, 0
    nop
    speed_set               1, 0
    speed_set               7, 1
    for                     0, off_34CA, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_34CA:
    for                     0, off_34F2, 10
    speed_set               7, -1
    for                     0, off_34E0, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_34E0:
    speed_set               7, 1
    for                     0, off_34F0, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_34F0:
    next                    0

off_34F2:
    speed_set               7, -1
    for                     0, off_3502, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_3502:
    member_set              12, 216, 250
    evt_end                 0

.proc main_11
    obj_model_set           6, 0, 0, 0, 0, 1, 0, 10, 16, -1809, -1800, 12199, 0, 896, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -2099, 11169, 770, 2060, 255, 0, I_GOSUB, main_12, 0, 0
    evt_end                 0

.proc main_12
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 2, 1
    set                     FG_STATE, 1, 1
    set                     FG_STATE, 0, 1
    message_on              0, 42, 0, 0, 255
    evt_next
    nop
    if                      0, off_3576
    ck                      FG_INPUT, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    gosub                   main_13
    else                    0, off_3584

off_3576:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_3584:
    set                     FG_STATE, 0, 0
    set                     FG_STATE, 2, 0
    set                     FG_STATE, 1, 0
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_13
    if                      0, off_35A8
    poison_ck
    nop
    message_on              0, 44, 0, 0, 255
    evt_next
    poison_clr
    else                    0, off_35B2

off_35A8:
    message_on              0, 43, 0, 0, 255
    evt_next
    nop
    nop
    nop

off_35B2:
    evt_end                 0
