;-----------------------------------[ Enemy animation data tables ]----------------------------------

EnAnimTbl: ;($9B85)
EnAnim_00:
    .byte _id_EnFrame00, _id_EnFrame01, $FF

EnAnim_FireballKilled:
    .byte _id_EnFrame_FireballKilled, $FF

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
    .byte _id_EnFrame17, _id_EnFrame18, $FF

EnAnim_20:
    .byte _id_EnFrame19, _id_EnFrame1A, $FF

EnAnim_23:
    .byte _id_EnFrame1B, $FF

EnAnim_25:
    .byte _id_EnFrame21, _id_EnFrame22, $FF

EnAnim_28:
    .byte _id_EnFrame27, _id_EnFrame28, _id_EnFrame29, _id_EnFrame2A, $FF

EnAnim_2D:
    .byte _id_EnFrame2B, _id_EnFrame2C, _id_EnFrame2D, _id_EnFrame2E, $FF

EnAnim_32:
    .byte _id_EnFrame2F, $FF

EnAnim_34:
    .byte _id_EnFrame42, $FF

EnAnim_36:
    .byte _id_EnFrame43, _id_EnFrame44, $F7, $FF

EnAnim_3A:
    .byte _id_EnFrame37, $FF

EnAnim_3C:
    .byte _id_EnFrame38, $FF

EnAnim_3E:
    .byte _id_EnFrame30, _id_EnFrame31, $FF

EnAnim_41:
    .byte _id_EnFrame31
EnAnim_42:
    .byte _id_EnFrame32, $FF

EnAnim_44:
    .byte _id_EnFrame33, _id_EnFrame34, $FF

EnAnim_47:
    .byte _id_EnFrame34
EnAnim_48:
    .byte _id_EnFrame35, $FF

EnAnim_4A:
    .byte _id_EnFrame58, _id_EnFrame59, $FF

EnAnim_4D:
    .byte _id_EnFrame5A, _id_EnFrame5B, $FF

EnAnim_50:
    .byte _id_EnFrame5C, _id_EnFrame5D, $FF

EnAnim_53:
    .byte _id_EnFrame5E, _id_EnFrame5F, $FF

EnAnim_56:
    .byte _id_EnFrame60, $FF

EnAnim_58:
    .byte _id_EnFrame_Explosion0, $F7, _id_EnFrame_Explosion1, $F7, $FF

EnAnim_5D:
    .byte _id_EnFrame66, _id_EnFrame67, $FF

EnAnim_60:
    .byte _id_EnFrame69, _id_EnFrame6A, $FF

EnAnim_63:
    .byte _id_EnFrame68, $FF

EnAnim_65:
    .byte _id_EnFrame6B, $FF

EnAnim_67:
    .byte _id_EnFrame66, $FF

EnAnim_69:
    .byte _id_EnFrame69, $FF

;----------------------------[ Enemy sprite drawing pointer tables ]---------------------------------

EnFramePtrTable1:
    PtrTableEntry EnFramePtrTable1, EnFrame00
    PtrTableEntry EnFramePtrTable1, EnFrame01
    PtrTableEntry EnFramePtrTable1, EnFrame_FireballKilled
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
    PtrTableEntry EnFramePtrTable1, EnFrame_Explosion0
    PtrTableEntry EnFramePtrTable1, EnFrame_Explosion1
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
    PtrTableEntry EnFramePtrTable1, EnFrame_MissilePickup
    PtrTableEntry EnFramePtrTable1, EnFrame_SmallEnergyPickup
    PtrTableEntry EnFramePtrTable1, EnFrame82
    PtrTableEntry EnFramePtrTable1, EnFrame83
    PtrTableEntry EnFramePtrTable1, EnFrame84
    PtrTableEntry EnFramePtrTable1, EnFrame85
    PtrTableEntry EnFramePtrTable1, EnFrame86
    PtrTableEntry EnFramePtrTable1, EnFrame87
    PtrTableEntry EnFramePtrTable1, EnFrame88
    PtrTableEntry EnFramePtrTable1, EnFrame_BigEnergyPickup

;Enemy frame drawing data.

EnFrame00:
    .byte $02,$02
    .byte $FC,$14,$20,$FC
    .byte $80

