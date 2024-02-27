.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27080, -27588, 2200, 1200, -16800, 0, 2700, 1024, 1, 4, 5, 0, 9, 0, 0, 0, UNLOCKED, 0
    if                      0, off_175E
    ck                      FG_STATUS, F_BONUS, 1
    aot_set                 ID_AOT_1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18980, -12938, 3600, 1800, ID_MSG_7, 0, 0, 0, 255, 255
    else                    0, off_1780

off_175E:
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18980, -12938, 3600, 1800, -22150, 0, -8680, 1024, 1, 6, 0, 0, 17, 2, 0, 0, UNLOCKED, 0
    nop
    nop

off_1780:
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2370, -19038, 1800, 2400, -25640, 0, -16590, 0, 1, 7, 1, 0, 0, 0, 0, 0, UNLOCKED, 0
    evt_end                 0
    db                      0x9C, 0x1D

.main
.proc main
    if                      0, off_1810
    ck                      FG_STATUS, F_BONUS, 1
    sce_em_set              0, ID_EM_0, ENEMY_VINES, 0, AI_20, 0, SBK_0, 0, 255, -27150, -2180, -12050, 36, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_IVY, 1, AI_DEFAULT, 0, SBK_19, 0, 93, -7366, 0, -15394, 2524, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_IVY, 1, AI_DEFAULT, 0, SBK_19, 0, 94, -19289, 0, -8489, 2024, 0, 0
    evt_end                 0
    endif
    nop

off_1810:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -17300, -1800, -7000, 1024, 192, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 49152, 0, 10, 16, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -17300, -3400, -7000, 1024, -256, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 49664, 0, 10, 16, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -19650, -3000, -7000, 1024, -192, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 50176, 0, 10, 16, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 16, -19650, -2200, -7000, 1024, -256, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_7, 0, 0, 0, 0, 50688, 0, 10, 16, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -27868, -13500, 4000, 3200, 255, 0, I_GOSUB, main_03, 0, 0
    aot_set                 ID_AOT_4, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -14500, -10100, 3300, 3400, 255, 0, I_GOSUB, main_04, 0, 0
    if                      0, off_1B04
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_ARMS, 16, AI_DEFAULT, 0, SBK_17, 0, 255, -27150, -2580, -12350, 0, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_ARMS, 1, AI_DEFAULT, 0, SBK_17, 0, 255, -27200, -2430, -13820, 0, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_ARMS, 0, AI_DEFAULT, 0, SBK_17, 0, 255, -27150, -2180, -12050, 0, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_ARMS, 1, AI_DEFAULT, 0, SBK_17, 0, 255, -27200, -1930, -13320, 0, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_ARMS, 0, AI_DEFAULT, 0, SBK_17, 0, 255, -27130, -2200, -14000, 0, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_ARMS, 16, AI_DEFAULT, 0, SBK_17, 0, 255, -12100, -2480, -7000, 1024, 0, 0
    sce_em_set              0, ID_EM_6, ENEMY_ZOMBIE_ARMS, 1, AI_DEFAULT, 0, SBK_17, 0, 255, -12500, -2000, -7000, 1024, 0, 0
    sce_em_set              0, ID_EM_7, ENEMY_ZOMBIE_ARMS, 0, AI_DEFAULT, 0, SBK_17, 0, 255, -12440, -2700, -7000, 1024, 0, 0
    sce_em_set              0, ID_EM_8, ENEMY_ZOMBIE_ARMS, 1, AI_DEFAULT, 0, SBK_17, 0, 255, -12230, -2540, -7000, 1024, 0, 0
    sce_em_set              0, ID_EM_9, ENEMY_ZOMBIE_ARMS, 0, AI_DEFAULT, 0, SBK_17, 0, 255, -12450, -2160, -7000, 1024, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_4
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_5
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_6
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_7
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_8
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_9
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    else                    0, off_1C0A

off_1B04:
    set                     FG_COMMON, 48, 0
    if                      0, off_1B9C
    ck                      FG_COMMON, 153, 1
    ck                      FG_ZAPPING, 10, 0
    if                      0, off_1B78
    ck                      FG_ITEM, 119, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 0, SBK_42, 0, 190, -18892, 0, -9122, 3416, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 0, SBK_43, 0, 207, -9172, 0, -10915, 3936, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 0, SBK_42, 0, 192, -25495, 0, -12684, 1023, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 0, SBK_43, 0, 193, -6562, 0, -15261, 1264, 0, 0
    else                    0, off_1B90

off_1B78:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 0, SBK_5, 0, 194, -18892, 0, -9122, 3416, 0, 0
    nop
    nop

