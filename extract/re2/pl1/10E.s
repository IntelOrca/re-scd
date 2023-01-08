.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26700, -25700, 1800, 1800, -24400, 0, -25000, 2048, 0, 13, 4, 0, 0, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    if                      0, off_1D1C
    ck                      4, 71, 0
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19840, -18000, 600, 600, 255, 0, I_GOSUB, main_05, 0, 0
    endif
    nop

off_1D1C:
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -21000, -18000, 800, 4500, 255, 0, I_GOSUB, main_04, 0, 0
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    if                      0, off_1D50
    ck                      4, 71, 0
    cut_replace             3, 8
    cut_replace             4, 9
    cut_replace             5, 10
    cut_replace             6, 11
    endif
    nop

off_1D50:
    if                      0, off_1D70
    ck                      3, 64, 0
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 64, 0, 0, 0, 255, -25000, 0, -10000, 0, 0, 0
    endif
    nop

off_1D70:
    if                      0, off_1D92
    ck                      3, 65, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -18250, 0, -23300
    dir_set                 0, 0, -1024, 0
    evt_exec                255, I_GOSUB, main_02
    endif
    nop

off_1D92:
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -18400, -1200, -13450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1E10
    ck                      1, 1, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 48, -26200, -1200, -16450, 0, -1280, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1E38

off_1E10:
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 48, -26200, -1200, -16450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1E38:
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19550, -14000, 1600, 1600, ITEM_112, 1, 105, 0, 0
    if                      0, off_1E70
    ck                      1, 1, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, ITEM_FAIDSPRAY, 1, 106, 1, 0
    else                    0, off_1E88

off_1E70:
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0, ITEM_HANDGUNAMMO, 15, 106, 3, 0
    nop
    nop

off_1E88:
    aot_set                 5, SCE_HIKIDASHI, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26864, -16800, 1800, 1300, 18, 0, 4, 0, 7, 0
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     31, 18, 1
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22800, -24000, 3350, 3850, 18, 0, 0, 0, 255, 255
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27000, -23300, 1800, 5000, 19, 0, 0, 0, 255, 255
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17700, -19800, 1800, 1200, 20, 0, 0, 0, 255, 255
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23000, -14000, 2900, 1800, 21, 0, 0, 0, 255, 255
    evt_end                 0

.proc main_01
    if                      0, off_1F26
    ck                      3, 65, 0
    if                      0, off_1F14
    cmp                     0, 26, CMP_EQ, 1
    evt_exec                255, I_GOSUB, main_03
    endif
    nop

off_1F14:
    if                      0, off_1F24
    cmp                     0, 26, CMP_EQ, 8
    evt_exec                255, I_GOSUB, main_03
    endif
    nop

off_1F24:
    endif
    nop

off_1F26:
    if                      0, off_1F66
    ck                      4, 71, 1
    if                      0, off_1F4A
    ck                      3, 64, 0
    ck                      5, 20, 0
    aot_reset               2, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_04, 0, 0
    set                     5, 20, 1
    endif
    nop

off_1F4A:
    if                      0, off_1F62
    ck                      5, 21, 0
    aot_reset               5, SCE_HIKIDASHI, SAT_PL | SAT_MANUAL | SAT_FRONT, 18, 0, 4, 0, 7, 0
    set                     5, 21, 1
    endif
    nop

off_1F62:
    else                    0, off_1F98

off_1F66:
    if                      0, off_1F7E
    ck                      5, 20, 1
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     5, 20, 0
    endif
    nop

off_1F7E:
    if                      0, off_1F96
    ck                      5, 21, 1
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     5, 21, 0
    endif
    nop

off_1F96:
    nop
    nop

off_1F98:
    evt_end                 0

.proc main_02
    set                     2, 7, 1
    set                     1, 27, 1
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 60, 30
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 35, -18250, -16000
    gosub                   11
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    gosub                   10
    evt_end                 0

