.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28323, -26784, 2000, 2500, -23222, 0, -24944, 2568, 1, 12, 11, 0, 47, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -18350, 0, -26500, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1136
    ck                      FG_GAME, F_SCENARIO, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -17050, -1300, -24200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1138

off_1136:
    nop
    nop

off_1138:
    if                      0, off_1158
    ck                      FG_0, F_DIFFICULT, 1
    item_aot_set            11, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21450, -13350, 1500, 800, ITEM_FAIDSPRAY, 1, 215, 255, 1
    endif
    nop

off_1158:
    item_aot_set            1, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19200, -27300, 1200, 1000, ITEM_COG, 1, 108, 0, 1
    if                      0, off_1196
    ck                      FG_GENERAL_1, 75, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -18350, -2500, -27000
    dir_set                 0, 2048, 0, 0
    aot_reset               1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1196:
    if                      0, off_11B8
    ck                      FG_GAME, F_SCENARIO, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17800, -25400, 1000, 1000, ITEM_FILMB, 1, 109, 1, 0
    else                    0, off_11BA

off_11B8:
    nop
    nop

off_11BA:
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27900, -12500, 2100, 2100, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22000, -10500, 800, 800, 255, 0, I_GOSUB, main_06, 0, 0
    aot_set                 5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18300, -10500, 800, 800, 255, 0, I_GOSUB, main_07, 0, 0
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25600, -10500, 800, 800, 255, 0, I_GOSUB, main_08, 0, 0
    aot_set                 7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19400, -27950, 3000, 1600, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 8, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -27900, -12500, 2100, 2100, 10, 0, ITEM_LIGHTER, 0, aot, 0
    aot_set                 12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23600, -14200, 4100, 1700, 10, 0, 0, 0, 255, 255
    if                      0, off_1326
    ck                      FG_GAME, F_SCENARIO, 1
    if                      0, off_1302
    ck                      FG_GENERAL_1, 79, 0
    set                     FG_ENEMY, 198, 0
    if                      0, off_127C
    ck                      FG_GENERAL_1, 78, 0
    sce_em_set              0, 0, ENEMY_TYRANT_1, 6, 67, 0, 18, 0, 198, -20000, -9000, -8000, 1024, 0, 0
    else                    0, off_129A

off_127C:
    sce_em_set              0, 0, ENEMY_TYRANT_1, 0, 0, 0, 18, 0, 198, -22400, 0, -24300, 1024, 0, 0
    sce_bgm_control         0, 1, 0, 0, 0
    nop
    nop

off_129A:
    if                      0, off_12C4
    ck                      FG_ENEMY, 201, 0
    item_aot_set            20, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 194, -900, -900, 1800, 1800, ITEM_HANDGUNAMMO, 30, 208, 255, 1
    aot_reset               20, SCE_AUTO, SAT_PL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_12C4:
    aot_set                 9, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -23560, -13680, 1800, 4000, 255, 0, I_GOSUB, main_0F, 0, 0
    aot_set                 10, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -26800, -13300, 5200, 1600, 255, 0, I_GOSUB, main_0F, 0, 0
    aot_reset               9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1302:
    if                      0, off_1322
    ck                      FG_GENERAL_1, 78, 1
    cut_replace             2, 5
    set                     20, 2, 0
    nop
    if                      0, off_1320
    ck                      FG_GENERAL_1, 79, 1
    cut_replace             1, 4
    nop
    endif
    nop

off_1320:
    endif
    nop

off_1322:
    else                    0, off_1348

off_1326:
    if                      0, off_1346
    ck                      FG_GAME, F_PLAYER, 1
    sce_em_set              0, 0, ENEMY_LICKER_RED, 0, 0, 0, 14, 0, 144, -22400, 0, -21250, 1024, 0, 0
    endif
    nop

off_1346:
    nop
    nop

off_1348:
    if                      0, off_138E
    ck                      FG_ENEMY, 201, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -22880, 0, -24300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            20, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24000, -25300, 1800, 1800, ITEM_HANDGUNAMMO, 30, 208, 2, 1
    endif
    nop

off_138E:
    if                      0, off_1422
    ck                      FG_GENERAL_1, 84, 1
    aot_reset               8, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_GENERAL_2, 10, 1
    sce_espr_on             0, 30, 0, 4096, -26500, -2000, -11300, 0
    sce_espr_on             0, 30, 0, 4096, -26500, -2000, -11500, 0
    save                    V_04, 0
    if                      0, off_1420
    ck                      FG_GENERAL_1, 75, 1
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sce_espr_on2            2, 30, 0, 0, 3, 0, 32, 160, 171, 128, 243, 196, 215, 0, 0
    sce_espr_on2            3, 30, 0, 0, 1, 0, 32, 226, 185, 128, 243, 196, 215, 0, 0
    sce_espr_on2            1, 30, 0, 0, 2, 0, 32, 144, 157, 128, 243, 196, 215, 0, 0
    endif
    nop

