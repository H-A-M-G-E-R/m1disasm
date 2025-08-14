; TODO: Organized this better and maybe split it up more sensibly.

;---------------------------------[ Object animation data tables ]----------------------------------

;The following tables are indices into the ObjFramePtrTable that correspond to various animations. The
;ObjFramePtrTable represents individual frames and the entries in ObjectAnimIndexTbl are the groups of
;frames responsible for animaton Samus, her weapons and other objects.
;$F7 means the frame is invisible, $FF means animation ends.



ObjectAnimIndexTbl:

;Samus run animation.
ObjAnim_SamusRun: ;$00
    .byte _id_ObjFrame_CrazyBus0, _id_ObjFrame_CrazyBus1, $FF, $FF

;Samus front animation.
ObjAnim_SamusFront: ;$04
    .byte _id_ObjFrame_CrazyBus0, $FF

;Samus jump out of ball animation.
ObjAnim_Unroll: ;$06
    .byte _id_ObjFrame_CrazyBus0
;Samus Stand animation.
ObjAnim_SamusStand: ;$07
    .byte _id_ObjFrame_CrazyBus0, $FF

;Samus stand and fire animation.
ObjAnim_SamusStandFire: ;$09
    .byte _id_ObjFrame_CrazyBus0, $FF

;Samus stand and jump animation.
ObjAnim_SamusJumpTransition: ;$0B
    .byte _id_ObjFrame_CrazyBus0
;Samus Jump animation.
ObjAnim_SamusJump: ;$0C
    .byte _id_ObjFrame_CrazyBus0, $FF

;Samus somersault animation.
ObjAnim_SamusSalto: ;$0E
    .byte _id_ObjFrame_CrazyBus0, _id_ObjFrame_CrazyBus1, _id_ObjFrame_CrazyBus0, _id_ObjFrame_CrazyBus1, $FF

;Samus run and jump animation.
ObjAnim_SamusRunJump: ;$13
    .byte _id_ObjFrame_CrazyBus0, _id_ObjFrame_CrazyBus0, $FF

;Samus roll animation.
ObjAnim_SamusRoll: ;$16
    .byte _id_ObjFrame_CrazyBus0, _id_ObjFrame_CrazyBus1, _id_ObjFrame_CrazyBus0, _id_ObjFrame_CrazyBus1, $FF

;Bullet animation.
ObjAnim_RegularBullet: ;$1B
    .byte _id_ObjFrame28, $FF

;Bullet hit animation.
ObjAnim_BulletHit: ;$1D
    .byte _id_ObjFrame2A, _id_ObjFrame2A, _id_ObjFrame2A, $F7, $FF

;Samus jump and fire animation.
ObjAnim_SamusJumpFire: ;$20
    .byte _id_ObjFrame_CrazyBus0, $FF

;Samus run and fire animation.
ObjAnim_SamusRunFire: ;$22
    .byte _id_ObjFrame_CrazyBus0, _id_ObjFrame_CrazyBus1, $FF, $FF

;Samus point up and shoot animation.
ObjAnim_SamusPntUpFire: ;$26
    .byte _id_ObjFrame_CrazyBus0
;Samus point up animation.
ObjAnim_SamusPntUp: ;$27
    .byte _id_ObjFrame_CrazyBus0, $FF

;Door open animation.
ObjAnim_DoorOpen: ;$29
    .byte _id_ObjFrame31, _id_ObjFrame31, _id_ObjFrame33
ObjAnim_DoorOpen_Reset: ;$2C
    .byte _id_ObjFrame_DoorOpened, $FF

;Door close animation.
ObjAnim_DoorClose: ;$2E
    .byte _id_ObjFrame33, _id_ObjFrame33
ObjAnim_DoorClose_Reset: ;$30
    .byte _id_ObjFrame31, $FF

;Samus explode animation.
ObjAnim_SamusExplode: ;$32
    .byte _id_ObjFrame_CrazyBusExplode, $FF

;Samus jump and point up animation.
ObjAnim_SamusJumpPntUpFire: ;$34
    .byte _id_ObjFrame_CrazyBus0, $FF
ObjAnim_SamusJumpPntUpTransition:
    .byte _id_ObjFrame_CrazyBus0
ObjAnim_SamusJumpPntUp: ;$35
    .byte _id_ObjFrame_CrazyBus0, $FF

;Samus run and point up animation.
ObjAnim_SamusRunPntUp: ;$37
    .byte _id_ObjFrame_CrazyBus0, _id_ObjFrame_CrazyBus1, $FF, $FF

;Samus run, point up and shoot animation 1.
ObjAnim_SamusRunPntUpFire1: ;$3B
    .byte _id_ObjFrame_CrazyBus0, $FF

;Samus run, point up and shoot animation 2.
ObjAnim_SamusRunPntUpFire2: ;$3D
    .byte _id_ObjFrame_CrazyBus1, $FF

;Samus run, point up and shoot animation 3.
ObjAnim_SamusRunPntUpFire3: ;$3F
    .byte _id_ObjFrame_CrazyBus0, $FF

;Wave beam animation.
ObjAnim_WaveBeam: ;$7D
    .byte _id_ObjFrame4B, $FF

;Bomb tick animation.
ObjAnim_BombTick: ;$7F
    .byte _id_ObjFrame4E, _id_ObjFrame4F, $FF

;Bomb explode animation.
ObjAnim_BombExplode: ;$82
    .byte _id_ObjFrame3C, _id_ObjFrame4A, _id_ObjFrame49, _id_ObjFrame4A, _id_ObjFrame4D, _id_ObjFrame4A, _id_ObjFrame4D, $F7, $FF

;Missile left animation.
ObjAnim_MissileLeft: ;$8B
    .byte _id_ObjFrame26, $FF

;Missile right animation.
ObjAnim_MissileRight: ;$8D
    .byte _id_ObjFrame25, $FF

;Missile up animation.
ObjAnim_MissileUp: ;$8F
    .byte _id_ObjFrame27, $FF

;Missile explode animation.
ObjAnim_MissileExplode: ;$91
    .byte _id_ObjFrame67, _id_ObjFrame67, _id_ObjFrame67, _id_ObjFrame68, _id_ObjFrame68, _id_ObjFrame69, $F7, $FF