.proc main_03
    set                     3, 65, 1
    set                     2, 7, 1
    set                     1, 27, 1
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 60, 30
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 5, 35, -25120, -15000
    gosub                   11
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -25000, 0, -10000
    dir_set                 0, 0, 0, 0
    gosub                   10
    evt_end                 0

.proc main_04
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     3, 64, 1
    set                     2, 7, 1
    set                     1, 27, 1
    sleep                   10, 1
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -25120, 0, -15000
    dir_set                 0, 0, 0, 0
    plc_motion              1, 6, 192
    sleep                   10, 1
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 1
    cut_chg                 6
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 2, 0, 0, 60, 30
    pos_set                 0, -20431, 0, -16558
    dir_set                 0, 0, 2000, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                1, -17970, 0, -14970, 60, 30
    plc_motion              1, 6, 128
    sleep                   10, 30
    sleep                   10, 1
    xa_on                   0, 12
    evt_kill                9
    evt_exec                9, I_GOSUB, main_06
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 21, 33, 3536, 128
    gosub                   7
    wsleep
    wsleeping
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 60, 30
    pos_set                 0, -20431, 0, -16558
    dir_set                 0, 0, 3536, 0
    plc_motion              0, 14, 64
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -18816, 0, -15368
    dir_set                 0, 0, 3861, 0
    plc_motion              0, 4, 64
    sleep                   10, 1
    xa_on                   0, 13
    message_on              0, 2, 0, 0, 0
    sleep                   10, 30
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 4
    work_set                WK_SPLAYER, 0
    plc_motion              0, 5, 4
    sleep                   10, 1
    xa_on                   0, 14
    message_on              0, 3, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 15
    message_on              0, 4, 0, 0, 0
    wsleep
    wsleeping
    xa_on                   0, 30
    message_on              0, 17, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 16, 0
    work_set                WK_SPLAYER, 0
    plc_neck                0, 0, 0, 0, 60, 30
    plc_motion              0, 6, 0
    sleep                   10, 50
    wsleep
    wsleeping
    cut_chg                 6
    sce_bgm_control         0, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 60, 30
    pos_set                 0, -20655, 0, -15994
    dir_set                 0, 0, 3664, 0
    plc_motion              0, 17, 64
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -19816, 0, -15368
    dir_set                 0, 0, 1653, 0
    plc_motion              0, 7, 64
    sleep                   10, 40
    sleep                   10, 1
    xa_on                   0, 16
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 20
    work_set                WK_SPLAYER, 0
    plc_motion              0, 8, 20
    if                      0, off_21F4
    ck                      1, 1, 0
    sleep                   10, 100
    work_set                WK_PLAYER, 0
    plc_motion              2, 2, 20
    nop
    endif
    nop

off_21F4:
    wsleep
    wsleeping
    if                      0, off_233A
    ck                      1, 1, 0
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -19655, 0, -15994
    dir_set                 0, 0, 3664, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -18816, 0, -15368
    dir_set                 0, 0, 1653, 0
    work_set                WK_OBJECT, 2
    nop
    super_set               0, 128, 142, 0, 220, 10, 1024, -2048, 0
    se_on                   2, 13, 0, 0, 0, 0
    sleep                   10, 30
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 17
    message_on              0, 5, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                0, 0, 0, 0, 0, 0
    sleep                   10, 1
    plc_motion              0, 6, 16
    sleep                   10, 30
    plc_motion              0, 6, 128
    sleep                   10, 5
    plc_motion              0, 6, 0
    plc_cnt                 10
    sleep                   10, 20
    sleep                   10, 30
    plc_motion              0, 6, 128
    sleep                   10, 5
    plc_motion              0, 6, 0
    plc_cnt                 10
    sleep                   10, 20
    sleep                   10, 30
    plc_motion              0, 6, 128
    sleep                   10, 5
    plc_motion              0, 6, 0
    plc_cnt                 10
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 18
    work_set                WK_PLAYER, 0
    plc_motion              0, 6, 128
    nop
    sleep                   10, 15
    sleep                   10, 30
    plc_motion              0, 7, 128
    sleep                   10, 20
    plc_motion              2, 2, 20
    sleep                   10, 10
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    work_set                WK_OBJECT, 2
    nop
    super_set               0, 0, 0, 0, 0, 0, 0, 0, 0
    cut_chg                 6
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -20655, 0, -15994
    dir_set                 0, 0, 3664, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -19816, 0, -15368
    dir_set                 0, 0, 1653, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 18, 4
    nop
    sleep                   10, 20
    endif
    nop

