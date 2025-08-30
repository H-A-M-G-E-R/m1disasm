;-----------------------------------[ Enemy animation data tables ]----------------------------------

EnAnimTbl: ;($9BDA)
EnAnim_FireballKilled:
    .byte _id_EnFrame_FireballKilled, $FF

EnAnim_RidleyIdleFacingRight:
    .byte _id_EnFrame_RidleyIdleFacingRight0, _id_EnFrame_RidleyIdleFacingRight1, $FF

EnAnim_RidleyHoppingFacingRight:
    .byte _id_EnFrame_RidleyHoppingFacingRight0, _id_EnFrame_RidleyHoppingFacingRight1, $FF

EnAnim_RidleyExplode:
    .byte _id_EnFrame_RidleyExplode, $FF

EnAnim_RidleyFireballFacingRight:
    .byte _id_EnFrame_RidleyFireballFacingRight0, _id_EnFrame_RidleyFireballFacingRight1, _id_EnFrame_RidleyFireballFacingRight2, _id_EnFrame_RidleyFireballFacingRight3, $FF

EnAnim_SqueeptJumping:
    .byte _id_EnFrame_SqueeptJumping0, _id_EnFrame_SqueeptJumping1, $FF

EnAnim_SqueeptFalling:
    .byte _id_EnFrame_SqueeptFalling, $FF

EnAnim_GerutaIdle:
    .byte _id_EnFrame_GerutaIdle0, _id_EnFrame_GerutaIdle1, $FF

EnAnim_GerutaSwooping:
    .byte _id_EnFrame_GerutaSwooping0, _id_EnFrame_GerutaSwooping1, $FF

EnAnim_GerutaExplode:
    .byte _id_EnFrame_GerutaExplode, $FF

EnAnim_RipperIIFacingRight:
    .byte _id_EnFrame_RipperIIFacingRight0, _id_EnFrame_RipperIIFacingRight1, $FF

EnAnim_RipperIIExplode:
    .byte _id_EnFrame_RipperIIExplode, $FF

EnAnim_Mella:
    .byte _id_EnFrame_Mella0, _id_EnFrame_Mella1, $FF

EnAnim_SqueeptExplode:
    .byte _id_EnFrame_SqueeptExplode, $FF

EnAnim_MultiviolaSpinningClockwise:
    .byte _id_EnFrame_MultiviolaSpinningClockwise0, _id_EnFrame_MultiviolaSpinningClockwise1, _id_EnFrame_MultiviolaSpinningClockwise2, _id_EnFrame_MultiviolaSpinningClockwise3, $FF

EnAnim_MultiviolaExplode:
    .byte _id_EnFrame_MultiviolaExplode, $FF

EnAnim_DragonIdleFacingRight:
    .byte _id_EnFrame_DragonIdleFacingRight, $FF

EnAnim_DragonPrepareToSpitFacingRight:
    .byte _id_EnFrame_DragonPrepareToSpitFacingRight, $FF

EnAnim_DragonExplode:
    .byte _id_EnFrame_DragonExplode, $FF

EnAnim_PolypRock:
    .byte _id_EnFrame_PolypRock, $FF

EnAnim_PolypRockShatter:
    .byte _id_EnFrame_PolypRockShatter0, _id_EnFrame_PolypRockShatter1, $F7, $FF

EnAnim_DragonFireballUpRight:
    .byte _id_EnFrame_DragonFireballUpRight, $FF

EnAnim_DragonFireballDownRight:
    .byte _id_EnFrame_DragonFireballDownRight, $FF

EnAnim_DragonFireballUpLeft:
    .byte _id_EnFrame_DragonFireballUpLeft, $FF

EnAnim_DragonFireballDownLeft:
    .byte _id_EnFrame_DragonFireballDownLeft, $FF

EnAnim_DragonFireballSplatter:
    .byte _id_EnFrame_DragonFireballSplatter0, _id_EnFrame_DragonFireballSplatter0, _id_EnFrame_DragonFireballSplatter0, _id_EnFrame_DragonFireballSplatter0, _id_EnFrame_DragonFireballSplatter0, _id_EnFrame_DragonFireballSplatter1, _id_EnFrame_DragonFireballSplatter1, _id_EnFrame_DragonFireballSplatter1, _id_EnFrame_DragonFireballSplatter1, _id_EnFrame_DragonFireballSplatter2, _id_EnFrame_DragonFireballSplatter2, _id_EnFrame_DragonFireballSplatter2, $F7, $FF

