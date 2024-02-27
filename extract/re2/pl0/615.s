.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27872, -13809, 1800, 4250, -20453, 0, -23932, -2028, 5, 20, 6, 0, 38, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    gosub                   main_03
    gosub                   main_04
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 3, 0, 0, 0, 1, 1, ITEM_MAGNUMPARTS, 1, 41, ID_OBJ_4, IF_DEFAULT
    aot_set                 ID_AOT_12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -1130, -26260, 2850, 1600, ID_MSG_7, 0, 0, 0, 255, 239
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -21416, -144, -8056, -320, -5184, -896, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_2C90
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_2C50
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22900, -17000, 2210, 1720, ITEM_FAIDSPRAY, 1, 55, ID_OBJ_255, IF_DEFAULT
    else                    0, off_2C8E

off_2C50:
    item_aot_set            ID_AOT_13, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -22900, -17000, 2210, 1720, ITEM_FAIDSPRAY, 1, 55, ID_OBJ_9, IF_DEFAULT
    obj_model_set           ID_OBJ_9, 0, 0, 0, 0, 0, 0, 0, 16, -21780, -1800, -16168, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_2C8E:
    endif
    nop

off_2C90:
    if                      0, off_2CD8
    ck                      FG_STATUS, F_SCENARIO, 1
    obj_model_set           ID_OBJ_8, 0, 0, 0, 0, 0, 0, 0, 16, -3654, -1872, -17226, -64, 1792, 1536, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4210, -18100, 1510, 2120, ITEM_POWERROOMKEY, 1, 43, ID_OBJ_8, 128
    else                    0, off_2D16

off_2CD8:
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 0, 16, -3654, -1872, -17226, 0, 3072, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -4210, -18100, 1510, 2120, ITEM_UMBRELLAKEYCARD, 2, 43, ID_OBJ_3, IF_GLINT_RED
    nop
    nop

off_2D16:
    evt_end                 0

.proc aot
    if                      0, off_2D2C
    ck                      FG_ITEM_2, 41, 1
    aot_reset               ID_AOT_3, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    endif
    nop

off_2D2C:
    gosub                   main_05
    evt_end                 0

.proc main_02
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    if                      0, off_2D60
    ck                      FG_COMMON, 159, 1
    cut_chg                 13
    se_on                   2, 296, 0, -21472, 0, -9700
    sce_item_lost           ITEM_WEAPONBOXKEY
    sleep                   10, 30
    aot_on                  ID_AOT_7
    sleep                   10, 1
    cut_chg                 0
    else                    0, off_2DBC

off_2D60:
    if                      0, off_2DAE
    keep_item_ck            ITEM_WEAPONBOXKEY
    message_on              0, ID_MSG_10, 0, 255, 255
    sleep                   10, 1
    if                      0, off_2DAA
    ck                      FG_MESSAGE, F_QUESTION, 0
    set                     FG_COMMON, 159, 1
    se_on                   2, 295, 0, -21472, 0, -9700
    sce_item_lost           ITEM_WEAPONBOXKEY
    sleep                   10, 30
    cut_chg                 13
    se_on                   2, 296, 0, -21472, 0, -9700
    sleep                   10, 30
    aot_on                  ID_AOT_7
    sleep                   10, 1
    cut_chg                 0
    endif
    nop

off_2DAA:
    else                    0, off_2DBA

off_2DAE:
    message_on              0, ID_MSG_0, 0, 255, 255
    sleep                   10, 1
    nop
    nop

off_2DBA:
    nop
    nop

off_2DBC:
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    cut_auto                1
    evt_end                 0

.proc main_03
    if                      0, off_2E42
    ck                      FG_STATUS, F_SCENARIO, 1
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 41, -13314, 0, -19983, 794, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 42, -16368, 0, -26010, 1914, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 43, -15922, 0, -18638, 1402, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 44, -11744, 0, -16563, 1887, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 45, -10262, 0, -23833, 2426, 0, 0
    else                    0, off_2EB2

