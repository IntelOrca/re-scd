.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27000, -15750, 3500, 1000, -25000, 0, -14600, -1024, 1, 25, 5, 0, 20, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -23500, 0, -27600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    gosub                   main_06
    if                      0, off_1A9C
    ck                      FG_GAME, F_SCENARIO, 1
    sce_em_set              0, 0, ENEMY_BEN_BERTOLUCCI_1, 0, 2, 0, 0, 0, 255, -25477, 0, -26325, 3280, 256, 192
    evt_exec                255, I_GOSUB, main_02
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26100, -27300, 1800, 1800, 255, 0, I_GOSUB, main_07, 0, 0
    else                    0, off_1ACC

off_1A9C:
    sce_em_set              0, 0, ENEMY_BEN_BERTOLUCCI_1, 0, 1, 0, 0, 0, 255, -24300, 0, -22000, 2352, 275, 192
    evt_exec                255, I_GOSUB, main_03
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24800, -23700, 1800, 1800, 255, 0, I_GOSUB, main_08, 0, 0
    nop
    nop

off_1ACC:
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 0
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             0, V_TEMP
    nop
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -26300, -2400, -30000, -1024, 640, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -16380, 0, -16860, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -16380, 0, -20260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26950, -29650, 1000, 1000, ITEM_BOWGUNAMMO, 36, 118, 3, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17282, -17358, 1400, 1400, ITEM_HERBB, 1, 136, 1, 1
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17282, -21058, 1400, 1400, ITEM_HERBG, 1, 172, 2, 1
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    work_set                WK_ENEMY, 0
    nop
    sleep                   10, 1
    plc_dest                0, 20, 0, 0, 0
    evt_end                 0

.proc main_03
    work_set                WK_ENEMY, 0
    nop
    sleep                   10, 1
    plc_dest                0, 20, 0, 0, 0
    evt_end                 0

.proc main_04
    set                     FG_STATE, 7, 1
    evt_end                 0

.proc main_05
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STATE, 7, 0
    cut_auto                1
    evt_end                 0

.proc main_06
    sca_id_set              11, 0, 0
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -23500, 0, -26000
    evt_end                 0

.proc main_07
    set                     FG_STATE, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 20
    message_on              0, 2, 0, 255, 255
    plc_motion              1, 6, 128
    sleep                   10, 20
    set                     FG_STATE, 7, 0
    work_set                WK_PLAYER, 0
    plc_ret
    evt_end                 0

.proc main_08
    set                     FG_STATE, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 20
    message_on              0, 1, 0, 255, 255
    plc_motion              1, 6, 128
    sleep                   10, 20
    set                     FG_STATE, 7, 0
    work_set                WK_PLAYER, 0
    plc_ret
    evt_end                 0