EnAnim_NovaOnFloor:
    .byte _id_EnFrame_NovaOnFloor0, _id_EnFrame_NovaOnFloor1, $FF

EnAnim_NovaOnRightWall:
    .byte _id_EnFrame_NovaOnRightWall0, _id_EnFrame_NovaOnRightWall1, $FF

EnAnim_NovaOnCeiling:
    .byte _id_EnFrame_NovaOnCeiling0, _id_EnFrame_NovaOnCeiling1, $FF

EnAnim_NovaOnLeftWall:
    .byte _id_EnFrame_NovaOnLeftWall0, _id_EnFrame_NovaOnLeftWall1, $FF

EnAnim_NovaExplode:
    .byte _id_EnFrame_NovaExplode, $FF

EnAnim_Explosion:
    .byte _id_EnFrame_Explosion0, $F7, _id_EnFrame_Explosion1, $F7, $FF

EnAnim_GametActiveFacingRight:
    .byte _id_EnFrame_GametFacingRight0, _id_EnFrame_GametFacingRight1, $FF

EnAnim_GametExplodeFacingRight:
    .byte _id_EnFrame_GametExplodeFacingRight, $FF

EnAnim_GametRestingFacingRight:
    .byte _id_EnFrame_GametFacingRight0, $FF

;----------------------------[ Enemy sprite drawing pointer tables ]---------------------------------

EnFramePtrTable1:
    PtrTableEntry EnFramePtrTable1, EnFrame_FireballKilled
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyIdleFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyIdleFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyHoppingFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyHoppingFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingRight2
    PtrTableEntry EnFramePtrTable1, EnFrame_RidleyFireballFacingRight3
    PtrTableEntry EnFramePtrTable1, EnFrame_SqueeptJumping1
    PtrTableEntry EnFramePtrTable1, EnFrame_SqueeptJumping0
    PtrTableEntry EnFramePtrTable1, EnFrame_SqueeptFalling
    PtrTableEntry EnFramePtrTable1, EnFrame_GerutaIdle0
    PtrTableEntry EnFramePtrTable1, EnFrame_GerutaIdle1
    PtrTableEntry EnFramePtrTable1, EnFrame_GerutaSwooping0
    PtrTableEntry EnFramePtrTable1, EnFrame_GerutaSwooping1
    PtrTableEntry EnFramePtrTable1, EnFrame_GerutaExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_RipperIIFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_RipperIIFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_RipperIIExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_Mella0
    PtrTableEntry EnFramePtrTable1, EnFrame_Mella1
    PtrTableEntry EnFramePtrTable1, EnFrame_SqueeptExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningClockwise0
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningClockwise1
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningClockwise2
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaSpinningClockwise3
    PtrTableEntry EnFramePtrTable1, EnFrame_MultiviolaExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_DragonIdleFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_DragonPrepareToSpitFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_DragonExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_DragonFireballUpRight
    PtrTableEntry EnFramePtrTable1, EnFrame_DragonFireballDownRight
    PtrTableEntry EnFramePtrTable1, EnFrame_DragonFireballUpLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_DragonFireballDownLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_DragonFireballSplatter0
    PtrTableEntry EnFramePtrTable1, EnFrame_DragonFireballSplatter2
    PtrTableEntry EnFramePtrTable1, EnFrame_DragonFireballSplatter1
    PtrTableEntry EnFramePtrTable1, EnFrame_PolypRock
    PtrTableEntry EnFramePtrTable1, EnFrame_PolypRockShatter0
    PtrTableEntry EnFramePtrTable1, EnFrame_PolypRockShatter1
    PtrTableEntry EnFramePtrTable1, EnFrame_NovaOnFloor0
    PtrTableEntry EnFramePtrTable1, EnFrame_NovaOnFloor1
    PtrTableEntry EnFramePtrTable1, EnFrame_NovaOnRightWall0
    PtrTableEntry EnFramePtrTable1, EnFrame_NovaOnRightWall1
    PtrTableEntry EnFramePtrTable1, EnFrame_NovaOnCeiling0
    PtrTableEntry EnFramePtrTable1, EnFrame_NovaOnCeiling1
    PtrTableEntry EnFramePtrTable1, EnFrame_NovaOnLeftWall0
    PtrTableEntry EnFramePtrTable1, EnFrame_NovaOnLeftWall1
    PtrTableEntry EnFramePtrTable1, EnFrame_NovaExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_Explosion0
    PtrTableEntry EnFramePtrTable1, EnFrame_Explosion1
    PtrTableEntry EnFramePtrTable1, EnFrame_GametFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_GametFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_GametExplodeFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_MissilePickup
    PtrTableEntry EnFramePtrTable1, EnFrame_SmallEnergyPickup
    PtrTableEntry EnFramePtrTable1, EnFrame_BigEnergyPickup