off_2E42:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_SCIENTIST, 0, AI_DEFAULT, 0, SBK_47, 0, 41, -24178, 0, -23986, 2554, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_SCIENTIST, 0, AI_DEFAULT, 0, SBK_47, 0, 42, -16368, 0, -26010, 1914, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_SCIENTIST, 0, AI_DEFAULT, 0, SBK_47, 0, 43, -13522, 0, -15438, 2402, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_SCIENTIST, 0, AI_DEFAULT, 0, SBK_47, 0, 44, -8104, 0, -14471, 1031, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_SCIENTIST, 0, AI_DEFAULT, 0, SBK_47, 0, 45, -381, 0, -17119, 1530, 0, 0
    nop
    nop

off_2EB2:
    evt_end                 0

.proc main_04
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 8, 16, -26386, 0, -17496, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 0, 16, -19586, 0, -26446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_9, SCE_FLAG_CHG, SAT_PL | SAT_EM | SAT_UNDER, 0, 0, -26350, -19100, 2600, 3120, 5, 0, ITEM_HANDGUNPARTS, 0, aot, 0
    aot_set                 ID_AOT_10, SCE_FLAG_CHG, SAT_PL | SAT_EM | SAT_UNDER, 0, 0, -21000, -26510, 3580, 2000, 5, 0, ITEM_MAGNUMPARTS, 0, aot, 0
    sce_espr_on2            7, 22, 10, 0, 0, 0, 16, 160, 171, 120, 236, 52, 214, 0, 0
    sce_espr_on2            8, 22, 10, 0, 0, 0, 16, 216, 170, 120, 236, 52, 214, 0, 0
    aot_set                 ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21840, -9860, 1750, 1700, 255, 0, I_GOSUB, main_02, 0, 0
    aot_set                 ID_AOT_11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25640, -9870, 3330, 1380, ID_MSG_1, 0, 0, 0, 255, 239
    aot_set                 ID_AOT_15, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19440, -14570, 1160, 1380, ID_MSG_2, 0, 0, 0, 255, 239
    aot_set                 ID_AOT_16, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19440, -18770, 1160, 1380, ID_MSG_2, 0, 0, 0, 255, 239
    aot_set                 ID_AOT_17, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19440, -22970, 1160, 1380, ID_MSG_2, 0, 0, 0, 255, 239
    aot_set                 ID_AOT_18, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18850, -8300, 3000, 3120, ID_MSG_2, 0, 0, 0, 255, 239
    aot_set                 ID_AOT_19, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, 250, -20600, 3000, 6020, ID_MSG_2, 0, 0, 0, 255, 239
    if                      0, off_2FF4
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_20, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10110, -11600, 1510, 1020, ITEM_INKRIBBON, 3, 82, ID_OBJ_255, IF_DEFAULT
    endif
    nop

off_2FF4:
    evt_end                 0

.proc main_05
    if                      0, off_302A
    ck                      FG_ROOM, 32, 1
    if                      0, off_3026
    ck                      FG_ROOM, 0, 0
    if                      0, off_3020
    ck                      FG_ROOM, 3, 0
    set                     FG_ROOM, 3, 1
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
    ck                      FG_ROOM, 0, 1
    if                      0, off_304C
    ck                      FG_ROOM, 3, 0
    set                     FG_ROOM, 3, 1
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
    ck                      FG_ROOM, 33, 1
    if                      0, off_3084
    ck                      FG_ROOM, 2, 0
    if                      0, off_307E
    ck                      FG_ROOM, 4, 0
    set                     FG_ROOM, 4, 1
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
    ck                      FG_ROOM, 2, 1
    if                      0, off_30AA
    ck                      FG_ROOM, 4, 0
    set                     FG_ROOM, 4, 1
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
    gosub                   main_0A
    evt_end                 0

.proc main_06
    evt_kill                7
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_04, M_Y_POS
    nop
    save                    V_05, 10
    while                   6, off_3102
    cmp                     0, V_04, CMP_GT, -3700
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 180
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_04, M_Y_POS
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_05, V_TEMP
    nop
    if                      0, off_30FE
    cmp                     0, V_04, CMP_LT, -2800
    sca_id_set              19, 0, 0
    endif
    nop

off_30FE:
    evt_next
    nop
    ewhile                  0

