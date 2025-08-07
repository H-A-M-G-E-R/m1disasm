;-----------------------------------[ Enemy animation data tables ]----------------------------------

EnAnimTbl: ;($9D6A)
EnAnim_00:
    .byte _id_EnFrame00, _id_EnFrame01, $FF

EnAnim_FireballKilled:
    .byte _id_EnFrame02, $FF

EnAnim_05:
    .byte _id_EnFrame19, _id_EnFrame1A, $FF

EnAnim_08:
    .byte _id_EnFrame1A
EnAnim_09:
    .byte _id_EnFrame1B, $FF

EnAnim_0B:
    .byte _id_EnFrame1C, _id_EnFrame1D, $FF

EnAnim_0E:
    .byte _id_EnFrame1D
EnAnim_0F:
    .byte _id_EnFrame1E, $FF

EnAnim_11:
    .byte _id_EnFrame22, _id_EnFrame23
EnAnim_13:
    .byte _id_EnFrame24, $FF

EnAnim_15:
    .byte _id_EnFrame1F, _id_EnFrame20
EnAnim_17:
    .byte _id_EnFrame21, $FF

EnAnim_RipperFacingLeft:
    .byte _id_EnFrame22, $FF

EnAnim_RipperFacingRight:
    .byte _id_EnFrame1F, $FF

EnAnim_1D:
    .byte _id_EnFrame23,
EnAnim_1E:
    .byte _id_EnFrame04, $FF

EnAnim_20:
    .byte _id_EnFrame20
EnAnim_21:
    .byte _id_EnFrame03, $FF

EnAnim_Skree:
    .byte _id_EnFrame27, _id_EnFrame28, _id_EnFrame29, $FF

EnAnim_27:
    .byte _id_EnFrame37, $FF

EnAnim_29:
    .byte _id_EnFrame38, $FF

EnAnim_2B:
    .byte _id_EnFrame39, $FF

EnAnim_2D:
    .byte _id_EnFrame3A, $FF

EnAnim_RipperExplodeFacingLeft:
    .byte _id_EnFrame3B, $FF

EnAnim_RipperExplodeFacingRight:
    .byte _id_EnFrame3C, $FF

EnAnim_SkreeExplode:
    .byte _id_EnFrame3D, $FF

EnAnim_ZoomerOnFloor:
    .byte _id_EnFrame58, _id_EnFrame59, $FF

EnAnim_ZoomerOnRightWall:
    .byte _id_EnFrame5A, _id_EnFrame5B, $FF

EnAnim_ZoomerOnCeiling:
    .byte _id_EnFrame5C, _id_EnFrame5D, $FF

EnAnim_ZoomerOnLeftWall:
    .byte _id_EnFrame5E, _id_EnFrame5F, $FF

EnAnim_ZoomerExplode:
    .byte _id_EnFrame60, $FF

EnAnim_Explosion:
    .byte _id_EnFrame61, $F7, _id_EnFrame62, $F7, $FF

EnAnim_Rio:
    .byte _id_EnFrame63, _id_EnFrame64, $FF

EnAnim_RioExplode:
    .byte _id_EnFrame65, $FF

EnAnim_ZebFacingLeft:
    .byte _id_EnFrame66, _id_EnFrame67, $FF

EnAnim_ZebFacingRight:
    .byte _id_EnFrame69, _id_EnFrame6A, $FF

EnAnim_ZebExplodeFacingLeft:
    .byte _id_EnFrame68, $FF

EnAnim_ZebExplodeFacingRight:
    .byte _id_EnFrame6B, $FF

EnAnim_57:
    .byte _id_EnFrame66, $FF

EnAnim_59:
    .byte _id_EnFrame69, $FF

EnAnim_5B:
    .byte _id_EnFrame6C, $FF

EnAnim_5D:
    .byte _id_EnFrame6D, $FF

EnAnim_5F:
    .byte _id_EnFrame6F, _id_EnFrame70, _id_EnFrame71
EnAnim_62:
    .byte _id_EnFrame6E, $FF

EnAnim_64:
    .byte _id_EnFrame73, _id_EnFrame74, _id_EnFrame75
EnAnim_67:
    .byte _id_EnFrame72, $FF

EnAnim_Mellow:
    .byte _id_EnFrame8F, _id_EnFrame90, $FF

