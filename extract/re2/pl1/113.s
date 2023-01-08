.version 2
.init
.proc init_00
    if                      0, off_0D02
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_0D02:
    if                      0, off_0D10
    ck                      4, 254, 1
    set                     4, 15, 0
    endif
    nop

off_0D10:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28294, -26670, 1900, 2500, -14806, 0, -25766, -10192, 0, 20, 0, 0, 3, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15791, -16967, 3400, 2100, -17484, 0, -26200, -13256, 0, 18, 1, 0, 1, 128, 0, 0, UNLOCKED, 0
    aot_set                 3, SCE_HIKIDASHI, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15146, -20187, 900, 1700, 2, 0, 4, 0, 6, 0
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27784, -20380, 1480, 2750, 3, 0, 0, 0, 255, 255
    aot_set                 13, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26734, -1287, 2210, 1790, 1, 0, 0, 0, 255, 255
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main_00
    if                      0, off_0DFE
    ck                      1, 6, 1
    gosub                   29
    evt_end                 0
    endif
    nop

off_0DFE:
    if                      0, off_0E16
    ck                      4, 15, 1
    if                      0, off_0E14
    ck                      1, 1, 1
    set                     4, 33, 1
    endif
    nop

off_0E14:
    endif
    nop

off_0E16:
    if                      0, off_0EBE
    ck                      1, 1, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 10, 10, ITEM_FLAMEROUNDS, 6, 18, 1, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 48, -14815, -1050, -19003, 0, -2304, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_0EA2
    ck                      0, 25, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27854, -4717, 1210, 1450, ITEM_HANDGUNAMMO, 15, 145, 2, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -27604, -2550, -3643, 0, 832, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_0EBA

off_0EA2:
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27854, -4717, 1210, 1450, ITEM_HANDGUNAMMO, 15, 145, 255, 1
    nop
    nop

off_0EBA:
    else                    0, off_0EFC

off_0EBE:
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 10, 10, ITEM_HANDGUNAMMO, 30, 18, 3, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 48, -14815, -1050, -19003, 0, -2304, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_0EFC:
    if                      0, off_0F3C
    ck                      1, 1, 0
    if                      0, off_0F38
    ck                      4, 15, 0
    sce_em_set              0, 0, ENEMY_LEONKENNEDYRPD, 0, 64, 0, 0, 0, 255, -25397, 0, -14284, -9203, 0, 0
    aot_set                 14, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25514, -18710, 1320, 1270, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_0F38:
    else                    0, off_0F50

off_0F3C:
    if                      0, off_0F4A
    ck                      0, 25, 0
    gosub                   4
    else                    0, off_0F4E

off_0F4A:
    gosub                   6
    nop
    nop

off_0F4E:
    nop
    nop

off_0F50:
    if                      0, off_0F66
    ck                      4, 15, 0
    ck                      1, 1, 0
    set                     4, 15, 1
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_0F66:
    evt_end                 0

.proc main_01
    if                      0, off_0F74
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_0F74:
    if                      0, off_0FA4
    ck                      4, 129, 0
    if                      0, off_0FA2
    ck                      1, 1, 1
    if                      0, off_0FA0
    ck                      5, 3, 0
    set                     5, 3, 1
    kage_set                3, 0, 16, 191, 191, 208, 7, 208, 7, 0, 0, 0, 0
    endif
    nop

off_0FA0:
    endif
    nop

off_0FA2:
    endif
    nop

off_0FA4:
    evt_end                 0

.proc main_02
    set                     2, 7, 1
    set                     1, 27, 1
    evt_next
    nop
    gosub                   14
    gosub                   15
    gosub                   16
    gosub                   17
    gosub                   18
    gosub                   20
    gosub                   21
    gosub                   23
    gosub                   25
    work_set                WK_PLAYER, 0
    plc_ret
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    cut_chg                 1
    cut_auto                1
    sce_bgmtbl_set          0, 19, 1, 65288, 0
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_03
    set                     2, 7, 1
    set                     1, 27, 1
    work_set                WK_PLAYER, 0
    nop
    member_copy             5, 11
    nop
    member_copy             6, 13
    nop
    work_set                WK_ENEMY, 0
    nop
    work_copy               6, 10, 1
    work_copy               5, 4, 1
    plc_dest                0, 9, 32, 0, 0
    gosub                   26
    xa_on                   0, 40
    message_on              0, 17, 0, 0, 0
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 32, 32
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    plc_cnt                 5
    nop
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 15
    plc_motion              0, 15, 0
    sleep                   10, 20
    plc_motion              0, 16, 0
    sleep                   10, 15
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    plc_motion              0, 22, 4
    nop
    plc_neck                5, 1, 0, 0, 16, 16
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     1, 27, 0
    set                     2, 7, 0
    evt_end                 0

