.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -27872, -21739, 1400, 2200, -8670, -1800, -25832, 2048, 3, 13, 4, 1, 34, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -21812, -27866, 4510, 1480, 451, -1800, 12611, -7296, 3, 8, 0, 1, 21, 2, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -2392, -21306, 1620, 2470, -26394, 0, -1920, 4193, 3, 5, 0, 0, 10, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_077E
    ck                      FG_GAME, 3, 1
    if                      0, off_0738
    cmp                     0, V_LAST_RDT, CMP_EQ, 1032
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 4, 1, 32, 0, 255, -20045, -1800, -24917, -2024, 0, 0
    endif
    nop

off_0738:
    if                      0, off_075A
    cmp                     0, V_LAST_RDT, CMP_EQ, 1029
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 4, 0, 32, 0, 255, -4229, 0, -20717, 4, 0, 0
    endif
    nop

off_075A:
    if                      0, off_077C
    cmp                     0, V_LAST_RDT, CMP_EQ, 1037
    sce_em_set              0, 255, ENEMY_SHERRY_PENDANT, 0, 4, 0, 32, 0, 255, -24029, 0, -19517, 4, 0, 0
    endif
    nop

off_077C:
    endif
    nop

off_077E:
    gosub                   main_02
    gosub                   main_03
    evt_end                 0

.proc aot
    gosub                   main_04
    evt_end                 0

.proc main_02
    sce_em_set              0, 0, ENEMY_SPIDER, 67, 0, 1, 16, 0, 29, -6785, -7200, -21325, 2048, 0, 0
    sce_em_set              0, 1, ENEMY_SPIDER, 67, 0, 1, 16, 0, 30, -19585, -7200, -20025, 2048, 0, 0
    evt_end                 0

.proc main_03
    mizu_div_set            2
    set                     FG_GENERAL_1, 32, 0
    aot_set                 3, SCE_WATER, SAT_PL | SAT_EM | SAT_SPL | SAT_OB | SAT_UNDER, 0, 0, -25160, -23610, 23610, 5580, 96, 250, 0, 0, 0, 0
    aot_set                 4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23350, -18360, 1450, 1550, 255, 0, I_GOSUB, main_05, 0, 0
    aot_set                 5, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -23350, -18360, 1450, 1550, 10, 0, ITEM_EAGLEMEDAL, 0, aot, 0
    aot_set                 6, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -23350, -18360, 1450, 1550, 10, 0, ITEM_WOLFMEDAL, 0, aot, 0
    aot_set                 7, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25290, -23570, 2360, 5650, 4, 0, 0, 0, 255, 255
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 10, 16, -23750, -20700, -16800, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -14550, -20700, -5300, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_08A0
    ck                      FG_GENERAL_1, 118, 1
    sca_id_set              10, 0, 0
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    aot_reset               7, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    sce_espr_on2            3, 22, 12, 0, 0, 0, 9, 84, 172, 68, 248, 162, 184, 0, 0
    else                    0, off_08E8

off_08A0:
    obj_model_set           0, 1, 130, 4, 7, 0, 8, 10, 26, -25386, -1440, -17996, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sce_espr_on2            2, 22, 4, 0, 0, 0, 9, 106, 171, 68, 248, 162, 184, 0, 0
    sce_espr_on2            1, 40, 0, 0, 0, 0, 27, 200, 156, 68, 228, 180, 176, 0, 0
    nop
    nop

off_08E8:
    evt_end                 0

.proc main_04
    if                      0, off_08FC
    cmp                     0, V_USED_ITEM, CMP_EQ, 72
    sce_item_lost           ITEM_EAGLEMEDAL
    evt_exec                255, I_GOSUB, main_06
    endif
    nop

off_08FC:
    if                      0, off_090E
    cmp                     0, V_USED_ITEM, CMP_EQ, 73
    sce_item_lost           ITEM_WOLFMEDAL
    evt_exec                255, I_GOSUB, main_07
    endif
    nop

off_090E:
    if                      0, off_091E
    ck                      FG_GENERAL_1, 117, 1
    set                     13, 2, 1
    else                    0, off_0924

off_091E:
    set                     13, 2, 0
    nop
    nop

off_0924:
    if                      0, off_0934
    ck                      FG_GENERAL_1, 116, 1
    set                     13, 1, 1
    else                    0, off_093A

off_0934:
    set                     13, 1, 0
    nop
    nop

