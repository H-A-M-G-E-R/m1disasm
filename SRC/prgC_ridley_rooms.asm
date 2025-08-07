.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"

.redef BANK = $C
.section "ROM Bank $00C" bank $C slot "ROMSwitchSlot" orga $8000 force
    MacroDefs: .incbin "data/labyrinth/metatiles.bin"

    .include "data/labyrinth/rooms.asm"
.ends