;Ice bullet animation.
ObjAnim_IceBullet:
    .byte _id_ObjFrame_IceBullet, $FF

;Ice bullet hit animation.
ObjAnim_IceBulletHit:
    .byte _id_ObjFrame_IceBulletHit, _id_ObjFrame_IceBulletHit, _id_ObjFrame_IceBulletHit, $F7, $FF

;Wave + ice beam animation.
ObjAnim_WaveIceBeam: ;$7D
    .byte _id_ObjFrame_WaveIceBeam, $FF

;Samus spider ball animation.
ObjAnim_SamusSpider:
    .byte _id_ObjFrame_CrazyBus0, _id_ObjFrame_CrazyBus1, _id_ObjFrame_CrazyBus0, _id_ObjFrame_CrazyBus1, $FF

;----------------------------[ Sprite drawing pointer tables ]--------------------------------------

;The above animation pointers provide an index into the following table
;for the animation sequences.
ObjFramePtrTable:
    PtrTableEntry ObjFramePtrTable, ObjFrame_CrazyBus0
    PtrTableEntry ObjFramePtrTable, ObjFrame_CrazyBus1
    PtrTableEntry ObjFramePtrTable, ObjFrame_CrazyBusExplode
    PtrTableEntry ObjFramePtrTable, ObjFrame03
    PtrTableEntry ObjFramePtrTable, ObjFrame04
    PtrTableEntry ObjFramePtrTable, ObjFrame05
    PtrTableEntry ObjFramePtrTable, ObjFrame07
    PtrTableEntry ObjFramePtrTable, ObjFrame08
    PtrTableEntry ObjFramePtrTable, ObjFrame0C
    PtrTableEntry ObjFramePtrTable, ObjFrame0D
    PtrTableEntry ObjFramePtrTable, ObjFrame0E
    PtrTableEntry ObjFramePtrTable, ObjFrame10
    PtrTableEntry ObjFramePtrTable, ObjFrame12
    PtrTableEntry ObjFramePtrTable, ObjFrame17
    PtrTableEntry ObjFramePtrTable, ObjFrame18
    PtrTableEntry ObjFramePtrTable, ObjFrame19
    PtrTableEntry ObjFramePtrTable, ObjFrame1A
    PtrTableEntry ObjFramePtrTable, ObjFrame1B
    PtrTableEntry ObjFramePtrTable, ObjFrame1C
    PtrTableEntry ObjFramePtrTable, ObjFrame1D
    PtrTableEntry ObjFramePtrTable, ObjFrame1E
    PtrTableEntry ObjFramePtrTable, ObjFrame22
    PtrTableEntry ObjFramePtrTable, ObjFrame23
    PtrTableEntry ObjFramePtrTable, ObjFrame25
    PtrTableEntry ObjFramePtrTable, ObjFrame26
    PtrTableEntry ObjFramePtrTable, ObjFrame27
    PtrTableEntry ObjFramePtrTable, ObjFrame28
    PtrTableEntry ObjFramePtrTable, ObjFrame_IceBulletHit
    PtrTableEntry ObjFramePtrTable, ObjFrame2A
    PtrTableEntry ObjFramePtrTable, ObjFrame2B
    PtrTableEntry ObjFramePtrTable, ObjFrame30
    PtrTableEntry ObjFramePtrTable, ObjFrame31
    PtrTableEntry ObjFramePtrTable, ObjFrame33
    PtrTableEntry ObjFramePtrTable, ObjFrame35
    PtrTableEntry ObjFramePtrTable, ObjFrame38
    PtrTableEntry ObjFramePtrTable, ObjFrame39
    PtrTableEntry ObjFramePtrTable, ObjFrame3C
    PtrTableEntry ObjFramePtrTable, ObjFrame40
    PtrTableEntry ObjFramePtrTable, ObjFrame41
    PtrTableEntry ObjFramePtrTable, ObjFrame42
    PtrTableEntry ObjFramePtrTable, ObjFrame46
    PtrTableEntry ObjFramePtrTable, ObjFrame47
    PtrTableEntry ObjFramePtrTable, ObjFrame48
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSpider0
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSpider1
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSpider2
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSpider3
    PtrTableEntry ObjFramePtrTable, ObjFrame49
    PtrTableEntry ObjFramePtrTable, ObjFrame4A
    PtrTableEntry ObjFramePtrTable, ObjFrame4B
    PtrTableEntry ObjFramePtrTable, ObjFrame_WaveIceBeam
    PtrTableEntry ObjFramePtrTable, ObjFrame4D
    PtrTableEntry ObjFramePtrTable, ObjFrame4E
    PtrTableEntry ObjFramePtrTable, ObjFrame4F
    PtrTableEntry ObjFramePtrTable, ObjFrame50
    PtrTableEntry ObjFramePtrTable, ObjFrame51
    PtrTableEntry ObjFramePtrTable, ObjFrame52
    PtrTableEntry ObjFramePtrTable, ObjFrame53
    PtrTableEntry ObjFramePtrTable, ObjFrame54
    PtrTableEntry ObjFramePtrTable, ObjFrame55
    PtrTableEntry ObjFramePtrTable, ObjFrame56
    PtrTableEntry ObjFramePtrTable, ObjFrame57
    PtrTableEntry ObjFramePtrTable, ObjFrame58
    PtrTableEntry ObjFramePtrTable, ObjFrame59
    PtrTableEntry ObjFramePtrTable, ObjFrame5A
    PtrTableEntry ObjFramePtrTable, ObjFrame65
    PtrTableEntry ObjFramePtrTable, ObjFrame66
    PtrTableEntry ObjFramePtrTable, ObjFrame67
    PtrTableEntry ObjFramePtrTable, ObjFrame68
    PtrTableEntry ObjFramePtrTable, ObjFrame69
    PtrTableEntry ObjFramePtrTable, ObjFrame_IceBullet
    PtrTableEntry ObjFramePtrTable, ObjFrame_DoorOpened

