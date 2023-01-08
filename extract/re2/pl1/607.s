.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21070, -24800, 1800, 1800, -11470, 0, -13410, 0, 5, 6, 5, 0, 41, 1, 0, 0, UNLOCKED, 0
    if                      0, off_0B88
    ck                      1, 0, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, -21274, 0, -23553, 2064, 5, 1, 0, 0, 39, 0, 0, 0, UNLOCKED, 0
    endif
    nop

off_0B88:
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -21700, -1350, -26550, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 2, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22870, -26810, 2400, 1800, 0, 0, 1, 0, 0, 0
    aot_set                 9, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24525, -25300, 1800, 1700, 10, 0, 0, 0, 0, 0
    evt_end                 0

.main
.proc main_00
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -23450, -1260, -25450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -19100, -2300, -16540, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24525, -25300, 1800, 1700, ITEM_INKRIBBON, 3, 27, 3, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19760, -17470, 2000, 2000, ITEM_HERBG, 1, 52, 2, 0
    if                      0, off_0CCA
    ck                      1, 1, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -25500, -1260, -21450, 0, 1408, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26535, -21610, 1800, 1800, ITEM_ACIDROUNDS, 6, 54, 5, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -32000, -32000, 1, 1, ITEM_FLAMEROUNDS, 6, 53, 255, 0
    else                    0, off_0D1E

off_0CCA:
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -25500, -1260, -21450, 0, 1408, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -32000, -32000, 1, 1, ITEM_HANDGUNAMMO, 15, 53, 255, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26535, -21610, 1800, 1800, ITEM_FLAMEROUNDS, 6, 54, 4, 0
    nop
    nop

off_0D1E:
    if                      0, off_0D3C
    ck                      34, 53, 0
    aot_set                 10, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24620, -16365, 2200, 1800, 255, 0, I_GOSUB, main_0D, 0, 0
    endif
    nop

off_0D3C:
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26535, -23310, 1800, 8000, 18, 0, 0, 0, 255, 255
    if                      0, off_0E16
    ck                      4, 130, 0
    if                      0, off_0D96
    ck                      1, 1, 0
    sce_em_set              0, 255, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 0, 0, 0, 0, 255, -19050, 90, -19850, 0, 256, 84
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    sce_bgm_control         1, 1, 0, 0, 0
    evt_exec                255, I_GOSUB, main_02
    else                    0, off_0E12

off_0D96:
    if                      0, off_0DE4
    ck                      34, 29, 1
    if                      0, off_0DBE
    keep_item_ck            98
    sce_em_set              0, 255, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 4, 0, 32, 0, 255, -21285, 0, -24505, 2690, 0, 0
    else                    0, off_0DD6

off_0DBE:
    sce_em_set              0, 255, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 4, 0, 32, 0, 255, -23200, 0, -19850, 928, 0, 0
    nop
    nop

off_0DD6:
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0C, 0, 0
    else                    0, off_0E10

off_0DE4:
    if                      0, off_0E0E
    ck                      1, 3, 1
    sce_em_set              0, 255, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 4, 0, 32, 0, 255, -21285, 0, -24505, 2690, 0, 0
    aot_reset               0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_0C, 0, 0
    endif
    nop

off_0E0E:
    nop
    nop

off_0E10:
    nop
    nop

off_0E12:
    else                    0, off_0E62

off_0E16:
    if                      0, off_0E4A
    ck                      3, 132, 0
    sce_em_set              0, 255, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 0, 0, 0, 0, 255, -19050, 90, -19850, 0, 256, 84
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    member_set2             0, 16
    nop
    else                    0, off_0E60

off_0E4A:
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20470, -21450, 1800, 3600, 20, 0, 0, 0, 255, 255
    nop
    nop

off_0E60:
    nop
    nop

off_0E62:
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    evt_next
    nop
    sce_fade_set            1, 2, 7, 0, 248
    set                     2, 7, 1
    set                     1, 27, 1
    set                     4, 130, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -20970, 0, -19260
    dir_set                 0, 0, 400, 0
    plc_neck                5, 2, 0, 0, 244, 244
    cut_auto                0
    cut_chg                 1
    plc_motion              1, 6, 192
    plc_cnt                 5
    sleep                   10, 20
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 320, 0, 255
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    nop
    xa_on                   0, 14
    sleep                   10, 40
    plc_neck                6, 0, 0, 0, 0, 0
    gosub                   3
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_03
    evt_exec                255, I_GOSUB, main_04
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 32, -21300, -22647
    do                      0, off_0EFC
    evt_next
    nop
    edwhile                 off_0EFC
    ck                      5, 32, 0

