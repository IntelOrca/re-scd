.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28772, -3439, 2200, 2800, -2700, 0, -19832, -2068, 3, 7, 4, 0, 10, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9912, -15066, 1810, 2350, -26351, 0, -10330, -4204, 3, 4, 0, 0, 35, 1, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 7, 0, -18042, -22606, 2220, 1370, -7824, 0, -25140, 2000, 3, 11, 0, 0, 22, 4, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_0EC2
    member_cmp              0, 6, 0, 15, 0
    set                     30, 0, 1
    set                     30, 2, 1
    rbj_reset
    nop
    else                    0, off_0ECA

off_0EC2:
    set                     30, 1, 1
    rbj_reset
    nop
    nop
    nop

off_0ECA:
    if                      0, off_0F3A
    ck                      FG_GAME, 3, 1
    if                      0, off_0EF4
    cmp                     0, V_LAST_RDT, CMP_EQ, 1028
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 4, 1, 32, 0, 255, -12345, -1800, -13317, -2024, 0, 0
    endif
    nop

off_0EF4:
    if                      0, off_0F16
    cmp                     0, V_LAST_RDT, CMP_EQ, 1031
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 4, 0, 32, 0, 255, -24729, 0, -2717, 4, 0, 0
    endif
    nop

off_0F16:
    if                      0, off_0F38
    cmp                     0, V_LAST_RDT, CMP_EQ, 1035
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 4, 0, 32, 0, 255, -13529, 0, -20717, 4, 0, 0
    endif
    nop

off_0F38:
    endif
    nop

off_0F3A:
    gosub                   main_02
    gosub                   main_03
    if                      0, off_0F4E
    ck                      FG_GAME, F_SCENARIO, 0
    set                     FG_3, 35, 0
    else                    0, off_0F66

off_0F4E:
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9100, -27180, 2430, 1450, ITEM_WOLFMEDAL, 1, 190, 255, 1
    nop
    nop

off_0F66:
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -9010, -25500, 2130, 1350, ITEM_FLAMEROUNDS, 6, 191, 255, 1
    evt_end                 0

.proc aot
    gosub                   main_04
    evt_end                 0

.proc main_02
    if                      0, off_10D4
    ck                      FG_ITEM, 184, 1
    if                      0, off_1028
    ck                      FG_GENERAL_1, 189, 1
    if                      0, off_0FE0
    ck                      FG_GENERAL_1, 118, 0
    sce_em_set              0, 0, ENEMY_ZOMBIE_GUY1, 0, 0, 0, 37, 0, 66, -21000, 0, -4120, 3415, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_GUY1, 0, 0, 0, 37, 0, 67, -11000, 0, -2600, 1240, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_GUY1, 0, 0, 0, 37, 0, 68, -13860, 0, -8200, 1288, 0, 0
    else                    0, off_1024

off_0FE0:
    sce_em_set              0, 0, ENEMY_ZOMBIE_GUY1, 0, 0, 0, 3, 0, 66, -21000, 0, -4120, 3415, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_GUY1, 0, 0, 0, 3, 0, 67, -11000, 0, -2600, 1240, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_GUY1, 0, 0, 0, 3, 0, 68, -13860, 0, -8200, 1288, 0, 0
    nop
    nop

off_1024:
    else                    0, off_10D0

off_1028:
    aot_set                 18, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -17300, -6270, 5360, 6360, 255, 0, I_GOSUB, main_0A, 0, 0
    if                      0, off_108A
    ck                      FG_GENERAL_1, 118, 0
    sce_em_set              0, 0, ENEMY_ZOMBIE_GUY1, 2, 64, 0, 37, 0, 66, -21000, 0, -4120, 3415, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_GUY1, 4, 64, 0, 37, 0, 67, -11000, 0, -2600, 1240, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_GUY1, 4, 64, 0, 37, 0, 68, -13860, 0, -8200, 1288, 0, 0
    else                    0, off_10CE

