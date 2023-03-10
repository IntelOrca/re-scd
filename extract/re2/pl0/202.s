.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6075, -11550, 1800, 2200, -22963, -1800, -3039, 200, 1, 0, 4, 1, 13, 1, 0, 143, UNLOCK, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24620, -9510, 1800, 1800, -22680, 0, -26440, 3072, 1, 9, 0, 0, 8, 1, 0, 131, LOCKED, 0
    door_aot_se             20, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6075, -11550, 1800, 2200, -22963, -1800, -3039, 200, 1, 0, 4, 1, 13, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    if                      0, off_1C5C
    ck                      1, 1, 1
    obj_model_set           6, 0, 0, 0, 0, 0, 0, 10, 16, -9350, -1400, -19050, -2816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10260, -20290, 1800, 1800, ITEM_SMALLKEY, 1, 249, 6, 160
    endif
    nop

off_1C5C:
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24620, -23800, 1800, 1900, ITEM_HEARTKEY, 1, 113, 2, 160
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21420, -9700, 2800, 1200, 5, 0, 0, 0, 255, 255
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9360, -20290, 3600, 1800, 6, 0, 0, 0, 255, 255
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27250, -20350, 1800, 1800, 7, 0, 0, 0, 255, 255
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24200, -25680, 1800, 2100, 8, 0, 0, 0, 255, 255
    if                      0, off_1CE2
    ck                      0, 25, 0
    aot_set                 12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5560, -18350, 1800, 3260, 9, 0, 0, 0, 255, 255
    else                    0, off_1CFA

off_1CE2:
    item_aot_set            12, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5560, -18350, 1800, 3260, ITEM_HANDGUNAMMO, 15, 115, 255, 0
    nop
    nop

off_1CFA:
    if                      0, off_1D3E
    ck                      0, 25, 0
    if                      0, off_1D24
    ck                      1, 1, 0
    item_aot_set            15, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21660, -17000, 2700, 1800, ITEM_HANDGUNAMMO, 15, 116, 4, 0
    else                    0, off_1D3C

off_1D24:
    item_aot_set            15, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21660, -17000, 2700, 1800, ITEM_HANDGUNAMMO, 15, 116, 4, 0
    nop
    nop

off_1D3C:
    endif
    nop

off_1D3E:
    item_aot_set            16, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12500, -15300, 1800, 1800, ITEM_106, 1, 111, 0, 0
    item_aot_set            18, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26940, -12100, 1000, 1000, ITEM_HERBG, 1, 114, 3, 1
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -11750, -1400, -14530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -23830, -1500, -22930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -26500, 0, -11600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1E0C
    ck                      0, 25, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -20130, -1400, -16100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1E0C:
    if                      0, off_1E7A
    ck                      1, 1, 0
    if                      0, off_1E36
    ck                      4, 7, 0
    sce_em_set              0, 0, ENEMY_MARVINBRANAGH, 0, 8, 0, 0, 0, 28, -6100, 0, -16100, 2048, 261, 20
    else                    0, off_1E76

off_1E36:
    sce_em_set              0, 0, ENEMY_MARVINBRANAGH, 0, 0, 0, 4, 0, 28, -21600, 0, -25420, 3352, 261, 20
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY3, 5, 64, 0, 6, 0, 255, -20460, 0, -19000, 712, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    nop
    nop

off_1E76:
    else                    0, off_1F78

off_1E7A:
    if                      0, off_1F06
    ck                      29, 4, 0
    sce_em_set              0, 0, ENEMY_MARVINBRANAGH, 0, 0, 0, 4, 0, 28, -21600, 0, -25420, 3352, 261, 20
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY3, 5, 64, 0, 6, 131, 255, -20460, 0, -19000, 712, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    sce_em_set              0, 2, ENEMY_ZOMBIEGUY3, 0, 0, 0, 4, 131, 30, -25916, 0, -14744, 3124, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEGUY3, 0, 0, 0, 6, 131, 31, -13926, 0, -17714, 1976, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIEGUY3, 0, 0, 0, 4, 131, 125, -19185, 0, -10802, 2264, 0, 0
    else                    0, off_1F76