EnAnim_6C:
    .byte _id_EnFrame91, _id_EnFrame92, $FF

EnAnim_6F:
    .byte _id_EnFrame93, _id_EnFrame94, $FF

EnAnim_72:
    .byte _id_EnFrame95, $FF

EnAnim_74:
    .byte _id_EnFrame96, $FF

;----------------------------[ Enemy sprite drawing pointer tables ]---------------------------------

EnFramePtrTable1:
    PtrTableEntry EnFramePtrTable1, EnFrame00
    PtrTableEntry EnFramePtrTable1, EnFrame01
    PtrTableEntry EnFramePtrTable1, EnFrame02
    PtrTableEntry EnFramePtrTable1, EnFrame03
    PtrTableEntry EnFramePtrTable1, EnFrame04
    PtrTableEntry EnFramePtrTable1, EnFrame05
    PtrTableEntry EnFramePtrTable1, EnFrame06
    PtrTableEntry EnFramePtrTable1, EnFrame07
    PtrTableEntry EnFramePtrTable1, EnFrame08
    PtrTableEntry EnFramePtrTable1, EnFrame09
    PtrTableEntry EnFramePtrTable1, EnFrame0A
    PtrTableEntry EnFramePtrTable1, EnFrame0B
    PtrTableEntry EnFramePtrTable1, EnFrame0C
    PtrTableEntry EnFramePtrTable1, EnFrame0D
    PtrTableEntry EnFramePtrTable1, EnFrame0E
    PtrTableEntry EnFramePtrTable1, EnFrame0F
    PtrTableEntry EnFramePtrTable1, EnFrame10
    PtrTableEntry EnFramePtrTable1, EnFrame11
    PtrTableEntry EnFramePtrTable1, EnFrame12
    PtrTableEntry EnFramePtrTable1, EnFrame13
    PtrTableEntry EnFramePtrTable1, EnFrame14
    PtrTableEntry EnFramePtrTable1, EnFrame15
    PtrTableEntry EnFramePtrTable1, EnFrame16
    PtrTableEntry EnFramePtrTable1, EnFrame17
    PtrTableEntry EnFramePtrTable1, EnFrame18
    PtrTableEntry EnFramePtrTable1, EnFrame19
    PtrTableEntry EnFramePtrTable1, EnFrame1A
    PtrTableEntry EnFramePtrTable1, EnFrame1B
    PtrTableEntry EnFramePtrTable1, EnFrame1C
    PtrTableEntry EnFramePtrTable1, EnFrame1D
    PtrTableEntry EnFramePtrTable1, EnFrame1E
    PtrTableEntry EnFramePtrTable1, EnFrame1F
    PtrTableEntry EnFramePtrTable1, EnFrame20
    PtrTableEntry EnFramePtrTable1, EnFrame21
    PtrTableEntry EnFramePtrTable1, EnFrame22
    PtrTableEntry EnFramePtrTable1, EnFrame23
    PtrTableEntry EnFramePtrTable1, EnFrame24
    PtrTableEntry EnFramePtrTable1, EnFrame25
    PtrTableEntry EnFramePtrTable1, EnFrame26
    PtrTableEntry EnFramePtrTable1, EnFrame27
    PtrTableEntry EnFramePtrTable1, EnFrame28
    PtrTableEntry EnFramePtrTable1, EnFrame29
    PtrTableEntry EnFramePtrTable1, EnFrame2A
    PtrTableEntry EnFramePtrTable1, EnFrame2B
    PtrTableEntry EnFramePtrTable1, EnFrame2C
    PtrTableEntry EnFramePtrTable1, EnFrame2D
    PtrTableEntry EnFramePtrTable1, EnFrame2E
    PtrTableEntry EnFramePtrTable1, EnFrame2F
    PtrTableEntry EnFramePtrTable1, EnFrame30
    PtrTableEntry EnFramePtrTable1, EnFrame31
    PtrTableEntry EnFramePtrTable1, EnFrame32
    PtrTableEntry EnFramePtrTable1, EnFrame33
    PtrTableEntry EnFramePtrTable1, EnFrame34
    PtrTableEntry EnFramePtrTable1, EnFrame35
    PtrTableEntry EnFramePtrTable1, EnFrame36
    PtrTableEntry EnFramePtrTable1, EnFrame37
    PtrTableEntry EnFramePtrTable1, EnFrame38
    PtrTableEntry EnFramePtrTable1, EnFrame39
    PtrTableEntry EnFramePtrTable1, EnFrame3A
    PtrTableEntry EnFramePtrTable1, EnFrame3B
    PtrTableEntry EnFramePtrTable1, EnFrame3C
    PtrTableEntry EnFramePtrTable1, EnFrame3D
    PtrTableEntry EnFramePtrTable1, EnFrame3E
    PtrTableEntry EnFramePtrTable1, EnFrame3F
    PtrTableEntry EnFramePtrTable1, EnFrame40
    PtrTableEntry EnFramePtrTable1, EnFrame41
    PtrTableEntry EnFramePtrTable1, EnFrame42
    PtrTableEntry EnFramePtrTable1, EnFrame43
    PtrTableEntry EnFramePtrTable1, EnFrame44
    PtrTableEntry EnFramePtrTable1, EnFrame45
    PtrTableEntry EnFramePtrTable1, EnFrame46
    PtrTableEntry EnFramePtrTable1, EnFrame47
    PtrTableEntry EnFramePtrTable1, EnFrame48
    PtrTableEntry EnFramePtrTable1, EnFrame49
    PtrTableEntry EnFramePtrTable1, EnFrame4A
    PtrTableEntry EnFramePtrTable1, EnFrame4B
    PtrTableEntry EnFramePtrTable1, EnFrame4C
    PtrTableEntry EnFramePtrTable1, EnFrame4D
    PtrTableEntry EnFramePtrTable1, EnFrame4E
    PtrTableEntry EnFramePtrTable1, EnFrame4F
    PtrTableEntry EnFramePtrTable1, EnFrame50
    PtrTableEntry EnFramePtrTable1, EnFrame51
    PtrTableEntry EnFramePtrTable1, EnFrame52
    PtrTableEntry EnFramePtrTable1, EnFrame53
    PtrTableEntry EnFramePtrTable1, EnFrame54
    PtrTableEntry EnFramePtrTable1, EnFrame55
    PtrTableEntry EnFramePtrTable1, EnFrame56
    PtrTableEntry EnFramePtrTable1, EnFrame57
    PtrTableEntry EnFramePtrTable1, EnFrame58
    PtrTableEntry EnFramePtrTable1, EnFrame59
    PtrTableEntry EnFramePtrTable1, EnFrame5A
    PtrTableEntry EnFramePtrTable1, EnFrame5B
    PtrTableEntry EnFramePtrTable1, EnFrame5C
    PtrTableEntry EnFramePtrTable1, EnFrame5D
    PtrTableEntry EnFramePtrTable1, EnFrame5E
    PtrTableEntry EnFramePtrTable1, EnFrame5F
    PtrTableEntry EnFramePtrTable1, EnFrame60
    PtrTableEntry EnFramePtrTable1, EnFrame61
    PtrTableEntry EnFramePtrTable1, EnFrame62
    PtrTableEntry EnFramePtrTable1, EnFrame63
    PtrTableEntry EnFramePtrTable1, EnFrame64
    PtrTableEntry EnFramePtrTable1, EnFrame65
    PtrTableEntry EnFramePtrTable1, EnFrame66
    PtrTableEntry EnFramePtrTable1, EnFrame67
    PtrTableEntry EnFramePtrTable1, EnFrame68
    PtrTableEntry EnFramePtrTable1, EnFrame69
    PtrTableEntry EnFramePtrTable1, EnFrame6A
    PtrTableEntry EnFramePtrTable1, EnFrame6B
    PtrTableEntry EnFramePtrTable1, EnFrame6C
    PtrTableEntry EnFramePtrTable1, EnFrame6D
    PtrTableEntry EnFramePtrTable1, EnFrame6E
    PtrTableEntry EnFramePtrTable1, EnFrame6F
    PtrTableEntry EnFramePtrTable1, EnFrame70
    PtrTableEntry EnFramePtrTable1, EnFrame71
    PtrTableEntry EnFramePtrTable1, EnFrame72
    PtrTableEntry EnFramePtrTable1, EnFrame73
    PtrTableEntry EnFramePtrTable1, EnFrame74
    PtrTableEntry EnFramePtrTable1, EnFrame75
    PtrTableEntry EnFramePtrTable1, EnFrame76
    PtrTableEntry EnFramePtrTable1, EnFrame77
    PtrTableEntry EnFramePtrTable1, EnFrame78
    PtrTableEntry EnFramePtrTable1, EnFrame79
    PtrTableEntry EnFramePtrTable1, EnFrame7A
    PtrTableEntry EnFramePtrTable1, EnFrame7B
    PtrTableEntry EnFramePtrTable1, EnFrame7C
    PtrTableEntry EnFramePtrTable1, EnFrame7D
    PtrTableEntry EnFramePtrTable1, EnFrame7E
    PtrTableEntry EnFramePtrTable1, EnFrame7F
    PtrTableEntry EnFramePtrTable1, EnFrame80
    PtrTableEntry EnFramePtrTable1, EnFrame81
    PtrTableEntry EnFramePtrTable1, EnFrame82
    PtrTableEntry EnFramePtrTable1, EnFrame83
    PtrTableEntry EnFramePtrTable1, EnFrame84
    PtrTableEntry EnFramePtrTable1, EnFrame85
    PtrTableEntry EnFramePtrTable1, EnFrame86
    PtrTableEntry EnFramePtrTable1, EnFrame87
    PtrTableEntry EnFramePtrTable1, EnFrame88
    PtrTableEntry EnFramePtrTable1, EnFrame89
    PtrTableEntry EnFramePtrTable1, EnFrame8A
    PtrTableEntry EnFramePtrTable1, EnFrame8B
    PtrTableEntry EnFramePtrTable1, EnFrame8C
    PtrTableEntry EnFramePtrTable1, EnFrame8D
    PtrTableEntry EnFramePtrTable1, EnFrame8E
    PtrTableEntry EnFramePtrTable1, EnFrame8F
    PtrTableEntry EnFramePtrTable1, EnFrame90
    PtrTableEntry EnFramePtrTable1, EnFrame91
    PtrTableEntry EnFramePtrTable1, EnFrame92
    PtrTableEntry EnFramePtrTable1, EnFrame93
    PtrTableEntry EnFramePtrTable1, EnFrame94
    PtrTableEntry EnFramePtrTable1, EnFrame95
    PtrTableEntry EnFramePtrTable1, EnFrame96