off_3102:
    set                     FG_ROOM, 0, 1
    set                     FG_ROOM, 3, 0
    evt_end                 0

.proc main_07
    evt_kill                6
    sca_id_set              19, 128, 252
    work_set                WK_OBJECT, ID_OBJ_0
    nop
    member_copy             V_04, M_Y_POS
    nop
    while                   6, off_313A
    cmp                     0, V_04, CMP_LT, 0
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 180
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_04, M_Y_POS
    nop
    evt_next
    nop
    ewhile                  0

off_313A:
    member_set              M_Y_POS, 0
    set                     FG_ROOM, 0, 0
    set                     FG_ROOM, 3, 0
    evt_end                 0

.proc main_08
    evt_kill                9
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_copy             V_04, M_Y_POS
    nop
    save                    V_05, 10
    while                   6, off_3194
    cmp                     0, V_04, CMP_GT, -3700
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_SUB, V_TEMP, 180
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_04, M_Y_POS
    nop
    copy                    V_TEMP, V_05
    nop
    calc                    0, OP_SUB, V_TEMP, 1
    copy                    V_05, V_TEMP
    nop
    if                      0, off_3190
    cmp                     0, V_04, CMP_LT, -2800
    sca_id_set              20, 0, 0
    endif
    nop

off_3190:
    evt_next
    nop
    ewhile                  0

off_3194:
    set                     FG_ROOM, 2, 1
    set                     FG_ROOM, 4, 0
    evt_end                 0

.proc main_09
    evt_kill                8
    sca_id_set              20, 128, 252
    work_set                WK_OBJECT, ID_OBJ_1
    nop
    member_copy             V_04, M_Y_POS
    nop
    while                   6, off_31CC
    cmp                     0, V_04, CMP_LT, 0
    member_copy             V_TEMP, M_Y_POS
    nop
    calc                    0, OP_ADD, V_TEMP, 180
    member_set2             M_Y_POS, V_TEMP
    nop
    member_copy             V_04, M_Y_POS
    nop
    evt_next
    nop
    ewhile                  0

off_31CC:
    member_set              M_Y_POS, 0
    set                     FG_ROOM, 2, 0
    set                     FG_ROOM, 4, 0
    evt_end                 0

.proc main_0A

off_31DA:
    switch                  26, off_32A4
    case                    0, off_31EC, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 30, 64
    break                   0

off_31EC:
    case                    0, off_31FA, 1
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_31FA:
    case                    0, off_3208, 2
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 64
    break                   0

off_3208:
    case                    0, off_3216, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 64
    break                   0

off_3216:
    case                    0, off_3224, 4
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 40, 64
    break                   0

off_3224:
    case                    0, off_3232, 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_3232:
    case                    0, off_3240, 6
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_3240:
    case                    0, off_324E, 7
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_324E:
    case                    0, off_325C, 8
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_325C:
    case                    0, off_326A, 9
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_326A:
    case                    0, off_3278, 10
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_3278:
    case                    0, off_3286, 11
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_3286:
    case                    0, off_3294, 12
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 50, 64
    break                   0

off_3294:
    case                    0, off_32A2, 13
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_NOP, BGM_TYPE_PROG0_VOL, 30, 64
    break                   0

off_32A2:
    eswitch                 0

off_32A4:
    do                      0, off_32B2
    sleep                   10, 1
    edwhile                 off_32B2
    ck                      FG_STATUS, 11, 0

off_32B2:
    goto                    255, 255, 0, off_31DA
    evt_end                 0

.proc main_0B
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    aot_on                  ID_AOT_5
    if                      0, off_32D2
    ck                      FG_ITEM_2, 43, 0
    sleep                   10, 1
    endif
    nop

off_32D2:
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    evt_end                 0

.proc main_0C
    set                     FG_STOP, 7, 1
    set                     FG_STOP, 2, 1
    aot_on                  ID_AOT_5
    if                      0, off_32F4
    ck                      FG_ITEM_2, 43, 0
    sleep                   10, 1
    endif
    nop

off_32F4:
    set                     FG_STOP, 7, 0
    set                     FG_STOP, 2, 0
    evt_end                 0
    db                      0x00, 0x00
