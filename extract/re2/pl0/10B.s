.version 2

.init
.proc init
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18451, -13019, 2500, 1860, -14347, 0, -7806, -960, 0, 10, 4, 0, 3, 0, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22937, -13170, 2510, 1300, ID_MSG_2, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20137, -19890, 2060, 2380, ID_MSG_3, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27337, -19460, 3720, 2280, ID_MSG_4, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27317, -14650, 3110, 2510, ID_MSG_5, 0, 0, 0, 255, 255
    if                      0, off_161C
    ck                      FG_COMMON, 18, 0
    aot_set                 ID_AOT_14, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -24137, -26860, 1600, 740, 10, 0, ITEM_REDJEWEL, 0, aot, 0
    endif
    nop

off_161C:
    if                      0, off_163A
    ck                      FG_COMMON, 19, 0
    aot_set                 ID_AOT_15, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -20637, -26960, 1440, 820, 10, 0, ITEM_REDJEWEL, 0, aot, 0
    endif
    nop

off_163A:
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 18, 23427, -2350, 26235, -512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 18, 19811, -2350, 26235, -512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_169C
    ck                      FG_COMMON, 18, 1
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -23367, -2396, -26250
    endif
    nop

off_169C:
    if                      0, off_16B2
    ck                      FG_COMMON, 19, 1
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -19847, -2396, -26250
    endif
    nop

off_16B2:
    if                      0, off_16CC
    ck                      FG_COMMON, 43, 1
    cut_replace             10, 11
    cut_replace             2, 12
    cut_replace             3, 13
    cut_replace             4, 14
    cut_replace             5, 15
    nop
    endif
    nop

off_16CC:
    if                      0, off_1714
    ck                      FG_STATUS, F_SCENARIO, 0
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19851, -26419, 2090, 1940, ITEM_DIAMONDKEY, 2, 97, ID_OBJ_3, IF_GLINT_GRAY
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -18521, -2000, -25948, 1216, 0, -3264, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1752

off_1714:
    item_aot_set            ID_AOT_2, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19851, -26419, 2090, 1940, ITEM_BLUECARD, 1, 98, ID_OBJ_4, IF_GLINT_BLUE
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -18521, -2000, -25948, 1216, 0, -3264, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1752:
    if                      0, off_1772
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20151, -19699, 2500, 2030, ITEM_INKRIBBON, 3, 220, ID_OBJ_255, IF_DEFAULT
    endif
    nop

off_1772:
    evt_end                 0

.main
.proc main
    if                      0, off_17BA
    ck                      FG_COMMON, 254, 1
    set                     FG_COMMON, 18, 0
    set                     FG_COMMON, 19, 0
    set                     FG_COMMON, 43, 0
    set                     FG_ITEM, 95, 0
    set                     FG_ITEM, 96, 0
    set                     FG_COMMON, 171, 0
    set                     FG_ENEMY, 20, 0
    endif
    nop

off_17BA:
    gosub                   main_04
    item_aot_set            ID_AOT_16, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 1, 1, ITEM_KINGPLUG, 1, 95, ID_OBJ_2, IF_DEFAULT
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -21620, -3023, -25759, 896, -20480, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_180E
    ck                      FG_COMMON, 43, 0
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    pos_set                 0, 0, 0, 0
    endif
    nop

off_180E:
    if                      0, off_1856
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26051, -16619, 1400, 2550, ITEM_SHOTGUNAMMO, 7, 99, ID_OBJ_5, IF_DEFAULT
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 16, -25254, -1500, -15196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_186E

off_1856:
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26051, -16619, 1400, 2550, ITEM_SHOTGUNAMMO, 7, 99, ID_OBJ_255, IF_FLOOR
    nop
    nop

off_186E:
    evt_end                 0

.proc aot
    gosub                   main_05
    evt_end                 0

.proc main_02
    sce_bgmtbl_set          0, 11, 1, 65302, 0
    evt_end                 0

