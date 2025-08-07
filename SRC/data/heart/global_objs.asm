SpecItmsTbl:
@y08:
    .byte $08
    .word @y0B
    @@x0C:
        .byte $0C, @@x0E - @@x0C
        .byte $04, $80
        .byte $00
    @@x0E:
        .byte $0E, $FF
        .byte $02, $09, $98, $D8
        .byte $00
@y0B:
    .byte $0B
    .word @y0D
    @@x09:
        .byte $09, $FF
        .byte $02, $09, $98, $B8
        .byte $00
@y0D:
    .byte $0D
    .word @y0E
    @@x0F:
        .byte $0F, $FF
        .byte $02, $0B, $68, $98
        .byte $00
@y0E:
    .byte $0E
    .word @y0F
    @@x09:
        .byte $09, $FF
        .byte $02, $09, $88, $58
        .byte $00
@y0F:
    .byte $0F
    .word @y10
    @@x13:
        .byte $13, $FF
        .byte $02, $09, $78, $A8
        .byte $00
@y10:
    .byte $10
    .word @y11
    @@x0A:
        .byte $0A, $FF
        .byte $02, $09, $58, $58
        .byte $00
@y11:
    .byte $11
    .word @y12
    @@x13:
        .byte $13, $FF
        .byte $02, $08, $88, $78
        .byte $00
@y12:
    .byte $12
    .word @y13
    @@x09:
        .byte $09, $FF
        .byte $02, $06, $48, $78
        .byte $00
@y13:
    .byte $13
    .word @y15
    @@x10:
        .byte $10, $FF
        .byte $02, $03, $48, $78
        .byte $00
@y15:
    .byte $15
    .word $FFFF
    @@x0C:
        .byte $0C, $FF
        .byte $04, $04
        .byte $00