EnFrame01:
    .byte $02,$02
    .byte $FC,$24,$20,$FC
    .byte $80

EnFrame_FireballKilled:
    .byte $00,$00
    .byte $FC,$07+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

EnFrame03:
    .byte $13,$14
    .byte $EC,$C8,$22,$F8
    .byte $EC,$C9,$22,$00
    .byte $F4,$C6,$22,$F8
    .byte $F4,$C7,$22,$00
    .byte $FC,$D6,$22,$F8
    .byte $FC,$D7,$22,$00
    .byte $04,$D5,$22,$E8
    .byte $04,$E5,$22,$F0
    .byte $04,$E6,$22,$F8
    .byte $04,$E7,$22,$00
    .byte $0C,$F5,$22,$F0
    .byte $0C,$F6,$22,$F8
    .byte $0C,$F7,$22,$00
    .byte $F4,$F9,$22,$F4
    .byte $F4,$F8,$22,$EC
    .byte $80

EnFrame04:
    .byte $13,$14
    .byte $EC,$C8,$22,$F8
    .byte $EC,$C9,$22,$00
    .byte $F4,$C6,$22,$F8
    .byte $F4,$C7,$22,$00
    .byte $FC,$D6,$22,$F8
    .byte $FC,$D7,$22,$00
    .byte $04,$D5,$22,$E8
    .byte $04,$E5,$22,$F0
    .byte $04,$E6,$22,$F8
    .byte $04,$E7,$22,$00
    .byte $0C,$F5,$22,$F0
    .byte $0C,$F6,$22,$F8
    .byte $0C,$F7,$22,$00
    .byte $F4,$D8,$22,$F4
    .byte $FC,$E8,$22,$F4
    .byte $80

EnFrame05:
    .byte $13,$14
    .byte $EC,$C8,$22,$F8
    .byte $EC,$C9,$22,$00
    .byte $F4,$C6,$22,$F8
    .byte $F4,$C7,$22,$00
    .byte $FC,$D6,$22,$F8
    .byte $FC,$D7,$22,$00
    .byte $04,$D9,$22,$F0
    .byte $04,$E6,$22,$F8
    .byte $04,$E7,$22,$00
    .byte $0C,$E9,$22,$F0
    .byte $0C,$EA,$22,$F8
    .byte $0C,$EB,$22,$00
    .byte $F4,$F9,$22,$F4
    .byte $F4,$F8,$22,$EC
    .byte $12,$D5,$22,$E8
    .byte $14,$FA,$22,$F8
    .byte $80

EnFrame06:
    .byte $13,$14
    .byte $EC,$C8,$22,$F8
    .byte $EC,$C9,$22,$00
    .byte $F4,$C6,$22,$F8
    .byte $F4,$C7,$22,$00
    .byte $FC,$D6,$22,$F8
    .byte $FC,$D7,$22,$00
    .byte $04,$D9,$22,$F0
    .byte $04,$E6,$22,$F8
    .byte $04,$E7,$22,$00
    .byte $0C,$E9,$22,$F0
    .byte $0C,$EA,$22,$F8
    .byte $0C,$EB,$22,$00
    .byte $F4,$D8,$22,$F4
    .byte $FC,$E8,$22,$F4
    .byte $12,$D5,$22,$E8
    .byte $14,$FA,$22,$F8
    .byte $80

EnFrame07:
    .byte $13,$14
    .byte $EC,$C8,$62,$00
    .byte $EC,$C9,$62,$F8
    .byte $F4,$C6,$62,$00
    .byte $F4,$C7,$62,$F8
    .byte $FC,$D6,$62,$00
    .byte $FC,$D7,$62,$F8
    .byte $04,$D5,$62,$10
    .byte $04,$E5,$62,$08
    .byte $04,$E6,$62,$00
    .byte $04,$E7,$62,$F8
    .byte $0C,$F5,$62,$08
    .byte $0C,$F6,$62,$00
    .byte $0C,$F7,$62,$F8
    .byte $F4,$F9,$62,$04
    .byte $F4,$F8,$62,$0C
    .byte $80

