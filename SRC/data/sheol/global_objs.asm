SpecItmsTbl:
@y05:
    .byte $05
    .word @y06
    @@x02:
        .byte $02, $FF
        .byte $04, $80
        .byte $00
@y06:
    .byte $06
    .word @y09
    @@x01:
        .byte $01, $FF
        .byte $04, $FF
        .byte $00
@y09:
    .byte $09
    .word @y0A
    @@x02:
        .byte $02, @@x04 - @@x02
        .byte $18
        .byte $00
    @@x04:
        .byte $04, @@x06 - @@x04
        .byte $07
        .byte $00
    @@x06:
        .byte $06, $FF
        .byte $47
        .byte $00
@y0A:
    .byte $0A
    .word @y0B
    @@x03:
        .byte $03, @@x04 - @@x03
        .byte $27
        .byte $08
        .byte $05, $27, $87
        .byte $35, $27, $C7
        .byte $00
    @@x04:
        .byte $04, $FF
        .byte $17
        .byte $00
@y0B:
    .byte $0B
    .word @y10
    @@x05:
        .byte $05, $FF
        .byte $02, $08, $68, $88
        .byte $00
@y10:
    .byte $10
    .word @y13
    @@x04:
        .byte $04, @@x05 - @@x04
        .byte $08
        .byte $00
    @@x05:
        .byte $05, @@x06 - @@x05
        .byte $37
        .byte $00
    @@x06:
        .byte $06, $FF
        .byte $35, $87, $87
        .byte $05, $37, $97
        .byte $35, $37, $B7
        .byte $35, $87, $67
        .byte $00
@y13:
    .byte $13
    .word $FFFF
    @@x01:
        .byte $01, @@x02 - @@x01
        .byte $09, $03
        .byte $00
    @@x02:
        .byte $02, @@x03 - @@x02
        .byte $06
        .byte $18
        .byte $15, $67, $67
        .byte $00
    @@x03:
        .byte $03, @@x04 - @@x03
        .byte $09, $03
        .byte $05, $37, $37
        .byte $35, $37, $57
        .byte $35, $47, $77
        .byte $15, $47, $97
        .byte $00
    @@x04:
        .byte $04, $FF
        .byte $09, $13
        .byte $00
