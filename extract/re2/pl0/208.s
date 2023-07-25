.version 2

.init
.proc init
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -16157, -14918, 2060, 1680, -15260, 0, -13252, 2560, 1, 7, 3, 0, 0, 0, 0, 0, UNLOCKED, 0
    aot_set                 1, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15930, -22010, 1800, 2430, 0, 0, 1, 0, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -14140, -1480, -20710, 0, -2048, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 2, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19754, -20504, 1100, 1400, 2, 0, 0, 0, 0, 0
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -19054, -1480, -18454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    door_aot_se             30, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1, 1, -21095, 0, -15462, 2992, 1, 8, 0, 0, 50, 0, 0, 0, UNLOCKED, 0
    item_aot_set            31, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19694, -19004, 1200, 1500, ITEM_INKRIBBON, 3, 141, 2, 0
    evt_end                 0

.main
.proc main
    aot_set                 3, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15306, -24197, 1800, 1760, 0, 0, 0, 0, 0, 255
    aot_set                 5, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22176, -15031, 2500, 1800, 255, 0, I_GOSUB, main_0D, 0, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_73, 1, 125, 255, 0
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_74, 1, 126, 255, 0
    item_aot_set            8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_75, 1, 127, 255, 0
    aot_set                 9, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -15306, -24197, 1800, 1760, 10, 0, ITEM_FILMA, 0, aot, 0
    aot_set                 10, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -15306, -24197, 1800, 1760, 10, 0, ITEM_FILMB, 0, aot, 0
    aot_set                 11, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -15306, -24197, 1800, 1760, 10, 0, ITEM_FILMC, 0, aot, 0
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 10, 16, -18250, -1580, -19281, 0, 766, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18492, -19982, 1000, 1100, ITEM_71, 1, 25, 3, 0
    if                      0, off_14E8
    ck                      FG_GAME, F_PLAYER, 1
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, 20000, 20000, 20000, 2048, -3520, -1792, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            12, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_COLTSAA, 6, 158, 4, 0
    endif
    nop

off_14E8:
    if                      0, off_1508
    ck                      FG_0, F_DIFFICULT, 1
    item_aot_set            13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15280, -18310, 1100, 1500, ITEM_HANDGUNAMMO, 15, 216, 255, 0
    endif
    nop

off_1508:
    item_aot_set            14, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_FILMD, 1, 159, 255, 0
    item_aot_set            16, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 20000, 20000, 1000, 1000, ITEM_7B, 1, 160, 255, 0
    aot_set                 15, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -15306, -24197, 1800, 1760, 10, 0, ITEM_FILMD, 0, aot, 0
    if                      0, off_156A
    ck                      FG_GAME, F_PLAYER, 1
    if                      0, off_1568
    ck                      FG_GENERAL_1, 173, 1
    if                      0, off_1566
    ck                      FG_3, 37, 0
    evt_exec                255, I_GOSUB, main_07
    endif
    nop

off_1566:
    endif
    nop

off_1568:
    endif
    nop

off_156A:
    evt_end                 0

.proc aot
    if                      0, off_157C
    cmp                     0, V_USED_ITEM, CMP_EQ, 68
    evt_exec                255, I_GOSUB, main_09
    endif
    nop

off_157C:
    if                      0, off_158C
    cmp                     0, V_USED_ITEM, CMP_EQ, 69
    evt_exec                255, I_GOSUB, main_0A
    endif
    nop

off_158C:
    if                      0, off_159C
    cmp                     0, V_USED_ITEM, CMP_EQ, 70
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_159C:
    if                      0, off_15AC
    cmp                     0, V_USED_ITEM, CMP_EQ, 80
    evt_exec                255, I_GOSUB, main_0C
    endif
    nop

off_15AC:
    evt_end                 0

.proc main_02
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    if                      0, off_15D6
    cmp                     0, V_04, CMP_GE, 50
    if                      0, off_15D4
    ck                      FG_ITEM, 159, 0
    evt_exec                255, I_GOSUB, main_03
    endif
    nop

