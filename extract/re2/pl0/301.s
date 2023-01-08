.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27000, -15750, 3500, 1000, -25000, 0, -14600, -1024, 1, 25, 5, 0, 20, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -23500, 0, -27600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1ABA
    ck                      3, 66, 1
    gosub                   28
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -23500, 0, -26000
    else                    0, off_1ABE

off_1ABA:
    gosub                   29
    nop
    nop

off_1ABE:
    if                      0, off_1B3A
    ck                      3, 64, 0
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 0, 0, 0, 0, 255, -25000, 0, -12000, 0, 0, 0
    sce_em_set              0, 0, ENEMY_BENBERTOLUCCI2, 0, 0, 0, 0, 0, 255, -17950, 0, -24000, 1024, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -27270, -27900, 4500, 1000, 255, 0, I_GOSUB, main_02, 0, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23970, -27900, 1800, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    else                    0, off_1DB8

off_1B3A:
    if                      0, off_1C88
    ck                      1, 1, 0
    if                      0, off_1C1C
    ck                      3, 66, 1
    ck                      3, 65, 0
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 8, 0, 0, 0, 255, -25000, 0, -12000, 0, 0, 0
    sce_em_set              0, 0, ENEMY_BENBERTOLUCCI1, 0, 0, 0, 0, 0, 255, -24300, 0, -22000, 2352, 270, 4
    sce_em_set              0, 1, ENEMY_39, 1, 0, 0, 0, 0, 255, -24000, 0, -12000, 0, 0, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_110, 1, 44, 255, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26100, -27300, 1800, 1800, 255, 0, I_GOSUB, main_1F, 0, 0
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     3, 65, 1
    evt_exec                255, I_GOSUB, main_04
    else                    0, off_1C84

off_1C1C:
    if                      0, off_1C52
    ck                      3, 65, 0
    sce_em_set              0, 0, ENEMY_BENBERTOLUCCI2, 0, 0, 0, 0, 0, 255, -21600, 0, -25700, 1920, 0, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23970, -27900, 1800, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    else                    0, off_1C82

off_1C52:
    sce_em_set              0, 0, ENEMY_BENBERTOLUCCI1, 0, 2, 0, 0, 0, 255, -25477, 0, -26325, 3280, 256, 192
    evt_exec                255, I_GOSUB, main_06
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26100, -27300, 1800, 1800, 255, 0, I_GOSUB, main_1F, 0, 0
    nop
    nop

off_1C82:
    nop
    nop

off_1C84:
    else                    0, off_1DB6

off_1C88:
    if                      0, off_1D4C
    ck                      3, 66, 1
    ck                      3, 65, 0
    sce_em_set              0, 255, ENEMY_ADAWONG1, 0, 8, 0, 0, 0, 255, -25000, 0, -12000, 0, 0, 0
    sce_em_set              0, 0, ENEMY_BENBERTOLUCCI1, 0, 1, 0, 0, 0, 255, -24300, 0, -22000, 2352, 270, 4
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_110, 1, 44, 255, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24800, -23700, 1800, 1800, 255, 0, I_GOSUB, main_20, 0, 0
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     3, 65, 1
    evt_exec                255, I_GOSUB, main_07
    else                    0, off_1DB4

off_1D4C:
    if                      0, off_1D82
    ck                      3, 65, 0
    sce_em_set              0, 0, ENEMY_BENBERTOLUCCI2, 0, 0, 0, 0, 0, 255, -21600, 0, -25700, 1920, 0, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23970, -27900, 1800, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    else                    0, off_1DB2

off_1D82:
    sce_em_set              0, 0, ENEMY_BENBERTOLUCCI1, 0, 1, 0, 0, 0, 255, -24300, 0, -22000, 2352, 275, 192
    evt_exec                255, I_GOSUB, main_08
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24800, -23700, 1800, 1800, 255, 0, I_GOSUB, main_20, 0, 0
    nop
    nop

off_1DB2:
    nop
    nop

off_1DB4:
    nop
    nop

off_1DB6:
    nop
    nop