;Enemy frame drawing data.

;Unused.
EnFrame00:
    .byte $02,$02
    .byte $FC,$14,$20,$FC
    .byte $80

EnFrame01:
    .byte $02,$02
    .byte $FC,$24,$20,$FC
    .byte $80

;Fireball killed.
EnFrame02:
    .byte $00,$00
    .byte $FC,$17,$20,$FC
    .byte $80

EnFrame03:
    .byte $06,$08
    .byte $FC,$D0,$22,$F8
    .byte $FC,$D1,$22,$00
    .byte $80

EnFrame04:
    .byte $06,$08
    .byte $FC,$D0,$62,$00
    .byte $FC,$D1,$62,$F8
    .byte $80

EnFrame05:
EnFrame06:
EnFrame07:
EnFrame08:
EnFrame09:
EnFrame0A:
EnFrame0B:
EnFrame0C:
EnFrame0D:
EnFrame0E:
EnFrame0F:
EnFrame10:
EnFrame11:
EnFrame12:
EnFrame13:
EnFrame14:
EnFrame15:
EnFrame16:
EnFrame17:
EnFrame18:
EnFrame19:
    .byte $08,$0A
    .byte $F8,$A3,$22,$F4
    .byte $00,$B3,$22,$F4
    .byte $F8,$A4,$22,$FC
    .byte $00,$B4,$22,$FC
    .byte $F8,$A3,$62,$04
    .byte $00,$B3,$62,$04
    .byte $80