off_1B90:
    set                     FG_COMMON, 41, 1
    evt_exec                255, I_GOSUB, main_0C
    else                    0, off_1C08

off_1B9C:
    if                      0, off_1BD4
    ck                      FG_COMMON, 41, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_COP, 10, AI_40, 0, SBK_5, 0, 69, -17730, 0, -6300, 924, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_COP, 10, AI_40, 0, SBK_5, 0, 70, -19990, 0, -6300, 1024, 0, 0
    else                    0, off_1C06

off_1BD4:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 0, SBK_5, 0, 69, -19130, 0, -8220, 1592, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_COP, 0, AI_DEFAULT, 0, SBK_5, 0, 70, -14460, 0, -8700, 3200, 0, 0
    evt_exec                255, I_GOSUB, main_0C
    nop
    nop

off_1C06:
    nop
    nop

off_1C08:
    nop
    nop

off_1C0A:
    if                      0, off_1C3E
    ck                      FG_COMMON, 48, 1
    if                      0, off_1C26
    ck                      FG_COMMON, 46, 1
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1C26:
    if                      0, off_1C3A
    ck                      FG_COMMON, 47, 1
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1C3A:
    else                    0, off_1C54

off_1C3E:
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1C54:
    aot_set                 ID_AOT_5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27500, -24300, 1800, 1800, ID_MSG_0, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9700, -7700, 1800, 1800, ID_MSG_3, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2420, -16400, 1800, 1800, ID_MSG_4, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5600, -14600, 1800, 1800, ID_MSG_5, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11400, -18400, 1800, 1800, ID_MSG_6, 0, 0, 0, 255, 255
    evt_end                 0

.proc aot
    if                      0, off_1CE4
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_1CE0
    ck                      FG_COMMON, 41, 0
    cmp                     0, V_LAST_RDT, CMP_EQ, 516
    cmp                     0, V_CUT, CMP_EQ, 3
    evt_exec                255, I_GOSUB, main_05
    set                     FG_COMMON, 41, 1
    endif
    nop

off_1CE0:
    else                    0, off_1D36

off_1CE4:
    if                      0, off_1D0C
    cmp                     0, V_CUT, CMP_EQ, 9
    ck                      FG_ROOM, 20, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_1D0A
    member_cmp              0, 2, 0, 5, 0
    set                     FG_ROOM, 20, 1
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_1D0A:
    endif
    nop

off_1D0C:
    if                      0, off_1D34
    cmp                     0, V_CUT, CMP_EQ, 10
    ck                      FG_ROOM, 21, 0
    work_set                WK_PLAYER, 0
    nop
    if                      0, off_1D32
    member_cmp              0, 2, 0, 5, 0
    set                     FG_ROOM, 21, 1
    evt_exec                255, I_GOSUB, main_0E
    endif
    nop

off_1D32:
    endif
    nop

off_1D34:
    nop
    nop

off_1D36:
    evt_end                 0

.proc main_02
    message_on              0, ID_MSG_0, 0, 255, 255
    evt_end                 0

.proc main_03
    cut_chg                 9
    nop_8a                  0, 10, 0, 0, 0
    nop_8b                  180, 2, 0, 0, 0
    nop_8b                  250, 6, 0, 2, 0
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    set                     FG_COMMON, 46, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_4
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    sleep                   10, 1
    se_on                   2, 10, 0, 10267, -1800, -13158
    cut_auto                1
    evt_end                 0

.proc main_04
    cut_chg                 10
    nop_8a                  0, 10, 0, 0, 0
    nop_8b                  180, 2, 0, 0, 0
    nop_8b                  250, 6, 0, 2, 0
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    set                     FG_COMMON, 47, 1
    work_set                WK_ENEMY, ID_EM_5
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_6
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_7
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_8
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_9
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    sleep                   10, 1
    se_on                   2, 10, 0, 10267, -1800, -13158
    cut_auto                1
    evt_end                 0

.proc main_05
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    se_on                   2, 11, 0, 10267, -1800, -13158
    evt_exec                255, I_GOSUB, main_06
    evt_exec                255, I_GOSUB, main_07
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 1
    sleep                   10, 10
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    se_on                   2, 11, 0, 10267, -1800, -13158
    evt_exec                255, I_GOSUB, main_09
    evt_exec                255, I_GOSUB, main_0A
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_set              M_SCE_FREE0, 1
    evt_end                 0

.proc main_06
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               2, -110
    speed_set               1, -20
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    for                     0, off_1EE6, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1EE6:
    speed_set               2, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    while                   6, off_1F06
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1F06:
    member_set              M_Y_POS, 200
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_1F32
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1F32:
    member_set              M_X_DIR, -2048
    evt_end                 0

