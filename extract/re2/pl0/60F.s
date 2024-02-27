.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18700, -17700, 1800, 4500, 6750, 0, -25135, 0, 5, 12, 4, 0, 38, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_074E
    ck                      FG_COMMON, 164, 1
    set                     FG_STATUS, 12, 1
    endif
    nop

off_074E:
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_GREY, 0, AI_DEFAULT, 0, SBK_51, 0, 59, -23111, 0, -12989, 4407, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_LICKER_GREY, 0, AI_DEFAULT, 0, SBK_51, 0, 60, -17530, 0, -21832, -1400, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_LICKER_GREY, 0, AI_DEFAULT, 0, SBK_51, 0, 61, -12082, 0, -23007, 2112, 0, 0
    if                      0, off_07D8
    ck                      FG_ITEM, 62, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -11600, 0, -20520, 0, 192, -384, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12960, -21830, 2000, 2000, ITEM_SMG, 100, 30, ID_OBJ_0, IF_FLOOR
    else                    0, off_0816

off_07D8:
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -11400, -100, -20620, 1024, 2624, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12960, -21830, 2000, 2000, ITEM_SMGAMMO, 100, 30, ID_OBJ_2, IF_FLOOR
    nop
    nop

off_0816:
    aot_set                 ID_AOT_5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10915, -23975, 2500, 2200, ID_MSG_0, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26115, -12775, 5300, 2400, ID_MSG_1, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26115, -16375, 1800, 6100, ID_MSG_1, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17215, -25375, 2400, 2100, ID_MSG_3, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12960, -21830, 2000, 2000, 255, 0, I_GOSUB, main_03, 0, 0
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    message_on              0, ID_MSG_1, 0, 255, 255
    evt_next
    nop
    if                      0, off_08F0
    ck                      FG_MESSAGE, F_QUESTION, 0
    if                      0, off_08D6
    ck                      FG_ENEMY_2, 59, 1
    ck                      FG_ENEMY_2, 60, 1
    ck                      FG_ENEMY_2, 61, 1
    set                     FG_STOP, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 25
    message_on              0, ID_MSG_0, 0, 255, 255
    set                     FG_ITEM, 63, 1
    evt_next
    plc_motion              1, 6, 128
    nop
    sleep                   10, 25
    aot_reset               ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    plc_ret
    set                     FG_STOP, 7, 0
    nop
    else                    0, off_08EE

off_08D6:
    message_on              0, ID_MSG_0, 0, 255, 255
    set                     FG_ITEM, 63, 1
    evt_next
    nop
    aot_reset               ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_03, 0, 0
    nop
    nop

off_08EE:
    endif
    nop

off_08F0:
    evt_end                 0

.proc main_03
    if                      0, off_092C
    ck                      FG_ENEMY_2, 59, 1
    ck                      FG_ENEMY_2, 60, 1
    ck                      FG_ENEMY_2, 61, 1
    set                     FG_STOP, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 25
    message_on              0, ID_MSG_2, 0, 255, 255
    evt_next
    plc_motion              1, 6, 128
    nop
    sleep                   10, 25
    plc_ret
    set                     FG_STOP, 7, 0
    nop
    else                    0, off_0936

off_092C:
    message_on              0, ID_MSG_2, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_0936:
    evt_end                 0
