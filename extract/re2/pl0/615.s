.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27872, -13809, 1800, 4250, -20453, 0, -23932, -2028, 5, 20, 6, 0, 38, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    gosub                   3
    gosub                   4
    item_aot_set            7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 1, 1, ITEM_MAGNUMPARTS, 1, 41, 4, 0
    aot_set                 12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -1130, -26260, 2850, 1600, 7, 0, 0, 0, 255, 239
    obj_model_set           4, 0, 0, 0, 0, 0, 0, 10, 16, -21416, -144, -8056, -320, -5184, -896, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_2C90
    ck                      1, 1, 1
    if                      0, off_2C50
    ck                      0, 25, 1
    item_aot_set            13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22900, -17000, 2210, 1720, ITEM_FAIDSPRAY, 1, 55, 255, 0
    else                    0, off_2C8E

off_2C50:
    item_aot_set            13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22900, -17000, 2210, 1720, ITEM_FAIDSPRAY, 1, 55, 9, 0
    obj_model_set           9, 0, 0, 0, 0, 0, 0, 0, 16, -21780, -1800, -16168, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_2C8E:
    endif
    nop

off_2C90:
    if                      0, off_2CD8
    ck                      1, 1, 1
    obj_model_set           8, 0, 0, 0, 0, 0, 0, 0, 16, -3654, -1872, -17226, -64, 1792, 1536, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4210, -18100, 1510, 2120, ITEM_POWERROOMKEY, 1, 43, 8, 128
    else                    0, off_2D16

off_2CD8:
    obj_model_set           3, 0, 0, 0, 0, 0, 0, 0, 16, -3654, -1872, -17226, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4210, -18100, 1510, 2120, ITEM_UMBRELLAKEYCARD, 2, 43, 3, 224
    nop
    nop

off_2D16:
    evt_end                 0

.proc main_01
    if                      0, off_2D2C
    ck                      34, 41, 1
    aot_reset               3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2D2C:
    gosub                   5
    evt_end                 0

.proc main_02
    set                     2, 7, 1
    set                     2, 2, 1
    if                      0, off_2D60
    ck                      4, 159, 1
    cut_chg                 13
    se_on                   2, 296, 0, -21472, 0, -9700
    sce_item_lost           63
    sleep                   10, 30
    aot_on                  7
    sleep                   10, 1
    cut_chg                 0
    else                    0, off_2DBC

off_2D60:
    if                      0, off_2DAE
    keep_item_ck            63
    message_on              0, 10, 0, 255, 255
    sleep                   10, 1
    if                      0, off_2DAA
    ck                      11, 31, 0
    set                     4, 159, 1
    se_on                   2, 295, 0, -21472, 0, -9700
    sce_item_lost           63
    sleep                   10, 30
    cut_chg                 13
    se_on                   2, 296, 0, -21472, 0, -9700
    sleep                   10, 30
    aot_on                  7
    sleep                   10, 1
    cut_chg                 0
    endif
    nop

off_2DAA:
    else                    0, off_2DBA

off_2DAE:
    message_on              0, 0, 0, 255, 255
    sleep                   10, 1
    nop
    nop

off_2DBA:
    nop
    nop

off_2DBC:
    set                     2, 7, 0
    set                     2, 2, 0
    cut_auto                1
    evt_end                 0

.proc main_03
    if                      0, off_2E42
    ck                      1, 1, 1
    sce_em_set              0, 0, ENEMY_ZOMBIENAKED, 0, 0, 0, 46, 0, 41, -13314, 0, -19983, 794, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIENAKED, 0, 0, 0, 46, 0, 42, -16368, 0, -26010, 1914, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIENAKED, 0, 0, 0, 46, 0, 43, -15922, 0, -18638, 1402, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIENAKED, 0, 0, 0, 46, 0, 44, -11744, 0, -16563, 1887, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIENAKED, 0, 0, 0, 46, 0, 45, -10262, 0, -23833, 2426, 0, 0
    else                    0, off_2EB2

