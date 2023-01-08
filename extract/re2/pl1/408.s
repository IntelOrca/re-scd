.version 2
.init
.proc init_00
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
    ck                      1, 0, 0
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -7400, -1890, 1300, 1700, ITEM_SHOTGUNAMMO, 7, 185, 5, 0
    else                    0, off_2970

off_2958:
    item_aot_set            9, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -7400, -1890, 1300, 1700, ITEM_FLAMEROUNDS, 6, 185, 5, 0
    nop
    nop

off_2970:
    if                      0, off_29B6
    ck                      0, 25, 1
    obj_model_set           7, 0, 0, 0, 0, 1, 0, 10, 16, -9650, -1500, -1835, 0, -3776, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -8000, -1285, 800, 1100, ITEM_INKRIBBON, 3, 214, 7, 0
    endif
    nop

off_29B6:
    evt_end                 0

.main
.proc main_00
    if                      0, off_2A6E
    ck                      4, 31, 0
    cut_chg                 10
    if                      0, off_2A3A
    ck                      1, 1, 0
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_UNDER, 1, 0, 3700, 10000, 1700, 3900, 255, 0, I_GOSUB, main_02, 0, 0
    sce_em_set              0, 0, ENEMY_ANNETTEBIRKIN1, 0, 8, 1, 0, 0, 255, 7028, -1800, 12020, -2048, 0, 0
    else                    0, off_2A6A

off_2A3A:
    sce_em_set              0, 0, ENEMY_ANNETTEBIRKIN1, 0, 0, 31, 0, 0, 255, 20000, 20000, 20000, 3072, 0, 0
    aot_set                 30, SCE_MESSAGE, SAT_EM | SAT_MANUAL | SAT_FRONT, 1, 0, 4463, 9997, 2000, 2000, 41, 0, 0, 0, 0, 255
    evt_exec                255, I_GOSUB, main_09
    nop
    nop

off_2A6A:
    else                    0, off_2AAC

off_2A6E:
    if                      0, off_2AAA
    ck                      3, 35, 1
    sce_em_set              0, 0, ENEMY_ANNETTEBIRKIN1, 1, 0, 31, 0, 0, 255, 5463, -1800, 11997, 1536, 0, 0
    set                     1, 25, 1
    evt_exec                255, I_GOSUB, main_0D
    aot_set                 30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 4463, 9997, 2000, 2000, 41, 0, 0, 0, 0, 255
    endif
    nop

off_2AAA:
    nop
    nop

off_2AAC:
    if                      0, off_2B2A
    ck                      1, 3, 1
    if                      0, off_2AF4
    cmp                     0, 27, CMP_EQ, 1031
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 1, 32, 0, 255, -697, -1800, 12829, 784, 0, 0
    if                      0, off_2AF0
    ck                      1, 1, 1
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 2048
    member_set2             7, 16
    nop
    endif
    nop

off_2AF0:
    else                    0, off_2B28

off_2AF4:
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 1, 32, 0, 255, -8414, -1800, 1465, -88, 0, 0
    if                      0, off_2B26
    ck                      1, 1, 1
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 2048
    member_set2             7, 16
    nop
    endif
    nop

off_2B26:
    nop
    nop

off_2B28:
    endif
    nop

off_2B2A:
    gosub                   15
    gosub                   30
    if                      0, off_2B68
    ck                      4, 30, 0
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
    gosub                   27
    else                    0, off_2BB0

off_2B68:
    sca_id_set              0, 0, 0
    cut_be_set              0, 1, 1
    cut_be_set              0, 2, 0
    cut_be_set              3, 2, 0
    cut_be_set              8, 1, 1
    cut_be_set              8, 2, 1
    cut_be_set              8, 3, 0
    cut_be_set              8, 4, 0
    gosub                   28
    aot_reset               28, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               29, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sca_id_set              0, 0, 0
    sca_id_set              22, 0, 0
    sca_id_set              23, 0, 0
    sca_id_set              26, 128, 244
    nop
    nop

off_2BB0:
    aot_set                 3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 1, 0, 8319, 1765, 2100, 2000, 10, 0, 50, 0, 1, 0
    aot_set                 4, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 1, 0, -9640, 3290, 2100, 1500, 10, 0, 50, 0, 1, 0
    aot_set                 5, SCE_FLAG_CHG, SAT_OB | SAT_UNDER, 1, 0, -4747, 3290, 11100, 2450, 10, 0, 50, 0, 0, 0
    aot_set                 20, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -6347, -2115, 16680, 3890, 172, 249, 0, 0, 0, 0
    aot_set                 21, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -4647, 1585, 10910, 1990, 172, 249, 0, 0, 0, 0
    aot_set                 22, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -4647, 5485, 10910, 5290, 172, 249, 0, 0, 0, 0
    aot_set                 23, SCE_WATER, SAT_PL | SAT_EM | SAT_OB | SAT_UNDER, 0, 0, -11247, 7385, 8210, 6490, 172, 249, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_10
    evt_end                 0

.proc main_01
    if                      0, off_2C52
    cmp                     0, 2, CMP_EQ, 50
    evt_exec                255, I_GOSUB, main_12
    endif
    nop

off_2C52:
    evt_end                 0

.proc main_02
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sce_bgm_control         2, 1, 0, 100, 64
    sce_bgmtbl_set          0, 8, 4, 6164, 32768
    set                     1, 27, 1
    set                     2, 7, 1
    set                     4, 31, 1
    evt_exec                255, I_GOSUB, main_03
    evt_exec                255, I_GOSUB, main_04
    evt_exec                255, I_GOSUB, main_05
    while                   4, off_2C90
    ck                      5, 4, 0
    evt_next
    nop
    ewhile                  0