.proc main_03
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 3, 1
    if                      0, off_18C4
    ck                      FG_COMMON, 18, 1
    ck                      FG_COMMON, 19, 1
    if                      0, off_18B0
    ck                      FG_ITEM, 95, 0
    cut_chg                 11
    sleep                   10, 30
    aot_on                  ID_AOT_16
    evt_next
    cut_chg                 13
    cut_auto                1
    nop
    else                    0, off_18C0

off_18B0:
    cut_chg                 11
    message_on              0, ID_MSG_7, 0, 255, 255
    evt_next
    cut_chg                 13
    cut_auto                1
    nop
    nop
    nop

off_18C0:
    else                    0, off_18D4

off_18C4:
    cut_chg                 10
    message_on              0, ID_MSG_1, 0, 255, 255
    evt_next
    cut_chg                 3
    cut_auto                1
    nop
    nop
    nop

off_18D4:
    set                     FG_STOP, 3, 0
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_04
    aot_set                 ID_AOT_7, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24137, -26860, 1600, 740, 255, 0, I_GOSUB, main_08, 0, 0
    aot_set                 ID_AOT_8, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -20637, -26960, 1440, 820, 255, 0, I_GOSUB, main_09, 0, 0
    aot_set                 ID_AOT_6, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22927, -26540, 2650, 1560, 255, 0, I_GOSUB, main_03, 0, 0
    if                      0, off_19A8
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_195C
    ck                      FG_COMMON, 171, 0
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_RED, 17, AI_40, 0, SBK_14, 0, 20, 21752, -17200, 20286, 967, 0, 0
    aot_set                 ID_AOT_13, SCE_NORMAL, SAT_PL | SAT_UNDER, 0, 0, -27123, -20886, 10600, 2500, 0, 0, 0, 0, 0, 0
    else                    0, off_19A6

off_195C:
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_RED, 16, AI_DEFAULT, 0, SBK_14, 0, 20, -21752, 0, -20286, 967, 0, 0
    flr_set                 1, 1
    set                     FG_PBF05, 2, 0
    set                     FG_PBF0F, 2, 0
    set                     FG_ROOM, 3, 1
    nop
    if                      0, off_1998
    ck                      FG_ENEMY, 20, 0
    cut_replace             2, 4
    cut_replace             12, 14
    cut_replace             1, 7
    nop
    else                    0, off_19A4

off_1998:
    cut_replace             2, 5
    cut_replace             12, 15
    cut_replace             1, 7
    nop
    nop
    nop

off_19A4:
    nop
    nop

off_19A6:
    endif
    nop

off_19A8:
    save                    V_04, 16
    gosub                   main_07
    aot_set                 ID_AOT_0, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18451, -13019, 2500, 1860, 255, 0, I_GOSUB, main_06, 0, 0
    evt_end                 0

.proc main_05
    if                      0, off_19EE
    ck                      FG_COMMON, 18, 0
    if                      0, off_19EC
    cmp                     0, V_00, CMP_EQ, 14
    if                      0, off_19EA
    cmp                     0, V_USED_ITEM, CMP_EQ, 51
    set                     FG_COMMON, 18, 1
    evt_exec                255, I_GOSUB, main_0A
    endif
    nop

off_19EA:
    endif
    nop

off_19EC:
    endif
    nop

off_19EE:
    if                      0, off_1A18
    ck                      FG_COMMON, 19, 0
    if                      0, off_1A16
    cmp                     0, V_00, CMP_EQ, 15
    if                      0, off_1A14
    cmp                     0, V_USED_ITEM, CMP_EQ, 51
    set                     FG_COMMON, 19, 1
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_1A14:
    endif
    nop

off_1A16:
    endif
    nop

off_1A18:
    if                      0, off_1A7E
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_1A48
    keep_item_ck            ITEM_BLUECARD
    if                      0, off_1A46
    ck                      FG_COMMON, 171, 0
    if                      0, off_1A44
    cmp                     0, V_01, CMP_EQ, 13
    set                     FG_COMMON, 171, 1
    evt_exec                255, I_GOSUB, main_0D
    gosub                   main_02
    endif
    nop

