SpecItmsTbl:
@y02:
    .byte $02
    .word @y03
    @@x03:
        .byte $03, @@x0F - @@x03
        .byte $04, $03
        .byte $00
    @@x0F:
        .byte $0F, $FF
        .byte $02, $05, $37
        .byte $00
@y03:
    .byte $03
    .word @y05
    @@x18:
        .byte $18, @@x1B - @@x18
        .byte $02, $09, $67
        .byte $00
    @@x1B:
        .byte $1B, $FF
        .byte $02, $08, $87
        .byte $00
@y05:
    .byte $05
    .word @y07
    @@x07:
        .byte $07, @@x19 - @@x07
        .byte $02, $02, $37
        .byte $00
    @@x19:
        .byte $19, $FF
        .byte $02, $00, $37
        .byte $00
@y07:
    .byte $07
    .word @y09
    @@x0C:
        .byte $0C, @@x19 - @@x0C
        .byte $0A
        .byte $00
    @@x19:
        .byte $19, $FF
        .byte $02, $08, $87
        .byte $00
@y09:
    .byte $09
    .word @y0B
    @@x13:
        .byte $13, @@x15 - @@x13
        .byte $02, $07, $37
        .byte $00
    @@x15:
        .byte $15, $FF
        .byte $03
        .byte $00
@y0B:
    .byte $0B
    .word @y0E
    @@x12:
        .byte $12, @@x16 - @@x12
        .byte $02, $09, $67
        .byte $00
    @@x16:
        .byte $16, $FF
        .byte $04, $01
        .byte $00
@y0E:
    .byte $0E
    .word @y12
    @@x02:
        .byte $02, @@x09 - @@x02
        .byte $02, $04, $96
        .byte $00
    @@x09:
        .byte $09, $FF
        .byte $02, $08, $12
        .byte $00
@y12:
    .byte $12
    .word $FFFF
    @@x07:
        .byte $07, $FF
        .byte $04, $02
        .byte $00
