.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9800, -14500, 1800, 1800, -26100, 0, -23200, 0, 6, 1, 6, 0, 26, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 0, -26500, -12600, -19500, -1024, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27350, -27250, 1800, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28250, -25750, 1800, 2400, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9800, -14500, 1800, 1800, 255, 0, I_GOSUB, main_06, 0, 0
    aot_set                 3, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -27350, -27250, 1800, 1800, 10, 0, 84, 0, 1, 0
    aot_set                 13, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -28250, -25750, 1800, 2400, 10, 0, 84, 0, 1, 0
    aot_set                 4, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -27350, -27250, 1800, 1800, 10, 0, 85, 0, 1, 0
    aot_set                 14, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -28250, -25750, 1800, 2400, 10, 0, 85, 0, 1, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26200, -23200, 3400, 2500, ITEM_ROCKETLAUNCHER, 2, 40, 0, 1
    if                      0, off_1262
    ck                      4, 151, 0
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 2, 6, 0, 0, 255, -28000, -12600, -17900, 1600, 0, 0
    sce_em_set              0, 0, ENEMY_TYRANT2, 0, 0, 0, 26, 0, 40, -8000, 9000, -25000, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    gosub                   17
    endif
    nop

off_1262:
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_12AC
    ck                      4, 136, 1
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               13, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               14, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     15, 6, 1
    set                     16, 1, 1
    set                     17, 1, 1
    else                    0, off_12BA

off_12AC:
    set                     15, 6, 0
    set                     16, 1, 0
    set                     17, 1, 0
    nop
    nop

off_12BA:
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_12D2
    ck                      4, 160, 0
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_12D2:
    sce_espr3d_on           0, 534, 0, 3328, -26370, -1700, -26262, -256, 0, 0, 0
    evt_exec                255, I_GOSUB, main_09
    gosub                   19
    evt_end                 0

.proc main_01
    if                      0, off_12FC
    ck                      1, 11, 1
    gosub                   19
    endif
    nop

off_12FC:
    if                      0, off_134A
    ck                      4, 136, 0
    if                      0, off_1326
    cmp                     0, 2, CMP_EQ, 84
    if                      0, off_131E
    keep_item_ck            84
    keep_item_ck            85
    evt_exec                255, I_GOSUB, main_04
    else                    0, off_1324

off_131E:
    evt_exec                255, I_GOSUB, main_05
    nop
    nop

off_1324:
    endif
    nop

off_1326:
    if                      0, off_1348
    cmp                     0, 2, CMP_EQ, 85
    if                      0, off_1340
    keep_item_ck            84
    keep_item_ck            85
    evt_exec                255, I_GOSUB, main_04
    else                    0, off_1346

off_1340:
    evt_exec                255, I_GOSUB, main_05
    nop
    nop

off_1346:
    endif
    nop

off_1348:
    endif
    nop

off_134A:
    if                      0, off_1360
    ck                      7, 40, 0
    ck                      4, 151, 0
    ck                      5, 13, 0
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_1360:
    if                      0, off_1376
    ck                      7, 40, 0
    ck                      4, 151, 0
    ck                      5, 11, 0
    evt_exec                255, I_GOSUB, main_0E
    endif
    nop

off_1376:
    if                      0, off_1390
    ck                      7, 40, 1
    ck                      4, 151, 0
    ck                      5, 12, 0
    set                     5, 12, 1
    evt_exec                255, I_GOSUB, main_10
    endif
    nop

off_1390:
    evt_end                 0

.proc main_02
    set                     2, 7, 1
    set                     1, 27, 1
    sleep                   10, 30
    nop_8a                  0, 10, 0, 0, 0
    nop_8b                  180, 10, 0, 5, 0
    nop_8b                  250, 5, 0, 10, 0
    set                     1, 29, 1
    se_on                   2, 17, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    sleep                   10, 30
    plc_neck                2, 0, -512, -512, 60, 30
    set                     1, 29, 0
    sleep                   10, 30
    plc_neck                2, 0, 512, -512, 60, 30
    wsleep
    wsleeping
    plc_neck                2, 0, 0, -256, 60, 30
    sleep                   10, 30
    plc_neck                2, 0, 0, -512, 60, 30
    set                     4, 160, 1
    gosub                   18
    evt_end                 0

.proc main_03
    if                      0, off_1420
    ck                      4, 136, 0
    cut_chg                 4
    message_on              0, 0, 0, 255, 255
    sleep                   10, 1
    cut_old
    nop
    else                    0, off_1456

