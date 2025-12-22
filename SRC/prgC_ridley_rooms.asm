.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"
.include "config.asm"

.redef BANK = $C
.section "ROM Bank $00C" bank $C slot "ROMSwitchSlot" orga $8000 force
    MetatileDefs: .incbin "data/ridley/metatiles.bin"

    .include "data/ridley/rooms.asm"
.ends
