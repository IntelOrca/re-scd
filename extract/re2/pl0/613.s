.version 2

.init
.proc init
    if                      0, off_0E44
    ck                      FG_GENERAL_1, 254, 1
    set                     FG_GENERAL_1, 90, 0
    set                     FG_7, 16, 0
    set                     FG_7, 33, 0
    set                     FG_7, 34, 0
    set                     FG_7, 35, 0
    set                     FG_7, 36, 0
    set                     FG_7, 37, 0
    set                     FG_GENERAL_1, 91, 0
    endif
    nop

off_0E44:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28365, -19025, 1740, 2660, -23319, 0, 557, -18957, 5, 20, 5, 0, 37, 0, 0, 0, UNLOCKED, 0
    aot_set                 2, SCE_WINDOWS, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, 1, 0, 6, 0, 0, 0
    sce_em_set              0, 1, ENEMY_GIANT_MOTH, 16, 0, 0, 23, 0, 16, -13268, -2900, -21796, 0, 0, 0
    evt_end                 0

.main
.proc main
    if                      0, off_0EB6
    ck                      FG_GENERAL_1, 91, 0
    aot_set                 1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12481, -18241, 2410, 1800, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_0EB6:
    sce_espr3d_on           0, 21, 0, 6446, -12070, -1850, -17118, 0, 320, 10, 0
    sce_em_set              0, 2, ENEMY_MAGGOTS, 8, 32, 0, 40, 0, 33, -11800, -1200, -17200, 0, 0, 0
    sce_em_set              0, 3, ENEMY_MAGGOTS, 8, 32, 0, 40, 0, 34, -12200, -1200, -17000, 0, 0, 0
    sce_em_set              0, 4, ENEMY_MAGGOTS, 8, 32, 0, 40, 0, 35, -11800, -1200, -17100, 0, 0, 0
    sce_em_set              0, 5, ENEMY_MAGGOTS, 8, 32, 0, 40, 0, 36, -11500, -1200, -17000, 0, 0, 0
    sce_em_set              0, 6, ENEMY_MAGGOTS, 8, 32, 0, 40, 0, 37, -12100, -1200, -17000, 0, 0, 0
    sce_em_set              0, 7, ENEMY_MAGGOTS, 8, 32, 0, 40, 0, 46, -12500, -1200, -17000, 0, 0, 0
    if                      0, off_0F6E
    ck                      FG_7, 16, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -17881, -26331, 5360, 10000, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_0F6E:
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    if                      0, off_0F8E
    ck                      FG_7, 16, 0
    work_set                WK_ENEMY, 1
    nop
    member_set              23, 1, 0
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0F8E:
    evt_end                 0

.proc main_03
    set                     FG_STATE, 7, 1
    cut_chg                 4
    if                      0, off_0FD6
    ck                      FG_7, 33, 1
    if                      0, off_0FD4
    ck                      FG_7, 34, 1
    if                      0, off_0FD2
    ck                      FG_7, 35, 1
    if                      0, off_0FD0
    ck                      FG_7, 36, 1
    if                      0, off_0FCE
    ck                      FG_7, 37, 1
    if                      0, off_0FCC
    ck                      FG_7, 46, 1
    set                     FG_GENERAL_1, 90, 1
    endif
    nop

off_0FCC:
    endif
    nop

off_0FCE:
    endif
    nop

off_0FD0:
    endif
    nop

off_0FD2:
    endif
    nop

off_0FD4:
    endif
    nop

off_0FD6:
    if                      0, off_100E
    ck                      FG_7, 16, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             1, V_TEMP
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             0, V_TEMP
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             7, V_TEMP
    nop
    endif
    nop

off_100E:
    if                      0, off_1022
    ck                      FG_GENERAL_1, 90, 0
    message_on              0, 1, 0, 255, 207
    evt_next
    nop
    else                    0, off_109A

off_1022:
    message_on              0, 0, 0, 255, 207
    evt_next
    nop
    if                      0, off_1098
    ck                      FG_INPUT, F_QUESTION, 0
    unk                     130, 6, 0
    aot_on                  2
    evt_next
    sce_espr3d_on           0, 21, 0, 6446, -12070, -1850, -17118, 0, 320, 10, 0
    if                      0, off_1096
    ck                      FG_GENERAL_1, 91, 1
    set                     FG_STATE, 2, 1
    cut_chg                 5
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -12130, 0, -18411
    dir_set                 0, 0, 3109, 0
    plc_motion              0, 15, 0
    sleep                   10, 35
    plc_stop
    nop
    sleep                   10, 30
    aot_on                  2
    evt_next
    nop
    aot_reset               1, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 2, 0
    endif
    nop

off_1096:
    endif
    nop

off_1098:
    nop
    nop

off_109A:
    if                      0, off_10D2
    ck                      FG_7, 16, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             0, V_TEMP
    nop
    member_copy             V_TEMP, 1
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             1, V_TEMP
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             7, V_TEMP
    nop
    endif
    nop

off_10D2:
    cut_chg                 5
    cut_auto                1
    set                     FG_STATE, 7, 0
    evt_end                 0