off_1420:
    if                      0, off_1448
    ck                      7, 40, 0
    sce_espr3d_on           0, 277, 0, 10240, -27900, -3900, -26800, -96, 288, 144, 0
    message_on              0, 1, 0, 255, 255
    else                    0, off_1450

off_1448:
    message_on              0, 3, 0, 255, 255
    nop
    nop

off_1450:
    sleep                   10, 1
    nop
    nop

off_1456:
    evt_end                 0

.proc main_04
    cut_chg                 4
    se_on                   2, 10, 0, 0, 0, 0
    set                     4, 136, 1
    set                     15, 6, 1
    set                     16, 1, 1
    set                     17, 1, 1
    sce_item_lost           84
    sce_item_lost           85
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               13, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               14, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    sleep                   10, 10
    se_on                   2, 12, 0, 0, 0, 0
    sleep                   10, 20
    cut_chg                 3
    set                     2, 7, 0
    sce_espr3d_on           0, 21, 0, 10240, -27900, -3900, -26800, -96, 288, 144, 0
    sce_espr3d_on           0, 2070, 0, 10240, -27900, -3900, -26800, -96, 288, 144, 0
    se_on                   2, 19, 0, 0, 0, 0
    message_on              0, 1, 0, 255, 239
    sleep                   10, 1
    sce_espr_kill           21, 0, 0, 0
    sce_espr_kill           22, 8, 0, 0
    sleep                   10, 1
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    aot_reset               0, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    cut_replace             0, 12
    cut_replace             1, 13
    cut_replace             2, 14
    cut_replace             3, 15
    cut_chg                 15
    se_on                   2, 11, 0, 0, 0, 0
    cut_auto                1
    set                     2, 7, 1
    evt_exec                255, I_GOSUB, main_07
    evt_end                 0

.proc main_05
    sce_espr3d_on           0, 21, 0, 10240, -27900, -3900, -26800, -96, 288, 144, 0
    sce_espr3d_on           0, 22, 0, 10240, -27900, -3900, -26800, -96, 288, 144, 0
    se_on                   2, 18, 0, 0, 0, 0
    message_on              0, 4, 0, 255, 239
    sleep                   10, 1
    sce_espr_kill           21, 0, 0, 0
    sce_espr_kill           22, 0, 0, 0
    evt_end                 0

.proc main_06
    message_on              0, 2, 0, 255, 255
    se_on                   2, 22, 0, 0, 0, 0
    evt_end                 0

.proc main_07
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 33, 2048, 128
    plc_neck                2, 0, -512, -512, 60, 30
    sleep                   10, 30
    plc_neck                2, 0, 512, -512, 60, 30
    sleep                   10, 30
    plc_neck                2, 0, 0, -256, 60, 30
    sleep                   10, 30
    plc_neck                0, 0, 0, 0, 60, 30
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -19800, 0, -19600
    dir_set                 0, 0, 1400, 0
    member_set              39, 168, 178
    member_set              40, 112, 179
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_08
    sce_bgm_control         0, 2, 0, 0, 0
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    se_on                   2, 13, 0, 0, 0, 0
    set                     1, 28, 1
    sleep                   10, 20
    set                     1, 28, 0
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -24500, 0, -25400
    dir_set                 0, 0, 2048, 0
    plc_dest                0, 21, 33, 3600, 128
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -18000, 0, -18000
    dir_set                 0, 0, 1400, 0
    member_set              39, 176, 185
    member_set              40, 176, 185
    sleep                   10, 60
    cut_chg                 6
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 2, 0
    set                     1, 4, 0
    sleep                   10, 1
    xa_on                   0, 5
    sleep                   10, 160
    sleep                   10, 40
    sleep                   10, 90
    wsleep
    wsleeping
    set                     1, 4, 1
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 3, 0
    cut_chg                 15
    evt_exec                255, I_GOSUB, main_0A
    sce_bgm_control         2, 1, 0, 0, 0
    gosub                   18
    evt_end                 0

.proc main_08
    sleep                   10, 15
    se_on                   2, 16, 0, 0, 0, 0
    sce_espr_on             0, 3354, 0, 12288, -11500, -1000, -23000, 0
    sce_espr_on             0, 3354, 0, 8192, -12100, 300, -22000, 0
    sce_espr_on             0, 3354, 0, 8192, -12500, 300, -23000, 0
    sce_espr_on             0, 3354, 0, 8192, -12500, 300, -24000, 0
    evt_end                 0

.proc main_09
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 5
    copy                    11, 16
    nop
    copy                    16, 11
    nop
    calc                    0, OP_ADD, 16, 5
    copy                    11, 16
    nop
    for                     0, off_1748, 11
    sleep                   10, 10
    next                    0