;Enemy frame drawing data.

;Fireball killed.
EnFrame_FireballKilled:
    .byte $00,$00
    .byte $FC,$07+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

EnFrame_RidleyIdleFacingRight0:
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

EnFrame_RidleyIdleFacingRight1:
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

EnFrame_RidleyHoppingFacingRight0:
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

EnFrame_RidleyHoppingFacingRight1:
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
    .byte $04,$04
    .byte $FC,$EC,$22,$FC
    .byte $80

EnFrame_RidleyFireballFacingRight1:
    .byte $04,$04
    .byte $FC,$FB,$22,$FC
    .byte $80

EnFrame_RidleyFireballFacingRight2:
    .byte $04,$04
    .byte $FC,$EC,$E2,$FC
    .byte $80

EnFrame_RidleyFireballFacingRight3:
    .byte $04,$04
    .byte $FC,$FB,$E2,$FC
    .byte $80

;Squeept jumping.
EnFrame_SqueeptJumping1:
    .byte $08,$08
    .byte $F8,$EA,$22,$F8
    .byte $F8,$EA,$62,$00
    .byte $00,$FB,$22,$F8
    .byte $00,$FB,$62,$00
    .byte $80

;Squeept jumping.
EnFrame_SqueeptJumping0:
    .byte $08,$08
    .byte $F8,$EA,$22,$F8
    .byte $F8,$EA,$62,$00
    .byte $00,$FA,$22,$F8
    .byte $00,$FA,$62,$00
    .byte $80

;Squeept falling.
EnFrame_SqueeptFalling:
    .byte $08,$08
    .byte $F8,$EA,$22,$F8
    .byte $F8,$EA,$62,$00
    .byte $00,$EB,$22,$F8
    .byte $00,$EB,$62,$00
    .byte $80

;Geruta idle.
EnFrame_GerutaIdle0:
    .byte $08,$08
    .byte $F8,$CE,$22,$F4
    .byte $F8,$CF,$22,$FC
    .byte $F8,$CE,$62,$04
    .byte $00,$DF,$22,$F8
    .byte $00,$DF,$62,$00
    .byte $80

;Geruta idle.
EnFrame_GerutaIdle1:
    .byte $08,$08
    .byte $F8,$CE,$22,$F4
    .byte $F8,$CF,$22,$FC
    .byte $F8,$CE,$62,$04
    .byte $00,$DE,$22,$F8
    .byte $00,$DE,$62,$00
    .byte $80

;Geruta swooping.
EnFrame_GerutaSwooping0:
    .byte $08,$08
    .byte $00,$CE,$22,$F4
    .byte $00,$CF,$22,$FC
    .byte $00,$CE,$62,$04
    .byte $F8,$DF,$A2,$F8
    .byte $F8,$DF,$E2,$00
    .byte $80

;Geruta swooping.
EnFrame_GerutaSwooping1:
    .byte $08,$08
    .byte $00,$CE,$22,$F4
    .byte $00,$CF,$22,$FC
    .byte $00,$CE,$62,$04
    .byte $F8,$DE,$A2,$F8
    .byte $F8,$DE,$E2,$00
    .byte $80

;Geruta explode.
EnFrame_GerutaExplode:
    .byte $80,$00
    .byte $00,$F4,$CE,$22,$F8
    .byte $01,$F4,$CE,$22,$00
    .byte $02,$FC,$DF,$22,$F8
    .byte $03,$FC,$DF,$22,$00
    .byte $80

;Ripper II facing right.
EnFrame_RipperIIFacingRight0:
    .byte $04,$08
    .byte $F8,$F6,$22,$F8
    .byte $F8,$F7,$22,$00
    .byte $80

;Ripper II facing right.
EnFrame_RipperIIFacingRight1:
    .byte $04,$08
    .byte $F8,$E7,$22,$F8
    .byte $F8,$F7,$22,$00
    .byte $80

;Ripper II explode.
EnFrame_RipperIIExplode:
    .byte $80,$00
    .byte $00,$F4,$F6,$22,$F8
    .byte $01,$F4,$F7,$22,$00
    .byte $80

;Mella.
EnFrame_Mella0:
    .byte $04,$08
    .byte $F8,$E6,$22,$F8
    .byte $F8,$E6,$62,$00
    .byte $80