off_15D4:
    endif
    nop

off_15D6:
    evt_end                 0

.proc main_03
    se_on                   2, 268, 1, 0, 0, 0
    aot_on                  14
    evt_end                 0

.proc main_04
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    cut_chg                 5
    sleep                   10, 30
    cut_chg                 4
    cut_auto                1
    aot_reset               3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    evt_end                 0

.proc main_05
    copy                    V_TEMP, V_04
    nop
    calc                    0, OP_ADD, V_TEMP, 1
    copy                    V_04, V_TEMP
    nop
    if                      0, off_1624
    cmp                     0, V_04, CMP_EQ, 100
    gosub                   main_06
    endif
    nop

off_1624:
    evt_end                 0

.proc main_06
    set                     FG_STATE, 7, 1
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
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_07
    set                     FG_STATE, 7, 1
    cut_chg                 7
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -20206, -500, -13547
    set                     FG_3, 37, 1
    evt_next
    nop
    message_on              0, 8, 0, 0, 255
    evt_next
    aot_on                  12
    evt_next
    cut_old
    nop
    if                      0, off_1696
    ck                      FG_ITEM, 158, 0
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, 20000, 20000, 20000
    endif
    nop

off_1696:
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_08
    aot_reset               4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 113, 0, 1, 0, 25, 0
    se_on                   2, 268, 1, 0, 0, 0
    aot_on                  4
    evt_next
    nop
    if                      0, off_16CA
    ck                      FG_ITEM, 25, 0
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_08, 0, 0
    endif
    nop

off_16CA:
    evt_end                 0

.proc main_09
    set                     FG_STATE, 7, 1
    sleep                   10, 20
    sce_item_lost           ITEM_FILMA
    aot_on                  6
    evt_next
    set                     FG_STATE, 7, 0
    nop
    evt_end                 0

.proc main_0A
    set                     FG_STATE, 7, 1
    sleep                   10, 20
    sce_item_lost           ITEM_FILMB
    aot_on                  7
    evt_next
    set                     FG_STATE, 7, 0
    nop
    evt_end                 0

.proc main_0B
    set                     FG_STATE, 7, 1
    sleep                   10, 20
    sce_item_lost           ITEM_FILMC
    aot_on                  8
    evt_next
    set                     FG_STATE, 7, 0
    nop
    evt_end                 0

.proc main_0C
    set                     FG_STATE, 7, 1
    sleep                   10, 20
    sce_item_lost           ITEM_FILMD
    aot_on                  16
    evt_next
    set                     FG_STATE, 7, 0
    nop
    evt_end                 0

.proc main_0D
    set                     FG_STATE, 7, 1
    if                      0, off_178E
    ck                      FG_GENERAL_1, 175, 0
    if                      0, off_1780
    keep_item_ck            ITEM_SPECIALKEY
    message_on              0, 2, 0, 0, 255
    evt_next
    nop
    if                      0, off_176E
    ck                      FG_INPUT, F_QUESTION, 0
    sce_item_lost           ITEM_SPECIALKEY
    set                     FG_GENERAL_1, 175, 1
    message_on              0, 3, 0, 0, 255
    se_on                   2, 295, 1, 0, 0, 0
    evt_next
    nop
    if                      0, off_1766
    ck                      FG_GAME, F_PLAYER, 0
    gosub                   main_0E
    else                    0, off_176A

off_1766:
    gosub                   main_0F
    nop
    nop

off_176A:
    else                    0, off_177C

off_176E:
    se_on                   4, 5, 0, 0, 0, 0
    nop
    nop

off_177C:
    else                    0, off_178A

off_1780:
    message_on              0, 1, 0, 0, 255
    evt_next
    nop
    nop
    nop

off_178A:
    else                    0, off_17A2

