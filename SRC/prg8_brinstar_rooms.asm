.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"
.include "config.asm"

.redef BANK = 8
.section "ROM Bank $008" bank 8 slot "ROMSwitchSlot" orga $8000 force
    MacroDefs: .incbin "data/surface/metatiles.bin"

    .include "data/surface/rooms.asm"
.ends