off_108A:
    sce_em_set              0, 0, ENEMY_ZOMBIE_GUY1, 2, 64, 0, 3, 0, 66, -21000, 0, -4120, 3415, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIE_GUY1, 4, 64, 0, 3, 0, 67, -11000, 0, -2600, 1240, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIE_GUY1, 4, 64, 0, 3, 0, 68, -13860, 0, -8200, 1288, 0, 0
    nop
    nop

off_10CE:
    nop
    nop

off_10D0:
    else                    0, off_1102

off_10D4:
    sce_em_set              0, 0, ENEMY_SPIDER, 75, 0, 1, 16, 0, 31, -17432, -3600, -5075, 4088, 0, 0
    sce_em_set              0, 1, ENEMY_SPIDER, 67, 0, 0, 16, 0, 32, -14113, -7200, -2256, 2016, 0, 0
    nop
    nop

off_1102:
    evt_end                 0

.proc main_03
    aot_set                 17, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18042, -22606, 2220, 1370, 255, 0, I_GOSUB, main_09, 0, 0
    if                      0, off_11BA
    ck                      FG_GENERAL_1, 118, 0
    mizu_div_set            6
    obj_model_set           0, 1, 130, 4, 7, 0, 6, 10, 26, -26686, -1040, -96, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 1, 130, 4, 7, 0, 7, 10, 26, -16189, -1040, -26996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 3, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -28360, -5440, 22110, 13570, 240, 251, 0, 0, 0, 0
    aot_set                 4, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -18230, -27910, 5790, 23110, 240, 251, 0, 0, 0, 0
    sce_espr_on2            1, 28, 1, 0, 0, 0, 16, 140, 179, 214, 241, 109, 234, 0, 12
    sce_espr_on2            2, 28, 1, 0, 0, 0, 16, 140, 179, 214, 241, 109, 234, 0, 12
    else                    0, off_11E4

off_11BA:
    aot_set                 12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27190, -5370, 3500, 1410, 6, 0, 0, 0, 255, 255
    aot_set                 13, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16790, -27770, 1560, 2750, 7, 0, 0, 0, 255, 255
    nop
    nop

off_11E4:
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -16218, -6696, -21834, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1224
    ck                      FG_GENERAL_1, 32, 0
    aot_reset               17, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 255, 255
    evt_exec                255, I_GOSUB, main_08
    else                    0, off_122A

off_1224:
    evt_exec                255, I_GOSUB, main_07
    nop
    nop

off_122A:
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -7860, -5570, 2490, 5650, 2, 0, 0, 0, 255, 255
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16770, -28670, 4530, 1800, 3, 0, 0, 0, 255, 255
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12290, -5770, 3460, 1050, 4, 0, 0, 0, 255, 255
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13090, -16870, 2000, 1250, 5, 0, 0, 0, 255, 255
    evt_end                 0

.proc main_04
    if                      0, off_1296
    cmp                     0, V_CUT, CMP_EQ, 7
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -16218, -6696, -21834
    else                    0, off_12A4

off_1296:
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -16218, -20000, -21834
    nop
    nop

off_12A4:
    gosub                   main_05
    evt_end                 0

.proc main_05

off_12A8:
    if                      0, off_13FA
    ck                      FG_GENERAL_1, 32, 0
    switch                  26, off_13F6
    case                    0, off_12D4, 0
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 80, 40
    sce_bgm_control         0, 0, 3, 0, 64
    sce_bgm_control         1, 0, 1, 1, 40
    break                   0

off_12D4:
    case                    0, off_12F4, 1
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 70, 50
    sce_bgm_control         0, 0, 3, 0, 64
    sce_bgm_control         1, 0, 1, 1, 40
    break                   0

off_12F4:
    case                    0, off_1314, 2
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 90, 80
    sce_bgm_control         0, 0, 3, 0, 64
    sce_bgm_control         1, 0, 1, 0, 64
    break                   0

off_1314:
    case                    0, off_1334, 3
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 60, 70
    sce_bgm_control         0, 0, 3, 0, 64
    sce_bgm_control         1, 0, 1, 1, 80
    break                   0

off_1334:
    case                    0, off_1354, 4
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 80, 90
    sce_bgm_control         0, 0, 3, 0, 64
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_1354:
    case                    0, off_1374, 5
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 50, 64
    sce_bgm_control         0, 0, 3, 0, 64
    sce_bgm_control         1, 0, 1, 80, 70
    break                   0

