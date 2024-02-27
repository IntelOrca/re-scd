.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10290, 8069, 2300, 1800, -8792, 0, -26442, -992, 5, 6, 7, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22904, -21106, -21090, -23000, -22193, -24040, -24044, -22184, -8893, 0, -12514, 1576, 5, 11, 6, DOR_0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 3296, -23026, 5100, -21180, 6390, -22130, 4136, -24518, 8890, 0, -12464, 512, 5, 12, 6, DOR_0, 37, 0, 0, 0, UNLOCKED, 0
    if                      0, off_27BA
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_27B8
    ck                      FG_COMMON, 130, 1
    set                     FG_COMMON, 154, 1
    endif
    nop

off_27B8:
    endif
    nop

off_27BA:
    if                      0, off_27EC
    ck                      FG_STATUS, F_PLAYER, 1
    if                      0, off_27EA
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_27E8
    ck                      FG_COMMON, 133, 1
    aot_reset               ID_AOT_1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_4, 0, 0, 0, 255, 255
    aot_reset               ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_4, 0, 0, 0, 255, 255
    endif
    nop

off_27E8:
    endif
    nop

off_27EA:
    endif
    nop

off_27EC:
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main
    gosub                   main_02
    gosub                   main_03
    evt_end                 0

.proc aot
    gosub                   main_07
    gosub                   main_04
    evt_end                 0

.proc main_02
    save                    V_05, 255
    sce_em_set              0, ID_EM_0, ENEMY_3F, 0, AI_DEFAULT, 0, SBK_0, 0, 255, -9059, -300, -9005, 1024, 0, 0
    if                      0, off_2872
    ck                      FG_COMMON, 106, 0
    aot_set                 ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, ID_MSG_0, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_5, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, 10, 0, ITEM_MAINFUSE, 0, aot, 0
    cut_replace             1, 4
    cut_replace             2, 5
    if                      0, off_286E
    cmp                     0, V_ROOM, CMP_EQ, 8
    cut_replace             3, 6
    nop
    endif
    nop

off_286E:
    else                    0, off_288C

off_2872:
    set                     FG_PBF0A, 5, 0
    aot_set                 ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, ID_MSG_1, 0, 0, 0, 255, 255
    nop
    nop

off_288C:
    evt_exec                255, I_GOSUB, main_06
    evt_end                 0

.proc main_03
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_04
    if                      0, off_28E4
    ck                      FG_COMMON, 106, 0
    if                      0, off_28E2
    cmp                     0, V_00, CMP_EQ, 5
    if                      0, off_28E0
    cmp                     0, V_USED_ITEM, CMP_EQ, 76
    set                     FG_COMMON, 106, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_28E0:
    endif
    nop

off_28E2:
    endif
    nop

off_28E4:
    evt_end                 0

.proc main_05
    sce_item_lost           ITEM_MAINFUSE
    aot_reset               ID_AOT_5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    copy                    V_04, V_CUT
    nop
    cut_chg                 6
    work_set                WK_PLAYER, 0
    nop
    member_set              M_Y_POS, 15536
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    super_set               0, 130, 129, 0, -700, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    nop_8c                  0, 0, 120, 80, 0, 0, 0
    nop_8a                  0, 40, 0, 10, 0
    sleep                   10, 7
    se_on                   2, 10, 3, 0, 0, 0
    sleep                   10, 3
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_ROUTINE0, 1
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    speed_set               1, 20
    for                     0, off_2958, 20
    add_speed
    evt_next
    next                    0

off_2958:
    sleep                   10, 15
    nop_8b                  240, 15, 0, 0, 0
    sleep                   10, 15
    nop_8c                  0, 240, 0, 10, 0, 0, 0
    sleep                   10, 10
    sce_fade_set            2, 2, 7, 0, 32
    sleep                   10, 10
    sleep                   10, 4
    for                     0, off_298E, 10
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_298E:
    cut_replace             4, 1
    cut_replace             5, 2
    cut_replace             6, 3
    set                     FG_PBF0A, 5, 0
    cut_chg                 3
    nop
    sce_fade_set            2, 2, 7, 0, 252
    sleep                   10, 60
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_SUB, V_TEMP, 3
    copy                    V_04, V_TEMP
    nop
    aot_reset               ID_AOT_6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_1, 0, 0, 0, 255, 255
    work_copy               4, 1, 0
    cut_chg                 0
    work_set                WK_PLAYER, 0
    nop
    member_set              M_Y_POS, 0
    cut_auto                1
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    evt_end                 0

.proc main_06
    evt_next
    nop
    if                      0, off_29FA
    ck                      FG_COMMON, 106, 1
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -9059, -600, -9005
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 1
    endif
    nop

off_29FA:
    evt_end                 0

.proc main_07
    if                      0, off_2A4C
    work_copy               5, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    copy                    V_05, V_CUT
    nop
    switch                  26, off_2A4A
    case                    0, off_2A18, 1

off_2A18:
    case                    0, off_2A1E, 2

off_2A1E:
    case                    0, off_2A24, 3

off_2A24:
    case                    0, off_2A2A, 4

off_2A2A:
    case                    0, off_2A30, 5

off_2A30:
    case                    0, off_2A3E, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_2A3E:
    default                 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 127, 64
    break                   0
    eswitch                 0

off_2A4A:
    endif
    nop

off_2A4C:
    evt_end                 0

.proc main_08
    if                      0, off_2A86
    work_copy               5, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    copy                    V_05, V_CUT
    nop
    switch                  26, off_2A84
    case                    0, off_2A6A, 1

off_2A6A:
    case                    0, off_2A78, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 100, 64
    break                   0

off_2A78:
    default                 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 127, 64
    break                   0
    eswitch                 0

off_2A84:
    endif
    nop

off_2A86:
    evt_end                 0
