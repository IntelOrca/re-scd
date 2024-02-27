.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6075, -11550, 1800, 2200, -22963, -1800, -3039, 200, 1, 0, 4, 1, 13, 1, 0, 143, UNLOCK, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24620, -9510, 1800, 1800, -22680, 0, -26440, 3072, 1, 9, 0, 0, 8, 1, 0, 131, LOCKED, 0
    door_aot_se             ID_AOT_20, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -6075, -11550, 1800, 2200, -22963, -1800, -3039, 200, 1, 0, 4, 1, 13, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_1C5C
    ck                      FG_STATUS, F_SCENARIO, 1
    obj_model_set           ID_OBJ_6, 0, 0, 0, 0, 0, 0, 10, 16, -9350, -1400, -19050, -2816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10260, -20290, 1800, 1800, ITEM_SMALLKEY, 1, 249, ID_OBJ_6, IF_GLINT_GRAY
    endif
    nop

off_1C5C:
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24620, -23800, 1800, 1900, ITEM_HEARTKEY, 1, 113, ID_OBJ_2, IF_GLINT_GRAY
    aot_set                 ID_AOT_8, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21420, -9700, 2800, 1200, ID_MSG_5, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_9, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9360, -20290, 3600, 1800, ID_MSG_6, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27250, -20350, 1800, 1800, ID_MSG_7, 0, 0, 0, 255, 255
    aot_set                 ID_AOT_11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24200, -25680, 1800, 2100, ID_MSG_8, 0, 0, 0, 255, 255
    if                      0, off_1CE2
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    aot_set                 ID_AOT_12, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5560, -18350, 1800, 3260, ID_MSG_9, 0, 0, 0, 255, 255
    else                    0, off_1CFA

off_1CE2:
    item_aot_set            ID_AOT_12, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -5560, -18350, 1800, 3260, ITEM_HANDGUNAMMO, 15, 115, ID_OBJ_255, IF_DEFAULT
    nop
    nop

off_1CFA:
    if                      0, off_1D3E
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    if                      0, off_1D24
    ck                      FG_STATUS, F_SCENARIO, 0
    item_aot_set            ID_AOT_15, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21660, -17000, 2700, 1800, ITEM_HANDGUNAMMO, 15, 116, ID_OBJ_4, IF_DEFAULT
    else                    0, off_1D3C

off_1D24:
    item_aot_set            ID_AOT_15, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21660, -17000, 2700, 1800, ITEM_HANDGUNAMMO, 15, 116, ID_OBJ_4, IF_DEFAULT
    nop
    nop

off_1D3C:
    endif
    nop

off_1D3E:
    item_aot_set            ID_AOT_16, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12500, -15300, 1800, 1800, ITEM_MEMOTOLEON, 1, 111, ID_OBJ_0, IF_DEFAULT
    item_aot_set            ID_AOT_18, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26940, -12100, 1000, 1000, ITEM_HERBG, 1, 114, ID_OBJ_3, IF_FLOOR
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 16, -11750, -1400, -14530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -23830, -1500, -22930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -26500, 0, -11600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1E0C
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -20130, -1400, -16100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1E0C:
    if                      0, off_1E7A
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_1E36
    ck                      FG_COMMON, 7, 0
    sce_em_set              0, ID_EM_0, ENEMY_MARVIN_BRANAGH, 0, AI_08, 0, SBK_0, 0, 28, -6100, 0, -16100, 2048, 261, 20
    else                    0, off_1E76

off_1E36:
    sce_em_set              0, ID_EM_0, ENEMY_MARVIN_BRANAGH, 0, AI_DEFAULT, 0, SBK_4, 0, 28, -21600, 0, -25420, 3352, 261, 20
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY3, 5, AI_40, 0, SBK_6, 0, 255, -20460, 0, -19000, 712, 0, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    nop
    nop

off_1E76:
    else                    0, off_1F78

off_1E7A:
    if                      0, off_1F06
    ck                      FG_ZAPPING, 4, 0
    sce_em_set              0, ID_EM_0, ENEMY_MARVIN_BRANAGH, 0, AI_DEFAULT, 0, SBK_4, 0, 28, -21600, 0, -25420, 3352, 261, 20
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_GUY3, 5, AI_40, 0, SBK_6, 131, 255, -20460, 0, -19000, 712, 0, 0
    work_set                WK_ENEMY, ID_EM_1
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 2
    member_set2             M_POINTER, V_TEMP
    nop
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_GUY3, 0, AI_DEFAULT, 0, SBK_4, 131, 30, -25916, 0, -14744, 3124, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_GUY3, 0, AI_DEFAULT, 0, SBK_6, 131, 31, -13926, 0, -17714, 1976, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_GUY3, 0, AI_DEFAULT, 0, SBK_4, 131, 125, -19185, 0, -10802, 2264, 0, 0
    else                    0, off_1F76

