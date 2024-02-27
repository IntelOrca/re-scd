.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17100, -13900, 1800, 1800, -25450, 0, -7100, 0, 1, 12, 3, 0, 28, 1, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17100, -26400, 1800, 1800, -26200, 0, -18500, 0, 1, 12, 6, 0, 8, 0, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main
    if                      0, off_1820
    cmp                     0, V_CUT, CMP_EQ, 3
    set                     FG_MAP_C, 11, 1
    set                     FG_MAP_C, 8, 1
    set                     FG_MAP_C, 9, 0
    if                      0, off_17D0
    ck                      FG_COMMON, 69, 0
    mirror_set              0, 168, 178, 88, 158, 200, 181
    set                     FG_PBF03, 3, 0
    set                     FG_PBF04, 5, 0
    set                     FG_PBF04, 6, 0
    set                     FG_PBF05, 4, 0
    set                     FG_PBF06, 4, 0
    aot_set                 ID_AOT_2, SCE_EVENT, SAT_PL | SAT_UNDER, 0, 0, -24000, -19400, 1800, 5000, 255, 0, I_GOSUB, main_02, 0, 0
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_RED, 19, AI_40, 0, SBK_14, 0, 108, -21478, -800, -27503, 3072, 0, 0
    else                    0, off_181C

off_17D0:
    sca_id_set              22, 0, 0
    sca_id_set              23, 0, 32
    sca_id_set              24, 0, 32
    set                     FG_PBF04, 4, 0
    set                     FG_PBF05, 3, 0
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_RED, 16, AI_DEFAULT, 0, SBK_14, 0, 108, -24200, 0, -17500, 0, 0, 0
    if                      0, off_181A
    ck                      FG_STATUS, F_SCENARIO, 1
    sce_em_set              0, ID_EM_1, ENEMY_LICKER_RED, 2, AI_01 | AI_04, 0, SBK_14, 0, 109, -18700, -5400, -17600, 0, 0, 0
    endif
    nop

off_181A:
    nop
    nop

off_181C:
    else                    0, off_18B8

off_1820:
    set                     FG_MAP_C, 12, 1
    set                     FG_MAP_C, 8, 0
    set                     FG_MAP_C, 9, 1
    sca_id_set              23, 0, 0
    sca_id_set              24, 0, 0
    if                      0, off_187A
    ck                      FG_COMMON, 69, 0
    obj_model_set           ID_OBJ_0, 0, 0, 0, 0, 0, 0, 10, 22, -21700, -1800, -19800, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0
    aot_set                 ID_AOT_10, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25200, -21000, 1200, 1200, ID_MSG_0, 0, 0, 0, 255, 255
    else                    0, off_1896

off_187A:
    sca_id_set              22, 0, 0
    sce_em_set              0, ID_EM_0, ENEMY_LICKER_RED, 0, AI_DEFAULT, 0, SBK_14, 0, 108, -23850, 0, -25500, 0, 0, 0
    nop
    nop

off_1896:
    if                      0, off_18B6
    ck                      FG_STATUS, F_SCENARIO, 1
    sce_em_set              0, ID_EM_1, ENEMY_LICKER_RED, 2, AI_01 | AI_04, 0, SBK_14, 0, 109, -22050, -5400, -25500, 2048, 0, 0
    endif
    nop

off_18B6:
    nop
    nop

off_18B8:
    if                      0, off_1A2C
    ck                      FG_STATUS, F_PLAYER, 0
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -26350, -2400, -17600, -1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1926
    cmp                     0, V_CUT, CMP_EQ, 0
    if                      0, off_1922
    ck                      FG_STATUS, F_SCENARIO, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -22150, -1600, -22050, 0, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1924

off_1922:
    nop
    nop

off_1924:
    endif
    nop

off_1926:
    if                      0, off_1956
    ck                      FG_STATUS, F_SCENARIO, 0
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -21100, -1300, -13600, 0, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1956:
    obj_model_set           ID_OBJ_5, 0, 0, 0, 0, 0, 0, 10, 16, -21100, -1300, -14800, 0, -1600, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_19A0
    cmp                     0, V_CUT, CMP_EQ, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26700, -18000, 1000, 1200, ITEM_ROOKPLUG, 1, 56, ID_OBJ_1, 128
    else                    0, off_19B8

off_19A0:
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26700, -18000, 1000, 1200, ITEM_ROOKPLUG, 1, 56, ID_OBJ_1, IF_DEFAULT
    nop
    nop