off_1420:
    endif
    nop

off_1422:
    evt_end                 0

.proc aot
    if                      0, off_1440
    cmp                     0, V_USED_ITEM, CMP_EQ, 47
    evt_exec                255, I_GOSUB, main_05
    se_on                   2, 15, 0, 0, 0, 0
    endif
    nop

off_1440:
    if                      0, off_147C
    ck                      FG_GAME, F_SCENARIO, 1
    ck                      FG_GENERAL_1, 79, 0
    ck                      FG_GENERAL_1, 78, 1
    if                      0, off_147A
    ck                      FG_ENEMY, 198, 1
    ck                      FG_GENERAL_2, 20, 0
    if                      0, off_146E
    ck                      FG_ENEMY, 201, 0
    evt_exec                255, I_GOSUB, main_02
    set                     FG_ENEMY, 201, 1
    endif
    nop

off_146E:
    sce_bgm_control         0, 5, 0, 0, 0
    set                     FG_GENERAL_2, 20, 1
    endif
    nop

off_147A:
    endif
    nop

off_147C:
    evt_end                 0

.proc main_02
    if                      0, off_1496
    ck                      FG_ITEM, 208, 0
    sleep                   10, 151
    aot_reset               20, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 20, 0, 30, 0, 208, 0
    endif
    nop

off_1496:
    evt_end                 0

.proc main_03
    cut_chg                 3
    if                      0, off_14AC
    ck                      FG_GENERAL_1, 75, 0
    message_on              0, 0, 0, 255, 255
    else                    0, off_14B4

off_14AC:
    message_on              0, 1, 0, 255, 255
    nop
    nop

off_14B4:
    sleep                   10, 1
    cut_old
    nop
    evt_end                 0

.proc main_04
    if                      0, off_14CE
    ck                      FG_GENERAL_2, 10, 0
    message_on              0, 2, 0, 255, 255
    else                    0, off_14D6

off_14CE:
    message_on              0, 3, 0, 255, 255
    nop
    nop

off_14D6:
    evt_end                 0

.proc main_05
    if                      0, off_152E
    ck                      FG_GENERAL_1, 84, 0
    aot_reset               8, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_GENERAL_1, 84, 1
    set                     FG_GENERAL_2, 10, 1
    sleep                   10, 3
    sleep                   10, 3
    se_on                   2, 11, 0, 0, 0, 0
    sce_espr_on             0, 30, 0, 4096, -26500, -2000, -11300, 0
    sce_espr_on             0, 30, 0, 4096, -26500, -2000, -11500, 0
    save                    V_04, 0
    else                    0, off_1530

off_152E:
    nop
    nop

off_1530:
    evt_end                 0

.proc main_06
    if                      0, off_15E2
    ck                      FG_GENERAL_2, 10, 1
    message_on              0, 4, 0, 255, 255
    evt_next
    nop
    if                      0, off_15DE
    ck                      FG_INPUT, F_QUESTION, 0
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 2, 1
    se_on                   2, 10, 0, 0, 0, 0
    sleep                   10, 3
    set                     FG_STATE, 7, 0
    set                     FG_STATE, 2, 0
    if                      0, off_15C4
    ck                      FG_GENERAL_2, 12, 0
    set                     FG_GENERAL_2, 12, 1
    se_on                   2, 11, 0, 0, 0, 0
    sce_espr_on2            2, 30, 0, 0, 3, 0, 32, 160, 171, 128, 243, 196, 215, 0, 0
    if                      0, off_15AC
    cmp                     0, V_04, CMP_EQ, 0
    save                    V_04, 1
    endif
    nop

off_15AC:
    if                      0, off_15C0
    ck                      FG_GENERAL_2, 12, 1
    ck                      FG_GENERAL_2, 13, 1
    ck                      FG_GENERAL_2, 11, 1
    gosub                   main_09
    endif
    nop

off_15C0:
    else                    0, off_15DC

off_15C4:
    set                     FG_GENERAL_2, 12, 0
    se_on                   2, 12, 0, 0, 0, 0
    sce_espr_kill2          2
    save                    V_04, 0
    nop
    nop

