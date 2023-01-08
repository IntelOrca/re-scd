.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27872, -13809, 1800, 4250, -20453, 0, -23932, -2028, 5, 20, 6, 0, 38, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    gosub                   8
    gosub                   9
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -21816, -144, -8706, 0, -1984, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           5, 0, 0, 0, 0, 0, 0, 10, 16, -21266, -144, -8556, 0, -2112, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            7, SCE_ITEM, SAT_PL, 3, 0, 0, 0, 1, 1, ITEM_EXPLOSIVEROUNDS, 6, 41, 4, 0
    item_aot_set            8, SCE_ITEM, SAT_PL, 3, 0, 0, 0, 1, 1, ITEM_EXPLOSIVEROUNDS, 6, 42, 5, 0
    obj_model_set           6, 0, 128, 20, 0, 0, 0, 0, 16, 0, -20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           7, 0, 0, 0, 0, 0, 0, 0, 16, 0, -20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 1, 1, ITEM_VACCINE, 1, 44, 7, 0
    if                      0, off_2CD6
    ck                      1, 1, 1
    aot_set                 12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -1130, -26260, 2850, 1600, 7, 0, 0, 0, 255, 239
    else                    0, off_2D8E

off_2CD6:
    if                      0, off_2D3C
    ck                      4, 157, 1
    if                      0, off_2D10
    ck                      4, 158, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 0, 18, 0, -20000, 0, 2541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_2D38

off_2D10:
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 0, 18, 1050, -1309, -25437, 2541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_2D38:
    else                    0, off_2D64

off_2D3C:
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 0, 18, 0, -20000, 0, 2541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_2D64:
    aot_set                 4, SCE_FLAG_CHG, SAT_PL | SAT_FRONT, 0, 0, -1130, -26260, 2850, 1600, 10, 0, 81, 0, 1, 0
    aot_set                 12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -1130, -26260, 2850, 1600, 9, 0, 0, 0, 255, 239
    nop
    nop

off_2D8E:
    if                      0, off_2E04
    ck                      4, 157, 1
    if                      0, off_2DD8
    ck                      4, 158, 1
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, 0, -20000, 0
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 1080, -1332, -25568
    aot_reset               12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, 0, 0, 255, 239
    sce_espr_on2            3, 22, 10, 0, 0, 96, 8, 108, 0, 204, 250, 166, 156, 0, 0
    set                     4, 132, 1
    else                    0, off_2DF2

off_2DD8:
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, 1080, -1332, -25568
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 0, -20000, 0
    nop
    nop

off_2DF2:
    sce_espr_on2            1, 22, 18, 0, 0, 0, 9, 194, 1, 176, 250, 166, 156, 0, 0
    endif
    nop

off_2E04:
    if                      0, off_2E26
    ck                      0, 25, 1
    item_aot_set            13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22900, -17000, 2210, 1720, ITEM_FAIDSPRAY, 1, 55, 255, 0
    else                    0, off_2E64

off_2E26:
    item_aot_set            13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22900, -17000, 2210, 1720, ITEM_FAIDSPRAY, 1, 55, 9, 0
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 0, 16, -21780, -1800, -16168, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_2E64:
    if                      0, off_2EAC
    ck                      1, 1, 1
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 0, 16, -3654, -1872, -17226, -64, 1792, 1536, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4210, -18100, 1510, 2120, ITEM_POWERROOMKEY, 1, 43, 8, 128
    else                    0, off_2EEA

off_2EAC:
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 0, 16, -3654, -1872, -17226, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4210, -18100, 1510, 2120, ITEM_UMBRELLAKEYCARD, 2, 43, 3, 224
    nop
    nop

off_2EEA:
    evt_end                 0

.proc main_01
    if                      0, off_2EFE
    cmp                     0, 2, CMP_EQ, 81
    sce_item_lost           81
    evt_exec                255, I_GOSUB, main_03
    endif
    nop

off_2EFE:
    if                      0, off_2F54
    ck                      4, 157, 1
    if                      0, off_2F46
    ck                      4, 158, 1
    if                      0, off_2F24
    ck                      34, 44, 0
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_02, 0, 0
    else                    0, off_2F42