off_1F06:
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 131, 29, -21235, 0, -25221, 3352, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 0, 6, 131, 30, -20460, 0, -19000, 712, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 131, 31, -25916, 0, -14744, 3124, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 6, 0, 0, 4, 131, 125, -13926, 0, -17714, 1976, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 6, 0, 0, 6, 131, 126, -19185, 0, -10802, 2264, 0, 0
    nop
    nop

off_1F76:
    nop
    nop

off_1F78:
    if                      0, off_1FDA
    ck                      1, 1, 0
    if                      0, off_1F92
    ck                      4, 7, 0
    gosub                   9
    evt_exec                255, I_GOSUB, main_02
    else                    0, off_1FD6

off_1F92:
    if                      0, off_1FB2
    ck                      4, 9, 0
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -22050, -24130, 2760, 2030, 255, 0, I_GOSUB, main_03, 0, 0
    else                    0, off_1FD4

off_1FB2:
    if                      0, off_1FD2
    ck                      6, 28, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 512
    member_set2             7, 16
    nop
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_1FD2:
    nop
    nop

off_1FD4:
    nop
    nop

off_1FD6:
    else                    0, off_2000

off_1FDA:
    if                      0, off_1FFE
    ck                      29, 4, 0
    ck                      6, 28, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 512
    member_set2             7, 16
    nop
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_1FFE:
    nop
    nop

off_2000:
    evt_end                 0

.proc main_01
    if                      0, off_202E
    ck                      6, 28, 1
    if                      0, off_201E
    ck                      5, 12, 0
    sce_bgm_control         1, 5, 0, 0, 0
    set                     5, 12, 1
    endif
    nop

off_201E:
    if                      0, off_202C
    ck                      1, 1, 0
    set                     29, 4, 1
    endif
    nop

off_202C:
    endif
    nop

off_202E:
    evt_end                 0

.proc main_02
    set                     2, 7, 1
    set                     1, 27, 1
    sleep                   10, 1
    xa_on                   0, 3
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -6100, -2000, -16100, 60, 30
    plc_dest                0, 21, 33, 1024, 128
    gosub                   6
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 255
    member_set2             26, 16
    nop
    if                      0, off_2078
    member_cmp              0, 26, 5, 0, 0
    else                    0, off_207E

off_2078:
    plc_motion              2, 2, 4
    nop
    nop

off_207E:
    sleep                   10, 15
    wsleep
    wsleeping
    cut_chg                 6
    sleep                   10, 30
    cut_chg                 0
    sleep                   10, 1
    xa_on                   0, 1
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 255
    member_set2             26, 16
    nop
    if                      0, off_20B6
    member_cmp              0, 26, 5, 0, 0
    endif
    nop