off_1DB8:
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -26600, -2450, -29000, 0, 0, -512, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -16380, 0, -16860, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -16380, 0, -20260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26950, -29650, 1000, 1000, ITEM_MANHOLEOPENER, 1, 118, 3, 160
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17282, -17358, 1400, 1400, ITEM_HERBB, 1, 136, 4, 1
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17282, -21058, 1400, 1400, ITEM_HERBG, 1, 172, 5, 1
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    set                     3, 64, 1
    aot_reset               1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    evt_kill                9
    evt_exec                9, I_GOSUB, main_18
    cut_chg                 4
    set                     2, 7, 1
    set                     1, 27, 1
    sleep                   10, 1
    sce_bgm_control         1, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 33, -24360, -27100
    gosub                   9
    plc_dest                0, 21, 33, 0, 128
    gosub                   9
    sleep                   10, 60
    cut_chg                 6
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -24360, 0, -27100
    dir_set                 0, 0, 0, 0
    sleep                   10, 15
    sleep                   10, 1
    xa_on                   0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 10
    message_on              0, 3, 0, 0, 0
    sleep                   10, 20
    plc_motion              0, 10, 128
    sleep                   10, 20
    plc_motion              0, 11, 128
    sleep                   10, 30
    plc_motion              0, 8, 0
    sleep                   10, 20
    plc_motion              0, 8, 136
    sleep                   10, 10
    se_on                   2, 12, 0, 0, 0, 0
    sleep                   10, 10
    plc_motion              0, 8, 0
    sleep                   10, 20
    plc_motion              0, 8, 136
    sleep                   10, 10
    se_on                   2, 12, 0, 0, 0, 0
    sleep                   10, 10
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 7
    work_set                WK_ENEMY, 0
    nop
    se_on                   2, 10, 0, 0, 0, 0
    plc_motion              0, 2, 64
    sleep                   10, 30
    sleep                   10, 1
    xa_on                   0, 1
    message_on              0, 4, 0, 0, 0
    sleep                   10, 40
    sleep                   10, 30
    plc_motion              0, 3, 1
    se_on                   2, 11, 0, 0, 0, 0
    sleep                   10, 35
    wsleep
    wsleeping
    evt_kill                9
    evt_exec                9, I_GOSUB, main_19
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -26300, 0, -17800
    dir_set                 0, 0, 1024, 0
    se_on                   2, 8, 0, 0, 0, 0
    sleep                   10, 30
    sleep                   10, 10
    cut_chg                 6
    work_set                WK_SPLAYER, 0
    nop
    sleep                   10, 15
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 34, -24450, -25650
    gosub                   14
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    plc_dest                0, 21, 34, 340, 128
    gosub                   14
    plc_dest                0, 20, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 33, 3400, 128
    gosub                   9
    sleep                   10, 1
    xa_on                   0, 2
    message_on              0, 5, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 20
    plc_motion              0, 10, 128
    sleep                   10, 20
    plc_motion              0, 13, 4
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 21, 34, 0, 128
    gosub                   14
    sleep                   10, 1
    xa_on                   0, 3
    message_on              0, 6, 0, 0, 0
    sleep                   10, 1
    plc_motion              0, 10, 0
    sleep                   10, 20
    sleep                   10, 15
    plc_motion              0, 10, 128
    sleep                   10, 20
    plc_motion              0, 9, 0
    sleep                   10, 30
    sleep                   10, 15
    plc_motion              0, 9, 128
    sleep                   10, 30
    plc_motion              0, 11, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 11, 128
    sleep                   10, 30
    plc_motion              0, 12, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 13, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 8
    sleep                   10, 1
    xa_on                   0, 4
    message_on              0, 7, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 10, 128
    sleep                   10, 20
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 6
    message_on              0, 8, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 8, 0
    nop
    sleep                   10, 20
    sleep                   10, 15
    plc_motion              0, 8, 128
    sleep                   10, 20
    sleep                   10, 15
    plc_motion              0, 9, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 9, 128
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 12, 0
    sleep                   10, 25
    plc_motion              0, 13, 4
    sleep                   10, 30
    plc_motion              0, 10, 0
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 10, 128
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 12, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 13, 4
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 7
    message_on              0, 9, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 8, 0
    nop
    sleep                   10, 20
    sleep                   10, 30
    plc_motion              0, 8, 128
    sleep                   10, 20
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 13
    sleep                   10, 30
    sleep                   10, 1
    xa_on                   0, 8
    message_on              0, 10, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 9, 0
    nop
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 9, 128
    sleep                   10, 30
    sleep                   10, 10
    plc_dest                0, 21, 35, 0, 32
    gosub                   22
    plc_motion              0, 12, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 13, 4
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 6
    sleep                   10, 1
    xa_on                   0, 9
    message_on              0, 11, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 33, 0, 128
    gosub                   9
    plc_motion              0, 9, 0
    sleep                   10, 30
    sleep                   10, 20
    plc_motion              0, 9, 128
    sleep                   10, 30
    plc_motion              0, 8, 0
    sleep                   10, 20
    plc_motion              0, 8, 136
    sleep                   10, 10
    se_on                   2, 12, 0, 0, 0, 0
    sleep                   10, 10
    plc_motion              0, 8, 0
    sleep                   10, 20
    plc_motion              0, 8, 136
    sleep                   10, 10
    se_on                   2, 12, 0, 0, 0, 0
    sleep                   10, 10
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 8
    sleep                   10, 1
    xa_on                   0, 10
    message_on              0, 12, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    plc_motion              0, 12, 128
    sleep                   10, 25
    plc_motion              0, 8, 0
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 8, 128
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 11, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 11, 128
    sleep                   10, 30
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 13
    sleep                   10, 1
    xa_on                   0, 11
    message_on              0, 13, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 9, 0
    nop
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 9, 128
    sleep                   10, 30
    plc_motion              0, 11, 0
    sleep                   10, 25
    plc_motion              0, 13, 4
    plc_neck                0, 0, 0, 0, 60, 30
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 60
    se_on                   2, 13, 0, 0, 0, 0
    sce_bgm_control         2, 1, 0, 0, 0
    cut_chg                 4
    sleep                   10, 30
    sleep                   10, 1
    xa_on                   0, 12
    message_on              0, 14, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 33, 3072, 128
    gosub                   9
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 21, 35, 3072, 128
    gosub                   22
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 21, 34, 3072, 128
    gosub                   14
    wsleep
    wsleeping
    sleep                   10, 60
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 20, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 20, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 20, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 13
    message_on              0, 15, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 10, 128
    sleep                   10, 20
    evt_kill                9
    evt_exec                9, I_GOSUB, main_0D
    plc_motion              0, 11, 0
    sleep                   10, 25
    plc_motion              0, 13, 4
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 20, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 20, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 20, 0, 0, 0
    wsleep
    wsleeping
    cut_chg                 8
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 21, 35, 1920, 128
    gosub                   22
    sleep                   10, 1
    xa_on                   0, 14
    message_on              0, 16, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 8, 0
    nop
    sleep                   10, 20
    plc_motion              0, 8, 128
    sleep                   10, 20
    plc_motion              0, 12, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 13, 4
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 15
    message_on              0, 17, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 10, 128
    sleep                   10, 20
    plc_motion              0, 9, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 9, 0
    sleep                   10, 30
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 16
    message_on              0, 18, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    plc_motion              0, 10, 0
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 10, 128
    sleep                   10, 20
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 6
    sleep                   10, 1
    xa_on                   0, 17
    message_on              0, 19, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 10, 128
    sleep                   10, 20
    plc_motion              0, 9, 0
    sleep                   10, 15
    plc_motion              0, 9, 128
    sleep                   10, 15
    plc_motion              0, 8, 0
    sleep                   10, 20
    plc_motion              0, 8, 128
    sleep                   10, 20
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 13
    sleep                   10, 1
    xa_on                   0, 18
    message_on              0, 20, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                0, 0, 0, 0, 60, 30
    plc_motion              0, 11, 0
    sleep                   10, 30
    plc_motion              0, 11, 128
    sleep                   10, 30
    plc_motion              0, 12, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 13, 4
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 19
    message_on              0, 21, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 12, 128
    nop
    sleep                   10, 25
    plc_motion              0, 8, 0
    sleep                   10, 20
    plc_motion              0, 8, 128
    sleep                   10, 20
    plc_motion              0, 11, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 11, 128
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 9, 0
    sleep                   10, 30
    plc_motion              0, 9, 128
    sleep                   10, 30
    plc_motion              0, 10, 0
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 10, 128
    sleep                   10, 20
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 6
    sleep                   10, 1
    xa_on                   0, 20
    message_on              0, 22, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 8, 0
    nop
    sleep                   10, 20
    plc_motion              0, 8, 128
    sleep                   10, 20
    plc_dest                0, 21, 34, 3072, 128
    gosub                   14
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -21600, 0, -25700
    dir_set                 0, 0, 1920, 0
    work_set                WK_SPLAYER, 0
    nop
    sleep                   10, 15
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 34, -26300, -17800
    gosub                   14
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    pos_set                 0, -25000, 0, -12000
    dir_set                 0, 0, 0, 0
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 33, 3072, 128
    se_on                   2, 8, 0, 0, 0, 0
    sleep                   10, 30
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    sce_bgm_control         2, 2, 0, 0, 0
    if                      0, off_26E0
    ck                      1, 1, 0
    sce_bgmtbl_set          0, 1, 3, 4095, 49152
    else                    0, off_26EA

