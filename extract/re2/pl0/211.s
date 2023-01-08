.version 2
.init
.proc init_00
    if                      0, off_16B2
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_16B2:
    if                      0, off_16C6
    cmp                     0, 26, CMP_NE, 0
    sca_id_set              13, 0, 0
    sca_id_set              14, 0, 0
    endif
    nop

off_16C6:
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8788, -9066, 3300, 1800, -11250, 0, -25692, -1072, 1, 18, 0, 0, 6, 3, 0, 0, UNLOCKED, 0
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14482, -13116, 3800, 1800, -19281, 0, -26174, -1133, 1, 19, 0, 0, 29, 2, 0, 0, UNLOCKED, 0
    door_aot_se             8, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23122, -13116, 2600, 1800, -13013, 0, -17073, -25696, 1, 20, 0, 0, 25, 0, 0, 0, UNLOCKED, 0
    door_aot_se             6, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28352, -27116, 1880, 3170, 12660, 0, -3979, 2065, 1, 22, 0, 0, 26, 1, 0, 0, UNLOCKED, 0
    door_aot_se             7, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 988, 4344, 1800, 3200, -18768, 0, -3409, -28784, 1, 15, 5, 0, 18, 4, 0, 0, UNLOCKED, 0
    aot_set                 10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28382, -24356, 1890, 1600, 3, 0, 0, 0, 255, 255
    if                      0, off_179A
    ck                      0, 25, 1
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 11338, -11166, 1700, 1520, ITEM_HANDGUNAMMO, 15, 221, 255, 1
    endif
    nop

off_179A:
    evt_end                 0

.main
.proc main_00
    if                      0, off_17C2
    ck                      1, 6, 1
    gosub                   11
    evt_end                 0
    endif
    nop

off_17C2:
    gosub                   3
    evt_end                 0

.proc main_01
    if                      0, off_17D2
    ck                      1, 6, 1
    evt_end                 0
    endif
    nop

off_17D2:
    gosub                   6
    gosub                   2
    evt_end                 0

.proc main_02
    if                      0, off_17EC
    cmp                     0, 26, CMP_EQ, 4
    sca_id_set              13, 0, 0
    sca_id_set              14, 0, 0
    endif
    nop

off_17EC:
    evt_end                 0

.proc main_03
    set                     18, 3, 0
    set                     19, 1, 0
    if                      0, off_1832
    ck                      4, 14, 0
    aot_set                 5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24522, -13116, 1900, 1800, 255, 0, I_GOSUB, main_0A, 0, 0
    aot_set                 9, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -24522, -13116, 1900, 1800, 10, 0, 52, 0, 1, 0
    aot_reset               8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_09, 0, 0
    endif
    nop

off_1832:
    if                      0, off_185E
    ck                      4, 60, 0
    sce_espr_on2            1, 22, 0, 0, 0, 180, 11, 44, 162, 136, 245, 150, 206, 0, 0
    sce_espr_on2            2, 22, 0, 0, 0, 180, 11, 28, 163, 136, 245, 150, 206, 0, 0
    else                    0, off_18AE

off_185E:
    if                      0, off_188A
    ck                      4, 14, 0
    sce_espr_on2            1, 22, 16, 0, 0, 180, 11, 44, 162, 136, 245, 150, 206, 0, 0
    sce_espr_on2            2, 22, 16, 0, 0, 180, 11, 28, 163, 136, 245, 150, 206, 0, 0
    else                    0, off_18AC

off_188A:
    sce_espr_on2            1, 22, 8, 0, 0, 180, 11, 44, 162, 136, 245, 150, 206, 0, 0
    sce_espr_on2            2, 22, 8, 0, 0, 180, 11, 28, 163, 136, 245, 150, 206, 0, 0
    nop
    nop

off_18AC:
    nop
    nop