EnFrame08:
    .byte $13,$14
    .byte $EC,$C8,$62,$00
    .byte $EC,$C9,$62,$F8
    .byte $F4,$C6,$62,$00
    .byte $F4,$C7,$62,$F8
    .byte $FC,$D6,$62,$00
    .byte $FC,$D7,$62,$F8
    .byte $04,$D5,$62,$10
    .byte $04,$E5,$62,$08
    .byte $04,$E6,$62,$00
    .byte $04,$E7,$62,$F8
    .byte $0C,$F5,$62,$08
    .byte $0C,$F6,$62,$00
    .byte $0C,$F7,$62,$F8
    .byte $F4,$D8,$62,$04
    .byte $FC,$E8,$62,$04
    .byte $80

EnFrame09:
    .byte $13,$14
    .byte $EC,$C8,$62,$00
    .byte $EC,$C9,$62,$F8
    .byte $F4,$C6,$62,$00
    .byte $F4,$C7,$62,$F8
    .byte $FC,$D6,$62,$00
    .byte $FC,$D7,$62,$F8
    .byte $04,$D9,$62,$08
    .byte $04,$E6,$62,$00
    .byte $04,$E7,$62,$F8
    .byte $0C,$E9,$62,$08
    .byte $0C,$EA,$62,$00
    .byte $0C,$EB,$62,$F8
    .byte $F4,$F9,$62,$04
    .byte $F4,$F8,$62,$0C
    .byte $12,$D5,$62,$10
    .byte $14,$FA,$62,$00
    .byte $80

EnFrame0A:
    .byte $13,$14
    .byte $EC,$C8,$62,$00
    .byte $EC,$C9,$62,$F8
    .byte $F4,$C6,$62,$00
    .byte $F4,$C7,$62,$F8
    .byte $FC,$D6,$62,$00
    .byte $FC,$D7,$62,$F8
    .byte $04,$D9,$62,$08
    .byte $04,$E6,$62,$00
    .byte $04,$E7,$62,$F8
    .byte $0C,$E9,$62,$08
    .byte $0C,$EA,$62,$00
    .byte $0C,$EB,$62,$F8
    .byte $F4,$D8,$62,$04
    .byte $FC,$E8,$62,$04
    .byte $12,$D5,$62,$10
    .byte $14,$FA,$62,$00
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
    .byte $07,$07
    .byte $FC,$EC,$23,$FC
    .byte $80

EnFrame0D:
    .byte $07,$07
    .byte $FC,$FB,$23,$FC
    .byte $80

EnFrame0E:
    .byte $07,$07
    .byte $FC,$EC,$E3,$FC
    .byte $80

EnFrame0F:
    .byte $07,$07
    .byte $FC,$FB,$E3,$FC
    .byte $80

EnFrame10:
    .byte $07,$07
    .byte $FC,$EC,$63,$FC
    .byte $80

EnFrame11:
    .byte $07,$07
    .byte $FC,$FB,$63,$FC
    .byte $80

EnFrame12:
    .byte $07,$07
    .byte $FC,$EC,$A3,$FC
    .byte $80

EnFrame13:
    .byte $07,$07
    .byte $FC,$FB,$A3,$FC
    .byte $80

EnFrame14:
EnFrame15:
EnFrame16:
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
EnFrame1D:
EnFrame1E:
EnFrame1F:
EnFrame20:
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
    .byte $08,$0A
    .byte $F8,$E2,$22,$F4
    .byte $00,$F2,$22,$F4
    .byte $F8,$E3,$22,$FC
    .byte $00,$F3,$22,$FC
    .byte $F8,$E2,$62,$04
    .byte $00,$F2,$62,$04
    .byte $80

EnFrame31:
    .byte $08,$0A
    .byte $F8,$E4,$22,$F4
    .byte $00,$F2,$22,$F4
    .byte $F4,$E3,$22,$FC
    .byte $FC,$F3,$22,$FC
    .byte $F8,$E4,$62,$04
    .byte $00,$F2,$62,$04
    .byte $80

EnFrame32:
    .byte $08,$0A
    .byte $02,$F4,$22,$F4
    .byte $0A,$F2,$22,$F4
    .byte $F8,$E3,$22,$FC
    .byte $00,$F3,$22,$FC
    .byte $02,$F4,$62,$04
    .byte $0A,$F2,$62,$04
    .byte $80

