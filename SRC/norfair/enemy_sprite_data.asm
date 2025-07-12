;-----------------------------------[ Enemy animation data tables ]----------------------------------

EnAnimTbl: ;($9BDA)
EnAnim_00:
    .byte _id_EnFrame00, _id_EnFrame01, $FF

EnAnim_FireballKilled:
    .byte _id_EnFrame02, $FF

EnAnim_05:
    .byte _id_EnFrame03, _id_EnFrame04, $FF

EnAnim_08:
    .byte _id_EnFrame07, _id_EnFrame08, $FF

EnAnim_0B:
    .byte _id_EnFrame05, _id_EnFrame06, $FF

EnAnim_0E:
    .byte _id_EnFrame09, _id_EnFrame0A, $FF

EnAnim_11:
    .byte _id_EnFrame0B, $FF

EnAnim_13:
    .byte _id_EnFrame0C, _id_EnFrame0D, _id_EnFrame0E, _id_EnFrame0F, $FF

EnAnim_18:
    .byte _id_EnFrame10, _id_EnFrame11, _id_EnFrame12, _id_EnFrame13, $FF

EnAnim_1D:
    .byte _id_EnFrame15, _id_EnFrame14, $FF

EnAnim_20:
    .byte _id_EnFrame16, $FF

EnAnim_22:
    .byte _id_EnFrame17, _id_EnFrame18, $FF

EnAnim_25:
    .byte _id_EnFrame19, _id_EnFrame1A, $FF

EnAnim_28:
    .byte _id_EnFrame1B, $FF

EnAnim_2A:
    .byte _id_EnFrame1C, _id_EnFrame1D, $FF

EnAnim_2D:
    .byte _id_EnFrame1E, _id_EnFrame1F, $FF

EnAnim_30:
    .byte _id_EnFrame20, $FF

EnAnim_32:
    .byte _id_EnFrame21, _id_EnFrame22, $FF

EnAnim_35:
    .byte _id_EnFrame23, $FF

EnAnim_37:
    .byte _id_EnFrame27, _id_EnFrame28, _id_EnFrame29, _id_EnFrame2A, $FF

EnAnim_3C:
    .byte _id_EnFrame2B, _id_EnFrame2C, _id_EnFrame2D, _id_EnFrame2E, $FF

EnAnim_41:
    .byte _id_EnFrame2F, $FF

EnAnim_43:
    .byte _id_EnFrame30, $FF

EnAnim_45:
    .byte _id_EnFrame31, $FF

EnAnim_47:
    .byte _id_EnFrame32, $FF

EnAnim_49:
    .byte _id_EnFrame33, $FF

EnAnim_4B:
    .byte _id_EnFrame34, $FF

EnAnim_4D:
    .byte _id_EnFrame42, $FF

EnAnim_4F:
    .byte _id_EnFrame43, _id_EnFrame44, $F7, $FF

EnAnim_53:
    .byte _id_EnFrame3B, $FF

EnAnim_55:
    .byte _id_EnFrame3C, $FF

EnAnim_57:
    .byte _id_EnFrame3D, $FF

EnAnim_59:
    .byte _id_EnFrame3E, $FF

EnAnim_5B:
    .byte _id_EnFrame3F, _id_EnFrame3F, _id_EnFrame3F, _id_EnFrame3F, _id_EnFrame3F, _id_EnFrame41, _id_EnFrame41, _id_EnFrame41, _id_EnFrame41, _id_EnFrame40, _id_EnFrame40, _id_EnFrame40, $F7, $FF

EnAnim_69:
    .byte _id_EnFrame58, _id_EnFrame59, $FF

EnAnim_6C:
    .byte _id_EnFrame5A, _id_EnFrame5B, $FF

EnAnim_6F:
    .byte _id_EnFrame5C, _id_EnFrame5D, $FF

EnAnim_72:
    .byte _id_EnFrame5E, _id_EnFrame5F, $FF

EnAnim_75:
    .byte _id_EnFrame60, $FF

EnAnim_77:
    .byte _id_EnFrame61, $F7, _id_EnFrame62, $F7, $FF

EnAnim_7C:
    .byte _id_EnFrame66, _id_EnFrame67, $FF

EnAnim_7F:
    .byte _id_EnFrame69, _id_EnFrame6A, $FF

EnAnim_82:
    .byte _id_EnFrame68, $FF

EnAnim_84:
    .byte _id_EnFrame6B, $FF