.proc main_04
    if                      0, off_114C
    ck                      4, 129, 0
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 4, 128, 0, 5, 2, 255, -24181, 0, -18903, 1523, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 8, 64, 0, 5, 3, 82, -23979, 0, -20485, 2929, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 8, 64, 0, 5, 3, 83, -22426, 0, -18037, 1617, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 8, 64, 0, 6, 3, 113, -25854, 0, -19030, 121, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 8, 64, 0, 6, 3, 114, -24457, 0, -17786, -3424, 0, 0
    aot_set                 16, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -28694, -23970, 11900, 8740, 255, 0, I_GOSUB, main_05, 0, 0
    else                    0, off_11A6

off_114C:
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 3, 82, -25506, 0, -9604, 969, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 3, 83, -18637, 0, -18073, 2673, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 0, 0, 0, 6, 3, 113, -23148, 0, -20728, 1361, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 0, 0, 6, 3, 114, -26292, 0, -19914, 417, 0, 0
    nop
    nop

off_11A6:
    evt_end                 0

.proc main_05
    set                     4, 129, 1
    aot_reset               16, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 180, 187, 0, 0, 168, 153
    if                      0, off_11D6
    ck                      6, 82, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 15
    endif
    nop

off_11D6:
    if                      0, off_11F6
    ck                      6, 83, 0
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 30
    endif
    nop

off_11F6:
    if                      0, off_1216
    ck                      6, 113, 0
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 120
    endif
    nop

off_1216:
    if                      0, off_1232
    ck                      6, 114, 0
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    endif
    nop

off_1232:
    evt_end                 0

.proc main_06
    if                      0, off_12EA
    ck                      4, 129, 0
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 4, 128, 0, 5, 2, 255, -24181, 0, -18903, 1523, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 8, 64, 0, 5, 3, 82, -24647, 0, -20671, 3281, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 8, 64, 0, 5, 3, 83, -22579, 0, -17978, 1617, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 8, 64, 0, 6, 3, 113, -25797, 0, -19180, 121, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 8, 64, 0, 6, 3, 114, -24533, 0, -17929, 672, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 8, 64, 0, 6, 3, 211, -22985, 0, -19985, 2737, 0, 0
    aot_set                 16, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -28694, -23970, 11900, 8740, 255, 0, I_GOSUB, main_07, 0, 0
    else                    0, off_135A

off_12EA:
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 3, 82, -24647, 0, -20671, 3281, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 6, 0, 0, 5, 3, 83, -22579, 0, -17978, 1617, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 0, 0, 0, 6, 3, 113, -25797, 0, -19180, 121, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 0, 0, 6, 3, 114, -24533, 0, -17929, 672, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 0, 0, 0, 6, 3, 211, -22985, 0, -19985, 2737, 0, 0
    nop
    nop

off_135A:
    evt_end                 0

.proc main_07
    set                     4, 129, 1
    aot_reset               16, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 180, 187, 0, 0, 168, 153
    if                      0, off_138A
    ck                      6, 82, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 15
    endif
    nop

off_138A:
    if                      0, off_13AA
    ck                      6, 83, 0
    work_set                WK_ENEMY, 2
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 30
    endif
    nop

off_13AA:
    if                      0, off_13CA
    ck                      6, 113, 0
    work_set                WK_ENEMY, 3
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 20
    endif
    nop

off_13CA:
    if                      0, off_13EA
    ck                      6, 114, 0
    work_set                WK_ENEMY, 4
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    sleep                   10, 100
    endif
    nop

off_13EA:
    if                      0, off_1406
    ck                      6, 211, 0
    work_set                WK_ENEMY, 5
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    endif
    nop

off_1406:
    evt_end                 0