/*
SamusCHRBankTable:
.if CFG_NUM_SAMUS_TILES == 16
    .byte SamusSuitGFX0/$400 ; ObjFrame_CrazyBus0
    .byte SamusSuitGFX0/$400 ; ObjFrame_CrazyBus1
    .byte SamusSuitGFX0/$400 ; ObjFrame_CrazyBusExplode
    .byte SamusSuitGFX0/$400 ; ObjFrame03
    .byte SamusSuitGFX1/$400 ; ObjFrame04
    .byte SamusSuitGFX2/$400 ; ObjFrame05
    .byte SamusSuitGFX4/$400 ; ObjFrame07
    .byte SamusSuitGFX5/$400 ; ObjFrame08
    .byte SamusSuitGFX0/$400 ; ObjFrame0C
    .byte SamusSuitGFX1/$400 ; ObjFrame0D
    .byte SamusSuitGFX2/$400 ; ObjFrame0E
    .byte SamusSuitGFX6/$400 ; ObjFrame10
    .byte SamusSuitGFX6/$400 ; ObjFrame12
    .byte SamusSuitGFX7/$400 ; ObjFrame17
    .byte SamusSuitGFX7/$400 ; ObjFrame18
    .byte SamusSuitGFX7/$400 ; ObjFrame19
    .byte SamusSuitGFX7/$400 ; ObjFrame1A
    .byte SamusSuitGFX7/$400 ; ObjFrame1B
    .byte SamusSuitGFX7/$400 ; ObjFrame1C
    .byte SamusSuitGFX7/$400 ; ObjFrame1D
    .byte SamusSuitGFX7/$400 ; ObjFrame1E
    .byte SamusSuitGFX5/$400 ; ObjFrame22
    .byte $00 ; ObjFrame23
    .byte $00 ; ObjFrame25
    .byte $00 ; ObjFrame26
    .byte $00 ; ObjFrame27
    .byte $00 ; ObjFrame28
    .byte $00 ; ObjFrame_IceBulletHit
    .byte $00 ; ObjFrame2A
    .byte SamusSuitGFX5/$400 ; ObjFrame2B
    .byte SamusSuitGFX5/$400 ; ObjFrame30
    .byte $00 ; ObjFrame31
    .byte $00 ; ObjFrame33
    .byte SamusSuitGFX4/$400 ; ObjFrame35
    .byte SamusSuitGFX6/$400 ; ObjFrame38
    .byte SamusSuitGFX6/$400 ; ObjFrame39
    .byte $00 ; ObjFrame3C
    .byte SamusSuitGFX0/$400 ; ObjFrame40
    .byte SamusSuitGFX3/$400 ; ObjFrame41
    .byte SamusSuitGFX3/$400 ; ObjFrame42
    .byte SamusSuitGFX0/$400 ; ObjFrame46
    .byte SamusSuitGFX3/$400 ; ObjFrame47
    .byte SamusSuitGFX3/$400 ; ObjFrame48
    .byte SamusSuitGFXSpider/$400 ; ObjFrame_SamusSpider0
    .byte SamusSuitGFXSpider/$400 ; ObjFrame_SamusSpider1
    .byte SamusSuitGFXSpider/$400 ; ObjFrame_SamusSpider2
    .byte SamusSuitGFXSpider/$400 ; ObjFrame_SamusSpider3
.elif CFG_NUM_SAMUS_TILES == 32
    .byte SamusSuitGFX0/$400 ; ObjFrame_CrazyBus0
    .byte SamusSuitGFX0/$400 ; ObjFrame_CrazyBus1
    .byte SamusSuitGFX0/$400 ; ObjFrame_CrazyBusExplode
    .byte SamusSuitGFX0/$400 ; ObjFrame03
    .byte SamusSuitGFX0/$400 ; ObjFrame04
    .byte SamusSuitGFX0/$400 ; ObjFrame05
    .byte SamusSuitGFX1/$400 ; ObjFrame07
    .byte SamusSuitGFX2/$400 ; ObjFrame08
    .byte SamusSuitGFX0/$400 ; ObjFrame0C
    .byte SamusSuitGFX0/$400 ; ObjFrame0D
    .byte SamusSuitGFX0/$400 ; ObjFrame0E
    .byte SamusSuitGFX0/$400 ; ObjFrame10
    .byte SamusSuitGFX0/$400 ; ObjFrame12
    .byte SamusSuitGFX1/$400 ; ObjFrame17
    .byte SamusSuitGFX1/$400 ; ObjFrame18
    .byte SamusSuitGFX1/$400 ; ObjFrame19
    .byte SamusSuitGFX1/$400 ; ObjFrame1A
    .byte SamusSuitGFX1/$400 ; ObjFrame1B
    .byte SamusSuitGFX1/$400 ; ObjFrame1C
    .byte SamusSuitGFX1/$400 ; ObjFrame1D
    .byte SamusSuitGFX1/$400 ; ObjFrame1E
    .byte SamusSuitGFX2/$400 ; ObjFrame22
    .byte $00 ; ObjFrame23
    .byte $00 ; ObjFrame25
    .byte $00 ; ObjFrame26
    .byte $00 ; ObjFrame27
    .byte $00 ; ObjFrame28
    .byte $00 ; ObjFrame_IceBulletHit
    .byte $00 ; ObjFrame2A
    .byte SamusSuitGFX2/$400 ; ObjFrame2B
    .byte SamusSuitGFX2/$400 ; ObjFrame30
    .byte $00 ; ObjFrame31
    .byte $00 ; ObjFrame33
    .byte SamusSuitGFX1/$400 ; ObjFrame35
    .byte SamusSuitGFX2/$400 ; ObjFrame38
    .byte SamusSuitGFX2/$400 ; ObjFrame39
    .byte $00 ; ObjFrame3C
    .byte SamusSuitGFX2/$400 ; ObjFrame40
    .byte SamusSuitGFX2/$400 ; ObjFrame41
    .byte SamusSuitGFX2/$400 ; ObjFrame42
    .byte SamusSuitGFX2/$400 ; ObjFrame46
    .byte SamusSuitGFX2/$400 ; ObjFrame47
    .byte SamusSuitGFX2/$400 ; ObjFrame48
    .byte SamusSuitGFXSpider/$400 ; ObjFrame_SamusSpider0
    .byte SamusSuitGFXSpider/$400 ; ObjFrame_SamusSpider1
    .byte SamusSuitGFXSpider/$400 ; ObjFrame_SamusSpider2
    .byte SamusSuitGFXSpider/$400 ; ObjFrame_SamusSpider3
.endif
*/
;-------------------------------[ Sprite frame data tables ]---------------------------------------