;Mella.
EnFrame_Mella1:
    .byte $04,$08
    .byte $F8,$E5,$22,$F8
    .byte $F8,$E5,$62,$00
    .byte $80

;Squeept explode.
EnFrame_SqueeptExplode:
    .byte $80,$00
    .byte $00,$F4,$EA,$22,$F8
    .byte $01,$F4,$EA,$22,$00
    .byte $02,$FC,$EB,$22,$F8
    .byte $03,$FC,$EB,$22,$00
    .byte $80

;Multiviola spinning clockwise.
EnFrame_MultiviolaSpinningClockwise0:
    .byte $08,$08
    .byte $F8,$EE,$62,$00
    .byte $F8,$EF,$62,$F8
    .byte $00,$EF,$A2,$00
    .byte $00,$EF,$E2,$F8
    .byte $80

;Multiviola spinning clockwise.
EnFrame_MultiviolaSpinningClockwise1:
    .byte $08,$08
    .byte $F8,$EF,$22,$00
    .byte $F8,$EF,$62,$F8
    .byte $00,$ED,$62,$00
    .byte $00,$EF,$E2,$F8
    .byte $80

;Multiviola spinning clockwise.
EnFrame_MultiviolaSpinningClockwise2:
    .byte $08,$08
    .byte $F8,$EF,$22,$00
    .byte $F8,$EF,$62,$F8
    .byte $00,$EF,$A2,$00
    .byte $00,$EE,$A2,$F8
    .byte $80

;Multiviola spinning clockwise.
EnFrame_MultiviolaSpinningClockwise3:
    .byte $08,$08
    .byte $F8,$EF,$22,$00
    .byte $F8,$ED,$A2,$F8
    .byte $00,$EF,$A2,$00
    .byte $00,$EF,$E2,$F8
    .byte $80

;Multiviola explode.
EnFrame_MultiviolaExplode:
    .byte $80,$00
    .byte $00,$F8,$EE,$22,$F8
    .byte $01,$F8,$EF,$22,$00
    .byte $02,$00,$EF,$22,$F8
    .byte $03,$00,$EF,$22,$00
    .byte $80

;Dragon idle facing right.
EnFrame_DragonIdleFacingRight:
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

;Dragon prepare to spit facing right.
EnFrame_DragonPrepareToSpitFacingRight:
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

;Dragon explode.
EnFrame_DragonExplode:
    .byte $80,$00
    .byte $00,$F0,$C8,$22,$F8
    .byte $01,$F0,$C9,$22,$00
    .byte $02,$F8,$D8,$22,$F8
    .byte $03,$F8,$D9,$22,$00
    .byte $04,$00,$E8,$22,$F8
    .byte $05,$00,$E9,$22,$00
    .byte $80

;Dragon fireball up-right.
EnFrame_DragonFireballUpRight:
    .byte $04,$04
    .byte $F8,$E0,$23,$F8
    .byte $F8,$E1,$23,$00
    .byte $00,$F0,$23,$F8
    .byte $00,$F1,$23,$00
    .byte $80

;Dragon fireball down-right.
EnFrame_DragonFireballDownRight:
    .byte $04,$04
    .byte $00,$E0,$A3,$F8
    .byte $00,$E1,$A3,$00
    .byte $F8,$F0,$A3,$F8
    .byte $F8,$F1,$A3,$00
    .byte $80

;Dragon fireball up-left.
EnFrame_DragonFireballUpLeft:
    .byte $04,$04
    .byte $F8,$E0,$63,$00
    .byte $F8,$E1,$63,$F8
    .byte $00,$F0,$63,$00
    .byte $00,$F1,$63,$F8
    .byte $80

;Dragon fireball down-left.
EnFrame_DragonFireballDownLeft:
    .byte $04,$04
    .byte $00,$E0,$E3,$00
    .byte $00,$E1,$E3,$F8
    .byte $F8,$F0,$E3,$00
    .byte $F8,$F1,$E3,$F8
    .byte $80

;Dragon fireball splatter.
EnFrame_DragonFireballSplatter0:
    .byte $00,$00
    .byte $F8,$E2,$23,$F8
    .byte $F8,$E2,$63,$00
    .byte $80

;Dragon fireball splatter.
EnFrame_DragonFireballSplatter2:
    .byte $00,$00
    .byte $F8,$E2,$23,$E8
    .byte $F8,$E2,$62,$10
    .byte $80

;Dragon fireball splatter.
EnFrame_DragonFireballSplatter1:
    .byte $00,$00
    .byte $F8,$E2,$23,$F0
    .byte $F8,$E2,$62,$08
    .byte $80

