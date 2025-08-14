SpecItmsTbl:
@y12:
    .byte $12
    .word @y14
    @@x07:
        .byte $07, $FF
        .byte $2A, $00
        .byte $00
@y14:
    .byte $14
    .word @y15
    @@x07:
        .byte $07, $FF
        .byte $04, $80
        .byte $00
@y15:
    .byte $15
    .word @y16
    @@x04:
        .byte $04, @@x09 - @@x04
        .byte $02, $09, $48, $78
        .byte $00
    @@x09:
        .byte $09, $FF
        .byte $02, $09, $48, $78
        .byte $00
@y16:
    .byte $16
    .word @y19
    @@x0A:
        .byte $0A, $FF
        .byte $02, $08, $68, $68
        .byte $00
@y19:
    .byte $19
    .word @y1B
    @@x0A:
        .byte $0A, $FF
        .byte $02, $09, $48, $78
        .byte $00
@y1B:
    .byte $1B
    .word @y1C
    @@x05:
        .byte $05, $FF
        .byte $02, $09, $48, $78
        .byte $00
@y1C:
    .byte $1C
    .word @y1D
    @@x07:
        .byte $07, $FF
        .byte $03
        .byte $00
@y1D:
    .byte $1D
    .word $FFFF
    @@x08:
        .byte $08, $FF
        .byte $02, $08, $A8, $78
        .byte $00
