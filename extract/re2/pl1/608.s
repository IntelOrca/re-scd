.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10290, 8069, 2300, 1800, -8792, 0, -26442, -992, 5, 6, 7, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22904, -21106, -21090, -23000, -22193, -24040, -24044, -22184, -8893, 0, -12514, 1576, 5, 11, 6, 0, 37, 0, 0, 0, UNLOCKED, 0
    door_aot_set_4p         2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 3296, -23026, 5100, -21180, 6390, -22130, 4136, -24518, 8890, 0, -12464, 512, 5, 12, 6, 0, 37, 0, 0, 0, UNLOCKED, 0
    if                      0, off_27CA
    ck                      1, 1, 0
    if                      0, off_27C8
    ck                      4, 130, 1
    set                     4, 154, 1
    endif
    nop

off_27C8:
    endif
    nop

off_27CA:
    if                      0, off_27FC
    ck                      1, 0, 1
    if                      0, off_27FA
    ck                      1, 1, 1
    if                      0, off_27F8
    ck                      4, 133, 1
    aot_reset               1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    endif
    nop

off_27F8:
    endif
    nop

off_27FA:
    endif
    nop

off_27FC:
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main_00
    gosub                   2
    gosub                   3
    if                      0, off_2844
    ck                      1, 1, 1
    if                      0, off_2842
    ck                      4, 92, 1
    gosub                   9
    endif
    nop

off_2842:
    endif
    nop

off_2844:
    gosub                   18
    evt_end                 0

.proc main_01
    gosub                   7
    gosub                   4
    gosub                   19
    evt_end                 0

.proc main_02
    save                    5, 255
    sce_em_set              0, 0, ENEMY_63, 0, 0, 0, 0, 0, 255, -9059, -300, -9005, 1024, 0, 0
    if                      0, off_28B4
    ck                      4, 106, 0
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, 0, 0, 0, 0, 255, 255
    aot_set                 5, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, 10, 0, 76, 0, 1, 0
    cut_replace             1, 4
    cut_replace             2, 5
    if                      0, off_28B0
    cmp                     0, 25, CMP_EQ, 8
    cut_replace             3, 6
    nop
    endif
    nop

off_28B0:
    else                    0, off_28CE

off_28B4:
    set                     23, 5, 0
    aot_set                 6, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10317, -10364, 2850, 2880, 1, 0, 0, 0, 255, 255
    nop
    nop

off_28CE:
    evt_exec                255, I_GOSUB, main_06
    evt_end                 0

.proc main_03
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0

.proc main_04
    if                      0, off_2926
    ck                      4, 106, 0
    if                      0, off_2924
    cmp                     0, 0, CMP_EQ, 5
    if                      0, off_2922
    cmp                     0, 2, CMP_EQ, 76
    set                     4, 106, 1
    evt_exec                255, I_GOSUB, main_05
    endif
    nop

off_2922:
    endif
    nop

off_2924:
    endif
    nop

off_2926:
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
    for                     0, off_299A, 20
    add_speed
    evt_next
    next                    0

off_299A:
    sleep                   10, 15
    nop_8b                  240, 15, 0, 0, 0
    sleep                   10, 15
    nop_8c                  0, 240, 0, 10, 0, 0, 0
    sleep                   10, 10
    sce_fade_set            2, 2, 7, 0, 32
    sleep                   10, 10
    sleep                   10, 4
    for                     0, off_29D0, 10
    sce_fade_adjust         2, 255, 127
    evt_next
    nop
    next                    0

off_29D0:
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
    if                      0, off_2A3C
    ck                      4, 106, 1
    work_set                WK_OBJECT, 0
    nop
    pos_set                 0, -9059, -600, -9005
    work_set                WK_ENEMY, 0
    nop
    member_set              23, 1, 0
    endif
    nop

off_2A3C:
    evt_end                 0

.proc main_07
    if                      0, off_2A8E
    work_copy               5, 4, 1
    cmp                     0, 26, CMP_NE, 0
    copy                    5, 26
    nop
    switch                  26, off_2A8C
    case                    0, off_2A5A, 1

off_2A5A:
    case                    0, off_2A60, 2

off_2A60:
    case                    0, off_2A66, 3

off_2A66:
    case                    0, off_2A6C, 4

off_2A6C:
    case                    0, off_2A72, 5

off_2A72:
    case                    0, off_2A80, 6
    sce_bgm_control         1, 0, 1, 100, 64
    break                   0