off_2E42:
    sce_em_set              0, 0, ENEMY_ZOMBIESCIENTIST, 0, 0, 0, 47, 0, 41, -24178, 0, -23986, 2554, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIESCIENTIST, 0, 0, 0, 47, 0, 42, -16368, 0, -26010, 1914, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIESCIENTIST, 0, 0, 0, 47, 0, 43, -13522, 0, -15438, 2402, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIESCIENTIST, 0, 0, 0, 47, 0, 44, -8104, 0, -14471, 1031, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIESCIENTIST, 0, 0, 0, 47, 0, 45, -381, 0, -17119, 1530, 0, 0
    nop
    nop

off_2EB2:
    evt_end                 0

.proc main_04
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 8, 16, -26386, 0, -17496, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           1, 0, 0, 0, 0, 0, 0, 0, 16, -19586, 0, -26446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 9, SCE_FLAG_CHG, SAT_PL | SAT_EM | SAT_UNDER, 0, 0, -26350, -19100, 2600, 3120, 5, 0, 32, 0, 1, 0
    aot_set                 10, SCE_FLAG_CHG, SAT_PL | SAT_EM | SAT_UNDER, 0, 0, -21000, -26510, 3580, 2000, 5, 0, 33, 0, 1, 0
    sce_espr_on2            7, 22, 10, 0, 0, 0, 16, 160, 171, 120, 236, 52, 214, 0, 0
    sce_espr_on2            8, 22, 10, 0, 0, 0, 16, 216, 170, 120, 236, 52, 214, 0, 0
    aot_set                 3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21840, -9860, 1750, 1700, 255, 0, I_GOSUB, main_02, 0, 0
    aot_set                 11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25640, -9870, 3330, 1380, 1, 0, 0, 0, 255, 239
    aot_set                 15, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19440, -14570, 1160, 1380, 2, 0, 0, 0, 255, 239
    aot_set                 16, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19440, -18770, 1160, 1380, 2, 0, 0, 0, 255, 239
    aot_set                 17, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19440, -22970, 1160, 1380, 2, 0, 0, 0, 255, 239
    aot_set                 18, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18850, -8300, 3000, 3120, 2, 0, 0, 0, 255, 239
    aot_set                 19, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 250, -20600, 3000, 6020, 2, 0, 0, 0, 255, 239
    if                      0, off_2FF4
    ck                      0, 25, 1
    item_aot_set            20, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10110, -11600, 1510, 1020, ITEM_INKRIBBON, 3, 82, 255, 0
    endif
    nop

off_2FF4:
    evt_end                 0

.proc main_05
    if                      0, off_302A
    ck                      5, 32, 1
    if                      0, off_3026
    ck                      5, 0, 0
    if                      0, off_3020
    ck                      5, 3, 0
    set                     5, 3, 1
    se_on                   2, 522, 0, -25527, 0, -17230
    endif
    nop

off_3020:
    evt_exec                6, I_GOSUB, main_06
    endif
    nop

off_3026:
    else                    0, off_3054

off_302A:
    if                      0, off_3052
    ck                      5, 0, 1
    if                      0, off_304C
    ck                      5, 3, 0
    set                     5, 3, 1
    se_on                   2, 522, 0, -25527, 0, -17230
    endif
    nop

off_304C:
    evt_exec                7, I_GOSUB, main_07
    endif
    nop

off_3052:
    nop
    nop

off_3054:
    if                      0, off_3088
    ck                      5, 33, 1
    if                      0, off_3084
    ck                      5, 2, 0
    if                      0, off_307E
    ck                      5, 4, 0
    set                     5, 4, 1
    se_on                   2, 522, 0, -19690, 0, -25665
    endif
    nop

off_307E:
    evt_exec                8, I_GOSUB, main_08
    endif
    nop

off_3084:
    else                    0, off_30B2

off_3088:
    if                      0, off_30B0
    ck                      5, 2, 1
    if                      0, off_30AA
    ck                      5, 4, 0
    set                     5, 4, 1
    se_on                   2, 522, 0, -19690, 0, -25665
    endif
    nop

