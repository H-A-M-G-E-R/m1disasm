;-----------------------------------[ Enemy animation data tables ]----------------------------------

EnAnimTbl: ;($9D6A)
EnAnim_00:
    .byte _id_EnFrame00, _id_EnFrame01, $FF

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

EnAnim_11:
    .byte _id_EnFrame_RipperFacingLeft, _id_EnFrame_Waver1FacingLeft
EnAnim_Waver0FacingLeft:
    .byte _id_EnFrame_Waver0FacingLeft, $FF

EnAnim_15:
    .byte _id_EnFrame_RipperFacingRight, _id_EnFrame_Waver1FacingRight
EnAnim_Waver0FacingRight:
    .byte _id_EnFrame_Waver0FacingRight, $FF

EnAnim_RipperFacingLeft:
    .byte _id_EnFrame_RipperFacingLeft, $FF

EnAnim_RipperFacingRight:
    .byte _id_EnFrame_RipperFacingRight, $FF

EnAnim_Waver1FacingLeft:
    .byte _id_EnFrame_Waver1FacingLeft,
EnAnim_Waver2FacingLeft:
    .byte _id_EnFrame_Waver2FacingLeft, $FF

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

EnAnim_WaverExplodeFacingLeft:
    .byte _id_EnFrame_WaverExplodeFacingLeft, $FF

EnAnim_WaverExplodeFacingRight:
    .byte _id_EnFrame_WaverExplodeFacingRight, $FF

EnAnim_RipperExplodeFacingLeft:
    .byte _id_EnFrame_RipperExplodeFacingLeft, $FF

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

EnAnim_ZebFacingLeft:
    .byte _id_EnFrame_ZebFacingLeft0, _id_EnFrame_ZebFacingLeft1, $FF

EnAnim_ZebFacingRight:
    .byte _id_EnFrame_ZebFacingRight0, _id_EnFrame_ZebFacingRight1, $FF

EnAnim_ZebExplodeFacingLeft:
    .byte _id_EnFrame_ZebExplodeFacingLeft, $FF

EnAnim_ZebExplodeFacingRight:
    .byte _id_EnFrame_ZebExplodeFacingRight, $FF

EnAnim_ZebRestingFacingLeft:
    .byte _id_EnFrame_ZebFacingLeft0, $FF

EnAnim_ZebRestingFacingRight:
    .byte _id_EnFrame_ZebFacingRight0, $FF

EnAnim_KraidLintFacingRight:
    .byte _id_EnFrame_KraidLintFacingRight, $FF

EnAnim_KraidLintFacingLeft:
    .byte _id_EnFrame_KraidLintFacingLeft, $FF

EnAnim_KraidNailMovingFacingRight:
    .byte _id_EnFrame_KraidNailFacingRight1, _id_EnFrame_KraidNailFacingRight2, _id_EnFrame_KraidNailFacingRight3
EnAnim_KraidNailIdleFacingRight:
    .byte _id_EnFrame_KraidNailFacingRight0, $FF

EnAnim_KraidNailMovingFacingLeft:
    .byte _id_EnFrame_KraidNailFacingLeft1, _id_EnFrame_KraidNailFacingLeft2, _id_EnFrame_KraidNailFacingLeft3
EnAnim_KraidNailIdleFacingLeft:
    .byte _id_EnFrame_KraidNailFacingLeft0, $FF

EnAnim_Mellow:
    .byte _id_EnFrame_Mellow0, _id_EnFrame_Mellow1, $FF

EnAnim_KraidFacingRight:
    .byte _id_EnFrame_KraidFacingRight0, _id_EnFrame_KraidFacingRight1, $FF

EnAnim_KraidFacingLeft:
    .byte _id_EnFrame_KraidFacingLeft0, _id_EnFrame_KraidFacingLeft1, $FF

EnAnim_KraidExplodeFacingRight:
    .byte _id_EnFrame_KraidExplodeFacingRight, $FF

EnAnim_KraidExplodeFacingLeft:
    .byte _id_EnFrame_KraidExplodeFacingLeft, $FF

;----------------------------[ Enemy sprite drawing pointer tables ]---------------------------------

EnFramePtrTable1:
    PtrTableEntry EnFramePtrTable1, EnFrame00
    PtrTableEntry EnFramePtrTable1, EnFrame01
    PtrTableEntry EnFramePtrTable1, EnFrame_FireballKilled
    PtrTableEntry EnFramePtrTable1, EnFrame_Waver2FacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_Waver2FacingLeft
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
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperFloorIdle0
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperFloorIdle1
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperFloorHopping
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperCeilingIdle0
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperCeilingIdle1
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperCeilingHopping
    PtrTableEntry EnFramePtrTable1, EnFrame_RipperFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_Waver1FacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_Waver0FacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_RipperFacingLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_Waver1FacingLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_Waver0FacingLeft
    PtrTableEntry EnFramePtrTable1, EnFrame25
    PtrTableEntry EnFramePtrTable1, EnFrame26
    PtrTableEntry EnFramePtrTable1, EnFrame_Skree0
    PtrTableEntry EnFramePtrTable1, EnFrame_Skree1
    PtrTableEntry EnFramePtrTable1, EnFrame_Skree2
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
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperFloorExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_SidehopperCeilingExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_WaverExplodeFacingLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_WaverExplodeFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_RipperExplodeFacingLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_RipperExplodeFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_SkreeExplode
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
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebFacingLeft0
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebFacingLeft1
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebExplodeFacingLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_ZebExplodeFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidLintFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidLintFacingLeft
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingRight2
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingRight3
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingLeft0
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingLeft1
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingLeft2
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidNailFacingLeft3
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
    PtrTableEntry EnFramePtrTable1, EnFrame8A
    PtrTableEntry EnFramePtrTable1, EnFrame8B
    PtrTableEntry EnFramePtrTable1, EnFrame8C
    PtrTableEntry EnFramePtrTable1, EnFrame8D
    PtrTableEntry EnFramePtrTable1, EnFrame8E
    PtrTableEntry EnFramePtrTable1, EnFrame_Mellow0
    PtrTableEntry EnFramePtrTable1, EnFrame_Mellow1
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidFacingRight0
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidFacingRight1
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidFacingLeft0
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidFacingLeft1
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidExplodeFacingRight
    PtrTableEntry EnFramePtrTable1, EnFrame_KraidExplodeFacingLeft

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
EnFrame_FireballKilled:
    .byte $00,$00
    .byte $FC,$07+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

