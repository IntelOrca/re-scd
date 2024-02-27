.version 2

.init
.proc init
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18419, -27826, 4740, 990, -7893, 0, -22497, 1320, 2, 4, 3, 0, 31, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -27339, -9726, 2350, 1390, -20143, -7200, -22770, 3120, 3, 3, 0, 4, 6, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_02
    gosub                   main_05
    if                      0, off_08E4
    ck                      FG_STATUS, F_SCENARIO, 1
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_36, 0, 5, -17518, 0, -19627, 147, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_36, 0, 6, -14776, 0, -23206, 2387, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_36, 0, 7, -16206, 0, -6115, 959, 0, 0
    endif
    nop

off_08E4:
    evt_end                 0

.proc aot
    gosub                   main_04
    evt_end                 0

.proc main_02
    mizu_div_set            2
    obj_model_set           ID_OBJ_0, 1, 130, 4, 4, 0, 5, 10, 26, -18027, -700, -27606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_0, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -18245, -27441, 4500, 22600, 68, 253, 0, 0, 0, 0
    aot_set                 ID_AOT_5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18415, -5953, 4880, 1800, ID_MSG_0, 0, 0, 0, 255, 255
    sce_espr_on             0, 284, 0, 4096, -17800, -2400, -16500, 0
    sce_espr_on             0, 284, 0, 4096, -17700, -2400, -6000, 0
    gosub                   main_03
    save                    V_04, 255
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    evt_end                 0

.proc main_03
    sce_espr_on             0, 34, 0, 4096, -16364, -4050, -26521, 0
    sce_espr_on             0, 34, 0, 4096, -16000, -4200, -26521, 0
    sce_espr_on             0, 34, 0, 4096, -15800, -4000, -26521, 0
    sce_espr_on             0, 34, 0, 4096, -20721, -5050, -11601, 0
    sce_espr_on             0, 34, 0, 4096, -19800, -5200, -11601, 0
    sce_espr_on             0, 34, 0, 4096, -20800, -5000, -11601, 0
    sce_espr_on             0, 34, 0, 4096, -26004, -5050, -11715, 0
    sce_espr_on             0, 34, 0, 4096, -26304, -5200, -11715, 0
    sce_espr_on             0, 34, 0, 4096, -26700, -5000, -11715, 0
    evt_end                 0

.proc main_04
    if                      0, off_0A96
    work_copy               4, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    copy                    V_04, V_CUT
    nop
    switch                  26, off_0A94
    case                    0, off_0A2A, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 90
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    break                   0

off_0A2A:
    case                    0, off_0A44, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 70, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    break                   0

off_0A44:
    case                    0, off_0A5E, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 100, 30
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    break                   0

off_0A5E:
    case                    0, off_0A78, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 100, 40
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    break                   0

off_0A78:
    case                    0, off_0A92, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 70, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 0, 64
    break                   0

off_0A92:
    eswitch                 0

off_0A94:
    endif
    nop

off_0A96:
    evt_end                 0

.proc main_05
    if                      0, off_0AFA
    ck                      FG_STATUS, 3, 1
    if                      0, off_0AC4
    cmp                     0, V_LAST_RDT, CMP_EQ, 772
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 0, SBK_32, 0, 255, -15295, 0, -25998, 2872, 0, 0
    else                    0, off_0ADC

off_0AC4:
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_PENDANT, 0, AI_04, 1, SBK_32, 0, 255, -26179, -1800, -9642, 249, 0, 0
    nop
    nop

off_0ADC:
    if                      0, off_0AF8
    ck                      FG_STATUS, F_SCENARIO, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 2048
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_0AF8:
    endif
    nop

off_0AFA:
    evt_end                 0
