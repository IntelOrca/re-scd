.version 2

.init
.proc init
    if                      0, off_1288
    ck                      FG_COMMON, 254, 1
    set                     FG_COMMON, 54, 0
    set                     FG_COMMON, 65, 0
    set                     FG_ITEM, 50, 0
    set                     FG_ENEMY, 88, 0
    set                     FG_ENEMY, 89, 0
    set                     FG_ENEMY, 90, 0
    set                     FG_ENEMY, 107, 0
    endif
    nop

off_1288:
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24453, -10494, 3940, 1190, 1652, 0, -15558, -25728, 1, 17, 5, 0, 27, 2, 0, 0, UNLOCKED, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18507, -23529, 1500, 2570, ITEM_REDCARD, 1, 50, ID_OBJ_255, IF_DEFAULT
    if                      0, off_15E0
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_1470
    ck                      FG_COMMON, 54, 0
    if                      0, off_1352
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 2, AI_40, 0, SBK_3, 0, 89, -23961, 0, -14187, 1216, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_GUY1, 4, AI_40, 0, SBK_4, 0, 90, -26002, 0, -20008, 3040, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_GUY1, 4, AI_40, 0, SBK_4, 0, 107, -20945, 0, -13538, 1248, 0, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    else                    0, off_13F4

off_1352:
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 2, AI_40, 0, SBK_3, 0, 89, -25120, 0, -15435, 1568, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_GUY1, 4, AI_40, 0, SBK_4, 0, 90, -26002, 0, -20008, 3040, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_GUY1, 4, AI_40, 0, SBK_4, 0, 107, -20945, 0, -13538, 1248, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_GUY1, 4, AI_40, 0, SBK_4, 0, 213, -23709, 0, -13572, 80, 0, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_4
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    nop
    nop

off_13F4:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY1, 10, AI_40, 0, SBK_3, 0, 88, 22255, 0, 24774, 3104, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_GUY1, 2, AI_40, 0, SBK_0, 0, 255, -24030, -1300, -19514, 3160, 0, 0
    work_set                WK_ENEMY, ID_EM_5
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    aot_set                 ID_AOT_1, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -19727, -26079, 3700, 6200, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -21787, -1812, -23774, 0, -960, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1582

off_1470:
    set                     FG_ROOM, 3, 1
    if                      0, off_14C2
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_3, 0, 89, -25648, 0, -21913, -867, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_4, 0, 90, -22941, 0, -16735, -1547, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_4, 0, 107, -24790, 0, -13826, -587, 0, 0
    else                    0, off_151C

off_14C2:
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_3, 0, 89, -25120, 0, -15435, 1568, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_4, 0, 90, -26002, 0, -20008, 3040, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_4, 0, 107, -20945, 0, -13538, 1248, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_4, 0, 213, -23709, 0, -13572, 80, 0, 0
    nop
    nop

off_151C:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_GUY1, 0, AI_DEFAULT, 0, SBK_3, 0, 88, -21165, 0, -22238, -1667, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_GUY1, 2, AI_40, 0, SBK_0, 0, 255, -24030, -1300, -19514, 3160, 0, 0
    work_set                WK_ENEMY, ID_EM_5
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -21787, 0, -23774, -1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1582:
    if                      0, off_15B4
    ck                      FG_COMMON, 65, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -19992, -1820, -23763, 0, -896, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_15DC

off_15B4:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -19992, 0, -23763, -1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_15DC:
    else                    0, off_165A

off_15E0:
    sce_em_set              0, ID_EM_6, ENEMY_LICKER_RED, 0, AI_DEFAULT, 0, SBK_14, 0, 88, -25302, 0, -20949, -7184, 0, 0
    sce_em_set              0, ID_EM_7, ENEMY_LICKER_RED, 2, AI_01 | AI_04, 0, SBK_14, 0, 89, -23957, -7200, -16198, 3136, 0, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -19992, 0, -23763, -1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -21787, 0, -23774, -1024, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_165A:
    evt_end                 0

.main
.proc main
    gosub                   main_03
    evt_end                 0

.proc aot
    gosub                   main_04
    evt_end                 0

.proc main_02
    sce_bgmtbl_set          0, 21, 2, 255, 0
    evt_end                 0

.proc main_03
    if                      0, off_16BA
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_16B6
    ck                      FG_COMMON, 54, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18507, -23529, 1500, 2570, 255, 0, I_GOSUB, main_05, 0, 0
    endif
    nop

off_16B6:
    else                    0, off_16DA

