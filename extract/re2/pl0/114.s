.version 2
.init
.proc init_00
    if                      0, off_09FA
    ck                      1, 6, 1
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14246, -26673, 1800, 1800, -26100, 0, -24800, 0, 0, 19, 0, 0, 3, 0, 0, 0, UNLOCKED, 0
    aot_set                 1, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24800, -15363, 1800, 1800, 0, 0, 0, 0, 255, 255
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24800, -3963, 1800, 1800, -25450, -3600, -15800, 0, 0, 12, 7, 2, 3, 0, 0, 0, UNLOCKED, 0
    evt_end                 0
    endif
    nop

off_09FA:
    if                      0, off_0A26
    ck                      1, 1, 0
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14246, -26673, 1800, 1800, -26100, 0, -24800, 0, 0, 19, 0, 0, 3, 0, 0, 137, ITEM_SPADEKEY, 0
    else                    0, off_0A48

off_0A26:
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14246, -26673, 1800, 1800, -26100, 0, -24800, 0, 0, 19, 0, 0, 3, 0, 0, 0, UNLOCKED, 0
    nop
    nop

off_0A48:
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24800, -15363, 1800, 1800, -26470, 0, -18700, 0, 0, 21, 2, 0, 24, 1, 0, 0, UNLOCKED, 0
    door_aot_se             2, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24800, -3963, 1800, 1800, -25450, -3600, -15800, 0, 0, 12, 7, 2, 3, 0, 0, 0, UNLOCKED, 0
    evt_end                 0
    db                      0x48, 0xA8

.main
.proc main_00
    if                      0, off_0B48
    ck                      1, 6, 1
    sce_em_set              0, 0, ENEMY_ZOMBIERANDOM, 1, 32, 0, 43, 0, 91, -27062, 0, -18030, 3627, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIERANDOM, 1, 32, 0, 6, 0, 92, -25530, 0, -20109, 2775, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIERANDOM, 1, 32, 0, 43, 0, 149, -27437, 0, -21898, 3075, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIERANDOM, 1, 32, 0, 6, 0, 150, -26169, 0, -22968, 3735, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIERANDOM, 3, 32, 0, 43, 0, 151, -17041, 0, -25784, 1951, 0, 0
    sce_em_set              0, 5, ENEMY_ZOMBIERANDOM, 3, 32, 0, 6, 0, 152, -25730, 0, -11673, -1056, 0, 0
    sce_em_set              0, 6, ENEMY_ZOMBIERANDOM, 3, 32, 0, 43, 0, 153, -27368, 0, -15043, -864, 0, 0
    evt_end                 0
    endif
    nop

off_0B48:
    aot_set                 4, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24800, -17100, 1800, 1800, 4, 0, 0, 0, 255, 255
    aot_set                 5, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14350, -24590, 1800, 1800, 3, 0, 0, 0, 255, 255
    if                      0, off_0C3A
    ck                      1, 0, 0
    if                      0, off_0BC6
    ck                      1, 1, 0
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 0, 0, 0, 3, 0, 78, -28158, 0, -14569, 3583, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 6, 0, 0, 6, 0, 81, -24957, 0, -18962, 2023, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIECOP, 6, 0, 0, 3, 0, 85, -21752, 0, -24915, 1349, 0, 0
    else                    0, off_0C36

off_0BC6:
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 6, 0, 0, 3, 0, 78, -25237, 0, -19788, 2011, 0, 0
    sce_em_set              0, 1, ENEMY_ZOMBIECOP, 3, 32, 0, 6, 0, 81, -24497, 0, -25703, 3671, 0, 0
    sce_em_set              0, 2, ENEMY_ZOMBIECOP, 6, 0, 0, 3, 0, 85, -27545, 0, -23170, 3739, 0, 0
    sce_em_set              0, 3, ENEMY_ZOMBIECOP, 0, 0, 0, 6, 0, 127, -25367, 0, -26390, 3287, 0, 0
    sce_em_set              0, 4, ENEMY_ZOMBIECOP, 6, 0, 0, 3, 0, 128, -21495, 0, -24953, 91, 0, 0
    nop
    nop

off_0C36:
    else                    0, off_0CBC

off_0C3A:
    if                      0, off_0C4A
    ck                      1, 1, 0
    save                    4, 93
    else                    0, off_0C50

off_0C4A:
    save                    4, 20
    nop
    nop

off_0C50:
    if                      0, off_0CBA
    work_copy               4, 2, 0
    ck                      8, 0, 1
    if                      0, off_0CA0
    ck                      4, 40, 0
    set                     4, 255, 1
    sce_em_set              0, 255, ENEMY_SHERRYWITHPENDANT, 0, 72, 0, 0, 0, 255, -26700, 0, -22840, 2800, 0, 0
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 6, 64, 0, 5, 0, 78, -27330, 0, -18140, 1224, 0, 0
    set                     4, 40, 1
    evt_exec                255, I_GOSUB, main_02
    else                    0, off_0CB8

