; -------------------
; METROID source code
; -------------------
; MAIN PROGRAMMERS
;     HAI YUKAMI
;   ZARU SOBAJIMA
;    GPZ SENGOKU
;    N.SHIOTANI
;     M.HOUDAI
; (C) 1986 NINTENDO
;Can be assembled using Ophis.
;Last updated: 2/21/2010

;Hosted on wiki.metroidconstruction.com, with possible additions by wiki contributors.

;Graphics data (memory page 6)

.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"

.redef BANK = 6
.SECTION "ROM Bank $006" BANK 6 SLOT "ROMSwitchSlot" ORGA $8000 FORCE

;------------------------------------------[ Start of code ]-----------------------------------------

; These are loaded together.
GFX_Samus:
    .incbin "common_chr/samus.chr" ; 8000 - Samus and gear tile patterns.
    .incbin "common_chr/items.chr" ; Item Graphics (plus bomb, the N in "EN", and another dot thingy)

GFX_SamusSuitless:
    .incbin "common_chr/samus_suitless.chr" ; 90E0 - Suitless Samus (in-game)

GFX_ExclamationPoint:
    .incbin "common_chr/exclamation_point.chr" ; 9890 - Exclamation point

;Blank tile patterns.
GFX_Solid:
    .incbin "common_chr/solid.chr"

GFX_CREBG2:
    .incbin "common_chr/bg_CRE_2.chr" ; 9EF0 - Common Room Elements (loaded in all areas)

GFX_Font:
    .incbin "common_chr/font.chr" ; B4C0 - Font (upper and lowercase)

;------------------------------------------[ Sound Engine ]------------------------------------------

.ALIGN $100 ;Needs to be aligned to make it work properly.

.include "music_engine.asm"

.ENDS

;----------------------------------------[ Interrupt vectors ]--------------------------------------

.SECTION "ROM Bank $006 - Vectors" BANK 6 SLOT "ROMSwitchSlot" ORGA $BFFA FORCE
    .word NMI                       ;($C0D9)NMI vector.
    .word RESET                     ;($FFB0)Reset vector.
    .word RESET                     ;($FFB0)IRQ vector.
.ENDS

