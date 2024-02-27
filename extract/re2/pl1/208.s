.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16157, -14918, 2060, 1680, -15260, 0, -13252, 2560, 1, 7, 3, 0, 0, 0, 0, 0, UNLOCKED, 0
    aot_set                 ID_AOT_1, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15930, -22010, 1800, 2430, 0, 0, 1, 0, 0, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -14140, -1480, -20710, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_2, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19754, -20504, 1100, 1400, 2, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -19054, -1480, -18454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    door_aot_se             ID_AOT_30, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1, 1, -21095, 0, -15462, 2992, 1, 8, 0, 0, 50, 0, 0, 0, UNLOCKED, 0
    item_aot_set            ID_AOT_31, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19694, -19004, 1200, 1500, ITEM_INKRIBBON, 3, 141, ID_OBJ_2, IF_DEFAULT
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main
    aot_set                 ID_AOT_3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15306, -24197, 1800, 1760, ID_MSG_0, 0, 0, 0, 0, 255
    aot_set                 ID_AOT_5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22176, -15031, 2500, 1800, 255, 0, I_GOSUB, main_0D, 0, 0
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_DEVELOPEDFILMA, 1, 125, ID_OBJ_255, IF_DEFAULT
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_DEVELOPEDFILMB, 1, 126, ID_OBJ_255, IF_DEFAULT
    item_aot_set            ID_AOT_8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_DEVELOPEDFILMC, 1, 127, ID_OBJ_255, IF_DEFAULT
    aot_set                 ID_AOT_9, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -15306, -24197, 1800, 1760, 10, 0, ITEM_FILMA, 0, aot, 0
    aot_set                 ID_AOT_10, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -15306, -24197, 1800, 1760, 10, 0, ITEM_FILMB, 0, aot, 0
    aot_set                 ID_AOT_11, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -15306, -24197, 1800, 1760, 10, 0, ITEM_FILMC, 0, aot, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -18250, -1580, -19281, 0, 766, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18492, -19982, 1000, 1100, ITEM_OPERATIONREPORT2, 1, 25, ID_OBJ_3, IF_DEFAULT
    if                      0, off_14F0
    ck                      FG_STATUS, F_PLAYER, 1
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, 20000, 20000, 20000, 2048, -3520, -1792, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_12, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_COLTSAA, 6, 158, ID_OBJ_4, IF_DEFAULT
    endif
    nop

off_14F0:
    if                      0, off_1510
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15280, -18310, 1100, 1500, ITEM_HANDGUNAMMO, 15, 216, ID_OBJ_255, IF_DEFAULT
    endif
    nop

off_1510:
    item_aot_set            ID_AOT_14, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_FILMD, 1, 159, ID_OBJ_255, IF_DEFAULT
    item_aot_set            ID_AOT_16, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_DEVELOPEDFILMD, 1, 160, ID_OBJ_255, IF_DEFAULT
    aot_set                 ID_AOT_15, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -15306, -24197, 1800, 1760, 10, 0, ITEM_FILMD, 0, aot, 0
    if                      0, off_1572
    ck                      FG_STATUS, F_PLAYER, 1
    if                      0, off_1570
    ck                      FG_COMMON, 173, 1
    if                      0, off_156E
    ck                      FG_SCENARIO, 37, 0
    evt_exec                255, I_GOSUB, main_07
    endif
    nop

off_156E:
    endif
    nop

off_1570:
    endif
    nop

off_1572:
    evt_end                 0

.proc aot
    if                      0, off_1584
    cmp                     0, V_USED_ITEM, CMP_EQ, 68
    evt_exec                255, I_GOSUB, main_09
    endif
    nop

off_1584:
    if                      0, off_1594
    cmp                     0, V_USED_ITEM, CMP_EQ, 69
    evt_exec                255, I_GOSUB, main_0A
    endif
    nop

off_1594:
    if                      0, off_15A4
    cmp                     0, V_USED_ITEM, CMP_EQ, 70
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_15A4:
    if                      0, off_15B4
    cmp                     0, V_USED_ITEM, CMP_EQ, 80
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_15B4:
    evt_end                 0