off_0EFC:
    plc_motion              0, 22, 0
    sleep                   10, 6
    plc_neck                5, 2, 0, 0, 30, 30
    sleep                   10, 3
    wsleep
    wsleeping
    cut_chg                 4
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -21450, 0, -22140
    dir_set                 0, 0, 200, 0
    plc_motion              0, 22, 0
    plc_rot                 1, 65496
    sleep                   10, 12
    xa_on                   0, 15
    message_on              0, 10, 0, 0, 0
    evt_next
    nop
    plc_dest                0, 4, 32, -20768, -19860
    do                      0, off_0F56
    evt_next
    nop
    edwhile                 off_0F56
    ck                      5, 32, 0

off_0F56:
    evt_exec                255, I_GOSUB, main_05
    plc_dest                0, 21, 32, 200, 50
    do                      0, off_0F6E
    evt_next
    nop
    edwhile                 off_0F6E
    ck                      5, 32, 0

off_0F6E:
    plc_motion              0, 17, 0
    sleep                   10, 24
    plc_motion              0, 18, 132
    wsleep
    wsleeping
    evt_exec                255, I_GOSUB, main_06
    evt_next
    nop
    wsleep
    wsleeping
    evt_next
    nop
    xa_on                   0, 17
    message_on              0, 12, 0, 0, 0
    evt_next
    nop
    sleep                   10, 15
    plc_motion              0, 16, 0
    sleep                   10, 55
    plc_motion              0, 19, 0
    sleep                   10, 30
    plc_motion              0, 19, 128
    sleep                   10, 15
    plc_motion              0, 17, 0
    sleep                   10, 24
    wsleep
    wsleeping
    cut_chg                 3
    sleep                   10, 1
    plc_motion              1, 6, 0
    plc_neck                2, 0, 0, -256, 20, 30
    evt_exec                255, I_GOSUB, main_07
    evt_next
    nop
    wsleep
    wsleeping
    cut_chg                 6
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_08
    evt_next
    nop
    sleep                   10, 30
    plc_neck                2, 0, 0, 0, 0, 10
    sleep                   10, 10
    plc_neck                2, 0, 0, -256, 0, 10
    sleep                   10, 40
    plc_neck                2, 0, 0, 0, 0, 10
    sleep                   10, 10
    plc_neck                2, 0, 0, -256, 0, 10
    sleep                   10, 100
    plc_neck                2, 0, 0, 0, 0, 10
    sleep                   10, 10
    plc_neck                2, 0, 0, -256, 0, 10
    sleep                   10, 40
    plc_neck                2, 0, 0, 0, 0, 10
    sleep                   10, 20
    plc_neck                2, 0, 128, 0, 10, 0
    sleep                   10, 15
    plc_neck                2, 0, -256, 0, 10, 0
    sleep                   10, 15
    plc_neck                2, 0, 256, 0, 10, 0
    sleep                   10, 15
    plc_neck                2, 0, -128, 0, 10, 0
    sleep                   10, 15
    plc_neck                2, 0, 0, -256, 0, 10
    sleep                   10, 10
    plc_neck                2, 0, 240, 256, 20, 20
    sleep                   10, 30
    wsleep
    wsleeping
    evt_exec                255, I_GOSUB, main_09
    sleep                   10, 20
    plc_neck                2, 0, 0, -256, 30, 20
    sleep                   10, 30
    wsleep
    wsleeping
    sleep                   10, 40
    cut_chg                 10
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_0A
    evt_next
    nop
    wsleep
    wsleeping
    cut_chg                 10
    evt_next
    nop
    xa_on                   0, 22
    message_on              0, 16, 0, 0, 0
    evt_next
    nop
    plc_neck                2, 0, 128, 0, 10, 0
    sleep                   10, 15
    plc_neck                2, 0, -256, 0, 10, 0
    sleep                   10, 15
    plc_neck                2, 0, 256, 0, 10, 0
    sleep                   10, 15
    plc_neck                2, 0, -128, 0, 10, 0
    sleep                   10, 10
    sleep                   10, 10
    wsleep
    wsleeping
    cut_chg                 4
    plc_motion              1, 6, 128
    plc_neck                5, 2, 0, 0, 30, 30
    sleep                   10, 25
    xa_on                   0, 13
    message_on              0, 17, 0, 0, 0
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_0B
    plc_motion              0, 23, 0
    sleep                   10, 20
    plc_motion              0, 23, 128
    sleep                   10, 20
    plc_motion              0, 19, 0
    sleep                   10, 30
    plc_motion              0, 19, 128
    sleep                   10, 30
    plc_motion              0, 20, 0
    sleep                   10, 30
    plc_motion              0, 20, 128
    plc_neck                6, 0, 0, 0, 0, 0
    sleep                   10, 30
    wsleep
    wsleeping
    cut_chg                 1
    sce_bgmtbl_set          0, 7, 6, 65292, 0
    evt_next
    nop
    evt_end                 0

