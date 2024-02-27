.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -28170, 21619, 3800, 990, -23360, 0, -23967, -960, 0, 1, 2, 0, 2, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26707, 14079, 1140, 2300, -9212, 0, 2520, 1368, 0, 24, 11, 0, 10, 1, 0, 0, UNLOCKED, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 0, -13825, -1650, 15900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 70, AI_DEFAULT, 0, SBK_8, 2, 51, -19176, 0, 15573, 40, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 70, AI_DEFAULT, 0, SBK_7, 1, 52, -17121, 0, 14475, 4024, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 70, AI_INACTIVE, 0, SBK_7, 0, 54, 20000, 20000, 20000, 4056, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 64, AI_INACTIVE, 0, SBK_7, 0, 55, 20000, 20000, 20000, 4024, 0, 0
    evt_end                 0
    db                      0xED, 0x47

.main
.proc main
    evt_exec                255, I_GOSUB, main_0A
    evt_exec                255, I_GOSUB, main_0B
    if                      0, off_191C
    ck                      FG_COMMON, 27, 0
    aot_reset               ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    aot_set                 ID_AOT_6, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -22469, 17635, 3200, 6000, 255, 0, I_GOSUB, main_02, 0, 0
    endif
    nop

off_191C:
    gosub                   main_04
    gosub                   main_13
    evt_exec                255, I_GOSUB, main_11
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 192, 164, 0, 0, 97, 162
    set                     FG_COMMON, 27, 1
    set                     FG_STATUS, 27, 1
    set                     FG_STOP, 7, 1
    sleep                   10, 30
    se_on                   2, 289, 0, -23895, -1000, 20658
    evt_exec                255, I_GOSUB, main_03
    sleep                   10, 10
    xa_vol                  100
    xa_on                   0, 11
    sleep                   10, 130
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_03
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, 0, -128, 80, 80
    sleep                   10, 20
    plc_neck                1, -24615, -2000, 23994, 80, 80
    sleep                   10, 80
    plc_neck                0, 0, 0, 0, 30, 30
    sleep                   10, 60
    plc_ret
    nop
    evt_end                 0

.proc main_04
    if                      0, off_1A0A
    ck                      FG_COMMON, 135, 0
    aot_set                 ID_AOT_4, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -15684, 15500, 2400, 2300, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_5, SCE_NORMAL, SAT_EM | SAT_UNDER, 0, 0, -15684, 9800, 2400, 4000, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_2, SCE_FLAG_CHG, SAT_PL | SAT_UNDER, 0, 0, -15000, -4000, 7000, 3000, 5, 0, ITEM_CUSTOMSHOTGUN, 0, aot, 0
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -14508, 3209, 5100, 2700, 255, 0, I_GOSUB, main_06, 0, 0
    sca_id_set              0, 0, 244
    else                    0, off_1A1C

off_1A0A:
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_DIR, 2048
    sca_id_set              0, 0, 0
    evt_exec                255, I_GOSUB, main_12
    nop
    nop

off_1A1C:
    evt_end                 0

.proc main_05
    if                      0, off_1A34
    ck                      FG_ROOM, 8, 1
    ck                      FG_COMMON, 135, 0
    set                     FG_COMMON, 135, 1
    evt_exec                255, I_GOSUB, main_06
    endif
    nop

off_1A34:
    evt_end                 0

.proc main_06
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    while                   4, off_1A80
    ck                      FG_ROOM, 10, 0
    evt_next
    nop
    if                      0, off_1A64
    cmp                     0, V_CUT, CMP_EQ, 4
    if                      0, off_1A62
    ck                      FG_ROOM, 4, 0
    set                     FG_ROOM, 10, 1
    endif
    nop

off_1A62:
    endif
    nop

off_1A64:
    if                      0, off_1A7E
    cmp                     0, V_CUT, CMP_EQ, 5
    if                      0, off_1A7C
    ck                      FG_ROOM, 4, 0
    set                     FG_ROOM, 10, 1
    endif
    nop

off_1A7C:
    endif
    nop

off_1A7E:
    ewhile                  0

