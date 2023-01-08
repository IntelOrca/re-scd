.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, 0, 0, 0, 0, -24335, -18000, -6706, 0, 5, 14, 1, 10, 22, 5, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, 0, 0, 0, 0, -24330, -18000, -24590, 8059, 5, 14, 0, 10, 22, 4, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -28150, -23397, 1840, 2320, -6682, 0, -25145, 2024, 5, 11, 4, 0, 29, 0, 0, 0, UNLOCKED, 0
    door_aot_se             3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -28080, -5327, 1920, 2080, -25212, 0, -16284, 1832, 5, 22, 0, 0, 29, 0, 0, 0, UNLOCKED, 0
    if                      0, off_041C
    ck                      4, 164, 1
    set                     1, 12, 1
    endif
    nop

off_041C:
    evt_end                 0
    db                      0x6D, 0xD9

.main
.proc main_00
    gosub                   2
    if                      0, off_0450
    cmp                     0, 26, CMP_EQ, 0
    gosub                   7
    gosub                   10
    else                    0, off_0454

off_0450:
    gosub                   8
    nop
    nop

off_0454:
    evt_end                 0

.proc main_01
    gosub                   6
    gosub                   5
    evt_end                 0

.proc main_02
    save                    4, 50
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -25368, -20877, 1360, 1140, ITEM_HERBG, 1, 0, 0, 1
    obj_model_set           0, 0, 0, 0, 0, 10, 0, 10, 16, -24773, -18000, -20186, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -23428, -20817, 1320, 1220, ITEM_HERBG, 1, 1, 1, 1
    obj_model_set           1, 0, 0, 0, 0, 10, 0, 10, 16, -22943, -18000, -20186, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -27838, -28167, 6890, 1820, 0, 0, 0, 0, 255, 255
    aot_set                 9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -27407, -10089, 6590, 1600, 0, 0, 0, 0, 255, 255
    aot_set                 10, SCE_NORMAL, SAT_PL | SAT_UNDER, 10, 0, -28502, -10609, 8210, 7140, 0, 0, 0, 0, 0, 0
    aot_set                 11, SCE_NORMAL, SAT_PL | SAT_UNDER, 10, 0, -28666, -27982, 8680, 9200, 0, 0, 0, 0, 0, 0
    aot_set                 12, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -27277, -8309, 2730, 2540, 255, 0, I_GOSUB, main_04, 0, 0
    aot_set                 13, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 10, 0, -27057, -26259, 2164, 2440, 255, 0, I_GOSUB, main_03, 0, 0
    evt_end                 0

.proc main_03
    message_on              0, 2, 0, 255, 255
    evt_next
    nop
    if                      0, off_0566
    ck                      11, 31, 0
    aot_on                  0
    endif
    nop

off_0566:
    evt_end                 0

.proc main_04
    message_on              0, 1, 0, 255, 255
    evt_next
    nop
    if                      0, off_057C
    ck                      11, 31, 0
    aot_on                  1
    endif
    nop

off_057C:
    evt_end                 0

.proc main_05
    copy                    16, 4
    nop
    calc                    0, OP_ADD, 16, 1
    copy                    4, 16
    nop
    if                      0, off_05B6
    cmp                     0, 29, CMP_GE, 30720
    if                      0, off_05B2
    cmp                     0, 4, CMP_GE, 30
    se_on                   2, 10, 1, 0, 0, 0
    save                    4, 0
    endif
    nop

off_05B2:
    else                    0, off_05D4

off_05B6:
    if                      0, off_05D2
    cmp                     0, 4, CMP_GE, 70
    se_on                   2, 10, 1, 0, 0, 0
    save                    4, 0
    endif
    nop

off_05D2:
    nop
    nop

off_05D4:
    evt_end                 0

.proc main_06
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_05FC
    ck                      4, 177, 0
    if                      0, off_05FA
    member_cmp              0, 9, 0, 11, 0
    set                     35, 16, 1
    set                     9, 137, 1
    set                     4, 177, 1
    endif
    nop