off_18AE:
    aot_set                 0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 327, -17280, 3000, 1610, 255, 0, I_GOSUB, main_07, 0, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 327, -17280, 3000, 1610, -22727, 0, -11215, -27544, 1, 21, 0, 0, 27, 3, 0, 142, ITEM_CLUBKEY, 0
    if                      0, off_19C8
    ck                      1, 1, 0
    if                      0, off_1972
    ck                      8, 119, 0
    if                      0, off_192A
    ck                      0, 25, 0
    sce_em_set              0, 0, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 100, -25649, 0, -14783, -959, 0, 0
    sce_em_set              0, 1, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 101, 9890, 0, -13707, 6297, 0, 0
    else                    0, off_196E

off_192A:
    sce_em_set              0, 0, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 100, 10483, 0, -12440, 1393, 0, 0
    sce_em_set              0, 1, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 101, -9985, 0, -14688, 3913, 0, 0
    sce_em_set              0, 2, ENEMY_CEREBRUS, 0, 0, 0, 12, 0, 102, -25232, 0, -21061, -1039, 0, 0
    nop
    nop

off_196E:
    else                    0, off_19C4

off_1972:
    if                      0, off_1994
    ck                      0, 25, 0
    sce_em_set              0, 0, ENEMY_LICKERRED, 0, 0, 0, 14, 0, 184, -3934, 0, -14493, -1039, 0, 0
    else                    0, off_19C2

off_1994:
    sce_em_set              0, 0, ENEMY_LICKERRED, 0, 0, 0, 14, 0, 184, -2710, 0, -14371, 4145, 0, 0
    sce_em_set              0, 1, ENEMY_LICKERRED, 0, 0, 0, 14, 0, 185, -16920, 0, -14351, 2091, 0, 0
    nop
    nop

off_19C2:
    nop
    nop

off_19C4:
    else                    0, off_1A22

off_19C8:
    if                      0, off_19F4
    ck                      29, 10, 1
    if                      0, off_19EE
    ck                      4, 153, 1
    if                      0, off_19E6
    ck                      8, 119, 0
    gosub                   4
    else                    0, off_19EA

off_19E6:
    gosub                   5
    nop
    nop

off_19EA:
    else                    0, off_19F0

off_19EE:
    nop
    nop

off_19F0:
    else                    0, off_1A20

off_19F4:
    if                      0, off_1A1E
    ck                      29, 9, 0
    if                      0, off_1A1A
    ck                      4, 153, 1
    if                      0, off_1A12
    ck                      8, 119, 0
    gosub                   4
    else                    0, off_1A16

off_1A12:
    gosub                   5
    nop
    nop

off_1A16:
    else                    0, off_1A1C

off_1A1A:
    nop
    nop

off_1A1C:
    endif
    nop

off_1A1E:
    nop
    nop

off_1A20:
    nop
    nop

off_1A22:
    evt_end                 0

.proc main_04
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 1, 100, 11093, 0, -13828, 2385, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 1, 101, 2294, 0, -12814, -2711, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 0, 0, 0, 4, 1, 102, -9386, 0, -15519, -5167, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 0, 0, 0, 6, 1, 184, -16812, 0, -13115, 977, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 0, 0, 0, 6, 1, 185, -25625, 0, -14002, -7519, 0, 0
    evt_end                 0

.proc main_05
    sce_em_set              0, 1, ENEMY_ZOMBIEGUY1, 0, 0, 0, 4, 1, 188, 2294, 0, -12814, 1385, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIEGUY1, 0, 0, 0, 6, 1, 189, -9386, 0, -15519, 3025, 0, 0
    evt_end                 0

.proc main_06
    if                      0, off_1B02
    ck                      4, 14, 0
    if                      0, off_1B00
    cmp                     0, 0, CMP_EQ, 9
    if                      0, off_1AFE
    cmp                     0, 2, CMP_EQ, 52
    if                      0, off_1AF4
    ck                      4, 60, 1
    set                     4, 14, 1
    sce_item_lost           52
    evt_exec                255, I_GOSUB, main_08
    else                    0, off_1AFC

off_1AF4:
    message_on              0, 1, 0, 255, 255
    nop
    nop

off_1AFC:
    endif
    nop

off_1AFE:
    endif
    nop

off_1B00:
    endif
    nop

off_1B02:
    evt_end                 0