EnFrame1A:
    .byte $08,$0A
    .byte $F8,$A5,$22,$F4
    .byte $00,$B3,$22,$F4
    .byte $F4,$A4,$22,$FC
    .byte $FC,$B4,$22,$FC
    .byte $F8,$A5,$62,$04
    .byte $00,$B3,$62,$04
    .byte $80

EnFrame1B:
    .byte $08,$0A
    .byte $02,$B5,$22,$F4
    .byte $0A,$B3,$22,$F4
    .byte $F8,$A4,$22,$FC
    .byte $00,$B4,$22,$FC
    .byte $02,$B5,$62,$04
    .byte $0A,$B3,$62,$04
    .byte $80

EnFrame1C:
    .byte $08,$0A
    .byte $00,$A3,$A2,$F4
    .byte $F8,$B3,$A2,$F4
    .byte $00,$A4,$A2,$FC
    .byte $F8,$B4,$A2,$FC
    .byte $00,$A3,$E2,$04
    .byte $F8,$B3,$E2,$04
    .byte $80

EnFrame1D:
    .byte $08,$0A
    .byte $00,$A5,$A2,$F4
    .byte $F8,$B3,$A2,$F4
    .byte $04,$A4,$A2,$FC
    .byte $FC,$B4,$A2,$FC
    .byte $00,$A5,$E2,$04
    .byte $F8,$B3,$E2,$04
    .byte $80