off_2F24:
    aot_reset               4, SCE_AUTO, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    aot_reset               12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 8, 0, 0, 0, 255, 239
    set                     4, 132, 1
    sce_espr_kill2          1
    sce_espr_kill2          3
    nop
    nop

off_2F42:
    else                    0, off_2F52

off_2F46:
    aot_reset               4, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    nop
    nop

off_2F52:
    endif
    nop

off_2F54:
    if                      0, off_2F6C
    ck                      34, 41, 1
    ck                      34, 42, 1
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2F6C:
    if                      0, off_2F98
    ck                      1, 1, 1
    if                      0, off_2F94
    ck                      34, 43, 1
    if                      0, off_2F92
    ck                      4, 194, 0
    sce_bgmtbl_set          0, 18, 6, 11042, 49152
    set                     4, 194, 1
    endif
    nop

off_2F92:
    endif
    nop

off_2F94:
    else                    0, off_2FBA

off_2F98:
    if                      0, off_2FB8
    ck                      34, 43, 1
    if                      0, off_2FB6
    ck                      4, 194, 0
    sce_bgmtbl_set          0, 20, 6, 10769, 49216
    set                     4, 194, 1
    endif
    nop

off_2FB6:
    endif
    nop

off_2FB8:
    nop
    nop

off_2FBA:
    gosub                   10
    evt_end                 0

.proc main_02
    set                     2, 7, 1
    set                     2, 2, 1
    aot_on                  6
    if                      0, off_2FD6
    ck                      34, 44, 0
    sleep                   10, 1
    endif
    nop

off_2FD6:
    set                     2, 7, 0
    set                     2, 2, 0
    evt_end                 0

.proc main_03
    set                     2, 7, 1
    set                     2, 2, 1
    cut_chg                 12
    sleep                   10, 20
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, 1080, -1332, -25568
    se_on                   2, 11, 0, 62, 0, -24200
    sleep                   10, 10
    se_on                   2, 12, 0, 62, 0, -24200
    work_set                WK_OBJECT, 2
    nop
    pos_set                 0, 1050, -709, -24937
    for                     0, off_3048, 50
    member_copy             16, 13
    nop
    calc                    0, OP_SUB, 16, 10
    member_set2             13, 16
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 12
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_3048:
    sleep                   10, 5
    sce_espr_on2            1, 22, 18, 0, 0, 0, 9, 194, 1, 176, 250, 166, 156, 0, 0
    sleep                   10, 30
    cut_chg                 11
    message_on              0, 3, 0, 255, 255
    sleep                   10, 1
    if                      0, off_3146
    ck                      11, 31, 0
    cut_chg                 12
    sleep                   10, 10
    nop_8c                  0, 200, 70, 160, 0, 10, 0
    se_on                   2, 13, 0, 62, 0, -24200
    sce_espr_on2            2, 22, 2, 0, 0, 96, 8, 252, 0, 204, 250, 166, 156, 0, 0
    work_set                WK_OBJECT, 6
    col_chg_set             1, 0, 20, 7
    sleep                   10, 10
    se_on                   2, 14, 0, 62, 0, -24200
    sleep                   10, 110
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, 0, -20000, 0
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 1080, -1332, -25568
    sleep                   10, 30
    sce_espr_kill2          2
    sce_espr_on2            3, 22, 10, 0, 0, 96, 8, 108, 0, 204, 250, 166, 156, 0, 0
    se_on                   2, 15, 0, 62, 0, -24200
    sleep                   10, 10
    work_set                WK_OBJECT, 2
    nop
    se_on                   2, 12, 0, 62, 0, -24200
    pos_set                 0, 1050, -1309, -25437
    for                     0, off_3136, 50
    member_copy             16, 13
    nop
    calc                    0, OP_ADD, 16, 10
    member_set2             13, 16
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 12
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_3136:
    aot_on                  6
    evt_next
    set                     4, 158, 1
    nop
    sleep                   10, 30
    cut_chg                 11
    endif
    nop

off_3146:
    set                     4, 157, 1
    set                     2, 7, 0
    set                     2, 2, 0
    cut_auto                1
    evt_end                 0