EnAnim_86:
    .byte _id_EnFrame66, $FF

EnAnim_88:
    .byte _id_EnFrame69, $FF

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

;Enemy frame drawing data.

EnFrame00:
    .byte $02,$02
    .byte $FC,$14,$20,$FC
    .byte $80

EnFrame01:
    .byte $02,$02
    .byte $FC,$24,$20,$FC
    .byte $80

EnFrame02:
    .byte $00,$00
    .byte $FC,$17,$20,$FC
    .byte $80

EnFrame03:
    .byte $13,$08
    .byte $F4,$C8,$22,$F4
    .byte $F4,$C9,$22,$04
    .byte $F8,$C6,$22,$F4
    .byte $F8,$C7,$22,$FC
    .byte $F8,$D6,$22,$04
    .byte $00,$D7,$22,$F8
    .byte $00,$D5,$22,$00
    .byte $FC,$E5,$22,$F8
    .byte $FC,$E6,$22,$00
    .byte $F0,$E7,$22,$F8
    .byte $F0,$F5,$22,$00
    .byte $F8,$F6,$22,$F8
    .byte $F8,$F7,$22,$00
    .byte $00,$F9,$22,$F8
    .byte $00,$F8,$22,$00
    .byte $80

EnFrame04:
    .byte $13,$08
    .byte $F4,$C8,$22,$F4
    .byte $F4,$C9,$22,$04
    .byte $F8,$C6,$22,$F4
    .byte $F8,$C7,$22,$FC
    .byte $F8,$D6,$22,$04
    .byte $00,$D7,$22,$F8
    .byte $00,$D5,$22,$00
    .byte $FC,$E5,$22,$F8
    .byte $FC,$E6,$22,$00
    .byte $F0,$E7,$22,$F8
    .byte $F0,$F5,$22,$00
    .byte $F8,$F6,$22,$F8
    .byte $F8,$F7,$22,$00
    .byte $00,$D8,$22,$F8
    .byte $08,$E8,$22,$F8
    .byte $80

EnFrame05:
    .byte $13,$08
    .byte $F4,$C8,$22,$F4
    .byte $F4,$C9,$22,$04
    .byte $F8,$C6,$22,$F4
    .byte $F8,$C7,$22,$FC
    .byte $F8,$D6,$22,$04
    .byte $00,$D7,$22,$F8
    .byte $FC,$D9,$22,$F8
    .byte $FC,$E6,$22,$00
    .byte $F0,$E7,$22,$F8
    .byte $F0,$E9,$22,$00
    .byte $F8,$EA,$22,$F8
    .byte $F8,$EB,$22,$00
    .byte $00,$F9,$22,$F8
    .byte $00,$F8,$22,$00
    .byte $08,$D5,$22,$00
    .byte $F8,$FA,$22,$E8
    .byte $80

EnFrame06:
    .byte $13,$08
    .byte $F4,$C8,$22,$F4
    .byte $F4,$C9,$22,$04
    .byte $F8,$C6,$22,$F4
    .byte $F8,$C7,$22,$FC
    .byte $F8,$D6,$22,$04
    .byte $00,$D7,$22,$F8
    .byte $FC,$D9,$22,$F8
    .byte $FC,$E6,$22,$00
    .byte $F0,$E7,$22,$F8
    .byte $F0,$E9,$22,$00
    .byte $F8,$EA,$22,$F8
    .byte $F8,$EB,$22,$00
    .byte $00,$D8,$22,$F8
    .byte $08,$E8,$22,$F8
    .byte $08,$D5,$22,$00
    .byte $F8,$FA,$22,$E8
    .byte $80

EnFrame07:
    .byte $13,$08
    .byte $F4,$C8,$62,$04
    .byte $F4,$C9,$62,$F4
    .byte $F8,$C6,$62,$04
    .byte $F8,$C7,$62,$FC
    .byte $F8,$D6,$62,$F4
    .byte $00,$D7,$62,$00
    .byte $00,$D5,$62,$F8
    .byte $FC,$E5,$62,$00
    .byte $FC,$E6,$62,$F8
    .byte $F0,$E7,$62,$00
    .byte $F0,$F5,$62,$F8
    .byte $F8,$F6,$62,$00
    .byte $F8,$F7,$62,$F8
    .byte $00,$F9,$62,$00
    .byte $00,$F8,$62,$F8
    .byte $80