off_1A44:
    endif
    nop

off_1A46:
    endif
    nop

off_1A48:
    if                      0, off_1A70
    ck                      FG_ENEMY, 20, 1
    if                      0, off_1A6E
    ck                      FG_ROOM, 3, 0
    if                      0, off_1A6C
    ck                      FG_ROOM, 2, 0
    set                     FG_ROOM, 2, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    endif
    nop

off_1A6C:
    endif
    nop

off_1A6E:
    endif
    nop

off_1A70:
    if                      0, off_1A7C
    ck                      FG_ROOM, 3, 1
    gosub                   main_07
    endif
    nop

off_1A7C:
    endif
    nop

off_1A7E:
    evt_end                 0

.proc main_06
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 1, 0
    aot_on                  ID_AOT_1
    evt_end                 0

.proc main_07
    if                      0, off_1B84
    work_copy               4, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    switch                  26, off_1B7E
    case                    0, off_1AAA, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1AAA:
    case                    0, off_1AB8, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1AB8:
    case                    0, off_1AC6, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1AC6:
    case                    0, off_1AD4, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1AD4:
    case                    0, off_1AE2, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1AE2:
    case                    0, off_1AF0, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1AF0:
    case                    0, off_1AFE, 6
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1AFE:
    case                    0, off_1B0C, 7
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1B0C:
    case                    0, off_1B1A, 8
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1B1A:
    case                    0, off_1B28, 9
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1B28:
    case                    0, off_1B36, 10
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1B36:
    case                    0, off_1B44, 11
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1B44:
    case                    0, off_1B52, 12
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1B52:
    case                    0, off_1B60, 13
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1B60:
    case                    0, off_1B6E, 14
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1B6E:
    case                    0, off_1B7C, 15
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 64, 64
    break                   0

off_1B7C:
    eswitch                 0

off_1B7E:
    copy                    V_04, V_CUT
    nop
    endif
    nop

off_1B84:
    evt_end                 0

.proc main_08
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 3, 1
    cut_chg                 9
    if                      0, off_1BA6
    ck                      FG_COMMON, 18, 0
    message_on              0, ID_MSG_0, 0, 255, 255
    else                    0, off_1BAE

off_1BA6:
    message_on              0, ID_MSG_6, 0, 255, 255
    nop
    nop

off_1BAE:
    evt_next
    nop
    if                      0, off_1BBE
    ck                      FG_COMMON, 43, 0
    cut_chg                 3
    else                    0, off_1BC2

off_1BBE:
    cut_chg                 13
    nop
    nop

off_1BC2:
    cut_auto                1
    set                     FG_STOP, 3, 0
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_09
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 3, 1
    cut_chg                 8
    if                      0, off_1BF2
    ck                      FG_COMMON, 19, 0
    message_on              0, ID_MSG_0, 0, 255, 255
    else                    0, off_1BFA

off_1BF2:
    message_on              0, ID_MSG_6, 0, 255, 255
    nop
    nop

off_1BFA:
    evt_next
    nop
    if                      0, off_1C0A
    ck                      FG_COMMON, 43, 0
    cut_chg                 3
    else                    0, off_1C0E

off_1C0A:
    cut_chg                 13
    nop
    nop

off_1C0E:
    cut_auto                1
    set                     FG_STOP, 3, 0
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0A
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 3, 1
    cut_chg                 9
    sce_item_lost           ITEM_REDJEWEL
    aot_reset               ID_AOT_14, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    pos_set                 0, -23367, -2396, -26250
    sleep                   10, 3
    se_on                   2, 11, 0, -23375, -2419, -26250
    sleep                   10, 60
    cut_chg                 3
    cut_auto                1
    if                      0, off_1C82
    ck                      FG_COMMON, 18, 1
    if                      0, off_1C80
    ck                      FG_COMMON, 19, 1
    if                      0, off_1C7E
    ck                      FG_COMMON, 43, 0
    set                     FG_COMMON, 43, 1
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_1C7E:
    endif
    nop

