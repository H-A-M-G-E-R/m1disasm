;-----------------------------------[ Enemy animation data tables ]----------------------------------

EnAnimTbl: ;($9D6A)
EnAnim_FireballKilled:
    .byte _id_EnFrame_FireballKilled, $FF

EnAnim_SidehopperFloorIdle:
    .byte _id_EnFrame_SidehopperFloorIdle0, _id_EnFrame_SidehopperFloorIdle1, $FF

EnAnim_SidehopperFloorStartHopping:
    .byte _id_EnFrame_SidehopperFloorIdle1
EnAnim_SidehopperFloorHopping:
    .byte _id_EnFrame_SidehopperFloorHopping, $FF

EnAnim_SidehopperCeilingIdle:
    .byte _id_EnFrame_SidehopperCeilingIdle0, _id_EnFrame_SidehopperCeilingIdle1, $FF

EnAnim_SidehopperCeilingStartHopping:
    .byte _id_EnFrame_SidehopperCeilingIdle1
EnAnim_SidehopperCeilingHopping:
    .byte _id_EnFrame_SidehopperCeilingHopping, $FF

EnAnim_Waver0FacingRight:
    .byte _id_EnFrame_Waver0FacingRight, $FF

EnAnim_RipperFacingRight:
    .byte _id_EnFrame_RipperFacingRight, $FF

EnAnim_Waver1FacingRight:
    .byte _id_EnFrame_Waver1FacingRight
EnAnim_Waver2FacingRight:
    .byte _id_EnFrame_Waver2FacingRight, $FF

EnAnim_Skree:
    .byte _id_EnFrame_Skree0, _id_EnFrame_Skree1, _id_EnFrame_Skree2, $FF

EnAnim_SidehopperFloorExplode:
    .byte _id_EnFrame_SidehopperFloorExplode, $FF

EnAnim_SidehopperCeilingExplode:
    .byte _id_EnFrame_SidehopperCeilingExplode, $FF

EnAnim_WaverExplodeFacingRight:
    .byte _id_EnFrame_WaverExplodeFacingRight, $FF

EnAnim_RipperExplodeFacingRight:
    .byte _id_EnFrame_RipperExplodeFacingRight, $FF

EnAnim_SkreeExplode:
    .byte _id_EnFrame_SkreeExplode, $FF

EnAnim_ZoomerOnFloor:
    .byte _id_EnFrame_ZoomerOnFloor0, _id_EnFrame_ZoomerOnFloor1, $FF

EnAnim_ZoomerOnRightWall:
    .byte _id_EnFrame_ZoomerOnRightWall0, _id_EnFrame_ZoomerOnRightWall1, $FF

EnAnim_ZoomerOnCeiling:
    .byte _id_EnFrame_ZoomerOnCeiling0, _id_EnFrame_ZoomerOnCeiling1, $FF

EnAnim_ZoomerOnLeftWall:
    .byte _id_EnFrame_ZoomerOnLeftWall0, _id_EnFrame_ZoomerOnLeftWall1, $FF

EnAnim_ZoomerExplode:
    .byte _id_EnFrame_ZoomerExplode, $FF

EnAnim_Explosion:
    .byte _id_EnFrame_Explosion0, $F7, _id_EnFrame_Explosion1, $F7, $FF

EnAnim_Rio:
    .byte _id_EnFrame_Rio0, _id_EnFrame_Rio1, $FF

EnAnim_RioExplode:
    .byte _id_EnFrame_RioExplode, $FF

EnAnim_ZebFacingRight:
    .byte _id_EnFrame_ZebFacingRight0, _id_EnFrame_ZebFacingRight1, $FF

EnAnim_ZebExplodeFacingRight:
    .byte _id_EnFrame_ZebExplodeFacingRight, $FF

EnAnim_ZebRestingFacingRight:
    .byte _id_EnFrame_ZebFacingRight0, $FF

EnAnim_KraidLintFacingRight:
    .byte _id_EnFrame_KraidLintFacingRight, $FF

EnAnim_KraidNailMovingFacingRight:
    .byte _id_EnFrame_KraidNailFacingRight1, _id_EnFrame_KraidNailFacingRight2, _id_EnFrame_KraidNailFacingRight3
EnAnim_KraidNailIdleFacingRight:
    .byte _id_EnFrame_KraidNailFacingRight0, $FF

EnAnim_Mellow:
    .byte _id_EnFrame_Mellow0, _id_EnFrame_Mellow1, $FF

EnAnim_KraidFacingRight:
    .byte _id_EnFrame_KraidFacingRight0, _id_EnFrame_KraidFacingRight1, $FF