.proc main_04
    set                     2, 7, 1
    set                     2, 2, 1
    sleep                   10, 10
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, 1080, -1332, -25568
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 0, -20000, 0
    message_on              0, 3, 0, 255, 255
    sleep                   10, 1
    if                      0, off_325E
    ck                      11, 31, 0
    cut_chg                 12
    sleep                   10, 10
    nop_8c                  0, 200, 70, 160, 0, 10, 0
    se_on                   2, 13, 0, 62, 0, -24200
    sce_espr_on2            2, 22, 2, 0, 0, 96, 8, 252, 0, 204, 250, 166, 156, 0, 0
    work_set                WK_OBJECT, 6
    col_chg_set             1, 0, 20, 7
    sleep                   10, 10
    se_on                   2, 14, 0, 62, 0, -24200
    sleep                   10, 110
    work_set                WK_OBJECT, 6
    nop
    pos_set                 0, 0, -20000, 0
    work_set                WK_OBJECT, 7
    nop
    pos_set                 0, 1080, -1332, -25568
    sleep                   10, 30
    sce_espr_kill2          2
    sce_espr_on2            3, 22, 10, 0, 0, 96, 8, 108, 0, 204, 250, 166, 156, 0, 0
    se_on                   2, 15, 0, 62, 0, -24200
    sleep                   10, 10
    work_set                WK_OBJECT, 2
    nop
    se_on                   2, 12, 0, 62, 0, -24200
    pos_set                 0, 1050, -1309, -25437
    for                     0, off_324E, 50
    member_copy             16, 13
    nop
    calc                    0, OP_ADD, 16, 10
    member_set2             13, 16
    nop
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 12
    member_set2             12, 16
    nop
    evt_next
    nop
    next                    0

off_324E:
    aot_on                  6
    evt_next
    set                     4, 158, 1
    nop
    sleep                   10, 30
    cut_chg                 11
    endif
    nop

off_325E:
    set                     2, 7, 0
    set                     2, 2, 0
    cut_auto                1
    evt_end                 0

.proc main_05
    set                     2, 7, 1
    set                     2, 2, 1
    if                      0, off_32A0
    ck                      4, 159, 1
    cut_chg                 13
    se_on                   2, 296, 0, -21472, 0, -9700
    sce_item_lost           63
    sleep                   10, 30
    aot_on                  7
    sleep                   10, 40
    aot_on                  8
    sleep                   10, 1
    cut_chg                 0
    else                    0, off_3302

off_32A0:
    if                      0, off_32F4
    keep_item_ck            63
    message_on              0, 10, 0, 255, 255
    sleep                   10, 1
    if                      0, off_32F0
    ck                      11, 31, 0
    set                     4, 159, 1
    se_on                   2, 295, 0, -21472, 0, -9700
    sce_item_lost           63
    sleep                   10, 30
    cut_chg                 13
    se_on                   2, 296, 0, -21472, 0, -9700
    sleep                   10, 30
    aot_on                  7
    sleep                   10, 40
    aot_on                  8
    sleep                   10, 1
    cut_chg                 0
    endif
    nop

off_32F0:
    else                    0, off_3300

off_32F4:
    message_on              0, 0, 0, 255, 255
    sleep                   10, 1
    nop
    nop

off_3300:
    nop
    nop

off_3302:
    set                     2, 7, 0
    set                     2, 2, 0
    cut_auto                1
    evt_end                 0

.proc main_06
    set                     2, 7, 1
    set                     2, 2, 1
    aot_on                  5
    if                      0, off_3326
    ck                      34, 43, 0
    sleep                   10, 1
    endif
    nop

off_3326:
    set                     2, 7, 0
    set                     2, 2, 0
    evt_end                 0

.proc main_07
    set                     2, 7, 1
    set                     2, 2, 1
    aot_on                  5
    if                      0, off_3348
    ck                      34, 43, 0
    sleep                   10, 1
    endif
    nop

off_3348:
    set                     2, 7, 0
    set                     2, 2, 0
    evt_end                 0