off_26E0:
    sce_bgmtbl_set          0, 1, 3, 4095, 49152
    nop
    nop

off_26EA:
    cut_chg                 1
    gosub                   12
    unk                     132, 2
    evt_end                 0

.proc main_03
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    set                     1, 27, 1
    cut_chg                 8
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 60, 30
    pos_set                 0, -24360, 0, -27100
    dir_set                 0, 0, 0, 0
    sleep                   10, 15
    if                      0, off_27DA
    ck                      3, 68, 0
    sleep                   10, 1
    xa_on                   0, 19
    message_on              0, 21, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 20, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    plc_motion              0, 12, 128
    sleep                   10, 25
    plc_motion              0, 8, 0
    sleep                   10, 20
    plc_motion              0, 8, 128
    sleep                   10, 20
    plc_motion              0, 11, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 11, 128
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 9, 0
    sleep                   10, 30
    plc_motion              0, 9, 128
    sleep                   10, 30
    plc_motion              0, 10, 0
    sleep                   10, 20
    sleep                   10, 10
    plc_motion              0, 10, 128
    sleep                   10, 20
    plc_motion              2, 2, 20
    plc_neck                6, 0, 0, 0, 0, 0
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                6, 0, 0, 0, 0, 0
    set                     3, 68, 1
    else                    0, off_27E8

