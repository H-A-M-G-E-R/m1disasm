; TODO: Organized this better and maybe split it up more sensibly.

;---------------------------------[ Object animation data tables ]----------------------------------

;The following tables are indices into the ObjFramePtrTable that correspond to various animations. The
;ObjFramePtrTable represents individual frames and the entries in ObjectAnimIndexTbl are the groups of
;frames responsible for animaton Samus, her weapons and other objects.
;$F7 means the frame is invisible, $FF means animation ends.



ObjectAnimIndexTbl:

;Samus run animation.
ObjAnim_SamusRun: ;$00
    .byte _id_ObjFrame03, _id_ObjFrame04, _id_ObjFrame05, $FF

;Samus front animation.
ObjAnim_SamusFront: ;$04
    .byte _id_ObjFrame07, $FF

;Samus jump out of ball animation.
ObjAnim_Unroll: ;$06
    .byte _id_ObjFrame17
;Samus Stand animation.
ObjAnim_SamusStand: ;$07
    .byte _id_ObjFrame08, $FF

;Samus stand and fire animation.
ObjAnim_SamusStandFire: ;$09
    .byte _id_ObjFrame22, $FF

;Samus stand and jump animation.
ObjAnim_SamusJumpTransition: ;$0B
    .byte _id_ObjFrame04
;Samus Jump animation.
ObjAnim_SamusJump: ;$0C
    .byte _id_ObjFrame10, $FF

;Samus somersault animation.
ObjAnim_SamusSalto: ;$0E
    .byte _id_ObjFrame17, _id_ObjFrame18, _id_ObjFrame19, _id_ObjFrame1A, $FF

;Samus run and jump animation.
ObjAnim_SamusRunJump: ;$13
    .byte _id_ObjFrame03, _id_ObjFrame17, $FF

;Samus roll animation.
ObjAnim_SamusRoll: ;$16
    .byte _id_ObjFrame1E, _id_ObjFrame1D, _id_ObjFrame1C, _id_ObjFrame1B, $FF

;Bullet animation.
ObjAnim_RegularBullet: ;$1B
    .byte _id_ObjFrame28, $FF

;Bullet hit animation.
ObjAnim_BulletHit: ;$1D
    .byte _id_ObjFrame2A, $F7, $FF

;Samus jump and fire animation.
ObjAnim_SamusJumpFire: ;$20
    .byte _id_ObjFrame12, $FF

;Samus run and fire animation.
ObjAnim_SamusRunFire: ;$22
    .byte _id_ObjFrame0C, _id_ObjFrame0D, _id_ObjFrame0E, $FF

;Samus point up and shoot animation.
ObjAnim_SamusPntUpFire: ;$26
    .byte _id_ObjFrame30
;Samus point up animation.
ObjAnim_SamusPntUp: ;$27
    .byte _id_ObjFrame2B, $FF

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
    .byte _id_ObjFrame35, $FF

;Samus jump and point up animation.
ObjAnim_SamusJumpPntUpFire: ;$34
    .byte _id_ObjFrame39, $FF
ObjAnim_SamusJumpPntUpTransition:
    .byte _id_ObjFrame41
ObjAnim_SamusJumpPntUp: ;$35
    .byte _id_ObjFrame38, $FF

;Samus run and point up animation.
ObjAnim_SamusRunPntUp: ;$37
    .byte _id_ObjFrame40, _id_ObjFrame41, _id_ObjFrame42, $FF

;Samus run, point up and shoot animation 1.
ObjAnim_SamusRunPntUpFire1: ;$3B
    .byte _id_ObjFrame46, $FF

;Samus run, point up and shoot animation 2.
ObjAnim_SamusRunPntUpFire2: ;$3D
    .byte _id_ObjFrame47, $FF

;Samus run, point up and shoot animation 3.
ObjAnim_SamusRunPntUpFire3: ;$3F
    .byte _id_ObjFrame48, $FF

;Samus front fade out of old area. (plays for only one frame on NES)
ObjAnim_SamusFadeOutArea: ;$41
    .byte _id_ObjFrame07, $F7, $F7, _id_ObjFrame07, $F7, $F7, $F7, _id_ObjFrame07, $F7, $F7, $F7, $F7, _id_ObjFrame07
ObjAnim_SamusFadeOutArea_Reset: ;$4E
    .byte $F7, $FF

;Elevator fade out of old area. (plays for only one frame on NES)
ObjAnim_ElevatorFadeOutArea: ;$50
    .byte _id_ObjFrame23, $F7, $F7, _id_ObjFrame23, $F7
ObjAnim_55: ;$55 (referenced in MotherBrain_SpawnDoor)
    .byte $F7, $F7, _id_ObjFrame23, $F7, $F7, $F7, $F7, _id_ObjFrame23