off_1F06:
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_4, 131, 29, -21235, 0, -25221, 3352, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_6, 131, 30, -20460, 0, -19000, 712, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_RANDOM, 0, AI_DEFAULT, 0, SBK_4, 131, 31, -25916, 0, -14744, 3124, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_4, 131, 125, -13926, 0, -17714, 1976, 0, 0
    sce_em_set              0, ID_EM_5, ENEMY_ZOMBIE_RANDOM, 6, AI_DEFAULT, 0, SBK_6, 131, 126, -19185, 0, -10802, 2264, 0, 0
    nop
    nop

off_1F76:
    nop
    nop

off_1F78:
    if                      0, off_1FDA
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_1F92
    ck                      FG_COMMON, 7, 0
    gosub                   main_09
    evt_exec                255, I_GOSUB, main_02
    else                    0, off_1FD6

off_1F92:
    if                      0, off_1FB2
    ck                      FG_COMMON, 9, 0
    aot_set                 ID_AOT_6, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -22050, -24130, 2760, 2030, 255, 0, I_GOSUB, main_03, 0, 0
    else                    0, off_1FD4

off_1FB2:
    if                      0, off_1FD2
    ck                      FG_ENEMY, 28, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 512
    member_set2             M_TYPE, V_TEMP
    nop
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_1FD2:
    nop
    nop

off_1FD4:
    nop
    nop

off_1FD6:
    else                    0, off_2000

off_1FDA:
    if                      0, off_1FFE
    ck                      FG_ZAPPING, 4, 0
    ck                      FG_ENEMY, 28, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 512
    member_set2             M_TYPE, V_TEMP
    nop
    evt_exec                255, I_GOSUB, main_0B
    endif
    nop

off_1FFE:
    nop
    nop

off_2000:
    evt_end                 0

.proc aot
    if                      0, off_202E
    ck                      FG_ENEMY, 28, 1
    if                      0, off_201E
    ck                      FG_ROOM, 12, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 0
    set                     FG_ROOM, 12, 1
    endif
    nop

off_201E:
    if                      0, off_202C
    ck                      FG_STATUS, F_SCENARIO, 0
    set                     FG_ZAPPING, 4, 1
    endif
    nop

off_202C:
    endif
    nop

off_202E:
    evt_end                 0

.proc main_02
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    sleep                   10, 1
    xa_on                   0, 3
    sleep                   10, 10
    work_set                WK_PLAYER, 0
    nop
    plc_neck                1, -6100, -2000, -16100, 60, 30
    plc_dest                0, 21, 33, 1024, 128
    gosub                   main_06
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 255
    member_set2             M_SCE_FREE3, V_TEMP
    nop
    if                      0, off_2078
    member_cmp              0, 26, 5, 0, 0
    else                    0, off_207E

off_2078:
    plc_motion              2, 2, 4
    nop
    nop

off_207E:
    sleep                   10, 15
    wsleep
    wsleeping
    cut_chg                 6
    sleep                   10, 30
    cut_chg                 0
    sleep                   10, 1
    xa_on                   0, 1
    sleep                   10, 15
    work_set                WK_PLAYER, 0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 255
    member_set2             M_SCE_FREE3, V_TEMP
    nop
    if                      0, off_20B6
    member_cmp              0, 26, 5, 0, 0
    endif
    nop

