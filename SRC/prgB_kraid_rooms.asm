.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"
.include "config.asm"

.redef BANK = $B
.section "ROM Bank $00B" bank $B slot "ROMSwitchSlot" orga $8000 force
    MetatileDefs: .incbin "data/kraid/metatiles.bin"

    .include "data/kraid/rooms.asm"
.ends
