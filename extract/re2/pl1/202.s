.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6075, -11550, 1800, 2200, -22963, -1800, -3039, 200, 1, 0, 4, 1, 13, 1, 0, 143, UNLOCK, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24620, -9510, 1800, 1800, -22680, 0, -26440, 3072, 1, 9, 0, 0, 8, 1, 0, 131, LOCKED, 0
    door_aot_se             20, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6075, -11550, 1800, 2200, -22963, -1800, -3039, 200, 1, 0, 4, 1, 13, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_DETONATOR, 1, 113, 2, 0
    if                      0, off_1C4C
    ck                      8, 113, 0
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24620, -23800, 1800, 1900, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_1C4C:
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21420, -9700, 2800, 1200, 5, 0, 0, 0, 255, 255
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9360, -20290, 3600, 1800, 6, 0, 0, 0, 255, 255
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27250, -20350, 1800, 1800, 7, 0, 0, 0, 255, 255
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24200, -25680, 1800, 2100, 8, 0, 0, 0, 255, 255
    if                      0, off_1CBC
    ck                      0, 25, 0
    aot_set                 12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5560, -18350, 1800, 3260, 9, 0, 0, 0, 255, 255
    else                    0, off_1CD4

off_1CBC:
    item_aot_set            12, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5560, -18350, 1800, 3260, ITEM_HANDGUNAMMO, 15, 115, 255, 0
    nop
    nop

off_1CD4:
    if                      0, off_1D18
    ck                      0, 25, 0
    if                      0, off_1CFE
    ck                      1, 1, 0
    item_aot_set            15, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21660, -17000, 2700, 1800, ITEM_HANDGUNAMMO, 15, 116, 4, 0
    else                    0, off_1D16

off_1CFE:
    item_aot_set            15, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21660, -17000, 2700, 1800, ITEM_HANDGUNAMMO, 15, 116, 4, 0
    nop
    nop

off_1D16:
    endif
    nop

off_1D18:
    item_aot_set            16, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12500, -15300, 1800, 1800, ITEM_106, 1, 111, 0, 0
    item_aot_set            18, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26940, -12100, 1000, 1000, ITEM_HERBG, 1, 114, 3, 1
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -11750, -1400, -14530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -23830, -1500, -22930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -26500, 0, -11600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1DE6
    ck                      0, 25, 0
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -20130, -1400, -16100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1DE6:
    if                      0, off_1E54
    ck                      1, 1, 0
    if                      0, off_1E10
    ck                      4, 7, 0
    sce_em_set              0, 0, ENEMY_MARVINBRANAGH, 0, 8, 0, 0, 0, 28, -6100, 0, -16100, 2048, 261, 20
    else                    0, off_1E50

off_1E10:
    sce_em_set              0, 0, ENEMY_MARVINBRANAGH, 0, 0, 0, 4, 0, 28, -21600, 0, -25420, 3352, 261, 20
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY3, 5, 64, 0, 6, 128, 255, -20460, 0, -19000, 712, 0, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    nop
    nop

off_1E50:
    else                    0, off_1F52

off_1E54:
    if                      0, off_1EE0
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
    else                    0, off_1F50

off_1EE0:
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 131, 29, -21235, 0, -25221, 3352, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 0, 6, 131, 30, -20460, 0, -19000, 712, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 131, 31, -25916, 0, -14744, 3124, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 6, 0, 0, 4, 131, 125, -13926, 0, -17714, 1976, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 6, 0, 0, 6, 131, 126, -19185, 0, -10802, 2264, 0, 0
    nop
    nop

off_1F50:
    nop
    nop

off_1F52:
    if                      0, off_1FB4
    ck                      1, 1, 0
    if                      0, off_1F6C
    ck                      4, 7, 0
    gosub                   10
    evt_exec                255, I_GOSUB, main_03
    else                    0, off_1FB0

off_1F6C:
    if                      0, off_1F8C
    ck                      4, 9, 0
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -22050, -24130, 2760, 2030, 255, 0, I_GOSUB, main_04, 0, 0
    else                    0, off_1FAE

off_1F8C:
    if                      0, off_1FAC
    ck                      6, 28, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 512
    member_set2             7, 16
    nop
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_1FAC:
    nop
    nop

off_1FAE:
    nop
    nop

off_1FB0:
    else                    0, off_1FDA

off_1FB4:
    if                      0, off_1FD8
    ck                      29, 4, 0
    ck                      6, 28, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 512
    member_set2             7, 16
    nop
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_1FD8:
    nop
    nop

off_1FDA:
    evt_end                 0

.proc main_01
    if                      0, off_2008
    ck                      6, 28, 1
    if                      0, off_1FF8
    ck                      5, 12, 0
    sce_bgm_control         1, 5, 0, 0, 0
    set                     5, 12, 1
    endif
    nop

off_1FF8:
    if                      0, off_2006
    ck                      1, 1, 0
    set                     29, 4, 1
    endif
    nop

off_2006:
    endif
    nop

off_2008:
    evt_end                 0

.proc main_02
    set                     2, 7, 1
    aot_on                  4
    sleep                   10, 1
    set                     2, 7, 0
    if                      0, off_203C
    ck                      8, 113, 1
    aot_reset               7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_203A
    ck                      8, 73, 0
    message_on              0, 0, 0, 255, 255
    endif
    nop

off_203A:
    endif
    nop

off_203C:
    evt_end                 0

.proc main_03
    set                     2, 7, 1
    set                     1, 27, 1
    sleep                   10, 1
    xa_on                   0, 0
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -6100, -2000, -16100, 60, 30
    plc_dest                0, 21, 33, 1024, 128
    gosub                   7
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 255
    member_set2             26, 16
    nop
    if                      0, off_2086
    member_cmp              0, 26, 5, 0, 0
    else                    0, off_208C