off_30AA:
    evt_exec                9, I_GOSUB, main_09
    endif
    nop

off_30B0:
    nop
    nop

off_30B2:
    gosub                   10
    evt_end                 0

.proc main_06
    evt_kill                7
    work_set                WK_OBJECT, 0
    nop
    member_copy             4, 12
    nop
    save                    5, 10
    while                   6, off_3102
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
    if                      0, off_30FE
    cmp                     0, 4, CMP_LT, -2800
    sca_id_set              19, 0, 0
    endif
    nop

off_30FE:
    evt_next
    nop
    ewhile                  0

off_3102:
    set                     5, 0, 1
    set                     5, 3, 0
    evt_end                 0

.proc main_07
    evt_kill                6
    sca_id_set              19, 128, 252
    work_set                WK_OBJECT, 0
    nop
    member_copy             4, 12
    nop
    while                   6, off_313A
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

off_313A:
    member_set              12, 0, 0
    set                     5, 0, 0
    set                     5, 3, 0
    evt_end                 0

.proc main_08
    evt_kill                9
    work_set                WK_OBJECT, 1
    nop
    member_copy             4, 12
    nop
    save                    5, 10
    while                   6, off_3194
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
    if                      0, off_3190
    cmp                     0, 4, CMP_LT, -2800
    sca_id_set              20, 0, 0
    endif
    nop

off_3190:
    evt_next
    nop
    ewhile                  0

off_3194:
    set                     5, 2, 1
    set                     5, 4, 0
    evt_end                 0

.proc main_09
    evt_kill                8
    sca_id_set              20, 128, 252
    work_set                WK_OBJECT, 1
    nop
    member_copy             4, 12
    nop
    while                   6, off_31CC
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

off_31CC:
    member_set              12, 0, 0
    set                     5, 2, 0
    set                     5, 4, 0
    evt_end                 0

.proc main_0A
    switch                  26, off_32A4

off_31DE:
    case                    0, off_31EC, 0
    sce_bgm_control         1, 0, 1, 30, 64
    break                   0

off_31EC:
    case                    0, off_31FA, 1
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_31FA:
    case                    0, off_3208, 2
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_3208:
    case                    0, off_3216, 3
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_3216:
    case                    0, off_3224, 4
    sce_bgm_control         1, 0, 1, 40, 64
    break                   0

off_3224:
    case                    0, off_3232, 5
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_3232:
    case                    0, off_3240, 6
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_3240:
    case                    0, off_324E, 7
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_324E:
    case                    0, off_325C, 8
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_325C:
    case                    0, off_326A, 9
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_326A:
    case                    0, off_3278, 10
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_3278:
    case                    0, off_3286, 11
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_3286:
    case                    0, off_3294, 12
    sce_bgm_control         1, 0, 1, 50, 64
    break                   0

off_3294:
    case                    0, off_32A2, 13
    sce_bgm_control         1, 0, 1, 30, 64
    break                   0

off_32A2:
    eswitch                 0

off_32A4:
    do                      0, off_32B2
    sleep                   10, 1
    edwhile                 off_32B2
    ck                      1, 11, 0

off_32B2:
    goto                    255, 255, 0, off_31DE
    evt_end                 0

.proc main_0B
    set                     2, 7, 1
    set                     2, 2, 1
    aot_on                  5
    if                      0, off_32D2
    ck                      34, 43, 0
    sleep                   10, 1
    endif
    nop

off_32D2:
    set                     2, 7, 0
    set                     2, 2, 0
    evt_end                 0

.proc main_0C
    set                     2, 7, 1
    set                     2, 2, 1
    aot_on                  5
    if                      0, off_32F4
    ck                      34, 43, 0
    sleep                   10, 1
    endif
    nop

off_32F4:
    set                     2, 7, 0
    set                     2, 2, 0
    evt_end                 0
    db                      0x00, 0x00