ObjAnim_ElevatorFadeOutArea_Reset: ;$5D
    .byte $F7, $FF

;Samus front fade into new area. (plays for only one frame on NES)
ObjAnim_SamusFadeInArea: ;$5F
    .byte _id_ObjFrame07, $F7, $F7, $F7, $F7, _id_ObjFrame07, $F7, $F7, $F7, _id_ObjFrame07, $F7, $F7
ObjAnim_SamusFadeInArea_Reset: ;$6B
    .byte _id_ObjFrame07, $F7, $FF

;Elevator fade into new area. (plays for only one frame on NES)
ObjAnim_ElevatorFadeInArea: ;$6E
    .byte _id_ObjFrame23, $F7, $F7, $F7, $F7, _id_ObjFrame23, $F7, $F7, $F7, _id_ObjFrame23, $F7, $F7
ObjAnim_ElevatorFadeInArea_Reset: ;$7A
    .byte _id_ObjFrame23, $F7, $FF

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
    .byte _id_ObjFrameIceBullet, $FF

;Ice bullet hit animation.
ObjAnim_IceBulletHit:
    .byte _id_ObjFrameIceBulletHit, $F7, $FF

;Wave + ice beam animation.
ObjAnim_WaveIceBeam: ;$7D
    .byte _id_ObjFrame_WaveIceBeam, $FF

;Samus spider ball animation.
ObjAnim_SamusSpider:
    .byte _id_ObjFrame_SamusSpider0, _id_ObjFrame_SamusSpider1, _id_ObjFrame_SamusSpider2, _id_ObjFrame_SamusSpider3, $FF

;----------------------------[ Sprite drawing pointer tables ]--------------------------------------

;The above animation pointers provide an index into the following table
;for the animation sequences.
ObjFramePtrTable:
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
    PtrTableEntry ObjFramePtrTable, ObjFrameIceBulletHit
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
    PtrTableEntry ObjFramePtrTable, ObjFrameIceBullet
    PtrTableEntry ObjFramePtrTable, ObjFrame_DoorOpened

SamusCHRBankTable:
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
    .byte $00 ; ObjFrameIceBulletHit
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
    .byte $0F,$04
    .byte $F0,$00,$60,$00
    .byte $F0,$01,$60,$F8
    .byte $F8,$02,$20,$00
    .byte $F8,$03,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $08,$06,$60,$F8
    .byte $80

;Samus run.
ObjFrame04:
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

;Samus run.
ObjFrame05:
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

;Samus facing forward.
ObjFrame07:
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

;Samus stand.
ObjFrame08:
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

;Samus run and fire.
ObjFrame0C:
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

;Samus run and fire.
ObjFrame0D:
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

;Samus run and fire.
ObjFrame0E:
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

;Samus stand and jump.
ObjFrame10:
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

;Samus jump and fire.
ObjFrame12:
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

;Samus somersault.
ObjFrame17:
    .byte $0F,$04
    .byte $F3,$00,$60,$00
    .byte $F3,$01,$60,$F8
    .byte $FB,$02,$60,$00
    .byte $FB,$03,$60,$F8
    .byte $03,$04,$60,$00
    .byte $03,$05,$60,$F8
    .byte $80

;Samus somersault.
ObjFrame18:
    .byte $0F,$04
    .byte $F8,$06,$60,$02
    .byte $F8,$07,$60,$FA
    .byte $F8,$08,$60,$F2
    .byte $00,$09,$60,$02
    .byte $00,$0A,$60,$FA
    .byte $00,$0B,$60,$F2
    .byte $80

;Samus somersault.
ObjFrame19:
    .byte $0F,$04
    .byte $05,$00,$A0,$F8
    .byte $05,$01,$A0,$00
    .byte $FD,$02,$A0,$F8
    .byte $FD,$03,$A0,$00
    .byte $F5,$04,$A0,$F8
    .byte $F5,$05,$A0,$00
    .byte $80

;Samus somersault.
ObjFrame1A:
    .byte $0F,$04
    .byte $00,$06,$A0,$F6
    .byte $00,$07,$A0,$FE
    .byte $00,$08,$A0,$06
    .byte $F8,$09,$A0,$F6
    .byte $F8,$0A,$A0,$FE
    .byte $F8,$0B,$A0,$06
    .byte $80

;Samus roll.
ObjFrame1B:
    .byte $07,$04 ; changed y radius from 8 to 7 to compensate for spider ball
    .byte $F6,$0C,$20,$F8
    .byte $F6,$0D,$20,$00
    .byte $FE,$0E,$20,$F8
    .byte $FE,$0F,$20,$00
    .byte $80

;Samus roll.
ObjFrame1C:
    .byte $07,$04
    .byte $02,$0C,$A0,$F8
    .byte $02,$0D,$A0,$00
    .byte $FA,$0E,$A0,$F8
    .byte $FA,$0F,$A0,$00
    .byte $80

