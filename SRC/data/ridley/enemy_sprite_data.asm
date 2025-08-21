;-----------------------------------[ Enemy animation data tables ]----------------------------------

EnAnimTbl: ;($9B85)
EnAnim_00:
    .byte _id_EnFrame00, _id_EnFrame01, $FF

EnAnim_FireballKilled:
    .byte _id_EnFrame_FireballKilled, $FF

EnAnim_RidleyIdleFacingRight:
    .byte _id_EnFrame_RidleyIdleFacingRight0, _id_EnFrame_RidleyIdleFacingRight1, $FF

EnAnim_RidleyIdleFacingLeft:
    .byte _id_EnFrame_RidleyIdleFacingLeft0, _id_EnFrame_RidleyIdleFacingLeft1, $FF

EnAnim_RidleyHoppingFacingRight:
    .byte _id_EnFrame_RidleyHoppingFacingRight0, _id_EnFrame_RidleyHoppingFacingRight1, $FF

EnAnim_RidleyHoppingFacingLeft:
    .byte _id_EnFrame_RidleyHoppingFacingLeft0, _id_EnFrame_RidleyHoppingFacingLeft1, $FF

EnAnim_RidleyExplode:
    .byte _id_EnFrame_RidleyExplode, $FF

EnAnim_RidleyFireballFacingRight:
    .byte _id_EnFrame_RidleyFireballFacingRight0, _id_EnFrame_RidleyFireballFacingRight1, _id_EnFrame_RidleyFireballFacingRight2, _id_EnFrame_RidleyFireballFacingRight3, $FF

EnAnim_RidleyFireballFacingLeft:
    .byte _id_EnFrame_RidleyFireballFacingLeft0, _id_EnFrame_RidleyFireballFacingLeft1, _id_EnFrame_RidleyFireballFacingLeft2, _id_EnFrame_RidleyFireballFacingLeft3, $FF

EnAnim_HoltzIdle:
    .byte _id_EnFrame_HoltzIdle0, _id_EnFrame_HoltzIdle1, $FF

EnAnim_HoltzSwooping:
    .byte _id_EnFrame_HoltzSwooping0, _id_EnFrame_HoltzSwooping1, $FF

EnAnim_HoltzExplode:
    .byte _id_EnFrame_HoltzExplode, $FF

EnAnim_Mella:
    .byte _id_EnFrame_Mella0, _id_EnFrame_Mella1, $FF

EnAnim_MultiviolaSpinningCounterclockwise:
    .byte _id_EnFrame_MultiviolaSpinningCounterclockwise0, _id_EnFrame_MultiviolaSpinningCounterclockwise1, _id_EnFrame_MultiviolaSpinningCounterclockwise2, _id_EnFrame_MultiviolaSpinningCounterclockwise3, $FF

EnAnim_MultiviolaSpinningClockwise:
    .byte _id_EnFrame_MultiviolaSpinningClockwise0, _id_EnFrame_MultiviolaSpinningClockwise1, _id_EnFrame_MultiviolaSpinningClockwise2, _id_EnFrame_MultiviolaSpinningClockwise3, $FF

EnAnim_MultiviolaExplode:
    .byte _id_EnFrame_MultiviolaExplode, $FF

EnAnim_34:
    .byte _id_EnFrame42, $FF

EnAnim_36:
    .byte _id_EnFrame43, _id_EnFrame44, $F7, $FF

EnAnim_DessgeegaExplodeFloor:
    .byte _id_EnFrame_DessgeegaExplodeFloor, $FF

EnAnim_DessgeegaExplodeCeiling:
    .byte _id_EnFrame_DessgeegaExplodeCeiling, $FF

EnAnim_DessgeegaIdleFloor:
    .byte _id_EnFrame_DessgeegaIdleFloor0, _id_EnFrame_DessgeegaIdleFloor1, $FF

EnAnim_DessgeegaFloorStartHopping:
    .byte _id_EnFrame_DessgeegaIdleFloor1
EnAnim_DessgeegaFloorHopping:
    .byte _id_EnFrame_DessgeegaFloorHopping, $FF

EnAnim_DessgeegaIdleCeiling:
    .byte _id_EnFrame_DessgeegaIdleCeiling0, _id_EnFrame_DessgeegaIdleCeiling1, $FF

EnAnim_DessgeegaCeilingStartHopping:
    .byte _id_EnFrame_DessgeegaIdleCeiling1
EnAnim_DessgeegaCeilingHopping:
    .byte _id_EnFrame_DessgeegaCeilingHopping, $FF

EnAnim_ViolaOnFloor:
    .byte _id_EnFrame_ViolaOnFloor0, _id_EnFrame_ViolaOnFloor1, $FF