off_233A:
    work_set                WK_PLAYER, 0
    plc_motion              0, 19, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 9, 0
    sleep                   10, 53
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -19920, 0, -16220
    dir_set                 0, 0, 3664, 0
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -18816, 0, -15368
    dir_set                 0, 0, 1653, 0
    plc_motion              2, 2, 84
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -17970, -7000, -14970, 60, 30
    plc_motion              1, 6, 0
    sleep                   10, 20
    plc_motion              0, 11, 0
    sleep                   10, 1
    xa_on                   0, 19
    message_on              0, 6, 0, 0, 0
    sleep                   10, 20
    plc_motion              0, 9, 0
    wsleep
    wsleeping
    cut_chg                 13
    sleep                   10, 1
    xa_on                   0, 20
    message_on              0, 7, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 0, 16
    nop
    sleep                   10, 30
    plc_motion              0, 1, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 21
    message_on              0, 8, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 9, 128
    nop
    sleep                   10, 20
    plc_motion              0, 10, 0
    sleep                   10, 25
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 22
    message_on              0, 9, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 3, 0
    nop
    sleep                   10, 30
    sleep                   10, 30
    plc_motion              0, 3, 128
    sleep                   10, 30
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 5
    sleep                   10, 1
    xa_on                   0, 23
    message_on              0, 10, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 9, 0
    nop
    sleep                   10, 20
    plc_motion              0, 9, 128
    sleep                   10, 10
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 10
    plc_cnt                 10
    plc_motion              0, 11, 0
    sleep                   10, 20
    plc_motion              0, 11, 128
    sleep                   10, 10
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 10
    sleep                   10, 25
    plc_cnt                 10
    plc_motion              0, 10, 0
    sleep                   10, 25
    wsleep
    wsleeping
    cut_chg                 13
    sleep                   10, 1
    xa_on                   0, 24
    message_on              0, 11, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 3, 0
    nop
    sleep                   10, 30
    sleep                   10, 30
    plc_motion              0, 3, 128
    sleep                   10, 30
    plc_motion              0, 2, 0
    sleep                   10, 15
    sleep                   10, 30
    plc_motion              0, 2, 128
    sleep                   10, 15
    plc_motion              0, 0, 16
    sleep                   10, 30
    plc_motion              0, 1, 20
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 25
    message_on              0, 12, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 12, 20
    nop
    sleep                   10, 190
    plc_motion              0, 10, 0
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -19655, 0, -15994
    dir_set                 0, 0, 3664, 0
    cut_chg                 12
    sce_bgm_control         0, 5, 0, 0, 0
    sleep                   10, 1
    xa_on                   0, 26
    message_on              0, 13, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 8, 35, -17970, -14970
    gosub                   11
    plc_motion              0, 3, 0
    sleep                   10, 30
    plc_motion              0, 3, 128
    sleep                   10, 30
    plc_motion              0, 2, 0
    sleep                   10, 15
    plc_motion              0, 2, 128
    sleep                   10, 15
    plc_motion              0, 3, 0
    sleep                   10, 30
    sleep                   10, 10
    plc_motion              0, 3, 128
    sleep                   10, 30
    plc_motion              0, 2, 0
    sleep                   10, 15
    sleep                   10, 10
    plc_motion              0, 2, 128
    sleep                   10, 15
    plc_motion              0, 3, 0
    sleep                   10, 30
    sleep                   10, 15
    plc_motion              0, 3, 128
    sleep                   10, 30
    plc_motion              2, 2, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    sce_bgm_control         2, 1, 0, 0, 0
    se_on                   2, 10, 0, 0, 0, 0
    sleep                   10, 30
    sleep                   10, 1
    xa_on                   0, 27
    message_on              0, 14, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                4, 2, 0, 0, 60, 30
    plc_motion              0, 10, 0
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -18250, -3600, -23300, 90, 60
    plc_motion              1, 6, 128
    sleep                   10, 20
    plc_dest                0, 21, 33, 800, 128
    gosub                   7
    plc_neck                0, 0, 0, 0, 60, 30
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 28
    message_on              0, 15, 0, 0, 0
    work_set                WK_SPLAYER, 0
    plc_motion              0, 10, 128
    nop
    sleep                   10, 10
    plc_motion              2, 2, 20
    plc_neck                4, 2, 0, 0, 60, 30
    sleep                   10, 40
    plc_dest                0, 5, 35, -18000, -22222
    wsleep
    wsleeping
    sleep                   10, 1
    xa_on                   0, 29
    message_on              0, 16, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 2, 0
    nop
    sleep                   10, 30
    sleep                   10, 30
    plc_motion              0, 2, 128
    sleep                   10, 30
    wsleep
    wsleeping
    work_set                WK_SPLAYER, 0
    nop
    pos_set                 0, -25000, 0, -10000
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
    if                      0, off_26A8
    ck                      1, 1, 0
    set                     4, 255, 0
    endif
    nop

