.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, -6611, 0, -3724, -2080, 1, 26, 3, 0, 22, 4, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9153, 5181, 3200, 1800, -16806, 0, -17551, -1017, 2, 11, 0, 0, 14, 4, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    obj_model_set           ID_OBJ_0, 0, 130, 4, 7, 0, 0, 10, 26, -17000, -180, -18000, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 130, 4, 7, 0, 0, 10, 26, -17200, -180, -16200, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 130, 4, 7, 0, 0, 10, 26, -6000, -180, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_2, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -20592, -20566, 18000, 29370, 76, 255, 0, 0, 0, 0
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9853, -17919, 1800, 1800, 255, 0, I_GOSUB, main_04, 0, 0
    if                      0, off_0B08
    ck                      FG_STATUS, F_BONUS, 0
    sce_em_set              0, ID_EM_0, ENEMY_SPIDER, 9, AI_DEFAULT, 0, SBK_16, 0, 106, -14472, -1800, -13055, 1041, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_SPIDER, 0, AI_DEFAULT, 0, SBK_16, 0, 145, -11485, 0, 4025, 2048, 0, 0
    else                    0, off_0B36

off_0B08:
    sce_em_set              0, ID_EM_0, ENEMY_SPIDER, 0, AI_DEFAULT, 0, SBK_16, 0, 88, -9303, 0, -16855, 2048, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_SPIDER, 0, AI_DEFAULT, 0, SBK_16, 0, 89, -15785, 0, -7775, 3064, 0, 0
    nop
    nop

off_0B36:
    if                      0, off_0B54
    cmp                     0, V_CUT, CMP_EQ, 0
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Y_POS, -32000
    else                    0, off_0B66

off_0B54:
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -32000
    nop
    nop

off_0B66:
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    evt_end                 0

.proc aot
    gosub                   main_02
    gosub                   main_03
    evt_end                 0

.proc main_02
    switch                  26, off_0C0E
    case                    0, off_0B98, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -180
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Y_POS, -32000
    break                   0

off_0B98:
    case                    0, off_0BBC, 1
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -180
    member_set              M_Z_POS, -17800
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Y_POS, -32000
    break                   0

off_0BBC:
    case                    0, off_0BC2, 2

off_0BC2:
    case                    0, off_0BE6, 5
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -180
    member_set              M_Z_POS, -16200
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Y_POS, -32000
    break                   0

off_0BE6:
    case                    0, off_0BEC, 3

off_0BEC:
    case                    0, off_0C0C, 4
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, -32000
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Y_POS, -180
    break                   0

off_0C0C:
    eswitch                 0

off_0C0E:
    evt_end                 0

.proc main_03
    switch                  26, off_0C6A
    case                    0, off_0C22, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_0C22:
    case                    0, off_0C30, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_0C30:
    case                    0, off_0C3E, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_0C3E:
    case                    0, off_0C4C, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_0C4C:
    case                    0, off_0C5A, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_0C5A:
    case                    0, off_0C68, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 90, 64
    break                   0

off_0C68:
    eswitch                 0

off_0C6A:
    evt_end                 0

.proc main_04
    message_on              0, ID_MSG_0, 0, 255, 255
    evt_next
    nop
    if                      0, off_0C80
    ck                      FG_MESSAGE, F_QUESTION, 0
    aot_on                  ID_AOT_0
    endif
    nop

off_0C80:
    evt_end                 0
    db                      0x20, 0x00