;Frame drawing data. The format for the frame drawing data is as follows:
;The first two bytes are the y radius and x radius respectively.
;
;Then for each 4 bytes defining a sprite, the first byte defines the y position,
;the second byte defines the tile index, the third byte define the attributes,
;and the fourth byte defines the x position.
;
;They are then terminated with $80.

;Samus run.
ObjFrame03:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$02,$20,$00
    .byte $F8,$03,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $08,$06,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$02,$20,$00
    .byte $F8,$03,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $08,$06,$60,$F8
    .byte $80
.endif

;Samus run.
ObjFrame04:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$02,$20,$00
    .byte $F8,$03,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $08,$06,$60,$00
    .byte $08,$07,$60,$F8
    .byte $08,$08,$60,$F0
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F0,$07,$60,$00
    .byte $F0,$08,$60,$F8
    .byte $F8,$09,$20,$00
    .byte $F8,$0A,$20,$F8
    .byte $00,$0B,$60,$00
    .byte $00,$0C,$60,$F8
    .byte $08,$0D,$60,$00
    .byte $08,$0E,$60,$F8
    .byte $08,$0F,$60,$F0
    .byte $80
.endif

;Samus run.
ObjFrame05:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$02,$20,$00
    .byte $F8,$03,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $00,$06,$60,$F0
    .byte $08,$07,$60,$00
    .byte $08,$08,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F0,$10,$60,$00
    .byte $F0,$11,$60,$F8
    .byte $F8,$12,$20,$00
    .byte $F8,$13,$20,$F8
    .byte $00,$14,$60,$00
    .byte $00,$15,$60,$F8
    .byte $00,$16,$60,$F0
    .byte $08,$17,$60,$00
    .byte $08,$18,$60,$F8
    .byte $80
.endif

;Samus facing forward.
ObjFrame07:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F0,$00,$20,$F8
    .byte $F0,$01,$20,$00
    .byte $F8,$02,$20,$F8
    .byte $F8,$03,$20,$00
    .byte $00,$04,$20,$F8
    .byte $00,$05,$20,$00
    .byte $08,$06,$20,$F8
    .byte $08,$06,$60,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F0,$00,$20,$F8
    .byte $F0,$01,$20,$00
    .byte $F8,$02,$20,$F8
    .byte $F8,$03,$20,$00
    .byte $00,$04,$20,$F8
    .byte $00,$05,$20,$00
    .byte $08,$06,$20,$F8
    .byte $08,$06,$60,$00
    .byte $80
.endif

;Samus stand.
ObjFrame08:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F0,$00,$20,$00
    .byte $F0,$01,$20,$F8
    .byte $F8,$02,$20,$00
    .byte $F8,$03,$20,$F8
    .byte $00,$04,$20,$00
    .byte $00,$05,$20,$F8
    .byte $08,$06,$60,$00
    .byte $08,$07,$60,$F8
    .byte $F8,$08,$60,$04
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F0,$00,$20,$00
    .byte $F0,$01,$20,$F8
    .byte $F8,$02,$20,$00
    .byte $F8,$03,$20,$F8
    .byte $00,$04,$20,$00
    .byte $00,$05,$20,$F8
    .byte $08,$06,$60,$00
    .byte $08,$07,$60,$F8
    .byte $F8,$08,$60,$04
    .byte $80
.endif

;Samus run and fire.
ObjFrame0C:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$07,$20,$08
    .byte $F8,$08,$20,$00
    .byte $F8,$09,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $08,$06,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$19,$20,$08
    .byte $F8,$1A,$20,$00
    .byte $F8,$1B,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $08,$06,$60,$F8
    .byte $80
.endif

;Samus run and fire.
ObjFrame0D:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F0,$09,$60,$00
    .byte $F0,$0A,$60,$F8
    .byte $F8,$0B,$20,$08
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $08,$06,$60,$00
    .byte $08,$07,$60,$F8
    .byte $08,$08,$60,$F0
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$19,$20,$08
    .byte $F8,$1A,$20,$00
    .byte $F8,$1B,$20,$F8
    .byte $00,$0B,$60,$00
    .byte $00,$0C,$60,$F8
    .byte $08,$0D,$60,$00
    .byte $08,$0E,$60,$F8
    .byte $08,$0F,$60,$F0
    .byte $80
.endif

;Samus run and fire.
ObjFrame0E:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F0,$09,$60,$00
    .byte $F0,$0A,$60,$F8
    .byte $F8,$0B,$20,$08
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $00,$06,$60,$F0
    .byte $08,$07,$60,$00
    .byte $08,$08,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$19,$20,$08
    .byte $F8,$1A,$20,$00
    .byte $F8,$1B,$20,$F8
    .byte $00,$14,$60,$00
    .byte $00,$15,$60,$F8
    .byte $00,$16,$60,$F0
    .byte $08,$17,$60,$00
    .byte $08,$18,$60,$F8
    .byte $80
.endif

;Samus stand and jump.
ObjFrame10:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$02,$20,$00
    .byte $F8,$03,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $00,$06,$60,$F0
    .byte $08,$07,$60,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$02,$20,$00
    .byte $F8,$03,$20,$F8
    .byte $00,$0B,$60,$00
    .byte $00,$1C,$60,$F8
    .byte $00,$1D,$60,$F0
    .byte $08,$0D,$60,$00
    .byte $80
.endif

;Samus jump and fire.
ObjFrame12:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$08,$20,$08
    .byte $F8,$09,$20,$00
    .byte $F8,$0A,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $00,$06,$60,$F0
    .byte $08,$07,$60,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$19,$20,$08
    .byte $F8,$1A,$20,$00
    .byte $F8,$1B,$20,$F8
    .byte $00,$0B,$60,$00
    .byte $00,$1C,$60,$F8
    .byte $00,$1D,$60,$F0
    .byte $08,$0D,$60,$00
    .byte $80
.endif