off_0CA0:
    sce_em_set              0, 0, ENEMY_ZOMBIECOP, 6, 0, 0, 5, 0, 78, -27380, 0, -24810, 0, 0, 0
    nop
    nop

off_0CB8:
    endif
    nop

off_0CBA:
    nop
    nop

off_0CBC:
    evt_end                 0

.proc main_01
    evt_end                 0

.proc main_02
    set                     2, 7, 1
    set                     1, 27, 1
    sleep                   10, 20
    evt_exec                9, I_GOSUB, main_06
    work_set                WK_PLAYER, 0
    nop
    plc_dest                0, 9, 33, -24000, -24810
    gosub                   7
    plc_motion              2, 2, 4
    sleep                   10, 20
    xa_on                   0, 41
    wsleep
    wsleeping
    cut_chg                 3
    sleep                   10, 1
    sce_bgm_control         1, 1, 0, 0, 0
    sce_bgmtbl_set          0, 20, 1, 255, 0
    if                      0, off_0D16
    ck                      1, 1, 1
    work_set                WK_PLAYER, 0
    nop
    pos_set                 0, -25350, 0, -15090
    endif
    nop

off_0D16:
    evt_kill                9
    evt_exec                9, I_GOSUB, main_04
    gosub                   3
    if                      0, off_0D2C
    ck                      1, 1, 0
    cut_chg                 5
    else                    0, off_0D30

off_0D2C:
    cut_chg                 4
    nop
    nop

off_0D30:
    evt_kill                9
    gosub                   5
    gosub                   10
    evt_end                 0

.proc main_03
    work_set                WK_SPLAYER, 0
    nop
    sleep                   10, 1
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -4097
    member_set2             7, 16
    nop
    plc_dest                0, 8, 35, -25100, -24810
    gosub                   9
    xa_on                   0, 42
    plc_dest                0, 5, 35, -18600, -25600
    gosub                   9
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 4096
    member_set2             7, 16
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, -32768
    member_set2             7, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 2
    member_set2             0, 16
    nop
    member_copy             16, 0
    nop
    calc                    0, OP_OR, 16, 8
    member_set2             0, 16
    nop
    pos_set                 0, -16200, 0, -12200
    member_set              39, 184, 192
    member_set              40, 88, 208
    wsleep
    wsleeping
    evt_end                 0

.proc main_04
    work_set                WK_ENEMY, 0
    plc_motion              1, 0, 5
    nop
    se_on                   3, 0, 3, 0, 0, 0
    sleep                   10, 25
    plc_flg                 1, 6
    se_on                   3, 0, 3, 0, 0, 0
    sleep                   10, 40
    plc_flg                 1, 5
    se_on                   3, 0, 3, 0, 0, 0
    sleep                   10, 25
    plc_flg                 1, 6
    se_on                   3, 0, 3, 0, 0, 0
    sleep                   10, 40
    plc_flg                 1, 5
    se_on                   3, 0, 3, 0, 0, 0
    sleep                   10, 25
    plc_flg                 1, 6
    se_on                   3, 0, 3, 0, 0, 0
    sleep                   10, 40
    work_set                WK_ENEMY, 0
    plc_motion              2, 0, 20
    nop
    evt_end                 0

.proc main_05
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_AND, 16, -16385
    member_set2             7, 16
    nop
    member_set              2, 1, 0
    member_set              3, 13, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    evt_end                 0

.proc main_06
    work_set                WK_ENEMY, 0
    nop
    member_copy             16, 7
    nop
    calc                    0, OP_OR, 16, 16384
    member_set2             7, 16
    nop
    member_set              2, 4, 0
    member_set              3, 2, 0
    member_set              4, 0, 0
    member_set              5, 0, 0
    plc_motion              2, 0, 20
    evt_end                 0

.proc main_07
    do                      0, off_0E90
    evt_next
    nop
    edwhile                 off_0E90
    ck                      5, 33, 0

off_0E90:
    evt_end                 0

.proc main_08
    do                      0, off_0E9E
    evt_next
    nop
    edwhile                 off_0E9E
    ck                      5, 36, 0

off_0E9E:
    evt_end                 0

.proc main_09
    do                      0, off_0EAC
    evt_next
    nop
    edwhile                 off_0EAC
    ck                      5, 35, 0

off_0EAC:
    evt_end                 0

.proc main_0A
    work_set                WK_PLAYER, 0
    plc_ret
    set                     2, 7, 0
    set                     1, 27, 0
    cut_auto                1
    evt_end                 0
    db                      0x00, 0x00