off_15DC:
    endif
    nop

off_15DE:
    else                    0, off_15EA

off_15E2:
    message_on              0, 7, 0, 255, 255
    nop
    nop

off_15EA:
    evt_end                 0

.proc main_07
    if                      0, off_169C
    ck                      FG_GENERAL_2, 10, 1
    message_on              0, 5, 0, 255, 255
    evt_next
    nop
    if                      0, off_1698
    ck                      FG_INPUT, F_QUESTION, 0
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 2, 1
    se_on                   2, 10, 0, 0, 0, 0
    sleep                   10, 3
    set                     FG_STATE, 7, 0
    set                     FG_STATE, 2, 0
    if                      0, off_167E
    ck                      FG_GENERAL_2, 13, 0
    set                     FG_GENERAL_2, 13, 1
    se_on                   2, 11, 0, 0, 0, 0
    sce_espr_on2            3, 30, 0, 0, 1, 0, 32, 226, 185, 128, 243, 196, 215, 0, 0
    if                      0, off_1666
    cmp                     0, V_04, CMP_EQ, 1
    save                    V_04, 2
    endif
    nop

off_1666:
    if                      0, off_167A
    ck                      FG_GENERAL_2, 12, 1
    ck                      FG_GENERAL_2, 13, 1
    ck                      FG_GENERAL_2, 11, 1
    gosub                   main_09
    endif
    nop

off_167A:
    else                    0, off_1696

off_167E:
    set                     FG_GENERAL_2, 13, 0
    se_on                   2, 12, 0, 0, 0, 0
    sce_espr_kill2          3
    save                    V_04, 0
    nop
    nop

off_1696:
    endif
    nop

off_1698:
    else                    0, off_16A4

off_169C:
    message_on              0, 8, 0, 255, 255
    nop
    nop

off_16A4:
    evt_end                 0

.proc main_08
    if                      0, off_1766
    ck                      FG_GENERAL_2, 10, 1
    message_on              0, 6, 0, 255, 255
    evt_next
    nop
    if                      0, off_1762
    ck                      FG_INPUT, F_QUESTION, 0
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 2, 1
    se_on                   2, 10, 0, 0, 0, 0
    sleep                   10, 3
    set                     FG_STATE, 7, 0
    set                     FG_STATE, 2, 0
    if                      0, off_1748
    ck                      FG_GENERAL_2, 11, 0
    set                     FG_GENERAL_2, 11, 1
    se_on                   2, 11, 0, 0, 0, 0
    sce_espr_on2            1, 30, 0, 0, 2, 0, 32, 144, 157, 128, 243, 196, 215, 0, 0
    if                      0, off_172E
    cmp                     0, V_04, CMP_EQ, 2
    save                    V_04, 3
    if                      0, off_172A
    ck                      FG_GENERAL_1, 75, 0
    gosub                   main_0A
    endif
    nop

off_172A:
    else                    0, off_1744

off_172E:
    if                      0, off_1742
    ck                      FG_GENERAL_2, 12, 1
    ck                      FG_GENERAL_2, 13, 1
    ck                      FG_GENERAL_2, 11, 1
    gosub                   main_09
    endif
    nop

off_1742:
    nop
    nop

off_1744:
    else                    0, off_1760

off_1748:
    set                     FG_GENERAL_2, 11, 0
    se_on                   2, 12, 0, 0, 0, 0
    sce_espr_kill2          1
    save                    V_04, 0
    nop
    nop

off_1760:
    endif
    nop

off_1762:
    else                    0, off_176E

off_1766:
    message_on              0, 9, 0, 255, 255
    nop
    nop

off_176E:
    evt_end                 0

.proc main_09
    set                     FG_GENERAL_2, 12, 0
    se_on                   2, 12, 0, 0, 0, 0
    sce_espr_kill2          2
    set                     FG_GENERAL_2, 13, 0
    se_on                   2, 12, 0, 0, 0, 0
    sce_espr_kill2          3
    set                     FG_GENERAL_2, 11, 0
    se_on                   2, 12, 0, 0, 0, 0
    sce_espr_kill2          1
    save                    V_04, 0
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_06, 0, 0
    aot_reset               5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_07, 0, 0
    aot_reset               6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_08, 0, 0
    evt_end                 0