off_20B6:
    sleep                   10, 10
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 33, -9350, -14000
    plc_flg                 1, 4
    gosub                   6
    plc_dest                0, 5, 33, -7530, -17350
    gosub                   6
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    plc_dest                0, 21, 33, -265, 128
    gosub                   6
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    plc_motion              1, 6, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                1, -7530, -700, -17350, 60, 30
    sleep                   10, 20
    wsleep
    wsleeping
    sce_bgm_control         0, 5, 0, 0, 0
    message_on              0, 14, 0, 0, 0
    xa_on                   0, 2
    wsleep
    wsleeping
    message_on              0, 15, 0, 0, 0
    xa_on                   0, 4
    sleep                   10, 120
    work_set                WK_ENEMY, 0
    plc_motion              0, 7, 0
    nop
    sleep                   10, 60
    plc_motion              0, 7, 128
    sleep                   10, 40
    plc_motion              0, 5, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    message_on              0, 16, 0, 0, 0
    xa_on                   0, 6
    work_set                WK_PLAYER, 0
    plc_motion              0, 5, 0
    nop
    sleep                   10, 30
    plc_motion              0, 5, 128
    sleep                   10, 30
    plc_motion              0, 8, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 11
    sleep                   10, 1
    message_on              0, 17, 0, 0, 0
    xa_on                   0, 7
    work_set                WK_ENEMY, 0
    plc_motion              0, 5, 20
    nop
    sleep                   10, 90
    plc_motion              0, 7, 0
    sleep                   10, 60
    plc_motion              0, 7, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    wsleep
    wsleeping
    message_on              0, 18, 0, 0, 0
    xa_on                   0, 8
    sleep                   10, 30
    work_set                WK_ENEMY, 0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 60
    plc_motion              0, 10, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    message_on              0, 19, 0, 0, 0
    xa_on                   0, 9
    sleep                   10, 30
    work_set                WK_ENEMY, 0
    plc_motion              0, 7, 0
    nop
    sleep                   10, 60
    plc_motion              0, 7, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    wsleep
    wsleeping
    sleep                   10, 30
    message_on              0, 20, 0, 0, 0
    xa_on                   0, 10
    sleep                   10, 30
    work_set                WK_ENEMY, 0
    plc_motion              0, 6, 0
    nop
    sleep                   10, 60
    plc_motion              0, 6, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    sleep                   10, 60
    plc_dest                0, 20, 0, 0, 0
    plc_neck                1, -7530, 0, -17350, 60, 30
    wsleep
    wsleeping
    message_on              0, 21, 0, 0, 0
    xa_on                   0, 11
    work_set                WK_PLAYER, 0
    plc_motion              0, 6, 0
    nop
    sleep                   10, 15
    plc_motion              0, 6, 128
    sleep                   10, 15
    plc_motion              0, 8, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 11
    sleep                   10, 1
    message_on              0, 25, 0, 0, 0
    xa_on                   0, 12
    work_set                WK_ENEMY, 0
    nop
    plc_neck                1, -7530, -700, -17350, 60, 30
    plc_motion              0, 6, 0
    sleep                   10, 80
    plc_motion              0, 6, 128
    sleep                   10, 80
    wsleep
    wsleeping
    sleep                   10, 30
    xa_on                   0, 13
    message_on              0, 26, 0, 0, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 7, 0
    nop
    sleep                   10, 30
    sleep                   10, 60
    work_set                WK_PLAYER, 0
    plc_motion              0, 6, 0
    nop
    sleep                   10, 20
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    plc_motion              0, 6, 128
    nop
    sleep                   10, 20
    work_set                WK_ENEMY, 0
    plc_motion              0, 7, 128
    nop
    wsleep
    wsleeping
    sce_item_get            53, 1
    set                     8, 5, 1
    nop
    sleep                   10, 1
    message_on              0, 27, 0, 0, 0
    xa_on                   0, 14
    work_set                WK_PLAYER, 0
    plc_motion              0, 5, 0
    nop
    sleep                   10, 20
    plc_motion              0, 5, 128
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    work_set                WK_ENEMY, 0
    plc_motion              0, 12, 0
    plc_cnt                 11
    cut_chg                 6
    nop
    sleep                   10, 1
    message_on              0, 28, 0, 0, 0
    xa_on                   0, 15
    sleep                   10, 30
    se_on                   2, 10, 3, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 60
    message_on              0, 29, 0, 0, 0
    xa_on                   0, 16
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    sleep                   10, 20
    plc_motion              2, 2, 0
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    message_on              0, 30, 0, 0, 0
    xa_on                   0, 17
    work_set                WK_PLAYER, 0
    plc_motion              0, 9, 0
    work_set                WK_ENEMY, 0
    plc_motion              0, 12, 128
    sleep                   10, 23
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              0, 9, 128
    nop
    wsleep
    wsleeping
    work_set                WK_ENEMY, 0
    plc_motion              0, 5, 20
    work_set                WK_PLAYER, 0
    plc_neck                0, 0, 0, 0, 0, 0
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 33, -8200, -11500
    gosub                   6
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    gosub                   8
    sce_bgmtbl_set          0, 2, 2, 774, 49152
    set                     4, 7, 1
    aot_on                  20
    evt_end                 0