off_2C90:
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_03
    sleep                   10, 60
    cut_chg                 11
    sleep                   10, 2
    xa_vol                  110
    set                     5, 6, 1
    message_on              0, 0, 0, 0, 0
    xa_on                   0, 11
    sleep                   10, 26
    wsleep
    wsleeping
    sleep                   10, 25
    message_on              0, 1, 0, 0, 0
    xa_on                   0, 12
    sleep                   10, 152
    message_on              0, 2, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    message_on              0, 3, 0, 0, 0
    xa_on                   0, 13
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 10
    sleep                   10, 2
    message_on              0, 4, 0, 0, 0
    set                     5, 5, 1
    xa_on                   0, 14
    sleep                   10, 40
    message_on              0, 5, 0, 0, 0
    sleep                   10, 92
    message_on              0, 6, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 11
    evt_next
    nop
    xa_on                   0, 15
    sleep                   10, 16
    wsleep
    wsleeping
    sleep                   10, 2
    set                     5, 5, 1
    message_on              0, 7, 0, 0, 0
    xa_on                   0, 16
    sleep                   10, 72
    message_on              0, 8, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    set                     5, 6, 1
    message_on              0, 9, 0, 0, 0
    xa_on                   0, 17
    sleep                   10, 42
    message_on              0, 10, 0, 0, 0
    sleep                   10, 72
    message_on              0, 11, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    set                     5, 5, 1
    message_on              0, 12, 0, 0, 0
    xa_on                   0, 18
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 11
    sleep                   10, 2
    set                     5, 6, 1
    message_on              0, 13, 0, 0, 0
    xa_on                   0, 19
    sleep                   10, 32
    message_on              0, 14, 0, 0, 0
    wsleep
    wsleeping
    evt_exec                255, I_GOSUB, main_08
    while                   4, off_2DB2
    ck                      5, 7, 0
    evt_next
    nop
    ewhile                  0

off_2DB2:
    xa_vol                  120
    sleep                   10, 2
    message_on              0, 15, 0, 0, 0
    xa_on                   0, 20
    sleep                   10, 93
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 11
    sleep                   10, 2
    set                     5, 6, 1
    message_on              0, 16, 0, 0, 0
    xa_on                   0, 21
    sleep                   10, 122
    message_on              0, 17, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    set                     5, 6, 1
    message_on              0, 18, 0, 0, 0
    xa_on                   0, 22
    wsleep
    wsleeping
    sleep                   10, 2
    message_on              0, 19, 0, 0, 0
    xa_on                   0, 23
    wsleep
    wsleeping
    sleep                   10, 2
    set                     5, 6, 1
    message_on              0, 20, 0, 0, 0
    xa_on                   0, 24
    sleep                   10, 82
    message_on              0, 21, 0, 0, 0
    sleep                   10, 82
    message_on              0, 22, 0, 0, 0
    sleep                   10, 162
    message_on              0, 23, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    set                     5, 5, 1
    message_on              0, 24, 0, 0, 0
    xa_on                   0, 25
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 11
    sleep                   10, 2
    set                     5, 6, 1
    message_on              0, 25, 0, 0, 0
    xa_on                   0, 26
    sleep                   10, 163
    wsleep
    wsleeping
    sleep                   10, 2
    message_on              0, 26, 0, 0, 0
    xa_on                   0, 27
    sleep                   10, 182
    message_on              0, 27, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 12
    sleep                   10, 2
    xa_on                   0, 28
    sleep                   10, 64
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 11
    sleep                   10, 2
    message_on              0, 28, 0, 0, 0
    xa_on                   0, 29
    wsleep
    wsleeping
    sleep                   10, 2
    message_on              0, 29, 0, 0, 0
    xa_on                   0, 30
    wsleep
    wsleeping
    sleep                   10, 120
    cut_chg                 0
    cut_auto                1
    set                     5, 4, 1
    evt_end                 0

.proc main_04
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 20
    plc_neck                5, 3, 0, 0, 30, 30
    plc_dest                0, 21, 5, 0, 256
    gosub                   7
    plc_dest                0, 8, 5, 3100, 11900
    sleep                   10, 20
    set                     5, 5, 0
    plc_dest                0, 21, 5, 0, 128
    gosub                   7
    gosub                   7
    sleep                   10, 20
    plc_neck                1, 10000, -4800, 12000, 30, 30
    sleep                   10, 40
    plc_neck                5, 3, 0, 0, 4, 4
    plc_motion              0, 19, 1
    sleep                   10, 10
    plc_neck                2, 0, 20, -90, 4, 4
    sleep                   10, 20
    plc_motion              0, 19, 129
    plc_neck                2, 0, -40, 30, 20, 20
    sleep                   10, 30
    for                     0, off_2F76, 2
    plc_neck                2, 0, 80, 0, 4, 4
    sleep                   10, 20
    plc_neck                2, 0, -80, 0, 4, 4
    sleep                   10, 20
    next                    0

off_2F76:
    plc_neck                5, 3, 0, 0, 8, 8
    gosub                   7
    plc_neck                2, 0, 0, 30, 8, 8
    sleep                   10, 10
    plc_motion              0, 19, 17
    sleep                   10, 20
    plc_motion              0, 19, 145
    plc_cnt                 20
    plc_neck                2, 0, -200, 0, 8, 8
    sleep                   10, 20
    plc_neck                2, 0, 200, 0, 10, 10
    plc_motion              0, 19, 1
    sleep                   10, 20
    plc_motion              0, 19, 129
    plc_cnt                 10
    plc_neck                5, 3, 0, 0, 8, 8
    sleep                   10, 20
    plc_motion              0, 21, 17
    sleep                   10, 20
    plc_motion              0, 21, 145
    plc_cnt                 20
    sleep                   10, 20
    gosub                   7
    plc_neck                2, 0, -30, -40, 8, 8
    sleep                   10, 15
    plc_neck                5, 3, 0, 0, 8, 8
    while                   6, off_300C
    cmp                     0, 26, CMP_NE, 11
    evt_next
    nop
    ewhile                  0

off_300C:
    sleep                   10, 20
    plc_neck                1, 10000, -4800, 12000, 8, 8
    sleep                   10, 40
    plc_neck                5, 3, 0, 0, 6, 6
    while                   4, off_3034
    ck                      5, 7, 0
    evt_next
    nop
    ewhile                  0

off_3034:
    plc_neck                2, 0, 120, 120, 8, 8
    sleep                   10, 10
    plc_neck                2, 0, 60, 60, 8, 8
    plc_motion              0, 19, 1
    sleep                   10, 20
    plc_motion              0, 19, 129
    plc_cnt                 10
    for                     0, off_307E, 2
    plc_neck                2, 0, 40, 0, 8, 8
    sleep                   10, 13
    plc_neck                2, 0, -30, 0, 8, 8
    sleep                   10, 12
    next                    0