;Samus roll.
ObjFrame1D:
    .byte $07,$04
    .byte $02,$0C,$E0,$00
    .byte $02,$0D,$E0,$F8
    .byte $FA,$0E,$E0,$00
    .byte $FA,$0F,$E0,$F8
    .byte $80

;Samus roll.
ObjFrame1E:
    .byte $07,$04
    .byte $F6,$0C,$60,$00
    .byte $F6,$0D,$60,$F8
    .byte $FE,$0E,$60,$00
    .byte $FE,$0F,$60,$F8
    .byte $80

;Samus stand and fire.
ObjFrame22:
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

;Elevator.
ObjFrame23:
    .byte $04,$10
    .byte $FC,$10,$20,$F0
    .byte $FC,$11,$20,$F8
    .byte $FC,$11,$20,$00
    .byte $FC,$10,$60,$08
    .byte $80

;Missile right.
ObjFrame25:
    .byte $04,$08
    .byte $FC,$12,$60,$00
    .byte $FC,$13,$60,$F8
    .byte $80

;Missile left.
ObjFrame26:
    .byte $04,$08
    .byte $FC,$12,$20,$F8
    .byte $FC,$13,$20,$00
    .byte $80

;Missile up.
ObjFrame27:
    .byte $08,$04
    .byte $F8,$14,$20,$FC
    .byte $00,$15,$20,$FC
    .byte $80

;Bullet fire.
ObjFrame28:
    .byte $02,$02
    .byte $FC,$16,$20,$FC
    .byte $80

;Bullet hit.
ObjFrame2A:
    .byte $00,$00
    .byte $FC,$17,$20,$FC
    .byte $80

;Ice bullet fire.
ObjFrameIceBullet:
    .byte $02,$02
    .byte $FC,$16,$21,$FC
    .byte $80

;Ice bullet hit.
ObjFrameIceBulletHit:
    .byte $00,$00
    .byte $FC,$17,$21,$FC
    .byte $80

;Samus stand and point up.
ObjFrame2B:
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

;Samus from ball to pointing up.
ObjFrame30:
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

;Door closed.
ObjFrame31:
    .byte $18,$08
    .byte $E8,$18,$20,$00
    .byte $F0,$19,$20,$00
    .byte $F8,$1A,$20,$00
    .byte $00,$1A,$A0,$00
    .byte $08,$19,$A0,$00
    .byte $10,$18,$A0,$00
    .byte $80

;Door open/close.
ObjFrame33:
    .byte $18,$04
    .byte $E8,$1B,$20,$00
    .byte $F0,$1C,$20,$00
    .byte $F8,$1D,$20,$00
    .byte $00,$1D,$A0,$00
    .byte $08,$1C,$A0,$00
    .byte $10,$1B,$A0,$00
    .byte $80

;Door opened.
ObjFrame_DoorOpened:
    .byte $18,$04
    .byte $80

;Samus explode.
ObjFrame35:
    .byte $80,$00
    .byte $00,$F0,$07,$20,$F8
    .byte $01,$F0,$08,$20,$00
    .byte $02,$F8,$09,$20,$F8
    .byte $03,$F8,$0A,$20,$00
    .byte $04,$00,$0B,$20,$F8
    .byte $05,$00,$0C,$20,$00
    .byte $80

;Samus jump and point up.
ObjFrame38:
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

;Samus jump and point up.
ObjFrame39:
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

;Bomb explode.
ObjFrame3C:
    .byte $0C,$0C
    .byte $F8,$1E,$20,$F8
    .byte $F8,$1E,$60,$00
    .byte $00,$1E,$A0,$F8
    .byte $00,$1E,$E0,$00
    .byte $80

;Samus run and point up.
ObjFrame40:
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

;Samus run and point up.
ObjFrame41:
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

;Samus run and point up.
ObjFrame42:
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

;Samus run and point up.
ObjFrame46:
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

;Samus point up, run and fire.
ObjFrame47:
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

;Samus point up, run and fire.
ObjFrame48:
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

;Samus spider ball.
ObjFrame_SamusSpider0:
    .byte $07,$04
    .byte $F8,$00,$20,$F8
    .byte $F8,$01,$20,$00
    .byte $00,$02,$20,$F8
    .byte $00,$03,$20,$00
    .byte $80

;Samus spider ball.
ObjFrame_SamusSpider1:
    .byte $07,$04
    .byte $00,$00,$A0,$F8
    .byte $00,$01,$A0,$00
    .byte $F8,$02,$A0,$F8
    .byte $F8,$03,$A0,$00
    .byte $80

;Samus spider ball.
ObjFrame_SamusSpider2:
    .byte $07,$04
    .byte $FF,$00,$E0,$00
    .byte $FF,$01,$E0,$F8
    .byte $F7,$02,$E0,$00
    .byte $F7,$03,$E0,$F8
    .byte $80

