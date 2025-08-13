.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"
.include "config.asm"

.redef BANK = $A
.section "ROM Bank $00A" bank $A slot "ROMSwitchSlot" orga $8000 force
    MacroDefs: .incbin "data/sheol/metatiles.bin"

    .include "data/sheol/rooms.asm"
.ends
