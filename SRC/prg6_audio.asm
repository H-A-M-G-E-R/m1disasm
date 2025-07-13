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
.section "ROM Bank $006" bank 6 slot "ROMSwitchSlot" orga $8000 force

;------------------------------------------[ Start of code ]-----------------------------------------
;------------------------------------------[ Sound Engine ]------------------------------------------

.align $100 ;Needs to be aligned to make it work properly.

.include "music_engine.asm"

.ends