off_27DA:
    sleep                   10, 1
    message_on              0, 0, 0, 0, 0
    wsleep
    wsleeping
    nop
    nop

off_27E8:
    cut_chg                 1
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    gosub                   12
    evt_end                 0

.proc main_04
    set                     2, 7, 1
    set                     1, 27, 1
    sleep                   10, 20
    sleep                   10, 1
    xa_on                   0, 21
    message_on              0, 23, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 60, 30
    plc_dest                0, 21, 33, 980, 128
    gosub                   9
    plc_motion              0, 10, 0
    sleep                   10, 20
    plc_motion              0, 10, 128
    sleep                   10, 20
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 33, -25300, -20500
    gosub                   9
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    cut_chg                 10
    sce_bgm_control         1, 1, 0, 0, 0
    plc_dest                0, 21, 33, 880, 128
    gosub                   9
    sleep                   10, 1
    xa_on                   0, 34
    message_on              0, 24, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -24300, -1800, -22400, 60, 30
    plc_motion              1, 6, 0
    sleep                   10, 20
    plc_motion              0, 27, 8
    sleep                   10, 50
    plc_motion              0, 27, 136
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    sleep                   10, 50
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    xa_on                   0, 22
    message_on              0, 25, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    plc_motion              0, 15, 0
    sleep                   10, 80
    plc_motion              0, 15, 128
    sleep                   10, 80
    plc_motion              0, 14, 4
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 23
    message_on              0, 26, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -24300, -2800, -22400, 60, 30
    sleep                   10, 20
    plc_neck                1, -24300, -1800, -22400, 60, 30
    sleep                   10, 20
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    xa_on                   0, 24
    message_on              0, 27, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    plc_motion              0, 18, 0
    sleep                   10, 50
    plc_motion              0, 16, 0
    sleep                   10, 30
    plc_motion              0, 16, 128
    sleep                   10, 30
    plc_motion              0, 14, 20
    sleep                   10, 90
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 130, 142, -8, 365, -75, -1024, -1024, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 17, 0
    nop
    sleep                   10, 30
    plc_dest                0, 20, 0, 0, 0
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -24300, -1800, -22400, 60, 30
    plc_motion              0, 23, 0
    sleep                   10, 25
    cut_chg                 10
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 128, 142, 0, 365, -25, 832, -1024, -68
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -24300, 0, -22400, 60, 30
    plc_motion              0, 23, 128
    sleep                   10, 20
    plc_neck                1, -24300, -1800, -22400, 60, 30
    sleep                   10, 1
    xa_on                   0, 25
    message_on              0, 28, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    plc_motion              0, 14, 20
    sleep                   10, 60
    sleep                   10, 60
    plc_motion              0, 14, 20
    sleep                   10, 20
    sleep                   10, 60
    plc_motion              0, 14, 20
    wsleep
    wsleeping
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 26
    message_on              0, 29, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -24300, -1800, -22400, 60, 30
    plc_motion              0, 23, 0
    sleep                   10, 25
    sleep                   10, 25
    wsleep
    wsleeping
    cut_chg                 14
    sce_bgm_control         2, 1, 0, 0, 0
    sce_bgmtbl_set          0, 1, 3, 255, 0
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -26400, 0, -21470
    work_set                WK_ENEMY, 0
    plc_motion              0, 4, 192
    plc_cnt                 80
    nop
    pos_set                 0, -24300, 0, -22400
    dir_set                 0, 0, 3280, 0
    sleep                   10, 20
    plc_motion              0, 1, 4
    sleep                   10, 1
    xa_on                   0, 27
    message_on              0, 30, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 60, 30
    sleep                   10, 30
    pos_set                 0, -26400, 0, -21470
    sleep                   10, 60
    se_on                   2, 19, 0, 0, 0, 0
    evt_kill                9
    evt_exec                9, I_GOSUB, main_1A
    sleep                   10, 120
    wsleep
    wsleeping
    cut_chg                 11
    se_on                   2, 19, 0, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 28
    message_on              0, 31, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    sleep                   10, 30
    plc_motion              0, 8, 128
    sleep                   10, 30
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    cut_chg                 12
    gosub                   27
    sleep                   10, 1
    xa_on                   0, 30
    sleep                   10, 110
    se_on                   2, 14, 0, 0, 0, 0
    sleep                   10, 30
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    wsleep
    wsleeping
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    se_on                   2, 18, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 1, 0, 60, 30
    pos_set                 0, -24300, 0, -25000
    dir_set                 0, 0, 2640, 0
    kage_set                3, 0, 16, 191, 191, 220, 5, 220, 5, 0, 0, 0, 0
    cut_chg                 1
    sleep                   10, 1
    se_on                   2, 9, 0, 0, 0, 0
    work_set                WK_ENEMY, 1
    nop
    do                      0, off_2BB2
    evt_next
    nop
    edwhile                 off_2BB2
    member_cmp              0, 13, 3, 248, 173

