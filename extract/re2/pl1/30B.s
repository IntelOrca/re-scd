.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17272, -4239, 2200, 1400, -24700, -5400, -25832, 3808, 2, 3, 0, 3, 36, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -1512, -6566, 1810, 2080, -25951, -5400, -25696, 4104, 2, 5, 5, 3, 8, 0, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17892, -18906, 2220, 1370, -8194, 0, 4890, 893, 2, 2, 4, 0, 14, 5, 0, 0, UNLOCKED, 0
    if                      0, off_0BAE
    ck                      1, 6, 1
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19412, -14556, 1710, 2980, 14, 0, 0, 0, 255, 255
    else                    0, off_0BD0

off_0BAE:
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19412, -14556, 1710, 2980, -13212, 0, -15929, -1960, 2, 12, 0, 0, 8, 1, 0, 0, UNLOCKED, 0
    nop
    nop

off_0BD0:
    evt_end                 0
    db                      0x26, 0x05

.main
.proc main_00
    gosub                   2
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7872, -4670, 1600, 1500, ITEM_EXPLOSIVEROUNDS, 6, 193, 1, 1
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -6949, 0, -4255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_01
    gosub                   3
    evt_end                 0

.proc main_02
    if                      0, off_0C84
    ck                      1, 6, 1
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY1, 0, 0, 0, 5, 0, 41, -10828, 0, -4773, 1959, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIEGUY1, 0, 0, 0, 5, 0, 42, -14604, 0, -8361, 2055, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIEGUY1, 0, 0, 0, 5, 0, 43, -15307, 0, -14951, 1991, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIEGUY1, 0, 0, 0, 5, 0, 44, -17263, 0, -11724, 1991, 0, 0
    else                    0, off_0CAE

off_0C84:
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15370, -18550, 2900, 1400, 15, 0, 0, 0, 255, 255
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9880, -7650, 1700, 4600, 16, 0, 0, 0, 255, 255
    nop
    nop

off_0CAE:
    evt_end                 0

.proc main_03
    if                      0, off_0CBC
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_0CBC:
    switch                  26, off_0DAC

off_0CC0:
    case                    0, off_0CDA, 0
    sce_bgm_control         0, 0, 1, 70, 64
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0CDA:
    case                    0, off_0CF4, 1
    sce_bgm_control         0, 0, 1, 60, 64
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0CF4:
    case                    0, off_0D0E, 2
    sce_bgm_control         0, 0, 1, 50, 64
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0D0E:
    case                    0, off_0D28, 3
    sce_bgm_control         0, 0, 1, 40, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0D28:
    case                    0, off_0D42, 4
    sce_bgm_control         0, 0, 1, 1, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0D42:
    case                    0, off_0D5C, 5
    sce_bgm_control         0, 0, 1, 1, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0D5C:
    case                    0, off_0D76, 6
    sce_bgm_control         0, 0, 1, 1, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0D76:
    case                    0, off_0D90, 7
    sce_bgm_control         0, 0, 1, 1, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0D90:
    case                    0, off_0DAA, 8
    sce_bgm_control         0, 0, 1, 1, 90
    sce_bgm_control         0, 0, 2, 1, 64
    sce_bgm_control         0, 0, 3, 1, 64
    break                   0

off_0DAA:
    eswitch                 0

off_0DAC:
    do                      0, off_0DBA
    sleep                   10, 1
    edwhile                 off_0DBA
    ck                      1, 11, 0

off_0DBA:
    goto                    255, 255, 0, off_0CC0
    evt_end                 0
    db                      0x19, 0x00
