.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 4230, -340, 1800, 2600, -23650, 0, -8000, 2048, 1, 7, 2, 0, 15, 5, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, -15800, -13500, 2000, 1800, -25400, 0, -7120, 1024, 0, 19, 4, 0, 3, 1, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, -27750, -17000, 1800, 1800, -25260, 0, -3420, 2048, 0, 20, 5, 0, 3, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    if                      0, off_193E
    ck                      1, 6, 1
    sce_em_set              0, 0, ENEMY_TYRANT1, 0, 3, 2, 18, 0, 90, -17975, -3600, -10037, 13, 0, 0
    aot_reset               1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 255, 255
    evt_end                 0
    endif
    nop

off_193E:
    obj_model_set           0, 0, 0, 0, 0, 2, 0, 10, 18, -21294, -7560, -12600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 2, 0, 132, 0, -22900, -3600, -13000, 0, 2048, 0, 0, -900, 0, 432, 132, 3, 176, 1
    obj_model_set           2, 0, 0, 0, 0, 2, 0, 132, 0, -20100, -3600, -13000, 0, 0, 0, 0, -900, 0, 432, 132, 3, 176, 1
    aot_reset               1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    if                      0, off_19EE
    ck                      4, 38, 0
    aot_set                 3, SCE_EVENT, SAT_SPL | SAT_UNDER, 2, 0, -17250, -12700, 600, 400, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, -17450, -13000, 1200, 800, 2, 0, 0, 0, 255, 255
    else                    0, off_1A0A

off_19EE:
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -129
    member_set2             0, 16
    nop
    pos_set                 0, -17000, -3600, -12500
    nop
    nop

off_1A0A:
    if                      0, off_1A3E
    ck                      4, 39, 0
    aot_set                 4, SCE_EVENT, SAT_SPL | SAT_UNDER, 2, 0, -26400, -12850, 600, 400, 255, 0, I_GOSUB, main_05, 0, 0
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, -27170, -12950, 1600, 800, 2, 0, 0, 0, 255, 255
    else                    0, off_1A5A

off_1A3E:
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -129
    member_set2             0, 16
    nop
    pos_set                 0, -26000, -3600, -12500
    nop
    nop

off_1A5A:
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, -22000, -12800, 1000, 1000, ITEM_REDJEWEL, 1, 32, 0, 224
    if                      0, off_1A8C
    ck                      4, 38, 1
    ck                      4, 39, 1
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -21550, -5600, -12500
    else                    0, off_1A98

off_1A8C:
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1A98:
    set                     4, 48, 1
    aot_set                 6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, -22000, -12800, 1000, 1000, 255, 0, I_GOSUB, main_03, 0, 0
    if                      0, off_1AD0
    ck                      0, 25, 1
    item_aot_set            12, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, -22480, -15250, 1800, 1800, ITEM_HANDGUNAMMO, 15, 210, 255, 1
    endif
    nop

off_1AD0:
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    message_on              0, 0, 0, 255, 255
    se_on                   2, 22, 0, 10267, -1800, -13158
    evt_end                 0

.proc main_03
    cut_chg                 9
    message_on              0, 1, 0, 255, 255
    sleep                   10, 1
    cut_old
    nop
    evt_end                 0

.proc main_04
    work_set                WK_OBJECT, 1
    nop
    if                      0, off_1B60
    member_cmp              0, 9, 0, 3, 0
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     4, 38, 1
    se_on                   2, 10, 0, 0, -3600, 0
    nop_8b                  100, 1, 0, 0, 0
    nop_8b                  180, 5, 0, 1, 0
    work_set                WK_OBJECT, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -129
    member_set2             0, 16
    nop
    if                      0, off_1B5E
    ck                      4, 39, 1
    gosub                   6
    aot_reset               5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 51, 0, 1, 0, 32, 0
    endif
    nop

off_1B5E:
    endif
    nop

off_1B60:
    evt_end                 0

.proc main_05
    work_set                WK_OBJECT, 2
    nop
    if                      0, off_1BCA
    member_cmp              0, 9, 0, 4, 0
    aot_reset               4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               8, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     4, 39, 1
    se_on                   2, 10, 0, 0, -3600, 0
    nop_8b                  100, 1, 0, 0, 0
    nop_8b                  180, 5, 0, 1, 0
    work_set                WK_OBJECT, 2
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -129
    member_set2             0, 16
    nop
    if                      0, off_1BC8
    ck                      4, 38, 1
    gosub                   6
    aot_reset               5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 51, 0, 1, 0, 32, 0
    endif
    nop

off_1BC8:
    endif
    nop

off_1BCA:
    evt_end                 0

.proc main_06
    set                     2, 7, 1
    set                     1, 27, 1
    sleep                   10, 20
    cut_chg                 9
    sleep                   10, 30
    gosub                   7
    sleep                   10, 30
    cut_old
    nop
    sleep                   10, 10
    gosub                   8
    evt_end                 0

.proc main_07
    work_set                WK_OBJECT, 0
    nop
    speed_set               2, 0
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    while                   6, off_1C12
    member_cmp              0, 12, 3, 32, 234
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1C12:
    se_on                   2, 267, 4, 0, 0, 0
    pos_set                 0, -21550, -5600, -12500
    member_set              14, 0, 0
    member_set              15, 0, 0
    member_set              16, 0, 0
    evt_end                 0

.proc main_08
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0