.proc main_02
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    if                      0, off_15DE
    cmp                     0, V_04, CMP_GE, 50
    if                      0, off_15DC
    ck                      FG_ITEM, 159, 0
    evt_exec                255, I_GOSUB, main_03
    endif
    nop

off_15DC:
    endif
    nop

off_15DE:
    evt_end                 0

.proc main_03
    se_on                   2, 268, 1, 0, 0, 0
    aot_on                  ID_AOT_14
    evt_end                 0

.proc main_04
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    cut_chg                 5
    sleep                   10, 30
    cut_chg                 4
    cut_auto                1
    aot_reset               ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    evt_end                 0

.proc main_05
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    if                      0, off_162C
    cmp                     0, V_04, CMP_EQ, 100
    gosub                   main_06
    endif
    nop

off_162C:
    evt_end                 0

.proc main_06
    set                     FG_STOP, 7, 1
    sce_fade_set            2, 2, 7, 0, 8
    sleep                   10, 15
    sce_fade_set            1, 2, 7, 0, 248
    evt_next
    cut_chg                 0
    nop
    sleep                   10, 30
    sce_fade_set            1, 2, 7, 0, 8
    sleep                   10, 15
    sce_fade_set            2, 2, 7, 0, 248
    evt_next
    cut_old
    cut_auto                1
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_07
    set                     FG_STOP, 7, 1
    cut_chg                 7
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    pos_set                 0, -20206, -500, -13547
    set                     FG_SCENARIO, 37, 1
    evt_next
    nop
    message_on              0, ID_MSG_8, 0, 0, 255
    evt_next
    aot_on                  ID_AOT_12
    evt_next
    cut_old
    nop
    if                      0, off_169E
    ck                      FG_ITEM, 158, 0
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    pos_set                 0, 20000, 20000, 20000
    endif
    nop

off_169E:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_08
    aot_reset               ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 113, 0, 1, 0, 25, 0
    se_on                   2, 268, 1, 0, 0, 0
    aot_on                  ID_AOT_4
    evt_next
    nop
    if                      0, off_16D2
    ck                      FG_ITEM, 25, 0
    aot_reset               ID_AOT_4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_08, 0, 0
    endif
    nop

off_16D2:
    evt_end                 0

.proc main_09
    set                     FG_STOP, 7, 1
    sleep                   10, 20
    sce_item_lost           ITEM_FILMA
    aot_on                  ID_AOT_6
    evt_next
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_0A
    set                     FG_STOP, 7, 1
    sleep                   10, 20
    sce_item_lost           ITEM_FILMB
    aot_on                  ID_AOT_7
    evt_next
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_0B
    set                     FG_STOP, 7, 1
    sleep                   10, 20
    sce_item_lost           ITEM_FILMC
    aot_on                  ID_AOT_8
    evt_next
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_0C
    set                     FG_STOP, 7, 1
    sleep                   10, 20
    sce_item_lost           ITEM_FILMD
    aot_on                  ID_AOT_16
    evt_next
    set                     FG_STOP, 7, 0
    nop
    evt_end                 0

.proc main_0D
    set                     FG_STOP, 7, 1
    if                      0, off_1796
    ck                      FG_COMMON, 175, 0
    if                      0, off_1788
    keep_item_ck            ITEM_SPECIALKEY
    message_on              0, ID_MSG_2, 0, 0, 255
    evt_next
    nop
    if                      0, off_1776
    ck                      FG_MESSAGE, F_QUESTION, 0
    sce_item_lost           ITEM_SPECIALKEY
    set                     FG_COMMON, 175, 1
    message_on              0, ID_MSG_3, 0, 0, 255
    se_on                   2, 295, 1, 0, 0, 0
    evt_next
    nop
    if                      0, off_176E
    ck                      FG_STATUS, F_PLAYER, 0
    gosub                   main_0E
    else                    0, off_1772

off_176E:
    gosub                   main_0F
    nop
    nop

off_1772:
    else                    0, off_1784

off_1776:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_1784:
    else                    0, off_1792

off_1788:
    message_on              0, ID_MSG_1, 0, 0, 255
    evt_next
    nop
    nop
    nop