;Samus somersault.
ObjFrame17:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F3,$00,$60,$00
    .byte $F3,$01,$60,$F8
    .byte $FB,$02,$60,$00
    .byte $FB,$03,$60,$F8
    .byte $03,$04,$60,$00
    .byte $03,$05,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F3,$07,$60,$00
    .byte $F3,$08,$60,$F8
    .byte $FB,$09,$60,$00
    .byte $FB,$0A,$60,$F8
    .byte $03,$0B,$60,$00
    .byte $03,$0C,$60,$F8
    .byte $80
.endif

;Samus somersault.
ObjFrame18:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F8,$06,$60,$02
    .byte $F8,$07,$60,$FA
    .byte $F8,$08,$60,$F2
    .byte $00,$09,$60,$02
    .byte $00,$0A,$60,$FA
    .byte $00,$0B,$60,$F2
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F8,$0D,$60,$02
    .byte $F8,$0E,$60,$FA
    .byte $F8,$0F,$60,$F2
    .byte $00,$10,$60,$02
    .byte $00,$11,$60,$FA
    .byte $00,$12,$60,$F2
    .byte $80
.endif

;Samus somersault.
ObjFrame19:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $05,$00,$A0,$F8
    .byte $05,$01,$A0,$00
    .byte $FD,$02,$A0,$F8
    .byte $FD,$03,$A0,$00
    .byte $F5,$04,$A0,$F8
    .byte $F5,$05,$A0,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $05,$07,$A0,$F8
    .byte $05,$08,$A0,$00
    .byte $FD,$09,$A0,$F8
    .byte $FD,$0A,$A0,$00
    .byte $F5,$0B,$A0,$F8
    .byte $F5,$0C,$A0,$00
    .byte $80
.endif

;Samus somersault.
ObjFrame1A:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $00,$06,$A0,$F6
    .byte $00,$07,$A0,$FE
    .byte $00,$08,$A0,$06
    .byte $F8,$09,$A0,$F6
    .byte $F8,$0A,$A0,$FE
    .byte $F8,$0B,$A0,$06
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $00,$0D,$A0,$F6
    .byte $00,$0E,$A0,$FE
    .byte $00,$0F,$A0,$06
    .byte $F8,$10,$A0,$F6
    .byte $F8,$11,$A0,$FE
    .byte $F8,$12,$A0,$06
    .byte $80
.endif

;Samus roll.
ObjFrame1B:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $07,$04 ; changed y radius from 8 to 7 to compensate for spider ball
    .byte $F6,$0C,$20,$F8
    .byte $F6,$0D,$20,$00
    .byte $FE,$0E,$20,$F8
    .byte $FE,$0F,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $07,$04
    .byte $F6,$13,$20,$F8
    .byte $F6,$14,$20,$00
    .byte $FE,$15,$20,$F8
    .byte $FE,$16,$20,$00
    .byte $80
.endif

;Samus roll.
ObjFrame1C:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $07,$04
    .byte $02,$0C,$A0,$F8
    .byte $02,$0D,$A0,$00
    .byte $FA,$0E,$A0,$F8
    .byte $FA,$0F,$A0,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $07,$04
    .byte $02,$13,$A0,$F8
    .byte $02,$14,$A0,$00
    .byte $FA,$15,$A0,$F8
    .byte $FA,$16,$A0,$00
    .byte $80
.endif

;Samus roll.
ObjFrame1D:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $07,$04
    .byte $02,$0C,$E0,$00
    .byte $02,$0D,$E0,$F8
    .byte $FA,$0E,$E0,$00
    .byte $FA,$0F,$E0,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $07,$04
    .byte $02,$13,$E0,$00
    .byte $02,$14,$E0,$F8
    .byte $FA,$15,$E0,$00
    .byte $FA,$16,$E0,$F8
    .byte $80
.endif

;Samus roll.
ObjFrame1E:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $07,$04
    .byte $F6,$0C,$60,$00
    .byte $F6,$0D,$60,$F8
    .byte $FE,$0E,$60,$00
    .byte $FE,$0F,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $07,$04
    .byte $F6,$13,$60,$00
    .byte $F6,$14,$60,$F8
    .byte $FE,$15,$60,$00
    .byte $FE,$16,$60,$F8
    .byte $80
.endif

;Samus stand and fire.
ObjFrame22:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $F0,$00,$20,$00
    .byte $F0,$01,$20,$F8
    .byte $F8,$02,$20,$00
    .byte $F8,$03,$20,$F8
    .byte $00,$04,$20,$00
    .byte $00,$05,$20,$F8
    .byte $08,$06,$60,$00
    .byte $08,$07,$60,$F8
    .byte $F8,$08,$60,$02
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $F0,$00,$20,$00
    .byte $F0,$01,$20,$F8
    .byte $F8,$02,$20,$00
    .byte $F8,$03,$20,$F8
    .byte $00,$04,$20,$00
    .byte $00,$05,$20,$F8
    .byte $08,$06,$60,$00
    .byte $08,$07,$60,$F8
    .byte $F8,$08,$60,$02
    .byte $80
.endif

;Elevator.
ObjFrame23:
    .byte $04,$10
    .byte $FC,$00+CFG_NUM_SAMUS_TILES,$20,$F0
    .byte $FC,$01+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $FC,$01+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $FC,$00+CFG_NUM_SAMUS_TILES,$60,$08
    .byte $80

;Missile right.
ObjFrame25:
    .byte $04,$08
    .byte $FC,$02+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $FC,$03+CFG_NUM_SAMUS_TILES,$60,$F8
    .byte $80

;Missile left.
ObjFrame26:
    .byte $04,$08
    .byte $FC,$02+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $FC,$03+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80

;Missile up.
ObjFrame27:
    .byte $08,$04
    .byte $F8,$04+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $00,$05+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Bullet fire.
ObjFrame28:
    .byte $02,$02
    .byte $FC,$06+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Bullet hit.
ObjFrame2A:
    .byte $00,$00
    .byte $FC,$07+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Ice bullet fire.
ObjFrame_IceBullet:
    .byte $02,$02
    .byte $FC,$06+CFG_NUM_SAMUS_TILES,$21,$FC
    .byte $80

;Ice bullet hit.
ObjFrame_IceBulletHit:
    .byte $00,$00
    .byte $FC,$07+CFG_NUM_SAMUS_TILES,$21,$FC
    .byte $80

