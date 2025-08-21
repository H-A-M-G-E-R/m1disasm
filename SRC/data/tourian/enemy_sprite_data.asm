;-----------------------------------[ Enemy animation data tables ]----------------------------------

EnAnimTbl: ;($A406)
EnAnim_00:
    .byte _id_EnFrame00, _id_EnFrame01, $FF

EnAnim_FireballKilled:
    .byte _id_EnFrame_FireballKilled, $FF

EnAnim_Metroid:
    .byte _id_EnFrame_Metroid0, _id_EnFrame_Metroid1, $FF

EnAnim_MetroidExplode:
    .byte _id_EnFrame_MetroidExplode, $FF

EnAnim_CannonBulletDownLeft:
    .byte _id_EnFrame_CannonBulletDownLeft, $FF

EnAnim_CannonBulletDownRight:
    .byte _id_EnFrame_CannonBulletDownRight, $FF

EnAnim_CannonBulletDown:
    .byte _id_EnFrame_CannonBulletDown, $FF

EnAnim_CannonBulletExplode:
    .byte _id_EnFrame_CannonBulletExplode0, _id_EnFrame_CannonBulletExplode0, _id_EnFrame_CannonBulletExplode1, _id_EnFrame_CannonBulletExplode1, $F7, $FF

EnAnim_16:
    .byte _id_EnFrame18, $FF

EnAnim_18:
    .byte _id_EnFrame_CannonTimeBombSet, $F7, $FF

EnAnim_RinkaSpawning:
    .byte _id_EnFrame_RinkaSpawning0, _id_EnFrame_RinkaSpawning1
EnAnim_Rinka:
    .byte _id_EnFrame_Rinka, $FF

EnAnim_RinkaExplode:
    .byte _id_EnFrame_RinkaExplode, $FF

EnAnim_Explosion:
    .byte _id_EnFrame_Explosion0, $F7, _id_EnFrame_Explosion1, $F7, $FF

EnAnim_26:
    ;nothing

;----------------------------[ Enemy sprite drawing pointer tables ]---------------------------------

EnFramePtrTable1:
    PtrTableEntry EnFramePtrTable1, EnFrame00
    PtrTableEntry EnFramePtrTable1, EnFrame01
    PtrTableEntry EnFramePtrTable1, EnFrame_FireballKilled
    PtrTableEntry EnFramePtrTable1, EnFrame_Metroid0
    PtrTableEntry EnFramePtrTable1, EnFrame_Metroid1
    PtrTableEntry EnFramePtrTable1, EnFrame_MetroidExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonUp
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonUpLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonDownLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonDown
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonDownRight
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonRight
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonUpRight
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonBulletDownLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonBulletDownRight
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonBulletDown
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonBulletExplode0
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonBulletExplode1
    PtrTableEntry EnFramePtrTable1, EnFrame_MotherBrainPulsations0
    PtrTableEntry EnFramePtrTable1, EnFrame_MotherBrainPulsations1
    PtrTableEntry EnFramePtrTable1, EnFrame_MotherBrainPulsations2
    PtrTableEntry EnFramePtrTable1, EnFrame_MotherBrainPulsations3
    PtrTableEntry EnFramePtrTable1, EnFrame_MotherBrainEyes
    PtrTableEntry EnFramePtrTable1, EnFrame18
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonTimeBombSet
    PtrTableEntry EnFramePtrTable1, EnFrame1A
    PtrTableEntry EnFramePtrTable1, EnFrame_RinkaSpawning0
    PtrTableEntry EnFramePtrTable1, EnFrame_RinkaSpawning1
    PtrTableEntry EnFramePtrTable1, EnFrame_Rinka
    PtrTableEntry EnFramePtrTable1, EnFrame_RinkaExplode
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

EnFrame_Metroid0:
    .byte $0C,$0C
    .byte $F4,$C0,$23,$F4
    .byte $F4,$C1,$23,$FC
    .byte $F4,$C2,$23,$04
    .byte $FC,$D0,$23,$F4
    .byte $FC,$D1,$23,$FC
    .byte $FC,$D2,$23,$04
    .byte $04,$E0,$23,$F4
    .byte $04,$E1,$23,$FC
    .byte $04,$E2,$23,$04
    .byte $80

EnFrame_Metroid1:
    .byte $0C,$0C
    .byte $F4,$C3,$23,$F4
    .byte $F4,$C4,$23,$FC
    .byte $F4,$C5,$23,$04
    .byte $FC,$D3,$23,$F4
    .byte $FC,$D4,$23,$FC
    .byte $FC,$D5,$23,$04
    .byte $04,$E3,$23,$F4
    .byte $04,$E4,$23,$FC
    .byte $04,$E5,$23,$04
    .byte $80

EnFrame_MetroidExplode:
    .byte $80,$00
    .byte $00,$F4,$C0,$23,$F8
    .byte $01,$F4,$C2,$23,$00
    .byte $02,$FC,$D0,$23,$F8
    .byte $03,$FC,$D2,$23,$00
    .byte $04,$04,$E0,$23,$F8
    .byte $05,$04,$E2,$23,$00
    .byte $80