EnFrame08:
    .byte $13,$08
    .byte $F4,$C8,$62,$04
    .byte $F4,$C9,$62,$F4
    .byte $F8,$C6,$62,$04
    .byte $F8,$C7,$62,$FC
    .byte $F8,$D6,$62,$F4
    .byte $00,$D7,$62,$00
    .byte $00,$D5,$62,$F8
    .byte $FC,$E5,$62,$00
    .byte $FC,$E6,$62,$F8
    .byte $F0,$E7,$62,$00
    .byte $F0,$F5,$62,$F8
    .byte $F8,$F6,$62,$00
    .byte $F8,$F7,$62,$F8
    .byte $00,$D8,$62,$00
    .byte $08,$E8,$62,$00
    .byte $80

EnFrame09:
    .byte $13,$08
    .byte $F4,$C8,$62,$04
    .byte $F4,$C9,$62,$F4
    .byte $F8,$C6,$62,$04
    .byte $F8,$C7,$62,$FC
    .byte $F8,$D6,$62,$F4
    .byte $00,$D7,$62,$00
    .byte $FC,$D9,$62,$00
    .byte $FC,$E6,$62,$F8
    .byte $F0,$E7,$62,$00
    .byte $F0,$E9,$62,$F8
    .byte $F8,$EA,$62,$00
    .byte $F8,$EB,$62,$F8
    .byte $00,$F9,$62,$00
    .byte $00,$F8,$62,$F8
    .byte $08,$D5,$62,$F8
    .byte $F8,$FA,$62,$10
    .byte $80

EnFrame0A:
    .byte $13,$08
    .byte $F4,$C8,$62,$04
    .byte $F4,$C9,$62,$F4
    .byte $F8,$C6,$62,$04
    .byte $F8,$C7,$62,$FC
    .byte $F8,$D6,$62,$F4
    .byte $00,$D7,$62,$00
    .byte $FC,$D9,$62,$00
    .byte $FC,$E6,$62,$F8
    .byte $F0,$E7,$62,$00
    .byte $F0,$E9,$62,$F8
    .byte $F8,$EA,$62,$00
    .byte $F8,$EB,$62,$F8
    .byte $00,$D8,$62,$00
    .byte $08,$E8,$62,$00
    .byte $08,$D5,$62,$F8
    .byte $F8,$FA,$62,$10
    .byte $80

EnFrame0B:
    .byte $80,$00
    .byte $00,$F4,$C6,$22,$F8
    .byte $01,$F4,$C7,$22,$00
    .byte $02,$FC,$D6,$22,$F8
    .byte $03,$FC,$D7,$22,$00
    .byte $04,$04,$E6,$22,$F8
    .byte $05,$04,$E7,$22,$00
    .byte $80

EnFrame0C:
    .byte $04,$04
    .byte $FC,$EC,$22,$FC
    .byte $80

EnFrame0D:
    .byte $04,$04
    .byte $FC,$FB,$22,$FC
    .byte $80

EnFrame0E:
    .byte $04,$04
    .byte $FC,$EC,$E2,$FC
    .byte $80

EnFrame0F:
    .byte $04,$04
    .byte $FC,$FB,$E2,$FC
    .byte $80

EnFrame10:
    .byte $04,$04
    .byte $FC,$EC,$62,$FC
    .byte $80

EnFrame11:
    .byte $04,$04
    .byte $FC,$FB,$62,$FC
    .byte $80

EnFrame12:
    .byte $04,$04
    .byte $FC,$EC,$A2,$FC
    .byte $80

EnFrame13:
    .byte $04,$04
    .byte $FC,$FB,$A2,$FC
    .byte $80

EnFrame14:
    .byte $08,$08
    .byte $F8,$EA,$22,$F8
    .byte $F8,$EA,$62,$00
    .byte $00,$FB,$22,$F8
    .byte $00,$FB,$62,$00
    .byte $80

EnFrame15:
    .byte $08,$08
    .byte $F8,$EA,$22,$F8
    .byte $F8,$EA,$62,$00
    .byte $00,$FA,$22,$F8
    .byte $00,$FA,$62,$00
    .byte $80

EnFrame16:
    .byte $08,$08
    .byte $F8,$EA,$22,$F8
    .byte $F8,$EA,$62,$00
    .byte $00,$EB,$22,$F8
    .byte $00,$EB,$62,$00
    .byte $80