;Samus stand and point up.
ObjFrame2B:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $E8,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$04,$20,$00
    .byte $00,$05,$20,$F8
    .byte $08,$06,$60,$00
    .byte $08,$07,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $E8,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$04,$20,$00
    .byte $00,$05,$20,$F8
    .byte $08,$06,$60,$00
    .byte $08,$07,$60,$F8
    .byte $80
.endif

;Samus from ball to pointing up.
ObjFrame30:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $EA,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$04,$20,$00
    .byte $00,$05,$20,$F8
    .byte $08,$06,$60,$00
    .byte $08,$07,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $EA,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$04,$20,$00
    .byte $00,$05,$20,$F8
    .byte $08,$06,$60,$00
    .byte $08,$07,$60,$F8
    .byte $80
.endif

;Door closed.
ObjFrame31:
    .byte $18,$08
    .byte $E8,$08+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $F0,$09+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $F8,$0A+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$0A+CFG_NUM_SAMUS_TILES,$A0,$00
    .byte $08,$09+CFG_NUM_SAMUS_TILES,$A0,$00
    .byte $10,$08+CFG_NUM_SAMUS_TILES,$A0,$00
    .byte $80

;Door open/close.
ObjFrame33:
    .byte $18,$04
    .byte $E8,$0B+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $F0,$0C+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $F8,$0D+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$0D+CFG_NUM_SAMUS_TILES,$A0,$00
    .byte $08,$0C+CFG_NUM_SAMUS_TILES,$A0,$00
    .byte $10,$0B+CFG_NUM_SAMUS_TILES,$A0,$00
    .byte $80

;Door opened.
ObjFrame_DoorOpened:
    .byte $18,$04
    .byte $80

;Samus explode.
ObjFrame35:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $80,$00
    .byte $00,$F0,$07,$20,$F8
    .byte $01,$F0,$08,$20,$00
    .byte $02,$F8,$09,$20,$F8
    .byte $03,$F8,$0A,$20,$00
    .byte $04,$00,$0B,$20,$F8
    .byte $05,$00,$0C,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $80,$00
    .byte $00,$F0,$17,$20,$F8
    .byte $01,$F0,$18,$20,$00
    .byte $02,$F8,$19,$20,$F8
    .byte $03,$F8,$1A,$20,$00
    .byte $04,$00,$1B,$20,$F8
    .byte $05,$00,$1C,$20,$00
    .byte $80
.endif

;Samus jump and point up.
ObjFrame38:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $E8,$0B,$60,$FC
    .byte $F0,$0C,$20,$00
    .byte $F0,$0D,$20,$F8
    .byte $F8,$0E,$20,$00
    .byte $F8,$0F,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $00,$06,$60,$F0
    .byte $08,$07,$60,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $E8,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$0E,$60,$00
    .byte $00,$0F,$60,$F8
    .byte $00,$10,$60,$F0
    .byte $08,$11,$60,$00
    .byte $80
.endif

;Samus jump and point up.
ObjFrame39:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $EA,$0B,$60,$FC
    .byte $F0,$0C,$20,$00
    .byte $F0,$0D,$20,$F8
    .byte $F8,$0E,$20,$00
    .byte $F8,$0F,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $00,$06,$60,$F0
    .byte $08,$07,$60,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $EA,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$0E,$60,$00
    .byte $00,$0F,$60,$F8
    .byte $00,$10,$60,$F0
    .byte $08,$11,$60,$00
    .byte $80
.endif

;Bomb explode.
ObjFrame3C:
    .byte $0C,$0C
    .byte $F8,$0E+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$0E+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $00,$0E+CFG_NUM_SAMUS_TILES,$A0,$F8
    .byte $00,$0E+CFG_NUM_SAMUS_TILES,$E0,$00
    .byte $80

;Samus run and point up.
ObjFrame40:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $E8,$0A,$60,$FC
    .byte $F0,$0B,$20,$00
    .byte $F0,$0C,$20,$F8
    .byte $F8,$0D,$20,$00
    .byte $F8,$0E,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $08,$06,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $E8,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$12,$60,$00
    .byte $00,$13,$60,$F8
    .byte $08,$14,$60,$F8
    .byte $80
.endif

;Samus run and point up.
ObjFrame41:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $E8,$00,$60,$FC
    .byte $F0,$01,$20,$00
    .byte $F0,$02,$20,$F8
    .byte $F8,$03,$20,$00
    .byte $F8,$04,$20,$F8
    .byte $00,$05,$60,$00
    .byte $00,$06,$60,$F8
    .byte $08,$07,$60,$00
    .byte $08,$08,$60,$F8
    .byte $08,$09,$60,$F0
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $E8,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$0E,$60,$00
    .byte $00,$15,$60,$F8
    .byte $08,$11,$60,$00
    .byte $08,$16,$60,$F8
    .byte $08,$17,$60,$F0
    .byte $80
.endif

;Samus run and point up.
ObjFrame42:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $E8,$00,$60,$FC
    .byte $F0,$01,$20,$00
    .byte $F0,$02,$20,$F8
    .byte $F8,$03,$20,$00
    .byte $F8,$04,$20,$F8
    .byte $00,$0A,$60,$00
    .byte $00,$0B,$60,$F8
    .byte $00,$0C,$60,$F0
    .byte $08,$0D,$60,$00
    .byte $08,$0E,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $E8,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$18,$60,$00
    .byte $00,$19,$60,$F8
    .byte $00,$1A,$60,$F0
    .byte $08,$1B,$60,$00
    .byte $08,$1C,$60,$F8
    .byte $80
.endif

;Samus run and point up.
ObjFrame46:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $EA,$0A,$60,$FC
    .byte $F0,$0B,$20,$00
    .byte $F0,$0C,$20,$F8
    .byte $F8,$0D,$20,$00
    .byte $F8,$0E,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $08,$06,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $EA,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$12,$60,$00
    .byte $00,$13,$60,$F8
    .byte $08,$14,$60,$F8
    .byte $80
.endif

