SpecItmsTbl:
@y17:
    .byte $17
    .word @y18
    @@x0C:
        .byte $0C, @@x10 - @@x0C
        .byte $04, $81
        .byte $00
    @@x10:
        .byte $10, $FF
        .byte $02, $00, $68, $68
        .byte $00
@y18:
    .byte $18
    .word @y1A
    @@x0E:
        .byte $0E, @@x13 - @@x0E
        .byte $02, $09, $88, $78
        .byte $00
    @@x13:
        .byte $13, $FF
        .byte $02, $09, $A8, $A8
        .byte $00
@y1A:
    .byte $1A
    .word @y1B
    @@x0A:
        .byte $0A, $FF
        .byte $02, $09, $48, $88
        .byte $00
@y1B:
    .byte $1B
    .word $FFFF
    @@x08:
        .byte $08, @@x13 - @@x08
        .byte $02, $09, $B8, $38
        .byte $00
    @@x13:
        .byte $13, @@x17 - @@x13
        .byte $02, $09, $68, $58
        .byte $00
    @@x17:
        .byte $17, $FF
        .byte $02, $08, $68, $68
        .byte $00
