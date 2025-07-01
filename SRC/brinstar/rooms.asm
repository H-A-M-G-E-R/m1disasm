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
;
;Commented by Dirty McDingus (nmikstas@yahoo.com)
;Disassembled using TRaCER by YOSHi
;Can be reassembled using Ophis.
;Last updated: 3/9/2010

;Hosted on wiki.metroidconstruction.com, with possible additions by wiki contributors.

;Brinstar Room Definitions

RmPtrTbl:
    .word Room00
    .word Room01
    .word Room02
    .word Room03
    .word Room04
    .word Room05
    .word Room06
    .word Room07
    .word Room08
    .word Room09
    .word Room0A
    .word Room0B
    .word Room0C
    .word Room0D
    .word Room0E
    .word Room0F
    .word Room10
    .word Room11
    .word Room12
    .word Room13
    .word Room14
    .word Room15
    .word Room16
    .word Room17
    .word Room18
    .word Room19
    .word Room1A
    .word Room1B
    .word Room1C
    .word Room1D
    .word Room1E
    .word Room1F
    .word Room20
    .word Room21
    .word Room22
    .word Room23
    .word Room24
    .word Room25
    .word Room26
    .word Room27
    .word Room28
    .word Room29
    .word Room2A
    .word Room2B
    .word Room2C
    .word Room2D
    .word Room2E

Room00: .incbin "brinstar/rooms/00.bin"
Room01: .incbin "brinstar/rooms/01.bin"
Room02: .incbin "brinstar/rooms/02.bin"
Room03: .incbin "brinstar/rooms/03.bin"
Room04: .incbin "brinstar/rooms/04.bin"
Room05: .incbin "brinstar/rooms/05.bin"
Room06: .incbin "brinstar/rooms/06.bin"
Room07: .incbin "brinstar/rooms/07.bin"
Room08: .incbin "brinstar/rooms/08.bin"
Room09: .incbin "brinstar/rooms/09.bin"
Room0A: .incbin "brinstar/rooms/0A.bin"
Room0B: .incbin "brinstar/rooms/0B.bin"
Room0C: .incbin "brinstar/rooms/0C.bin"
Room0D: .incbin "brinstar/rooms/0D.bin"
Room0E: .incbin "brinstar/rooms/0E.bin"
Room0F: .incbin "brinstar/rooms/0F.bin"
Room10: .incbin "brinstar/rooms/10.bin"
Room11: .incbin "brinstar/rooms/11.bin"
Room12: .incbin "brinstar/rooms/12.bin"
Room13: .incbin "brinstar/rooms/13.bin"
Room14: .incbin "brinstar/rooms/14.bin"
Room15: .incbin "brinstar/rooms/15.bin"
Room16: .incbin "brinstar/rooms/16.bin"
Room17: .incbin "brinstar/rooms/17.bin"
Room18: .incbin "brinstar/rooms/18.bin"
Room19: .incbin "brinstar/rooms/19.bin"
Room1A: .incbin "brinstar/rooms/1A.bin"
Room1B: .incbin "brinstar/rooms/1B.bin"
Room1C: .incbin "brinstar/rooms/1C.bin"
Room1D: .incbin "brinstar/rooms/1D.bin"
Room1E: .incbin "brinstar/rooms/1E.bin"
Room1F: .incbin "brinstar/rooms/1F.bin"
Room20: .incbin "brinstar/rooms/20.bin"
Room21: .incbin "brinstar/rooms/21.bin"
Room22: .incbin "brinstar/rooms/22.bin"
Room23: .incbin "brinstar/rooms/23.bin"
Room24: .incbin "brinstar/rooms/24.bin"
Room25: .incbin "brinstar/rooms/25.bin"
Room26: .incbin "brinstar/rooms/26.bin"
Room27: .incbin "brinstar/rooms/27.bin"
Room28: .incbin "brinstar/rooms/28.bin"
Room29: .incbin "brinstar/rooms/29.bin"
Room2A: .incbin "brinstar/rooms/2A.bin"
Room2B: .incbin "brinstar/rooms/2B.bin"
Room2C: .incbin "brinstar/rooms/2C.bin"
Room2D: .incbin "brinstar/rooms/2D.bin"
Room2E: .incbin "brinstar/rooms/2E.bin"