off_2086:
    plc_motion              2, 2, 4
    nop
    nop

off_208C:
    sleep                   10, 15
    wsleep
    wsleeping
    cut_chg                 6
    sleep                   10, 30
    cut_chg                 0
    sleep                   10, 1
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 255
    member_set2             26, 16
    nop
    if                      0, off_20C0
    member_cmp              0, 26, 5, 0, 0
    endif
    nop

off_20C0:
    sleep                   10, 10
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 33, -9350, -14000
    plc_flg                 1, 4
    gosub                   7
    plc_dest                0, 5, 33, -7530, -17350
    gosub                   7
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    plc_dest                0, 21, 33, -265, 128
    gosub                   7
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -7572, 0, -17091
    dir_set                 0, 0, 3735, 0
    cut_chg                 9
    sleep                   10, 1
    sce_bgm_control         0, 5, 0, 0, 0
    message_on              0, 31, 0, 0, 0
    xa_on                   0, 1
    plc_motion              1, 6, 0
    sleep                   10, 20
    wsleep
    wsleeping
    message_on              0, 32, 0, 0, 0
    xa_on                   0, 2
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 5, 0
    nop
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 5, 128
    work_set                WK_ENEMY, 0
    nop
    plc_neck                1, -7530, -700, -17350, 60, 30
    sleep                   10, 30
    wsleep
    wsleeping
    message_on              0, 33, 0, 0, 0
    xa_on                   0, 3
    wsleep
    wsleeping
    message_on              0, 34, 0, 0, 0
    xa_on                   0, 4
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    plc_motion              0, 7, 0
    nop
    sleep                   10, 20
    sleep                   10, 30
    plc_motion              0, 7, 128
    sleep                   10, 20
    plc_motion              0, 5, 0
    sleep                   10, 30
    plc_motion              0, 5, 128
    sleep                   10, 30
    wsleep
    wsleeping
    message_on              0, 35, 0, 0, 0
    xa_on                   0, 5
    sleep                   10, 120
    wsleep
    wsleeping
    message_on              0, 36, 0, 0, 0
    xa_on                   0, 6
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
    message_on              0, 37, 0, 0, 0
    xa_on                   0, 7
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
    message_on              0, 38, 0, 0, 0
    xa_on                   0, 8
    work_set                WK_ENEMY, 0
    plc_motion              0, 5, 20
    nop
    sleep                   10, 90
    plc_motion              0, 7, 0
    sleep                   10, 60
    plc_motion              0, 7, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    sleep                   10, 90
    plc_motion              0, 6, 0
    sleep                   10, 60
    plc_motion              0, 6, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    message_on              0, 39, 0, 0, 0
    xa_on                   0, 9
    sleep                   10, 30
    work_set                WK_ENEMY, 0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 60
    plc_motion              0, 10, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    sleep                   10, 90
    plc_motion              0, 7, 0
    sleep                   10, 60
    plc_motion              0, 7, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 0
    work_set                WK_ENEMY, 0
    nop
    plc_neck                1, -7530, 0, -17350, 60, 30
    wsleep
    wsleeping
    message_on              0, 40, 0, 0, 0
    xa_on                   0, 10
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
    message_on              0, 41, 0, 0, 0
    xa_on                   0, 11
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
    xa_on                   0, 12
    message_on              0, 42, 0, 0, 0
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
    message_on              0, 43, 0, 0, 0
    xa_on                   0, 13
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
    message_on              0, 44, 0, 0, 0
    xa_on                   0, 14
    sleep                   10, 30
    se_on                   2, 10, 3, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 60
    message_on              0, 45, 0, 0, 0
    xa_on                   0, 15
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    sleep                   10, 20
    plc_motion              2, 2, 0
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    message_on              0, 46, 0, 0, 0
    xa_on                   0, 16
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
    gosub                   7
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    gosub                   9
    sce_bgmtbl_set          0, 2, 2, 774, 49152
    set                     4, 7, 1
    aot_on                  20
    evt_end                 0

.proc main_04
    aot_reset               6, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    set                     1, 27, 1
    sce_bgm_control         0, 5, 0, 0, 0
    cut_chg                 7
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 33, -19948, -24807
    plc_rot                 0, 128
    gosub                   7
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
    xa_on                   0, 0
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
    do                      0, off_255C
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 512
    member_set2             26, 16
    nop
    evt_next
    nop
    edwhile                 off_255C
    member_cmp              0, 26, 5, 0, 0

off_255C:
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
    gosub                   9
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, 0
    plc_motion              0, 8, 0
    plc_cnt                 20
    nop
    sleep                   10, 40
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 36, -19660, -20500
    gosub                   8
    plc_motion              2, 2, 4
    evt_end                 0

.proc main_07
    do                      0, off_25C4
    evt_next
    nop
    edwhile                 off_25C4
    ck                      5, 33, 0

off_25C4:
    evt_end                 0

.proc main_08
    do                      0, off_25D2
    evt_next
    nop
    edwhile                 off_25D2
    ck                      5, 36, 0

off_25D2:
    evt_end                 0

.proc main_09
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_0A
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    evt_end                 0

.proc main_0B
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
    do                      0, off_2632
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, 512
    member_set2             26, 16
    nop
    evt_next
    nop
    edwhile                 off_2632
    member_cmp              0, 26, 5, 0, 0

off_2632:
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

.proc main_0D
    do                      0, off_2682
    evt_next
    nop
    edwhile                 off_2682
    ck                      5, 35, 0

off_2682:
    evt_end                 0