off_307E:
    plc_motion              2, 2, 5
    gosub                   7
    plc_motion              0, 19, 1
    for                     0, off_30AC, 2
    plc_neck                2, 0, 40, 10, 8, 8
    sleep                   10, 8
    plc_neck                2, 0, -40, 10, 8, 8
    sleep                   10, 7
    next                    0

off_30AC:
    plc_motion              0, 19, 129
    while                   6, off_30BE
    cmp                     0, 26, CMP_NE, 11
    evt_next
    nop
    ewhile                  0

off_30BE:
    plc_motion              2, 2, 5
    while                   6, off_30D0
    cmp                     0, 26, CMP_NE, 12
    evt_next
    nop
    ewhile                  0

off_30D0:
    while                   6, off_30DE
    cmp                     0, 26, CMP_NE, 11
    evt_next
    nop
    ewhile                  0

off_30DE:
    sleep                   10, 45
    set                     5, 5, 0
    plc_dest                0, 9, 5, 3100, 20000
    while                   4, off_30FA
    ck                      5, 5, 0
    evt_next
    nop
    ewhile                  0

off_30FA:
    plc_motion              0, 19, 2
    while                   4, off_310A
    ck                      5, 4, 0
    evt_next
    nop
    ewhile                  0

off_310A:
    plc_ret
    nop
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, 0
    plc_motion              0, 33, 0
    nop
    sleep                   10, 8
    se_on                   2, 269, 3, 0, 0, 0
    sleep                   10, 2
    plc_motion              10, 34, 0
    sleep                   10, 9
    se_on                   2, 285, 3, 0, 0, 0
    sleep                   10, 8
    plc_motion              0, 33, 0
    plc_cnt                 16
    sleep                   10, 20
    plc_motion              0, 35, 20
    gosub                   6
    plc_neck                2, 0, 100, 100, 4, 4
    sleep                   10, 10
    plc_neck                2, 0, 50, 0, 4, 4
    sleep                   10, 16
    sleep                   10, 25
    plc_neck                2, 0, 0, -100, 4, 4
    sleep                   10, 16
    plc_neck                2, 0, 0, 50, 4, 4
    sleep                   10, 16
    plc_neck                2, 0, 80, 0, 4, 4
    sleep                   10, 20
    plc_neck                2, 0, -80, 0, 4, 4
    sleep                   10, 20
    plc_motion              0, 28, 1
    plc_neck                2, 0, 80, 0, 4, 4
    sleep                   10, 20
    plc_neck                2, 0, -80, 0, 4, 4
    sleep                   10, 20
    plc_motion              0, 28, 193
    for                     0, off_31F2, 2
    plc_neck                2, 0, 80, 0, 4, 4
    sleep                   10, 20
    plc_neck                2, 0, -80, 0, 4, 4
    sleep                   10, 20
    next                    0

off_31F2:
    sleep                   10, 20
    plc_motion              0, 31, 1
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 6, 6
    sleep                   10, 14
    plc_motion              0, 31, 193
    sleep                   10, 30
    plc_motion              0, 35, 21
    sleep                   10, 10
    for                     0, off_3240, 2
    plc_neck                2, 0, 30, 10, 3, 3
    sleep                   10, 12
    plc_neck                2, 0, -50, 10, 3, 3
    sleep                   10, 12
    next                    0

off_3240:
    sleep                   10, 30
    plc_motion              0, 28, 1
    for                     0, off_326C, 2
    plc_neck                2, 0, 40, 10, 4, 4
    sleep                   10, 12
    plc_neck                2, 0, -40, 10, 4, 4
    sleep                   10, 12
    next                    0

off_326C:
    plc_motion              0, 28, 193
    plc_neck                5, 1, 0, 0, 6, 6
    while                   6, off_3288
    cmp                     0, 26, CMP_NE, 10
    evt_next
    nop
    ewhile                  0

off_3288:
    plc_motion              0, 35, 21
    while                   6, off_329A
    cmp                     0, 26, CMP_NE, 11
    evt_next
    nop
    ewhile                  0

off_329A:
    gosub                   6
    plc_motion              0, 31, 1
    for                     0, off_32C4, 3
    plc_neck                2, 0, 200, 0, 4, 20
    sleep                   10, 10
    plc_neck                2, 0, -200, 0, 4, 20
    sleep                   10, 10
    next                    0

off_32C4:
    plc_motion              0, 31, 193
    plc_neck                2, 0, 200, 0, 4, 20
    sleep                   10, 10
    plc_neck                2, 0, -200, 0, 4, 20
    sleep                   10, 10
    plc_neck                5, 1, 0, 0, 20, 20
    sleep                   10, 20
    sleep                   10, 40
    plc_cnt                 10
    plc_motion              0, 33, 192
    sleep                   10, 20
    plc_motion              0, 23, 64
    gosub                   6
    plc_neck                2, 0, 0, -100, 4, 4
    sleep                   10, 16
    plc_neck                2, 0, 0, 0, 4, 4
    sleep                   10, 14
    plc_motion              0, 19, 1
    sleep                   10, 15
    plc_neck                2, 0, 80, 30, 4, 2
    plc_motion              0, 19, 209
    plc_cnt                 15
    sleep                   10, 20
    plc_neck                2, 0, -60, 30, 4, 2
    sleep                   10, 10
    plc_motion              0, 22, 1
    sleep                   10, 10
    plc_neck                2, 0, 80, 30, 4, 2
    sleep                   10, 10
    plc_motion              0, 22, 193
    plc_cnt                 10
    sleep                   10, 10
    plc_neck                2, 0, -60, 30, 4, 2
    sleep                   10, 20
    plc_motion              0, 21, 81
    sleep                   10, 18
    plc_motion              0, 21, 193
    plc_cnt                 16
    sleep                   10, 30
    while                   4, off_3398
    ck                      5, 7, 0
    evt_next
    nop
    ewhile                  0

