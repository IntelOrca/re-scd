.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18700, -17700, 1800, 4500, 6750, 0, -25135, 0, 5, 12, 4, 0, 38, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    if                      0, off_074E
    ck                      4, 164, 1
    set                     1, 12, 1
    endif
    nop

off_074E:
    sce_em_set              0, 0, ENEMY_LICKERGREY, 0, 0, 0, 51, 0, 59, -23111, 0, -12989, 4407, 0, 0
    sce_em_set              0, 1, ENEMY_LICKERGREY, 0, 0, 0, 51, 0, 60, -17530, 0, -21832, -1400, 0, 0
    sce_em_set              0, 2, ENEMY_LICKERGREY, 0, 0, 0, 51, 0, 61, -12082, 0, -23007, 2112, 0, 0
    if                      0, off_07D8
    ck                      8, 62, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -11600, 0, -20520, 0, 192, -384, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12960, -21830, 2000, 2000, ITEM_SMG, 100, 30, 0, 1
    else                    0, off_0816

off_07D8:
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -11400, -100, -20620, 1024, 2624, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12960, -21830, 2000, 2000, ITEM_SMGAMMO, 100, 30, 2, 1
    nop
    nop

off_0816:
    aot_set                 5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10915, -23975, 2500, 2200, 0, 0, 0, 0, 255, 255
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26115, -12775, 5300, 2400, 1, 0, 0, 0, 255, 255
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26115, -16375, 1800, 6100, 1, 0, 0, 0, 255, 255
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17215, -25375, 2400, 2100, 3, 0, 0, 0, 255, 255
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12960, -21830, 2000, 2000, 255, 0, I_GOSUB, main_03, 0, 0
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    if                      0, off_08F0
    ck                      11, 31, 0
    if                      0, off_08D6
    ck                      7, 59, 1
    ck                      7, 60, 1
    ck                      7, 61, 1
    set                     2, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 25
    message_on              0, 0, 0, 255, 255
    set                     8, 63, 1
    evt_next
    plc_motion              1, 6, 128
    nop
    sleep                   10, 25
    aot_reset               3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    plc_ret
    set                     2, 7, 0
    nop
    else                    0, off_08EE

off_08D6:
    message_on              0, 0, 0, 255, 255
    set                     8, 63, 1
    evt_next
    nop
    aot_reset               3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    nop
    nop

off_08EE:
    endif
    nop

off_08F0:
    evt_end                 0

.proc main_03
    if                      0, off_092C
    ck                      7, 59, 1
    ck                      7, 60, 1
    ck                      7, 61, 1
    set                     2, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 25
    message_on              0, 2, 0, 255, 255
    evt_next
    plc_motion              1, 6, 128
    nop
    sleep                   10, 25
    plc_ret
    set                     2, 7, 0
    nop
    else                    0, off_0936

off_092C:
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_0936:
    evt_end                 0