off_1C80:
    endif
    nop

off_1C82:
    set                     FG_STOP, 3, 0
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0B
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 3, 1
    cut_chg                 8
    sce_item_lost           ITEM_REDJEWEL
    aot_reset               ID_AOT_15, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    pos_set                 0, -19847, -2396, -26250
    sleep                   10, 3
    se_on                   2, 11, 0, -19832, -2419, -26250
    sleep                   10, 60
    cut_chg                 3
    cut_auto                1
    if                      0, off_1CF4
    ck                      FG_COMMON, 18, 1
    if                      0, off_1CF2
    ck                      FG_COMMON, 19, 1
    if                      0, off_1CF0
    ck                      FG_COMMON, 43, 0
    set                     FG_COMMON, 43, 1
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_1CF0:
    endif
    nop

off_1CF2:
    endif
    nop

off_1CF4:
    set                     FG_STOP, 3, 0
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0C
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    set                     FG_STOP, 3, 1
    cut_replace             10, 11
    cut_replace             2, 12
    cut_replace             3, 13
    cut_replace             4, 14
    cut_replace             5, 15
    cut_chg                 13
    evt_next
    if                      0, off_1D3C
    ck                      FG_STATUS, F_SCENARIO, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    movie_on                4
    evt_next
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    nop
    else                    0, off_1DA8

off_1D3C:
    if                      0, off_1D94
    ck                      FG_ROOM, 3, 0
    if                      0, off_1D54
    ck                      FG_COMMON, 171, 0
    movie_on                4
    evt_next
    nop
    else                    0, off_1D90

off_1D54:
    if                      0, off_1D7C
    ck                      FG_ROOM, 2, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    movie_on                4
    evt_next
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    nop
    else                    0, off_1D8E

off_1D7C:
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    movie_on                4
    evt_next
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    nop
    nop
    nop

off_1D8E:
    nop
    nop

off_1D90:
    else                    0, off_1DA6

off_1D94:
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_STOP, BGM_TYPE_MAIN_VOL, 0, 0
    movie_on                4
    evt_next
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    nop
    nop
    nop

off_1DA6:
    nop
    nop

off_1DA8:
    work_set                WK_OBJECT, ID_OBJ_2
    nop
    if                      0, off_1DC8
    ck                      FG_STATUS, F_PLAYER, 0
    pos_set                 0, -21620, -3023, -25759
    dir_set                 0, 896, -20480, 0
    else                    0, off_1DDA

off_1DC8:
    pos_set                 0, -21557, -3063, -25920
    dir_set                 0, -192, 0, 0
    nop
    nop

off_1DDA:
    cut_auto                1
    set                     FG_STOP, 3, 0
    set                     FG_STOP, 2, 0
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0D
    cut_chg                 6
    set                     FG_STOP, 7, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -21460, -8800, -19702
    member_set              M_SCE_FREE0, 1
    member_set              M_Y_SPEED, 150
    gosub                   main_0E
    evt_next
    nop
    sleep                   10, 6
    se_on                   2, 33, 0, -21854, -5200, -17186
    nop_8a                  0, 5, 0, 0, 0
    nop_8b                  255, 4, 0, 0, 0
    nop_8c                  0, 250, 50, 10, 0, 5, 0
    nop_8b                  255, 4, 0, 15, 0
    nop_8c                  0, 250, 50, 5, 0, 19, 0
    nop_8a                  0, 1, 0, 15, 0
    nop_8a                  0, 1, 0, 18, 0
    nop_8a                  0, 1, 0, 20, 0
    nop_8a                  0, 1, 0, 24, 0
    nop_8a                  0, 1, 0, 28, 0
    nop_8a                  0, 1, 0, 35, 0
    nop_8a                  0, 1, 0, 45, 0
    nop_8a                  0, 1, 0, 55, 0
    se_on                   3, 8, 3, 0, 0, 0
    gosub                   main_0F
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -21752, -17097
    plc_rot                 0, 256
    sleep                   10, 2
    work_set                WK_PLAYER, 0
    nop
    plc_neck                5, 3, 0, 0, 96, 96
    plc_dest                0, 5, 32, -21752, -17097
    sleep                   10, 3
    if                      0, off_1EB4
    ck                      FG_COMMON, 43, 0
    cut_chg                 2
    else                    0, off_1EB8

