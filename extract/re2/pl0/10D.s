.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24140, -25801, 1300, 1400, -24200, 0, -25000, 0, 0, 14, 0, 0, 0, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11780, -9531, 1800, 1200, -11075, 0, -26200, 3072, 1, 27, 4, 0, 5, 128, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    aot_set                 ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14500, -13900, 5600, 1800, ID_MSG_0, 0, 0, 0, 255, 255
    if                      0, off_0894
    ck                      FG_STATUS, F_PLAYER, 0
    if                      0, off_0892
    ck                      FG_STATUS, F_SCENARIO, 1
    ck                      FG_ITEM, 106, 1
    ck                      FG_COMMON, 80, 0
    if                      0, off_0882
    cmp                     0, V_LAST_RDT, CMP_EQ, 270
    set                     FG_ENEMY, 196, 0
    sce_em_set              0, ID_EM_0, ENEMY_TYRANT_1, 0, AI_DEFAULT, 0, SBK_18, 0, 196, -23000, 0, -10500, 0, 0, 0
    if                      0, off_0878
    ck                      FG_ENEMY, 199, 0
    item_aot_set            ID_AOT_10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 194, -900, -900, 1800, 1800, ITEM_SHOTGUNAMMO, 7, 206, ID_OBJ_255, IF_FLOOR
    aot_reset               ID_AOT_10, SCE_AUTO, SAT_PL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0878:
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    else                    0, off_0890

off_0882:
    set                     FG_COMMON, 80, 1
    sce_bgmtbl_set          0, 13, 1, 255, 0
    nop
    nop

off_0890:
    endif
    nop

off_0892:
    endif
    nop

off_0894:
    if                      0, off_08DA
    ck                      FG_ENEMY, 199, 1
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -24690, 0, -16640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25300, -17900, 1800, 1800, ITEM_MAGNUMAMMO, 8, 206, ID_OBJ_0, IF_GLINT_GRAY | IF_FLOOR
    endif
    nop

off_08DA:
    evt_end                 0

.proc aot
    if                      0, off_091C
    ck                      FG_STATUS, F_PLAYER, 0
    ck                      FG_STATUS, F_SCENARIO, 1
    ck                      FG_ITEM, 106, 1
    ck                      FG_COMMON, 80, 0
    if                      0, off_091A
    ck                      FG_ENEMY, 196, 1
    ck                      FG_ROOM, 10, 0
    if                      0, off_090E
    ck                      FG_ENEMY, 199, 0
    evt_exec                255, I_GOSUB, main_02
    set                     FG_ENEMY, 199, 1
    endif
    nop

off_090E:
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 0
    set                     FG_ROOM, 10, 1
    endif
    nop

off_091A:
    endif
    nop

off_091C:
    evt_end                 0

.proc main_02
    if                      0, off_0936
    ck                      FG_ITEM, 206, 0
    sleep                   10, 151
    aot_reset               ID_AOT_10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 22, 0, 8, 0, 206, 0
    endif
    nop

off_0936:
    evt_end                 0