off_05FA:
    endif
    nop

off_05FC:
    if                      0, off_061E
    ck                      4, 178, 0
    if                      0, off_061C
    member_cmp              0, 9, 0, 10, 0
    set                     35, 17, 1
    set                     9, 138, 1
    set                     4, 178, 1
    endif
    nop

off_061C:
    endif
    nop

off_061E:
    evt_end                 0

.proc main_07
    sce_em_set              0, 0, ENEMY_VINES, 0, 32, 10, 0, 0, 255, -20525, -25000, -23964, 486, 0, 0
    sce_em_set              0, 1, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -25816, -22000, -30106, 2144, 0, 0
    sce_em_set              0, 2, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -18546, -23500, -26226, 2368, 0, 0
    sce_em_set              0, 3, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -22404, -20000, -30746, -2560, 0, 0
    sce_em_set              0, 4, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -18739, -26000, -26706, 2464, 0, 0
    sce_em_set              0, 5, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -17235, -25000, -25326, 1184, 0, 0
    sce_em_set              0, 6, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -17849, -19000, -24316, 1504, 0, 0
    evt_end                 0

.proc main_08
    sce_em_set              0, 0, ENEMY_VINES, 0, 32, 10, 0, 0, 255, -24107, -25000, -9006, 966, 0, 0
    sce_em_set              0, 1, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -17841, -23000, -7606, 3648, 0, 0
    sce_em_set              0, 2, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -15735, -23500, -9406, 2624, 0, 0
    sce_em_set              0, 3, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -17631, -20000, -8806, 8192, 0, 0
    sce_em_set              0, 4, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -22581, -28000, -10306, 2656, 0, 0
    sce_em_set              0, 5, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -14935, -25000, -8906, 2048, 0, 0
    sce_em_set              0, 6, ENEMY_VINES, 33, 32, 10, 0, 0, 255, -19013, -19000, -11606, 1984, 0, 0
    evt_end                 0

.proc main_09
    sce_em_set              0, 7, ENEMY_IVY, 0, 0, 10, 19, 0, 73, -22883, -18010, -21005, 713, 0, 0
    sce_em_set              0, 8, ENEMY_VINES, 0, 32, 0, 19, 0, 255, -19314, 0, -21721, -448, 0, 0
    evt_end                 0

.proc main_0A
    if                      0, off_0794
    ck                      1, 1, 0
    gosub                   11
    else                    0, off_07A8

off_0794:
    if                      0, off_07A2
    ck                      29, 14, 1
    gosub                   13
    else                    0, off_07A6

off_07A2:
    gosub                   11
    nop
    nop

off_07A6:
    nop
    nop

off_07A8:
    evt_end                 0

.proc main_0B
    sce_em_set              0, 7, ENEMY_IVY, 0, 0, 10, 19, 0, 73, -22883, -18010, -21005, 713, 0, 0
    sce_em_set              0, 8, ENEMY_VINES, 0, 32, 0, 19, 0, 255, -22883, -18010, -21005, 713, 0, 0
    evt_end                 0

.proc main_0C
    sce_em_set              0, 7, ENEMY_IVY, 6, 0, 10, 19, 0, 73, -22883, -18010, -21005, 713, 0, 0
    sce_em_set              0, 8, ENEMY_VINES, 0, 32, 0, 19, 0, 255, -22883, -18010, -21005, 713, 0, 0
    evt_end                 0

.proc main_0D
    sce_em_set              0, 7, ENEMY_IVYPURPLE, 0, 0, 10, 19, 0, 73, -22883, -18010, -21005, 713, 0, 0
    sce_em_set              0, 8, ENEMY_VINES, 0, 32, 0, 19, 0, 255, -22883, -18010, -21005, 713, 0, 0
    evt_end                 0