EnFrame17:
    .byte $08,$08
    .byte $F8,$CE,$22,$F4
    .byte $F8,$CF,$22,$FC
    .byte $F8,$CE,$62,$04
    .byte $00,$DF,$22,$F8
    .byte $00,$DF,$62,$00
    .byte $80

EnFrame18:
    .byte $08,$08
    .byte $F8,$CE,$22,$F4
    .byte $F8,$CF,$22,$FC
    .byte $F8,$CE,$62,$04
    .byte $00,$DE,$22,$F8
    .byte $00,$DE,$62,$00
    .byte $80

EnFrame19:
    .byte $08,$08
    .byte $00,$CE,$22,$F4
    .byte $00,$CF,$22,$FC
    .byte $00,$CE,$62,$04
    .byte $F8,$DF,$A2,$F8
    .byte $F8,$DF,$E2,$00
    .byte $80

EnFrame1A:
    .byte $08,$08
    .byte $00,$CE,$22,$F4
    .byte $00,$CF,$22,$FC
    .byte $00,$CE,$62,$04
    .byte $F8,$DE,$A2,$F8
    .byte $F8,$DE,$E2,$00
    .byte $80

EnFrame1B:
    .byte $80,$00
    .byte $00,$F4,$CE,$22,$F8
    .byte $01,$F4,$CE,$22,$00
    .byte $02,$FC,$DF,$22,$F8
    .byte $03,$FC,$DF,$22,$00
    .byte $80

EnFrame1C:
    .byte $04,$08
    .byte $F8,$F6,$22,$F8
    .byte $F8,$F7,$22,$00
    .byte $80

EnFrame1D:
    .byte $04,$08
    .byte $F8,$E7,$22,$F8
    .byte $F8,$F7,$22,$00
    .byte $80

EnFrame1E:
    .byte $04,$08
    .byte $F8,$F6,$62,$00
    .byte $F8,$F7,$62,$F8
    .byte $80

EnFrame1F:
    .byte $04,$08
    .byte $F8,$E7,$62,$00
    .byte $F8,$F7,$62,$F8
    .byte $80

EnFrame20:
    .byte $80,$00
    .byte $00,$F4,$F6,$22,$F8
    .byte $01,$F4,$F7,$22,$00
    .byte $80

EnFrame21:
    .byte $04,$08
    .byte $F8,$E6,$22,$F8
    .byte $F8,$E6,$62,$00
    .byte $80

EnFrame22:
    .byte $04,$08
    .byte $F8,$E5,$22,$F8
    .byte $F8,$E5,$62,$00
    .byte $80

EnFrame23:
    .byte $80,$00
    .byte $00,$F4,$EA,$22,$F8
    .byte $01,$F4,$EA,$22,$00
    .byte $02,$FC,$EB,$22,$F8
    .byte $03,$FC,$EB,$22,$00
    .byte $80

EnFrame24:
EnFrame25:
EnFrame26:
EnFrame27:
    .byte $08,$08
    .byte $F8,$EE,$22,$F8
    .byte $F8,$EF,$22,$00
    .byte $00,$EF,$E2,$F8
    .byte $00,$EF,$A2,$00
    .byte $80

EnFrame28:
    .byte $08,$08
    .byte $F8,$EF,$62,$F8
    .byte $F8,$EF,$22,$00
    .byte $00,$ED,$22,$F8
    .byte $00,$EF,$A2,$00
    .byte $80

EnFrame29:
    .byte $08,$08
    .byte $F8,$EF,$62,$F8
    .byte $F8,$EF,$22,$00
    .byte $00,$EF,$E2,$F8
    .byte $00,$EE,$E2,$00
    .byte $80

EnFrame2A:
    .byte $08,$08
    .byte $F8,$EF,$62,$F8
    .byte $F8,$ED,$E2,$00
    .byte $00,$EF,$E2,$F8
    .byte $00,$EF,$A2,$00
    .byte $80

EnFrame2B:
    .byte $08,$08
    .byte $F8,$EE,$62,$00
    .byte $F8,$EF,$62,$F8
    .byte $00,$EF,$A2,$00
    .byte $00,$EF,$E2,$F8
    .byte $80

EnFrame2C:
    .byte $08,$08
    .byte $F8,$EF,$22,$00
    .byte $F8,$EF,$62,$F8
    .byte $00,$ED,$62,$00
    .byte $00,$EF,$E2,$F8
    .byte $80