EnFrame1E:
    .byte $08,$0A
    .byte $F6,$B5,$A2,$F4
    .byte $EE,$B3,$A2,$F4
    .byte $00,$A4,$A2,$FC
    .byte $F8,$B4,$A2,$FC
    .byte $F6,$B5,$E2,$04
    .byte $EE,$B3,$E2,$04
    .byte $80

;Ripper facing right.
EnFrame1F:
    .byte $06,$08
    .byte $FC,$C0,$22,$F8
    .byte $FC,$C1,$22,$00
    .byte $80

EnFrame20:
    .byte $06,$08
    .byte $F8,$E0,$22,$F8
    .byte $F8,$E1,$22,$00
    .byte $00,$E0,$A2,$F8
    .byte $00,$E1,$A2,$00
    .byte $80

EnFrame21:
    .byte $06,$08
    .byte $F8,$F0,$22,$F8
    .byte $F8,$F1,$22,$00
    .byte $00,$F0,$A2,$F8
    .byte $00,$F1,$A2,$00
    .byte $80

;Ripper facing left.
EnFrame22:
    .byte $06,$08
    .byte $FC,$C0,$62,$00
    .byte $FC,$C1,$62,$F8
    .byte $80

EnFrame23:
    .byte $06,$08
    .byte $F8,$E0,$62,$00
    .byte $F8,$E1,$62,$F8
    .byte $00,$E0,$E2,$00
    .byte $00,$E1,$E2,$F8
    .byte $80

EnFrame24:
    .byte $06,$08
    .byte $F8,$F0,$62,$00
    .byte $F8,$F1,$62,$F8
    .byte $00,$F0,$E2,$00
    .byte $00,$F1,$E2,$F8
    .byte $80

;Skree.
EnFrame25:
EnFrame26:
EnFrame27:
    .byte $0C,$08
    .byte $F4,$CE,$22,$FC
    .byte $FC,$DE,$22,$F8
    .byte $04,$EE,$22,$F8
    .byte $FC,$DF,$22,$00
    .byte $04,$EE,$62,$00
    .byte $80

;Skree.
EnFrame28:
    .byte $0C,$08
    .byte $F4,$CE,$22,$FC
    .byte $FC,$CF,$22,$FC
    .byte $04,$EF,$22,$FC
    .byte $80

;Skree.
EnFrame29:
    .byte $0C,$08
    .byte $F4,$CE,$22,$FC
    .byte $FC,$CF,$62,$FC
    .byte $04,$EF,$62,$FC
    .byte $80

EnFrame2A:
EnFrame2B:
EnFrame2C:
EnFrame2D:
EnFrame2E:
EnFrame2F:
EnFrame30:
EnFrame31:
EnFrame32:
EnFrame33:
EnFrame34:
EnFrame35:
EnFrame36:
EnFrame37:
    .byte $80,$00
    .byte $00,$FC,$A3,$22,$F4
    .byte $01,$FC,$A3,$22,$04
    .byte $02,$04,$B3,$22,$F4
    .byte $03,$04,$B3,$22,$04
    .byte $80

EnFrame38:
    .byte $80,$00
    .byte $00,$F4,$B3,$22,$F4
    .byte $01,$F4,$B3,$22,$04
    .byte $02,$FC,$A3,$22,$F4
    .byte $03,$FC,$A3,$22,$04
    .byte $80

EnFrame39:
    .byte $80,$00
    .byte $00,$F8,$F1,$22,$F8
    .byte $01,$F8,$F0,$22,$00
    .byte $02,$00,$F1,$22,$F8
    .byte $03,$00,$F0,$22,$00
    .byte $80