;Samus point up, run and fire.
ObjFrame47:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $EA,$00,$60,$FC
    .byte $F0,$01,$20,$00
    .byte $F0,$02,$20,$F8
    .byte $F8,$03,$20,$00
    .byte $F8,$04,$20,$F8
    .byte $00,$05,$60,$00
    .byte $00,$06,$60,$F8
    .byte $08,$07,$60,$00
    .byte $08,$08,$60,$F8
    .byte $08,$09,$60,$F0
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $EA,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$0E,$60,$00
    .byte $00,$15,$60,$F8
    .byte $08,$11,$60,$00
    .byte $08,$16,$60,$F8
    .byte $08,$17,$60,$F0
    .byte $80
.endif

;Samus point up, run and fire.
ObjFrame48:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $0F,$04
    .byte $EA,$00,$60,$FC
    .byte $F0,$01,$20,$00
    .byte $F0,$02,$20,$F8
    .byte $F8,$03,$20,$00
    .byte $F8,$04,$20,$F8
    .byte $00,$0A,$60,$00
    .byte $00,$0B,$60,$F8
    .byte $00,$0C,$60,$F0
    .byte $08,$0D,$60,$00
    .byte $08,$0E,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $0F,$04
    .byte $EA,$09,$60,$FC
    .byte $F0,$0A,$20,$00
    .byte $F0,$0B,$20,$F8
    .byte $F8,$0C,$20,$00
    .byte $F8,$0D,$20,$F8
    .byte $00,$18,$60,$00
    .byte $00,$19,$60,$F8
    .byte $00,$1A,$60,$F0
    .byte $08,$1B,$60,$00
    .byte $08,$1C,$60,$F8
    .byte $80
.endif

;Samus spider ball.
ObjFrame_SamusSpider0:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $07,$04
    .byte $F8,$00,$20,$F8
    .byte $F8,$01,$20,$00
    .byte $00,$02,$20,$F8
    .byte $00,$03,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $07,$04
    .byte $F8,$00,$20,$F8
    .byte $F8,$01,$20,$00
    .byte $00,$02,$20,$F8
    .byte $00,$03,$20,$00
    .byte $80
.endif

;Samus spider ball.
ObjFrame_SamusSpider1:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $07,$04
    .byte $00,$00,$A0,$F8
    .byte $00,$01,$A0,$00
    .byte $F8,$02,$A0,$F8
    .byte $F8,$03,$A0,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $07,$04
    .byte $00,$00,$A0,$F8
    .byte $00,$01,$A0,$00
    .byte $F8,$02,$A0,$F8
    .byte $F8,$03,$A0,$00
    .byte $80
.endif

;Samus spider ball.
ObjFrame_SamusSpider2:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $07,$04
    .byte $FF,$00,$E0,$00
    .byte $FF,$01,$E0,$F8
    .byte $F7,$02,$E0,$00
    .byte $F7,$03,$E0,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $07,$04
    .byte $FF,$00,$E0,$00
    .byte $FF,$01,$E0,$F8
    .byte $F7,$02,$E0,$00
    .byte $F7,$03,$E0,$F8
    .byte $80
.endif

;Samus spider ball.
ObjFrame_SamusSpider3:
.if CFG_NUM_SAMUS_TILES == 16
    .byte $07,$04
    .byte $F7,$00,$60,$00
    .byte $F7,$01,$60,$F8
    .byte $FF,$02,$60,$00
    .byte $FF,$03,$60,$F8
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 32
    .byte $07,$04
    .byte $F7,$00,$60,$00
    .byte $F7,$01,$60,$F8
    .byte $FF,$02,$60,$00
    .byte $FF,$03,$60,$F8
    .byte $80
.endif

;Bomb explode.
ObjFrame49:
    .byte $0C,$0C
    .byte $F8,$0F+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$0F+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $00,$0F+CFG_NUM_SAMUS_TILES,$A0,$F8
    .byte $00,$0F+CFG_NUM_SAMUS_TILES,$E0,$00
    .byte $80

;Bomb explode.
ObjFrame4A:
    .byte $00,$00
    .byte $80

;Wave beam.
ObjFrame4B:
    .byte $04,$04
    .byte $FC,$10+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Wave + ice beam.
ObjFrame_WaveIceBeam:
    .byte $04,$04
    .byte $FC,$10+CFG_NUM_SAMUS_TILES,$21,$FC
    .byte $80

;Bomb explode.
ObjFrame4D:
    .byte $10,$10
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

;Bomb tick.
ObjFrame4E:
    .byte $04,$04
    .byte $FC,$14+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Bomb tick.
ObjFrame4F:
    .byte $04,$04
    .byte $FC,$15+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Bomb item.
ObjFrame50:
    .byte $03,$03
    .byte $F8,$30+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$31+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$32+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$33+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80

;High jump item.
ObjFrame51:
    .byte $03,$03
    .byte $F8,$34+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$35+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$36+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$37+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80

;Long beam item.
ObjFrame52:
    .byte $03,$03
    .byte $F8,$38+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$39+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$3A+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$3B+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80

;Screw attack item.
ObjFrame53:
    .byte $03,$03
    .byte $F8,$3C+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$3D+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$3E+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$3F+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80

;Maru Mari item.
ObjFrame54:
    .byte $03,$03
    .byte $F8,$40+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$41+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$42+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$43+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80

;Varia item.
ObjFrame55:
    .byte $03,$03
    .byte $F8,$44+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$45+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$46+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$47+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80

;Wave beam item.
ObjFrame56:
    .byte $03,$03
    .byte $F8,$38+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$48+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$3A+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$3B+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80

;Ice beam item.
ObjFrame57:
    .byte $03,$03
    .byte $F8,$38+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$49+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$3A+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$3B+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80

;Energy tank item.
ObjFrame58:
    .byte $03,$03
    .byte $F8,$4A+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$4B+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$4C+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$4D+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80

;Missile item.
ObjFrame59:
    .byte $03,$03
    .byte $F8,$4E+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$4E+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $00,$4F+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$4F+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $80

;Skree burrow.
ObjFrame5A:
    .byte $04,$04
    .byte $FC,$EA,$23,$FC
    .byte $80