.proc main_08
    evt_exec                255, I_GOSUB, main_09
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 4, 32, -26254, -18045
    sleep                   10, 15
    plc_stop
    sce_bgm_control         1, 1, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_dest                0, 9, 32, -24293, -19696
    plc_neck                5, 3, 1, 0, 96, 96
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 4, 32, -26354, -18145
    sleep                   10, 20
    plc_stop
    nop
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, -320, 1024, 16, 16
    sleep                   10, 3
    plc_motion              0, 19, 0
    sleep                   10, 7
    plc_neck                2, 0, 320, 1024, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, 120, 0, 74, 74
    sleep                   10, 5
    xa_on                   0, 31
    sleep                   10, 2
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 8
    nop
    message_on              0, 8, 0, 0, 0
    sleep                   10, 2
    dir_set                 0, 0, 6072, 0
    sleep                   10, 2
    dir_set                 0, 0, 6172, 0
    plc_neck                2, 0, 0, 0, 74, 74
    sleep                   10, 2
    dir_set                 0, 0, 6272, 0
    sleep                   10, 15
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 6
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 32, -25237, -16951
    plc_neck                5, 3, 1, 0, 96, 96
    wsleep
    wsleeping
    cut_chg                 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -20069, 0, -17999
    dir_set                 0, 0, 2089, 0
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 32, -25237, -16951
    gosub                   26
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 32, -26072, -2858
    plc_neck                0, 3, 1, 0, 96, 96
    sleep                   10, 10
    do                      0, off_154E
    evt_next
    nop
    edwhile                 off_154E
    ck                      5, 0, 0

off_154E:
    set                     5, 0, 0
    cut_chg                 4
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -25387, 0, -18897
    do                      0, off_156C
    evt_next
    nop
    edwhile                 off_156C
    ck                      5, 0, 0

off_156C:
    set                     5, 0, 0
    cut_chg                 5
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 32, -26072, -2858
    gosub                   26
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 9, 32, -25872, 0
    sleep                   10, 10
    plc_motion              0, 19, 0
    sleep                   10, 35
    plc_motion              0, 19, 128
    sleep                   10, 30
    set                     5, 1, 1
    evt_end                 0

.proc main_09
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -23921, 0, -19429
    dir_set                 0, 0, -4328, 0
    sca_id_set              1, 0, 0
    sleep                   10, 1
    work_set                WK_ENEMY, 1
    nop
    plc_dest                0, 5, 34, -22531, -18848
    gosub                   28
    work_set                WK_ENEMY, 1
    plc_motion              0, 15, 0
    nop
    sleep                   10, 33
    work_set                WK_ENEMY, 1
    nop
    plc_dest                0, 8, 34, -23035, -19093
    gosub                   28
    plc_dest                0, 5, 34, -25098, -16854
    plc_rot                 0, 96
    gosub                   28
    plc_dest                0, 5, 34, -25580, -4734
    gosub                   28
    cut_chg                 5
    plc_dest                0, 5, 34, -25580, -1327
    gosub                   28
    gosub                   12
    evt_end                 0

.proc main_0A
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -26100, 0, -24800
    dir_set                 0, 0, 0, 0
    evt_exec                255, I_GOSUB, main_0B
    sleep                   10, 15
    sce_bgm_control         1, 1, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 9, 32, -22670, -19468
    plc_neck                5, 3, 1, 0, 96, 96
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 4, 32, -25233, -22798
    sleep                   10, 20
    plc_stop
    nop
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, -320, 1024, 16, 16
    sleep                   10, 3
    plc_motion              0, 19, 0
    sleep                   10, 7
    plc_neck                2, 0, 320, 1024, 32, 32
    sleep                   10, 30
    plc_neck                2, 0, 120, 0, 74, 74
    sleep                   10, 5
    xa_on                   0, 31
    sleep                   10, 2
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 8
    nop
    message_on              0, 8, 0, 0, 0
    sleep                   10, 2
    dir_set                 0, 0, 3201, 0
    sleep                   10, 2
    dir_set                 0, 0, 3101, 0
    plc_neck                2, 0, 0, 0, 74, 74
    sleep                   10, 2
    dir_set                 0, 0, 3081, 0
    sleep                   10, 15
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 6
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 32, -25398, -16850
    plc_neck                5, 3, 1, 0, 96, 96
    wsleep
    wsleeping
    cut_chg                 1
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -25535, 0, -21850
    dir_set                 0, 0, -925, 0
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 32, -26072, -2858
    plc_neck                0, 3, 1, 0, 96, 96
    sleep                   10, 10
    do                      0, off_1752
    evt_next
    nop
    edwhile                 off_1752
    ck                      5, 0, 0

off_1752:
    set                     5, 0, 0
    cut_chg                 4
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -25387, 0, -18897
    do                      0, off_1770
    evt_next
    nop
    edwhile                 off_1770
    ck                      5, 0, 0