.proc main_04
    sleep                   10, 30
    message_on              0, 9, 0, 0, 0
    evt_next
    nop
    evt_end                 0

.proc main_05
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -512, 320, 30, 30
    evt_end                 0

.proc main_06
    xa_on                   0, 16
    message_on              0, 11, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 1024, 30, 50
    sleep                   10, 20
    plc_neck                2, 0, -512, 320, 30, 30
    sleep                   10, 10
    evt_end                 0

.proc main_07
    xa_on                   0, 18
    message_on              0, 13, 0, 0, 0
    sleep                   10, 10
    evt_end                 0

.proc main_08
    xa_on                   0, 19
    message_on              0, 14, 0, 0, 0
    sleep                   10, 10
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 0, 256, 0, 30
    sleep                   10, 90
    plc_neck                2, 0, 768, 320, 20, 20
    sleep                   10, 60
    plc_neck                2, 0, 0, 512, 0, 15
    sleep                   10, 110
    plc_neck                2, 0, 0, 320, 40, 30
    sleep                   10, 110
    evt_end                 0

.proc main_09
    xa_on                   0, 20
    message_on              0, 15, 0, 0, 0
    evt_next
    work_set                WK_SPLAYER, 0
    plc_neck                2, 0, 0, 512, 0, 30
    sleep                   10, 80
    plc_neck                2, 0, -512, 256, 30, 20
    sleep                   10, 78
    evt_end                 0

.proc main_0A
    xa_on                   0, 21
    evt_next
    nop
    plc_neck                2, 0, 800, 320, 40, 30
    sleep                   10, 40
    plc_neck                2, 0, 768, 260, 0, 20
    sleep                   10, 5
    plc_neck                2, 0, 768, 320, 0, 20
    sleep                   10, 10
    plc_neck                2, 0, 768, 260, 0, 20
    sleep                   10, 5
    plc_neck                2, 0, 768, 320, 0, 20
    sleep                   10, 30
    plc_neck                2, 0, 768, 260, 0, 20
    sleep                   10, 5
    plc_neck                2, 0, 768, 320, 0, 20
    sleep                   10, 10
    plc_neck                2, 0, 768, 260, 0, 20
    sleep                   10, 5
    plc_neck                2, 0, 768, 320, 0, 20
    sleep                   10, 5
    evt_end                 0

.proc main_0B
    sleep                   10, 10
    plc_neck                2, 0, -320, 300, 30, 20
    sleep                   10, 30
    evt_end                 0

.proc main_0C
    if                      0, off_12F4
    keep_item_ck            98
    else                    0, off_1304

off_12F4:
    if                      0, off_1302
    ck                      4, 139, 0
    set                     1, 3, 0
    endif
    nop

off_1302:
    nop
    nop

off_1304:
    aot_reset               0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 50, 211, 0, 0, 158, 203
    aot_on                  0
    evt_end                 0

.proc main_0D
    se_on                   2, 40, 1, 0, 0, 0
    aot_on                  5
    evt_next
    nop
    if                      0, off_1336
    ck                      34, 53, 1
    aot_reset               10, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1336:
    evt_end                 0