off_26A8:
    cut_chg                 5
    sleep                   10, 1
    sce_bgm_control         2, 5, 0, 0, 0
    sce_bgmtbl_set          0, 14, 1, 65288, 0
    sce_bgmtbl_set          0, 27, 2, 65288, 0
    gosub                   10
    evt_end                 0

.proc main_05
    if                      0, off_2710
    ck                      4, 71, 0
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    if                      0, off_270C
    ck                      11, 31, 0
    set                     4, 71, 1
    cut_replace             8, 3
    cut_replace             9, 4
    cut_replace             10, 5
    cut_replace             11, 6
    cut_chg                 5
    cut_auto                1
    se_on                   2, 11, 0, 0, 0, 0
    aot_reset               1, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_270C:
    else                    0, off_2744

off_2710:
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    if                      0, off_2742
    ck                      11, 31, 0
    set                     4, 71, 0
    cut_replace             3, 8
    cut_replace             4, 9
    cut_replace             5, 10
    cut_replace             6, 11
    cut_chg                 10
    cut_auto                1
    se_on                   2, 11, 0, 0, 0, 0
    endif
    nop

off_2742:
    nop
    nop

off_2744:
    evt_end                 0

.proc main_06
    work_set                WK_SPLAYER, 0
    nop
    plc_dest                0, 5, 35, -18816, -15368
    gosub                   11
    evt_end                 0

.proc main_07
    do                      0, off_2762
    evt_next
    nop
    edwhile                 off_2762
    ck                      5, 33, 0

off_2762:
    evt_end                 0

.proc main_08
    do                      0, off_2770
    evt_next
    nop
    edwhile                 off_2770
    ck                      5, 34, 0

off_2770:
    evt_end                 0

.proc main_09
    do                      0, off_277E
    evt_next
    nop
    edwhile                 off_277E
    ck                      5, 10, 0

off_277E:
    set                     5, 10, 0
    evt_end                 0

.proc main_0A
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_0B
    do                      0, off_27A0
    evt_next
    nop
    edwhile                 off_27A0
    ck                      5, 35, 0

off_27A0:
    evt_end                 0

.proc main_0C
    do                      0, off_27AE
    evt_next
    nop
    edwhile                 off_27AE
    ck                      5, 11, 0

off_27AE:
    set                     5, 11, 0
    evt_end                 0