off_1770:
    set                     5, 0, 0
    cut_chg                 5
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 5, 32, -26072, -2858
    gosub                   26
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 9, 32, -25872, 0
    sleep                   10, 10
    plc_motion              0, 19, 0
    sleep                   10, 35
    plc_motion              0, 19, 128
    sleep                   10, 30
    set                     5, 1, 1
    evt_end                 0

.proc main_0B
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -22670, 0, -19468
    dir_set                 0, 0, 1355, 0
    sca_id_set              1, 0, 0
    sleep                   10, 1
    work_set                WK_ENEMY, 1
    nop
    plc_dest                0, 5, 34, -23601, -21140
    gosub                   28
    work_set                WK_ENEMY, 1
    plc_motion              0, 15, 0
    nop
    sleep                   10, 33
    work_set                WK_ENEMY, 1
    nop
    plc_dest                0, 8, 34, -23307, -20612
    gosub                   28
    plc_dest                0, 5, 34, -25484, -16364
    plc_rot                 0, 96
    gosub                   28
    plc_dest                0, 5, 34, -25580, -7640
    gosub                   28
    cut_chg                 5
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -26100, 0, -24800
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, -25580, 0, -4734
    plc_dest                0, 5, 34, -25580, -1327
    gosub                   28
    gosub                   12
    evt_end                 0

.proc main_0C
    plc_motion              1, 6, 8
    sleep                   10, 2
    work_set                WK_ENEMY, 1
    plc_motion              0, 16, 0
    nop
    sleep                   10, 10
    set                     5, 0, 1
    sleep                   10, 10
    save                    4, -1327
    for                     0, off_1872, 10
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 30
    copy                    4, 16
    nop
    work_copy               4, 6, 1
    pos_set                 0, -25580, 0, 0
    evt_next
    nop
    next                    0

off_1872:
    for                     0, off_1896, 27
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 30
    copy                    4, 16
    nop
    work_copy               4, 6, 1
    pos_set                 0, -25580, 0, 0
    evt_next
    nop
    next                    0

off_1896:
    se_on                   2, 10, 0, -25580, 0, -1327
    set                     5, 0, 1
    if                      0, off_18BC
    ck                      1, 1, 1
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -25504, 0, 57
    endif
    nop

off_18BC:
    work_set                WK_ENEMY, 1
    nop
    for                     0, off_18E4, 18
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 50
    copy                    4, 16
    nop
    work_copy               4, 6, 1
    pos_set                 0, -25580, 0, 0
    evt_next
    nop
    next                    0

off_18E4:
    plc_motion              0, 16, 0
    plc_cnt                 57
    for                     0, off_190E, 18
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 50
    copy                    4, 16
    nop
    work_copy               4, 6, 1
    pos_set                 0, -25580, 0, 0
    evt_next
    nop
    next                    0

off_190E:
    plc_motion              0, 16, 0
    plc_cnt                 57
    for                     0, off_1938, 18
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 50
    copy                    4, 16
    nop
    work_copy               4, 6, 1
    pos_set                 0, -25580, 0, 0
    evt_next
    nop
    next                    0

off_1938:
    work_set                WK_ENEMY, 1
    nop
    pos_set                 0, 24966, 0, 13612
    plc_dest                0, 6, 34, -25228, -2856
    sca_id_set              1, 0, 252
    evt_end                 0

.proc main_0D
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -26022, 0, -25181
    dir_set                 0, 0, 3125, 0
    plc_neck                5, 3, 0, 0, 96, 96
    plc_motion              0, 15, 0
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 4, 32, -25356, -16018
    plc_neck                2, 0, 320, 320, 32, 32
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 130, 129, 161, 293, 349, 1024, -2752, 0
    sleep                   10, 10
    xa_on                   0, 43
    message_on              0, 9, 0, 0, 0
    sleep                   10, 2
    set                     1, 27, 1
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 9, 32, -26140, -24546
    plc_neck                5, 1, 0, 0, 96, 96
    wsleep
    wsleeping
    cut_chg                 0
    sleep                   10, 10
    sce_bgm_control         2, 1, 0, 0, 0
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 21, 0
    nop
    sleep                   10, 35
    evt_end                 0

