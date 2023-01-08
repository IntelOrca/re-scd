.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 728, -15037, 2500, 1100, 24730, 0, -15507, 5344, 1, 27, 15, 0, 16, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17672, -6137, 2100, 1200, -10883, 0, -6299, 1008, 2, 0, 0, 0, 23, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    gosub                   2
    gosub                   3
    evt_end                 0

.proc main_01
    if                      0, off_09F2
    ck                      1, 11, 1
    gosub                   3
    endif
    nop

off_09F2:
    evt_end                 0

.proc main_02
    sce_espr_on             0, 5, 0, 2048, -14886, -2664, -4995, 0
    sce_espr_on             0, 5, 0, 2816, -14886, -2754, -4950, 0
    sce_espr_on             0, 5, 0, 3584, -14886, -2844, -4905, 0
    sce_espr_on             0, 5, 0, 2048, -17514, -2664, -4995, 0
    sce_espr_on             0, 5, 0, 2816, -17514, -2754, -4950, 0
    sce_espr_on             0, 5, 0, 3584, -17514, -2844, -4905, 0
    evt_end                 0

.proc main_03
    if                      0, off_0A68
    cmp                     0, 26, CMP_EQ, 5
    evt_exec                9, I_GOSUB, main_04
    else                    0, off_0A6C

off_0A68:
    evt_kill                9
    nop
    nop

off_0A6C:
    gosub                   5
    evt_end                 0

.proc main_04
    light_kido_set          1, 4000

off_0A74:
    sleep                   10, 3
    light_kido_set          1, 2500
    sleep                   10, 2
    light_kido_set          1, 3500
    sleep                   10, 1
    goto                    255, 255, 0, off_0A74
    evt_end                 0

.proc main_05
    switch                  26, off_0B14
    case                    0, off_0AA2, 0
    sce_bgm_control         0, 0, 1, 1, 64
    break                   0

off_0AA2:
    case                    0, off_0AB0, 1
    sce_bgm_control         0, 0, 1, 1, 64
    break                   0

off_0AB0:
    case                    0, off_0ABE, 2
    sce_bgm_control         0, 0, 1, 1, 64
    break                   0

off_0ABE:
    case                    0, off_0ACC, 3
    sce_bgm_control         0, 0, 1, 1, 64
    break                   0

off_0ACC:
    case                    0, off_0ADA, 4
    sce_bgm_control         0, 0, 1, 50, 64
    break                   0

off_0ADA:
    case                    0, off_0AE8, 5
    sce_bgm_control         0, 0, 1, 70, 55
    break                   0

off_0AE8:
    case                    0, off_0AF6, 6
    sce_bgm_control         0, 0, 1, 1, 64
    break                   0

off_0AF6:
    case                    0, off_0B04, 7
    sce_bgm_control         0, 0, 1, 1, 64
    break                   0

off_0B04:
    case                    0, off_0B12, 8
    sce_bgm_control         0, 0, 1, 1, 64
    break                   0

off_0B12:
    eswitch                 0

off_0B14:
    evt_end                 0
    db                      0x18, 0x00