;Polyp rock.
EnFrame_PolypRock:
    .byte $04,$04
    .byte $FC,$C0,$23,$FC
    .byte $80

;Polyp rock shatter.
EnFrame_PolypRockShatter0:
    .byte $00,$00
    .byte $F4,$D0,$23,$FC
    .byte $80

;Polyp rock shatter.
EnFrame_PolypRockShatter1:
    .byte $00,$00
    .byte $F4,$D1,$23,$F4
    .byte $F4,$D1,$63,$04
    .byte $80

;Nova on floor.
EnFrame_NovaOnFloor0:
    .byte $08,$08
    .byte $F8,$CC,$22,$F8
    .byte $F8,$CC,$62,$00
    .byte $00,$DC,$22,$F8
    .byte $00,$DD,$22,$00
    .byte $80

;Nova on floor.
EnFrame_NovaOnFloor1:
    .byte $08,$08
    .byte $F8,$CD,$22,$00
    .byte $F8,$CD,$62,$F8
    .byte $00,$DC,$62,$00
    .byte $00,$DD,$62,$F8
    .byte $80

;Nova on right wall.
EnFrame_NovaOnRightWall0:
    .byte $08,$08
    .byte $F8,$DA,$A2,$F8
    .byte $F8,$CB,$22,$00
    .byte $00,$DA,$22,$F8
    .byte $00,$DB,$22,$00
    .byte $80

;Nova on right wall.
EnFrame_NovaOnRightWall1:
    .byte $08,$08
    .byte $00,$CA,$A2,$F8
    .byte $00,$CB,$A2,$00
    .byte $F8,$CA,$22,$F8
    .byte $F8,$DB,$A2,$00
    .byte $80

;Nova on ceiling.
EnFrame_NovaOnCeiling0:
    .byte $08,$08
    .byte $00,$CC,$A2,$F8
    .byte $00,$CC,$E2,$00
    .byte $F8,$DC,$A2,$F8
    .byte $F8,$DD,$A2,$00
    .byte $80

;Nova on ceiling.
EnFrame_NovaOnCeiling1:
    .byte $08,$08
    .byte $00,$CD,$A2,$00
    .byte $00,$CD,$E2,$F8
    .byte $F8,$DC,$E2,$00
    .byte $F8,$DD,$E2,$F8
    .byte $80

;Nova on left wall.
EnFrame_NovaOnLeftWall0:
    .byte $08,$08
    .byte $F8,$DA,$E2,$00
    .byte $F8,$CB,$62,$F8
    .byte $00,$DA,$62,$00
    .byte $00,$DB,$62,$F8
    .byte $80

;Nova on left wall.
EnFrame_NovaOnLeftWall1:
    .byte $08,$08
    .byte $00,$CA,$E2,$00
    .byte $00,$CB,$E2,$F8
    .byte $F8,$CA,$62,$00
    .byte $F8,$DB,$E2,$F8
    .byte $80

;Nova explode.
EnFrame_NovaExplode:
    .byte $80,$00
    .byte $00,$F4,$CC,$22,$F8
    .byte $01,$F4,$CD,$22,$00
    .byte $02,$FC,$DC,$22,$F8
    .byte $03,$FC,$DD,$22,$00
    .byte $80

;Explosion.
EnFrame_Explosion0:
    .byte $00,$00
    .byte $F8,$0F+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$0F+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $00,$0F+CFG_NUM_SAMUS_TILES,$A0,$F8
    .byte $00,$0F+CFG_NUM_SAMUS_TILES,$E0,$00
    .byte $80

;Explosion.
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

;Gamet facing right.
EnFrame_GametFacingRight0:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C3,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D3,$62,$F8
    .byte $80

;Gamet facing right.
EnFrame_GametFacingRight1:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C4,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D4,$62,$F8
    .byte $80

;Gamet explode facing right.
EnFrame_GametExplodeFacingRight:
    .byte $88,$08
    .byte $00,$F4,$C2,$62,$00
    .byte $01,$F4,$C4,$62,$F8
    .byte $02,$FC,$D2,$62,$00
    .byte $03,$FC,$D4,$62,$F8
    .byte $80

;Missile pickup.
EnFrame_MissilePickup:
    .byte $08,$04
    .byte $F8,$04+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $00,$05+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Small energy pickup.
EnFrame_SmallEnergyPickup:
    .byte $04,$04
    .byte $FC,$18+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Big energy pickup.
EnFrame_BigEnergyPickup:
    .byte $04,$04
    .byte $FC,$18+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80