EnFrame2D:
    .byte $08,$08
    .byte $F8,$EF,$22,$00
    .byte $F8,$EF,$62,$F8
    .byte $00,$EF,$A2,$00
    .byte $00,$EE,$A2,$F8
    .byte $80

EnFrame2E:
    .byte $08,$08
    .byte $F8,$EF,$22,$00
    .byte $F8,$ED,$A2,$F8
    .byte $00,$EF,$A2,$00
    .byte $00,$EF,$E2,$F8
    .byte $80

EnFrame2F:
    .byte $80,$00
    .byte $00,$F8,$EE,$22,$F8
    .byte $01,$F8,$EF,$22,$00
    .byte $02,$00,$EF,$22,$F8
    .byte $03,$00,$EF,$22,$00
    .byte $80

EnFrame30:
    .byte $08,$08
    .byte $F8,$C8,$22,$F8
    .byte $F8,$C9,$22,$00
    .byte $00,$D8,$22,$F8
    .byte $00,$D9,$22,$00
    .byte $08,$E8,$22,$F8
    .byte $08,$E9,$22,$00
    .byte $10,$F8,$22,$F8
    .byte $10,$F9,$22,$00
    .byte $80

EnFrame31:
    .byte $08,$08
    .byte $F8,$C8,$22,$F8
    .byte $F8,$C7,$22,$00
    .byte $00,$D8,$22,$F8
    .byte $00,$D7,$22,$00
    .byte $08,$E8,$22,$F8
    .byte $08,$E9,$22,$00
    .byte $10,$F8,$22,$F8
    .byte $10,$F9,$22,$00
    .byte $80

EnFrame32:
    .byte $08,$08
    .byte $F8,$C8,$62,$00
    .byte $F8,$C9,$62,$F8
    .byte $00,$D8,$62,$00
    .byte $00,$D9,$62,$F8
    .byte $08,$E8,$62,$00
    .byte $08,$E9,$62,$F8
    .byte $10,$F8,$62,$00
    .byte $10,$F9,$62,$F8
    .byte $80

EnFrame33:
    .byte $08,$08
    .byte $F8,$C8,$62,$00
    .byte $F8,$C7,$62,$F8
    .byte $00,$D8,$62,$00
    .byte $00,$D7,$62,$F8
    .byte $08,$E8,$62,$00
    .byte $08,$E9,$62,$F8
    .byte $10,$F8,$62,$00
    .byte $10,$F9,$62,$F8
    .byte $80

EnFrame34:
    .byte $80,$00
    .byte $00,$F0,$C8,$22,$F8
    .byte $01,$F0,$C9,$22,$00
    .byte $02,$F8,$D8,$22,$F8
    .byte $03,$F8,$D9,$22,$00
    .byte $04,$00,$E8,$22,$F8
    .byte $05,$00,$E9,$22,$00
    .byte $80

EnFrame35:
EnFrame36:
EnFrame37:
EnFrame38:
EnFrame39:
EnFrame3A:
EnFrame3B:
    .byte $04,$04
    .byte $F8,$E0,$23,$F8
    .byte $F8,$E1,$23,$00
    .byte $00,$F0,$23,$F8
    .byte $00,$F1,$23,$00
    .byte $80

EnFrame3C:
    .byte $04,$04
    .byte $00,$E0,$A3,$F8
    .byte $00,$E1,$A3,$00
    .byte $F8,$F0,$A3,$F8
    .byte $F8,$F1,$A3,$00
    .byte $80

EnFrame3D:
    .byte $04,$04
    .byte $F8,$E0,$63,$00
    .byte $F8,$E1,$63,$F8
    .byte $00,$F0,$63,$00
    .byte $00,$F1,$63,$F8
    .byte $80

EnFrame3E:
    .byte $04,$04
    .byte $00,$E0,$E3,$00
    .byte $00,$E1,$E3,$F8
    .byte $F8,$F0,$E3,$00
    .byte $F8,$F1,$E3,$F8
    .byte $80

EnFrame3F:
    .byte $00,$00
    .byte $F8,$E2,$23,$F8
    .byte $F8,$E2,$63,$00
    .byte $80

EnFrame40:
    .byte $00,$00
    .byte $F8,$E2,$23,$E8
    .byte $F8,$E2,$62,$10
    .byte $80

EnFrame41:
    .byte $00,$00
    .byte $F8,$E2,$23,$F0
    .byte $F8,$E2,$62,$08
    .byte $80