.proc main_07
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    super_reset             0, 1024, -256, 1024
    evt_exec                255, I_GOSUB, main_08
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    speed_set               2, -110
    speed_set               1, -20
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    for                     0, off_1F6C, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1F6C:
    speed_set               2, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    while                   6, off_1F8C
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1F8C:
    member_set              M_Y_POS, 200
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_1FB8
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_1FB8:
    member_set              M_X_DIR, -2048
    evt_end                 0

.proc main_08
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    speed_set               2, -100
    speed_set               1, -10
    speed_set               0, -10
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    speed_set               4, 0
    speed_set               10, -10
    for                     0, off_1FEE, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1FEE:
    speed_set               2, -50
    speed_set               0, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    speed_set               4, 0
    speed_set               10, -21
    while                   6, off_201A
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_201A:
    member_set              M_Y_POS, 200
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_2046
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_2046:
    member_set              M_X_DIR, -2048
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    super_reset             0, 1024, -192, 1024
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    speed_set               2, -110
    speed_set               1, -20
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    for                     0, off_207C, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_207C:
    speed_set               2, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    while                   6, off_209C
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_209C:
    member_set              M_Y_POS, 200
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_20C8
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_20C8:
    member_set              M_X_DIR, -2048
    evt_end                 0

.proc main_0A
    work_set                WK_OBJECT, ID_OBJ_7
    nop
    super_reset             0, 1024, -256, 1024
    evt_exec                255, I_GOSUB, main_0B
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    speed_set               2, -110
    speed_set               1, -20
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    for                     0, off_2102, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2102:
    speed_set               2, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    while                   6, off_2122
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_2122:
    member_set              M_Y_POS, 200
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_214E
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_214E:
    member_set              M_X_DIR, -2048
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, ID_OBJ_7
    nop
    speed_set               2, -100
    speed_set               1, -10
    speed_set               0, -10
    speed_set               7, 10
    speed_set               3, 0
    speed_set               9, -10
    speed_set               4, 0
    speed_set               10, -10
    for                     0, off_2184, 16
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_2184:
    speed_set               2, -50
    speed_set               0, -50
    speed_set               7, 20
    speed_set               3, 0
    speed_set               9, -21
    speed_set               4, 0
    speed_set               10, -21
    while                   6, off_21B0
    member_cmp              0, 12, 3, 0, 0
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_21B0:
    member_set              M_Y_POS, 200
    sleep                   10, 1
    speed_set               2, 0
    speed_set               1, 0
    speed_set               7, 0
    speed_set               3, 0
    speed_set               9, -20
    while                   6, off_21DC
    member_cmp              0, 14, 3, 0, 248
    evt_next
    add_speed
    add_aspeed
    nop
    ewhile                  0

off_21DC:
    member_set              M_X_DIR, -2048
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_POS, 200
    member_set              M_Z_POS, -9060
    member_set              M_X_DIR, -2048
    work_set                WK_OBJECT, ID_OBJ_3
    nop
    super_reset             0, 1024, -256, 1024
    member_set              M_X_POS, -18835
    member_set              M_Y_POS, 200
    member_set              M_Z_POS, -9050
    member_set              M_X_DIR, -2048
    member_set              M_Y_DIR, -2212
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    member_set              M_Y_POS, 200
    member_set              M_Z_POS, -9310
    member_set              M_X_DIR, -2048
    work_set                WK_OBJECT, ID_OBJ_5
    nop
    super_reset             0, 1024, -192, 1024
    member_set              M_X_POS, -20607
    member_set              M_Y_POS, -2710
    member_set              M_Z_POS, -7000
    member_set              M_X_DIR, 1024
    member_set              M_Y_DIR, -192
    member_set              M_Z_DIR, 1024
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    member_set              M_Y_POS, 200
    member_set              M_Z_POS, -9260
    member_set              M_X_DIR, -2048
    work_set                WK_OBJECT, ID_OBJ_7
    nop
    super_reset             0, 1024, -256, 1024
    member_set              M_X_POS, -20984
    member_set              M_Y_POS, 200
    member_set              M_Z_POS, -8850
    member_set              M_X_DIR, -2048
    member_set              M_Y_DIR, -1666
    work_set                WK_OBJECT, ID_OBJ_6
    nop
    member_set              M_Y_POS, 200
    member_set              M_Z_POS, -9110
    member_set              M_X_DIR, -2048
    sleep                   10, 2
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_set              M_Y_POS, 1000
    evt_end                 0

.proc main_0D
    sleep                   10, 10
    cut_chg                 2
    cut_auto                1
    evt_end                 0

.proc main_0E
    sleep                   10, 10
    cut_chg                 5
    cut_auto                1
    evt_end                 0