EnFrame3A:
    .byte $80,$00
    .byte $00,$F8,$F0,$22,$F8
    .byte $01,$F8,$F1,$22,$00
    .byte $02,$00,$F0,$22,$F8
    .byte $03,$00,$F1,$22,$00
    .byte $80

;Ripper explode facing left (uses waver gfx).
EnFrame3B:
    .byte $80,$00
    .byte $00,$FC,$D1,$22,$F8
    .byte $01,$FC,$D0,$22,$00
    .byte $80

;Ripper explode facing right (uses waver gfx).
EnFrame3C:
    .byte $80,$00
    .byte $00,$FC,$D0,$22,$F8
    .byte $01,$FC,$D1,$22,$00
    .byte $80

;Skree explode.
EnFrame3D:
    .byte $80,$00
    .byte $00,$FC,$DE,$22,$F8
    .byte $01,$FC,$DF,$22,$00
    .byte $02,$04,$EE,$22,$F8
    .byte $03,$04,$EE,$22,$00
    .byte $80

;Zoomer on floor.
EnFrame3E:
EnFrame3F:
EnFrame40:
EnFrame41:
EnFrame42:
EnFrame43:
EnFrame44:
EnFrame45:
EnFrame46:
EnFrame47:
EnFrame48:
EnFrame49:
EnFrame4A:
EnFrame4B:
EnFrame4C:
EnFrame4D:
EnFrame4E:
EnFrame4F:
EnFrame50:
EnFrame51:
EnFrame52:
EnFrame53:
EnFrame54:
EnFrame55:
EnFrame56:
EnFrame57:
EnFrame58:
    .byte $08,$08
    .byte $F8,$CC,$22,$F8
    .byte $F8,$CD,$22,$00
    .byte $00,$DC,$22,$F8
    .byte $00,$DD,$22,$00
    .byte $80

;Zoomer on floor.
EnFrame59:
    .byte $08,$08
    .byte $F8,$CC,$62,$00
    .byte $F8,$CD,$62,$F8
    .byte $00,$DC,$62,$00
    .byte $00,$DD,$62,$F8
    .byte $80

;Zoomer on right wall.
EnFrame5A:
    .byte $08,$08
    .byte $F8,$CA,$22,$F8
    .byte $F8,$CB,$22,$00
    .byte $00,$DA,$22,$F8
    .byte $00,$DB,$22,$00
    .byte $80

;Zoomer on right wall.
EnFrame5B:
    .byte $08,$08
    .byte $00,$CA,$A2,$F8
    .byte $00,$CB,$A2,$00
    .byte $F8,$DA,$A2,$F8
    .byte $F8,$DB,$A2,$00
    .byte $80

;Zoomer on ceiling.
EnFrame5C:
    .byte $08,$08
    .byte $00,$CC,$A2,$F8
    .byte $00,$CD,$A2,$00
    .byte $F8,$DC,$A2,$F8
    .byte $F8,$DD,$A2,$00
    .byte $80

;Zoomer on ceiling.
EnFrame5D:
    .byte $08,$08
    .byte $00,$CC,$E2,$00
    .byte $00,$CD,$E2,$F8
    .byte $F8,$DC,$E2,$00
    .byte $F8,$DD,$E2,$F8
    .byte $80

;Zoomer on left wall.
EnFrame5E:
    .byte $08,$08
    .byte $F8,$CA,$62,$00
    .byte $F8,$CB,$62,$F8
    .byte $00,$DA,$62,$00
    .byte $00,$DB,$62,$F8
    .byte $80

;Zoomer on left wall.
EnFrame5F:
    .byte $08,$08
    .byte $00,$CA,$E2,$00
    .byte $00,$CB,$E2,$F8
    .byte $F8,$DA,$E2,$00
    .byte $F8,$DB,$E2,$F8
    .byte $80

;Zoomer explode.
EnFrame60:
    .byte $80,$00
    .byte $00,$F4,$CC,$22,$F8
    .byte $01,$F4,$CD,$22,$00
    .byte $02,$FC,$DC,$22,$F8
    .byte $03,$FC,$DD,$22,$00
    .byte $80

;Explosion.
EnFrame61:
    .byte $00,$00
    .byte $F8,$1F,$20,$F8
    .byte $F8,$1F,$60,$00
    .byte $00,$1F,$A0,$F8
    .byte $00,$1F,$E0,$00
    .byte $80

