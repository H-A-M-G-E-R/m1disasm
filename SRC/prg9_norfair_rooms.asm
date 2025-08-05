.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"

.redef BANK = 9
.section "ROM Bank $009" bank 9 slot "ROMSwitchSlot" orga $8000 force
    MacroDefs: .incbin "data/norfair/metatiles.bin"

    .include "data/norfair/rooms.asm"
.ends