off_3398:
    gosub                   6
    plc_motion              0, 19, 17
    plc_neck                2, 0, -20, -5, 4, 2
    sleep                   10, 30
    plc_neck                2, 0, 20, -5, 4, 2
    sleep                   10, 30
    plc_motion              0, 19, 209
    plc_neck                2, 0, -20, -5, 4, 2
    sleep                   10, 30
    plc_neck                2, 0, 20, -5, 4, 2
    sleep                   10, 30
    plc_motion              0, 22, 1
    plc_neck                2, 0, -80, -5, 4, 2
    sleep                   10, 20
    plc_neck                2, 0, 80, -5, 4, 2
    sleep                   10, 5
    plc_motion              0, 22, 193
    plc_cnt                 10
    sleep                   10, 15
    plc_neck                2, 0, -80, -5, 4, 2
    sleep                   10, 20
    plc_neck                2, 0, 80, -5, 4, 2
    sleep                   10, 20
    gosub                   6
    plc_neck                2, 0, 0, -20, 4, 10
    sleep                   10, 5
    plc_motion              0, 19, 1
    sleep                   10, 15
    plc_motion              0, 19, 209
    plc_cnt                 15
    sleep                   10, 15
    for                     0, off_3466, 2
    plc_neck                2, 0, 80, -30, 4, 4
    sleep                   10, 20
    plc_neck                2, 0, -80, -30, 4, 4
    sleep                   10, 20
    next                    0

off_3466:
    gosub                   6
    plc_neck                5, 1, 0, 0, 10, 10
    sleep                   10, 60
    plc_motion              0, 22, 17
    sleep                   10, 50
    plc_motion              0, 22, 209
    plc_cnt                 10
    sleep                   10, 50
    sleep                   10, 5
    plc_neck                2, 0, 80, -30, 4, 4
    plc_motion              0, 19, 1
    sleep                   10, 5
    plc_neck                2, 0, -80, -30, 4, 4
    sleep                   10, 10
    plc_motion              0, 19, 209
    plc_cnt                 15
    sleep                   10, 15
    for                     0, off_34DA, 2
    plc_neck                2, 0, 80, -30, 4, 4
    sleep                   10, 20
    plc_neck                2, 0, -80, -30, 4, 4
    sleep                   10, 20
    next                    0

off_34DA:
    sleep                   10, 20
    plc_motion              0, 19, 1
    sleep                   10, 10
    plc_neck                2, 0, 80, 15, 4, 4
    sleep                   10, 10
    plc_motion              0, 19, 209
    plc_cnt                 10
    sleep                   10, 20
    for                     0, off_3522, 1
    plc_neck                2, 0, 60, 0, 6, 6
    sleep                   10, 20
    plc_neck                2, 0, -40, 0, 5, 3
    sleep                   10, 20
    next                    0

off_3522:
    gosub                   6
    sleep                   10, 22
    plc_motion              0, 19, 17
    sleep                   10, 10
    plc_neck                2, 0, 80, 30, 4, 4
    sleep                   10, 20
    plc_motion              0, 19, 209
    plc_cnt                 15
    sleep                   10, 15
    for                     0, off_356C, 2
    plc_neck                2, 0, 55, -10, 4, 4
    sleep                   10, 25
    plc_neck                2, 0, -40, -30, 4, 4
    sleep                   10, 25
    next                    0

off_356C:
    sleep                   10, 30
    plc_motion              0, 19, 81
    sleep                   10, 10
    plc_neck                2, 0, -80, -30, 4, 4
    sleep                   10, 20
    plc_motion              0, 19, 209
    plc_cnt                 15
    sleep                   10, 15
    plc_motion              0, 22, 17
    sleep                   10, 50
    plc_motion              0, 22, 209
    plc_cnt                 10
    sleep                   10, 20
    plc_motion              0, 19, 17
    sleep                   10, 10
    plc_neck                2, 0, 80, 30, 4, 4
    sleep                   10, 20
    plc_motion              0, 19, 209
    plc_cnt                 15
    sleep                   10, 15
    plc_neck                5, 1, 0, 0, 10, 10
    while                   6, off_35DA
    cmp                     0, 26, CMP_NE, 12
    evt_next
    nop
    ewhile                  0

off_35DA:
    plc_neck                1, 4186, -4800, 15245, 30, 10
    sleep                   10, 25
    plc_neck                1, 4809, -4400, 9638, 30, 10
    sleep                   10, 20
    plc_neck                1, 715, -4600, 14345, 30, 10
    sleep                   10, 15
    while                   6, off_3612
    cmp                     0, 26, CMP_NE, 11
    evt_next
    nop
    ewhile                  0

off_3612:
    sleep                   10, 40
    plc_neck                3, 1, 0, 0, 60, 60
    sleep                   10, 50
    set                     5, 6, 0
    plc_dest                0, 5, 6, -200, 13000
    sleep                   10, 50
    se_on                   0, 256, 3, 0, 0, 0
    sleep                   10, 30
    se_on                   0, 257, 3, 0, 0, 0
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_06
    while                   4, off_3666
    ck                      5, 6, 0
    evt_next
    nop
    ewhile                  0

off_3666:
    set                     5, 6, 0
    evt_end                 0

.proc main_07
    while                   4, off_3678
    ck                      5, 5, 0
    evt_next
    nop
    ewhile                  0

off_3678:
    set                     5, 5, 0
    evt_end                 0

.proc main_08
    sleep                   10, 60
    sce_bgm_control         0, 4, 0, 100, 64
    sce_bgm_control         2, 4, 0, 100, 64
    sce_fade_set            2, 2, 7, 0, 2
    sleep                   10, 63
    cut_chg                 10
    evt_next
    nop
    sce_fade_set            2, 2, 7, 0, 254
    movie_on                11
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    sleep                   10, 63
    set                     5, 7, 1
    sce_bgm_control         0, 3, 0, 100, 64
    sce_bgm_control         2, 3, 0, 100, 64
    evt_end                 0

.proc main_09
    set                     1, 27, 1
    set                     2, 7, 1
    set                     4, 31, 1
    set                     3, 35, 1
    sce_bgm_control         2, 1, 0, 100, 64
    sce_bgmtbl_set          0, 8, 4, 6164, 32768
    evt_exec                255, I_GOSUB, main_0A
    evt_exec                255, I_GOSUB, main_0B
    evt_exec                255, I_GOSUB, main_0C
    while                   4, off_36F6
    ck                      5, 4, 0
    evt_next
    nop
    ewhile                  0