off_093A:
    if                      0, off_0946
    ck                      FG_GENERAL_1, 118, 0
    gosub                   main_0A
    endif
    nop

off_0946:
    evt_end                 0

.proc main_05
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 1, 1
    set                     FG_STATE, 2, 1
    set                     FG_STATE, 3, 1
    cut_chg                 6
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_0978
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0978:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_0996
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0996:
    if                      0, off_09AC
    ck                      FG_GENERAL_1, 117, 1
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -21924, -2518, -18144
    endif
    nop

off_09AC:
    if                      0, off_09C2
    ck                      FG_GENERAL_1, 116, 1
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -22176, -2518, -18144
    endif
    nop

off_09C2:
    sleep                   10, 10
    if                      0, off_09DC
    ck                      FG_GENERAL_1, 116, 1
    ck                      FG_GENERAL_1, 117, 1
    message_on              0, 3, 0, 255, 255
    else                    0, off_0A10

off_09DC:
    if                      0, off_09F2
    ck                      FG_GENERAL_1, 116, 0
    ck                      FG_GENERAL_1, 117, 0
    message_on              0, 0, 0, 255, 255
    else                    0, off_0A0E

off_09F2:
    if                      0, off_0A04
    ck                      FG_GENERAL_1, 116, 1
    message_on              0, 2, 0, 255, 255
    else                    0, off_0A0C

off_0A04:
    message_on              0, 1, 0, 255, 255
    nop
    nop

off_0A0C:
    nop
    nop

off_0A0E:
    nop
    nop

off_0A10:
    sleep                   10, 1
    cut_chg                 0
    if                      0, off_0A2C
    ck                      FG_GENERAL_1, 117, 1
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -21924, -22518, -18144
    endif
    nop

off_0A2C:
    if                      0, off_0A42
    ck                      FG_GENERAL_1, 116, 1
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -22176, -22518, -18144
    endif
    nop

off_0A42:
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_0A60
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0A60:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_0A7E
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0A7E:
    set                     FG_STATE, 2, 0
    set                     FG_STATE, 1, 0
    set                     FG_STATE, 7, 0
    set                     FG_STATE, 3, 0
    cut_auto                1
    evt_end                 0

.proc main_06
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 1, 1
    set                     FG_STATE, 2, 1
    set                     FG_STATE, 3, 1
    if                      0, off_0AB8
    ck                      FG_GENERAL_1, 117, 1
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -21924, -2518, -18144
    endif
    nop

off_0AB8:
    cut_chg                 6
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_0AD8
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0AD8:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_0AF6
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0AF6:
    sleep                   10, 20
    se_on                   2, 10, 0, -22171, -1000, -18852
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -22176, -2718, -18144
    speed_set               1, 10
    for                     0, off_0B20, 20
    add_speed
    evt_next
    next                    0

off_0B20:
    sleep                   10, 20
    set                     FG_GENERAL_1, 116, 1
    if                      0, off_0B52
    ck                      FG_GENERAL_1, 117, 1
    sleep                   10, 30
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -22176, -22518, -18144
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -21924, -22518, -18144
    evt_chain               0, 24, 8
    endif
    nop

off_0B52:
    cut_chg                 0
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_0B72
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0B72:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_0B90
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0B90:
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -22176, -22518, -18144
    set                     FG_STATE, 7, 0
    set                     FG_STATE, 1, 0
    set                     FG_STATE, 2, 0
    set                     FG_STATE, 3, 0
    cut_auto                1
    evt_end                 0

.proc main_07
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 1, 1
    set                     FG_STATE, 2, 1
    set                     FG_STATE, 3, 1
    if                      0, off_0BD6
    ck                      FG_GENERAL_1, 116, 1
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -22176, -2518, -18144
    endif
    nop

off_0BD6:
    cut_chg                 6
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_0BF6
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0BF6:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_0C14
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0C14:
    sleep                   10, 20
    se_on                   2, 10, 0, -22171, -1000, -18852
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -21924, -2718, -18144
    speed_set               1, 10
    for                     0, off_0C3E, 20
    add_speed
    evt_next
    next                    0

off_0C3E:
    sleep                   10, 20
    set                     FG_GENERAL_1, 117, 1
    if                      0, off_0C70
    ck                      FG_GENERAL_1, 116, 1
    sleep                   10, 30
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -21924, -22518, -18144
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -22176, -22518, -18144
    evt_chain               0, 24, 8
    endif
    nop