EnFrame33:
    .byte $08,$0A
    .byte $00,$E2,$A2,$F4
    .byte $F8,$F2,$A2,$F4
    .byte $00,$E3,$A2,$FC
    .byte $F8,$F3,$A2,$FC
    .byte $00,$E2,$E2,$04
    .byte $F8,$F2,$E2,$04
    .byte $80

EnFrame34:
    .byte $08,$0A
    .byte $00,$E4,$A2,$F4
    .byte $F8,$F2,$A2,$F4
    .byte $04,$E3,$A2,$FC
    .byte $FC,$F3,$A2,$FC
    .byte $00,$E4,$E2,$04
    .byte $F8,$F2,$E2,$04
    .byte $80

EnFrame35:
    .byte $08,$0A
    .byte $F6,$F4,$A2,$F4
    .byte $EE,$F2,$A2,$F4
    .byte $00,$E3,$A2,$FC
    .byte $F8,$F3,$A2,$FC
    .byte $F6,$F4,$E2,$04
    .byte $EE,$F2,$E2,$04
    .byte $80

EnFrame36:
EnFrame37:
    .byte $80,$00
    .byte $00,$FC,$E2,$22,$F4
    .byte $01,$FC,$E2,$22,$04
    .byte $02,$04,$F2,$22,$F4
    .byte $03,$04,$F2,$22,$04
    .byte $80

EnFrame38:
    .byte $80,$00
    .byte $00,$F4,$F2,$22,$F4
    .byte $01,$F4,$F2,$22,$04
    .byte $02,$FC,$E2,$22,$F4
    .byte $03,$FC,$E2,$22,$04
    .byte $80

EnFrame39:
EnFrame3A:
EnFrame3B:
EnFrame3C:
EnFrame3D:
EnFrame3E:
EnFrame3F:
EnFrame40:
EnFrame41:
EnFrame42:
    .byte $04,$04
    .byte $FC,$C0,$22,$FC
    .byte $80

EnFrame43:
    .byte $00,$00
    .byte $F4,$D0,$22,$FC
    .byte $80

EnFrame44:
    .byte $00,$00
    .byte $F4,$D1,$22,$F4
    .byte $F4,$D1,$62,$04
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

EnFrame_Explosion0:
    .byte $00,$00
    .byte $F8,$0F+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$0F+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $00,$0F+CFG_NUM_SAMUS_TILES,$A0,$F8
    .byte $00,$0F+CFG_NUM_SAMUS_TILES,$E0,$00
    .byte $80

EnFrame_Explosion1:
    .byte $00,$00
    .byte $F0,$11+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $F0,$12+CFG_NUM_SAMUS_TILES,$20,$08
    .byte $F8,$13+CFG_NUM_SAMUS_TILES,$20,$08
    .byte $F0,$12+CFG_NUM_SAMUS_TILES,$60,$F0
    .byte $F0,$11+CFG_NUM_SAMUS_TILES,$60,$F8
    .byte $F8,$13+CFG_NUM_SAMUS_TILES,$60,$F0
    .byte $00,$13+CFG_NUM_SAMUS_TILES,$E0,$F0
    .byte $08,$12+CFG_NUM_SAMUS_TILES,$E0,$F0
    .byte $08,$11+CFG_NUM_SAMUS_TILES,$E0,$F8
    .byte $00,$13+CFG_NUM_SAMUS_TILES,$A0,$08
    .byte $08,$11+CFG_NUM_SAMUS_TILES,$A0,$00
    .byte $08,$12+CFG_NUM_SAMUS_TILES,$A0,$08
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
EnFrame_MissilePickup:
    .byte $08,$04
    .byte $F8,$04+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $00,$05+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

EnFrame_SmallEnergyPickup:
    .byte $04,$04
    .byte $FC,$18+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

EnFrame82:
EnFrame83:
EnFrame84:
EnFrame85:
EnFrame86:
EnFrame87:
EnFrame88:
EnFrame_BigEnergyPickup:
    .byte $04,$04
    .byte $FC,$18+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80
