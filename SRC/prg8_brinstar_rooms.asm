.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"

.redef BANK = 8
.section "ROM Bank $008" bank 8 slot "ROMSwitchSlot" orga $8000 force
    MacroDefs: .incbin "data/brinstar/metatiles.bin"

    .include "data/brinstar/rooms.asm"
.ends