off_36F6:
    cut_auto                1
    aot_reset               30, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 41, 0, 0, 0, 0, 255
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_0A
    evt_next
    nop
    se_on                   2, 267, 0, 4837, 0, 9937
    sleep                   10, 60
    cut_chg                 9
    set                     5, 14, 1
    set                     5, 13, 1
    sleep                   10, 89
    cut_chg                 14
    set                     5, 13, 1
    sleep                   10, 61
    sleep                   10, 60
    set                     5, 12, 1
    sleep                   10, 3
    message_on              0, 33, 0, 0, 0
    xa_on                   0, 31
    sleep                   10, 60
    wsleep
    wsleeping
    set                     5, 11, 1
    sleep                   10, 2
    cut_chg                 15
    work_set                WK_OBJECT, 0
    nop
    member_set              13, 246, 240
    sleep                   10, 3
    message_on              0, 34, 0, 0, 0
    xa_on                   0, 32
    sleep                   10, 10
    set                     5, 12, 1
    sleep                   10, 120
    wsleep
    wsleeping
    set                     5, 10, 1
    sleep                   10, 2
    cut_chg                 14
    work_set                WK_OBJECT, 0
    nop
    member_set              13, 140, 241
    sleep                   10, 3
    message_on              0, 35, 0, 0, 0
    xa_on                   0, 33
    wsleep
    wsleeping
    set                     5, 11, 1
    sleep                   10, 20
    message_on              0, 45, 0, 0, 0
    xa_on                   0, 34
    set                     5, 10, 1
    wsleep
    wsleeping
    message_on              0, 36, 0, 0, 0
    xa_on                   0, 35
    wsleep
    wsleeping
    sleep                   10, 2
    cut_chg                 15
    work_set                WK_OBJECT, 0
    nop
    member_set              13, 246, 240
    sleep                   10, 3
    message_on              0, 37, 0, 0, 0
    xa_on                   0, 36
    sleep                   10, 120
    wsleep
    wsleeping
    set                     5, 11, 1
    sleep                   10, 2
    message_on              0, 38, 0, 0, 0
    xa_on                   0, 37
    wsleep
    wsleeping
    sleep                   10, 2
    sleep                   10, 40
    cut_chg                 14
    work_set                WK_OBJECT, 0
    nop
    member_set              13, 140, 241
    sleep                   10, 2
    message_on              0, 39, 0, 0, 0
    xa_on                   0, 38
    wsleep
    wsleeping
    set                     5, 10, 1
    sleep                   10, 2
    while                   4, off_3832
    ck                      5, 15, 0
    evt_next
    nop
    ewhile                  0

off_3832:
    sleep                   10, 80
    message_on              0, 40, 0, 0, 0
    xa_on                   0, 39
    sleep                   10, 60
    wsleep
    wsleeping
    set                     5, 11, 1
    cut_chg                 0
    cut_auto                1
    set                     5, 4, 1
    evt_end                 0

.proc main_0B
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, 828, -1800, 12000
    plc_neck                1, 4635, -1800, 9636, 40, 40
    sleep                   10, 20
    plc_dest                0, 21, 5, 0, 128
    while                   4, off_3882
    ck                      5, 5, 0
    evt_next
    nop
    ewhile                  0

off_3882:
    set                     5, 5, 0
    plc_neck                5, 3, 0, 0, 20, 20
    plc_dest                0, 5, 5, 3050, 12000
    while                   4, off_38A4
    ck                      5, 5, 0
    evt_next
    nop
    ewhile                  0

off_38A4:
    set                     5, 5, 0
    while                   4, off_38B4
    ck                      5, 13, 0
    evt_next
    nop
    ewhile                  0

off_38B4:
    set                     5, 13, 0
    pos_set                 0, 1677, -1800, 12130
    while                   4, off_38CC
    ck                      5, 13, 0
    evt_next
    nop
    ewhile                  0

off_38CC:
    set                     5, 13, 0
    pos_set                 0, 3050, -1800, 12130
    while                   4, off_38E4
    ck                      5, 12, 0
    evt_next
    nop
    ewhile                  0

off_38E4:
    set                     5, 12, 0
    plc_neck                5, 3, 0, 0, 20, 20
    plc_motion              0, 22, 17
    sleep                   10, 20
    plc_motion              0, 22, 193
    plc_cnt                 15
    sleep                   10, 20
    plc_motion              1, 6, 16
    while                   4, off_3914
    ck                      5, 12, 0
    evt_next
    nop
    ewhile                  0

off_3914:
    set                     5, 12, 0
    plc_flg                 1, 192
    plc_cnt                 13
    while                   4, off_392A
    ck                      5, 10, 0
    evt_next
    nop
    ewhile                  0

off_392A:
    set                     5, 10, 0
    sleep                   10, 20
    plc_neck                1, 10000, -2100, 12000, 30, 30
    sleep                   10, 40
    plc_neck                5, 3, 0, 0, 20, 20
    plc_motion              0, 19, 1
    sleep                   10, 10
    plc_neck                2, 0, 20, 230, 20, 20
    sleep                   10, 20
    plc_motion              0, 19, 129
    plc_neck                2, 0, 40, 160, 20, 20
    sleep                   10, 30
    for                     0, off_3996, 2
    plc_neck                2, 0, 80, 230, 4, 4
    sleep                   10, 20
    plc_neck                2, 0, -80, 230, 4, 4
    sleep                   10, 20
    next                    0

off_3996:
    plc_neck                5, 3, 0, 0, 30, 30
    while                   4, off_39AC
    ck                      5, 10, 0
    evt_next
    nop
    ewhile                  0

off_39AC:
    set                     5, 10, 0
    plc_neck                2, 0, 0, 160, 20, 20
    sleep                   10, 30
    plc_neck                2, 0, -200, 230, 20, 20
    sleep                   10, 20
    plc_neck                2, 0, -200, 230, 10, 10
    plc_motion              0, 19, 1
    sleep                   10, 20
    plc_motion              0, 19, 129
    plc_cnt                 10
    plc_neck                5, 3, 0, 0, 20, 20
    sleep                   10, 20
    plc_motion              0, 21, 17
    sleep                   10, 20
    plc_motion              0, 21, 145
    plc_cnt                 20
    sleep                   10, 20
    while                   4, off_3A10
    ck                      5, 10, 0
    evt_next
    nop
    ewhile                  0