EnFrame_Waver2FacingRight:
    .byte $06,$08
    .byte $FC,$D0,$22,$F8
    .byte $FC,$D1,$22,$00
    .byte $80

EnFrame_Waver2FacingLeft:
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

;Ripper facing left.
EnFrame_RipperFacingLeft:
    .byte $06,$08
    .byte $FC,$C0,$62,$00
    .byte $FC,$C1,$62,$F8
    .byte $80

EnFrame_Waver1FacingLeft:
    .byte $06,$08
    .byte $F8,$E0,$62,$00
    .byte $F8,$E1,$62,$F8
    .byte $00,$E0,$E2,$00
    .byte $00,$E1,$E2,$F8
    .byte $80

EnFrame_Waver0FacingLeft:
    .byte $06,$08
    .byte $F8,$F0,$62,$00
    .byte $F8,$F1,$62,$F8
    .byte $00,$F0,$E2,$00
    .byte $00,$F1,$E2,$F8
    .byte $80

;Skree.
EnFrame25:
EnFrame26:
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

EnFrame_WaverExplodeFacingLeft:
    .byte $80,$00
    .byte $00,$F8,$F1,$22,$F8
    .byte $01,$F8,$F0,$22,$00
    .byte $02,$00,$F1,$22,$F8
    .byte $03,$00,$F0,$22,$00
    .byte $80

EnFrame_WaverExplodeFacingRight:
    .byte $80,$00
    .byte $00,$F8,$F0,$22,$F8
    .byte $01,$F8,$F1,$22,$00
    .byte $02,$00,$F0,$22,$F8
    .byte $03,$00,$F1,$22,$00
    .byte $80

;Ripper explode facing left (uses waver gfx).
EnFrame_RipperExplodeFacingLeft:
    .byte $80,$00
    .byte $00,$FC,$D1,$22,$F8
    .byte $01,$FC,$D0,$22,$00
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

;Zeb facing left.
EnFrame_ZebFacingLeft0:
    .byte $08,$08
    .byte $F8,$C2,$22,$F8
    .byte $F8,$C3,$22,$00
    .byte $00,$D2,$22,$F8
    .byte $00,$D3,$22,$00
    .byte $80

;Zeb facing left.
EnFrame_ZebFacingLeft1:
    .byte $08,$08
    .byte $F8,$C2,$22,$F8
    .byte $F8,$C4,$22,$00
    .byte $00,$D2,$22,$F8
    .byte $00,$D4,$22,$00
    .byte $80

;Zeb explode facing left.
EnFrame_ZebExplodeFacingLeft:
    .byte $88,$08
    .byte $00,$F4,$C2,$22,$F8
    .byte $01,$F4,$C4,$22,$00
    .byte $02,$FC,$D2,$22,$F8
    .byte $03,$FC,$D4,$22,$00
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

EnFrame_KraidLintFacingLeft:
    .byte $02,$04
    .byte $FB,$F8,$62,$FC
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

EnFrame_KraidNailFacingLeft0:
    .byte $02,$02
    .byte $FA,$D9,$62,$FC
    .byte $80

EnFrame_KraidNailFacingLeft1:
    .byte $02,$02
    .byte $FC,$D8,$A2,$FA
    .byte $80

EnFrame_KraidNailFacingLeft2:
    .byte $02,$02
    .byte $FE,$D9,$A2,$FC
    .byte $80

EnFrame_KraidNailFacingLeft3:
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

;Mellow.
EnFrame8A:
EnFrame8B:
EnFrame8C:
EnFrame8D:
EnFrame8E:
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

EnFrame_KraidFacingLeft0:
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

EnFrame_KraidFacingLeft1:
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

EnFrame_KraidExplodeFacingRight:
    .byte $80,$00
    .byte $00,$F4,$C5,$22,$F8
    .byte $01,$F4,$C7,$22,$00
    .byte $02,$FC,$D5,$22,$F8
    .byte $03,$FC,$D7,$22,$00
    .byte $04,$04,$E5,$22,$F8
    .byte $05,$04,$E7,$22,$00
    .byte $80

EnFrame_KraidExplodeFacingLeft:
    .byte $80,$00
    .byte $00,$F4,$C7,$22,$F8
    .byte $01,$F4,$C5,$22,$00
    .byte $02,$FC,$D7,$22,$F8
    .byte $03,$FC,$D5,$22,$00
    .byte $04,$04,$E7,$22,$F8
    .byte $05,$04,$E5,$22,$00
    .byte $80