off_1A80:
    aot_reset               ID_AOT_4, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     FG_COMMON, 135, 1
    set                     FG_STATUS, 27, 1
    set                     FG_STOP, 7, 1
    cut_chg                 2
    evt_exec                255, I_GOSUB, main_07
    evt_exec                255, I_GOSUB, main_08
    sleep                   10, 30
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    cut_chg                 4
    cut_auto                1
    evt_end                 0

.proc main_07
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_DIR, 0
    speed_set               4, -80
    speed_set               10, -10
    nop_8a                  0, 8, 0, 0, 0
    nop_8b                  180, 1, 0, 0, 0
    nop_8b                  250, 5, 0, 1, 0
    for                     0, off_1AE8, 3
    add_speed
    add_aspeed
    next                    0

off_1AE8:
    evt_next
    nop
    se_on                   2, 266, 4, 0, 0, 0
    for                     0, off_1B02, 4
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1B02:
    for                     0, off_1B0E, 7
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1B0E:
    member_set              M_Y_DIR, 2048
    evt_next
    nop
    speed_set               4, 60
    speed_set               10, -20
    for                     0, off_1B28, 6
    add_speed
    add_aspeed
    evt_next
    nop
    next                    0

off_1B28:
    evt_end                 0

.proc main_08
    sca_id_set              0, 0, 0
    work_set                WK_ENEMY, ID_EM_2
    nop
    pos_set                 0, -13799, 0, 15091
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_SUB, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_3
    nop
    pos_set                 0, -23121, 0, 14906
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_SUB, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    evt_end                 0

.proc main_09
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_ROUTINE0, 1
    member_set              M_ROUTINE1, 13
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    evt_next
    nop
    member_set              M_ROUTINE1, 2
    member_set              M_ROUTINE2, 0
    evt_end                 0

.proc main_0A

off_1B84:
    if                      0, off_1C18
    cmp                     0, V_CUT, CMP_EQ, 2
    if                      0, off_1BD4
    ck                      FG_ROOM, 4, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_1BD2
    ck                      FG_ENEMY, 51, 0
    if                      0, off_1BD0
    member_cmp              0, 2, 5, 6, 0
    if                      0, off_1BCE
    member_cmp              0, 9, 0, 4, 0
    if                      0, off_1BCC
    cmp                     0, V_RNG, CMP_GE, 20480
    set                     FG_ROOM, 4, 1
    evt_exec                255, I_GOSUB, main_0C
    sce_rnd
    nop
    endif
    nop

off_1BCC:
    endif
    nop

off_1BCE:
    endif
    nop

off_1BD0:
    endif
    nop

off_1BD2:
    endif
    nop

off_1BD4:
    if                      0, off_1C16
    ck                      FG_ROOM, 5, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    if                      0, off_1C14
    ck                      FG_ENEMY, 52, 0
    if                      0, off_1C12
    member_cmp              0, 2, 5, 6, 0
    if                      0, off_1C10
    member_cmp              0, 9, 0, 5, 0
    if                      0, off_1C0E
    cmp                     0, V_RNG, CMP_GE, 28672
    evt_exec                255, I_GOSUB, main_0D
    sce_rnd
    nop
    endif
    nop

off_1C0E:
    endif
    nop

off_1C10:
    endif
    nop

off_1C12:
    endif
    nop

off_1C14:
    endif
    nop

off_1C16:
    endif
    nop

off_1C18:
    sleep                   10, 2
    goto                    255, 255, 0, off_1B84
    evt_end                 0

.proc main_0B

off_1C24:
    if                      0, off_1C80
    ck                      FG_ROOM, 4, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_1C62
    member_cmp              0, 24, 6, 0, 128
    se_on                   2, 288, 3, 0, 0, 0
    if                      0, off_1C58
    ck                      FG_ROOM, 7, 0
    set                     FG_ROOM, 7, 1
    gosub                   main_0F
    else                    0, off_1C60

off_1C58:
    set                     FG_ROOM, 7, 0
    gosub                   main_10
    nop
    nop

off_1C60:
    endif
    nop