.proc main_03
    aot_reset               6, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    set                     1, 27, 1
    sce_bgm_control         0, 5, 0, 0, 0
    cut_chg                 7
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 33, -19948, -24807
    plc_rot                 0, 128
    gosub                   6
    sleep                   10, 30
    cut_chg                 5
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -21325, 0, -25265
    dir_set                 0, 0, 3512, 0
    plc_motion              0, 8, 64
    plc_cnt                 20
    sleep                   10, 1
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    work_set                WK_ENEMY, 0
    nop
    plc_neck                2, 0, 0, -32, 60, 30
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 32767
    member_set2             7, 16
    nop
    plc_motion              0, 8, 0
    plc_cnt                 20
    sleep                   10, 40
    sleep                   10, 14
    cut_chg                 8
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -20000, 0, -23600
    dir_set                 0, 0, 1250, 0
    plc_motion              2, 2, 4
    sleep                   10, 1
    xa_on                   0, 3
    sce_bgm_control         1, 1, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 512
    member_set2             7, 16
    nop
    pos_set                 0, -21150, 0, -24850
    dir_set                 0, 0, 3500, 0
    sleep                   10, 5
    plc_motion              2, 0, 20
    do                      0, off_24E2
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 512
    member_set2             26, 16
    nop
    evt_next
    nop
    edwhile                 off_24E2
    member_cmp              0, 26, 5, 0, 0

off_24E2:
    sleep                   10, 60
    wsleep
    wsleeping
    cut_chg                 5
    work_set                WK_ENEMY, 0
    nop
    member_set              6, 30, 0
    member_set              7, 0, 0
    member_set              2, 0, 0
    member_set              3, 0, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    sleep                   10, 1
    sce_bgmtbl_set          0, 2, 2, 65286, 0
    set                     4, 9, 1
    gosub                   8
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 0
    plc_motion              0, 8, 0
    plc_cnt                 20
    nop
    sleep                   10, 40
    evt_end                 0

.proc main_05
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 36, -19660, -20500
    gosub                   7
    plc_motion              2, 2, 4
    evt_end                 0

.proc main_06
    do                      0, off_254A
    evt_next
    nop
    edwhile                 off_254A
    ck                      5, 33, 0

off_254A:
    evt_end                 0

.proc main_07
    do                      0, off_2558
    evt_next
    nop
    edwhile                 off_2558
    ck                      5, 36, 0

off_2558:
    evt_end                 0

.proc main_08
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_09
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    evt_end                 0

.proc main_0A
    sleep                   10, 1
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 512
    member_set2             7, 16
    nop
    sleep                   10, 5
    plc_motion              2, 0, 4
    do                      0, off_25B8
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 512
    member_set2             26, 16
    nop
    evt_next
    nop
    edwhile                 off_25B8
    member_cmp              0, 26, 5, 0, 0

off_25B8:
    sleep                   10, 1
    work_set                WK_ENEMY, 0
    nop
    member_set              6, 30, 0
    member_set              7, 0, 0
    member_set              2, 0, 0
    member_set              3, 0, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    evt_end                 0

.proc main_0B
    sleep                   10, 1
    work_set                WK_ENEMY, 0
    nop
    member_set              6, 30, 0
    member_set              7, 0, 0
    member_set              2, 0, 0
    member_set              3, 0, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    evt_end                 0

.proc main_0C
    do                      0, off_2608
    evt_next
    nop
    edwhile                 off_2608
    ck                      5, 35, 0

off_2608:
    evt_end                 0
    db                      0x08, 0x68
