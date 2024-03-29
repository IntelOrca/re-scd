.version 2

.init
.proc init
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -9022, 1694, 1950, 2810, -24789, 0, 15068, 0, 0, 2, 7, 0, 10, 0, 0, 0, UNLOCKED, 0
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26192, -26796, 3150, 1300, -6806, 0, -15564, 1024, 0, 25, 0, 0, 10, 0, 0, 0, UNLOCKED, 0
    if                      0, off_1E98
    ck                      FG_SYSTEM, F_DIFFICULT, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 64, AI_DEFAULT, 0, SBK_9, 2, 160, -25941, 0, -24228, 699, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 64, AI_DEFAULT, 0, SBK_9, 1, 161, -23197, 0, -18539, 3115, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_GIRL, 64, AI_DEFAULT, 0, SBK_45, 0, 162, -26402, 0, -7345, 2048, 0, 0
    else                    0, off_1EF2

off_1E98:
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_RANDOM, 64, AI_DEFAULT, 0, SBK_9, 2, 159, -23585, 0, -11764, 3968, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_RANDOM, 64, AI_DEFAULT, 0, SBK_9, 2, 160, -25861, 0, -23028, 699, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_RANDOM, 64, AI_DEFAULT, 0, SBK_9, 1, 161, -23197, 0, -18539, 3115, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_GIRL, 64, AI_DEFAULT, 0, SBK_45, 0, 162, -26402, 0, -7345, 2048, 0, 0
    nop
    nop

off_1EF2:
    if                      0, off_1F12
    ck                      FG_SYSTEM, F_DIFFICULT, 1
    item_aot_set            ID_AOT_4, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -19542, -8806, 1950, 3310, ITEM_HANDGUNAMMO, 15, 161, ID_OBJ_255, IF_DEFAULT
    endif
    nop

off_1F12:
    evt_end                 0

.main
.proc main
    if                      0, off_1F2A
    cmp                     0, V_CUT, CMP_EQ, 10
    sca_id_set              28, 0, 0
    endif
    nop

off_1F2A:
    save                    V_04, 16
    gosub                   main_02
    evt_end                 0

.proc aot
    if                      0, off_1F42
    cmp                     0, V_CUT, CMP_EQ, 8
    sca_id_set              28, 0, 0
    endif
    nop

off_1F42:
    gosub                   main_02
    evt_end                 0

.proc main_02
    if                      0, off_2050
    work_copy               4, 4, 1
    cmp                     0, V_CUT, CMP_NE, 0
    switch                  26, off_204A
    case                    0, off_1F6C, 0
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 50, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 40, 64
    break                   0

off_1F6C:
    case                    0, off_1F80, 1
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 50, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 40, 64
    break                   0

off_1F80:
    case                    0, off_1F94, 2
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 50, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 40, 64
    break                   0

off_1F94:
    case                    0, off_1FA8, 3
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 40, 64
    break                   0

off_1FA8:
    case                    0, off_1FBC, 4
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 70, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 50, 64
    break                   0

off_1FBC:
    case                    0, off_1FD0, 5
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 70, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 50, 64
    break                   0

off_1FD0:
    case                    0, off_1FE4, 6
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 50, 64
    break                   0

off_1FE4:
    case                    0, off_1FF8, 7
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 50, 64
    break                   0

off_1FF8:
    case                    0, off_200C, 8
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 50, 64
    break                   0

off_200C:
    case                    0, off_2020, 9
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 50, 64
    break                   0

off_2020:
    case                    0, off_2034, 10
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 60, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 50, 64
    break                   0

off_2034:
    case                    0, off_2048, 11
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG1_VOL, 50, 64
    sce_bgm_control         BGM_CHANNEL_MAIN, BGM_OP_NOP, BGM_TYPE_PROG2_VOL, 40, 64
    break                   0

off_2048:
    eswitch                 0

off_204A:
    copy                    V_04, V_CUT
    nop
    endif
    nop

off_2050:
    evt_end                 0
    db                      0x00, 0x00
