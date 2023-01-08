.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 1, 0, -8441, -26564, 1300, 1200, -26340, -1800, -20754, -4096, 3, 7, 0, 1, 34, 1, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -26622, -14200, 1500, 2000, -24251, 0, -25677, 3040, 3, 14, 0, 0, 7, 1, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    gosub                   2
    gosub                   6
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    if                      0, off_0F50
    ck                      4, 73, 0
    aot_set                 2, SCE_EVENT, SAT_PL | SAT_UNDER, 1, 0, -18725, -27684, 2400, 3600, 255, 0, I_GOSUB, main_03, 0, 0
    endif
    nop

off_0F50:
    evt_end                 0

.proc main_03
    set                     4, 73, 1
    aot_reset               2, SCE_AUTO, SAT_AUTO, 0, 0, 0, 0, 0, 0
    se_on                   2, 10, 0, -18000, -7800, -25000
    nop_8b                  200, 15, 0, 0, 0
    evt_exec                255, I_GOSUB, main_04
    sce_shake_on            0, 1
    nop
    sleep                   10, 2
    sce_shake_on            0, 1
    nop
    sleep                   10, 2
    sce_shake_on            0, 2
    nop
    sleep                   10, 8
    evt_exec                255, I_GOSUB, main_05
    evt_end                 0

.proc main_04
    sce_espr_on             0, 25, 0, 2816, -18000, -7800, -20900, 0
    sce_espr_on             0, 281, 0, 4096, -17000, -7500, -24900, 0
    sce_espr_on             0, 25, 0, 6144, -19000, -7000, -26900, 0
    sce_espr_on             0, 281, 0, 4096, -18000, -7400, -21900, 0
    sce_espr_on             0, 25, 0, 8192, -20000, -7000, -24900, 0
    evt_end                 0

.proc main_05
    sce_espr_on             0, 25, 0, 2816, -18000, -7800, -22900, 0
    sce_espr_on             0, 281, 0, 4096, -15000, -7200, -28900, 0
    sce_espr_on             0, 25, 0, 6144, -17000, -7000, -25900, 0
    sce_espr_on             0, 281, 0, 4096, -18000, -7500, -20900, 0
    sce_espr_on             0, 25, 0, 8192, -20000, -7000, -23900, 0
    evt_end                 0

.proc main_06
    if                      0, off_109A
    ck                      1, 3, 1
    if                      0, off_1064
    cmp                     0, 27, CMP_EQ, 1031
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 1, 32, 0, 255, -8220, -1800, -26508, 2161, 0, 0
    else                    0, off_107C

off_1064:
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 4, 0, 32, 0, 255, -26392, -224, -14650, 792, 0, 0
    nop
    nop

off_107C:
    if                      0, off_1098
    ck                      1, 1, 1
    work_set                WK_SPLAYER, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 2048
    member_set2             7, 16
    nop
    endif
    nop

off_1098:
    endif
    nop

off_109A:
    evt_end                 0