off_2BB2:
    se_on                   2, 9, 0, 0, 0, 0
    sleep                   10, 10
    se_on                   2, 9, 0, 0, 0, 0
    sleep                   10, 20
    sleep                   10, 45
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    pos_set                 0, -26300, 0, -17800
    dir_set                 0, 0, 1024, 0
    se_on                   2, 8, 0, 0, 0, 0
    sleep                   10, 30
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -24000, -18000, -12000
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    cut_chg                 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 60, 30
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 128, 142, 0, 365, -25, 832, -1024, -68
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    sleep                   10, 15
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 34, -25300, -24500
    sleep                   10, 10
    cut_chg                 1
    gosub                   14
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 21, 34, 300, 128
    gosub                   14
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 60, 30
    sleep                   10, 1
    xa_on                   0, 32
    message_on              0, 32, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 11, 0
    nop
    sleep                   10, 20
    plc_motion              0, 8, 0
    sleep                   10, 20
    wsleep
    wsleeping
    sleep                   10, 30
    aot_on                  3
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 60, 30
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    sleep                   10, 30
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                6, 0, 0, 0, 0, 0
    evt_kill                9
    evt_exec                9, I_GOSUB, main_12
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 20
    xa_on                   0, 35
    message_on              0, 33, 0, 0, 0
    sleep                   10, 10
    evt_kill                9
    work_set                WK_SPLAYER, 0
    plc_motion              2, 2, 20
    nop
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 36
    message_on              0, 34, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 11, 0
    nop
    sleep                   10, 30
    plc_motion              0, 11, 128
    sleep                   10, 30
    plc_motion              0, 9, 0
    sleep                   10, 30
    plc_motion              0, 9, 128
    sleep                   10, 30
    wsleep
    wsleeping
    evt_kill                9
    evt_exec                9, I_GOSUB, main_12
    sleep                   10, 1
    xa_on                   0, 37
    message_on              0, 35, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 30
    sleep                   10, 20
    plc_motion              0, 10, 128
    sleep                   10, 20
    sleep                   10, 20
    plc_motion              0, 12, 0
    sleep                   10, 25
    plc_motion              0, 13, 4
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -25300, 0, -23900, 60, 30
    sleep                   10, 40
    work_set                WK_OBJECT, 2
    nop
    super_set               0, 128, 142, 0, 220, 10, 1024, -2048, 0
    sleep                   10, 10
    se_on                   2, 16, 0, 0, 0, 0
    sleep                   10, 20
    sleep                   10, 1
    xa_on                   0, 38
    message_on              0, 36, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 0, 0
    plc_motion              0, 20, 0
    sleep                   10, 15
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 39
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 128
    nop
    sleep                   10, 15
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 40
    message_on              0, 37, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 0
    nop
    sleep                   10, 30
    plc_motion              0, 20, 128
    sleep                   10, 5
    plc_motion              0, 20, 0
    plc_cnt                 10
    sleep                   10, 30
    plc_motion              0, 20, 128
    sleep                   10, 5
    plc_motion              0, 20, 0
    plc_cnt                 10
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 41
    message_on              0, 38, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 128
    nop
    sleep                   10, 15
    sleep                   10, 30
    plc_motion              0, 21, 128
    sleep                   10, 20
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    work_set                WK_OBJECT, 2
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    sleep                   10, 20
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_1F, 0, 0
    gosub                   12
    evt_end                 0