off_178E:
    if                      0, off_179C
    ck                      FG_GAME, F_PLAYER, 0
    gosub                   main_0E
    else                    0, off_17A0

off_179C:
    gosub                   main_0F
    nop
    nop

off_17A0:
    nop
    nop

off_17A2:
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_0E
    set                     FG_STATE, 7, 1
    sce_fade_set            2, 2, 7, 0, 8
    sleep                   10, 15
    if                      0, off_17C4
    ck                      FG_LOCK, 5, 1
    cut_chg                 9
    else                    0, off_17D8

off_17C4:
    if                      0, off_17D2
    ck                      FG_LOCK, 15, 1
    cut_chg                 10
    else                    0, off_17D6

off_17D2:
    cut_chg                 8
    nop
    nop

off_17D6:
    nop
    nop

off_17D8:
    se_on                   2, 296, 1, 0, 0, 0
    sce_fade_set            2, 2, 7, 0, 248
    sleep                   10, 15
    if                      0, off_1872
    ck                      FG_GENERAL_1, 173, 0
    message_on              0, 4, 0, 0, 255
    evt_next
    nop
    if                      0, off_185E
    ck                      FG_INPUT, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    message_on              0, 5, 0, 0, 255
    evt_next
    nop
    se_on                   4, 6, 0, 0, 0, 0
    if                      0, off_1848
    ck                      FG_INPUT, F_QUESTION, 0
    if                      0, off_1840
    ck                      FG_INPUT, 30, 0
    set                     FG_GENERAL_1, 173, 1
    gosub                   main_11
    else                    0, off_1844

off_1840:
    gosub                   main_15
    nop
    nop

off_1844:
    else                    0, off_185A

off_1848:
    if                      0, off_1858
    ck                      FG_INPUT, 30, 0
    set                     FG_GENERAL_1, 173, 1
    gosub                   main_10
    endif
    nop

off_1858:
    nop
    nop

off_185A:
    else                    0, off_186E

off_185E:
    se_on                   4, 5, 0, 0, 0, 0
    gosub                   main_15
    nop
    nop

off_186E:
    else                    0, off_18EE

off_1872:
    message_on              0, 6, 0, 0, 255
    evt_next
    nop
    if                      0, off_18C4
    ck                      FG_LOCK, 5, 0
    if                      0, off_18B0
    ck                      FG_INPUT, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    if                      0, off_18A4
    ck                      FG_INPUT, 30, 0
    gosub                   main_10
    else                    0, off_18AC

off_18A4:
    set                     FG_GENERAL_1, 173, 0
    gosub                   main_12
    nop
    nop

off_18AC:
    else                    0, off_18C0

off_18B0:
    se_on                   4, 5, 0, 0, 0, 0
    gosub                   main_15
    nop
    nop

off_18C0:
    else                    0, off_18EC

off_18C4:
    if                      0, off_18E6
    ck                      FG_INPUT, F_QUESTION, 0
    if                      0, off_18DA
    ck                      FG_INPUT, 30, 0
    gosub                   main_11
    else                    0, off_18E2

off_18DA:
    set                     FG_GENERAL_1, 173, 0
    gosub                   main_12
    nop
    nop

off_18E2:
    else                    0, off_18EA

off_18E6:
    gosub                   main_15
    nop
    nop

off_18EA:
    nop
    nop

off_18EC:
    nop
    nop

off_18EE:
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_0F
    set                     FG_STATE, 7, 1
    sce_fade_set            2, 2, 7, 0, 8
    sleep                   10, 15
    if                      0, off_1910
    ck                      FG_LOCK, 6, 1
    cut_chg                 7
    else                    0, off_1914

off_1910:
    cut_chg                 6
    nop
    nop

off_1914:
    if                      0, off_192A
    ck                      FG_ITEM, 158, 0
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, -20206, -500, -13547
    endif
    nop