off_19B8:
    if                      0, off_19DA
    ck                      FG_STATUS, F_SCENARIO, 0
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23320, -23050, 1500, 1500, ITEM_SMALLKEY, 1, 60, ID_OBJ_2, IF_GLINT_GRAY
    else                    0, off_19F2

off_19DA:
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17900, -23800, 1800, 2400, ITEM_HANDGUNAMMO, 15, 61, ID_OBJ_255, IF_DEFAULT
    nop
    nop

off_19F2:
    if                      0, off_1A12
    ck                      FG_STATUS, F_SCENARIO, 0
    item_aot_set            ID_AOT_8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21750, -13850, 1400, 1000, ITEM_CORD, 1, 199, ID_OBJ_4, IF_DEFAULT
    endif
    nop

off_1A12:
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21750, -15750, 1400, 1000, ITEM_FAIDSPRAY, 1, 110, ID_OBJ_5, IF_DEFAULT
    else                    0, off_1B96

off_1A2C:
    obj_model_set           ID_OBJ_1, 0, 0, 0, 0, 0, 0, 10, 16, -26350, -2400, -17600, -1024, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0
    if                      0, off_1A8E
    cmp                     0, V_CUT, CMP_EQ, 0
    if                      0, off_1A8C
    ck                      FG_STATUS, F_SCENARIO, 0
    obj_model_set           ID_OBJ_4, 0, 0, 0, 0, 0, 0, 10, 16, -22950, -1400, -20950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    endif
    nop

off_1A8C:
    endif
    nop

off_1A8E:
    if                      0, off_1AC0
    ck                      FG_STATUS, F_SCENARIO, 0
    obj_model_set           ID_OBJ_2, 0, 0, 0, 0, 0, 0, 10, 16, -21100, -1300, -13600, 0, 0, -1024, 0, 0, 0, 0, 0, 0, 0, 0
    else                    0, off_1AE8

off_1AC0:
    obj_model_set           ID_OBJ_3, 0, 0, 0, 0, 0, 0, 10, 16, -21100, -1300, -14800, 0, -1600, 0, 0, 0, 0, 0, 0, 0, 0, 0
    nop
    nop

off_1AE8:
    if                      0, off_1B0C
    cmp                     0, V_CUT, CMP_EQ, 0
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26700, -18000, 1000, 1200, ITEM_EAGLESTONE, 1, 56, ID_OBJ_1, 128
    else                    0, off_1B24

off_1B0C:
    item_aot_set            ID_AOT_3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26700, -18000, 1000, 1200, ITEM_EAGLESTONE, 1, 56, ID_OBJ_1, IF_DEFAULT
    nop
    nop

off_1B24:
    if                      0, off_1B46
    ck                      FG_STATUS, F_SCENARIO, 0
    item_aot_set            ID_AOT_7, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24470, -21530, 1800, 1800, ITEM_HANDGUNAMMO, 15, 171, ID_OBJ_4, IF_DEFAULT
    else                    0, off_1B74

off_1B46:
    item_aot_set            ID_AOT_5, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17900, -23800, 1800, 2400, ITEM_HANDGUNAMMO, 15, 61, ID_OBJ_255, IF_DEFAULT
    item_aot_set            ID_AOT_6, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21750, -15750, 1400, 1000, ITEM_FAIDSPRAY, 1, 110, ID_OBJ_3, IF_DEFAULT
    nop
    nop

off_1B74:
    if                      0, off_1B94
    ck                      FG_STATUS, F_SCENARIO, 0
    item_aot_set            ID_AOT_8, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -21750, -13850, 1400, 1000, ITEM_CORD, 1, 199, ID_OBJ_2, IF_DEFAULT
    endif
    nop

off_1B94:
    nop
    nop

off_1B96:
    aot_set                 ID_AOT_11, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -27300, -23500, 1800, 3000, ID_MSG_1, 0, 0, 0, 255, 255
    evt_end                 0

.proc aot
    if                      0, off_1BEE
    ck                      FG_COMMON, 69, 0
    if                      0, off_1BD2
    ck                      FG_STATUS, F_SCENARIO, 1
    if                      0, off_1BCE
    ck                      FG_ITEM, 110, 1
    evt_exec                255, I_GOSUB, main_02
    set                     FG_COMMON, 69, 1
    endif
    nop

off_1BCE:
    else                    0, off_1BEC

off_1BD2:
    if                      0, off_1BEA
    ck                      FG_ITEM, 56, 1
    aot_reset               ID_AOT_2, SCE_EVENT, SAT_PL | SAT_UNDER, 255, 0, I_GOSUB, main_02, 0, 0
    set                     FG_COMMON, 69, 1
    endif
    nop

off_1BEA:
    nop
    nop

