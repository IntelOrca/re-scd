.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, -6611, 0, -3724, -2080, 1, 26, 3, 0, 22, 4, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9153, 5181, 3200, 1800, -16806, 0, -17551, -1017, 2, 11, 0, 0, 14, 4, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    obj_model_set           0, 0, 130, 4, 7, 0, 0, 10, 26, -17000, -180, -18000, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 130, 4, 7, 0, 0, 10, 26, -17200, -180, -16200, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 130, 4, 7, 0, 0, 10, 26, -6000, -180, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 2, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -20592, -20566, 18000, 29370, 76, 255, 0, 0, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9853, -17919, 1800, 1800, 255, 0, I_GOSUB, main_04, 0, 0
    if                      0, off_0B08
    ck                      1, 6, 0
    sce_em_set              0, 0, ENEMY_SPIDER, 9, 0, 0, 16, 0, 106, -14472, -1800, -13055, 1041, 0, 0
    sce_em_set              0, 1, ENEMY_SPIDER, 0, 0, 0, 16, 0, 145, -11485, 0, 4025, 2048, 0, 0
    else                    0, off_0B36

off_0B08:
    sce_em_set              0, 0, ENEMY_SPIDER, 0, 0, 0, 16, 0, 88, -9303, 0, -16855, 2048, 0, 0
    sce_em_set              0, 1, ENEMY_SPIDER, 0, 0, 0, 16, 0, 89, -15785, 0, -7775, 3064, 0, 0
    nop
    nop

off_0B36:
    if                      0, off_0B54
    cmp                     0, 26, CMP_EQ, 0
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 0, 131
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 0, 131
    else                    0, off_0B66

off_0B54:
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 0, 131
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 0, 131
    nop
    nop

off_0B66:
    sce_bgm_control         0, 0, 1, 90, 64
    evt_end                 0

.proc main_01
    gosub                   2
    gosub                   3
    evt_end                 0

.proc main_02
    switch                  26, off_0C0E
    case                    0, off_0B98, 0
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 76, 255
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 0, 131
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 0, 131
    break                   0

off_0B98:
    case                    0, off_0BBC, 1
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 0, 131
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 76, 255
    member_set              13, 120, 186
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 0, 131
    break                   0

off_0BBC:
    case                    0, off_0BC2, 2

off_0BC2:
    case                    0, off_0BE6, 5
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 0, 131
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 76, 255
    member_set              13, 184, 192
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 0, 131
    break                   0

off_0BE6:
    case                    0, off_0BEC, 3

off_0BEC:
    case                    0, off_0C0C, 4
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 0, 131
    work_set                WK_OBJECT, 1
    nop
    member_set              12, 0, 131
    work_set                WK_OBJECT, 2
    nop
    member_set              12, 76, 255
    break                   0

off_0C0C:
    eswitch                 0

off_0C0E:
    evt_end                 0

.proc main_03
    switch                  26, off_0C6A
    case                    0, off_0C22, 0
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_0C22:
    case                    0, off_0C30, 1
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_0C30:
    case                    0, off_0C3E, 2
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_0C3E:
    case                    0, off_0C4C, 3
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_0C4C:
    case                    0, off_0C5A, 4
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_0C5A:
    case                    0, off_0C68, 5
    sce_bgm_control         0, 0, 1, 90, 64
    break                   0

off_0C68:
    eswitch                 0

off_0C6A:
    evt_end                 0

.proc main_04
    message_on              0, 0, 0, 255, 255
    evt_next
    nop
    if                      0, off_0C80
    ck                      11, 31, 0
    aot_on                  0
    endif
    nop

off_0C80:
    evt_end                 0
    db                      0x20, 0x00