off_16BA:
    if                      0, off_16D8
    ck                      FG_ITEM, 50, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18507, -23529, 1500, 2570, 255, 0, I_GOSUB, main_06, 0, 0
    endif
    nop

off_16D8:
    nop
    nop

off_16DA:
    evt_end                 0

.proc main_04
    if                      0, off_17A2
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_1702
    ck                      FG_COMMON, 65, 0
    if                      0, off_1700
    cmp                     0, V_01, CMP_EQ, 1
    set                     FG_COMMON, 65, 1
    evt_exec                255, I_GOSUB, main_0D
    endif
    nop

off_1700:
    endif
    nop

off_1702:
    if                      0, off_1754
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    if                      0, off_1750
    ck                      FG_ENEMY, 88, 1
    if                      0, off_174E
    ck                      FG_ENEMY, 89, 1
    if                      0, off_174C
    ck                      FG_ENEMY, 90, 1
    if                      0, off_174A
    ck                      FG_ENEMY, 107, 1
    if                      0, off_1748
    ck                      FG_ROOM, 3, 0
    if                      0, off_1746
    ck                      FG_ROOM, 2, 0
    set                     FG_ROOM, 2, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 0
    endif
    nop

off_1746:
    endif
    nop

off_1748:
    endif
    nop

off_174A:
    endif
    nop

off_174C:
    endif
    nop

off_174E:
    endif
    nop

off_1750:
    else                    0, off_17A0

off_1754:
    if                      0, off_179E
    ck                      FG_ENEMY, 88, 1
    if                      0, off_179C
    ck                      FG_ENEMY, 89, 1
    if                      0, off_179A
    ck                      FG_ENEMY, 90, 1
    if                      0, off_1798
    ck                      FG_ENEMY, 107, 1
    ck                      FG_ENEMY, 213, 1
    if                      0, off_1796
    ck                      FG_ROOM, 3, 0
    if                      0, off_1794
    ck                      FG_ROOM, 2, 0
    set                     FG_ROOM, 2, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 0
    endif
    nop

off_1794:
    endif
    nop

off_1796:
    endif
    nop

off_1798:
    endif
    nop

off_179A:
    endif
    nop

off_179C:
    endif
    nop

off_179E:
    nop
    nop

off_17A0:
    endif
    nop

off_17A2:
    evt_end                 0

.proc main_05
    set                     FG_STOP, 7, 1
    if                      0, off_17FA
    ck                      FG_ITEM, 50, 0
    se_on                   2, 296, 0, -18623, -1800, -22059
    aot_on                  ID_AOT_3
    evt_next
    nop
    if                      0, off_17F8
    ck                      FG_ITEM, 50, 1
    set                     FG_COMMON, 54, 1
    cut_chg                 5
    cut_replace             4, 5
    cut_auto                1
    nop
    if                      0, off_17E4
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    evt_exec                255, I_GOSUB, main_07
    else                    0, off_17EA

off_17E4:
    evt_exec                255, I_GOSUB, main_08
    nop
    nop

off_17EA:
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    gosub                   main_02
    endif
    nop

off_17F8:
    endif
    nop

off_17FA:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_06
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    if                      0, off_1822
    ck                      FG_ITEM, 50, 0
    se_on                   2, 296, 0, -18623, -1800, -22059
    aot_on                  ID_AOT_3
    evt_next
    nop
    endif
    nop

off_1822:
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_07
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
    nop
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_0A
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -22000, -150, -24100
    member_set              M_SCE_FREE0, 1
    evt_exec                255, I_GOSUB, main_09
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    sleep                   10, 15
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    sleep                   10, 60
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    sleep                   10, 60
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    evt_end                 0

.proc main_08
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 8
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_4
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -3
    member_set2             M_POINTER, V_TEMP
    nop
    evt_next
    nop
    evt_exec                255, I_GOSUB, main_0A
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -22000, -150, -24100
    member_set              M_SCE_FREE0, 1
    evt_exec                255, I_GOSUB, main_09
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    sleep                   10, 15
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_2
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_3
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_4
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -16385
    member_set2             M_TYPE, V_TEMP
    nop
    evt_end                 0

.proc main_09
    work_set                WK_ENEMY, ID_EM_0
    nop
    sleep                   10, 20
    se_on                   3, 13, 3, 0, 0, 0
    sleep                   10, 80
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_AND, V_TEMP, -9
    member_set2             M_POINTER, V_TEMP
    nop
    se_on                   2, 13, 0, -22255, 0, -24774
    for                     0, off_19F6, 38
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 4
    member_set2             M_Y_POS, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_19F6:
    member_set              M_Y_POS, 0
    evt_end                 0