off_1C62:
    work_set                WK_ENEMY, ID_EM_0
    nop
    if                      0, off_1C74
    member_cmp              0, 24, 6, 0, 64
    else                    0, off_1C7A

off_1C74:
    set                     FG_ROOM, 4, 0
    nop
    nop

off_1C7A:
    member_set              M_SCE_FREE1, 0
    endif
    nop

off_1C80:
    if                      0, off_1CBE
    ck                      FG_ROOM, 5, 1
    work_set                WK_ENEMY, ID_EM_1
    nop
    if                      0, off_1CA4
    member_cmp              0, 24, 6, 0, 128
    se_on                   2, 288, 259, 0, 0, 0
    endif
    nop

off_1CA4:
    if                      0, off_1CB2
    member_cmp              0, 24, 6, 0, 64
    else                    0, off_1CB8

off_1CB2:
    set                     FG_ROOM, 5, 0
    nop
    nop

off_1CB8:
    member_set              M_SCE_FREE1, 0
    endif
    nop

off_1CBE:
    evt_next
    nop
    goto                    255, 255, 0, off_1C24
    evt_end                 0

.proc main_0C
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, -32768
    sleep                   10, 1
    member_copy             V_TEMP, M_SCE_FREE0
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_SCE_FREE0, V_TEMP
    nop
    evt_end                 0

.proc main_0D
    work_set                WK_ENEMY, ID_EM_1
    set                     FG_ROOM, 5, 1
    nop
    member_set              M_SCE_FREE0, 16384
    sleep                   10, 1
    member_copy             V_TEMP, M_SCE_FREE0
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_SCE_FREE0, V_TEMP
    nop
    evt_end                 0

.proc main_0E
    evt_end                 0

.proc main_0F
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_DIR, -30
    evt_next
    nop
    member_set              M_Y_DIR, -35
    evt_next
    nop
    member_set              M_Y_DIR, -30
    evt_next
    nop
    evt_end                 0

.proc main_10
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_set              M_Y_DIR, 0
    evt_next
    nop
    member_set              M_Y_DIR, 5
    evt_next
    nop
    member_set              M_Y_DIR, 0
    evt_next
    nop
    evt_end                 0

.proc main_11
    evt_next

off_1D37:
    nop
    switch                  26, off_1E0E
    case                    0, off_1D56, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_1D56:
    case                    0, off_1D70, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_1D70:
    case                    0, off_1D8A, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_1D8A:
    case                    0, off_1DA4, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_1DA4:
    case                    0, off_1DBE, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 71, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_1DBE:
    case                    0, off_1DD8, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 71, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 61, 65
    break                   0

off_1DD8:
    case                    0, off_1DF2, 6
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_1DF2:
    case                    0, off_1E0C, 7
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 61, 65
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 51, 65
    break                   0

off_1E0C:
    eswitch                 0

off_1E0E:
    do                      0, off_1E1C
    sleep                   10, 1
    edwhile                 off_1E1C
    ck                      FG_STATUS, 11, 0

off_1E1C:
    goto                    255, 255, 0, off_1D37
    evt_end                 0

.proc main_12
    evt_next
    nop
    if                      0, off_1E4A
    ck                      FG_ENEMY, 54, 0
    work_set                WK_ENEMY, ID_EM_2
    nop
    pos_set                 0, -23121, 0, 14906
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_SUB, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_1E4A:
    if                      0, off_1E6E
    ck                      FG_ENEMY, 55, 0
    work_set                WK_ENEMY, ID_EM_3
    nop
    pos_set                 0, -17708, 0, 14058
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_SUB, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    endif
    nop

off_1E6E:
    evt_end                 0

.proc main_13
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -11878, -900, -5037, 0, -2304, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1EB8
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12828, -5937, 2900, 2700, ITEM_HANDGUNAMMO, 30, 154, ID_OBJ_1, IF_DEFAULT
    else                    0, off_1ED0

off_1EB8:
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12828, -5937, 2900, 2700, ITEM_HANDGUNAMMO, 15, 154, ID_OBJ_1, IF_DEFAULT
    nop
    nop

off_1ED0:
    evt_end                 0
    db                      0x28, 0x00