off_192A:
    se_on                   2, 296, 1, 0, 0, 0
    sce_fade_set            2, 2, 7, 0, 248
    sleep                   10, 15
    if                      0, off_1982
    ck                      FG_GENERAL_1, 173, 0
    message_on              0, 7, 0, 0, 255
    evt_next
    nop
    if                      0, off_196E
    ck                      FG_INPUT, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    set                     FG_GENERAL_1, 173, 1
    gosub                   main_13
    else                    0, off_197E

off_196E:
    se_on                   4, 5, 0, 0, 0, 0
    gosub                   main_15
    nop
    nop

off_197E:
    else                    0, off_19CE

off_1982:
    if                      0, off_1996
    ck                      FG_ITEM, 158, 0
    message_on              0, 8, 0, 0, 255
    evt_next
    aot_on                  12
    evt_next
    endif
    nop

off_1996:
    message_on              0, 9, 0, 0, 255
    evt_next
    nop
    if                      0, off_19BC
    ck                      FG_INPUT, F_QUESTION, 0
    se_on                   4, 6, 0, 0, 0, 0
    set                     FG_GENERAL_1, 173, 0
    gosub                   main_14
    else                    0, off_19CC

off_19BC:
    se_on                   4, 5, 0, 0, 0, 0
    gosub                   main_15
    nop
    nop

off_19CC:
    nop
    nop

off_19CE:
    set                     FG_STATE, 7, 0
    evt_end                 0

.proc main_10
    set                     FG_LOCK, 5, 1
    set                     FG_LOCK, 15, 0
    save                    V_20, 8
    aot_on                  30
    evt_end                 0

.proc main_11
    set                     FG_LOCK, 15, 1
    set                     FG_LOCK, 5, 0
    save                    V_20, 10
    aot_on                  30
    evt_end                 0

.proc main_12
    set                     FG_LOCK, 15, 0
    set                     FG_LOCK, 5, 0
    if                      0, off_1A1E
    ck                      FG_LOCK, 1, 0
    if                      0, off_1A14
    ck                      FG_GENERAL_1, 52, 0
    save                    V_20, 0
    else                    0, off_1A1A

off_1A14:
    save                    V_20, 4
    nop
    nop

off_1A1A:
    else                    0, off_1A36

off_1A1E:
    if                      0, off_1A2E
    ck                      FG_GENERAL_1, 52, 0
    save                    V_20, 2
    else                    0, off_1A34

off_1A2E:
    save                    V_20, 6
    nop
    nop

off_1A34:
    nop
    nop

off_1A36:
    aot_on                  30
    evt_end                 0

.proc main_13
    set                     FG_LOCK, 6, 1
    save                    V_20, 9
    aot_on                  30
    evt_end                 0

.proc main_14
    set                     FG_LOCK, 6, 0
    if                      0, off_1A6C
    ck                      FG_LOCK, 1, 0
    if                      0, off_1A62
    ck                      FG_GENERAL_1, 109, 0
    save                    V_20, 1
    else                    0, off_1A68

off_1A62:
    save                    V_20, 5
    nop
    nop

off_1A68:
    else                    0, off_1A84

off_1A6C:
    if                      0, off_1A7C
    ck                      FG_GENERAL_1, 109, 0
    save                    V_20, 3
    else                    0, off_1A82

off_1A7C:
    save                    V_20, 7
    nop
    nop

off_1A82:
    nop
    nop

off_1A84:
    aot_on                  30
    evt_end                 0

.proc main_15
    sce_fade_set            2, 2, 7, 0, 8
    sleep                   10, 7
    if                      0, off_1AB2
    ck                      FG_GAME, F_PLAYER, 1
    if                      0, off_1AB0
    ck                      FG_ITEM, 158, 0
    work_set                WK_OBJECT, 4
    nop
    pos_set                 0, 20000, 20000, 20000
    endif
    nop

off_1AB0:
    endif
    nop

off_1AB2:
    cut_old
    nop
    sce_fade_set            2, 2, 7, 0, 248
    sleep                   10, 15
    evt_end                 0
