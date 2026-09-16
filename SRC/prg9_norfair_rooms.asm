.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"
.include "config.asm"

.redef BANK = 9
.section "ROM Bank $009" bank 9 slot "ROMSwitchSlot" orga $8000 force
    MetatileDefs: .incbin "data/heart/metatiles.bin"

    .include "data/heart/rooms.asm"
.ends