off_1EB4:
    cut_chg                 12
    nop
    nop

off_1EB8:
    set                     FG_PBF02, 2, 0
    set                     FG_PBF0C, 2, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_Y_SPEED, 100
    pos_set                 0, -21753, -4800, -17097
    set                     FG_STATUS, 27, 1
    set                     FG_STOP, 7, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    work_set                WK_PLAYER, 0
    plc_motion              0, 15, 0
    flr_set                 1, 1
    sleep                   10, 7
    work_set                WK_PLAYER, 0
    plc_stop
    se_on                   2, 266, 0, -21854, 0, -17186
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    plc_stop
    sleep                   10, 2
    sce_espr_on             0, 1297, 0, 8192, -22752, -8200, -22286, 1024
    sleep                   10, 1
    work_set                WK_PLAYER, 0
    nop
    plc_flg                 0, 16
    sleep                   10, 2
    se_on                   2, 266, 0, -21854, 0, -17186
    sleep                   10, 3
    sce_espr_on             0, 1298, 0, 4096, -19752, -7200, -19286, 1024
    sleep                   10, 10
    sce_espr_on             0, 1297, 0, 12288, -21452, -8500, -14986, 0
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 8, 32, -21633, -31775
    plc_flg                 0, 16
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 32, -21752, -17097
    plc_rot                 0, 256
    sleep                   10, 3
    work_set                WK_PLAYER, 0
    plc_motion              0, 17, 0
    nop
    plc_flg                 0, 16
    sleep                   10, 25
    se_on                   3, 8, 3, 0, 0, 0
    sleep                   10, 7
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 8, 32, -21633, -31775
    plc_flg                 0, 16
    sleep                   10, 40
    if                      0, off_1FCC
    ck                      FG_COMMON, 43, 0
    cut_chg                 4
    else                    0, off_1FD0

off_1FCC:
    cut_chg                 14
    nop
    nop