off_3A10:
    set                     5, 15, 0
    plc_dest                0, 4, 15, 3600, 12172
    while                   4, off_3A28
    ck                      5, 15, 0
    evt_next
    nop
    ewhile                  0

off_3A28:
    plc_motion              1, 6, 1
    sleep                   10, 20
    sleep                   10, 80
    plc_neck                2, 0, -20, 0, 4, 4
    sleep                   10, 100
    while                   4, off_3A4E
    ck                      5, 4, 0
    evt_next
    nop
    ewhile                  0

off_3A4E:
    plc_motion              1, 6, 128
    sleep                   10, 20
    plc_ret
    nop
    evt_end                 0

.proc main_0C
    work_set                WK_ENEMY, 0
    nop
    while                   4, off_3A6A
    ck                      5, 14, 0
    evt_next
    nop
    ewhile                  0

off_3A6A:
    pos_set                 0, 5140, -1800, 10665
    plc_motion              10, 27, 80
    sleep                   10, 10
    se_on                   2, 268, 3, 0, 0, 0
    sleep                   10, 50
    sleep                   10, 8
    sleep                   10, 8
    sleep                   10, 16
    for                     0, off_3AAE, 8
    member_copy             16, 15
    nop
    calc                    0, OP_SUB, 16, 128
    member_set2             15, 16
    nop
    evt_next
    nop
    next                    0

off_3AAE:
    sleep                   10, 5
    se_on                   2, 285, 3, 0, 0, 0
    sleep                   10, 3
    sleep                   10, 16
    sleep                   10, 16
    plc_motion              0, 24, 20
    sleep                   10, 20
    plc_neck                5, 1, 0, 0, 40, 40
    while                   4, off_3AE8
    ck                      5, 11, 0
    evt_next
    nop
    ewhile                  0

off_3AE8:
    set                     5, 11, 0
    sleep                   10, 40
    plc_neck                4, 2, 0, 0, 40, 40
    sleep                   10, 180
    plc_neck                2, 0, 80, 200, 30, 30
    sleep                   10, 10
    plc_neck                2, 0, -80, 200, 30, 30
    sleep                   10, 10
    plc_neck                2, 0, 0, 200, 30, 30
    while                   4, off_3B30
    ck                      5, 11, 0
    evt_next
    nop
    ewhile                  0

off_3B30:
    set                     5, 11, 0
    plc_neck                5, 1, 0, 0, 60, 60
    sleep                   10, 20
    plc_neck                2, 0, 80, -200, 30, 30
    sleep                   10, 10
    plc_neck                2, 0, -80, -200, 30, 30
    sleep                   10, 10
    plc_neck                5, 1, 0, 0, 40, 40
    while                   4, off_3B74
    ck                      5, 11, 0
    evt_next
    nop
    ewhile                  0

off_3B74:
    set                     5, 11, 0
    plc_neck                2, 0, 80, 200, 4, 4
    sleep                   10, 80
    plc_neck                2, 0, -80, 200, 30, 30
    sleep                   10, 10
    plc_neck                2, 0, 80, 200, 30, 30
    sleep                   10, 10
    plc_neck                2, 0, -80, 200, 30, 30
    sleep                   10, 10
    plc_neck                2, 0, 0, 200, 30, 30
    sleep                   10, 30
    sleep                   10, 80
    plc_neck                2, 0, -80, 250, 30, 30
    sleep                   10, 10
    plc_neck                2, 0, 80, 250, 30, 30
    sleep                   10, 10
    plc_neck                2, 0, -80, 250, 30, 30
    sleep                   10, 10
    plc_neck                2, 0, 0, 250, 30, 30
    sleep                   10, 60
    plc_motion              0, 25, 1
    sleep                   10, 26
    plc_motion              0, 36, 0
    plc_cnt                 6
    sleep                   10, 3
    for                     0, off_3C24, 16
    member_copy             16, 15
    nop
    calc                    0, OP_SUB, 16, 32
    member_set2             15, 16
    nop
    evt_next
    nop
    next                    0

off_3C24:
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    evt_end                 0

.proc main_0D
    evt_next
    work_set                WK_ENEMY, 0
    plc_motion              0, 36, 64
    plc_cnt                 117
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    set                     1, 25, 1
    evt_end                 0

.proc main_0E
    work_set                WK_ENEMY, 0
    nop
    for                     0, off_3E7E, 5
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 64
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 61
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 88
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 66
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 63
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 60
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 59
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 59
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 63
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 69
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 64
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 66
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 56
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 64
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 58
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 62
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 61
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 57
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 55
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 55
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 56
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 56
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 60
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 60
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 58
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 49
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 49
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 54
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 56
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 61
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 57
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 58
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 46
    member_set2             11, 16
    nop
    evt_next
    nop
    member_copy             16, 11
    nop
    calc                    0, OP_SUB, 16, 52
    member_set2             11, 16
    nop
    evt_next
    nop
    next                    0

off_3E7E:
    evt_end                 0

.proc main_0F
    aot_set                 24, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 8209, 5565, 2000, 5300, 30, 0, 0, 0, 0, 255
    aot_set                 25, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9091, 4865, 2500, 2300, 30, 0, 0, 0, 0, 255
    aot_set                 26, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 8119, 1765, 2100, 2000, 31, 0, 0, 0, 0, 255
    aot_set                 27, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9640, 3290, 2100, 1500, 31, 0, 0, 0, 0, 255
    aot_set                 28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 4259, 3525, 2100, 1980, 32, 0, 0, 0, 0, 255
    aot_set                 29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -4061, 3525, 2100, 1980, 32, 0, 0, 0, 0, 255
    evt_end                 0

.proc main_10
    evt_next

off_3EFB:
    sce_bgm_control         0, 0, 1, 71, 64
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    nop
    do                      0, off_3F1A
    evt_next
    nop
    edwhile                 off_3F1A
    ck                      1, 11, 0

off_3F1A:
    goto                    255, 255, 0, off_3EFB + 3
    evt_end                 0

.proc main_11
    cut_chg                 4
    sleep                   10, 60
    cut_old
    cut_auto                1
    nop
    evt_end                 0

.proc main_12
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_3F4C
    member_cmp              0, 9, 0, 3, 0
    set                     5, 1, 1
    else                    0, off_3F52