off_1374:
    case                    0, off_1394, 6
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 50, 20
    sce_bgm_control         0, 0, 3, 0, 64
    sce_bgm_control         1, 0, 1, 80, 90
    break                   0

off_1394:
    case                    0, off_13B4, 7
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 40, 64
    sce_bgm_control         0, 0, 3, 0, 64
    sce_bgm_control         1, 0, 1, 100, 90
    break                   0

off_13B4:
    case                    0, off_13D4, 8
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 50, 20
    sce_bgm_control         0, 0, 3, 0, 64
    sce_bgm_control         1, 0, 1, 80, 40
    break                   0

off_13D4:
    case                    0, off_13F4, 9
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 30, 64
    sce_bgm_control         0, 0, 3, 0, 64
    sce_bgm_control         1, 0, 1, 100, 64
    break                   0

off_13F4:
    eswitch                 0

off_13F6:
    else                    0, off_1506

off_13FA:
    switch                  26, off_1504
    case                    0, off_1418, 0
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 80, 40
    sce_bgm_control         1, 0, 1, 1, 40
    break                   0

off_1418:
    case                    0, off_1432, 1
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 70, 50
    sce_bgm_control         1, 0, 1, 1, 40
    break                   0

off_1432:
    case                    0, off_144C, 2
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 90, 80
    sce_bgm_control         1, 0, 1, 1, 64
    break                   0

off_144C:
    case                    0, off_1466, 3
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 60, 70
    sce_bgm_control         1, 0, 1, 1, 80
    break                   0

off_1466:
    case                    0, off_1480, 4
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 80, 90
    sce_bgm_control         1, 0, 1, 1, 64
    break                   0

off_1480:
    case                    0, off_149A, 5
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 50, 64
    sce_bgm_control         1, 0, 1, 1, 70
    break                   0

off_149A:
    case                    0, off_14B4, 6
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 50, 20
    sce_bgm_control         1, 0, 1, 1, 90
    break                   0

off_14B4:
    case                    0, off_14CE, 7
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 40, 64
    sce_bgm_control         1, 0, 1, 1, 90
    break                   0

off_14CE:
    case                    0, off_14E8, 8
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 50, 20
    sce_bgm_control         1, 0, 1, 1, 40
    break                   0

off_14E8:
    case                    0, off_1502, 9
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         0, 0, 2, 30, 64
    sce_bgm_control         1, 0, 1, 1, 64
    break                   0

off_1502:
    eswitch                 0

off_1504:
    nop
    nop

off_1506:
    do                      0, off_1514
    sleep                   10, 1
    edwhile                 off_1514
    ck                      FG_GAME, 11, 0

off_1514:
    goto                    255, 255, 0, off_12A8
    evt_end                 0

.proc main_06
    member_set              2, 1, 0
    member_set              3, 8, 0
    member_set              4, 3, 0
    member_set              5, 0, 0
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    evt_end                 0

.proc main_07
    work_set                WK_OBJECT, 2

off_153F:
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_ADD, V_TEMP, 4
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    goto                    255, 255, 0, off_153F
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, 2

off_155B:
    nop
    member_copy             V_TEMP, 14
    nop
    calc                    0, OP_ADD, V_TEMP, 400
    member_set2             14, V_TEMP
    nop
    evt_next
    nop
    goto                    255, 255, 0, off_155B
    evt_end                 0

.proc main_09
    message_on              0, 9, 0, 255, 255
    evt_next
    nop
    if                      0, off_1588
    ck                      FG_INPUT, F_QUESTION, 0
    aot_on                  2
    endif
    nop

off_1588:
    evt_end                 0

.proc main_0A
    set                     FG_GENERAL_1, 189, 1
    aot_reset               18, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    work_set                WK_ENEMY, 0
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    sleep                   10, 5
    work_set                WK_ENEMY, 1
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    sleep                   10, 30
    work_set                WK_ENEMY, 2
    nop
    member_copy             V_TEMP, 7
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             7, V_TEMP
    nop
    evt_end                 0