off_1BEC:
    endif
    nop

off_1BEE:
    if                      0, off_1C06
    ck                      FG_ENEMY, 108, 1
    ck                      FG_ROOM, 20, 0
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_FADEOUT, BGM_TYPE_MAIN_VOL, 0, 0
    set                     FG_ROOM, 20, 1
    endif
    nop

off_1C06:
    evt_end                 0

.proc main_02
    aot_reset               ID_AOT_2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    work_set                WK_ENEMY, ID_EM_0
    nop
    member_set              M_SCE_FREE0, 1
    sleep                   10, 5
    nop_8a                  0, 10, 0, 0, 0
    nop_8b                  200, 2, 0, 0, 0
    nop_8b                  250, 6, 0, 2, 0
    se_on                   2, 33, 0, -22000, -1800, -19800
    set                     FG_STATUS, 15, 0
    set                     FG_PBF04, 4, 0
    set                     FG_PBF05, 3, 0
    sce_espr_on             0, 528, 0, 10240, -22200, -2200, -18800, 3072
    sce_espr_on             0, 784, 0, 9728, -22200, -2100, -18800, 3072
    sce_espr_on             0, 1040, 0, 9984, -22200, -2250, -18800, 3072
    sce_espr_on             0, 529, 0, 8192, -21200, -2150, -18800, 3072
    sce_espr_on             0, 785, 0, 6144, -21200, -2100, -18800, 3072
    sce_espr_on             0, 1041, 0, 8448, -21200, -2200, -18800, 3072
    sce_espr_on             0, 19, 0, 8192, -21700, -3600, -18800, 3072
    sce_espr_on             0, 19, 0, 8192, -21300, -3200, -18800, 3072
    sce_espr_on             0, 19, 0, 8192, -21900, -3400, -18800, 3072
    sce_espr_on             0, 274, 0, 8192, -21000, -3200, -18800, 3072
    sce_espr_on             0, 274, 0, 8192, -20200, -3100, -18800, 3072
    sce_espr_on             0, 274, 0, 8192, -20800, -3300, -18800, 3072
    sce_espr_on             0, 529, 0, 6144, -21800, -3000, -18800, 3072
    sce_espr_on             0, 529, 0, 6144, -20300, -2900, -18800, 3072
    sce_espr_on             0, 529, 0, 6144, -20800, -2800, -18800, 3072
    sce_espr_on             0, 784, 0, 6144, -22550, -2700, -18800, 3072
    sce_espr_on             0, 784, 0, 6144, -20350, -2600, -18800, 3072
    sce_espr_on             0, 784, 0, 6144, -20000, -2500, -18800, 3072
    sce_espr_on             0, 1040, 0, 4096, -21600, -2100, -18800, 3072
    sce_espr_on             0, 1040, 0, 4096, -21500, -2800, -18800, 3072
    sce_espr_on             0, 1040, 0, 4096, -20800, -2300, -18800, 3072
    sce_espr_on             0, 1041, 0, 4096, -21700, -1800, -18800, 3072
    sce_espr_on             0, 1041, 0, 4096, -20300, -1700, -18800, 3072
    sce_espr_on             0, 1041, 0, 4096, -20750, -2600, -18800, 3072
    sce_espr_on             0, 785, 0, 4096, -19800, -1900, -18800, 3072
    sce_espr_on             0, 785, 0, 4096, -19450, -1600, -18800, 3072
    sce_espr_on             0, 785, 0, 4096, -19650, -2550, -18800, 3072
    sleep                   10, 5
    sce_espr_on             0, 1041, 0, 4096, -23700, -1800, -18800, 3072
    sce_espr_on             0, 1041, 0, 4096, -23300, -1700, -18800, 3072
    sce_espr_on             0, 1041, 0, 4096, -23750, -2600, -18800, 3072
    sce_espr_on             0, 785, 0, 4096, -23800, -1900, -18800, 3072
    sce_espr_on             0, 785, 0, 4096, -23450, -1600, -18800, 3072
    sce_espr_on             0, 785, 0, 4096, -23650, -2550, -18800, 3072
    sleep                   10, 5
    sce_bgm_control         BGM_CHANNEL_SUB0, BGM_OP_START, BGM_TYPE_MAIN_VOL, 0, 0
    sce_bgmtbl_set          0, 14, 2, 255, 0
    sca_id_set              22, 0, 0
    set                     FG_PBF03, 3, 1
    set                     FG_PBF04, 5, 1
    set                     FG_PBF04, 6, 1
    set                     FG_PBF05, 4, 1
    set                     FG_PBF06, 4, 1
    evt_end                 0