.proc main_0E
    set                     1, 27, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -26022, 0, -25181
    dir_set                 0, 0, 3125, 0
    plc_neck                2, 0, 320, 320, 32, 32
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -25492, 0, -6427
    dir_set                 0, 0, 1039, 0
    evt_next
    nop
    plc_dest                0, 4, 32, -25289, -13849
    plc_neck                2, 0, 320, 320, 32, 32
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 130, 129, 161, 293, 349, 1024, -2752, 0
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 96, 96
    sleep                   10, 10
    plc_dest                0, 9, 33, -25318, -16548
    gosub                   27
    sleep                   10, 10
    cut_chg                 1
    gosub                   26
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 4, 32, -25356, -16018
    cut_chg                 0
    evt_next
    nop
    xa_on                   0, 43
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    wsleep
    wsleeping
    cut_chg                 1
    sce_bgm_control         2, 1, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 6, 32, -25356, -16018
    pos_set                 0, -25318, 0, -16548
    evt_next
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 20
    cut_chg                 0
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              0, 21, 0
    nop
    sleep                   10, 35
    evt_end                 0

.proc main_0F
    cut_chg                 1
    sleep                   10, 1
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 4, 32, -24980, -17975
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 33, -25122, -19700
    xa_on                   0, 33
    message_on              0, 10, 0, 0, 0
    sleep                   10, 2
    gosub                   26
    work_set                WK_ENEMY, 0
    plc_motion              0, 20, 0
    nop
    sleep                   10, 25
    wsleep
    wsleeping
    evt_end                 0

.proc main_10
    cut_chg                 7
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -25506, 0, -21953
    sleep                   10, 1
    plc_dest                0, 4, 33, -25122, -19700
    xa_on                   0, 34
    message_on              0, 11, 0, 0, 0
    sleep                   10, 2
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    plc_motion              0, 23, 0
    nop
    gosub                   27
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 40
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 20
    plc_motion              0, 16, 0
    plc_cnt                 10
    sleep                   10, 20
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    sleep                   10, 10
    evt_end                 0

.proc main_11
    cut_chg                 1
    work_set                WK_ENEMY, 0
    nop
    plc_neck                1, -26254, -1800, -13576, 96, 96
    plc_dest                0, 9, 32, -25254, -13576
    sleep                   10, 7
    work_set                WK_ENEMY, 0
    nop
    plc_dest                0, 6, 32, -25254, -13576
    evt_next
    nop
    xa_on                   0, 35
    message_on              0, 12, 0, 0, 0
    sleep                   10, 2
    work_set                WK_ENEMY, 0
    plc_motion              0, 19, 0
    nop
    sleep                   10, 39
    evt_next
    plc_motion              0, 19, 144
    nop
    sleep                   10, 9
    evt_next
    plc_motion              0, 19, 16
    plc_cnt                 25
    nop
    wsleep
    wsleeping
    evt_end                 0

.proc main_12
    cut_chg                 7
    evt_next
    nop
    xa_on                   0, 36
    message_on              0, 13, 0, 0, 0
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 0
    nop
    sleep                   10, 5
    evt_exec                255, I_GOSUB, main_13
    sleep                   10, 5
    plc_neck                4, 2, 0, 0, 80, 80
    sleep                   10, 25
    plc_neck                2, 0, 0, 256, 16, 16
    sleep                   10, 20
    evt_end                 0

.proc main_13
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 96, 96
    sleep                   10, 5
    plc_dest                0, 9, 32, -26254, -20051
    gosub                   26
    plc_motion              0, 23, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_14
    xa_on                   0, 37
    evt_next
    plc_motion              0, 16, 0
    nop
    sleep                   10, 5
    plc_neck                2, 0, 256, 256, 20, 20
    sleep                   10, 20
    plc_neck                2, 0, -256, 256, 20, 20
    sleep                   10, 20
    plc_neck                2, 0, 256, 256, 40, 40
    sleep                   10, 10
    plc_neck                2, 0, -256, 256, 40, 40
    plc_motion              0, 18, 0
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 32, 32
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    plc_cnt                 5
    nop
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 15
    plc_motion              0, 15, 0
    sleep                   10, 20
    plc_motion              0, 16, 0
    sleep                   10, 15
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    evt_end                 0