EnFrame_CannonUp:
    .byte $07,$07
    .byte $F1,$EA,$22,$FC
    .byte $80

EnFrame_CannonUpLeft:
    .byte $07,$07
    .byte $F3,$EB,$22,$F3
    .byte $80

EnFrame_CannonLeft:
    .byte $07,$07
    .byte $FC,$EC,$22,$F1
    .byte $80

EnFrame_CannonDownLeft:
    .byte $07,$07
    .byte $05,$EB,$A2,$F3
    .byte $80

EnFrame_CannonDown:
    .byte $07,$07
    .byte $07,$EA,$A2,$FC
    .byte $80

EnFrame_CannonDownRight:
    .byte $07,$07
    .byte $05,$EB,$E2,$05
    .byte $80

EnFrame_CannonRight:
    .byte $07,$07
    .byte $FC,$EC,$62,$07
    .byte $80

EnFrame_CannonUpRight:
    .byte $07,$07
    .byte $F3,$EB,$62,$05
    .byte $80

EnFrame_CannonBulletDownLeft:
    .byte $04,$04
    .byte $FC,$F1,$23,$FC
    .byte $80

EnFrame_CannonBulletDownRight:
    .byte $04,$04
    .byte $FC,$F1,$63,$FC
    .byte $80

EnFrame_CannonBulletDown:
    .byte $04,$04
    .byte $FC,$F2,$23,$FC
    .byte $80

EnFrame_CannonBulletExplode0:
    .byte $00,$00
    .byte $FC,$F3,$03,$FC
    .byte $80

EnFrame_CannonBulletExplode1:
    .byte $00,$00
    .byte $F8,$F4,$00,$F8
    .byte $F8,$F4,$40,$00
    .byte $00,$F4,$80,$F8
    .byte $00,$F4,$C0,$00
    .byte $80

EnFrame_MotherBrainPulsations0:
    .byte $08,$14
    .byte $F8,$D8,$02,$E8
    .byte $F8,$D9,$02,$F0
    .byte $00,$E8,$02,$E8
    .byte $00,$E9,$02,$F0
    .byte $08,$F8,$02,$E8
    .byte $80

EnFrame_MotherBrainPulsations1:
    .byte $14,$0C
    .byte $E8,$DA,$02,$F0
    .byte $F0,$C9,$02,$F0
    .byte $80

EnFrame_MotherBrainPulsations2:
    .byte $20,$04
    .byte $E0,$CB,$02,$F8
    .byte $E0,$CC,$02,$00
    .byte $E8,$DB,$02,$F8
    .byte $E8,$DC,$02,$00
    .byte $80

EnFrame_MotherBrainPulsations3:
    .byte $18,$14
    .byte $E8,$DD,$02,$08
    .byte $E8,$CE,$02,$10
    .byte $F0,$DE,$02,$10
    .byte $F8,$DD,$02,$10
    .byte $80

EnFrame_MotherBrainEyes:
    .byte $08,$0C
    .byte $00,$CD,$02,$08
    .byte $80

EnFrame18:
    .byte $80,$00
    .byte $01,$F4,$F5,$22,$00
    .byte $02,$FC,$F5,$22,$F8
    .byte $03,$FC,$F5,$22,$00
    .byte $04,$04,$F5,$22,$F8
    .byte $05,$04,$F5,$22,$00
    .byte $F4,$F5,$22,$F8
    .byte $80

EnFrame_CannonTimeBombSet:
    .byte $00,$00
    .byte $FC,$ED,$03,$FC
    .byte $80

EnFrame1A:
    .byte $04,$08
    .byte $FC,$00,$00,$F4
    .byte $FC,$00,$00,$FC
    .byte $FC,$00,$00,$04
    .byte $80

EnFrame_RinkaSpawning0:
    .byte $08,$08
    .byte $F8,$EF,$03,$F8
    .byte $F8,$EF,$43,$00
    .byte $00,$EF,$83,$F8
    .byte $00,$EF,$C3,$00
    .byte $80

EnFrame_RinkaSpawning1:
    .byte $08,$08
    .byte $F8,$DF,$03,$F8
    .byte $F8,$DF,$43,$00
    .byte $00,$DF,$83,$F8
    .byte $00,$DF,$C3,$00
    .byte $80

EnFrame_Rinka:
    .byte $08,$08
    .byte $F8,$CF,$03,$F8
    .byte $F8,$CF,$43,$00
    .byte $00,$CF,$83,$F8
    .byte $00,$CF,$C3,$00
    .byte $80

EnFrame_RinkaExplode:
    .byte $00,$00
    .byte $80

EnFrame1F:
EnFrame20:
EnFrame21:
EnFrame22:
EnFrame23:
EnFrame24:
EnFrame25:
EnFrame26:
EnFrame27:
EnFrame28:
EnFrame29:
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
EnFrame38:
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
EnFrame59:
EnFrame5A:
EnFrame5B:
EnFrame5C:
EnFrame5D:
EnFrame5E:
EnFrame5F:
EnFrame60:
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
EnFrame67:
EnFrame68:
EnFrame69:
EnFrame6A:
EnFrame6B:
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
