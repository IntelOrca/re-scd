.version 2

.init
.proc init
    if                      0, off_1694
    ck                      FG_COMMON, 254, 1
    set                     FG_SCENARIO, 99, 0
    set                     FG_STATUS, 3, 1
    endif
    nop

off_1694:
    door_aot_se             ID_AOT_5, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -18062, -18794, 2200, 1380, -17273, -5400, 1678, 488, 2, 9, 3, 3, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_6, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4932, -14464, 1830, 3510, -7988, -7200, -25463, -6104, 3, 0, 0, 4, 31, 0, 0, 0, UNLOCKED, 0
    mizu_div_set            2
    obj_model_set           ID_OBJ_0, 1, 130, 4, 4, 0, 1, 10, 26, -3550, -700, -10800, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 130, 4, 4, 0, 0, 10, 26, 950, -700, -15300, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_7, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -5442, -16994, 10900, 7700, 68, 253, 0, 0, 0, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    evt_end                 0

.proc aot
    gosub                   main_05
    evt_end                 0

.proc main_02
    save                    V_08, 16
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 1, 0
    gosub                   main_05
    aot_set                 ID_AOT_1, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -18062, -18794, 2200, 1380, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4932, -14464, 1830, 3510, 255, 0, I_GOSUB, main_04, 0, 0
    evt_end                 0

.proc main_03
    message_on              0, ID_MSG_4, 0, 255, 255
    evt_next
    nop
    if                      0, off_1796
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_on                  ID_AOT_5
    endif
    nop

off_1796:
    evt_end                 0

.proc main_04
    aot_on                  ID_AOT_6
    evt_end                 0

.proc main_05
    if                      0, off_1826
    work_copy               8, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    switch                  26, off_1820
    case                    0, off_17BC, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_17BC:
    case                    0, off_17CA, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    break                   0

off_17CA:
    case                    0, off_17D8, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 64
    break                   0

off_17D8:
    case                    0, off_17E6, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 40
    break                   0

off_17E6:
    case                    0, off_17F4, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_17F4:
    case                    0, off_1802, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_1802:
    case                    0, off_1810, 6
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_1810:
    case                    0, off_181E, 7
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_181E:
    eswitch                 0

off_1820:
    copy                    V_08, V_CUT
    nop
    endif
    nop

off_1826:
    evt_end                 0
