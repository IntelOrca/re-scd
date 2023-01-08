.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -24140, -25801, 1300, 1400, -24200, 0, -25000, 0, 0, 14, 0, 0, 0, 0, 0, 0, UNLOCKED, 0
    door_aot_se             1, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -11780, -9531, 1800, 1200, -11075, 0, -26200, 3072, 1, 27, 4, 0, 5, 128, 0, 0, UNLOCKED, 0
    evt_end                 0

.main
.proc main_00
    aot_set                 2, SCE_MESSAGE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -14500, -13900, 5600, 1800, 0, 0, 0, 0, 255, 255
    if                      0, off_088C
    ck                      1, 0, 0
    if                      0, off_088A
    ck                      1, 1, 1
    ck                      8, 106, 1
    ck                      4, 80, 0
    if                      0, off_087A
    cmp                     0, 27, CMP_EQ, 270
    set                     6, 196, 0
    sce_em_set              0, 0, ENEMY_TYRANT1, 0, 0, 0, 18, 0, 196, -23000, 0, -10500, 0, 0, 0
    if                      0, off_0870
    ck                      6, 199, 0
    item_aot_set            10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 194, -900, -900, 1800, 1800, ITEM_SHOTGUNAMMO, 7, 206, 255, 1
    aot_reset               10, SCE_AUTO, SAT_PL | SAT_FRONT, 0, 0, 0, 0, 0, 0
    endif
    nop

off_0870:
    sce_bgm_control         0, 1, 0, 0, 0
    else                    0, off_0888

off_087A:
    set                     4, 80, 1
    sce_bgmtbl_set          0, 13, 1, 255, 0
    nop
    nop

off_0888:
    endif
    nop

off_088A:
    endif
    nop

off_088C:
    if                      0, off_08D2
    ck                      6, 199, 1
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -24690, 0, -16640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -25300, -17900, 1800, 1800, ITEM_MAGNUMAMMO, 8, 206, 0, 161
    endif
    nop

off_08D2:
    evt_end                 0

.proc main_01
    if                      0, off_0914
    ck                      1, 0, 0
    ck                      1, 1, 1
    ck                      8, 106, 1
    ck                      4, 80, 0
    if                      0, off_0912
    ck                      6, 196, 1
    ck                      5, 10, 0
    if                      0, off_0906
    ck                      6, 199, 0
    evt_exec                255, I_GOSUB, main_02
    set                     6, 199, 1
    endif
    nop

off_0906:
    sce_bgm_control         0, 5, 0, 0, 0
    set                     5, 10, 1
    endif
    nop

off_0912:
    endif
    nop

off_0914:
    evt_end                 0

.proc main_02
    if                      0, off_092E
    ck                      8, 206, 0
    sleep                   10, 151
    aot_reset               10, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 22, 0, 8, 0, 206, 0
    endif
    nop

off_092E:
    evt_end                 0