EnFrame42:
    .byte $04,$04
    .byte $FC,$C0,$23,$FC
    .byte $80

EnFrame43:
    .byte $00,$00
    .byte $F4,$D0,$23,$FC
    .byte $80

EnFrame44:
    .byte $00,$00
    .byte $F4,$D1,$23,$F4
    .byte $F4,$D1,$63,$04
    .byte $80

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
    .byte $F8,$CC,$62,$00
    .byte $00,$DC,$22,$F8
    .byte $00,$DD,$22,$00
    .byte $80

EnFrame59:
    .byte $08,$08
    .byte $F8,$CD,$22,$00
    .byte $F8,$CD,$62,$F8
    .byte $00,$DC,$62,$00
    .byte $00,$DD,$62,$F8
    .byte $80

EnFrame5A:
    .byte $08,$08
    .byte $F8,$DA,$A2,$F8
    .byte $F8,$CB,$22,$00
    .byte $00,$DA,$22,$F8
    .byte $00,$DB,$22,$00
    .byte $80

EnFrame5B:
    .byte $08,$08
    .byte $00,$CA,$A2,$F8
    .byte $00,$CB,$A2,$00
    .byte $F8,$CA,$22,$F8
    .byte $F8,$DB,$A2,$00
    .byte $80

EnFrame5C:
    .byte $08,$08
    .byte $00,$CC,$A2,$F8
    .byte $00,$CC,$E2,$00
    .byte $F8,$DC,$A2,$F8
    .byte $F8,$DD,$A2,$00
    .byte $80

EnFrame5D:
    .byte $08,$08
    .byte $00,$CD,$A2,$00
    .byte $00,$CD,$E2,$F8
    .byte $F8,$DC,$E2,$00
    .byte $F8,$DD,$E2,$F8
    .byte $80

EnFrame5E:
    .byte $08,$08
    .byte $F8,$DA,$E2,$00
    .byte $F8,$CB,$62,$F8
    .byte $00,$DA,$62,$00
    .byte $00,$DB,$62,$F8
    .byte $80

EnFrame5F:
    .byte $08,$08
    .byte $00,$CA,$E2,$00
    .byte $00,$CB,$E2,$F8
    .byte $F8,$CA,$62,$00
    .byte $F8,$DB,$E2,$F8
    .byte $80

EnFrame60:
    .byte $80,$00
    .byte $00,$F4,$CC,$22,$F8
    .byte $01,$F4,$CD,$22,$00
    .byte $02,$FC,$DC,$22,$F8
    .byte $03,$FC,$DD,$22,$00
    .byte $80

EnFrame61:
    .byte $00,$00
    .byte $F8,$1F,$20,$F8
    .byte $F8,$1F,$60,$00
    .byte $00,$1F,$A0,$F8
    .byte $00,$1F,$E0,$00
    .byte $80

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

EnFrame63:
EnFrame64:
EnFrame65:
EnFrame66:
    .byte $08,$08
    .byte $F8,$C2,$22,$F8
    .byte $F8,$C3,$22,$00
    .byte $00,$D2,$22,$F8
    .byte $00,$D3,$22,$00
    .byte $80

EnFrame67:
    .byte $08,$08
    .byte $F8,$C2,$22,$F8
    .byte $F8,$C4,$22,$00
    .byte $00,$D2,$22,$F8
    .byte $00,$D4,$22,$00
    .byte $80

EnFrame68:
    .byte $88,$08
    .byte $00,$F4,$C2,$22,$F8
    .byte $01,$F4,$C4,$22,$00
    .byte $02,$FC,$D2,$22,$F8
    .byte $03,$FC,$D4,$22,$00
    .byte $80

EnFrame69:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C3,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D3,$62,$F8
    .byte $80

EnFrame6A:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C4,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D4,$62,$F8
    .byte $80

EnFrame6B:
    .byte $88,$08
    .byte $00,$F4,$C2,$62,$00
    .byte $01,$F4,$C4,$62,$F8
    .byte $02,$FC,$D2,$62,$00
    .byte $03,$FC,$D4,$62,$F8
    .byte $80

EnFrame6C:
EnFrame6D:
EnFrame6E:
EnFrame6F:
EnFrame70:
EnFrame71:
EnFrame72:
EnFrame73:
EnFrame74:
EnFrame75:
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

EnFrame81:
    .byte $04,$04
    .byte $FC,$28,$20,$FC
    .byte $80

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