.proc main_05
    evt_end                 0

.proc main_06
    work_set                WK_ENEMY, 0
    nop
    sleep                   10, 1
    plc_dest                0, 20, 0, 0, 0
    kage_set                3, 0, 16, 191, 191, 220, 5, 220, 5, 0, 0, 0, 0
    evt_end                 0

.proc main_07
    set                     2, 7, 1
    set                     1, 27, 1
    sleep                   10, 1
    kage_set                3, 0, 16, 191, 191, 32, 3, 32, 3, 0, 0, 0, 0
    sleep                   10, 20
    sleep                   10, 1
    xa_on                   0, 21
    message_on              0, 23, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 60, 30
    plc_dest                0, 21, 33, 980, 128
    gosub                   9
    plc_motion              0, 10, 0
    sleep                   10, 20
    plc_motion              0, 10, 128
    sleep                   10, 20
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 33, -25300, -20500
    gosub                   9
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    cut_chg                 10
    sce_bgm_control         1, 1, 0, 0, 0
    sce_bgmtbl_set          0, 1, 3, 255, 0
    plc_dest                0, 21, 33, 880, 128
    gosub                   9
    sleep                   10, 1
    xa_on                   0, 34
    message_on              0, 24, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -24300, -1800, -22400, 60, 30
    plc_motion              1, 6, 0
    sleep                   10, 20
    plc_motion              0, 27, 8
    sleep                   10, 50
    plc_motion              0, 27, 136
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    sleep                   10, 50
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    xa_on                   0, 22
    message_on              0, 25, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    plc_motion              0, 15, 0
    sleep                   10, 80
    plc_motion              0, 15, 128
    sleep                   10, 80
    plc_motion              0, 14, 4
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 23
    message_on              0, 26, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -24300, -1800, -22400, 60, 30
    sleep                   10, 20
    sleep                   10, 20
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    xa_on                   0, 24
    message_on              0, 27, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    plc_motion              0, 18, 0
    sleep                   10, 50
    plc_motion              0, 16, 0
    sleep                   10, 30
    plc_motion              0, 16, 128
    sleep                   10, 30
    plc_motion              0, 14, 20
    sleep                   10, 90
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 130, 142, -8, 365, -75, -1024, -1024, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 17, 0
    nop
    sleep                   10, 30
    plc_dest                0, 20, 0, 0, 0
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -24300, -1800, -22400, 60, 30
    plc_motion              0, 23, 0
    sleep                   10, 25
    cut_chg                 10
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 128, 142, 0, 365, -25, 832, -1024, -68
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -24300, 0, -22400, 60, 30
    plc_motion              0, 23, 128
    sleep                   10, 25
    plc_neck                1, -24300, -1800, -22400, 60, 30
    sleep                   10, 1
    xa_on                   0, 25
    message_on              0, 28, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    plc_motion              0, 14, 20
    sleep                   10, 60
    sleep                   10, 60
    plc_motion              0, 14, 20
    sleep                   10, 20
    sleep                   10, 30
    sleep                   10, 60
    plc_motion              0, 14, 20
    wsleep
    wsleeping
    work_set                WK_OBJECT, 1
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 26
    message_on              0, 29, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -24300, -1800, -22400, 60, 30
    plc_motion              0, 23, 0
    sleep                   10, 25
    sleep                   10, 25
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    xa_on                   0, 31
    work_set                WK_ENEMY, 0
    plc_motion              0, 19, 0
    nop
    sleep                   10, 100
    se_on                   2, 18, 0, 0, 0, 0
    plc_neck                0, 0, 0, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 30
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    pos_set                 0, -26300, 0, -17800
    dir_set                 0, 0, 1024, 0
    se_on                   2, 8, 0, 0, 0, 0
    sleep                   10, 30
    cut_chg                 0
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 60, 30
    plc_motion              0, 23, 128
    sleep                   10, 20
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                5, 1, 0, 0, 60, 30
    sleep                   10, 15
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 34, -26200, -22400
    sleep                   10, 10
    cut_chg                 1
    gosub                   14
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 21, 34, -320, 128
    gosub                   14
    sleep                   10, 1
    xa_on                   0, 33
    work_set                WK_SPLAYER, 0
    plc_motion              0, 11, 0
    nop
    sleep                   10, 20
    plc_motion              0, 8, 0
    sleep                   10, 20
    plc_motion              1, 6, 0
    sleep                   10, 20
    wsleep
    wsleeping
    sleep                   10, 30
    aot_on                  3
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 60, 30
    plc_motion              0, 26, 68
    dir_set                 0, 0, -2248, 0
    sleep                   10, 30
    work_set                WK_SPLAYER, 0
    plc_motion              1, 6, 128
    nop
    sleep                   10, 20
    evt_kill                9
    evt_exec                9, I_GOSUB, main_12
    sleep                   10, 1
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    plc_motion              0, 23, 0
    nop
    sleep                   10, 30
    xa_on                   0, 35
    message_on              0, 33, 0, 0, 0
    evt_kill                9
    work_set                WK_SPLAYER, 0
    plc_motion              2, 2, 20
    nop
    wsleep
    wsleeping
    cut_chg                 0
    work_set                WK_PLAYER, 0
    nop
    dir_set                 0, 0, -1400, 0
    sleep                   10, 1
    xa_on                   0, 36
    message_on              0, 34, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 30
    plc_motion              0, 10, 128
    sleep                   10, 30
    wsleep
    wsleeping
    evt_kill                9
    evt_exec                9, I_GOSUB, main_12
    cut_chg                 1
    sleep                   10, 1
    xa_on                   0, 37
    message_on              0, 35, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 23, 0
    nop
    sleep                   10, 30
    plc_motion              1, 6, 128
    sleep                   10, 20
    plc_motion              0, 10, 0
    sleep                   10, 20
    sleep                   10, 20
    plc_motion              0, 12, 0
    sleep                   10, 25
    plc_motion              0, 13, 4
    wsleep
    wsleeping
    sleep                   10, 40
    cut_chg                 0
    work_set                WK_OBJECT, 2
    nop
    super_set               0, 128, 142, 0, 220, 10, 1024, -2048, 0
    se_on                   2, 17, 0, 0, 0, 0
    sleep                   10, 30
    sleep                   10, 1
    xa_on                   0, 42
    message_on              0, 39, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 0, 0
    plc_motion              0, 21, 0
    sleep                   10, 20
    sleep                   10, 20
    plc_motion              0, 20, 0
    sleep                   10, 5
    plc_motion              0, 20, 128
    plc_cnt                 10
    sleep                   10, 5
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 43
    message_on              0, 40, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 0
    nop
    sleep                   10, 30
    plc_motion              0, 20, 128
    sleep                   10, 5
    plc_motion              0, 20, 0
    plc_cnt                 10
    sleep                   10, 30
    plc_motion              0, 20, 128
    sleep                   10, 5
    plc_motion              0, 20, 0
    plc_cnt                 10
    sleep                   10, 30
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 44
    message_on              0, 41, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 128
    nop
    sleep                   10, 15
    sleep                   10, 30
    plc_motion              0, 20, 0
    sleep                   10, 5
    plc_motion              0, 20, 128
    plc_cnt                 10
    sleep                   10, 5
    sleep                   10, 30
    plc_motion              0, 20, 0
    sleep                   10, 5
    plc_motion              0, 20, 128
    plc_cnt                 10
    sleep                   10, 5
    sleep                   10, 30
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 45
    message_on              0, 42, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 20, 0
    nop
    sleep                   10, 30
    plc_motion              0, 20, 128
    sleep                   10, 5
    plc_motion              0, 20, 0
    plc_cnt                 10
    sleep                   10, 30
    plc_motion              0, 20, 128
    sleep                   10, 5
    plc_motion              0, 20, 0
    plc_cnt                 10
    sleep                   10, 10
    plc_motion              0, 20, 128
    sleep                   10, 5
    plc_motion              0, 20, 0
    plc_cnt                 10
    sleep                   10, 15
    plc_motion              0, 22, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 12, 0
    sleep                   10, 30
    plc_motion              0, 13, 0
    wsleep
    wsleeping
    work_set                WK_OBJECT, 2
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    sleep                   10, 20
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_20, 0, 0
    gosub                   12
    evt_end                 0