.proc main_08
    if                      0, off_33CC
    ck                      1, 1, 1
    sce_em_set              0, 0, ENEMY_ZOMBIENAKED, 0, 0, 0, 46, 0, 41, -13314, 0, -19983, 794, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIENAKED, 0, 0, 0, 46, 0, 42, -16368, 0, -26010, 1914, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIENAKED, 0, 0, 0, 46, 0, 43, -15922, 0, -18638, 1402, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIENAKED, 0, 0, 0, 46, 0, 44, -11744, 0, -16563, 1887, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIENAKED, 0, 0, 0, 46, 0, 45, -10262, 0, -23833, 2426, 0, 0
    else                    0, off_343C

off_33CC:
    sce_em_set              0, 0, ENEMY_ZOMBIESCIENTIST, 0, 0, 0, 47, 0, 41, -24178, 0, -23986, 2554, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIESCIENTIST, 0, 0, 0, 47, 0, 42, -16368, 0, -26010, 1914, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIESCIENTIST, 0, 0, 0, 47, 0, 43, -13522, 0, -15438, 2402, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIESCIENTIST, 0, 0, 0, 47, 0, 44, -8104, 0, -14471, 1031, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIESCIENTIST, 0, 0, 0, 47, 0, 45, -381, 0, -17119, 1530, 0, 0
    nop
    nop

off_343C:
    evt_end                 0

.proc main_09
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 8, 16, -26386, 0, -17496, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 0, 16, -19586, 0, -26446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 9, SCE_FLAG_CHG, SAT_PL | SAT_EM | SAT_UNDER, 0, 0, -26350, -19100, 2600, 3120, 5, 0, 32, 0, 1, 0
    aot_set                 10, SCE_FLAG_CHG, SAT_PL | SAT_EM | SAT_UNDER, 0, 0, -21000, -26510, 3580, 2000, 5, 0, 33, 0, 1, 0
    sce_espr_on2            7, 22, 10, 0, 0, 0, 16, 160, 171, 120, 236, 52, 214, 0, 0
    sce_espr_on2            8, 22, 10, 0, 0, 0, 16, 216, 170, 120, 236, 52, 214, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21840, -9860, 1750, 1700, 255, 0, I_GOSUB, main_05, 0, 0
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25640, -9870, 3330, 1380, 1, 0, 0, 0, 255, 239
    aot_set                 15, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19440, -14570, 1160, 1380, 2, 0, 0, 0, 255, 239
    aot_set                 16, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19440, -18770, 1160, 1380, 2, 0, 0, 0, 255, 239
    aot_set                 17, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19440, -22970, 1160, 1380, 2, 0, 0, 0, 255, 239
    aot_set                 18, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18850, -8300, 3000, 3120, 2, 0, 0, 0, 255, 239
    aot_set                 19, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 250, -20600, 3000, 6020, 2, 0, 0, 0, 255, 239
    if                      0, off_357E
    ck                      0, 25, 1
    item_aot_set            20, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10110, -11600, 1510, 1020, ITEM_INKRIBBON, 3, 82, 255, 0
    endif
    nop

off_357E:
    evt_end                 0

.proc main_0A
    if                      0, off_35B4
    ck                      5, 32, 1
    if                      0, off_35B0
    ck                      5, 0, 0
    if                      0, off_35AA
    ck                      5, 3, 0
    set                     5, 3, 1
    se_on                   2, 522, 0, -25527, 0, -17230
    endif
    nop

off_35AA:
    evt_exec                6, I_GOSUB, main_0B
    endif
    nop

off_35B0:
    else                    0, off_35DE

off_35B4:
    if                      0, off_35DC
    ck                      5, 0, 1
    if                      0, off_35D6
    ck                      5, 3, 0
    set                     5, 3, 1
    se_on                   2, 522, 0, -25527, 0, -17230
    endif
    nop

off_35D6:
    evt_exec                7, I_GOSUB, main_0C
    endif
    nop

off_35DC:
    nop
    nop

off_35DE:
    if                      0, off_3612
    ck                      5, 33, 1
    if                      0, off_360E
    ck                      5, 2, 0
    if                      0, off_3608
    ck                      5, 4, 0
    set                     5, 4, 1
    se_on                   2, 522, 0, -19690, 0, -25665
    endif
    nop

off_3608:
    evt_exec                8, I_GOSUB, main_0D
    endif
    nop

off_360E:
    else                    0, off_363C