EnAnim_ViolaOnRightWall:
    .byte _id_EnFrame_ViolaOnRightWall0, _id_EnFrame_ViolaOnRightWall1, $FF

EnAnim_ViolaOnCeiling:
    .byte _id_EnFrame_ViolaOnCeiling0, _id_EnFrame_ViolaOnCeiling1, $FF

EnAnim_ViolaOnLeftWall:
    .byte _id_EnFrame_ViolaOnLeftWall0, _id_EnFrame_ViolaOnLeftWall1, $FF

EnAnim_ViolaExplode:
    .byte _id_EnFrame_ViolaExplode, $FF

EnAnim_Explosion:
    .byte _id_EnFrame_Explosion0, $F7, _id_EnFrame_Explosion1, $F7, $FF

EnAnim_ZebboFacingLeft:
    .byte _id_EnFrame_ZebboFacingLeft0, _id_EnFrame_ZebboFacingLeft1, $FF

EnAnim_ZebboFacingRight:
    .byte _id_EnFrame_ZebboFacingRight0, _id_EnFrame_ZebboFacingRight1, $FF

EnAnim_ZebboExplodeFacingLeft:
    .byte _id_EnFrame_ZebboExplodeFacingLeft, $FF

EnAnim_ZebboExplodeFacingRight:
    .byte _id_EnFrame_ZebboExplodeFacingRight, $FF

EnAnim_ZebboRestingFacingLeft:
    .byte _id_EnFrame_ZebboFacingLeft0, $FF

EnAnim_ZebboRestingFacingRight:
    .byte _id_EnFrame_ZebboFacingRight0, $FF

;----------------------------[ Enemy sprite drawing pointer tables ]---------------------------------

EnFramePtrTable1:
    PtrTableEntry EnFramePtrTable1, EnFrame00
    PtrTableEntry EnFramePtrTable1, EnFrame01
    PtrTableEntry EnFramePtrTable1, EnFrame_FireballKilled
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyIdleFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyIdleFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyHoppingFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyHoppingFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyIdleFacingLeft0
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyIdleFacingLeft1
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyHoppingFacingLeft0
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyHoppingFacingLeft1
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingRight2
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingRight3
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingLeft0
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingLeft1
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingLeft2
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingLeft3
    PtrTableEntry EnFramePtrTable1, EnFrame14
    PtrTableEntry EnFramePtrTable1, EnFrame15
    PtrTableEntry EnFramePtrTable1, EnFrame16
    PtrTableEntry EnFramePtrTable1, EnFrame_HoltzIdle0
    PtrTableEntry EnFramePtrTable1, EnFrame_HoltzIdle1
    PtrTableEntry EnFramePtrTable1, EnFrame_HoltzSwooping0
    PtrTableEntry EnFramePtrTable1, EnFrame_HoltzSwooping1
    PtrTableEntry EnFramePtrTable1, EnFrame_HoltzExplode
    PtrTableEntry EnFramePtrTable1, EnFrame1C
    PtrTableEntry EnFramePtrTable1, EnFrame1D
    PtrTableEntry EnFramePtrTable1, EnFrame1E
    PtrTableEntry EnFramePtrTable1, EnFrame1F
    PtrTableEntry EnFramePtrTable1, EnFrame20
    PtrTableEntry EnFramePtrTable1, EnFrame_Mella0
    PtrTableEntry EnFramePtrTable1, EnFrame_Mella1
    PtrTableEntry EnFramePtrTable1, EnFrame23
    PtrTableEntry EnFramePtrTable1, EnFrame24
    PtrTableEntry EnFramePtrTable1, EnFrame25
    PtrTableEntry EnFramePtrTable1, EnFrame26
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningCounterclockwise0
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningCounterclockwise1
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningCounterclockwise2
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningCounterclockwise3
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningClockwise0
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningClockwise1
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningClockwise2
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningClockwise3
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_DessgeegaIdleFloor0
    PtrTableEntry EnFramePtrTable1, EnFrame_DessgeegaIdleFloor1
    PtrTableEntry EnFramePtrTable1, EnFrame_DessgeegaFloorHopping
    PtrTableEntry EnFramePtrTable1, EnFrame_DessgeegaIdleCeiling0
    PtrTableEntry EnFramePtrTable1, EnFrame_DessgeegaIdleCeiling1
    PtrTableEntry EnFramePtrTable1, EnFrame_DessgeegaCeilingHopping
    PtrTableEntry EnFramePtrTable1, EnFrame36
    PtrTableEntry EnFramePtrTable1, EnFrame_DessgeegaExplodeFloor
    PtrTableEntry EnFramePtrTable1, EnFrame_DessgeegaExplodeCeiling
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
    PtrTableEntry EnFramePtrTable1, EnFrame_ViolaOnFloor0
    PtrTableEntry EnFramePtrTable1, EnFrame_ViolaOnFloor1
    PtrTableEntry EnFramePtrTable1, EnFrame_ViolaOnRightWall0
    PtrTableEntry EnFramePtrTable1, EnFrame_ViolaOnRightWall1
    PtrTableEntry EnFramePtrTable1, EnFrame_ViolaOnCeiling0
    PtrTableEntry EnFramePtrTable1, EnFrame_ViolaOnCeiling1
    PtrTableEntry EnFramePtrTable1, EnFrame_ViolaOnLeftWall0
    PtrTableEntry EnFramePtrTable1, EnFrame_ViolaOnLeftWall1
    PtrTableEntry EnFramePtrTable1, EnFrame_ViolaExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_Explosion0
    PtrTableEntry EnFramePtrTable1, EnFrame_Explosion1
    PtrTableEntry EnFramePtrTable1, EnFrame63
    PtrTableEntry EnFramePtrTable1, EnFrame64
    PtrTableEntry EnFramePtrTable1, EnFrame65
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebboFacingLeft0
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebboFacingLeft1
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebboExplodeFacingLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebboFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebboFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebboExplodeFacingRight
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