.proc main_08
    work_set                WK_ENEMY, 0
    nop
    sleep                   10, 1
    plc_dest                0, 20, 0, 0, 0
    kage_set                3, 0, 16, 191, 191, 32, 3, 32, 3, 0, 0, 0, 0
    evt_end                 0

.proc main_09
    do                      0, off_34A8
    evt_next
    nop
    edwhile                 off_34A8
    ck                      5, 33, 0

off_34A8:
    evt_end                 0

.proc main_0A
    do                      0, off_34B6
    evt_next
    nop
    edwhile                 off_34B6
    ck                      5, 36, 0

off_34B6:
    evt_end                 0

.proc main_0B
    do                      0, off_34C4
    evt_next
    nop
    edwhile                 off_34C4
    ck                      5, 7, 0

off_34C4:
    set                     5, 7, 0
    evt_end                 0

.proc main_0C
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_0D
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 33, 0, 128
    gosub                   9
    sleep                   10, 4
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 21, 34, 0, 128
    gosub                   14
    evt_end                 0

.proc main_0E
    do                      0, off_3508
    evt_next
    nop
    edwhile                 off_3508
    ck                      5, 34, 0

off_3508:
    evt_end                 0

.proc main_0F
    do                      0, off_3516
    evt_next
    nop
    edwhile                 off_3516
    ck                      5, 8, 0