EnAnim_KraidExplodeFacingRight:
    .byte _id_EnFrame_KraidExplodeFacingRight, $FF

;----------------------------[ Enemy sprite drawing pointer tables ]---------------------------------

EnFramePtrTable1:
    PtrTableEntry EnFramePtrTable1, EnFrame_FireballKilled
    PtrTableEntry EnFramePtrTable1, EnFrame_Waver2FacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperFloorIdle0
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperFloorIdle1
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperFloorHopping
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperCeilingIdle0
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperCeilingIdle1
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperCeilingHopping
    PtrTableEntry EnFramePtrTable1, EnFrame_RipperFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_Waver1FacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_Waver0FacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_Skree0
    PtrTableEntry EnFramePtrTable1, EnFrame_Skree1
    PtrTableEntry EnFramePtrTable1, EnFrame_Skree2
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperFloorExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperCeilingExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_WaverExplodeFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_RipperExplodeFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_SkreeExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_ZoomerOnFloor0
    PtrTableEntry EnFramePtrTable1, EnFrame_ZoomerOnFloor1
    PtrTableEntry EnFramePtrTable1, EnFrame_ZoomerOnRightWall0
    PtrTableEntry EnFramePtrTable1, EnFrame_ZoomerOnRightWall1
    PtrTableEntry EnFramePtrTable1, EnFrame_ZoomerOnCeiling0
    PtrTableEntry EnFramePtrTable1, EnFrame_ZoomerOnCeiling1
    PtrTableEntry EnFramePtrTable1, EnFrame_ZoomerOnLeftWall0
    PtrTableEntry EnFramePtrTable1, EnFrame_ZoomerOnLeftWall1
    PtrTableEntry EnFramePtrTable1, EnFrame_ZoomerExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_Explosion0
    PtrTableEntry EnFramePtrTable1, EnFrame_Explosion1
    PtrTableEntry EnFramePtrTable1, EnFrame_Rio0
    PtrTableEntry EnFramePtrTable1, EnFrame_Rio1
    PtrTableEntry EnFramePtrTable1, EnFrame_RioExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebExplodeFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidLintFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingRight2
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingRight3
    PtrTableEntry EnFramePtrTable1, EnFrame_MissilePickup
    PtrTableEntry EnFramePtrTable1, EnFrame_SmallEnergyPickup
    PtrTableEntry EnFramePtrTable1, EnFrame_BigEnergyPickup
    PtrTableEntry EnFramePtrTable1, EnFrame_Mellow0
    PtrTableEntry EnFramePtrTable1, EnFrame_Mellow1
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidExplodeFacingRight

;Enemy frame drawing data.

;Fireball killed.
EnFrame_FireballKilled:
    .byte $00,$00
    .byte $FC,$07+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

EnFrame_Waver2FacingRight:
    .byte $06,$08
    .byte $FC,$D0,$22,$F8
    .byte $FC,$D1,$22,$00
    .byte $80

EnFrame_SidehopperFloorIdle0:
    .byte $08,$0A
    .byte $F8,$A3,$22,$F4
    .byte $00,$B3,$22,$F4
    .byte $F8,$A4,$22,$FC
    .byte $00,$B4,$22,$FC
    .byte $F8,$A3,$62,$04
    .byte $00,$B3,$62,$04
    .byte $80

EnFrame_SidehopperFloorIdle1:
    .byte $08,$0A
    .byte $F8,$A5,$22,$F4
    .byte $00,$B3,$22,$F4
    .byte $F4,$A4,$22,$FC
    .byte $FC,$B4,$22,$FC
    .byte $F8,$A5,$62,$04
    .byte $00,$B3,$62,$04
    .byte $80

EnFrame_SidehopperFloorHopping:
    .byte $08,$0A
    .byte $02,$B5,$22,$F4
    .byte $0A,$B3,$22,$F4
    .byte $F8,$A4,$22,$FC
    .byte $00,$B4,$22,$FC
    .byte $02,$B5,$62,$04
    .byte $0A,$B3,$62,$04
    .byte $80

EnFrame_SidehopperCeilingIdle0:
    .byte $08,$0A
    .byte $00,$A3,$A2,$F4
    .byte $F8,$B3,$A2,$F4
    .byte $00,$A4,$A2,$FC
    .byte $F8,$B4,$A2,$FC
    .byte $00,$A3,$E2,$04
    .byte $F8,$B3,$E2,$04
    .byte $80

EnFrame_SidehopperCeilingIdle1:
    .byte $08,$0A
    .byte $00,$A5,$A2,$F4
    .byte $F8,$B3,$A2,$F4
    .byte $04,$A4,$A2,$FC
    .byte $FC,$B4,$A2,$FC
    .byte $00,$A5,$E2,$04
    .byte $F8,$B3,$E2,$04
    .byte $80

