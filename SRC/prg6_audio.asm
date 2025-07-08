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

;Sound engine and data (memory page 6)

.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"

.redef BANK = 6
.SECTION "ROM Bank $006" BANK 6 SLOT "ROMSwitchSlot" ORGA $8000 FORCE

;------------------------------------------[ Start of code ]-----------------------------------------
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

