SpecItmsTbl:
@y02:
    .byte $02
    .word @y03
    @@x03:
        .byte $03, @@x0F - @@x03
        .byte $04, $00
        .byte $00
    @@x0F:
        .byte $0F, $FF
        .byte $02, $05, $38, $78
        .byte $00
@y03:
    .byte $03
    .word @y04
    @@x18:
        .byte $18, @@x1B - @@x18
        .byte $02, $09, $68, $78
        .byte $00
    @@x1B:
        .byte $1B, $FF
        .byte $02, $08, $88, $78
        .byte $00
@y04:
    .byte $04
    .word @y05
    @@x03:
        .byte $03, $FF
        .byte $2A, $03
        .byte $00
@y05:
    .byte $05
    .word @y07
    @@x07:
        .byte $07, @@x19 - @@x07
        .byte $02, $02, $38, $78
        .byte $00
    @@x19:
        .byte $19, $FF
        .byte $02, $00, $38, $78
        .byte $00
@y07:
    .byte $07
    .word @y09
    @@x0B:
        .byte $0B, @@x0D - @@x0B
        .byte $0A, $00
        .byte $00
    @@x0D:
        .byte $0D, @@x19 - @@x0D
        .byte $0A, $01
        .byte $00
    @@x19:
        .byte $19, $FF
        .byte $02, $08, $88, $78
        .byte $00
@y09:
    .byte $09
    .word @y0B
    @@x13:
        .byte $13, @@x15 - @@x13
        .byte $02, $07, $38, $78
        .byte $00
    @@x15:
        .byte $15, $FF
        .byte $03
        .byte $00
@y0B:
    .byte $0B
    .word @y0D
    @@x12:
        .byte $12, @@x16 - @@x12
        .byte $02, $09, $68, $78
        .byte $00
    @@x16:
        .byte $16, $FF
        .byte $04, $00
        .byte $00
@y0D:
    .byte $0D
    .word @y0E
    @@x16:
        .byte $16, $FF
        .byte $2A, $01
        .byte $00
@y0E:
    .byte $0E
    .word @y12
    @@x02:
        .byte $02, @@x09 - @@x02
        .byte $02, $04, $98, $68
        .byte $00
    @@x09:
        .byte $09, $FF
        .byte $02, $08, $18, $28
        .byte $00
@y12:
    .byte $12
    .word @y14
    @@x07:
        .byte $07, $FF
        .byte $04, $00
        .byte $00
@y14:
    .byte $14
    .word $FFFF
    @@x07:
        .byte $07, $FF
        .byte $2A, $02
        .byte $00