;Samus spider ball.
ObjFrame_SamusSpider3:
    .byte $07,$04
    .byte $F7,$00,$60,$00
    .byte $F7,$01,$60,$F8
    .byte $FF,$02,$60,$00
    .byte $FF,$03,$60,$F8
    .byte $80

;Bomb explode.
ObjFrame49:
    .byte $0C,$0C
    .byte $F8,$1F,$20,$F8
    .byte $F8,$1F,$60,$00
    .byte $00,$1F,$A0,$F8
    .byte $00,$1F,$E0,$00
    .byte $80

;Bomb explode.
ObjFrame4A:
    .byte $00,$00
    .byte $80

;Wave beam.
ObjFrame4B:
    .byte $04,$04
    .byte $FC,$20,$20,$FC
    .byte $80

;Wave + ice beam.
ObjFrame_WaveIceBeam:
    .byte $04,$04
    .byte $FC,$20,$21,$FC
    .byte $80

;Bomb explode.
ObjFrame4D:
    .byte $10,$10
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

;Bomb tick.
ObjFrame4E:
    .byte $04,$04
    .byte $FC,$24,$20,$FC
    .byte $80

;Bomb tick.
ObjFrame4F:
    .byte $04,$04
    .byte $FC,$25,$20,$FC
    .byte $80

;Bomb item.
ObjFrame50:
    .byte $03,$03
    .byte $F8,$40,$20,$F8
    .byte $F8,$41,$20,$00
    .byte $00,$42,$20,$F8
    .byte $00,$43,$20,$00
    .byte $80

;High jump item.
ObjFrame51:
    .byte $03,$03
    .byte $F8,$44,$20,$F8
    .byte $F8,$45,$20,$00
    .byte $00,$46,$20,$F8
    .byte $00,$47,$20,$00
    .byte $80

;Long beam item.
ObjFrame52:
    .byte $03,$03
    .byte $F8,$48,$20,$F8
    .byte $F8,$49,$20,$00
    .byte $00,$4A,$20,$F8
    .byte $00,$4B,$20,$00
    .byte $80

;Screw attack item.
ObjFrame53:
    .byte $03,$03
    .byte $F8,$4C,$20,$F8
    .byte $F8,$4D,$20,$00
    .byte $00,$4E,$20,$F8
    .byte $00,$4F,$20,$00
    .byte $80

;Maru Mari item.
ObjFrame54:
    .byte $03,$03
    .byte $F8,$50,$20,$F8
    .byte $F8,$51,$20,$00
    .byte $00,$52,$20,$F8
    .byte $00,$53,$20,$00
    .byte $80

;Varia item.
ObjFrame55:
    .byte $03,$03
    .byte $F8,$54,$20,$F8
    .byte $F8,$55,$20,$00
    .byte $00,$56,$20,$F8
    .byte $00,$57,$20,$00
    .byte $80

;Wave beam item.
ObjFrame56:
    .byte $03,$03
    .byte $F8,$48,$20,$F8
    .byte $F8,$58,$20,$00
    .byte $00,$4A,$20,$F8
    .byte $00,$4B,$20,$00
    .byte $80

;Ice beam item.
ObjFrame57:
    .byte $03,$03
    .byte $F8,$48,$20,$F8
    .byte $F8,$59,$20,$00
    .byte $00,$4A,$20,$F8
    .byte $00,$4B,$20,$00
    .byte $80

;Energy tank item.
ObjFrame58:
    .byte $03,$03
    .byte $F8,$5A,$20,$F8
    .byte $F8,$5B,$20,$00
    .byte $00,$5C,$20,$F8
    .byte $00,$5D,$20,$00
    .byte $80

;Missile item.
ObjFrame59:
    .byte $03,$03
    .byte $F8,$5E,$20,$F8
    .byte $F8,$5E,$40,$00
    .byte $00,$5F,$00,$F8
    .byte $00,$5F,$40,$00
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
    .byte $FC,$26,$00,$F8
    .byte $FC,$26,$40,$00
    .byte $80

;Missile explode.
ObjFrame68:
    .byte $04,$0C
    .byte $FC,$26,$00,$F0
    .byte $F4,$27,$00,$F8
    .byte $F4,$27,$40,$00
    .byte $FC,$26,$40,$08
    .byte $04,$27,$C0,$F8
    .byte $04,$27,$C0,$00
    .byte $80

;Missile explode.
ObjFrame69:
    .byte $04,$10
    .byte $FC,$26,$00,$E8
    .byte $EC,$27,$00,$F0
    .byte $EC,$27,$40,$08
    .byte $FC,$26,$40,$10
    .byte $0C,$27,$C0,$F0
    .byte $0C,$27,$C0,$08
    .byte $80