off_2A80:
    default                 0
    sce_bgm_control         1, 0, 1, 127, 64
    break                   0
    eswitch                 0

off_2A8C:
    endif
    nop

off_2A8E:
    evt_end                 0

.proc main_08
    if                      0, off_2AC8
    work_copy               5, 4, 1
    cmp                     0, 26, CMP_NE, 0
    copy                    5, 26
    nop
    switch                  26, off_2AC6
    case                    0, off_2AAC, 1

off_2AAC:
    case                    0, off_2ABA, 2
    sce_bgm_control         1, 0, 1, 100, 64
    break                   0

off_2ABA:
    default                 0
    sce_bgm_control         1, 0, 1, 127, 64
    break                   0
    eswitch                 0

off_2AC6:
    endif
    nop

off_2AC8:
    evt_end                 0

.proc main_09
    aot_set                 11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17406, -15422, 1350, 1080, 255, 0, I_GOSUB, main_11, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -16718, 0, -14982, 16256, -4800, 12352, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14950, -15570, 710, 860, ITEM_MASTERKEY, 1, 29, 2, 161
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -14568, 0, -14982, 0, -576, -1344, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_2BE6
    ck                      4, 133, 0
    aot_set                 10, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -12132, -7453, 5800, 1800, 255, 0, I_GOSUB, main_0A, 0, 0
    sce_em_set              0, 255, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 0, 0, 0, 0, 255, -15770, 0, -15778, 221, 272, 0
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    sce_em_set              0, 1, ENEMY_ANNETTEBIRKIN1, 0, 9, 0, 0, 0, 255, -14243, 900, -15928, 3691, 271, 20
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    calc                    0, OP_OR, 16, 4
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14906, -16632, 1750, 1090, 2, 0, 0, 0, 255, 255
    aot_reset               7, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 0, 0, 0
    else                    0, off_2C60

off_2BE6:
    if                      0, off_2C18
    ck                      34, 29, 0
    sce_em_set              0, 255, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 0, 0, 0, 0, 255, -15770, 0, -15778, 221, 272, 0
    work_set                WK_ENEMY, 255
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    endif
    nop

off_2C18:
    sce_em_set              0, 1, ENEMY_ANNETTEBIRKIN1, 0, 9, 0, 0, 0, 255, -14243, 900, -15928, 3691, 257, 0
    work_set                WK_ENEMY, 1
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 1024
    calc                    0, OP_OR, 16, 4
    member_set2             0, 16
    nop
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14906, -16632, 1750, 1090, 2, 0, 0, 0, 255, 255
    evt_exec                255, I_GOSUB, main_10
    nop
    nop

off_2C60:
    evt_end                 0

.proc main_0A
    aot_reset               10, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    set                     2, 7, 1
    set                     1, 27, 1
    sce_bgm_control         0, 2, 0, 127, 64
    sce_bgm_control         2, 1, 0, 0, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 35, -11373, -9359
    sleep                   10, 5
    plc_neck                2, 0, 1024, 0, 20, 20
    sleep                   10, 40
    cut_chg                 2
    pos_set                 0, -9930, 0, -7329
    dir_set                 0, 0, -3261, 0
    plc_neck                6, 0, 0, 0, 120, 120
    evt_next
    nop
    plc_dest                0, 9, 35, -11373, -9359
    sleep                   10, 5
    plc_neck                2, 0, 1024, 0, 20, 20
    sleep                   10, 80
    work_set                WK_SPLAYER, 0
    cut_chg                 13
    evt_next
    gosub                   11
    gosub                   12
    gosub                   13
    gosub                   14
    gosub                   15
    aot_reset               11, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_11, 0, 0
    aot_reset               7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 2, 0, 0, 0, 255, 255
    cut_chg                 8
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -14568, 0, -14982
    cut_auto                1
    set                     4, 133, 1
    aot_reset               1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    aot_reset               2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 4, 0, 0, 0, 255, 255
    work_set                WK_PLAYER, 0
    plc_ret
    sce_bgmtbl_set          0, 8, 6, 10001, 32768
    set                     2, 7, 0
    set                     1, 27, 0
    evt_end                 0

