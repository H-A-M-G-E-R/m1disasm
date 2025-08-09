SpecItmsTbl:
@y0A:
    .byte $0A
    .word @y0B
    @@x1B:
        .byte $1B, @@x1C - @@x1B
        .byte $02, $09, $38, $48
        .byte $00
    @@x1C:
        .byte $1C, $FF
        .byte $02, $09, $38, $48
        .byte $00
@y0B:
    .byte $0B
    .word @y0C
    @@x1A:
        .byte $1A, @@x1B - @@x1A
        .byte $02, $09, $38, $48
        .byte $00
    @@x1B:
        .byte $1B, @@x1C - @@x1B
        .byte $02, $09, $38, $48
        .byte $00
    @@x1C:
        .byte $1C, $FF
        .byte $02, $09, $38, $48
        .byte $00
@y0C:
    .byte $0C
    .word @y0D
    @@x1A:
        .byte $1A, $FF
        .byte $02, $07, $38, $78
        .byte $00
@y0D:
    .byte $0D
    .word @y0E
    @@x16:
        .byte $16, $FF
        .byte $04, $80
        .byte $00
@y0E:
    .byte $0E
    .word @y0F
    @@x12:
        .byte $12, $FF
        .byte $02, $09, $38, $48
        .byte $00
@y0F:
    .byte $0F
    .word @y10
    @@x11:
        .byte $11, @@x13 - @@x11
        .byte $02, $09, $38, $48
        .byte $03
        .byte $00
    @@x13:
        .byte $13, @@x14 - @@x13
        .byte $02, $09, $38, $48
        .byte $00
    @@x14:
        .byte $14, @@x15 - @@x14
        .byte $02, $09, $38, $48
        .byte $00
    @@x15:
        .byte $15, $FF
        .byte $41, $8B, $E8, $9C
        .byte $51, $02, $98, $BC
        .byte $00
@y10:
    .byte $10
    .word @y11
    @@x0F:
        .byte $0F, $FF
        .byte $02, $03, $38, $78
        .byte $00
@y11:
    .byte $11
    .word @y13
    @@x15:
        .byte $15, @@x17 - @@x15
        .byte $0A, $01
        .byte $00
    @@x17:
        .byte $17, @@x18 - @@x17
        .byte $0A, $00
        .byte $00
    @@x18:
        .byte $18, @@x19 - @@x18
        .byte $31, $0B, $E8, $9C
        .byte $41, $02, $98, $AC
        .byte $00
    @@x19:
        .byte $19, @@x1B - @@x19
        .byte $21, $8B, $E8, $9C
        .byte $51, $02, $98, $AC
        .byte $00
    @@x1B:
        .byte $1B, @@x1D - @@x1B
        .byte $02, $01, $38, $78
        .byte $00
    @@x1D:
        .byte $1D, @@x1E - @@x1D
        .byte $09, $00
        .byte $00
    @@x1E:
        .byte $1E, $FF
        .byte $09, $10
        .byte $00
@y13:
    .byte $13
    .word @y14
    @@x1A:
        .byte $1A, $FF
        .byte $02, $08, $48, $28
        .byte $00
@y14:
    .byte $14
    .word @y15
    @@x0D:
        .byte $0D, @@x0E - @@x0D
        .byte $09, $00
        .byte $00
    @@x0E:
        .byte $0E, @@x1C - @@x0E
        .byte $09, $10
        .byte $00
    @@x1C:
        .byte $1C, $FF
        .byte $02, $09, $38, $48
        .byte $00
@y15:
    .byte $15
    .word @y16
    @@x12:
        .byte $12, @@x17 - @@x12
        .byte $02, $06, $38, $78
        .byte $00
    @@x17:
        .byte $17, $FF
        .byte $09, $00
        .byte $00
@y16:
    .byte $16
    .word $FFFF
    @@x13:
        .byte $13, @@x14 - @@x13
        .byte $02, $09, $38, $48
        .byte $00
    @@x14:
        .byte $14, @@x19 - @@x14
        .byte $02, $09, $38, $48
        .byte $00
    @@x19:
        .byte $19, $FF
        .byte $04, $04
        .byte $00
