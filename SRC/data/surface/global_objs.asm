SpecItmsTbl:
@y01:
    .byte $01
    .word @y02
    @@x1E:
        .byte $1E, $FF
        .byte $02, $09, $98, $A8
        .byte $00
@y02:
    .byte $02
    .word @y03
    @@x03:
        .byte $03, @@x09 - @@x03
        .byte $02, $04, $48, $78
        .byte $00
    @@x09:
        .byte $09, @@x19 - @@x09
        .byte $02, $08, $C8, $58
        .byte $00
    @@x19:
        .byte $19, $FF
        .byte $02, $02, $48, $78
        .byte $00
@y03:
    .byte $03
    .word @y04
    @@x01:
        .byte $01, @@x02 - @@x01
        .byte $02, $09, $B8, $D8
        .byte $00
    @@x02:
        .byte $02, @@x0B - @@x02
        .byte $04, $03
        .byte $00
    @@x0B:
        .byte $0B, @@x0D - @@x0B
        .byte $02, $09, $88, $58
        .byte $00
    @@x0D:
        .byte $0D, @@x14 - @@x0D
        .byte $02, $01, $48, $78
        .byte $00
    @@x14:
        .byte $14, @@x17 - @@x14
        .byte $04, $02
        .byte $00
    @@x17:
        .byte $17, $FF
        .byte $02, $09, $28, $C8
        .byte $00
@y04:
    .byte $04
    .word @y06
    @@x04:
        .byte $04, $FF
        .byte $02, $07, $48, $78
        .byte $00
@y06:
    .byte $06
    .word $FFFF
    @@x0C:
        .byte $0C, @@x11 - @@x0C
        .byte $04, $01
        .byte $00
    @@x11:
        .byte $11, $FF
        .byte $02, $09, $68, $68
        .byte $00