EnFrame_SidehopperCeilingHopping:
    .byte $08,$0A
    .byte $F6,$B5,$A2,$F4
    .byte $EE,$B3,$A2,$F4
    .byte $00,$A4,$A2,$FC
    .byte $F8,$B4,$A2,$FC
    .byte $F6,$B5,$E2,$04
    .byte $EE,$B3,$E2,$04
    .byte $80

;Ripper facing right.
EnFrame_RipperFacingRight:
    .byte $06,$08
    .byte $FC,$C0,$22,$F8
    .byte $FC,$C1,$22,$00
    .byte $80

EnFrame_Waver1FacingRight:
    .byte $06,$08
    .byte $F8,$E0,$22,$F8
    .byte $F8,$E1,$22,$00
    .byte $00,$E0,$A2,$F8
    .byte $00,$E1,$A2,$00
    .byte $80

EnFrame_Waver0FacingRight:
    .byte $06,$08
    .byte $F8,$F0,$22,$F8
    .byte $F8,$F1,$22,$00
    .byte $00,$F0,$A2,$F8
    .byte $00,$F1,$A2,$00
    .byte $80

;Skree.
EnFrame_Skree0:
    .byte $0C,$08
    .byte $F4,$CE,$22,$FC
    .byte $FC,$DE,$22,$F8
    .byte $04,$EE,$22,$F8
    .byte $FC,$DF,$22,$00
    .byte $04,$EE,$62,$00
    .byte $80

;Skree.
EnFrame_Skree1:
    .byte $0C,$08
    .byte $F4,$CE,$22,$FC
    .byte $FC,$CF,$22,$FC
    .byte $04,$EF,$22,$FC
    .byte $80

;Skree.
EnFrame_Skree2:
    .byte $0C,$08
    .byte $F4,$CE,$22,$FC
    .byte $FC,$CF,$62,$FC
    .byte $04,$EF,$62,$FC
    .byte $80

EnFrame_SidehopperFloorExplode:
    .byte $80,$00
    .byte $00,$FC,$A3,$22,$F4
    .byte $01,$FC,$A3,$22,$04
    .byte $02,$04,$B3,$22,$F4
    .byte $03,$04,$B3,$22,$04
    .byte $80

EnFrame_SidehopperCeilingExplode:
    .byte $80,$00
    .byte $00,$F4,$B3,$22,$F4
    .byte $01,$F4,$B3,$22,$04
    .byte $02,$FC,$A3,$22,$F4
    .byte $03,$FC,$A3,$22,$04
    .byte $80

EnFrame_WaverExplodeFacingRight:
    .byte $80,$00
    .byte $00,$F8,$F0,$22,$F8
    .byte $01,$F8,$F1,$22,$00
    .byte $02,$00,$F0,$22,$F8
    .byte $03,$00,$F1,$22,$00
    .byte $80

;Ripper explode facing right (uses waver gfx).
EnFrame_RipperExplodeFacingRight:
    .byte $80,$00
    .byte $00,$FC,$D0,$22,$F8
    .byte $01,$FC,$D1,$22,$00
    .byte $80

;Skree explode.
EnFrame_SkreeExplode:
    .byte $80,$00
    .byte $00,$FC,$DE,$22,$F8
    .byte $01,$FC,$DF,$22,$00
    .byte $02,$04,$EE,$22,$F8
    .byte $03,$04,$EE,$22,$00
    .byte $80

;Zoomer on floor.
EnFrame_ZoomerOnFloor0:
    .byte $08,$08
    .byte $F8,$CC,$22,$F8
    .byte $F8,$CD,$22,$00
    .byte $00,$DC,$22,$F8
    .byte $00,$DD,$22,$00
    .byte $80

;Zoomer on floor.
EnFrame_ZoomerOnFloor1:
    .byte $08,$08
    .byte $F8,$CC,$62,$00
    .byte $F8,$CD,$62,$F8
    .byte $00,$DC,$62,$00
    .byte $00,$DD,$62,$F8
    .byte $80

;Zoomer on right wall.
EnFrame_ZoomerOnRightWall0:
    .byte $08,$08
    .byte $F8,$CA,$22,$F8
    .byte $F8,$CB,$22,$00
    .byte $00,$DA,$22,$F8
    .byte $00,$DB,$22,$00
    .byte $80

;Zoomer on right wall.
EnFrame_ZoomerOnRightWall1:
    .byte $08,$08
    .byte $00,$CA,$A2,$F8
    .byte $00,$CB,$A2,$00
    .byte $F8,$DA,$A2,$F8
    .byte $F8,$DB,$A2,$00
    .byte $80