EnFrame_RidleyIdleFacingRight0:
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

EnFrame_RidleyIdleFacingRight1:
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

EnFrame_RidleyHoppingFacingRight0:
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

EnFrame_RidleyHoppingFacingRight1:
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

EnFrame_RidleyIdleFacingLeft0:
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

EnFrame_RidleyIdleFacingLeft1:
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

EnFrame_RidleyHoppingFacingLeft0:
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

EnFrame_RidleyHoppingFacingLeft1:
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

EnFrame_RidleyExplode:
    .byte $80,$00
    .byte $00,$F4,$C6,$22,$F8
    .byte $01,$F4,$C7,$22,$00
    .byte $02,$FC,$D6,$22,$F8
    .byte $03,$FC,$D7,$22,$00
    .byte $04,$04,$E6,$22,$F8
    .byte $05,$04,$E7,$22,$00
    .byte $80

EnFrame_RidleyFireballFacingRight0:
    .byte $07,$07
    .byte $FC,$EC,$23,$FC
    .byte $80

EnFrame_RidleyFireballFacingRight1:
    .byte $07,$07
    .byte $FC,$FB,$23,$FC
    .byte $80

EnFrame_RidleyFireballFacingRight2:
    .byte $07,$07
    .byte $FC,$EC,$E3,$FC
    .byte $80

EnFrame_RidleyFireballFacingRight3:
    .byte $07,$07
    .byte $FC,$FB,$E3,$FC
    .byte $80

EnFrame_RidleyFireballFacingLeft0:
    .byte $07,$07
    .byte $FC,$EC,$63,$FC
    .byte $80

EnFrame_RidleyFireballFacingLeft1:
    .byte $07,$07
    .byte $FC,$FB,$63,$FC
    .byte $80

EnFrame_RidleyFireballFacingLeft2:
    .byte $07,$07
    .byte $FC,$EC,$A3,$FC
    .byte $80

EnFrame_RidleyFireballFacingLeft3:
    .byte $07,$07
    .byte $FC,$FB,$A3,$FC
    .byte $80

EnFrame14:
EnFrame15:
EnFrame16:
EnFrame_HoltzIdle0:
    .byte $08,$08
    .byte $F8,$CE,$22,$F4
    .byte $F8,$CF,$22,$FC
    .byte $F8,$CE,$62,$04
    .byte $00,$DF,$22,$F8
    .byte $00,$DF,$62,$00
    .byte $80

EnFrame_HoltzIdle1:
    .byte $08,$08
    .byte $F8,$CE,$22,$F4
    .byte $F8,$CF,$22,$FC
    .byte $F8,$CE,$62,$04
    .byte $00,$DE,$22,$F8
    .byte $00,$DE,$62,$00
    .byte $80

EnFrame_HoltzSwooping0:
    .byte $08,$08
    .byte $00,$CE,$22,$F4
    .byte $00,$CF,$22,$FC
    .byte $00,$CE,$62,$04
    .byte $F8,$DF,$A2,$F8
    .byte $F8,$DF,$E2,$00
    .byte $80