off_20B6:
    sleep                   10, 10
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -4097
    member_set2             M_TYPE, V_TEMP
    nop
    plc_dest                0, 5, 33, -9350, -14000
    plc_flg                 1, 4
    gosub                   main_06
    plc_dest                0, 5, 33, -7530, -17350
    gosub                   main_06
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 4096
    member_set2             M_TYPE, V_TEMP
    nop
    plc_dest                0, 21, 33, -265, 128
    gosub                   main_06
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    plc_motion              1, 6, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                1, -7530, -700, -17350, 60, 30
    sleep                   10, 20
    wsleep
    wsleeping
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 0
    message_on              0, ID_MSG_14, 0, 0, 0
    xa_on                   0, 2
    wsleep
    wsleeping
    message_on              0, ID_MSG_15, 0, 0, 0
    xa_on                   0, 4
    sleep                   10, 120
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 7, 0
    nop
    sleep                   10, 60
    plc_motion              0, 7, 128
    sleep                   10, 40
    plc_motion              0, 5, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    message_on              0, ID_MSG_16, 0, 0, 0
    xa_on                   0, 6
    work_set                WK_PLAYER, 0
    plc_motion              0, 5, 0
    nop
    sleep                   10, 30
    plc_motion              0, 5, 128
    sleep                   10, 30
    plc_motion              0, 8, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 11
    sleep                   10, 1
    message_on              0, ID_MSG_17, 0, 0, 0
    xa_on                   0, 7
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 5, 20
    nop
    sleep                   10, 90
    plc_motion              0, 7, 0
    sleep                   10, 60
    plc_motion              0, 7, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    wsleep
    wsleeping
    message_on              0, ID_MSG_18, 0, 0, 0
    xa_on                   0, 8
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 10, 0
    nop
    sleep                   10, 60
    plc_motion              0, 10, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    message_on              0, ID_MSG_19, 0, 0, 0
    xa_on                   0, 9
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 7, 0
    nop
    sleep                   10, 60
    plc_motion              0, 7, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    wsleep
    wsleeping
    sleep                   10, 30
    message_on              0, ID_MSG_20, 0, 0, 0
    xa_on                   0, 10
    sleep                   10, 30
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 6, 0
    nop
    sleep                   10, 60
    plc_motion              0, 6, 128
    sleep                   10, 60
    plc_motion              0, 5, 20
    sleep                   10, 60
    plc_dest                0, 20, 0, 0, 0
    plc_neck                1, -7530, 0, -17350, 60, 30
    wsleep
    wsleeping
    message_on              0, ID_MSG_21, 0, 0, 0
    xa_on                   0, 11
    work_set                WK_PLAYER, 0
    plc_motion              0, 6, 0
    nop
    sleep                   10, 15
    plc_motion              0, 6, 128
    sleep                   10, 15
    plc_motion              0, 8, 20
    wsleep
    wsleeping
    plc_dest                0, 20, 0, 0, 0
    cut_chg                 11
    sleep                   10, 1
    message_on              0, ID_MSG_25, 0, 0, 0
    xa_on                   0, 12
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                1, -7530, -700, -17350, 60, 30
    plc_motion              0, 6, 0
    sleep                   10, 80
    plc_motion              0, 6, 128
    sleep                   10, 80
    wsleep
    wsleeping
    sleep                   10, 30
    xa_on                   0, 13
    message_on              0, ID_MSG_26, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 7, 0
    nop
    sleep                   10, 30
    sleep                   10, 60
    work_set                WK_PLAYER, 0
    plc_motion              0, 6, 0
    nop
    sleep                   10, 20
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    plc_motion              0, 6, 128
    nop
    sleep                   10, 20
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 7, 128
    nop
    wsleep
    wsleeping
    sce_item_get            53, 1
    set                     FG_ITEM, 5, 1
    nop
    sleep                   10, 1
    message_on              0, ID_MSG_27, 0, 0, 0
    xa_on                   0, 14
    work_set                WK_PLAYER, 0
    plc_motion              0, 5, 0
    nop
    sleep                   10, 20
    plc_motion              0, 5, 128
    wsleep
    wsleeping
    cut_chg                 9
    sleep                   10, 1
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 12, 0
    plc_cnt                 11
    cut_chg                 6
    nop
    sleep                   10, 1
    message_on              0, ID_MSG_28, 0, 0, 0
    xa_on                   0, 15
    sleep                   10, 30
    se_on                   2, 10, 3, 0, 0, 0
    wsleep
    wsleeping
    sleep                   10, 60
    message_on              0, ID_MSG_29, 0, 0, 0
    xa_on                   0, 16
    work_set                WK_PLAYER, 0
    plc_motion              1, 6, 128
    nop
    sleep                   10, 20
    plc_motion              2, 2, 0
    wsleep
    wsleeping
    work_set                WK_PLAYER, 0
    nop
    message_on              0, ID_MSG_30, 0, 0, 0
    xa_on                   0, 17
    work_set                WK_PLAYER, 0
    plc_motion              0, 9, 0
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 12, 128
    sleep                   10, 23
    plc_dest                0, 20, 0, 0, 0
    sleep                   10, 20
    work_set                WK_PLAYER, 0
    plc_motion              0, 9, 128
    nop
    wsleep
    wsleeping
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 5, 20
    work_set                WK_PLAYER, 0
    plc_neck                0, 0, 0, 0, 0, 0
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, -4097
    member_set2             M_TYPE, V_TEMP
    nop
    plc_dest                0, 5, 33, -8200, -11500
    gosub                   main_06
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 4096
    member_set2             M_TYPE, V_TEMP
    nop
    gosub                   main_08
    sce_bgmtbl_set          0, 2, 2, 774, 49152
    set                     FG_COMMON, 7, 1
    aot_on                  ID_AOT_20
    evt_end                 0