;Kraid statue.
ObjFrame65:
    .byte $00,$08
    .byte $00,$FA,$21,$F8
    .byte $00,$FB,$21,$00
    .byte $08,$FA,$21,$F8
    .byte $08,$FB,$21,$00
    .byte $E8,$C5,$21,$F4
    .byte $E8,$C6,$21,$FC
    .byte $E8,$C7,$21,$04
    .byte $F0,$D5,$21,$F4
    .byte $F0,$D6,$21,$FC
    .byte $F0,$D7,$21,$04
    .byte $F8,$E5,$21,$F4
    .byte $F8,$E6,$21,$FC
    .byte $F8,$E7,$21,$04
    .byte $80

;Ridley statue.
ObjFrame66:
    .byte $00,$08
    .byte $00,$FA,$21,$F8
    .byte $00,$FB,$21,$00
    .byte $08,$FA,$21,$F8
    .byte $08,$FB,$21,$00
    .byte $E8,$C8,$21,$F8
    .byte $E8,$C9,$21,$00
    .byte $F0,$D8,$21,$F8
    .byte $F0,$D9,$21,$00
    .byte $F8,$E8,$21,$F8
    .byte $F8,$E9,$21,$00
    .byte $80

;Missile explode.
ObjFrame67:
    .byte $04,$08
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$00,$F8
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$40,$00
    .byte $80

;Missile explode.
ObjFrame68:
    .byte $04,$0C
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$00,$F0
    .byte $F4,$17+CFG_NUM_SAMUS_TILES,$00,$F8
    .byte $F4,$17+CFG_NUM_SAMUS_TILES,$40,$00
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$40,$08
    .byte $04,$17+CFG_NUM_SAMUS_TILES,$C0,$F8
    .byte $04,$17+CFG_NUM_SAMUS_TILES,$C0,$00
    .byte $80

;Missile explode.
ObjFrame69:
    .byte $04,$10
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$00,$E8
    .byte $EC,$17+CFG_NUM_SAMUS_TILES,$00,$F0
    .byte $EC,$17+CFG_NUM_SAMUS_TILES,$40,$08
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$40,$10
    .byte $0C,$17+CFG_NUM_SAMUS_TILES,$C0,$F0
    .byte $0C,$17+CFG_NUM_SAMUS_TILES,$C0,$08
    .byte $80

ObjFrame_CrazyBus0:
    .byte $0E,$20
    .byte $F2,$00,$20,$E0
    .byte $F2,$01,$20,$E8
    .byte $F2,$02,$20,$F0
    .byte $F2,$03,$20,$F8
    .byte $F2,$04,$20,$00
    .byte $F2,$05,$20,$08
    .byte $F2,$06,$20,$10
    .byte $F2,$07,$20,$18
    .byte $FA,$08,$20,$E0
    .byte $FA,$09,$20,$E8
    .byte $FA,$0A,$20,$F0
    .byte $FA,$0B,$20,$F8
    .byte $FA,$0C,$20,$00
    .byte $FA,$0D,$20,$08
    .byte $FA,$0E,$20,$10
    .byte $FA,$0F,$20,$18
    .byte $02,$10,$20,$E0
    .byte $02,$11,$20,$E8
    .byte $02,$12,$20,$F0
    .byte $02,$13,$20,$F8
    .byte $02,$14,$20,$00
    .byte $02,$15,$20,$08
    .byte $02,$16,$20,$10
    .byte $02,$17,$20,$18
    .byte $0A,$1C,$20,$E8
    .byte $0A,$1D,$20,$F0
    .byte $0A,$1C,$20,$07
    .byte $0A,$1D,$20,$0F
    .byte $80

ObjFrame_CrazyBus1:
    .byte $0E,$20
    .byte $F2,$00,$20,$E0
    .byte $F2,$01,$20,$E8
    .byte $F2,$02,$20,$F0
    .byte $F2,$03,$20,$F8
    .byte $F2,$04,$20,$00
    .byte $F2,$05,$20,$08
    .byte $F2,$06,$20,$10
    .byte $F2,$07,$20,$18
    .byte $FA,$08,$20,$E0
    .byte $FA,$09,$20,$E8
    .byte $FA,$0A,$20,$F0
    .byte $FA,$0B,$20,$F8
    .byte $FA,$0C,$20,$00
    .byte $FA,$0D,$20,$08
    .byte $FA,$0E,$20,$10
    .byte $FA,$0F,$20,$18
    .byte $02,$10,$20,$E0
    .byte $02,$18,$20,$E8
    .byte $02,$19,$20,$F0
    .byte $02,$13,$20,$F8
    .byte $02,$14,$20,$00
    .byte $02,$1A,$20,$08
    .byte $02,$1B,$20,$10
    .byte $02,$17,$20,$18
    .byte $0A,$1E,$20,$E8
    .byte $0A,$1F,$20,$F0
    .byte $0A,$1E,$20,$07
    .byte $0A,$1F,$20,$0F
    .byte $80

ObjFrame_CrazyBusExplode:
    .byte $80,$00
    .byte $00,$F2,$00,$20,$E0
    .byte $00,$F2,$01,$20,$E8
    .byte $00,$F2,$02,$20,$F0
    .byte $00,$F2,$03,$20,$F8

    .byte $01,$F2,$04,$20,$00
    .byte $01,$F2,$05,$20,$08
    .byte $01,$F2,$06,$20,$10
    .byte $01,$F2,$07,$20,$18

    .byte $02,$FA,$08,$20,$E0
    .byte $02,$FA,$09,$20,$E8
    .byte $02,$FA,$0A,$20,$F0
    .byte $02,$FA,$0B,$20,$F8

    .byte $03,$FA,$0C,$20,$00
    .byte $03,$FA,$0D,$20,$08
    .byte $03,$FA,$0E,$20,$10
    .byte $03,$FA,$0F,$20,$18

    .byte $04,$02,$10,$20,$E0
    .byte $04,$02,$11,$20,$E8
    .byte $04,$02,$12,$20,$F0
    .byte $04,$02,$13,$20,$F8

    .byte $05,$02,$14,$20,$00
    .byte $05,$02,$15,$20,$08
    .byte $05,$02,$16,$20,$10
    .byte $05,$02,$17,$20,$18

    .byte $04,$0A,$1C,$20,$E8
    .byte $04,$0A,$1D,$20,$F0

    .byte $05,$0A,$1C,$20,$07
    .byte $05,$0A,$1D,$20,$0F
    .byte $80