EnFrame_HoltzSwooping1:
    .byte $08,$08
    .byte $00,$CE,$22,$F4
    .byte $00,$CF,$22,$FC
    .byte $00,$CE,$62,$04
    .byte $F8,$DE,$A2,$F8
    .byte $F8,$DE,$E2,$00
    .byte $80

EnFrame_HoltzExplode:
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
EnFrame_Mella0:
    .byte $04,$08
    .byte $F8,$E6,$22,$F8
    .byte $F8,$E6,$62,$00
    .byte $80

EnFrame_Mella1:
    .byte $04,$08
    .byte $F8,$E5,$22,$F8
    .byte $F8,$E5,$62,$00
    .byte $80

EnFrame23:
EnFrame24:
EnFrame25:
EnFrame26:
EnFrame_MultiviolaSpinningCounterclockwise0:
    .byte $08,$08
    .byte $F8,$EE,$22,$F8
    .byte $F8,$EF,$22,$00
    .byte $00,$EF,$E2,$F8
    .byte $00,$EF,$A2,$00
    .byte $80

EnFrame_MultiviolaSpinningCounterclockwise1:
    .byte $08,$08
    .byte $F8,$EF,$62,$F8
    .byte $F8,$EF,$22,$00
    .byte $00,$ED,$22,$F8
    .byte $00,$EF,$A2,$00
    .byte $80

EnFrame_MultiviolaSpinningCounterclockwise2:
    .byte $08,$08
    .byte $F8,$EF,$62,$F8
    .byte $F8,$EF,$22,$00
    .byte $00,$EF,$E2,$F8
    .byte $00,$EE,$E2,$00
    .byte $80

EnFrame_MultiviolaSpinningCounterclockwise3:
    .byte $08,$08
    .byte $F8,$EF,$62,$F8
    .byte $F8,$ED,$E2,$00
    .byte $00,$EF,$E2,$F8
    .byte $00,$EF,$A2,$00
    .byte $80

EnFrame_MultiviolaSpinningClockwise0:
    .byte $08,$08
    .byte $F8,$EE,$62,$00
    .byte $F8,$EF,$62,$F8
    .byte $00,$EF,$A2,$00
    .byte $00,$EF,$E2,$F8
    .byte $80

EnFrame_MultiviolaSpinningClockwise1:
    .byte $08,$08
    .byte $F8,$EF,$22,$00
    .byte $F8,$EF,$62,$F8
    .byte $00,$ED,$62,$00
    .byte $00,$EF,$E2,$F8
    .byte $80

EnFrame_MultiviolaSpinningClockwise2:
    .byte $08,$08
    .byte $F8,$EF,$22,$00
    .byte $F8,$EF,$62,$F8
    .byte $00,$EF,$A2,$00
    .byte $00,$EE,$A2,$F8
    .byte $80

EnFrame_MultiviolaSpinningClockwise3:
    .byte $08,$08
    .byte $F8,$EF,$22,$00
    .byte $F8,$ED,$A2,$F8
    .byte $00,$EF,$A2,$00
    .byte $00,$EF,$E2,$F8
    .byte $80

EnFrame_MultiviolaExplode:
    .byte $80,$00
    .byte $00,$F8,$EE,$22,$F8
    .byte $01,$F8,$EF,$22,$00
    .byte $02,$00,$EF,$22,$F8
    .byte $03,$00,$EF,$22,$00
    .byte $80

EnFrame_DessgeegaIdleFloor0:
    .byte $08,$0A
    .byte $F8,$E2,$22,$F4
    .byte $00,$F2,$22,$F4
    .byte $F8,$E3,$22,$FC
    .byte $00,$F3,$22,$FC
    .byte $F8,$E2,$62,$04
    .byte $00,$F2,$62,$04
    .byte $80

EnFrame_DessgeegaIdleFloor1:
    .byte $08,$0A
    .byte $F8,$E4,$22,$F4
    .byte $00,$F2,$22,$F4
    .byte $F4,$E3,$22,$FC
    .byte $FC,$F3,$22,$FC
    .byte $F8,$E4,$62,$04
    .byte $00,$F2,$62,$04
    .byte $80

EnFrame_DessgeegaFloorHopping:
    .byte $08,$0A
    .byte $02,$F4,$22,$F4
    .byte $0A,$F2,$22,$F4
    .byte $F8,$E3,$22,$FC
    .byte $00,$F3,$22,$FC
    .byte $02,$F4,$62,$04
    .byte $0A,$F2,$62,$04
    .byte $80

EnFrame_DessgeegaIdleCeiling0:
    .byte $08,$0A
    .byte $00,$E2,$A2,$F4
    .byte $F8,$F2,$A2,$F4
    .byte $00,$E3,$A2,$FC
    .byte $F8,$F3,$A2,$FC
    .byte $00,$E2,$E2,$04
    .byte $F8,$F2,$E2,$04
    .byte $80