off_0C70:
    cut_chg                 0
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_0C90
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0C90:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_0CAE
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0CAE:
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -21924, -22518, -18144
    set                     FG_STATE, 7, 0
    set                     FG_STATE, 1, 0
    set                     FG_STATE, 2, 0
    set                     FG_STATE, 3, 0
    cut_auto                1
    evt_end                 0

.proc main_08
    set                     FG_STATE, 7, 1
    set                     FG_STATE, 1, 1
    set                     FG_STATE, 3, 1
    set                     FG_GAME, 27, 1
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 0, -25100, -20615
    set                     FG_GENERAL_1, 118, 1
    cut_chg                 0
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_0D0E
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0D0E:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_0D2C
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0D2C:
    nop_8c                  0, 160, 50, 150, 0, 5, 0
    sleep                   10, 10
    se_on                   2, 267, 0, -22171, -1000, -18852
    sleep                   10, 60
    evt_exec                255, I_GOSUB, main_09
    sce_bgm_control         0, 2, 1, 100, 64
    sce_bgm_control         0, 2, 2, 100, 64
    sce_bgm_control         1, 2, 1, 100, 64
    sce_bgm_control         2, 1, 1, 100, 64
    sleep                   10, 40
    cut_chg                 6
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_0D88
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0D88:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_0DA6
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_SUB, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0DA6:
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -21924, -2518, -18144
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -22176, -2518, -18144
    sleep                   10, 10
    sce_espr_on2            3, 22, 12, 0, 0, 0, 9, 84, 172, 68, 248, 162, 184, 0, 0
    sce_espr_kill2          2
    se_on                   2, 268, 0, -22171, -1000, -18852
    sca_id_set              10, 0, 0
    aot_reset               3, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    aot_reset               7, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    sleep                   10, 50
    cut_chg                 0
    work_set                WK_ENEMY, 0
    nop
    if                      0, off_0E1C
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0E1C:
    work_set                WK_ENEMY, 1
    nop
    if                      0, off_0E3A
    member_cmp              0, 0, 6, 1, 0
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 25000
    member_set2             12, V_TEMP
    nop
    endif
    nop

off_0E3A:
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, -21924, -22518, -18144
    work_set                WK_OBJECT, 1
    nop
    pos_set                 0, -22176, -22518, -18144
    sleep                   10, 30
    set                     FG_STATE, 2, 0
    set                     FG_STATE, 7, 0
    set                     FG_STATE, 1, 0
    set                     FG_STATE, 3, 0
    set                     FG_GAME, 27, 0
    work_set                WK_PLAYER, 0
    plc_ret
    cut_auto                1
    sce_bgmtbl_set          0, 5, 4, 6399, 32768
    sce_bgmtbl_set          0, 7, 4, 255, 0
    evt_end                 0

.proc main_09
    work_set                WK_OBJECT, 0
    nop
    save                    V_04, -1440
    for                     0, off_0EBE, 40
    member_copy             V_TEMP, 12
    nop
    calc                    0, OP_ADD, V_TEMP, 20
    member_set2             12, V_TEMP
    nop
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 20
    copy                    V_04, V_TEMP
    nop
    work_copy               4, 4, 1
    aot_reset               3, SCE_WATER, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    evt_next
    nop
    next                    0

off_0EBE:
    work_set                WK_OBJECT, 0
    nop
    member_set              12, 224, 177
    evt_end                 0

.proc main_0A

off_0EC8:
    switch                  26, off_0F54
    case                    0, off_0EE0, 0
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         1, 0, 1, 60, 64
    break                   0

off_0EE0:
    case                    0, off_0EF4, 1
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_0EF4:
    case                    0, off_0F08, 2
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_0F08:
    case                    0, off_0F1C, 3
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_0F1C:
    case                    0, off_0F30, 4
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_0F30:
    case                    0, off_0F44, 5
    sce_bgm_control         0, 0, 1, 90, 64
    sce_bgm_control         1, 0, 1, 50, 100
    break                   0

off_0F44:
    case                    0, off_0F52, 6
    sce_bgm_control         1, 0, 1, 60, 40
    break                   0

off_0F52:
    eswitch                 0

off_0F54:
    do                      0, off_0F62
    sleep                   10, 1
    edwhile                 off_0F62
    ck                      FG_GAME, 11, 0

off_0F62:
    goto                    255, 255, 0, off_0EC8
    evt_end                 0