.proc main_0A
    se_on                   2, 14, 0, -22505, -1800, -23002
    evt_exec                255, I_GOSUB, main_0B
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_0C
    evt_end                 0

.proc main_0B
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  250, 5, 0, 0, 0
    nop_8c                  0, 250, 20, 10, 0, 5, 0
    save                    V_07, 0
    for                     0, off_1A56, 15
    member_copy             V_TEMP, M_X_DIR
    nop
    calc2                   OP_ADD, V_TEMP, V_07
    member_set2             M_X_DIR, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 10
    copy                    V_07, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1A56:
    evt_end                 0

.proc main_0C
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    save                    V_05, 0
    for                     0, off_1A84, 7
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1A84:
    se_on                   2, 11, 0, -22505, 0, -23002
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  250, 5, 0, 0, 0
    nop_8c                  0, 250, 50, 10, 0, 5, 0
    member_set              M_Y_POS, 0
    member_set              M_Y_DIR, -1024
    member_set              M_X_DIR, -1034
    evt_next
    nop
    member_set              M_X_DIR, -1024
    evt_next
    nop
    member_set              M_X_DIR, -1014
    evt_next
    nop
    member_set              M_X_DIR, -1029
    evt_next
    nop
    member_set              M_X_DIR, -1024
    evt_next
    nop
    member_set              M_X_DIR, -1019
    evt_next
    nop
    member_set              M_X_DIR, -1026
    evt_next
    nop
    member_set              M_X_DIR, -1024
    evt_next
    nop
    member_set              M_X_DIR, -1022
    evt_next
    nop
    member_set              M_X_DIR, -1025
    evt_next
    nop
    member_set              M_X_DIR, -1024
    evt_next
    nop
    member_set              M_X_DIR, -1023
    evt_next
    nop
    member_set              M_X_DIR, -1024
    evt_next
    nop
    evt_end                 0

.proc main_0D
    evt_exec                255, I_GOSUB, main_0E
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_0F
    sleep                   10, 10
    evt_exec                255, I_GOSUB, main_10
    evt_end                 0

.proc main_0E
    se_on                   2, 10, 0, -20776, -1800, -23022
    nop_8a                  0, 1, 0, 0, 0
    nop_8c                  0, 150, 20, 10, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    for                     0, off_1B48, 20
    member_copy             V_TEMP, M_Y_DIR
    nop
    calc                    0, OP_ADD, V_TEMP, 10
    member_set2             M_Y_DIR, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1B48:
    evt_end                 0

.proc main_0F
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    save                    V_07, 0
    for                     0, off_1B76, 15
    member_copy             V_TEMP, M_X_DIR
    nop
    calc2                   OP_ADD, V_TEMP, V_07
    member_set2             M_X_DIR, V_TEMP
    nop
    copy                    V_TEMP, V_07
    nop
    calc                    0, OP_SUB, V_TEMP, 10
    copy                    V_07, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1B76:
    evt_end                 0

.proc main_10
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    save                    V_05, 0
    for                     0, off_1BA4, 6
    member_copy             V_TEMP, M_Y_POS
    nop
    calc2                   OP_ADD, V_TEMP, V_05
    member_set2             M_Y_POS, V_TEMP
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_ADD, V_TEMP, 90
    copy                    V_05, V_TEMP
    nop
    evt_next
    nop
    next                    0

off_1BA4:
    se_on                   2, 11, 0, -20776, 0, -23022
    nop_8a                  0, 3, 0, 1, 0
    nop_8b                  250, 3, 0, 1, 0
    nop_8c                  0, 150, 50, 10, 0, 6, 0
    member_set              M_Y_POS, 0
    member_set              M_Y_DIR, -1024
    member_set              M_X_DIR, -1034
    evt_next
    nop
    member_set              M_X_DIR, -1024
    evt_next
    nop
    member_set              M_X_DIR, -1014
    evt_next
    nop
    member_set              M_X_DIR, -1029
    evt_next
    nop
    member_set              M_X_DIR, -1024
    evt_next
    nop
    member_set              M_X_DIR, -1019
    evt_next
    nop
    member_set              M_X_DIR, -1026
    evt_next
    nop
    member_set              M_X_DIR, -1024
    evt_next
    nop
    member_set              M_X_DIR, -1022
    evt_next
    nop
    member_set              M_X_DIR, -1025
    evt_next
    nop
    member_set              M_X_DIR, -1024
    evt_next
    nop
    member_set              M_X_DIR, -1023
    evt_next
    nop
    member_set              M_X_DIR, -1024
    evt_next
    nop
    evt_end                 0
