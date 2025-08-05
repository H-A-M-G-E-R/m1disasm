SpecItmsTbl:
@y18:
    .byte $18
    .word @y19
    @@x12:
        .byte $12, @@x19 - @@x12
        .byte $02, $09, $68, $D8
        .byte $00
    @@x19:
        .byte $19, $FF
        .byte $04, $81
        .byte $00
@y19:
    .byte $19
    .word @y1B
    @@x11:
        .byte $11, $FF
        .byte $02, $08, $78, $48
        .byte $00
@y1B:
    .byte $1B
    .word @y1D
    @@x18:
        .byte $18, $FF
        .byte $02, $09, $68, $D8
        .byte $00
@y1D:
    .byte $1D
    .word @y1E
    @@x0F:
        .byte $0F, $FF
        .byte $02, $08, $68, $68
        .byte $00
@y1E:
    .byte $1E
    .word $FFFF
    @@x14:
        .byte $14, $FF
        .byte $02, $09, $68, $D8
        .byte $00