;Zoomer on ceiling.
EnFrame_ZoomerOnCeiling0:
    .byte $08,$08
    .byte $00,$CC,$A2,$F8
    .byte $00,$CD,$A2,$00
    .byte $F8,$DC,$A2,$F8
    .byte $F8,$DD,$A2,$00
    .byte $80

;Zoomer on ceiling.
EnFrame_ZoomerOnCeiling1:
    .byte $08,$08
    .byte $00,$CC,$E2,$00
    .byte $00,$CD,$E2,$F8
    .byte $F8,$DC,$E2,$00
    .byte $F8,$DD,$E2,$F8
    .byte $80

;Zoomer on left wall.
EnFrame_ZoomerOnLeftWall0:
    .byte $08,$08
    .byte $F8,$CA,$62,$00
    .byte $F8,$CB,$62,$F8
    .byte $00,$DA,$62,$00
    .byte $00,$DB,$62,$F8
    .byte $80

;Zoomer on left wall.
EnFrame_ZoomerOnLeftWall1:
    .byte $08,$08
    .byte $00,$CA,$E2,$00
    .byte $00,$CB,$E2,$F8
    .byte $F8,$DA,$E2,$00
    .byte $F8,$DB,$E2,$F8
    .byte $80

;Zoomer explode.
EnFrame_ZoomerExplode:
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

;Rio.
EnFrame_Rio0:
    .byte $08,$08
    .byte $F8,$E2,$22,$FC
    .byte $00,$E3,$22,$F8
    .byte $F4,$E4,$22,$F4
    .byte $00,$E3,$62,$00
    .byte $F4,$E4,$62,$04
    .byte $80

;Rio.
EnFrame_Rio1:
    .byte $08,$08
    .byte $F8,$E2,$22,$FC
    .byte $00,$E3,$22,$F8
    .byte $FC,$E4,$22,$F4
    .byte $00,$E3,$62,$00
    .byte $FC,$E4,$62,$04
    .byte $80

;Rio explode (gfx looks wrong).
EnFrame_RioExplode:
    .byte $80,$00
    .byte $00,$F4,$96,$22,$F8
    .byte $01,$F4,$96,$22,$00
    .byte $02,$FC,$98,$22,$F8
    .byte $03,$FC,$98,$22,$00
    .byte $80

;Zeb facing right.
EnFrame_ZebFacingRight0:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C3,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D3,$62,$F8
    .byte $80

;Zeb facing right.
EnFrame_ZebFacingRight1:
    .byte $08,$08
    .byte $F8,$C2,$62,$00
    .byte $F8,$C4,$62,$F8
    .byte $00,$D2,$62,$00
    .byte $00,$D4,$62,$F8
    .byte $80

;Zeb explode facing right.
EnFrame_ZebExplodeFacingRight:
    .byte $88,$08
    .byte $00,$F4,$C2,$62,$00
    .byte $01,$F4,$C4,$62,$F8
    .byte $02,$FC,$D2,$62,$00
    .byte $03,$FC,$D4,$62,$F8
    .byte $80

EnFrame_KraidLintFacingRight:
    .byte $02,$04
    .byte $FB,$F8,$22,$FC
    .byte $80

EnFrame_KraidNailFacingRight0:
    .byte $02,$02
    .byte $FA,$D9,$22,$FC
    .byte $80

EnFrame_KraidNailFacingRight1:
    .byte $02,$02
    .byte $FC,$D8,$E2,$FE
    .byte $80

EnFrame_KraidNailFacingRight2:
    .byte $02,$02
    .byte $FE,$D9,$E2,$FC
    .byte $80

EnFrame_KraidNailFacingRight3:
    .byte $02,$02
    .byte $FC,$D8,$22,$FA
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

;Mellow.
EnFrame_Mellow0:
    .byte $04,$08
    .byte $FC,$EC,$03,$F8
    .byte $FC,$EC,$43,$00
    .byte $80

;Mellow.
EnFrame_Mellow1:
    .byte $04,$08
    .byte $FC,$ED,$03,$F8
    .byte $FC,$ED,$43,$00
    .byte $80

EnFrame_KraidFacingRight0:
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

EnFrame_KraidFacingRight1:
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

EnFrame_KraidExplodeFacingRight:
    .byte $80,$00
    .byte $00,$F4,$C5,$22,$F8
    .byte $01,$F4,$C7,$22,$00
    .byte $02,$FC,$D5,$22,$F8
    .byte $03,$FC,$D7,$22,$00
    .byte $04,$04,$E5,$22,$F8
    .byte $05,$04,$E7,$22,$00
    .byte $80