;Explosion.
EnFrame62:
    .byte $00,$00
    .byte $F0,$21,$20,$00
    .byte $F0,$22,$20,$08
    .byte $F8,$23,$20,$08
    .byte $F0,$22,$60,$F0
    .byte $F0,$21,$60,$F8
    .byte $F8,$23,$60,$F0
    .byte $00,$23,$E0,$F0
    .byte $08,$22,$E0,$F0
    .byte $08,$21,$E0,$F8
    .byte $00,$23,$A0,$08
    .byte $08,$21,$A0,$00
    .byte $08,$22,$A0,$08
    .byte $80

;Rio.
EnFrame63:
    .byte $08,$08
    .byte $F8,$E2,$22,$FC
    .byte $00,$E3,$22,$F8
    .byte $F4,$E4,$22,$F4
    .byte $00,$E3,$62,$00
    .byte $F4,$E4,$62,$04
    .byte $80

;Rio.
EnFrame64:
    .byte $08,$08
    .byte $F8,$E2,$22,$FC
    .byte $00,$E3,$22,$F8
    .byte $FC,$E4,$22,$F4
    .byte $00,$E3,$62,$00
    .byte $FC,$E4,$62,$04
    .byte $80

;Rio explode (gfx looks wrong).
EnFrame65:
    .byte $80,$00
    .byte $00,$F4,$96,$22,$F8
    .byte $01,$F4,$96,$22,$00
    .byte $02,$FC,$98,$22,$F8
    .byte $03,$FC,$98,$22,$00
    .byte $80

;Zeb facing left.
EnFrame66:
    .byte $08,$08
    .byte $F8,$C2,$22,$F8
    .byte $F8,$C3,$22,$00
    .byte $00,$D2,$22,$F8
    .byte $00,$D3,$22,$00
    .byte $80

;Zeb facing left.
EnFrame67:
    .byte $08,$08
    .byte $F8,$C2,$22,$F8
    .byte $F8,$C4,$22,$00
    .byte $00,$D2,$22,$F8
    .byte $00,$D4,$22,$00
    .byte $80

;Zeb explode facing left.
EnFrame68:
    .byte $88,$08
    .byte $00,$F4,$C2,$22,$F8
    .byte $01,$F4,$C4,$22,$00
    .byte $02,$FC,$D2,$22,$F8
    .byte $03,$FC,$D4,$22,$00
    .byte $80

;Zeb facing right.
EnFrame69:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C3,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D3,$62,$F8
    .byte $80

;Zeb facing right.
EnFrame6A:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C4,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D4,$62,$F8
    .byte $80

;Zeb explode facing right.
EnFrame6B:
    .byte $88,$08
    .byte $00,$F4,$C2,$62,$00
    .byte $01,$F4,$C4,$62,$F8
    .byte $02,$FC,$D2,$62,$00
    .byte $03,$FC,$D4,$62,$F8
    .byte $80

EnFrame6C:
    .byte $02,$04
    .byte $FB,$F8,$22,$FC
    .byte $80

EnFrame6D:
    .byte $02,$04
    .byte $FB,$F8,$62,$FC
    .byte $80

EnFrame6E:
    .byte $02,$02
    .byte $FA,$D9,$22,$FC
    .byte $80

EnFrame6F:
    .byte $02,$02
    .byte $FC,$D8,$E2,$FE
    .byte $80

EnFrame70:
    .byte $02,$02
    .byte $FE,$D9,$E2,$FC
    .byte $80

EnFrame71:
    .byte $02,$02
    .byte $FC,$D8,$22,$FA
    .byte $80

EnFrame72:
    .byte $02,$02
    .byte $FA,$D9,$62,$FC
    .byte $80

EnFrame73:
    .byte $02,$02
    .byte $FC,$D8,$A2,$FA
    .byte $80

EnFrame74:
    .byte $02,$02
    .byte $FE,$D9,$A2,$FC
    .byte $80

EnFrame75:
    .byte $02,$02
    .byte $FC,$D8,$62,$FE
    .byte $80