off_1792:
    else                    0, off_17AA

off_1796:
    if                      0, off_17A4
    ck                      FG_STATUS, F_PLAYER, 0
    gosub                   main_0E
    else                    0, off_17A8

off_17A4:
    gosub                   main_0F
    nop
    nop

off_17A8:
    nop
    nop

off_17AA:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0E
    set                     FG_STOP, 7, 1
    sce_fade_set            2, 2, 7, 0, 8
    sleep                   10, 15
    if                      0, off_17CC
    ck                      FG_ZAPPING, 5, 1
    cut_chg                 9
    else                    0, off_17E0

off_17CC:
    if                      0, off_17DA
    ck                      FG_ZAPPING, 15, 1
    cut_chg                 10
    else                    0, off_17DE

off_17DA:
    cut_chg                 8
    nop
    nop

off_17DE:
    nop
    nop

off_17E0:
    se_on                   2, 296, 1, 0, 0, 0
    sce_fade_set            2, 2, 7, 0, 248
    sleep                   10, 15
    if                      0, off_187A
    ck                      FG_COMMON, 173, 0
    message_on              0, ID_MSG_4, 0, 0, 255
    evt_next
    nop
    if                      0, off_1866
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    message_on              0, ID_MSG_5, 0, 0, 255
    evt_next
    nop
    se_on                   4, 6, 0, 0, 0, 0
    if                      0, off_1850
    ck                      FG_MESSAGE, F_QUESTION, 0
    if                      0, off_1848
    ck                      FG_MESSAGE, 30, 0
    set                     FG_COMMON, 173, 1
    gosub                   main_11
    else                    0, off_184C

off_1848:
    gosub                   main_15
    nop
    nop

off_184C:
    else                    0, off_1862

off_1850:
    if                      0, off_1860
    ck                      FG_MESSAGE, 30, 0
    set                     FG_COMMON, 173, 1
    gosub                   main_10
    endif
    nop

off_1860:
    nop
    nop

off_1862:
    else                    0, off_1876

off_1866:
    se_on                   4, 5, 0, 0, 0, 0
    gosub                   main_15
    nop
    nop

off_1876:
    else                    0, off_18F6

off_187A:
    message_on              0, ID_MSG_6, 0, 0, 255
    evt_next
    nop
    if                      0, off_18CC
    ck                      FG_ZAPPING, 5, 0
    if                      0, off_18B8
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    if                      0, off_18AC
    ck                      FG_MESSAGE, 30, 0
    gosub                   main_10
    else                    0, off_18B4

off_18AC:
    set                     FG_COMMON, 173, 0
    gosub                   main_12
    nop
    nop

off_18B4:
    else                    0, off_18C8

off_18B8:
    se_on                   4, 5, 0, 0, 0, 0
    gosub                   main_15
    nop
    nop

off_18C8:
    else                    0, off_18F4

off_18CC:
    if                      0, off_18EE
    ck                      FG_MESSAGE, F_QUESTION, 0
    if                      0, off_18E2
    ck                      FG_MESSAGE, 30, 0
    gosub                   main_11
    else                    0, off_18EA

off_18E2:
    set                     FG_COMMON, 173, 0
    gosub                   main_12
    nop
    nop

off_18EA:
    else                    0, off_18F2

off_18EE:
    gosub                   main_15
    nop
    nop

off_18F2:
    nop
    nop

off_18F4:
    nop
    nop

off_18F6:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_0F
    set                     FG_STOP, 7, 1
    sce_fade_set            2, 2, 7, 0, 8
    sleep                   10, 15
    if                      0, off_1918
    ck                      FG_ZAPPING, 6, 1
    cut_chg                 7
    else                    0, off_191C

off_1918:
    cut_chg                 6
    nop
    nop

off_191C:
    if                      0, off_1932
    ck                      FG_ITEM, 158, 0
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    pos_set                 0, -20206, -500, -13547
    endif
    nop

