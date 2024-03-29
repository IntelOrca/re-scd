.version 2

.init
.proc init
    door_aot_se             ID_AOT_0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, 11383, -18269, 1360, 2090, -12264, 0, -25113, 2104, 4, 5, 0, 0, 7, 1, 0, 0, UNLOCKED, 0
    if                      0, off_0E5A
    ck                      FG_STATUS, F_PLAYER, 0
    ck                      FG_STATUS, F_SCENARIO, 1
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13714, -14483, 2060, 2040, -21312, 0, -23195, 2048, 5, 7, 0, 0, 41, 0, 0, 152, ITEM_MASTERKEY, 0
    else                    0, off_0E7C

off_0E5A:
    door_aot_se             ID_AOT_1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -13714, -14483, 2060, 2040, -21312, 0, -23195, 2048, 5, 7, 0, 0, 41, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_0E7C:
    door_aot_se             ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -23414, -20383, 2260, 3600, -21274, 0, -23553, 2064, 5, 1, 0, 0, 39, 0, 0, 0, UNLOCKED, 0
    if                      0, off_0ECC
    ck                      FG_STATUS, F_PLAYER, 0
    ck                      FG_SCENARIO, 36, 1
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10164, -28783, 2340, 1910, -8895, 0, 7625, 1024, 5, 17, 0, 0, 37, 0, 0, 0, UNLOCKED, 0
    else                    0, off_0EEE

off_0ECC:
    door_aot_se             ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -10164, -28783, 2340, 1910, -8895, 0, 7625, 1024, 5, 8, 0, 0, 37, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_0EEE:
    evt_end                 0

.main
.proc main
    if                      0, off_0F28
    ck                      FG_ITEM_2, 29, 1
    if                      0, off_0F18
    keep_item_ck            ITEM_MASTERKEY
    gosub                   main_07
    else                    0, off_0F26

off_0F18:
    if                      0, off_0F24
    ck                      FG_COMMON, 139, 1
    gosub                   main_07
    endif
    nop

off_0F24:
    nop
    nop

off_0F26:
    endif
    nop

off_0F28:
    if                      0, off_0F40
    ck                      FG_COMMON, 133, 1
    ck                      FG_STATUS, F_SCENARIO, 1
    aot_reset               ID_AOT_0, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_1, 0, 0, 0, 255, 255
    endif
    nop

off_0F40:
    if                      0, off_0F6C
    ck                      FG_COMMON, 92, 1
    ck                      FG_STATUS, F_SCENARIO, 1
    ck                      FG_COMMON, 133, 0
    ck                      FG_SCENARIO, 13, 0
    if                      0, off_0F5E
    keep_item_ck            ITEM_MASTERKEY
    else                    0, off_0F6A

off_0F5E:
    aot_reset               ID_AOT_2, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_08, 0, 0
    nop
    nop

off_0F6A:
    endif
    nop

off_0F6C:
    gosub                   main_02
    evt_end                 0

.proc aot
    evt_end                 0

.proc main_02
    if                      0, off_0F86
    ck                      FG_STATUS, F_SCENARIO, 0
    aot_reset               ID_AOT_2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, ID_MSG_0, 0, 0, 0, 255, 255
    endif
    nop

off_0F86:
    if                      0, off_0FAC
    ck                      FG_STATUS, F_SCENARIO, 0
    if                      0, off_0FA4
    ck                      FG_COMMON, 188, 0
    aot_reset               ID_AOT_3, SCE_EVENT, SAT_PL | SAT_MANUAL | SAT_FRONT, 255, 0, I_GOSUB, main_04, 0, 0
    else                    0, off_0FA8

off_0FA4:
    gosub                   main_05
    nop
    nop

off_0FA8:
    else                    0, off_0FB0

off_0FAC:
    gosub                   main_06
    nop
    nop

off_0FB0:
    evt_end                 0

.proc main_03
    if                      0, off_0FC6
    ck                      FG_COMMON, 172, 0
    ck                      FG_KEY, 24, 1
    set                     FG_COMMON, 172, 1
    aot_on                  ID_AOT_1
    endif
    nop

off_0FC6:
    evt_end                 0

.proc main_04
    set                     FG_COMMON, 188, 1
    aot_reset               ID_AOT_3, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 65, 221, 0, 0, 201, 29
    aot_on                  ID_AOT_3
    evt_end                 0

.proc main_05
    sce_em_set              0, ID_EM_0, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 62, -12986, 0, -16936, 491, 0, 0
    sce_em_set              0, ID_EM_1, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 63, -13166, 0, -19298, 3323, 0, 0
    sce_em_set              0, ID_EM_2, ENEMY_ZOMBIE_NAKED, 0, AI_DEFAULT, 0, SBK_46, 0, 64, -9484, 0, -23454, 3589, 0, 0
    sce_em_set              0, ID_EM_3, ENEMY_ZOMBIE_NAKED, 6, AI_DEFAULT, 0, SBK_46, 0, 65, -3086, 0, -18511, 2497, 0, 0
    sce_em_set              0, ID_EM_4, ENEMY_ZOMBIE_NAKED, 6, AI_DEFAULT, 0, SBK_46, 0, 171, -4713, 0, -13237, 1616, 0, 0
    evt_end                 0

.proc main_06
    if                      0, off_1056
    ck                      FG_COMMON, 92, 0
    gosub                   main_05
    endif
    nop

off_1056:
    evt_end                 0

.proc main_07
    if                      0, off_107A
    cmp                     0, V_LAST_RDT, CMP_EQ, 1544
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_JACKET, 0, AI_04, 0, SBK_32, 0, 255, -9894, 0, -26680, 3199, 0, 0
    endif
    nop

off_107A:
    if                      0, off_109C
    cmp                     0, V_LAST_RDT, CMP_EQ, 1543
    sce_em_set              0, ID_EM_255, ENEMY_SHERRY_JACKET, 0, AI_04, 0, SBK_32, 0, 255, -11614, 0, -12486, 311, 0, 0
    endif
    nop

off_109C:
    evt_end                 0

.proc main_08
    set                     FG_SCENARIO, 13, 1
    set                     FG_STOP, 7, 1
    set                     FG_STATUS, 27, 1
    aot_reset               ID_AOT_2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 230, 172, 0, 0, 255, 163
    xa_vol                  20
    xa_on                   0, 23
    sleep                   10, 30
    work_set                WK_PLAYER, 0
    nop
    plc_neck                2, 0, -512, 0, 64, 64
    sleep                   10, 20
    plc_dest                0, 21, 32, 477, 96
    sleep                   10, 20
    plc_motion              0, 16, 0
    plc_neck                2, 0, 512, 0, 24, 24
    sleep                   10, 40
    plc_neck                2, 0, -512, 0, 20, 20
    sleep                   10, 40
    wsleep
    wsleeping
    plc_ret
    cut_chg                 7
    xa_vol                  70
    evt_next
    xa_on                   0, 26
    wsleep
    wsleeping
    cut_old
    set                     FG_STOP, 7, 0
    set                     FG_STATUS, 27, 0
    nop
    evt_end                 0

.proc main_09
    do                      0, off_1122
    evt_next
    nop
    edwhile                 off_1122
    ck                      FG_ROOM, 32, 0

off_1122:
    evt_end                 0