off_3F4C:
    set                     5, 1, 0
    nop
    nop

off_3F52:
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_13
    sleep                   10, 100
    if                      0, off_3F7E
    ck                      4, 30, 0
    evt_exec                255, I_GOSUB, main_1A
    else                    0, off_3F84

off_3F7E:
    evt_exec                255, I_GOSUB, main_19
    nop
    nop

off_3F84:
    cut_chg                 13
    if                      0, off_3FA6
    ck                      1, 0, 1
    if                      0, off_3FA4
    ck                      3, 35, 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 5363, -1800, 13097
    endif
    nop

off_3FA4:
    endif
    nop

off_3FA6:
    set                     1, 28, 1
    sleep                   10, 8
    set                     1, 28, 0
    while                   4, off_3FC0
    ck                      5, 31, 0
    sleep                   10, 1
    ewhile                  0

off_3FC0:
    if                      0, off_4052
    ck                      4, 30, 0
    set                     4, 30, 1
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
    if                      0, off_4006
    ck                      5, 1, 1
    cut_chg                 1
    else                    0, off_400A

off_4006:
    cut_chg                 3
    nop
    nop

off_400A:
    if                      0, off_402A
    ck                      1, 1, 1
    if                      0, off_4028
    ck                      3, 35, 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 5463, -1800, 11997
    endif
    nop

off_4028:
    endif
    nop

off_402A:
    set                     1, 28, 1
    sleep                   10, 8
    set                     1, 28, 0
    sleep                   10, 20
    aot_reset               28, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               29, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    else                    0, off_40DC

off_4052:
    set                     4, 30, 0
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
    set                     1, 28, 1
    sleep                   10, 8
    set                     1, 28, 0
    sleep                   10, 20
    if                      0, off_40A2
    ck                      5, 1, 1
    cut_chg                 5
    else                    0, off_40A6

off_40A2:
    cut_chg                 7
    nop
    nop

off_40A6:
    if                      0, off_40C6
    ck                      1, 1, 1
    if                      0, off_40C4
    ck                      3, 35, 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, 5463, -1800, 11997
    endif
    nop

off_40C4:
    endif
    nop

off_40C6:
    aot_reset               28, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 32, 0, 0, 0, 0, 255
    aot_reset               29, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 32, 0, 0, 0, 0, 255
    nop
    nop

off_40DC:
    cut_auto                1
    aot_reset               3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 10, 0, 50, 0, 1, 0
    aot_reset               4, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 10, 0, 50, 0, 1, 0
    sleep                   10, 30
    set                     2, 7, 0
    set                     1, 27, 0
    aot_on                  10
    evt_next
    set                     5, 3, 1
    nop
    evt_end                 0

.proc main_13
    work_set                WK_PLAYER, 0
    set                     5, 2, 0
    nop
    evt_exec                255, I_GOSUB, main_14
    set                     5, 3, 0
    nop_8c                  0, 90, 110, 12, 0, 80, 0
    if                      0, off_4130
    ck                      5, 1, 1
    evt_exec                255, I_GOSUB, main_15
    else                    0, off_4136

off_4130:
    evt_exec                255, I_GOSUB, main_16
    nop
    nop

off_4136:
    sleep                   10, 10
    sleep                   10, 10
    do                      0, off_414A
    evt_next
    nop
    edwhile                 off_414A
    ck                      5, 2, 0

off_414A:
    evt_end                 0

.proc main_14
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_4182
    ck                      1, 0, 1
    if                      0, off_4170
    ck                      5, 1, 1
    pos_set                 0, 7634, -1800, 3029
    member_set              15, 0, 0
    else                    0, off_417E

off_4170:
    pos_set                 0, -7004, -1800, 3595
    member_set              15, 0, 8
    nop
    nop

off_417E:
    else                    0, off_41AA

off_4182:
    if                      0, off_419A
    ck                      5, 1, 1
    pos_set                 0, 7216, -1800, 2979
    member_set              15, 0, 0
    else                    0, off_41A8

off_419A:
    pos_set                 0, -6586, -1800, 3555
    member_set              15, 0, 8
    nop
    nop

off_41A8:
    nop
    nop

off_41AA:
    sleep                   10, 20
    if                      0, off_41BE
    ck                      1, 0, 1
    plc_motion              0, 15, 0
    else                    0, off_41C4

off_41BE:
    plc_motion              0, 15, 1
    nop
    nop

off_41C4:
    sleep                   10, 30
    if                      0, off_41D8
    ck                      1, 0, 1
    plc_motion              0, 16, 0
    else                    0, off_41DE

off_41D8:
    plc_motion              0, 16, 1
    nop
    nop

off_41DE:
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
    set                     5, 2, 1
    plc_ret
    nop
    evt_end                 0

.proc main_15
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, 8514, -3600, 3024
    member_set              16, 0, 252
    sleep                   10, 20
    sleep                   10, 30
    speed_set               3, 0
    speed_set               9, 1
    for                     0, off_423E, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_423E:
    speed_set               3, 10
    speed_set               9, 1
    for                     0, off_4254, 5
    add_speed
    evt_next
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4254:
    speed_set               9, 2
    for                     0, off_4264, 23
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4264:
    speed_set               9, -10
    for                     0, off_4274, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4274:
    for                     0, off_42A4, 1
    sleep                   10, 17
    speed_set               3, 32
    speed_set               9, 2
    for                     0, off_4292, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4292:
    speed_set               9, -8
    for                     0, off_42A2, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_42A2:
    next                    0

off_42A4:
    while                   4, off_42B0
    ck                      5, 3, 0
    evt_next
    nop
    ewhile                  0

off_42B0:
    pos_set                 0, 0, -20000, 0
    evt_end                 0

.proc main_16
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
    for                     0, off_42EE, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_42EE:
    speed_set               3, -10
    speed_set               9, -1
    for                     0, off_4304, 5
    add_speed
    evt_next
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4304:
    speed_set               9, -2
    for                     0, off_4314, 23
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4314:
    speed_set               9, 10
    for                     0, off_4324, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4324:
    for                     0, off_4354, 1
    sleep                   10, 17
    speed_set               3, -32
    speed_set               9, -2
    for                     0, off_4342, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4342:
    speed_set               9, 8
    for                     0, off_4352, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4352:
    next                    0

