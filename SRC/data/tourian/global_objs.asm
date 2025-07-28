SpecItmsTbl:
@y03:
    .byte $03
    .word @y04
    @@x01:
        .byte $01, $FF
        .byte $04, $FF
        .byte $00
@y04:
    .byte $04
    .word @y07
    @@x03:
        .byte $03, $FF
        .byte $04, $80
        .byte $00
@y07:
    .byte $07
    .word @y08
    @@x03:
        .byte $03, @@x04 - @@x03
        .byte $09, $02
        .byte $00
    @@x04:
        .byte $04, @@x09 - @@x04
        .byte $08
        .byte $00
    @@x09:
        .byte $09, $FF
        .byte $08
        .byte $00
@y08:
    .byte $08
    .word @y09
    @@x0A:
        .byte $0A, $FF
        .byte $18
        .byte $00
@y09:
    .byte $09
    .word @y0A
    @@x0A:
        .byte $0A, $FF
        .byte $08
        .byte $00
@y0A:
    .byte $0A
    .word @y0B
    @@x0A:
        .byte $0A, $FF
        .byte $18
        .byte $00
@y0B:
    .byte $0B
    .word $FFFF
    @@x01:
        .byte $01, @@x02 - @@x01
        .byte $09, $03
        .byte $00
    @@x02:
        .byte $02, @@x03 - @@x02
        .byte $06
        .byte $47
        .byte $18
        .byte $05, $49
        .byte $15, $4B
        .byte $25, $3E
        .byte $00
    @@x03:
        .byte $03, @@x04 - @@x03
        .byte $37
        .byte $27
        .byte $08
        .byte $05, $41
        .byte $15, $43
        .byte $25, $36
        .byte $05, $49
        .byte $15, $4B
        .byte $35, $3E
        .byte $00
    @@x04:
        .byte $04, @@x05 - @@x04
        .byte $09, $03
        .byte $17
        .byte $07
        .byte $08
        .byte $05, $41
        .byte $15, $43
        .byte $25, $36
        .byte $05, $49
        .byte $15, $4B
        .byte $35, $3E
        .byte $00
    @@x05:
        .byte $05, $FF
        .byte $09, $13
        .byte $00