.proc main_03
    aot_reset               ID_AOT_6, SCE_AUTO, SAT_PL | SAT_UNDER, 0, 0, 0, 0, 0, 0
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 0
    cut_chg                 7
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 33, -19948, -24807
    plc_rot                 0, 128
    gosub                   main_06
    sleep                   10, 30
    cut_chg                 5
    work_set                WK_ENEMY, ID_EM_0
    nop
    pos_set                 0, -21325, 0, -25265
    dir_set                 0, 0, 3512, 0
    plc_motion              0, 8, 64
    plc_cnt                 20
    sleep                   10, 1
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, -32768
    member_set2             M_TYPE, V_TEMP
    nop
    work_set                WK_ENEMY, ID_EM_0
    nop
    plc_neck                2, 0, 0, -32, 60, 30
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 32767
    member_set2             M_TYPE, V_TEMP
    nop
    plc_motion              0, 8, 0
    plc_cnt                 20
    sleep                   10, 40
    sleep                   10, 14
    cut_chg                 8
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -20000, 0, -23600
    dir_set                 0, 0, 1250, 0
    plc_motion              2, 2, 4
    sleep                   10, 1
    xa_on                   0, 3
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 512
    member_set2             M_TYPE, V_TEMP
    nop
    pos_set                 0, -21150, 0, -24850
    dir_set                 0, 0, 3500, 0
    sleep                   10, 5
    plc_motion              2, 0, 20
    do                      0, off_24E2
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 512
    member_set2             M_SCE_FREE3, V_TEMP
    nop
    evt_next
    nop
    edwhile                 off_24E2
    member_cmp              0, 26, 5, 0, 0

off_24E2:
    sleep                   10, 60
    wsleep
    wsleeping
    cut_chg                 5
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_ID, 30
    member_set              M_TYPE, 0
    member_set              M_ROUTINE0, 0
    member_set              M_ROUTINE1, 0
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    sleep                   10, 1
    sce_bgmtbl_set          0, 2, 2, 65286, 0
    set                     FG_COMMON, 9, 1
    gosub                   main_08
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, ID_EM_0
    plc_motion              0, 8, 0
    plc_cnt                 20
    nop
    sleep                   10, 40
    evt_end                 0

.proc main_05
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 4, 36, -19660, -20500
    gosub                   main_07
    plc_motion              2, 2, 4
    evt_end                 0

.proc main_06
    do                      0, off_254A
    evt_next
    nop
    edwhile                 off_254A
    ck                      FG_ROOM, 33, 0

off_254A:
    evt_end                 0

.proc main_07
    do                      0, off_2558
    evt_next
    nop
    edwhile                 off_2558
    ck                      FG_ROOM, 36, 0

off_2558:
    evt_end                 0

.proc main_08
    work_set                WK_PLAYER, 0
    plc_ret
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    cut_auto                1
    evt_end                 0

.proc main_09
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_POINTER
    nop
    calc                    0, OP_OR, V_TEMP, 4
    member_set2             M_POINTER, V_TEMP
    nop
    evt_end                 0

.proc main_0A
    sleep                   10, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_OR, V_TEMP, 512
    member_set2             M_TYPE, V_TEMP
    nop
    sleep                   10, 5
    plc_motion              2, 0, 4
    do                      0, off_25B8
    member_copy             V_TEMP, M_TYPE
    nop
    calc                    0, OP_AND, V_TEMP, 512
    member_set2             M_SCE_FREE3, V_TEMP
    nop
    evt_next
    nop
    edwhile                 off_25B8
    member_cmp              0, 26, 5, 0, 0

off_25B8:
    sleep                   10, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_ID, 30
    member_set              M_TYPE, 0
    member_set              M_ROUTINE0, 0
    member_set              M_ROUTINE1, 0
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    evt_end                 0

.proc main_0B
    sleep                   10, 1
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_ID, 30
    member_set              M_TYPE, 0
    member_set              M_ROUTINE0, 0
    member_set              M_ROUTINE1, 0
    member_set              M_ROUTINE2, 0
    member_set              M_ROUTINE3, 0
    evt_end                 0

.proc main_0C
    do                      0, off_2608
    evt_next
    nop
    edwhile                 off_2608
    ck                      FG_ROOM, 35, 0

off_2608:
    evt_end                 0
    db                      0x08, 0x68