.proc main_15
    sleep                   10, 10
    xa_on                   0, 38
    message_on              0, 15, 0, 0, 0
    sleep                   10, 2
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 10
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 0
    nop
    plc_neck                5, 1, 0, 0, 64, 64
    sleep                   10, 20
    plc_neck                2, 0, -320, 1024, 32, 32
    plc_motion              0, 23, 0
    plc_cnt                 10
    sleep                   10, 14
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 32, 32
    work_set                WK_ENEMY, 0
    plc_motion              0, 23, 0
    plc_cnt                 14
    work_set                WK_OBJECT, 0
    super_set               0, 130, 129, 181, 243, 349, 1024, -2752, 0
    sleep                   10, 1
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 130, 129, 228, 193, 349, 1024, -2752, 0
    sleep                   10, 1
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 130, 142, 0, 243, -1, 1024, -2048, 0
    sleep                   10, 8
    work_set                WK_ENEMY, 0
    nop
    plc_neck                5, 1, 0, 0, 16, 16
    sleep                   10, 2
    plc_dest                0, 4, 32, -25849, -21167
    sleep                   10, 4
    plc_motion              0, 15, 16
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 12
    work_set                WK_ENEMY, 0
    plc_stop
    sleep                   10, 10
    plc_motion              0, 15, 16
    plc_cnt                 11
    evt_exec                255, I_GOSUB, main_16
    sleep                   10, 6
    plc_motion              0, 15, 144
    plc_cnt                 8
    sleep                   10, 6
    plc_stop
    nop
    wsleep
    wsleeping
    evt_end                 0

.proc main_16
    for                     0, off_1E50, 6
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 15
    nop
    calc                    0, OP_ADD, 16, 10
    member_set2             15, 16
    nop
    evt_next
    nop
    next                    0

off_1E50:
    evt_end                 0

.proc main_17
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 33, -24092, -18934
    gosub                   27
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    nop
    sleep                   10, 19
    plc_stop
    nop
    sleep                   10, 5
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 128
    plc_cnt                 11
    nop
    sleep                   10, 1
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 64, 142, 0, 224, -46, 1024, 64, 1985
    sleep                   10, 1
    work_set                WK_ENEMY, 0
    plc_stop
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 128
    nop
    plc_neck                5, 3, 0, 0, 16, 16
    plc_cnt                 13
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 1
    work_set                WK_ENEMY, 0
    plc_motion              0, 22, 16
    nop
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_stop
    xa_on                   0, 39
    message_on              0, 16, 0, 0, 0
    sleep                   10, 2
    work_set                WK_ENEMY, 0
    plc_motion              0, 15, 0
    nop
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    work_set                WK_PLAYER, 0
    plc_motion              0, 24, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 20, 0
    plc_cnt                 10
    sleep                   10, 20
    plc_motion              0, 16, 0
    plc_cnt                 10
    sleep                   10, 10
    work_set                WK_ENEMY, 0
    plc_motion              0, 23, 0
    plc_cnt                 10
    nop
    sleep                   10, 10
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    wsleep
    wsleeping
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, 128, 32, 32
    sleep                   10, 5
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 20
    plc_neck                5, 3, 0, 0, 16, 16
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 16
    plc_cnt                 10
    nop
    sleep                   10, 10
    evt_end                 0

.proc main_18
    work_set                WK_PLAYER, 0
    plc_motion              0, 22, 4
    plc_cnt                 10
    work_set                WK_ENEMY, 0
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    plc_neck                5, 3, 0, 0, 16, 16
    evt_end                 0

.proc main_19
    work_set                WK_ENEMY, 0
    plc_motion              0, 22, 4
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -3
    member_set2             0, 16
    nop
    plc_neck                5, 1, 0, 0, 16, 16
    evt_end                 0

.proc main_1A
    do                      0, off_1FDA
    evt_next
    nop
    edwhile                 off_1FDA
    ck                      5, 32, 0

off_1FDA:
    evt_end                 0

.proc main_1B
    do                      0, off_1FE8
    evt_next
    nop
    edwhile                 off_1FE8
    ck                      5, 33, 0

off_1FE8:
    evt_end                 0

.proc main_1C
    do                      0, off_1FF6
    evt_next
    nop
    edwhile                 off_1FF6
    ck                      5, 34, 0

off_1FF6:
    evt_end                 0

.proc main_1D
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28294, -26670, 1900, 2500, -14806, 0, -25766, -10192, 0, 20, 0, 0, 3, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15791, -16967, 3400, 2100, -17484, 0, -26200, -13256, 0, 18, 1, 0, 1, 128, 0, 0, UNLOCKED, 0
    sce_em_set              0, 0, ENEMY_LICKERGREY, 0, 0, 0, 14, 0, 119, -16982, 0, -18140, 2179, 0, 0
    sce_em_set              0, 1, ENEMY_LICKERGREY, 0, 0, 0, 14, 0, 120, -25562, 0, -8338, 1049, 0, 0
    sce_em_set              0, 2, ENEMY_LICKERGREY, 0, 0, 0, 14, 0, 156, -23359, 0, -20511, 1072, 0, 0
    evt_end                 0