off_1932:
    se_on                   2, 296, 1, 0, 0, 0
    sce_fade_set            2, 2, 7, 0, 248
    sleep                   10, 15
    if                      0, off_198A
    ck                      FG_COMMON, 173, 0
    message_on              0, ID_MSG_7, 0, 0, 255
    evt_next
    nop
    if                      0, off_1976
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    set                     FG_COMMON, 173, 1
    gosub                   main_13
    else                    0, off_1986

off_1976:
    se_on                   4, 5, 0, 0, 0, 0
    gosub                   main_15
    nop
    nop

off_1986:
    else                    0, off_19D6

off_198A:
    if                      0, off_199E
    ck                      FG_ITEM, 158, 0
    message_on              0, ID_MSG_8, 0, 0, 255
    evt_next
    aot_on                  ID_AOT_12
    evt_next
    endif
    nop

off_199E:
    message_on              0, ID_MSG_9, 0, 0, 255
    evt_next
    nop
    if                      0, off_19C4
    ck                      FG_MESSAGE, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    set                     FG_COMMON, 173, 0
    gosub                   main_14
    else                    0, off_19D4

off_19C4:
    se_on                   4, 5, 0, 0, 0, 0
    gosub                   main_15
    nop
    nop

off_19D4:
    nop
    nop

off_19D6:
    set                     FG_STOP, 7, 0
    evt_end                 0

.proc main_10
    set                     FG_ZAPPING, 5, 1
    set                     FG_ZAPPING, 15, 0
    save                    V_NEXT_PLD, 8
    aot_on                  ID_AOT_30
    evt_end                 0

.proc main_11
    set                     FG_ZAPPING, 15, 1
    set                     FG_ZAPPING, 5, 0
    save                    V_NEXT_PLD, 10
    aot_on                  ID_AOT_30
    evt_end                 0

.proc main_12
    set                     FG_ZAPPING, 15, 0
    set                     FG_ZAPPING, 5, 0
    if                      0, off_1A26
    ck                      FG_ZAPPING, 1, 0
    if                      0, off_1A1C
    ck                      FG_COMMON, 52, 0
    save                    V_NEXT_PLD, 0
    else                    0, off_1A22

off_1A1C:
    save                    V_NEXT_PLD, 4
    nop
    nop

off_1A22:
    else                    0, off_1A3E

off_1A26:
    if                      0, off_1A36
    ck                      FG_COMMON, 52, 0
    save                    V_NEXT_PLD, 2
    else                    0, off_1A3C

off_1A36:
    save                    V_NEXT_PLD, 6
    nop
    nop

off_1A3C:
    nop
    nop

off_1A3E:
    aot_on                  ID_AOT_30
    evt_end                 0

.proc main_13
    set                     FG_ZAPPING, 6, 1
    save                    V_NEXT_PLD, 9
    aot_on                  ID_AOT_30
    evt_end                 0

.proc main_14
    set                     FG_ZAPPING, 6, 0
    if                      0, off_1A74
    ck                      FG_ZAPPING, 1, 0
    if                      0, off_1A6A
    ck                      FG_COMMON, 109, 0
    save                    V_NEXT_PLD, 1
    else                    0, off_1A70

off_1A6A:
    save                    V_NEXT_PLD, 5
    nop
    nop

off_1A70:
    else                    0, off_1A8C

off_1A74:
    if                      0, off_1A84
    ck                      FG_COMMON, 109, 0
    save                    V_NEXT_PLD, 3
    else                    0, off_1A8A

off_1A84:
    save                    V_NEXT_PLD, 7
    nop
    nop

off_1A8A:
    nop
    nop

off_1A8C:
    aot_on                  ID_AOT_30
    evt_end                 0

.proc main_15
    sce_fade_set            2, 2, 7, 0, 8
    sleep                   10, 7
    if                      0, off_1ABA
    ck                      FG_STATUS, F_PLAYER, 1
    if                      0, off_1AB8
    ck                      FG_ITEM, 158, 0
    work_set                WK_OBJECT, ID_OBJ_4
    nop
    pos_set                 0, 20000, 20000, 20000
    endif
    nop

off_1AB8:
    endif
    nop

off_1ABA:
    cut_old
    nop
    sce_fade_set            2, 2, 7, 0, 248
    sleep                   10, 15
    evt_end                 0