.proc main_07
    set                     2, 7, 1
    if                      0, off_1B1A
    ck                      31, 14, 0
    message_on              0, 4, 0, 255, 255
    evt_next
    nop
    endif
    nop

off_1B1A:
    aot_on                  1
    evt_next
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_08
    set                     2, 7, 1
    set                     2, 2, 1
    cut_chg                 12
    aot_reset               8, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 43, 205, 0, 0, 79, 189
    aot_reset               5, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 43, 205, 0, 0, 79, 189
    aot_reset               9, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 43, 205, 0, 0, 79, 189
    se_on                   2, 12, 0, -23484, -1800, -13165
    sleep                   10, 15
    se_on                   2, 13, 0, -23484, -1800, -13165
    sce_espr_kill2          1
    sce_espr_kill2          2
    sce_espr_on2            1, 22, 8, 0, 0, 180, 11, 44, 162, 136, 245, 150, 206, 0, 0
    sce_espr_on2            2, 22, 8, 0, 0, 180, 11, 28, 163, 136, 245, 150, 206, 0, 0
    sleep                   10, 15
    se_on                   2, 11, 0, -23484, -1800, -13165
    cut_chg                 9
    cut_auto                1
    set                     2, 7, 0
    set                     2, 2, 0
    evt_end                 0

.proc main_09
    set                     2, 7, 1
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    message_on              0, 6, 0, 255, 255
    se_on                   2, 22, 0, -23484, -1800, -13165
    evt_next
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_0A
    set                     2, 7, 1
    cut_chg                 12
    if                      0, off_1BEA
    ck                      4, 60, 1
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    else                    0, off_1BF4

off_1BEA:
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    nop
    nop

off_1BF4:
    cut_chg                 9
    cut_auto                1
    set                     2, 7, 0
    evt_end                 0

.proc main_0B
    sca_id_set              13, 0, 0
    sca_id_set              14, 0, 0
    set                     18, 3, 0
    set                     19, 1, 0
    aot_set                 2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 8788, -9066, 3300, 1800, 5, 0, 0, 0, 255, 255
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14482, -13116, 3800, 1800, 5, 0, 0, 0, 255, 255
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23122, -13116, 2600, 1800, 5, 0, 0, 0, 255, 255
    aot_set                 1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 327, -17280, 3000, 1610, 5, 0, 0, 0, 255, 255
    door_aot_se             6, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28352, -27116, 1880, 3170, 12660, 0, -3979, 2065, 1, 22, 0, 0, 26, 1, 0, 0, UNLOCKED, 0
    door_aot_se             7, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 988, 4344, 1800, 3200, -18768, 0, -3409, -28784, 1, 15, 5, 0, 18, 4, 0, 0, UNLOCKED, 0
    sce_em_set              0, 0, ENEMY_CROW, 0, 0, 0, 13, 0, 108, -17355, -450, -13298, 705, 0, 0
    sce_em_set              0, 1, ENEMY_CROW, 0, 0, 0, 13, 0, 109, -18475, -450, -14351, 531, 0, 0
    sce_em_set              0, 2, ENEMY_CROW, 0, 0, 0, 13, 0, 110, -17120, -450, -15236, 3488, 0, 0
    sce_em_set              0, 3, ENEMY_CROW, 0, 0, 0, 13, 0, 111, -3430, -450, -11125, 5280, 0, 0
    sce_em_set              0, 4, ENEMY_CROW, 0, 0, 0, 13, 0, 112, -26447, -450, -18670, 736, 0, 0
    sce_em_set              0, 5, ENEMY_CROW, 0, 0, 0, 13, 0, 113, -25202, -450, -18443, 32, 0, 0
    sce_em_set              0, 6, ENEMY_CROW, 0, 0, 0, 13, 0, 114, -24278, -450, -17967, 2240, 0, 0
    sce_em_set              0, 7, ENEMY_CROW, 0, 0, 0, 13, 0, 157, -4868, 0, -11001, 976, 0, 0
    sce_em_set              0, 8, ENEMY_CROW, 0, 0, 0, 13, 0, 158, -4053, 0, -10991, 1136, 0, 0
    evt_end                 0
    db                      0x00, 0x00
