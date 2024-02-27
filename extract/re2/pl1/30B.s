.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17272, -4239, 2200, 1400, -24700, -5400, -25832, 3808, 2, 3, 0, 3, 36, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -1512, -6566, 1810, 2080, -25951, -5400, -25696, 4104, 2, 5, 5, 3, 8, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17892, -18906, 2220, 1370, -8194, 0, 4890, 893, 2, 2, 4, 0, 14, 5, 0, 0, UNLOCKED, 0
    if                      0, off_0BAE
    ck                      FG_STATUS, F_BONUS, 1
    aot_set                 ID_AOT_3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19412, -14556, 1710, 2980, ID_MSG_14, 0, 0, 0, 255, 255
    else                    0, off_0BD0

off_0BAE:
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19412, -14556, 1710, 2980, -13212, 0, -15929, -1960, 2, 12, 0, 0, 8, 1, 0, 0, UNLOCKED, 0
    nop
    nop

off_0BD0:
    evt_end                 0
    db                      0x26, 0x05

.main
.proc main
    gosub                   main_02
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7872, -4670, 1600, 1500, ITEM_EXPLOSIVEROUNDS, 6, 193, ID_OBJ_1, IF_FLOOR
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -6949, 0, -4255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc aot
    gosub                   main_03
    evt_end                 0

.proc main_02
    if                      0, off_0C84
    ck                      FG_STATUS, F_BONUS, 1
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_5, 0, 41, -10828, 0, -4773, 1959, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_5, 0, 42, -14604, 0, -8361, 2055, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_5, 0, 43, -15307, 0, -14951, 1991, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_5, 0, 44, -17263, 0, -11724, 1991, 0, 0
    else                    0, off_0CAE

off_0C84:
    aot_set                 ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15370, -18550, 2900, 1400, ID_MSG_15, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9880, -7650, 1700, 4600, ID_MSG_16, 0, 0, 0, 255, 255
    nop
    nop

off_0CAE:
    evt_end                 0

.proc main_03
    if                      0, off_0CBC
    ck                      FG_STATUS, F_BONUS, 1
    evt_end                 0
    endif
    nop

off_0CBC:
    switch                  26, off_0DAC
    case                    0, off_0CDA, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 70, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 1, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 1, 64
    break                   0

off_0CDA:
    case                    0, off_0CF4, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 60, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 1, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 1, 64
    break                   0

off_0CF4:
    case                    0, off_0D0E, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 1, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 1, 64
    break                   0

off_0D0E:
    case                    0, off_0D28, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 90
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 1, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 1, 64
    break                   0

off_0D28:
    case                    0, off_0D42, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 90
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 1, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 1, 64
    break                   0

off_0D42:
    case                    0, off_0D5C, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 90
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 1, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 1, 64
    break                   0

off_0D5C:
    case                    0, off_0D76, 6
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 90
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 1, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 1, 64
    break                   0

off_0D76:
    case                    0, off_0D90, 7
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 90
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 1, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 1, 64
    break                   0

off_0D90:
    case                    0, off_0DAA, 8
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 90
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 1, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 1, 64
    break                   0

off_0DAA:
    eswitch                 0

off_0DAC:
    do                      0, off_0DBA
    sleep                   10, 1
    edwhile                 off_0DBA
    ck                      FG_STATUS, 11, 0

off_0DBA:
    goto                    255, 255, 0, off_0CBC
    evt_end                 0
    db                      0x19, 0x00