off_3612:
    if                      0, off_363A
    ck                      5, 2, 1
    if                      0, off_3634
    ck                      5, 4, 0
    set                     5, 4, 1
    se_on                   2, 522, 0, -19690, 0, -25665
    endif
    nop

off_3634:
    evt_exec                9, I_GOSUB, main_0E
    endif
    nop

off_363A:
    nop
    nop

off_363C:
    gosub                   15
    evt_end                 0

.proc main_0B
    evt_kill                7
    work_set                WK_OBJECT, 0
    nop
    member_copy             4, 12
    nop
    save                    5, 10
    while                   6, off_368C
    cmp                     0, 4, CMP_GT, -3700
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    member_copy             4, 12
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 1
    copy                    5, 16
    nop
    if                      0, off_3688
    cmp                     0, 4, CMP_LT, -2800
    sca_id_set              19, 0, 0
    endif
    nop

off_3688:
    evt_next
    nop
    ewhile                  0

off_368C:
    set                     5, 0, 1
    set                     5, 3, 0
    evt_end                 0

.proc main_0C
    evt_kill                6
    sca_id_set              19, 128, 252
    work_set                WK_OBJECT, 0
    nop
    member_copy             4, 12
    nop
    while                   6, off_36C4
    cmp                     0, 4, CMP_LT, 0
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 180
    member_set2             12, 16
    nop
    member_copy             4, 12
    nop
    evt_next
    nop
    ewhile                  0

off_36C4:
    member_set              12, 0, 0
    set                     5, 0, 0
    set                     5, 3, 0
    evt_end                 0

.proc main_0D
    evt_kill                9
    work_set                WK_OBJECT, 1
    nop
    member_copy             4, 12
    nop
    save                    5, 10
    while                   6, off_371E
    cmp                     0, 4, CMP_GT, -3700
    member_copy             16, 12
    nop
    calc                    0, OP_SUB, 16, 180
    member_set2             12, 16
    nop
    member_copy             4, 12
    nop
    copy                    16, 5
    nop
    calc                    0, OP_SUB, 16, 1
    copy                    5, 16
    nop
    if                      0, off_371A
    cmp                     0, 4, CMP_LT, -2800
    sca_id_set              20, 0, 0
    endif
    nop

off_371A:
    evt_next
    nop
    ewhile                  0

off_371E:
    set                     5, 2, 1
    set                     5, 4, 0
    evt_end                 0

.proc main_0E
    evt_kill                8
    sca_id_set              20, 128, 252
    work_set                WK_OBJECT, 1
    nop
    member_copy             4, 12
    nop
    while                   6, off_3756
    cmp                     0, 4, CMP_LT, 0
    member_copy             16, 12
    nop
    calc                    0, OP_ADD, 16, 180
    member_set2             12, 16
    nop
    member_copy             4, 12
    nop
    evt_next
    nop
    ewhile                  0

off_3756:
    member_set              12, 0, 0
    set                     5, 2, 0
    set                     5, 4, 0
    evt_end                 0

.proc main_0F
    switch                  26, off_382E

off_3768:
    case                    0, off_3776, 0
    sce_bgm_control         1, 0, 1, 30, 64
    break                   0

off_3776:
    case                    0, off_3784, 1
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_3784:
    case                    0, off_3792, 2
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_3792:
    case                    0, off_37A0, 3
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_37A0:
    case                    0, off_37AE, 4
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_37AE:
    case                    0, off_37BC, 5
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_37BC:
    case                    0, off_37CA, 6
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_37CA:
    case                    0, off_37D8, 7
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_37D8:
    case                    0, off_37E6, 8
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_37E6:
    case                    0, off_37F4, 9
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_37F4:
    case                    0, off_3802, 10
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_3802:
    case                    0, off_3810, 11
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_3810:
    case                    0, off_381E, 12
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_381E:
    case                    0, off_382C, 13
    sce_bgm_control         1, 0, 1, 30, 64
    break                   0

off_382C:
    eswitch                 0

off_382E:
    do                      0, off_383C
    sleep                   10, 1
    edwhile                 off_383C
    ck                      1, 11, 0

off_383C:
    goto                    255, 255, 0, off_3768
    evt_end                 0