EnFrame_DessgeegaIdleCeiling1:
    .byte $08,$0A
    .byte $00,$E4,$A2,$F4
    .byte $F8,$F2,$A2,$F4
    .byte $04,$E3,$A2,$FC
    .byte $FC,$F3,$A2,$FC
    .byte $00,$E4,$E2,$04
    .byte $F8,$F2,$E2,$04
    .byte $80

EnFrame_DessgeegaCeilingHopping:
    .byte $08,$0A
    .byte $F6,$F4,$A2,$F4
    .byte $EE,$F2,$A2,$F4
    .byte $00,$E3,$A2,$FC
    .byte $F8,$F3,$A2,$FC
    .byte $F6,$F4,$E2,$04
    .byte $EE,$F2,$E2,$04
    .byte $80

EnFrame36:
EnFrame_DessgeegaExplodeFloor:
    .byte $80,$00
    .byte $00,$FC,$E2,$22,$F4
    .byte $01,$FC,$E2,$22,$04
    .byte $02,$04,$F2,$22,$F4
    .byte $03,$04,$F2,$22,$04
    .byte $80

EnFrame_DessgeegaExplodeCeiling:
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
EnFrame_ViolaOnFloor0:
    .byte $08,$08
    .byte $F8,$CC,$22,$F8
    .byte $F8,$CC,$62,$00
    .byte $00,$DC,$22,$F8
    .byte $00,$DD,$22,$00
    .byte $80

EnFrame_ViolaOnFloor1:
    .byte $08,$08
    .byte $F8,$CD,$22,$00
    .byte $F8,$CD,$62,$F8
    .byte $00,$DC,$62,$00
    .byte $00,$DD,$62,$F8
    .byte $80

EnFrame_ViolaOnRightWall0:
    .byte $08,$08
    .byte $F8,$DA,$A2,$F8
    .byte $F8,$CB,$22,$00
    .byte $00,$DA,$22,$F8
    .byte $00,$DB,$22,$00
    .byte $80

EnFrame_ViolaOnRightWall1:
    .byte $08,$08
    .byte $00,$CA,$A2,$F8
    .byte $00,$CB,$A2,$00
    .byte $F8,$CA,$22,$F8
    .byte $F8,$DB,$A2,$00
    .byte $80

EnFrame_ViolaOnCeiling0:
    .byte $08,$08
    .byte $00,$CC,$A2,$F8
    .byte $00,$CC,$E2,$00
    .byte $F8,$DC,$A2,$F8
    .byte $F8,$DD,$A2,$00
    .byte $80

EnFrame_ViolaOnCeiling1:
    .byte $08,$08
    .byte $00,$CD,$A2,$00
    .byte $00,$CD,$E2,$F8
    .byte $F8,$DC,$E2,$00
    .byte $F8,$DD,$E2,$F8
    .byte $80

EnFrame_ViolaOnLeftWall0:
    .byte $08,$08
    .byte $F8,$DA,$E2,$00
    .byte $F8,$CB,$62,$F8
    .byte $00,$DA,$62,$00
    .byte $00,$DB,$62,$F8
    .byte $80

EnFrame_ViolaOnLeftWall1:
    .byte $08,$08
    .byte $00,$CA,$E2,$00
    .byte $00,$CB,$E2,$F8
    .byte $F8,$CA,$62,$00
    .byte $F8,$DB,$E2,$F8
    .byte $80

EnFrame_ViolaExplode:
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
EnFrame_ZebboFacingLeft0:
    .byte $08,$08
    .byte $F8,$C2,$22,$F8
    .byte $F8,$C3,$22,$00
    .byte $00,$D2,$22,$F8
    .byte $00,$D3,$22,$00
    .byte $80

EnFrame_ZebboFacingLeft1:
    .byte $08,$08
    .byte $F8,$C2,$22,$F8
    .byte $F8,$C4,$22,$00
    .byte $00,$D2,$22,$F8
    .byte $00,$D4,$22,$00
    .byte $80

EnFrame_ZebboExplodeFacingLeft:
    .byte $88,$08
    .byte $00,$F4,$C2,$22,$F8
    .byte $01,$F4,$C4,$22,$00
    .byte $02,$FC,$D2,$22,$F8
    .byte $03,$FC,$D4,$22,$00
    .byte $80

EnFrame_ZebboFacingRight0:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C3,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D3,$62,$F8
    .byte $80

EnFrame_ZebboFacingRight1:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C4,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D4,$62,$F8
    .byte $80

EnFrame_ZebboExplodeFacingRight:
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