off_1748:
    sleep                   10, 90
    if                      0, off_1788
    ck                      5, 20, 0
    sce_espr_on             0, 3354, 0, 12288, -24000, 500, -13500, 0
    se_on                   2, 16, 0, 0, 0, 0
    set                     1, 28, 1
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  90, 1, 0, 0, 0
    nop_8b                  150, 5, 0, 1, 0
    endif
    nop

off_1788:
    copy                    16, 29
    nop
    calc                    0, OP_MOD, 16, 5
    copy                    11, 16
    nop
    copy                    16, 11
    nop
    calc                    0, OP_ADD, 16, 5
    copy                    11, 16
    nop
    for                     0, off_17B0, 11
    sleep                   10, 4
    next                    0

off_17B0:
    if                      0, off_17C6
    ck                      5, 20, 0
    se_on                   2, 17, 0, 0, 0, 0
    endif
    nop

off_17C6:
    sleep                   10, 30
    set                     1, 28, 0
    evt_exec                255, I_GOSUB, main_09
    evt_end                 0

.proc main_0A
    sleep                   10, 1800
    set                     5, 15, 1
    evt_end                 0

.proc main_0B
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_17FC
    member_cmp              0, 25, 0, 1, 0
    member_cmp              0, 26, 0, 1, 0
    set                     5, 13, 1
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_17FC:
    if                      0, off_1818
    ck                      5, 15, 1
    member_cmp              0, 26, 0, 1, 0
    ck                      5, 13, 0
    set                     5, 13, 1
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_1818:
    evt_end                 0

.proc main_0C
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_ENEMY, 0
    nop
    member_set              7, 0, 128
    copy                    4, 26
    nop
    work_set                WK_PLAYER, 0
    nop
    member_copy             5, 11
    nop
    member_copy             6, 13
    nop
    member_copy             7, 15
    nop
    work_set                WK_ENEMY, 0
    nop
    member_copy             8, 11
    nop
    member_copy             9, 13
    nop
    member_copy             10, 15
    nop
    cut_chg                 7
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 129, 138, 0, 600, -50, -896, 0, 1024
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -28000, -7500, -17900
    dir_set                 0, 0, 3700, 0
    plc_motion              10, 18, 64
    sleep                   10, 1
    plc_dest                0, 20, 0, 0, 0
    xa_on                   0, 0
    message_on              0, 5, 0, 0, 0
    sleep                   10, 30
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -28000, -7500, -17900
    dir_set                 0, 0, 3700, 0
    plc_motion              10, 18, 64
    sleep                   10, 20
    work_set                WK_OBJECT, 0
    nop
    super_reset             0, -1216, 576, 1024
    evt_exec                255, I_GOSUB, main_0D
    wsleep
    wsleeping
    do                      0, off_18D0
    evt_next
    nop
    edwhile                 off_18D0
    ck                      5, 14, 0

off_18D0:
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -18600, 0, -21700
    dir_set                 0, 0, -1800, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -8000, 0, -25000
    dir_set                 0, 0, 0, 0
    cut_chg                 11
    sleep                   10, 1
    if                      0, off_1918
    ck                      1, 0, 0
    xa_on                   0, 1
    message_on              0, 6, 0, 0, 0
    else                    0, off_1924

off_1918:
    xa_on                   0, 1
    message_on              0, 8, 0, 0, 0
    nop
    nop

off_1924:
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -700, 60, 30
    plc_motion              0, 17, 64
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 21, 35, 1600, 96
    wsleep
    wsleeping
    work_copy               4, 1, 0
    cut_chg                 0
    aot_reset               5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 17, 0, 2, 0, 40, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -28000, -12600, -17900
    dir_set                 0, 0, 1600, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    work_set                WK_PLAYER, 0
    nop
    member_set2             11, 5
    nop
    member_set2             13, 6
    nop
    member_set2             15, 7
    nop
    member_set2             39, 5
    nop
    member_set2             40, 6
    nop
    work_set                WK_ENEMY, 0
    nop
    member_set2             11, 8
    nop
    member_set2             13, 9
    nop
    member_set2             15, 10
    nop
    member_set2             39, 8
    nop
    member_set2             40, 9
    nop
    sleep                   10, 1
    gosub                   18
    evt_end                 0

.proc main_0D
    work_set                WK_OBJECT, 0
    nop
    speed_set               2, 10
    speed_set               1, 20
    speed_set               0, 25
    speed_set               8, 0
    speed_set               7, 20
    speed_set               6, 5
    do                      0, off_19DE
    evt_next
    add_speed
    add_aspeed
    nop
    edwhile                 off_19DE
    member_cmp              0, 12, 3, 224, 252