off_1FD0:
    cut_replace             2, 4
    cut_replace             12, 14
    cut_replace             1, 7
    set                     FG_STATUS, 27, 0
    cut_auto                1
    work_set                WK_ENEMY, ID_EM_0
    member_set              M_SCE_FREE0, 1
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0E
    sce_espr_on             0, 1299, 0, 4096, -21752, -8200, -21286, 0
    sce_espr_on             0, 1297, 0, 8192, -22752, -7200, -21286, 0
    sce_espr_on             0, 1297, 0, 4096, -22752, -8200, -21286, 0
    sce_espr_on             0, 1298, 0, 16384, -23752, -6200, -21286, 0
    sce_espr_on             0, 1298, 0, 8192, -21752, -7200, -22286, 0
    sce_espr_on             0, 1296, 0, 12288, -21752, -8200, -23286, 0
    sce_espr_on             0, 1296, 0, 4096, -21752, -6200, -23286, 0
    sce_espr_on             0, 1299, 0, 8192, -21752, -8200, -24286, 0
    sce_espr_on             0, 1296, 0, 12288, -20752, -9200, -21286, 0
    sce_espr_on             0, 1297, 0, 8192, -19752, -8200, -21286, 0
    sce_espr_on             0, 1297, 0, 4096, -19752, -6200, -21286, 0
    sce_espr_on             0, 1298, 0, 16384, -18752, -7200, -21286, 0
    sce_espr_on             0, 1297, 0, 12288, -20752, -8200, -20286, 0
    sce_espr_on             0, 1299, 0, 4096, -20752, -9200, -19286, 0
    sce_espr_on             0, 1299, 0, 4096, -20752, -7200, -19286, 0
    sce_espr_on             0, 1298, 0, 16384, -20752, -10200, -18286, 0
    sce_espr_on             0, 1297, 0, 4096, -20752, -7200, -20386, 0
    sce_espr_on             0, 1299, 0, 12288, -22752, -9200, -19286, 0
    sce_espr_on             0, 1299, 0, 4096, -20752, -6200, -18286, 0
    sce_espr_on             0, 1298, 0, 16384, -21752, -8200, -17286, 0
    sce_espr_on             0, 1296, 0, 20480, -20752, -9200, -17286, 0
    sce_espr_on             0, 1297, 0, 16384, -23752, -9200, -14286, 0
    sce_espr_on             0, 1296, 0, 8192, -21752, -8200, -21286, 0
    sce_espr_on             0, 1297, 0, 4096, -22752, -7200, -22286, 1024
    sce_espr_on             0, 1297, 0, 4096, -22752, -6200, -22286, 1024
    sce_espr_on             0, 1298, 0, 12288, -23752, -9200, -23286, 2048
    sce_espr_on             0, 1297, 0, 4096, -21752, -8200, -20286, 0
    sce_espr_on             0, 1298, 0, 12288, -22752, -9200, -19286, 1024
    sce_espr_on             0, 1298, 0, 4096, -22752, -7200, -19286, 1024
    sce_espr_on             0, 1299, 0, 16384, -23752, -8000, -18286, 2048
    sce_espr_on             0, 1298, 0, 4096, -21752, -6200, -20286, 0
    sce_espr_on             0, 1298, 0, 8192, -23752, -9200, -19286, 1024
    sce_espr_on             0, 1298, 0, 4096, -22552, -6200, -18860, 1024
    sce_espr_on             0, 1299, 0, 12288, -23752, -9000, -17286, 2048
    sce_espr_on             0, 1299, 0, 4096, -20752, -9020, -21286, 3072
    sce_espr_on             0, 1297, 0, 8192, -19752, -8200, -22286, 2048
    sce_espr_on             0, 1297, 0, 4096, -19752, -10200, -22286, 2048
    sce_espr_on             0, 1298, 0, 16384, -18752, -9200, -23286, 0
    sce_espr_on             0, 1299, 0, 4096, -20752, -9200, -20286, 0
    sce_espr_on             0, 1298, 0, 16384, -19752, -8200, -19286, 1024
    sce_espr_on             0, 1298, 0, 4096, -19752, -7200, -19286, 1024
    sce_espr_on             0, 1297, 0, 8192, -18752, -8200, -18286, 3072
    sce_espr_on             0, 1299, 0, 4096, -20752, -9200, -21286, 0
    sce_espr_on             0, 1298, 0, 12288, -18752, -8200, -18286, 1024
    sce_espr_on             0, 1297, 0, 4096, -19752, -7200, -19586, 1024
    sce_espr_on             0, 1297, 0, 20480, -18752, -8200, -17286, 3072
    evt_end                 0

