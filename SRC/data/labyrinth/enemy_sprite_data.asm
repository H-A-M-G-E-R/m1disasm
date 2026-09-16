;-----------------------------------[ Enemy animation data tables ]----------------------------------

EnAnimTable: ;($9B85)
EnAnim_EnProjectileKilled:
    .byte _id_EnFrame_EnProjectileKilled, $FF

EnAnim_RidleyIdle_R:
    .byte _id_EnFrame_RidleyIdle0_R, _id_EnFrame_RidleyIdle1_R, $FF

EnAnim_RidleyHopping_R:
    .byte _id_EnFrame_RidleyHopping0_R, _id_EnFrame_RidleyHopping1_R, $FF

EnAnim_RidleyExplode:
    .byte _id_EnFrame_RidleyExplode, $FF

EnAnim_RidleyFireball_R:
    .byte _id_EnFrame_RidleyFireball0_R, _id_EnFrame_RidleyFireball1_R, _id_EnFrame_RidleyFireball2_R, _id_EnFrame_RidleyFireball3_R, $FF

EnAnim_HoltzIdle:
    .byte _id_EnFrame_HoltzIdle0, _id_EnFrame_HoltzIdle1, $FF

EnAnim_HoltzSwooping:
    .byte _id_EnFrame_HoltzSwooping0, _id_EnFrame_HoltzSwooping1, $FF

EnAnim_HoltzExplode:
    .byte _id_EnFrame_HoltzExplode, $FF

EnAnim_Mella:
    .byte _id_EnFrame_Mella0, _id_EnFrame_Mella1, $FF

EnAnim_MultiviolaSpinningClockwise:
    .byte _id_EnFrame_MultiviolaSpinningClockwise0, _id_EnFrame_MultiviolaSpinningClockwise1, _id_EnFrame_MultiviolaSpinningClockwise2, _id_EnFrame_MultiviolaSpinningClockwise3, $FF

EnAnim_MultiviolaExplode:
    .byte _id_EnFrame_MultiviolaExplode, $FF

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

EnAnim_Zebbo_R:
    .byte _id_EnFrame_Zebbo0_R, _id_EnFrame_Zebbo1_R, $FF

EnAnim_ZebboExplode_R:
    .byte _id_EnFrame_ZebboExplode_R, $FF

EnAnim_ZebboResting_R:
    .byte _id_EnFrame_Zebbo0_R, $FF

;----------------------------[ Enemy sprite drawing pointer tables ]---------------------------------

EnFramePtrTable1:
    PtrTableEntry EnFramePtrTable1, EnFrame_EnProjectileKilled
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyIdle0_R
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyIdle1_R
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyHopping0_R
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyHopping1_R
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireball0_R
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireball1_R
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireball2_R
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireball3_R
    PtrTableEntry EnFramePtrTable1, EnFrame_HoltzIdle0
    PtrTableEntry EnFramePtrTable1, EnFrame_HoltzIdle1
    PtrTableEntry EnFramePtrTable1, EnFrame_HoltzSwooping0
    PtrTableEntry EnFramePtrTable1, EnFrame_HoltzSwooping1
    PtrTableEntry EnFramePtrTable1, EnFrame_HoltzExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_Mella0
    PtrTableEntry EnFramePtrTable1, EnFrame_Mella1
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
    PtrTableEntry EnFramePtrTable1, EnFrame_DessgeegaExplodeFloor
    PtrTableEntry EnFramePtrTable1, EnFrame_DessgeegaExplodeCeiling
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
    PtrTableEntry EnFramePtrTable1, EnFrame_Zebbo0_R
    PtrTableEntry EnFramePtrTable1, EnFrame_Zebbo1_R
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebboExplode_R
    PtrTableEntry EnFramePtrTable1, EnFrame_MissilePickup
    PtrTableEntry EnFramePtrTable1, EnFrame_SmallEnergyPickup
    PtrTableEntry EnFramePtrTable1, EnFrame_BigEnergyPickup

;Enemy frame drawing data.

EnFrame_EnProjectileKilled:
    .byte $00,$00
    .byte $FC,$07+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

EnFrame_RidleyIdle0_R:
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

EnFrame_RidleyIdle1_R:
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

EnFrame_RidleyHopping0_R:
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

EnFrame_RidleyHopping1_R:
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

EnFrame_RidleyExplode:
    .byte $80,$00
    .byte $00,$F4,$C6,$22,$F8
    .byte $01,$F4,$C7,$22,$00
    .byte $02,$FC,$D6,$22,$F8
    .byte $03,$FC,$D7,$22,$00
    .byte $04,$04,$E6,$22,$F8
    .byte $05,$04,$E7,$22,$00
    .byte $80

EnFrame_RidleyFireball0_R:
    .byte $07,$07
    .byte $FC,$EC,$23,$FC
    .byte $80

EnFrame_RidleyFireball1_R:
    .byte $07,$07
    .byte $FC,$FB,$23,$FC
    .byte $80

EnFrame_RidleyFireball2_R:
    .byte $07,$07
    .byte $FC,$EC,$E3,$FC
    .byte $80

EnFrame_RidleyFireball3_R:
    .byte $07,$07
    .byte $FC,$FB,$E3,$FC
    .byte $80

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

EnFrame_Zebbo0_R:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C3,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D3,$62,$F8
    .byte $80

EnFrame_Zebbo1_R:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C4,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D4,$62,$F8
    .byte $80

EnFrame_ZebboExplode_R:
    .byte $88,$08
    .byte $00,$F4,$C2,$62,$00
    .byte $01,$F4,$C4,$62,$F8
    .byte $02,$FC,$D2,$62,$00
    .byte $03,$FC,$D4,$62,$F8
    .byte $80

EnFrame_MissilePickup:
    .byte $08,$04
    .byte $F8,$04+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $00,$05+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

EnFrame_SmallEnergyPickup:
    .byte $04,$04
    .byte $FC,$18+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

EnFrame_BigEnergyPickup:
    .byte $04,$04
    .byte $FC,$18+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80