off_19DE:
    set                     5, 14, 1
    se_on                   2, 14, 0, 0, 0, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -24650, 0, -22000
    dir_set                 0, -1024, 0, 1024
    member_set              10, 16, 0
    evt_end                 0

.proc main_0E
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_1A20
    member_cmp              0, 24, 0, 1, 0
    set                     5, 11, 1
    evt_exec                255, I_GOSUB, main_0F
    endif
    nop

off_1A20:
    evt_end                 0

.proc main_0F
    sce_bgm_control         2, 2, 0, 0, 0
    set                     5, 20, 1
    set                     1, 4, 0
    sleep                   10, 15
    if                      0, off_1A4A
    ck                      1, 0, 0
    xa_on                   0, 2
    message_on              0, 7, 0, 0, 0
    else                    0, off_1A56

off_1A4A:
    xa_on                   0, 2
    message_on              0, 9, 0, 0, 0
    nop
    nop

off_1A56:
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    member_set              24, 2, 0
    sleep                   10, 32
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    nop
    member_set              24, 3, 0
    evt_end                 0

.proc main_10
    set                     2, 7, 1
    set                     1, 27, 1
    set                     5, 20, 0
    work_set                WK_ENEMY, 0
    nop
    member_set              24, 4, 0
    sleep                   10, 1
    set                     2, 7, 1
    sleep                   10, 60
    cut_replace             12, 0
    cut_replace             13, 1
    cut_replace             14, 2
    cut_replace             15, 3
    set                     1, 4, 1
    sce_bgm_control         0, 1, 0, 0, 0
    sce_bgmtbl_set          0, 2, 7, 12049, 32768
    sce_bgmtbl_set          0, 3, 7, 11299, 32832
    se_on                   2, 11, 0, 0, 0, 0
    if                      0, off_1AD2
    cmp                     0, 26, CMP_EQ, 12
    cut_chg                 0
    endif
    nop

off_1AD2:
    if                      0, off_1AE0
    cmp                     0, 26, CMP_EQ, 13
    cut_chg                 1
    endif
    nop

off_1AE0:
    if                      0, off_1AEE
    cmp                     0, 26, CMP_EQ, 14
    cut_chg                 2
    endif
    nop

off_1AEE:
    if                      0, off_1AFC
    cmp                     0, 26, CMP_EQ, 15
    cut_chg                 3
    endif
    nop

off_1AFC:
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 12, 154, 0, 0, 96, 165
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     4, 151, 1
    sce_bgm_control         1, 1, 1, 127, 64
    sce_bgm_control         1, 0, 1, 127, 64
    gosub                   18
    evt_end                 0

.proc main_11
    save                    11, 0
    for                     0, off_1B52, 15
    work_copy               11, 2, 0
    parts_set               0, 0, 0, 8224
    work_copy               11, 2, 0
    parts_set               0, 0, 1, 32
    copy                    16, 11
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    11, 16
    nop
    next                    0

off_1B52:
    evt_end                 0

.proc main_12
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_13
    if                      0, off_1BFC
    ck                      4, 151, 0
    switch                  26, off_1BFA
    case                    0, off_1B76, 0

off_1B76:
    case                    0, off_1B84, 1
    sce_bgm_control         1, 0, 1, 60, 64
    break                   0

off_1B84:
    case                    0, off_1B92, 2
    sce_bgm_control         1, 0, 1, 70, 64
    break                   0

off_1B92:
    case                    0, off_1BA0, 3
    sce_bgm_control         1, 0, 1, 80, 64
    break                   0

off_1BA0:
    case                    0, off_1BAE, 4
    sce_bgm_control         1, 0, 1, 90, 64
    break                   0

off_1BAE:
    case                    0, off_1BB4, 5

off_1BB4:
    case                    0, off_1BBA, 6

off_1BBA:
    case                    0, off_1BC0, 7

off_1BC0:
    case                    0, off_1BC6, 8

off_1BC6:
    case                    0, off_1BCC, 9

off_1BCC:
    case                    0, off_1BD2, 10

off_1BD2:
    case                    0, off_1BD8, 11

off_1BD8:
    case                    0, off_1BDE, 12

off_1BDE:
    case                    0, off_1BE4, 13

off_1BE4:
    case                    0, off_1BEA, 14

off_1BEA:
    case                    0, off_1BF8, 15
    sce_bgm_control         1, 2, 1, 0, 64
    break                   0

off_1BF8:
    eswitch                 0

off_1BFA:
    endif
    nop

off_1BFC:
    evt_end                 0
    db                      0x39, 0x39
