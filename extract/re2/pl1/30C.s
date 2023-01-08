.version 2
.init
.proc init_00
    door_aot_se             0, SCE_DOOR, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -12952, -17094, 900, 2080, -17328, 0, -12532, 3944, 2, 11, 1, 0, 8, 0, 0, 0, UNLOCKED, 0
    aot_set                 2, SCE_SAVE, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -17572, -14224, 2420, 14224, 3, 0, 0, 0, 0, 0
    aot_set                 4, SCE_ITEMBOX, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -18162, -18314, 2160, 2890, 0, 0, 1, 0, 0, 0
    obj_model_set           0, 0, 0, 0, 0, 0, 0, 10, 16, -17832, -1459, -16821, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    item_aot_set            3, SCE_ITEM, SAT_PL | SAT_MANUAL | SAT_FRONT, 0, 0, -15928, -18497, 1440, 1430, ITEM_HERBB, 1, 134, 2, 1
    obj_model_set           2, 0, 0, 0, 0, 0, 0, 10, 16, -15372, 0, -17608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    evt_end                 0
    db                      0x00, 0x00

.main
.proc main_00
    evt_end                 0

.proc main_01
    evt_end                 0
    db                      0xD4, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00
    db                      0x1A, 0x00, 0x00, 0x00, 0x08, 0x01, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x88, 0x02, 0x00, 0x00
    db                      0x30, 0x00, 0x00, 0x00, 0xC8, 0x04, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00
    db                      0x08, 0x01, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0xC8, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    db                      0x08, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    db                      0xC8, 0xFB, 0x00, 0x00, 0x00, 0x00, 0xA6, 0xFF, 0x38, 0x04, 0x00, 0x00, 0x00, 0x00, 0xA6, 0xFF
    db                      0xC8, 0xFB, 0x00, 0x00, 0xA0, 0x05, 0x00, 0x00, 0x38, 0x04, 0x00, 0x00, 0xA0, 0x05, 0x00, 0x00
    db                      0xC8, 0xFB, 0x00, 0x00, 0xA0, 0x05, 0xA6, 0xFF, 0x38, 0x04, 0x00, 0x00, 0xA0, 0x05, 0xA6, 0xFF
    db                      0xC8, 0xFB, 0x00, 0x00, 0xD0, 0x02, 0xA6, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA6, 0xFF
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x05, 0xA6, 0xFF
    db                      0x00, 0x00, 0x00, 0x00, 0xA0, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x02, 0x33, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x4E, 0x00, 0x33, 0x00, 0xE4, 0x03, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00
    db                      0xE5, 0x03, 0x00, 0x00, 0x4E, 0x00, 0x33, 0x00, 0x1C, 0xFC, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00
    db                      0x1B, 0xFC, 0x00, 0x00, 0x52, 0x05, 0x33, 0x00, 0x1C, 0xFC, 0x00, 0x00, 0x53, 0x05, 0x00, 0x00
    db                      0x1B, 0xFC, 0x00, 0x00, 0x52, 0x05, 0x33, 0x00, 0xE4, 0x03, 0x00, 0x00, 0x53, 0x05, 0x00, 0x00
    db                      0xE5, 0x03, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4E, 0x00, 0x33, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x53, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x52, 0x05, 0x33, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    db                      0x00, 0xF0, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    db                      0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x15, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00
    db                      0x00, 0xF0, 0x00, 0x00, 0x00, 0x10, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x15, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00
    db                      0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x15, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x15, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
    db                      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00
    db                      0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x0A, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00
    db                      0x02, 0x00, 0x07, 0x00, 0x02, 0x00, 0x05, 0x00, 0x03, 0x00, 0x01, 0x00, 0x03, 0x00, 0x03, 0x00
    db                      0x03, 0x00, 0x07, 0x00, 0x04, 0x00, 0x0B, 0x00, 0x04, 0x00, 0x05, 0x00, 0x04, 0x00, 0x07, 0x00
    db                      0x05, 0x00, 0x0B, 0x00, 0x05, 0x00, 0x0C, 0x00, 0x05, 0x00, 0x05, 0x00, 0x06, 0x00, 0x04, 0x00
    db                      0x06, 0x00, 0x02, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x04, 0x00, 0x07, 0x00, 0x06, 0x00
    db                      0x07, 0x00, 0x02, 0x00, 0x08, 0x00, 0x09, 0x00, 0x08, 0x00, 0x08, 0x00, 0x08, 0x00, 0x03, 0x00
    db                      0x09, 0x00, 0x0A, 0x00, 0x09, 0x00, 0x03, 0x00, 0x09, 0x00, 0x01, 0x00, 0x0A, 0x00, 0x0A, 0x00
    db                      0x0A, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x03, 0x00, 0x0B, 0x00, 0x08, 0x00, 0x0B, 0x00, 0x09, 0x00
    db                      0x0B, 0x00, 0x02, 0x00, 0x0C, 0x00, 0x0B, 0x00, 0x0C, 0x00, 0x08, 0x00, 0x0C, 0x00, 0x06, 0x00
    db                      0x0D, 0x00, 0x03, 0x00, 0x0D, 0x00, 0x08, 0x00, 0x0D, 0x00, 0x07, 0x00, 0x0E, 0x00, 0x06, 0x00
    db                      0x0E, 0x00, 0x08, 0x00, 0x0E, 0x00, 0x02, 0x00, 0x0F, 0x00, 0x0C, 0x00, 0x0F, 0x00, 0x06, 0x00
    db                      0x0F, 0x00, 0x04, 0x00, 0x10, 0x00, 0x0C, 0x00, 0x10, 0x00, 0x0B, 0x00, 0x10, 0x00, 0x06, 0x00
    db                      0x11, 0x00, 0x08, 0x00, 0x11, 0x00, 0x0B, 0x00, 0x11, 0x00, 0x07, 0x00, 0x12, 0x00, 0x15, 0x00
    db                      0x12, 0x00, 0x0C, 0x00, 0x12, 0x00, 0x04, 0x00, 0x13, 0x00, 0x18, 0x00, 0x13, 0x00, 0x0C, 0x00
    db                      0x13, 0x00, 0x15, 0x00, 0x14, 0x00, 0x11, 0x00, 0x14, 0x00, 0x0A, 0x00, 0x14, 0x00, 0x01, 0x00
    db                      0x15, 0x00, 0x16, 0x00, 0x15, 0x00, 0x0A, 0x00, 0x15, 0x00, 0x11, 0x00, 0x16, 0x00, 0x0F, 0x00
    db                      0x16, 0x00, 0x04, 0x00, 0x16, 0x00, 0x00, 0x00, 0x17, 0x00, 0x0F, 0x00, 0x17, 0x00, 0x15, 0x00
    db                      0x17, 0x00, 0x04, 0x00, 0x18, 0x00, 0x13, 0x00, 0x18, 0x00, 0x01, 0x00, 0x18, 0x00, 0x05, 0x00
    db                      0x19, 0x00, 0x13, 0x00, 0x19, 0x00, 0x11, 0x00, 0x19, 0x00, 0x01, 0x00, 0x1A, 0x00, 0x14, 0x00
    db                      0x1A, 0x00, 0x0E, 0x00, 0x1A, 0x00, 0x0D, 0x00, 0x1B, 0x00, 0x0D, 0x00, 0x1B, 0x00, 0x19, 0x00
    db                      0x1B, 0x00, 0x14, 0x00, 0x1C, 0x00, 0x10, 0x00, 0x1C, 0x00, 0x12, 0x00, 0x1C, 0x00, 0x0D, 0x00
    db                      0x1D, 0x00, 0x17, 0x00, 0x1D, 0x00, 0x0D, 0x00, 0x1D, 0x00, 0x0E, 0x00, 0x1E, 0x00, 0x16, 0x00
    db                      0x1E, 0x00, 0x0E, 0x00, 0x1E, 0x00, 0x0F, 0x00, 0x1F, 0x00, 0x16, 0x00, 0x1F, 0x00, 0x17, 0x00
    db                      0x1F, 0x00, 0x0E, 0x00, 0x20, 0x00, 0x12, 0x00, 0x20, 0x00, 0x11, 0x00, 0x20, 0x00, 0x13, 0x00
    db                      0x21, 0x00, 0x12, 0x00, 0x21, 0x00, 0x10, 0x00, 0x21, 0x00, 0x11, 0x00, 0x22, 0x00, 0x19, 0x00
    db                      0x22, 0x00, 0x15, 0x00, 0x22, 0x00, 0x14, 0x00, 0x23, 0x00, 0x19, 0x00, 0x23, 0x00, 0x18, 0x00
    db                      0x23, 0x00, 0x15, 0x00, 0x24, 0x00, 0x0E, 0x00, 0x24, 0x00, 0x15, 0x00, 0x24, 0x00, 0x0F, 0x00
    db                      0x25, 0x00, 0x0E, 0x00, 0x25, 0x00, 0x14, 0x00, 0x25, 0x00, 0x15, 0x00, 0x26, 0x00, 0x0A, 0x00
    db                      0x26, 0x00, 0x0F, 0x00, 0x26, 0x00, 0x00, 0x00, 0x27, 0x00, 0x0A, 0x00, 0x27, 0x00, 0x16, 0x00
    db                      0x27, 0x00, 0x0F, 0x00, 0x28, 0x00, 0x17, 0x00, 0x28, 0x00, 0x11, 0x00, 0x28, 0x00, 0x10, 0x00
    db                      0x29, 0x00, 0x17, 0x00, 0x29, 0x00, 0x16, 0x00, 0x29, 0x00, 0x11, 0x00, 0x2A, 0x00, 0x0D, 0x00
    db                      0x2A, 0x00, 0x17, 0x00, 0x2A, 0x00, 0x10, 0x00, 0x2B, 0x00, 0x19, 0x00, 0x2B, 0x00, 0x0D, 0x00
    db                      0x2B, 0x00, 0x12, 0x00, 0x2C, 0x00, 0x18, 0x00, 0x2C, 0x00, 0x12, 0x00, 0x2C, 0x00, 0x13, 0x00
    db                      0x2D, 0x00, 0x18, 0x00, 0x2D, 0x00, 0x19, 0x00, 0x2D, 0x00, 0x12, 0x00, 0x2E, 0x00, 0x0C, 0x00
    db                      0x2E, 0x00, 0x13, 0x00, 0x2E, 0x00, 0x05, 0x00, 0x2F, 0x00, 0x0C, 0x00, 0x2F, 0x00, 0x18, 0x00
    db                      0x2F, 0x00, 0x13, 0x00, 0x04, 0x54, 0x00, 0x78, 0x0A, 0xA6, 0x80, 0x00, 0x04, 0xA6, 0x00, 0x00
    db                      0x04, 0x54, 0x00, 0x78, 0x0B, 0x55, 0x80, 0x00, 0x0A, 0xA6, 0x00, 0x00, 0x01, 0x9E, 0x00, 0x78
    db                      0x7D, 0x94, 0x80, 0x00, 0x7D, 0x9E, 0x00, 0x00, 0x01, 0x9E, 0x00, 0x78, 0x01, 0x94, 0x80, 0x00
    db                      0x7D, 0x94, 0x00, 0x00, 0x04, 0x54, 0x00, 0x78, 0x0B, 0x05, 0x80, 0x00, 0x04, 0x05, 0x00, 0x00
    db                      0x04, 0x54, 0x00, 0x78, 0x0B, 0x55, 0x80, 0x00, 0x0B, 0x05, 0x00, 0x00, 0x7D, 0x07, 0x00, 0x78
    db                      0x01, 0x13, 0x80, 0x00, 0x01, 0x07, 0x00, 0x00, 0x7D, 0x07, 0x00, 0x78, 0x7D, 0x13, 0x80, 0x00
    db                      0x01, 0x13, 0x00, 0x00, 0x02, 0x54, 0x00, 0x78, 0x3F, 0x54, 0x80, 0x00, 0x02, 0xA2, 0x00, 0x00
    db                      0x0B, 0x55, 0x00, 0x78, 0x04, 0x05, 0x80, 0x00, 0x0B, 0x05, 0x00, 0x00, 0x0B, 0x55, 0x00, 0x78
    db                      0x04, 0x54, 0x80, 0x00, 0x04, 0x05, 0x00, 0x00, 0x3F, 0x54, 0x00, 0x78, 0x02, 0x54, 0x80, 0x00
    db                      0x02, 0x06, 0x00, 0x00, 0x7B, 0x54, 0x00, 0x78, 0x3F, 0x54, 0x80, 0x00, 0x7B, 0x06, 0x00, 0x00
    db                      0x02, 0xA2, 0x00, 0x78, 0x3F, 0x54, 0x80, 0x00, 0x7B, 0xA2, 0x00, 0x00, 0x7B, 0x06, 0x00, 0x78
    db                      0x3F, 0x54, 0x80, 0x00, 0x02, 0x06, 0x00, 0x00, 0x0B, 0x55, 0x00, 0x78, 0x04, 0xA6, 0x80, 0x00
    db                      0x0A, 0xA6, 0x00, 0x00, 0x0B, 0x55, 0x00, 0x78, 0x04, 0x54, 0x80, 0x00, 0x04, 0xA6, 0x00, 0x00
    db                      0x3F, 0x54, 0x00, 0x78, 0x7B, 0x54, 0x80, 0x00, 0x7B, 0xA2, 0x00, 0x00, 0x78, 0xAE, 0x00, 0x78
    db                      0x3F, 0xA9, 0x80, 0x00, 0x7D, 0xA9, 0x00, 0x00, 0x3F, 0xAE, 0x00, 0x78, 0x3F, 0xA9, 0x80, 0x00
    db                      0x78, 0xAE, 0x00, 0x00, 0x05, 0xFB, 0x00, 0x78, 0x3F, 0xFF, 0x80, 0x00, 0x00, 0xFF, 0x00, 0x00
    db                      0x3F, 0xFB, 0x00, 0x78, 0x3F, 0xFF, 0x80, 0x00, 0x05, 0xFB, 0x00, 0x00, 0x78, 0xFB, 0x00, 0x78
    db                      0x7D, 0xA9, 0x80, 0x00, 0x7D, 0xFF, 0x00, 0x00, 0x78, 0xFB, 0x00, 0x78, 0x78, 0xAE, 0x80, 0x00
    db                      0x7D, 0xA9, 0x00, 0x00, 0x05, 0xAE, 0x00, 0x78, 0x00, 0xFF, 0x80, 0x00, 0x00, 0xA9, 0x00, 0x00
    db                      0x05, 0xAE, 0x00, 0x78, 0x05, 0xFB, 0x80, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x78, 0xAE, 0x00, 0x78
    db                      0x78, 0xFB, 0x80, 0x00, 0x3F, 0xD4, 0x00, 0x00, 0x3F, 0xD4, 0x00, 0x78, 0x3F, 0xAE, 0x80, 0x00
    db                      0x78, 0xAE, 0x00, 0x00, 0x05, 0xFB, 0x00, 0x78, 0x05, 0xAE, 0x80, 0x00, 0x3F, 0xD4, 0x00, 0x00
    db                      0x3F, 0xFB, 0x00, 0x78, 0x3F, 0xD4, 0x80, 0x00, 0x78, 0xFB, 0x00, 0x00, 0x09, 0x52, 0x00, 0x78
    db                      0x06, 0x8C, 0x80, 0x00, 0x09, 0x8C, 0x00, 0x00, 0x09, 0x52, 0x00, 0x78, 0x06, 0x52, 0x80, 0x00
    db                      0x06, 0x8C, 0x00, 0x00, 0x77, 0xA5, 0x00, 0x78, 0x07, 0x9E, 0x80, 0x00, 0x77, 0x9E, 0x00, 0x00
    db                      0x77, 0xA5, 0x00, 0x78, 0x07, 0xA5, 0x80, 0x00, 0x07, 0x9E, 0x00, 0x00, 0x06, 0x52, 0x00, 0x78
    db                      0x09, 0x8C, 0x80, 0x00, 0x06, 0x8C, 0x00, 0x00, 0x06, 0x52, 0x00, 0x78, 0x09, 0x52, 0x80, 0x00
    db                      0x09, 0x8C, 0x00, 0x00, 0x07, 0x02, 0x00, 0x78, 0x77, 0x07, 0x80, 0x00, 0x07, 0x07, 0x00, 0x00
    db                      0x07, 0x02, 0x00, 0x78, 0x77, 0x02, 0x80, 0x00, 0x77, 0x07, 0x00, 0x00, 0x3F, 0xFF, 0x00, 0x78
    db                      0x78, 0xFB, 0x80, 0x00, 0x7D, 0xFF, 0x00, 0x00, 0x3F, 0xFF, 0x00, 0x78, 0x3F, 0xFB, 0x80, 0x00
    db                      0x78, 0xFB, 0x00, 0x00, 0x06, 0x52, 0x00, 0x78, 0x09, 0x18, 0x80, 0x00, 0x06, 0x18, 0x00, 0x00
    db                      0x06, 0x52, 0x00, 0x78, 0x09, 0x52, 0x80, 0x00, 0x09, 0x18, 0x00, 0x00, 0x3F, 0xD4, 0x00, 0x78
    db                      0x3F, 0xFB, 0x80, 0x00, 0x05, 0xFB, 0x00, 0x00, 0x3F, 0xAE, 0x00, 0x78, 0x3F, 0xD4, 0x80, 0x00
    db                      0x05, 0xAE, 0x00, 0x00, 0x09, 0x52, 0x00, 0x78, 0x06, 0x18, 0x80, 0x00, 0x09, 0x18, 0x00, 0x00
    db                      0x09, 0x52, 0x00, 0x78, 0x06, 0x52, 0x80, 0x00, 0x06, 0x18, 0x00, 0x00, 0x3F, 0xA9, 0x00, 0x78
    db                      0x05, 0xAE, 0x80, 0x00, 0x00, 0xA9, 0x00, 0x00, 0x3F, 0xA9, 0x00, 0x78, 0x3F, 0xAE, 0x80, 0x00
    db                      0x05, 0xAE, 0x00, 0x00, 0xEC, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
    db                      0x38, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0xA0, 0x01, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00
    db                      0x70, 0x04, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0xE0, 0x06, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00
    db                      0x2D, 0x00, 0x00, 0x00, 0xA0, 0x01, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0xE0, 0x06, 0x00, 0x00
    db                      0x00, 0x00, 0x00, 0x00, 0x50, 0x09, 0x00, 0x00, 0x5D, 0x01, 0xCB, 0xFC, 0x61, 0x00, 0x00, 0x00
    db                      0x9C, 0x00, 0x09, 0xFD, 0xDA, 0x00, 0x00, 0x00, 0x7D, 0x00, 0xF7, 0xFC, 0x1B, 0x00, 0x00, 0x00
    db                      0xBA, 0xFF, 0xCC, 0xFC, 0x9B, 0x00, 0x00, 0x00, 0x9B, 0x00, 0x6B, 0xFD, 0x9A, 0xFF, 0x00, 0x00
    db                      0xC7, 0xFF, 0x8E, 0xFD, 0x0A, 0x00, 0x00, 0x00, 0xC2, 0xFF, 0xB4, 0xFD, 0x48, 0xFF, 0x00, 0x00
    db                      0xF6, 0xFE, 0x68, 0xFD, 0xA3, 0xFF, 0x00, 0x00, 0xD2, 0xFF, 0xDE, 0xFD, 0xC5, 0xFE, 0x00, 0x00
    db                      0x50, 0x00, 0x18, 0xFE, 0xD8, 0xFF, 0x00, 0x00, 0x58, 0xFF, 0x18, 0xFE, 0xD8, 0xFF, 0x00, 0x00
    db                      0xD2, 0xFF, 0xA3, 0xFD, 0xDD, 0x00, 0x00, 0x00, 0x6E, 0x01, 0x85, 0xFD, 0x0C, 0x00, 0x00, 0x00
    db                      0x6C, 0x00, 0xE8, 0xFD, 0xA5, 0x00, 0x00, 0x00, 0x3A, 0x00, 0xCB, 0xFD, 0xC8, 0xFF, 0x00, 0x00
    db                      0x9F, 0xFF, 0x87, 0xFD, 0x6A, 0x00, 0x00, 0x00, 0x7E, 0x00, 0xE3, 0xFC, 0xB2, 0xFF, 0x00, 0x00
    db                      0x09, 0x01, 0x53, 0xFD, 0x45, 0x00, 0x00, 0x00, 0xF5, 0xFF, 0x53, 0xFD, 0x62, 0x00, 0x00, 0x00
    db                      0xB1, 0x00, 0x22, 0xFD, 0x33, 0x01, 0x00, 0x00, 0x09, 0x00, 0x9A, 0xFE, 0xF0, 0xFF, 0x00, 0x00
    db                      0x09, 0x00, 0x9A, 0xFE, 0x10, 0x00, 0x00, 0x00, 0xAE, 0xFF, 0x2E, 0xFD, 0x84, 0xFF, 0x00, 0x00
    db                      0xED, 0xFF, 0x9A, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x9A, 0xFE, 0xF0, 0xFF, 0x00, 0x00
    db                      0x09, 0x00, 0x9A, 0xFE, 0x10, 0x00, 0x00, 0x00, 0x9C, 0x00, 0xCA, 0xFC, 0x82, 0x00, 0x00, 0x00
    db                      0xED, 0xFF, 0x9A, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0xFE, 0x00, 0x00, 0x00, 0x00
    db                      0x78, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xB7, 0x00, 0x98, 0xFE, 0x00, 0x00, 0x00, 0x00
    db                      0x55, 0x00, 0xFF, 0xFF, 0x55, 0x00, 0x00, 0x00, 0x82, 0x00, 0x98, 0xFE, 0x82, 0x00, 0x00, 0x00
    db                      0x00, 0x00, 0xFF, 0xFF, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0xFE, 0xB7, 0x00, 0x00, 0x00
    db                      0xAB, 0xFF, 0xFF, 0xFF, 0x55, 0x00, 0x00, 0x00, 0x7E, 0xFF, 0x98, 0xFE, 0x82, 0x00, 0x00, 0x00
    db                      0x88, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x49, 0xFF, 0x98, 0xFE, 0x00, 0x00, 0x00, 0x00
    db                      0xAB, 0xFF, 0xFF, 0xFF, 0xAB, 0xFF, 0x00, 0x00, 0x7E, 0xFF, 0x98, 0xFE, 0x7E, 0xFF, 0x00, 0x00
    db                      0x00, 0x00, 0xFF, 0xFF, 0x88, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x98, 0xFE, 0x49, 0xFF, 0x00, 0x00
    db                      0x55, 0x00, 0xFF, 0xFF, 0xAB, 0xFF, 0x00, 0x00, 0x82, 0x00, 0x98, 0xFE, 0x7E, 0xFF, 0x00, 0x00
    db                      0x26, 0x00, 0x12, 0xF0, 0x7A, 0x01, 0x00, 0x00, 0xEB, 0x03, 0x82, 0xF0, 0xD2, 0x00, 0x00, 0x00
    db                      0x26, 0x00, 0x12, 0xF0, 0x7A, 0x01, 0x00, 0x00, 0x5F, 0xFC, 0x8D, 0xF0, 0x0C, 0x02, 0x00, 0x00
    db                      0x1A, 0x00, 0x4B, 0xF0, 0xF4, 0xFC, 0x00, 0x00, 0x3B, 0x04, 0xE0, 0xF0, 0xF5, 0xFC, 0x00, 0x00
    db                      0x1A, 0x00, 0x4B, 0xF0, 0xF4, 0xFC, 0x00, 0x00, 0xF8, 0xFB, 0xC8, 0xF0, 0x28, 0xFD, 0x00, 0x00
    db                      0x00, 0x00, 0x17, 0xF0, 0x51, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x65, 0xF1, 0x78, 0xF9, 0x00, 0x00
    db                      0x00, 0x00, 0x17, 0xF0, 0x51, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x5A, 0xF0, 0x55, 0x03, 0x00, 0x00
    db                      0x6A, 0x01, 0x29, 0xF0, 0xC1, 0x01, 0x00, 0x00, 0xC0, 0x06, 0x7F, 0xF1, 0x5F, 0x00, 0x00, 0x00
    db                      0x6A, 0x01, 0x29, 0xF0, 0xC1, 0x01, 0x00, 0x00, 0xE7, 0xFB, 0xD0, 0xF0, 0xEB, 0x02, 0x00, 0x00
    db                      0x53, 0x00, 0x50, 0xF0, 0x21, 0x03, 0x00, 0x00, 0xA7, 0xFF, 0x5E, 0xF0, 0x9E, 0xFC, 0x00, 0x00
    db                      0x53, 0x00, 0x50, 0xF0, 0x21, 0x03, 0x00, 0x00, 0xF1, 0x00, 0xE2, 0xF2, 0x1D, 0x09, 0x00, 0x00
    db                      0x2B, 0xF8, 0xB9, 0xFC, 0x90, 0x0D, 0x00, 0x00, 0x2A, 0x07, 0x4D, 0xF9, 0xA4, 0x0C, 0x00, 0x00
    db                      0x88, 0xF8, 0xBA, 0x05, 0x10, 0xF3, 0x00, 0x00, 0x84, 0x0F, 0x17, 0xFC, 0x00, 0x00, 0x00, 0x00
    db                      0x2A, 0x07, 0x4D, 0xF9, 0xA4, 0x0C, 0x00, 0x00, 0xF6, 0xF0, 0xA6, 0xFA, 0x17, 0x01, 0x00, 0x00
    db                      0x14, 0xFF, 0xFB, 0xF7, 0xD1, 0x0D, 0x00, 0x00, 0xFE, 0x06, 0x7A, 0x05, 0x4F, 0x0D, 0x00, 0x00
    db                      0x14, 0xFF, 0xFB, 0xF7, 0xD1, 0x0D, 0x00, 0x00, 0xF6, 0xF0, 0xA6, 0xFA, 0x17, 0x01, 0x00, 0x00
    db                      0xA8, 0xF8, 0xA9, 0xF9, 0x47, 0xF3, 0x00, 0x00, 0x42, 0x0F, 0xD0, 0x04, 0x00, 0x00, 0x00, 0x00
    db                      0xFE, 0x06, 0x7A, 0x05, 0x4F, 0x0D, 0x00, 0x00, 0x14, 0xFF, 0xFB, 0xF7, 0xD1, 0x0D, 0x00, 0x00
    db                      0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x9C, 0x0F, 0xC7, 0x02, 0x28, 0x02, 0x00, 0x00
    db                      0x83, 0x09, 0xC7, 0x02, 0x90, 0x0C, 0x00, 0x00, 0x90, 0x0C, 0xC7, 0x02, 0x83, 0x09, 0x00, 0x00
    db                      0x9C, 0x0F, 0xC7, 0x02, 0x28, 0x02, 0x00, 0x00, 0x90, 0x0C, 0xC7, 0x02, 0x83, 0x09, 0x00, 0x00
    db                      0x9C, 0x0F, 0xC7, 0x02, 0xD8, 0xFD, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00
    db                      0x90, 0x0C, 0xC7, 0x02, 0x7D, 0xF6, 0x00, 0x00, 0x9C, 0x0F, 0xC7, 0x02, 0x28, 0x02, 0x00, 0x00
    db                      0x9C, 0x0F, 0xC7, 0x02, 0xD8, 0xFD, 0x00, 0x00, 0x90, 0x0C, 0xC7, 0x02, 0x7D, 0xF6, 0x00, 0x00
    db                      0x9C, 0x0F, 0xC7, 0x02, 0xD8, 0xFD, 0x00, 0x00, 0x83, 0x09, 0xC7, 0x02, 0x70, 0xF3, 0x00, 0x00
    db                      0x83, 0x09, 0xC7, 0x02, 0x90, 0x0C, 0x00, 0x00, 0xD8, 0xFD, 0xC7, 0x02, 0x9C, 0x0F, 0x00, 0x00
    db                      0x28, 0x02, 0xC7, 0x02, 0x9C, 0x0F, 0x00, 0x00, 0x83, 0x09, 0xC7, 0x02, 0x90, 0x0C, 0x00, 0x00
    db                      0x28, 0x02, 0xC7, 0x02, 0x9C, 0x0F, 0x00, 0x00, 0x90, 0x0C, 0xC7, 0x02, 0x83, 0x09, 0x00, 0x00
    db                      0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0xD8, 0xFD, 0xC7, 0x02, 0x9C, 0x0F, 0x00, 0x00
    db                      0x70, 0xF3, 0xC7, 0x02, 0x83, 0x09, 0x00, 0x00, 0x7D, 0xF6, 0xC7, 0x02, 0x90, 0x0C, 0x00, 0x00
    db                      0xD8, 0xFD, 0xC7, 0x02, 0x9C, 0x0F, 0x00, 0x00, 0x7D, 0xF6, 0xC7, 0x02, 0x90, 0x0C, 0x00, 0x00
    db                      0x28, 0x02, 0xC7, 0x02, 0x9C, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00
    db                      0x70, 0xF3, 0xC7, 0x02, 0x83, 0x09, 0x00, 0x00, 0x64, 0xF0, 0xC7, 0x02, 0xD8, 0xFD, 0x00, 0x00
    db                      0x64, 0xF0, 0xC7, 0x02, 0x28, 0x02, 0x00, 0x00, 0x70, 0xF3, 0xC7, 0x02, 0x83, 0x09, 0x00, 0x00
    db                      0x64, 0xF0, 0xC7, 0x02, 0x28, 0x02, 0x00, 0x00, 0x7D, 0xF6, 0xC7, 0x02, 0x90, 0x0C, 0x00, 0x00
    db                      0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x64, 0xF0, 0xC7, 0x02, 0xD8, 0xFD, 0x00, 0x00
    db                      0x7D, 0xF6, 0xC7, 0x02, 0x70, 0xF3, 0x00, 0x00, 0x70, 0xF3, 0xC7, 0x02, 0x7D, 0xF6, 0x00, 0x00
    db                      0x64, 0xF0, 0xC7, 0x02, 0xD8, 0xFD, 0x00, 0x00, 0x70, 0xF3, 0xC7, 0x02, 0x7D, 0xF6, 0x00, 0x00
    db                      0x64, 0xF0, 0xC7, 0x02, 0x28, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00
    db                      0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x7D, 0xF6, 0xC7, 0x02, 0x70, 0xF3, 0x00, 0x00
    db                      0x28, 0x02, 0xC7, 0x02, 0x64, 0xF0, 0x00, 0x00, 0xD8, 0xFD, 0xC7, 0x02, 0x64, 0xF0, 0x00, 0x00
    db                      0x7D, 0xF6, 0xC7, 0x02, 0x70, 0xF3, 0x00, 0x00, 0xD8, 0xFD, 0xC7, 0x02, 0x64, 0xF0, 0x00, 0x00
    db                      0x70, 0xF3, 0xC7, 0x02, 0x7D, 0xF6, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00
    db                      0x28, 0x02, 0xC7, 0x02, 0x64, 0xF0, 0x00, 0x00, 0x90, 0x0C, 0xC7, 0x02, 0x7D, 0xF6, 0x00, 0x00
    db                      0x83, 0x09, 0xC7, 0x02, 0x70, 0xF3, 0x00, 0x00, 0x28, 0x02, 0xC7, 0x02, 0x64, 0xF0, 0x00, 0x00
    db                      0x83, 0x09, 0xC7, 0x02, 0x70, 0xF3, 0x00, 0x00, 0xD8, 0xFD, 0xC7, 0x02, 0x64, 0xF0, 0x00, 0x00
    db                      0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x02, 0x00
    db                      0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x04, 0x00, 0x05, 0x00, 0x04, 0x00, 0x07, 0x00
    db                      0x05, 0x00, 0x06, 0x00, 0x06, 0x00, 0x06, 0x00, 0x06, 0x00, 0x04, 0x00, 0x07, 0x00, 0x05, 0x00
    db                      0x08, 0x00, 0x09, 0x00, 0x08, 0x00, 0x0B, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x0A, 0x00
    db                      0x0A, 0x00, 0x08, 0x00, 0x0B, 0x00, 0x09, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x0C, 0x00, 0x0F, 0x00
    db                      0x0D, 0x00, 0x0E, 0x00, 0x0E, 0x00, 0x0E, 0x00, 0x0E, 0x00, 0x0C, 0x00, 0x0F, 0x00, 0x0D, 0x00
    db                      0x10, 0x00, 0x11, 0x00, 0x10, 0x00, 0x13, 0x00, 0x11, 0x00, 0x12, 0x00, 0x12, 0x00, 0x12, 0x00
    db                      0x12, 0x00, 0x10, 0x00, 0x13, 0x00, 0x11, 0x00, 0x14, 0x00, 0x17, 0x00, 0x15, 0x00, 0x15, 0x00
    db                      0x15, 0x00, 0x16, 0x00, 0x16, 0x00, 0x16, 0x00, 0x16, 0x00, 0x14, 0x00, 0x16, 0x00, 0x17, 0x00
    db                      0x17, 0x00, 0x14, 0x00, 0x18, 0x00, 0x16, 0x00, 0x18, 0x00, 0x15, 0x00, 0x19, 0x00, 0x1B, 0x00
    db                      0x1B, 0x00, 0x19, 0x00, 0x1A, 0x00, 0x1A, 0x00, 0x1C, 0x00, 0x1A, 0x00, 0x1E, 0x00, 0x18, 0x00
    db                      0x1D, 0x00, 0x1B, 0x00, 0x1F, 0x00, 0x18, 0x00, 0x21, 0x00, 0x1A, 0x00, 0x20, 0x00, 0x19, 0x00
    db                      0x22, 0x00, 0x2C, 0x00, 0x22, 0x00, 0x1C, 0x00, 0x22, 0x00, 0x1E, 0x00, 0x23, 0x00, 0x1D, 0x00
    db                      0x25, 0x00, 0x20, 0x00, 0x24, 0x00, 0x1F, 0x00, 0x26, 0x00, 0x1D, 0x00, 0x28, 0x00, 0x1E, 0x00
    db                      0x27, 0x00, 0x20, 0x00, 0x29, 0x00, 0x1E, 0x00, 0x29, 0x00, 0x1C, 0x00, 0x29, 0x00, 0x20, 0x00
    db                      0x2A, 0x00, 0x2B, 0x00, 0x2C, 0x00, 0x1E, 0x00, 0x2B, 0x00, 0x1D, 0x00, 0x2D, 0x00, 0x2B, 0x00
    db                      0x2F, 0x00, 0x2C, 0x00, 0x2E, 0x00, 0x1E, 0x00, 0x30, 0x00, 0x1F, 0x00, 0x32, 0x00, 0x22, 0x00
    db                      0x31, 0x00, 0x21, 0x00, 0x33, 0x00, 0x1F, 0x00, 0x35, 0x00, 0x20, 0x00, 0x34, 0x00, 0x22, 0x00
    db                      0x36, 0x00, 0x20, 0x00, 0x36, 0x00, 0x1C, 0x00, 0x36, 0x00, 0x22, 0x00, 0x37, 0x00, 0x21, 0x00
    db                      0x39, 0x00, 0x24, 0x00, 0x38, 0x00, 0x23, 0x00, 0x3A, 0x00, 0x21, 0x00, 0x3C, 0x00, 0x22, 0x00
    db                      0x3B, 0x00, 0x24, 0x00, 0x3D, 0x00, 0x22, 0x00, 0x3D, 0x00, 0x1C, 0x00, 0x3D, 0x00, 0x24, 0x00
    db                      0x3E, 0x00, 0x23, 0x00, 0x40, 0x00, 0x26, 0x00, 0x3F, 0x00, 0x25, 0x00, 0x41, 0x00, 0x23, 0x00
    db                      0x43, 0x00, 0x24, 0x00, 0x42, 0x00, 0x26, 0x00, 0x44, 0x00, 0x24, 0x00, 0x44, 0x00, 0x1C, 0x00
    db                      0x44, 0x00, 0x26, 0x00, 0x45, 0x00, 0x25, 0x00, 0x47, 0x00, 0x28, 0x00, 0x46, 0x00, 0x27, 0x00
    db                      0x48, 0x00, 0x25, 0x00, 0x4A, 0x00, 0x26, 0x00, 0x49, 0x00, 0x28, 0x00, 0x4B, 0x00, 0x26, 0x00
    db                      0x4B, 0x00, 0x1C, 0x00, 0x4B, 0x00, 0x28, 0x00, 0x4C, 0x00, 0x2A, 0x00, 0x4C, 0x00, 0x1C, 0x00
    db                      0x4C, 0x00, 0x2C, 0x00, 0x4D, 0x00, 0x27, 0x00, 0x4F, 0x00, 0x2A, 0x00, 0x4E, 0x00, 0x29, 0x00
    db                      0x50, 0x00, 0x27, 0x00, 0x52, 0x00, 0x28, 0x00, 0x51, 0x00, 0x2A, 0x00, 0x53, 0x00, 0x28, 0x00
    db                      0x53, 0x00, 0x1C, 0x00, 0x53, 0x00, 0x2A, 0x00, 0x54, 0x00, 0x29, 0x00, 0x56, 0x00, 0x2C, 0x00
    db                      0x55, 0x00, 0x2B, 0x00, 0x57, 0x00, 0x29, 0x00, 0x59, 0x00, 0x2A, 0x00, 0x58, 0x00, 0x2C, 0x00
    db                      0x04, 0x00, 0x05, 0x00, 0x04, 0x00, 0x06, 0x00, 0x05, 0x00, 0x07, 0x00, 0x06, 0x00, 0x06, 0x00
    db                      0x06, 0x00, 0x05, 0x00, 0x07, 0x00, 0x04, 0x00, 0x02, 0x00, 0x02, 0x00, 0x02, 0x00, 0x01, 0x00
    db                      0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x03, 0x00
    db                      0x10, 0x00, 0x11, 0x00, 0x10, 0x00, 0x13, 0x00, 0x11, 0x00, 0x12, 0x00, 0x12, 0x00, 0x12, 0x00
    db                      0x12, 0x00, 0x10, 0x00, 0x13, 0x00, 0x11, 0x00, 0x10, 0x00, 0x11, 0x00, 0x10, 0x00, 0x12, 0x00
    db                      0x11, 0x00, 0x13, 0x00, 0x12, 0x00, 0x12, 0x00, 0x12, 0x00, 0x11, 0x00, 0x13, 0x00, 0x10, 0x00
    db                      0x0E, 0x00, 0x0E, 0x00, 0x0E, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x0C, 0x00, 0x0C, 0x00, 0x0D, 0x00
    db                      0x0C, 0x00, 0x0E, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x08, 0x00, 0x09, 0x00, 0x08, 0x00, 0x0A, 0x00
    db                      0x09, 0x00, 0x0B, 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x09, 0x00, 0x0B, 0x00, 0x08, 0x00
    db                      0x5E, 0x1F, 0x00, 0x78, 0x70, 0x3E, 0x80, 0x00, 0x7F, 0x1D, 0x00, 0x00, 0x7F, 0x1D, 0x00, 0x78
    db                      0x6B, 0x00, 0x80, 0x00, 0x5E, 0x1F, 0x00, 0x00, 0x5D, 0x1F, 0x00, 0x78, 0x70, 0x3E, 0x80, 0x00
    db                      0x7F, 0x1F, 0x00, 0x00, 0x7F, 0x1F, 0x00, 0x78, 0x6F, 0x00, 0x80, 0x00, 0x5D, 0x1F, 0x00, 0x00
    db                      0x7D, 0x1C, 0x00, 0x78, 0x6D, 0x00, 0x80, 0x00, 0x5E, 0x1C, 0x00, 0x00, 0x5E, 0x1C, 0x00, 0x78
    db                      0x6D, 0x3A, 0x80, 0x00, 0x7D, 0x1C, 0x00, 0x00, 0x61, 0x1F, 0x00, 0x78, 0x6D, 0x34, 0x80, 0x00
    db                      0x7D, 0x20, 0x00, 0x00, 0x7D, 0x20, 0x00, 0x78, 0x6C, 0x00, 0x80, 0x00, 0x61, 0x1F, 0x00, 0x00
    db                      0x7E, 0x1F, 0x00, 0x78, 0x6F, 0x00, 0x80, 0x00, 0x5D, 0x1F, 0x00, 0x00, 0x5D, 0x1F, 0x00, 0x78
    db                      0x6D, 0x36, 0x80, 0x00, 0x7E, 0x1F, 0x00, 0x00, 0x0E, 0x2C, 0x00, 0x78, 0x0C, 0x38, 0x80, 0x00
    db                      0x5A, 0x30, 0x00, 0x00, 0x5A, 0x30, 0x00, 0x78, 0x0D, 0x32, 0x80, 0x00, 0x0E, 0x2C, 0x00, 0x00
    db                      0x0D, 0x32, 0x00, 0x78, 0x5A, 0x30, 0x80, 0x00, 0x0C, 0x38, 0x00, 0x00, 0x0B, 0x2B, 0x00, 0x78
    db                      0x0E, 0x36, 0x80, 0x00, 0x59, 0x2F, 0x00, 0x00, 0x59, 0x2F, 0x00, 0x78, 0x0C, 0x31, 0x80, 0x00
    db                      0x0B, 0x2B, 0x00, 0x00, 0x0C, 0x31, 0x00, 0x78, 0x59, 0x2F, 0x80, 0x00, 0x0E, 0x36, 0x00, 0x00
    db                      0x4A, 0x22, 0x00, 0x78, 0x3B, 0x14, 0x80, 0x00, 0x50, 0x14, 0x00, 0x00, 0x1C, 0x26, 0x00, 0x78
    db                      0x1D, 0x00, 0x80, 0x00, 0x19, 0x26, 0x00, 0x00, 0x1C, 0x26, 0x00, 0x78, 0x22, 0x00, 0x80, 0x00
    db                      0x1D, 0x00, 0x00, 0x00, 0x50, 0x14, 0x00, 0x78, 0x3B, 0x14, 0x80, 0x00, 0x4A, 0x06, 0x00, 0x00
    db                      0x19, 0x26, 0x00, 0x78, 0x22, 0x00, 0x80, 0x00, 0x1C, 0x26, 0x00, 0x00, 0x19, 0x26, 0x00, 0x78
    db                      0x1D, 0x00, 0x80, 0x00, 0x22, 0x00, 0x00, 0x00, 0x19, 0x26, 0x00, 0x78, 0x11, 0x00, 0x80, 0x00
    db                      0x11, 0x26, 0x00, 0x00, 0x19, 0x26, 0x00, 0x78, 0x1D, 0x00, 0x80, 0x00, 0x11, 0x00, 0x00, 0x00
    db                      0x4A, 0x06, 0x00, 0x78, 0x3B, 0x14, 0x80, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x11, 0x26, 0x00, 0x78
    db                      0x05, 0x00, 0x80, 0x00, 0x09, 0x26, 0x00, 0x00, 0x11, 0x26, 0x00, 0x78, 0x11, 0x00, 0x80, 0x00
    db                      0x05, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x78, 0x3B, 0x14, 0x80, 0x00, 0x2C, 0x06, 0x00, 0x00
    db                      0x09, 0x26, 0x00, 0x78, 0x00, 0x00, 0x80, 0x00, 0x06, 0x26, 0x00, 0x00, 0x09, 0x26, 0x00, 0x78
    db                      0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x06, 0x00, 0x78, 0x3B, 0x14, 0x80, 0x00
    db                      0x26, 0x14, 0x00, 0x00, 0x06, 0x26, 0x00, 0x78, 0x05, 0x00, 0x80, 0x00, 0x09, 0x26, 0x00, 0x00
    db                      0x06, 0x26, 0x00, 0x78, 0x00, 0x00, 0x80, 0x00, 0x05, 0x00, 0x00, 0x00, 0x26, 0x14, 0x00, 0x78
    db                      0x3B, 0x14, 0x80, 0x00, 0x2C, 0x22, 0x00, 0x00, 0x3B, 0x28, 0x00, 0x78, 0x3B, 0x14, 0x80, 0x00
    db                      0x4A, 0x22, 0x00, 0x00, 0x09, 0x26, 0x00, 0x78, 0x11, 0x00, 0x80, 0x00, 0x11, 0x26, 0x00, 0x00
    db                      0x09, 0x26, 0x00, 0x78, 0x05, 0x00, 0x80, 0x00, 0x11, 0x00, 0x00, 0x00, 0x2C, 0x22, 0x00, 0x78
    db                      0x3B, 0x14, 0x80, 0x00, 0x3B, 0x28, 0x00, 0x00, 0x11, 0x26, 0x00, 0x78, 0x1D, 0x00, 0x80, 0x00
    db                      0x19, 0x26, 0x00, 0x00, 0x11, 0x26, 0x00, 0x78, 0x11, 0x00, 0x80, 0x00, 0x1D, 0x00, 0x00, 0x00
    db                      0x5D, 0x1F, 0x00, 0x78, 0x7F, 0x1F, 0x80, 0x00, 0x70, 0x3E, 0x00, 0x00, 0x7F, 0x1F, 0x00, 0x78
    db                      0x5D, 0x1F, 0x80, 0x00, 0x6F, 0x00, 0x00, 0x00, 0x7F, 0x1D, 0x00, 0x78, 0x5E, 0x1F, 0x80, 0x00
    db                      0x6B, 0x00, 0x00, 0x00, 0x5E, 0x1F, 0x00, 0x78, 0x7F, 0x1D, 0x80, 0x00, 0x70, 0x3E, 0x00, 0x00
    db                      0x5E, 0x1F, 0x00, 0x78, 0x7F, 0x1D, 0x80, 0x00, 0x70, 0x3E, 0x00, 0x00, 0x5E, 0x1F, 0x00, 0x78
    db                      0x7F, 0x1D, 0x80, 0x00, 0x70, 0x3E, 0x00, 0x00, 0x7E, 0x1F, 0x00, 0x78, 0x5D, 0x1F, 0x80, 0x00
    db                      0x6F, 0x00, 0x00, 0x00, 0x5D, 0x1F, 0x00, 0x78, 0x7E, 0x1F, 0x80, 0x00, 0x6D, 0x36, 0x00, 0x00
    db                      0x7D, 0x20, 0x00, 0x78, 0x61, 0x1F, 0x80, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x61, 0x1F, 0x00, 0x78
    db                      0x7D, 0x20, 0x80, 0x00, 0x6D, 0x34, 0x00, 0x00, 0x7D, 0x1C, 0x00, 0x78, 0x5E, 0x1C, 0x80, 0x00
    db                      0x6D, 0x00, 0x00, 0x00, 0x5E, 0x1C, 0x00, 0x78, 0x7D, 0x1C, 0x80, 0x00, 0x6D, 0x3A, 0x00, 0x00