off_4354:
    while                   4, off_4360
    ck                      5, 3, 0
    evt_next
    nop
    ewhile                  0

off_4360:
    pos_set                 0, 0, -20000, 0
    evt_end                 0

.proc main_17
    if                      0, off_437A

off_436E:
    cmp                     0, 26, CMP_EQ, 2
    evt_exec                255, I_GOSUB, main_18
    endif
    nop

off_437A:
    do                      0, off_4386
    evt_next
    nop
    edwhile                 off_4386
    ck                      1, 11, 0

off_4386:
    goto                    255, 255, 0, off_436E
    evt_end                 0

.proc main_18
    save                    4, 6000

off_4392:
    for                     0, off_43B0, 20
    work_copy               4, 2, 1
    light_kido_set          0, 0
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 100
    copy                    4, 16
    nop
    next                    0

off_43B0:
    for                     0, off_43CE, 20
    work_copy               4, 2, 1
    light_kido_set          0, 0
    copy                    16, 4
    nop
    calc                    0, OP_SUB, 16, 100
    copy                    4, 16
    nop
    next                    0

off_43CE:
    if                      0, off_43E0
    cmp                     0, 26, CMP_EQ, 2
    goto                    255, 255, 0, off_4392
    endif
    nop

off_43E0:
    evt_end                 0

.proc main_19
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 900, -1800, 4500
    dir_set                 0, 0, -1024, 0
    se_on                   2, 15, 0, 1100, -9000, 4700
    nop_8c                  0, 170, 130, 16, 0, 0, 0
    speed_set               1, -25
    for                     0, off_4418, 16
    add_speed
    evt_next
    next                    0

off_4418:
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
    for                     0, off_44E8, 20
    speed_set               10, -1
    for                     0, off_44D4, 2
    add_speed
    add_aspeed
    evt_next
    add_speed
    evt_next
    nop
    next                    0

off_44D4:
    speed_set               10, 1
    for                     0, off_44E6, 2
    add_speed
    add_aspeed
    evt_next
    add_speed
    evt_next
    nop
    next                    0

off_44E6:
    next                    0

off_44E8:
    speed_set               4, 0
    set                     5, 31, 1
    nop_8c                  0, 160, 200, 2, 0, 0, 0
    nop_8c                  0, 200, 160, 4, 0, 2, 0
    gosub                   27
    evt_next
    set                     5, 31, 0
    nop
    se_on                   2, 270, 0, 900, -9000, 4500
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_1A
    work_set                WK_OBJECT, 2
    nop
    se_on                   2, 15, 0, 1100, -9000, 4700
    pos_set                 0, 900, -9000, 4500
    dir_set                 0, 0, -2048, 0
    speed_set               1, 25
    nop_8c                  0, 170, 130, 16, 0, 0, 0
    for                     0, off_4554, 16
    add_speed
    evt_next
    next                    0

off_4554:
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
    for                     0, off_4624, 20
    speed_set               10, 1
    for                     0, off_4610, 2
    add_speed
    add_aspeed
    evt_next
    add_speed
    evt_next
    nop
    next                    0

off_4610:
    speed_set               10, -1
    for                     0, off_4622, 2
    add_speed
    add_aspeed
    evt_next
    add_speed
    evt_next
    nop
    next                    0

off_4622:
    next                    0

off_4624:
    speed_set               4, 0
    set                     5, 31, 1
    nop_8c                  0, 160, 220, 2, 0, 0, 0
    nop_8c                  0, 220, 140, 10, 0, 2, 0
    gosub                   28
    evt_next
    set                     5, 31, 0
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
    evt_exec                255, I_GOSUB, main_1D
    pos_set                 0, 20000, 20000, 20000
    evt_end                 0

.proc main_1B
    if                      0, off_476E
    ck                      5, 9, 1
    sce_espr_kill           22, 20, 0, 0
    evt_next
    endif
    nop

off_476E:
    set                     5, 9, 1
    sce_espr3d_on           0, 1046, 0, 4096, 9000, -4700, 3200, 0, 3072, 0, 0
    sce_espr3d_on           0, 1046, 0, 4096, -8600, -4700, 3900, 0, 1024, 0, 0
    evt_end                 0

.proc main_1C
    if                      0, off_47B0
    ck                      5, 9, 1
    sce_espr_kill           22, 4, 0, 0
    evt_next
    endif
    nop

off_47B0:
    set                     5, 9, 1
    sce_espr3d_on           0, 5142, 0, 4096, 9000, -4700, 3200, 0, 3072, 0, 0
    sce_espr3d_on           0, 5142, 0, 4096, -8600, -4700, 3900, 0, 1024, 0, 0
    evt_end                 0

.proc main_1D
    work_set                WK_OBJECT, 0
    nop
    speed_set               1, 0
    speed_set               7, 1
    for                     0, off_47FA, 5
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_47FA:
    for                     0, off_4822, 10
    speed_set               7, -1
    for                     0, off_4810, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4810:
    speed_set               7, 1
    for                     0, off_4820, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4820:
    next                    0

off_4822:
    speed_set               7, -1
    for                     0, off_4832, 10
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_4832:
    member_set              12, 216, 250
    evt_end                 0

.proc main_1E
    obj_model_set           6, 0, 0, 0, 0, 1, 0, 10, 16, -1809, -1800, 12199, 0, 896, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -2099, 11169, 770, 2060, 255, 0, I_GOSUB, main_1F, 0, 0
    evt_end                 0

.proc main_1F
    set                     2, 7, 1
    set                     2, 2, 1
    set                     2, 1, 1
    set                     2, 0, 1
    message_on              0, 42, 0, 0, 255
    evt_next
    nop
    if                      0, off_48A6
    ck                      11, 31, 0
    se_on                   4, 6, 0, 0, 0, 0
    gosub                   32
    else                    0, off_48B4

off_48A6:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_48B4:
    set                     2, 0, 0
    set                     2, 2, 0
    set                     2, 1, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_20
    if                      0, off_48D8
    poison_ck
    nop
    message_on              0, 44, 0, 0, 255
    evt_next
    poison_clr
    else                    0, off_48E2

off_48D8:
    message_on              0, 43, 0, 0, 255
    evt_next
    nop
    nop
    nop

off_48E2:
    evt_end                 0