;Missile pickup.
EnFrame76:
EnFrame77:
EnFrame78:
EnFrame79:
EnFrame7A:
EnFrame7B:
EnFrame7C:
EnFrame7D:
EnFrame7E:
EnFrame7F:
EnFrame80:
    .byte $08,$04
    .byte $F8,$14,$20,$FC
    .byte $00,$15,$20,$FC
    .byte $80

;Small energy pickup.
EnFrame81:
    .byte $04,$04
    .byte $FC,$28,$20,$FC
    .byte $80

;Big energy pickup.
EnFrame82:
EnFrame83:
EnFrame84:
EnFrame85:
EnFrame86:
EnFrame87:
EnFrame88:
EnFrame89:
    .byte $04,$04
    .byte $FC,$28,$20,$FC
    .byte $80

;Mellow.
EnFrame8A:
EnFrame8B:
EnFrame8C:
EnFrame8D:
EnFrame8E:
EnFrame8F:
    .byte $04,$08
    .byte $FC,$EC,$03,$F8
    .byte $FC,$EC,$43,$00
    .byte $80

;Mellow.
EnFrame90:
    .byte $04,$08
    .byte $FC,$ED,$03,$F8
    .byte $FC,$ED,$43,$00
    .byte $80

EnFrame91:
    .byte $10,$0C
    .byte $F0,$C5,$22,$F4
    .byte $F0,$C6,$22,$FC
    .byte $F0,$C7,$22,$04
    .byte $F8,$D5,$22,$F4
    .byte $F8,$D6,$22,$FC
    .byte $F8,$D7,$22,$04
    .byte $00,$E5,$22,$F4
    .byte $00,$E6,$22,$FC
    .byte $00,$E7,$22,$04
    .byte $08,$F5,$22,$F4
    .byte $08,$F6,$22,$FC
    .byte $08,$F7,$22,$04
    .byte $80

EnFrame92:
    .byte $10,$0C
    .byte $F0,$C5,$22,$F4
    .byte $F0,$C6,$22,$FC
    .byte $F0,$C7,$22,$04
    .byte $F8,$D5,$22,$F4
    .byte $F8,$D6,$22,$FC
    .byte $F8,$D7,$22,$04
    .byte $00,$E5,$22,$F4
    .byte $00,$E6,$22,$FC
    .byte $00,$E7,$22,$04
    .byte $08,$E8,$22,$F4
    .byte $08,$E9,$22,$FC
    .byte $08,$F9,$22,$04
    .byte $80

EnFrame93:
    .byte $10,$0C
    .byte $F0,$C5,$62,$04
    .byte $F0,$C6,$62,$FC
    .byte $F0,$C7,$62,$F4
    .byte $F8,$D5,$62,$04
    .byte $F8,$D6,$62,$FC
    .byte $F8,$D7,$62,$F4
    .byte $00,$E5,$62,$04
    .byte $00,$E6,$62,$FC
    .byte $00,$E7,$62,$F4
    .byte $08,$F5,$62,$04
    .byte $08,$F6,$62,$FC
    .byte $08,$F7,$62,$F4
    .byte $80

EnFrame94:
    .byte $10,$0C
    .byte $F0,$C5,$62,$04
    .byte $F0,$C6,$62,$FC
    .byte $F0,$C7,$62,$F4
    .byte $F8,$D5,$62,$04
    .byte $F8,$D6,$62,$FC
    .byte $F8,$D7,$62,$F4
    .byte $00,$E5,$62,$04
    .byte $00,$E6,$62,$FC
    .byte $00,$E7,$62,$F4
    .byte $08,$E8,$62,$04
    .byte $08,$E9,$62,$FC
    .byte $08,$F9,$62,$F4
    .byte $80

EnFrame95:
    .byte $80,$00
    .byte $00,$F4,$C5,$22,$F8
    .byte $01,$F4,$C7,$22,$00
    .byte $02,$FC,$D5,$22,$F8
    .byte $03,$FC,$D7,$22,$00
    .byte $04,$04,$E5,$22,$F8
    .byte $05,$04,$E7,$22,$00
    .byte $80

EnFrame96:
    .byte $80,$00
    .byte $00,$F4,$C7,$22,$F8
    .byte $01,$F4,$C5,$22,$00
    .byte $02,$FC,$D7,$22,$F8
    .byte $03,$FC,$D5,$22,$00
    .byte $04,$04,$E7,$22,$F8
    .byte $05,$04,$E5,$22,$00
    .byte $80
