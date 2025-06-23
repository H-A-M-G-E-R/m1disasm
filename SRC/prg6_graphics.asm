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

GFX_IntroSprites:
    .incbin "common_chr/intro_sprites.chr" ; 89A0 - Intro and end tile patterns.

GFX_Title:
    .incbin "common_chr/title.chr" ; 8BE0 - METROID title screen CHR

GFX_SamusSuitless:
    .incbin "common_chr/samus_suitless.chr" ; 90E0 - Suitless Samus (in-game)

GFX_ExclamationPoint:
    .incbin "common_chr/exclamation_point.chr" ; 9890 - Exclamation point

;Blank tile patterns.
GFX_Solid:
    .incbin "common_chr/solid.chr"

GFX_BrinBG1:
    .incbin "brinstar/bg_chr_1.chr" ; 9DA0 - Brinstar BG CHR data

GFX_CREBG2:
    .incbin "common_chr/bg_CRE_2.chr" ; 9EF0 - Common Room Elements (loaded in all areas)

GFX_NorfBG1:
    .incbin "norfair/bg_chr_1.chr" ; A6F0 - Norfair BG CHR data

GFX_NorfBG2:
    .incbin "norfair/bg_chr_2.chr" ; A950 - Norfair BG CHR data

GFX_BossBG:
    .incbin "common_chr/bg_boss_areas.chr" ; A9C0 - Kraid, Ridley, Tourian BG CHR

GFX_TourBG:
    .incbin "tourian/bg_chr.chr" ; ACA0 - Tourian BG CHR

GFX_Zebetite:
    .incbin "tourian/zebetite_chr.chr" ; B2A0 - Zebetite BG CHR

GFX_KraiBG2:
    .incbin "kraid/bg_chr_2.chr" ; B330 - More Kraid BG CHR

GFX_RidlBG:
    .incbin "ridley/bg_chr.chr" ; B3F0 - More Ridley BG CHR

GFX_Font:
    .incbin "common_chr/font.chr" ; B4C0 - Font (upper and lowercase)

;.incbin "common_chr/exclamation_point.chr" ; B8C0 - Exclamation point (unused)

;----------------------------------------------[ RESET ]--------------------------------------------

ROMSWITCH_RESET:
.include "reset.asm"

.ENDS

;----------------------------------------[ Interrupt vectors ]--------------------------------------

.SECTION "ROM Bank $006 - Vectors" BANK 6 SLOT "ROMSwitchSlot" ORGA $BFFA FORCE
    .word NMI                       ;($C0D9)NMI vector.
    .word ROMSWITCH_RESET           ;($FFB0)Reset vector.
    .word ROMSWITCH_RESET           ;($FFB0)IRQ vector.
.ENDS

