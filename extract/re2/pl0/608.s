.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10290, 8069, 2300, 1800, -8792, 0, -26442, -992, 5, 6, 7, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22904, -21106, -21090, -23000, -22193, -24040, -24044, -22184, -8893, 0, -12514, 1576, 5, 11, 6, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 3296, -23026, 5100, -21180, 6390, -22130, 4136, -24518, 8890, 0, -12464, 512, 5, 12, 6, 0, 37, 0, 0, 0, UNLOCKED, 0
    if                      0, off_27BA
    ck                      1, 1, 0
    if                      0, off_27B8
    ck                      4, 130, 1
    set                     4, 154, 1
    endif
    nop

off_27B8:
    endif
    nop

off_27BA:
    if                      0, off_27EC
    ck                      1, 0, 1
    if                      0, off_27EA
    ck                      1, 1, 1
    if                      0, off_27E8
    ck                      4, 133, 1
    aot_reset               1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
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
.proc main_00
    gosub                   2
    gosub                   3
    evt_end                 0

.proc main_01
    gosub                   7
    gosub                   4
    evt_end                 0

.proc main_02
    save                    5, 255
    sce_em_set              0, 0, ENEMY_63, 0, 0, 0, 0, 0, 255, -9059, -300, -9005, 1024, 0, 0
    if                      0, off_2872
    ck                      4, 106, 0
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, 0, 0, 0, 0, 255, 255
    aot_set                 5, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, 10, 0, 76, 0, 1, 0
    cut_replace             1, 4
    cut_replace             2, 5
    if                      0, off_286E
    cmp                     0, 25, CMP_EQ, 8
    cut_replace             3, 6
    nop
    endif
    nop

off_286E:
    else                    0, off_288C

off_2872:
    set                     23, 5, 0
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, 1, 0, 0, 0, 255, 255
    nop
    nop

off_288C:
    evt_exec                255, I_GOSUB, main_06
    evt_end                 0

.proc main_03
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_04
    if                      0, off_28E4
    ck                      4, 106, 0
    if                      0, off_28E2
    cmp                     0, 0, CMP_EQ, 5
    if                      0, off_28E0
    cmp                     0, 2, CMP_EQ, 76
    set                     4, 106, 1
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
    sce_item_lost           76
    aot_reset               5, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    copy                    4, 26
    nop
    cut_chg                 6
    work_set                WK_PLAYER, 0
    nop
    member_set              12, 176, 60
    work_set                WK_OBJECT, 0
    nop
    super_set               0, 130, 129, 0, -700, 0, 0, 0, 0
    set                     2, 7, 1
    set                     1, 27, 1
    nop_8c                  0, 0, 120, 80, 0, 0, 0
    nop_8a                  0, 40, 0, 10, 0
    sleep                   10, 7
    se_on                   2, 10, 3, 0, 0, 0
    sleep                   10, 3
    work_set                WK_ENEMY, 0
    nop
    member_set              2, 1, 0
    work_set                WK_OBJECT, 0
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
    set                     23, 5, 0
    cut_chg                 3
    nop
    sce_fade_set            2, 2, 7, 0, 252
    sleep                   10, 60
    copy                    16, 4
    nop
    calc                    0, OP_SUB, 16, 3
    copy                    4, 16
    nop
    aot_reset               6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 0, 0, 255, 255
    work_copy               4, 1, 0
    cut_chg                 0
    work_set                WK_PLAYER, 0
    nop
    member_set              12, 0, 0
    cut_auto                1
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_06
    evt_next
    nop
    if                      0, off_29FA
    ck                      4, 106, 1
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -9059, -600, -9005
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    endif
    nop

off_29FA:
    evt_end                 0

.proc main_07
    if                      0, off_2A4C
    work_copy               5, 4, 1
    cmp                     0, 26, CMP_NE, 0
    copy                    5, 26
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
    sce_bgm_control         1, 0, 1, 100, 64
    break                   0

off_2A3E:
    default                 0
    sce_bgm_control         1, 0, 1, 127, 64
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
    cmp                     0, 26, CMP_NE, 0
    copy                    5, 26
    nop
    switch                  26, off_2A84
    case                    0, off_2A6A, 1

off_2A6A:
    case                    0, off_2A78, 2
    sce_bgm_control         1, 0, 1, 100, 64
    break                   0

off_2A78:
    default                 0
    sce_bgm_control         1, 0, 1, 127, 64
    break                   0
    eswitch                 0

off_2A84:
    endif
    nop

off_2A86:
    evt_end                 0