.proc main_0A
    set                     FG_STATE, 7, 1
    set                     FG_GAME, 27, 1
    set                     FG_STATE, 2, 1
    sleep                   10, 20
    save                    V_04, 0
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sleep                   10, 30
    cut_chg                 3
    sleep                   10, 30
    gosub                   main_0B
    sleep                   10, 10
    se_on                   2, 13, 0, 0, 0, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -18350, 0, -26500
    dir_set                 0, 1024, 0, 0
    aot_reset               1, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 74, 0, 1, 0, 108, 0
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    dir_set                 0, 0, -1024, 0
    cut_old
    work_set                WK_PLAYER, 0
    plc_dest                0, 21, 33, -3524, 170
    gosub                   main_0C
    sleep                   10, 10
    set                     FG_GENERAL_1, 75, 1
    aot_reset               9, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_0F, 0, 0
    aot_reset               10, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_0F, 0, 0
    gosub                   main_0D
    set                     FG_STATE, 2, 0
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, 0
    nop
    speed_set               2, 50
    speed_set               7, 20
    speed_set               3, -90
    speed_set               9, 0
    while                   6, off_189C
    member_cmp              0, 12, 3, 224, 252
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_189C:
    evt_end                 0

.proc main_0C
    do                      0, off_18AA
    evt_next
    nop
    edwhile                 off_18AA
    ck                      FG_GENERAL_2, 33, 0

off_18AA:
    evt_end                 0

.proc main_0D
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    set                     FG_GAME, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_0E
    work_set                WK_PLAYER, 0
    plc_motion              1, 1, 0
    nop
    sleep                   10, 10
    plc_dest                0, 20, 0, 0, 0
    evt_end                 0

.proc main_0F
    if                      0, off_18DE
    ck                      FG_GENERAL_2, 19, 1
    evt_end                 0
    endif
    nop

off_18DE:
    set                     FG_GENERAL_2, 19, 1
    aot_reset               9, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sce_bgm_control         0, 1, 0, 0, 0
    sce_bgmtbl_set          0, 12, 2, 65310, 64
    set                     FG_GENERAL_1, 78, 1
    set                     FG_STATE, 7, 1
    evt_exec                255, I_GOSUB, main_0E
    cut_replace             2, 5
    set                     20, 2, 0
    nop
    sce_espr_on             0, 42, 0, 4096, -19200, -3000, -10300, 1298
    sce_espr_on             0, 298, 0, 4096, -19700, -2900, -10300, 1298
    sce_espr_on             0, 554, 0, 4096, -19300, -3550, -10300, 1298
    sce_espr_on             0, 810, 0, 4096, -18700, -2800, -10300, 1298
    sce_espr_on             0, 4, 0, 8192, -19200, -3000, -10300, 1298
    sce_espr_on             0, 4, 0, 8192, -19700, -2900, -10300, 1298
    sce_espr_on             0, 4, 0, 8192, -19300, -3550, -10300, 1298
    sce_espr_on             0, 4, 0, 8192, -18700, -2800, -10300, 1298
    sce_espr_on             0, 1284, 0, 8192, -19200, -3000, -10300, 1298
    sce_espr_on             0, 1284, 0, 8192, -19700, -2900, -10300, 1298
    sce_espr_on             0, 1284, 0, 8192, -19300, -3550, -10300, 1298
    sce_espr_on             0, 1284, 0, 8192, -18700, -2800, -10300, 1298
    nop_8a                  0, 10, 0, 0, 0
    nop_8b                  200, 2, 0, 0, 0
    nop_8b                  250, 6, 0, 2, 0
    se_on                   2, 14, 0, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -20000, 0, -8000
    member_set              39, 224, 177
    member_set              40, 192, 224
    member_set              23, 1, 0
    sleep                   10, 10
    sce_espr_on             0, 4, 0, 8192, -19200, -2000, -10300, 1298
    sce_espr_on             0, 4, 0, 8192, -19700, -1900, -10300, 1298
    sce_espr_on             0, 4, 0, 8192, -19300, -2550, -10300, 1298
    sce_espr_on             0, 4, 0, 8192, -18700, -1800, -10300, 1298
    sleep                   10, 5
    sce_espr_on             0, 4, 0, 4096, -19200, -1000, -10300, 1298
    sce_espr_on             0, 4, 0, 4096, -19700, -900, -10300, 1298
    sce_espr_on             0, 4, 0, 4096, -19300, -1550, -10300, 1298
    sce_espr_on             0, 4, 0, 4096, -18700, -800, -10300, 1298
    sleep                   10, 20
    gosub                   main_0D
    evt_end                 0

.proc main_10
    work_set                WK_ENEMY, 0
    nop
    pos_set                 0, -23000, 0, -22800
    dir_set                 0, 0, 1024, 0
    evt_end                 0