off_3516:
    set                     5, 8, 0
    evt_end                 0

.proc main_10
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 9, 34, -25100, -16450
    gosub                   14
    evt_end                 0

.proc main_11
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 9, 34, -23200, -26700
    gosub                   14
    evt_end                 0

.proc main_12
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 34, -26200, -15800
    gosub                   14
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    pos_set                 0, -25000, 0, -12000
    se_on                   2, 8, 0, 0, 0, 0
    sleep                   10, 30
    evt_end                 0

.proc main_13
    work_set                WK_SPLAYER, 0
    nop
    gosub                   15
    plc_motion              2, 9, 0
    sleep                   10, 15
    set                     5, 7, 1
    evt_end                 0

.proc main_14
    work_set                WK_SPLAYER, 0
    plc_motion              2, 10, 0
    nop
    sleep                   10, 20
    evt_end                 0

.proc main_15
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 9, 34, -24300, -22400
    gosub                   14
    evt_end                 0

.proc main_16
    do                      0, off_35E8
    evt_next
    nop
    edwhile                 off_35E8
    ck                      5, 35, 0

off_35E8:
    evt_end                 0

.proc main_17
    do                      0, off_35F6
    evt_next
    nop
    edwhile                 off_35F6
    ck                      5, 9, 0

off_35F6:
    set                     5, 9, 0
    evt_end                 0

.proc main_18
    work_set                WK_ENEMY, 0
    plc_motion              0, 2, 64
    nop
    sleep                   10, 1
    plc_motion              20, 0, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_19
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 4, 35, -21600, -25700
    gosub                   22
    plc_dest                0, 21, 35, 1920, 128
    gosub                   22
    evt_end                 0

.proc main_1A
    work_set                WK_ENEMY, 0
    plc_motion              0, 4, 2
    nop
    sleep                   10, 85
    plc_flg                 1, 1
    sleep                   10, 25
    plc_motion              0, 4, 2
    plc_cnt                 70
    sleep                   10, 15
    plc_flg                 1, 1
    sleep                   10, 25
    plc_motion              0, 4, 2
    plc_cnt                 70
    sleep                   10, 15
    plc_flg                 1, 1
    sleep                   10, 25
    evt_end                 0

.proc main_1B
    work_set                WK_ENEMY, 0
    nop
    plc_neck                0, 0, 0, 0, 60, 30
    plc_flg                 1, 0
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 243, 157
    member_set              24, 72, 194
    evt_end                 0

.proc main_1C
    sca_id_set              11, 0, 0
    evt_end                 0

.proc main_1D
    sca_id_set              4, 0, 0
    sca_id_set              8, 0, 0
    evt_end                 0

.proc main_1E
    message_on              0, 0, 0, 255, 255
    se_on                   2, 22, 0, -26979, -1800, -16608
    evt_end                 0

.proc main_1F
    set                     2, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 20
    message_on              0, 1, 0, 255, 255
    plc_motion              1, 6, 128
    sleep                   10, 20
    set                     2, 7, 0
    work_set                WK_PLAYER, 0
    plc_ret
    evt_end                 0

.proc main_20
    set                     2, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 20
    message_on              0, 1, 0, 255, 255
    plc_motion              1, 6, 128
    sleep                   10, 20
    set                     2, 7, 0
    work_set                WK_PLAYER, 0
    plc_ret
    evt_end                 0