.proc main_0F
    sce_espr_on             0, 1299, 0, 16384, -22352, -8200, -20286, 0
    sce_espr_on             0, 1297, 0, 8192, -23352, -7500, -22286, 0
    sce_espr_on             0, 1298, 0, 16384, -23352, -9200, -23286, 0
    sce_espr_on             0, 1298, 0, 20480, -23252, -16664, -22286, 0
    sce_espr_on             0, 1296, 0, 12288, -19752, -8200, -22286, 0
    sce_espr_on             0, 1297, 0, 8192, -17752, -9200, -22386, 0
    sce_espr_on             0, 1297, 0, 4096, -18752, -8200, -21586, 0
    sce_espr_on             0, 1298, 0, 16384, -18952, -7200, -21786, 0
    sce_espr_on             0, 1298, 0, 16384, -22752, -9200, -23286, 0
    sce_espr_on             0, 1296, 0, 20480, -23752, -8200, -24286, 0
    sce_espr_on             0, 1296, 0, 12288, -20752, -7200, -25860, 0
    sce_espr_on             0, 1299, 0, 16384, -21152, -7200, -22286, 0
    sce_espr_on             0, 1296, 0, 20480, -21752, -9200, -21786, 0
    sce_espr_on             0, 1297, 0, 8192, -23752, -8200, -22586, 1024
    sce_espr_on             0, 1297, 0, 8192, -21752, -7000, -21286, 1024
    sce_espr_on             0, 1298, 0, 20480, -23752, -8200, -24286, 2048
    sce_espr_on             0, 1299, 0, 12288, -19752, -8020, -21286, 3072
    sce_espr_on             0, 1297, 0, 8192, -17752, -9200, -22286, 2048
    sce_espr_on             0, 1297, 0, 20480, -18752, -9200, -22286, 2048
    sce_espr_on             0, 1298, 0, 16384, -17752, -7200, -23286, 0
    sce_espr_on             0, 1297, 0, 12288, -21752, -9200, -17286, 0
    sce_espr_on             0, 1299, 0, 12288, -22752, -8100, -18286, 0
    sce_espr_on             0, 1299, 0, 20480, -20552, -8200, -16286, 0
    sce_espr_on             0, 1298, 0, 4096, -20152, -7200, -18286, 0
    sce_espr_on             0, 1297, 0, 12288, -21752, -9100, -15386, 0
    sce_espr_on             0, 1299, 0, 20480, -24752, -9400, -17286, 0
    sce_espr_on             0, 1299, 0, 8192, -21752, -8500, -15286, 0
    sce_espr_on             0, 1298, 0, 16384, -20752, -7600, -14286, 0
    sce_espr_on             0, 1296, 0, 20480, -21752, -9200, -14860, 0
    sce_espr_on             0, 1297, 0, 8192, -22752, -9100, -13286, 0
    sce_espr_on             0, 1297, 0, 16384, -24752, -9200, -15886, 0
    sce_espr_on             0, 1298, 0, 20480, -22552, -8200, -17886, 1024
    sce_espr_on             0, 1298, 0, 12288, -25752, -9200, -15286, 1024
    sce_espr_on             0, 1299, 0, 8192, -23752, -8800, -18786, 2048
    sce_espr_on             0, 1298, 0, 16384, -24552, -9200, -15886, 0
    sce_espr_on             0, 1298, 0, 20480, -23352, -9200, -17886, 1024
    sce_espr_on             0, 1298, 0, 16384, -22852, -9200, -16360, 1024
    sce_espr_on             0, 1299, 0, 8192, -23552, -8000, -18786, 2048
    sce_espr_on             0, 1299, 0, 4096, -20752, -8200, -18286, 0
    sce_espr_on             0, 1298, 0, 16384, -19752, -9500, -15286, 1024
    sce_espr_on             0, 1298, 0, 20480, -19752, -7200, -16286, 1024
    sce_espr_on             0, 1297, 0, 8192, -18752, -9200, -18286, 3072
    sce_espr_on             0, 1299, 0, 4096, -20752, -9200, -17286, 0
    sce_espr_on             0, 1298, 0, 12288, -18752, -8200, -18286, 1024
    sce_espr_on             0, 1297, 0, 8192, -19752, -9200, -16586, 1024
    sce_espr_on             0, 1297, 0, 20480, -18752, -9200, -17286, 3072
    sce_espr_on             0, 1296, 0, 12288, -21752, -12200, -23286, 0
    sce_espr_on             0, 1298, 0, 12288, -18752, -15200, -21286, 0
    evt_end                 0