.proc main_0B
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                4, 1, 0, 0, 40, 0
    sleep                   10, 10
    plc_neck                4, 1, 0, 0, 30, 0
    xa_on                   0, 23
    sleep                   10, 2
    message_on              0, 5, 0, 0, 0
    sleep                   10, 80
    plc_neck                4, 1, 0, 0, 20, 0
    sleep                   10, 10
    plc_neck                4, 1, 0, 0, 20, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_0C
    xa_on                   0, 25
    sleep                   10, 2
    message_on              0, 6, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, 256, 384, 30, 30
    work_set                WK_ENEMY, 1
    nop
    plc_neck                2, 0, -512, 0, 30, 30
    plc_motion              0, 16, 16
    sleep                   10, 30
    plc_stop
    plc_motion              0, 16, 144
    plc_cnt                 120
    nop
    sleep                   10, 30
    plc_motion              0, 15, 20
    sleep                   10, 100
    plc_motion              0, 16, 16
    sleep                   10, 40
    plc_stop
    nop
    sleep                   10, 80
    plc_motion              0, 16, 0
    wsleep
    wsleeping
    evt_end                 0

.proc main_0D
    cut_chg                 12
    evt_next
    nop
    xa_on                   0, 26
    sleep                   10, 2
    message_on              0, 7, 0, 0, 0
    work_set                WK_SPLAYER, 0
    nop
    plc_neck                2, 0, -512, 0, 30, 0
    sleep                   10, 20
    plc_neck                2, 0, 512, 0, 30, 0
    sleep                   10, 20
    plc_neck                2, 0, -256, 0, 20, 0
    sleep                   10, 20
    plc_neck                2, 0, 256, 0, 20, 0
    wsleep
    wsleeping
    sleep                   10, 30
    evt_end                 0

.proc main_0E
    sleep                   10, 20
    cut_chg                 8
    evt_next
    work_set                WK_PLAYER, 0
    pos_set                 0, -13151, 0, -12539
    dir_set                 0, 0, -2656, 0
    evt_next
    nop
    plc_neck                5, 2, 0, 0, 40, 40
    plc_dest                0, 4, 35, -14862, -14903
    gosub                   20
    cut_chg                 12
    evt_next
    plc_motion              0, 15, 0
    nop
    plc_neck                2, 0, 0, -128, 40, 40
    sleep                   10, 30
    xa_on                   0, 27
    sleep                   10, 2
    message_on              0, 8, 0, 0, 0
    plc_motion              0, 16, 0
    sleep                   10, 10
    plc_neck                2, 0, 0, 256, 32, 32
    sleep                   10, 15
    plc_neck                2, 0, 0, 0, 32, 32
    sleep                   10, 15
    wsleep
    wsleeping
    evt_end                 0

.proc main_0F
    sleep                   10, 70
    work_set                WK_PLAYER, 0
    nop
    plc_neck                3, 1, 0, 0, 32, 32
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 144
    plc_cnt                 0
    nop
    sleep                   10, 40
    evt_end                 0

.proc main_10
    set                     1, 25, 1
    evt_next
    work_set                WK_ENEMY, 1
    plc_motion              0, 16, 192
    plc_cnt                 0
    evt_next
    plc_stop
    set                     1, 25, 0
    evt_end                 0

.proc main_11
    set                     2, 7, 1
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 0
    nop
    sleep                   10, 30
    message_on              0, 3, 0, 255, 255
    evt_next
    plc_motion              1, 6, 128
    nop
    sleep                   10, 30
    plc_ret
    set                     2, 7, 0
    nop
    evt_end                 0

.proc main_12
    if                      0, off_2F30
    ck                      1, 3, 1
    sce_em_set              0, 255, ENEMY_SHERRYWITHCLAIRESJACKET, 0, 4, 0, 0, 0, 255, -7908, 0, 7511, -2949, 0, 0
    endif
    nop

off_2F30:
    evt_end                 0

.proc main_13
    if                      0, off_2F5E
    ck                      4, 176, 0
    if                      0, off_2F5C
    ck                      34, 29, 1
    set                     4, 176, 1
    work_set                WK_ENEMY, 255
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_AND, 16, -5
    member_set2             0, 16
    nop
    unk                     137
    splc_ret
    endif
    nop

off_2F5C:
    endif
    nop

off_2F5E:
    evt_end                 0

.proc main_14
    do                      0, off_2F6C
    evt_next
    nop
    edwhile                 off_2F6C
    ck                      5, 35, 0

off_2F6C:
    evt_end                 0
    db                      0x08, 0x00
