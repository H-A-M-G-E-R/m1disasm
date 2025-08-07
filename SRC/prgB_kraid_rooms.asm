.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"

.redef BANK = $B
.section "ROM Bank $00B" bank $B slot "ROMSwitchSlot" orga $8000 force
    MacroDefs: .incbin "data/trench/metatiles.bin"

    .include "data/trench/rooms.asm"
.ends
