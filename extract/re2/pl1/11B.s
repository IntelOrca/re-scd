.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9610, -20021, 2500, 800, 9080, 0, -1394, 2664, 0, 26, 3, 0, 48, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 9523, -14851, 3740, 1200, -24371, -5400, -20441, -1024, 0, 3, 0, 3, 10, 0, 0, 0, UNLOCKED, 0
    sce_espr_on             0, 13, 0, 12288, -5000, -4400, -30200, -512
    sce_espr_on             0, 14, 0, 12800, -4400, -4300, -30250, 0
    sce_espr_on             0, 13, 0, 11520, -3800, -4350, -30250, 0
    sce_espr_on             0, 14, 0, 12544, -5800, -4400, -30200, 0
    sce_espr_on             0, 13, 0, 10240, -6800, -4300, -30250, -512
    sce_espr_on             0, 14, 0, 13312, -7200, -4000, -30200, -512
    sce_espr_on             0, 4612, 0, 11776, -4900, -4800, -30200, -512
    sce_espr_on             0, 4612, 0, 11776, -4400, -4800, -30200, -512
    sce_espr_on             0, 4612, 0, 10240, -7200, -4700, -30250, 1400
    sce_espr_on             0, 13, 0, 11520, 17720, -2500, -29800, 0
    sce_espr_on             0, 13, 0, 10240, 16720, -2500, -29500, -512
    sce_espr_on             0, 14, 0, 10240, 16020, -2600, -29400, 512
    sce_espr_on             0, 4612, 0, 11776, 17720, -2500, -29800, -512
    sce_espr_on             0, 4612, 0, 10240, 16720, -2500, -29500, -256
    evt_end                 0

.main
.proc main_00
    gosub                   2
    evt_exec                255, I_GOSUB, main_03
    evt_exec                255, I_GOSUB, main_04
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    if                      0, off_0AB4
    ck                      0, 25, 0
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 70, 0, 0, 7, 1, 151, -8490, 0, -23828, 3139, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 64, 0, 0, 8, 2, 152, -6327, 0, -25189, 3165, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 64, 0, 0, 7, 1, 153, -5561, 0, -19121, 2669, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 64, 0, 0, 8, 3, 154, -850, 0, -23851, 3925, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 64, 0, 0, 7, 3, 155, 10083, 0, -20524, 1901, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 64, 0, 0, 8, 3, 163, 10989, 0, -17835, 952, 0, 0
    else                    0, off_0B3A

off_0AB4:
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 70, 0, 0, 7, 1, 151, -5150, 0, -24751, 2669, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 64, 0, 0, 8, 2, 152, -252, 0, -22412, 1805, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 64, 0, 0, 7, 1, 153, 1427, 0, -19397, 1845, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 64, 0, 0, 8, 3, 154, 4848, 0, -22721, 2693, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 64, 0, 0, 7, 3, 155, 4775, 0, -16140, 1317, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 64, 0, 0, 8, 3, 163, 8885, 0, -17824, 5152, 0, 0
    nop
    nop

off_0B3A:
    evt_end                 0

.proc main_03
    evt_next
    nop

off_0B3E:
    switch                  26, off_0BC6
    case                    0, off_0B5C, 0
    sce_bgm_control         0, 0, 1, 61, 41
    sce_bgm_control         0, 0, 2, 61, 65
    sce_bgm_control         0, 0, 3, 51, 65
    break                   0

off_0B5C:
    case                    0, off_0B76, 1
    sce_bgm_control         0, 0, 1, 71, 31
    sce_bgm_control         0, 0, 2, 61, 65
    sce_bgm_control         0, 0, 3, 51, 65
    break                   0

off_0B76:
    case                    0, off_0B90, 2
    sce_bgm_control         0, 0, 1, 81, 51
    sce_bgm_control         0, 0, 2, 61, 65
    sce_bgm_control         0, 0, 3, 51, 65
    break                   0

off_0B90:
    case                    0, off_0BAA, 3
    sce_bgm_control         0, 0, 1, 71, 91
    sce_bgm_control         0, 0, 2, 61, 65
    sce_bgm_control         0, 0, 3, 51, 65
    break                   0

off_0BAA:
    case                    0, off_0BC4, 4
    sce_bgm_control         0, 0, 1, 61, 101
    sce_bgm_control         0, 0, 2, 61, 65
    sce_bgm_control         0, 0, 3, 51, 65
    break                   0

off_0BC4:
    eswitch                 0

off_0BC6:
    while                   4, off_0BD2
    ck                      1, 11, 0
    evt_next
    nop
    ewhile                  0

off_0BD2:
    goto                    255, 255, 0, off_0B3E + 2
    evt_end                 0

.proc main_04
    light_kido_set          0, 14000

off_0BDE:
    sleep                   10, 2
    light_kido_set          0, 13500
    sleep                   10, 3
    light_kido_set          0, 13200
    goto                    255, 255, 0, off_0BDE
    evt_end                 0
    db                      0x00, 0x78
