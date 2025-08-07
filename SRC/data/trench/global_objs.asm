SpecItmsTbl:
@y05:
    .byte $05
    .word @y06
    @@x14:
        .byte $14, @@x17 - @@x14
        .byte $04, $80
        .byte $00
    @@x17:
        .byte $17, $FF
        .byte $02, $09, $58, $C8
        .byte $00
@y06:
    .byte $06
    .word @y07
    @@x1C:
        .byte $1C, $FF
        .byte $02, $09, $78, $B8
        .byte $00
@y07:
    .byte $07
    .word @y0A
    @@x15:
        .byte $15, $FF
        .byte $02, $09, $38, $98
        .byte $00
@y0A:
    .byte $0A
    .word @y0C
    @@x14:
        .byte $14, @@x18 - @@x14
        .byte $02, $08, $58, $58
        .byte $00
    @@x18:
        .byte $18, $FF
        .byte $02, $05, $48, $78
        .byte $00
@y0C:
    .byte $0C
    .word @y0D
    @@x13:
        .byte $13, $FF
        .byte $02, $09, $88, $48
        .byte $00
@y0D:
    .byte $0D
    .word $FFFF
    @@x17:
        .byte $17, $FF
        .byte $02, $09, $38, $C8
        .byte $00
