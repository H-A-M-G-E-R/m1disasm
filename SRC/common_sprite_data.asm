; TODO: Organized this better and maybe split it up more sensibly.

;---------------------------------[ Object animation data tables ]----------------------------------

;The following tables are indices into the ObjFramePtrTable that correspond to various animations. The
;ObjFramePtrTable represents individual frames and the entries in ObjectAnimIndexTbl are the groups of
;frames responsible for animaton Samus, her weapons and other objects.
;$F7 means the frame is invisible, $FF means animation ends.



ObjectAnimIndexTbl:

;Samus run animation.
ObjAnim_SamusRun: ;$00
    .byte _id_ObjFrame_SamusRun0, _id_ObjFrame_SamusRun1, _id_ObjFrame_SamusRun2, _id_ObjFrame_SamusRun1, $FF

;Samus front animation.
ObjAnim_SamusFront: ;$04
    .byte _id_ObjFrame_SamusFront, $FF

;Samus jump out of ball animation.
;ObjAnim_SamusUnroll: ;$06
;    .byte _id_ObjFrame_SamusSalto0
;Samus Stand animation.
ObjAnim_SamusStand: ;$07
    .byte _id_ObjFrame_SamusStand, $FF

;Samus stand and fire animation.
ObjAnim_SamusStandFire: ;$09
    .byte _id_ObjFrame_SamusStandFire, $FF

;Samus stand and jump animation.
ObjAnim_SamusJumpTransition: ;$0B
    .byte _id_ObjFrame_SamusJump
;Samus Jump animation.
ObjAnim_SamusJump: ;$0C
    .byte _id_ObjFrame_SamusJump, $FF

;Samus somersault animation.
ObjAnim_SamusSalto: ;$0E
    .byte _id_ObjFrame_SamusJump, $FF

;Samus run and jump animation.
ObjAnim_SamusRunJump: ;$13
    .byte _id_ObjFrame_SamusJump, $FF

;Samus roll animation.
ObjAnim_SamusRoll: ;$16
    .byte _id_ObjFrame_SamusRoll0, $FF

ObjAnim_DoropieDuckFire:
    .byte _id_ObjFrame_DoropieDuckFire, $FF

;Bullet animation.
ObjAnim_RegularBullet: ;$1B
    .byte _id_ObjFrame_RegularBullet, $FF

;Bullet hit animation.
ObjAnim_BulletHit: ;$1D
    .byte _id_ObjFrame_BulletHit, _id_ObjFrame_BulletHit, _id_ObjFrame_BulletHit, $F7, $FF

;Samus jump and fire animation.
ObjAnim_SamusJumpFire: ;$20
    .byte _id_ObjFrame_SamusJumpFire, $FF

;Samus run and fire animation.
ObjAnim_SamusRunFire: ;$22
    .byte _id_ObjFrame_SamusRunFire0, _id_ObjFrame_SamusRunFire1, _id_ObjFrame_SamusRunFire2, _id_ObjFrame_SamusRunFire1, $FF

;Samus point up and shoot animation.
ObjAnim_SamusPntUpFire: ;$26
    .byte _id_ObjFrame_SamusPntUpFire
;Samus point up animation.
ObjAnim_SamusPntUp: ;$27
    .byte _id_ObjFrame_SamusPntUp, $FF

;Door open animation.
ObjAnim_DoorOpen: ;$29
    .byte _id_ObjFrame_DoorClosed, _id_ObjFrame_DoorClosed, _id_ObjFrame_DoorOpenClose
ObjAnim_DoorOpen_Reset: ;$2C
    .byte _id_ObjFrame_DoorOpened, $FF

;Door close animation.
ObjAnim_DoorClose: ;$2E
    .byte _id_ObjFrame_DoorOpenClose, _id_ObjFrame_DoorOpenClose
ObjAnim_DoorClose_Reset: ;$30
    .byte _id_ObjFrame_DoorClosed, $FF

;Samus explode animation.
ObjAnim_SamusExplode: ;$32
    .byte _id_ObjFrame_SamusExplode, $FF

;Samus jump and point up animation.
ObjAnim_SamusJumpPntUpFire: ;$34
    .byte _id_ObjFrame_SamusJumpPntUpFire, $FF
ObjAnim_SamusJumpPntUpTransition:
    .byte _id_ObjFrame_SamusRunPntUp1
ObjAnim_SamusJumpPntUp: ;$35
    .byte _id_ObjFrame_SamusJumpPntUp, $FF

;Samus run and point up animation.
ObjAnim_SamusRunPntUp: ;$37
    .byte _id_ObjFrame_SamusRunPntUp0, _id_ObjFrame_SamusRunPntUp1, _id_ObjFrame_SamusRunPntUp2, $FF

;Samus run, point up and shoot animation 1.
ObjAnim_SamusRunPntUpFire1: ;$3B
    .byte _id_ObjFrame_SamusRunPntUpFire0, $FF

;Samus run, point up and shoot animation 2.
ObjAnim_SamusRunPntUpFire2: ;$3D
    .byte _id_ObjFrame_SamusRunPntUpFire1, $FF

;Samus run, point up and shoot animation 3.
ObjAnim_SamusRunPntUpFire3: ;$3F
    .byte _id_ObjFrame_SamusRunPntUpFire2, $FF

;Wave beam animation.
ObjAnim_WaveBeam: ;$7D
    .byte _id_ObjFrame_WaveBeam, $FF

;Bomb tick animation.
ObjAnim_BombTick: ;$7F
    .byte _id_ObjFrame_Bomb0, _id_ObjFrame_Bomb1, $FF

;Bomb explode animation.
ObjAnim_BombExplode: ;$82
    .byte _id_ObjFrame_BombExplode0, _id_ObjFrame_BombExplodeBlank, _id_ObjFrame_BombExplode1, _id_ObjFrame_BombExplodeBlank, _id_ObjFrame_BombExplode2, _id_ObjFrame_BombExplodeBlank, _id_ObjFrame_BombExplode2, $F7, $FF

;Missile left animation.
ObjAnim_MissileLeft: ;$8B
    .byte _id_ObjFrame_MissileLeft, $FF

;Missile right animation.
ObjAnim_MissileRight: ;$8D
    .byte _id_ObjFrame_MissileRight, $FF

;Missile up animation.
ObjAnim_MissileUp: ;$8F
    .byte _id_ObjFrame_MissileUp, $FF

;Missile explode animation.
ObjAnim_MissileExplode: ;$91
    .byte _id_ObjFrame_MissileExplode0, _id_ObjFrame_MissileExplode0, _id_ObjFrame_MissileExplode0, _id_ObjFrame_MissileExplode1, _id_ObjFrame_MissileExplode1, _id_ObjFrame_MissileExplode2, $F7, $FF

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
    .byte _id_ObjFrame_SamusSpider0, _id_ObjFrame_SamusSpider1, _id_ObjFrame_SamusSpider2, _id_ObjFrame_SamusSpider3, $FF

ObjAnim_ChargedShotRight:
    .byte _id_ObjFrame_ChargedShotRight0, _id_ObjFrame_ChargedShotRight1, $FF

ObjAnim_ChargedShotUp:
    .byte _id_ObjFrame_ChargedShotUp0, _id_ObjFrame_ChargedShotUp1, $FF

;----------------------------[ Sprite drawing pointer tables ]--------------------------------------

;The above animation pointers provide an index into the following table
;for the animation sequences.
ObjFramePtrTable:
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRun0
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRun1
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRun2
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusFront
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusStand
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRunFire0
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRunFire1
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRunFire2
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusJump
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusJumpFire
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSalto0
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSalto1
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSalto2
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSalto3
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRoll3
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRoll2
    PtrTableEntry ObjFramePtrTable, ObjFrame_DoropieDuckFire
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRoll0
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusStandFire
    PtrTableEntry ObjFramePtrTable, ObjFrame_Elevator
    PtrTableEntry ObjFramePtrTable, ObjFrame_MissileRight
    PtrTableEntry ObjFramePtrTable, ObjFrame_MissileLeft
    PtrTableEntry ObjFramePtrTable, ObjFrame_MissileUp
    PtrTableEntry ObjFramePtrTable, ObjFrame_RegularBullet
    PtrTableEntry ObjFramePtrTable, ObjFrame_IceBulletHit
    PtrTableEntry ObjFramePtrTable, ObjFrame_BulletHit
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusPntUp
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusPntUpFire
    PtrTableEntry ObjFramePtrTable, ObjFrame_DoorClosed
    PtrTableEntry ObjFramePtrTable, ObjFrame_DoorOpenClose
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusExplode
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusJumpPntUp
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusJumpPntUpFire
    PtrTableEntry ObjFramePtrTable, ObjFrame_BombExplode0
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRunPntUp0
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRunPntUp1
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRunPntUp2
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRunPntUpFire0
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRunPntUpFire1
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusRunPntUpFire2
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSpider0
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSpider1
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSpider2
    PtrTableEntry ObjFramePtrTable, ObjFrame_SamusSpider3
    PtrTableEntry ObjFramePtrTable, ObjFrame_DoropieHurt
    PtrTableEntry ObjFramePtrTable, ObjFrame_DoropieFacingBackground
    PtrTableEntry ObjFramePtrTable, ObjFrame_DoropieTeleport0
    PtrTableEntry ObjFramePtrTable, ObjFrame_DoropieTeleport1
    PtrTableEntry ObjFramePtrTable, ObjFrame_BombExplode1
    PtrTableEntry ObjFramePtrTable, ObjFrame_BombExplodeBlank
    PtrTableEntry ObjFramePtrTable, ObjFrame_WaveBeam
    PtrTableEntry ObjFramePtrTable, ObjFrame_WaveIceBeam
    PtrTableEntry ObjFramePtrTable, ObjFrame_BombExplode2
    PtrTableEntry ObjFramePtrTable, ObjFrame_Bomb0
    PtrTableEntry ObjFramePtrTable, ObjFrame_Bomb1
    PtrTableEntry ObjFramePtrTable, ObjFrame_BombItem
    PtrTableEntry ObjFramePtrTable, ObjFrame_HighJumpItem
    PtrTableEntry ObjFramePtrTable, ObjFrame_LongBeamItem
    PtrTableEntry ObjFramePtrTable, ObjFrame_ScrewAttackItem
    PtrTableEntry ObjFramePtrTable, ObjFrame_MaruMariItem
    PtrTableEntry ObjFramePtrTable, ObjFrame_VariaSuitItem
    PtrTableEntry ObjFramePtrTable, ObjFrame_WaveBeamItem
    PtrTableEntry ObjFramePtrTable, ObjFrame_IceBeamItem
    PtrTableEntry ObjFramePtrTable, ObjFrame_EnergyTankItem
    PtrTableEntry ObjFramePtrTable, ObjFrame_MissileItem
    PtrTableEntry ObjFramePtrTable, ObjFrame_SkreeProjectile
    PtrTableEntry ObjFramePtrTable, ObjFrame_KraidStatue
    PtrTableEntry ObjFramePtrTable, ObjFrame_RidleyStatue
    PtrTableEntry ObjFramePtrTable, ObjFrame_MissileExplode0
    PtrTableEntry ObjFramePtrTable, ObjFrame_MissileExplode1
    PtrTableEntry ObjFramePtrTable, ObjFrame_MissileExplode2
    PtrTableEntry ObjFramePtrTable, ObjFrame_IceBullet
    PtrTableEntry ObjFramePtrTable, ObjFrame_DoorOpened
    PtrTableEntry ObjFramePtrTable, ObjFrame_ChargedShotRight0
    PtrTableEntry ObjFramePtrTable, ObjFrame_ChargedShotRight1
    PtrTableEntry ObjFramePtrTable, ObjFrame_ChargedShotUp0
    PtrTableEntry ObjFramePtrTable, ObjFrame_ChargedShotUp1

SamusCHRBankTable:
    .byte SamusSuitGFX0/$400 ; ObjFrame_SamusRun0
    .byte SamusSuitGFX0/$400 ; ObjFrame_SamusRun1
    .byte SamusSuitGFX0/$400 ; ObjFrame_SamusRun2
    .byte SamusSuitGFX0/$400 ; ObjFrame_SamusFront
    .byte SamusSuitGFX0/$400 ; ObjFrame_SamusStand
    .byte SamusSuitGFX0/$400 ; ObjFrame_SamusRunFire0
    .byte SamusSuitGFX0/$400 ; ObjFrame_SamusRunFire1
    .byte SamusSuitGFX0/$400 ; ObjFrame_SamusRunFire2
    .byte SamusSuitGFX0/$400 ; ObjFrame_SamusJump
    .byte SamusSuitGFX0/$400 ; ObjFrame_SamusJumpFire
    .byte SamusSuitGFX1/$400 ; ObjFrame17
    .byte SamusSuitGFX1/$400 ; ObjFrame18
    .byte SamusSuitGFX1/$400 ; ObjFrame19
    .byte SamusSuitGFX1/$400 ; ObjFrame1A
    .byte SamusSuitGFX1/$400 ; ObjFrame1B
    .byte SamusSuitGFX1/$400 ; ObjFrame1C
    .byte SamusSuitGFX1/$400 ; ObjFrame_DoropieDuckFire
    .byte SamusSuitGFX1/$400 ; ObjFrame_SamusRoll0
    .byte SamusSuitGFX0/$400 ; ObjFrame_SamusStandFire
    .byte $00 ; ObjFrame23
    .byte $00 ; ObjFrame25
    .byte $00 ; ObjFrame26
    .byte $00 ; ObjFrame27
    .byte $00 ; ObjFrame28
    .byte $00 ; ObjFrame_IceBulletHit
    .byte $00 ; ObjFrame2A
    .byte SamusSuitGFX1/$400 ; ObjFrame_SamusPntUp
    .byte SamusSuitGFX1/$400 ; ObjFrame_SamusPntUpFire
    .byte $00 ; ObjFrame31
    .byte $00 ; ObjFrame33
    .byte SamusSuitGFX1/$400 ; ObjFrame35
    .byte SamusSuitGFX0/$400 ; ObjFrame38
    .byte SamusSuitGFX0/$400 ; ObjFrame39
    .byte $00 ; ObjFrame3C
    .byte SamusSuitGFX0/$400 ; ObjFrame40
    .byte SamusSuitGFX0/$400 ; ObjFrame41
    .byte SamusSuitGFX0/$400 ; ObjFrame42
    .byte SamusSuitGFX0/$400 ; ObjFrame46
    .byte SamusSuitGFX0/$400 ; ObjFrame47
    .byte SamusSuitGFX0/$400 ; ObjFrame48
    .byte SamusSuitGFX1/$400 ; ObjFrame_SamusSpider0
    .byte SamusSuitGFX1/$400 ; ObjFrame_SamusSpider1
    .byte SamusSuitGFX1/$400 ; ObjFrame_SamusSpider2
    .byte SamusSuitGFX1/$400 ; ObjFrame_SamusSpider3
    .byte SamusSuitGFX0/$400 ; ObjFrame_DoropieHurt
    .byte SamusSuitGFX0/$400 ; ObjFrame_DoropieFacingBackground
    .byte SamusSuitGFX1/$400 ; ObjFrame_DoropieTeleport0
    .byte SamusSuitGFX1/$400 ; ObjFrame_DoropieTeleport1

.if CFG_UNIQUE_LEFT_FACING_SAMUS_FRAMES != 0
SamusFrameRightToLeftLookupTable:
    .byte _id_ObjFrame_SamusRun0_L ; ObjFrame03
    .byte _id_ObjFrame_SamusRun1_L ; ObjFrame04
    .byte _id_ObjFrame_SamusRun2_L ; ObjFrame05
    .byte $00 ; ObjFrame07
    .byte _id_ObjFrame_SamusStand_L ; ObjFrame08
    .byte _id_ObjFrame_SamusRunFire0_L ; ObjFrame0C
    .byte _id_ObjFrame_SamusRunFire1_L ; ObjFrame0D
    .byte _id_ObjFrame_SamusRunFire2_L ; ObjFrame0E
    .byte _id_ObjFrame_SamusJump_L ; ObjFrame10
    .byte _id_ObjFrame_SamusJumpFire_L ; ObjFrame12
    .byte $00 ; ObjFrame17
    .byte $00 ; ObjFrame18
    .byte $00 ; ObjFrame19
    .byte $00 ; ObjFrame1A
    .byte $00 ; ObjFrame1B
    .byte $00 ; ObjFrame1C
    .byte $00 ; ObjFrame1D
    .byte $00 ; ObjFrame1E
    .byte _id_ObjFrame_SamusStandFire_L ; ObjFrame22
    .byte $00 ; ObjFrame23
    .byte $00 ; ObjFrame25
    .byte $00 ; ObjFrame26
    .byte $00 ; ObjFrame27
    .byte $00 ; ObjFrame28
    .byte $00 ; ObjFrame_IceBulletHit
    .byte $00 ; ObjFrame2A
    .byte _id_ObjFrame_SamusPntUp_L ; ObjFrame2B
    .byte _id_ObjFrame_SamusPntUpFire_L ; ObjFrame30
    .byte $00 ; ObjFrame31
    .byte $00 ; ObjFrame33
    .byte $00 ; ObjFrame35
    .byte _id_ObjFrame_SamusJumpPntUp_L ; ObjFrame38
    .byte _id_ObjFrame_SamusJumpPntUpFire_L ; ObjFrame39
    .byte $00 ; ObjFrame3C
    .byte _id_ObjFrame_SamusRunPntUp0_L ; ObjFrame40
    .byte _id_ObjFrame_SamusRunPntUp1_L ; ObjFrame41
    .byte _id_ObjFrame_SamusRunPntUp2_L ; ObjFrame42
    .byte _id_ObjFrame_SamusRunPntUpFire0_L ; ObjFrame46
    .byte _id_ObjFrame_SamusRunPntUpFire1_L ; ObjFrame47
    .byte _id_ObjFrame_SamusRunPntUpFire2_L ; ObjFrame48
    .byte $00 ; ObjFrame_SamusSpider0
    .byte $00 ; ObjFrame_SamusSpider1
    .byte $00 ; ObjFrame_SamusSpider2
    .byte $00 ; ObjFrame_SamusSpider3
.endif

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
ObjFrame_SamusRun0:
    .byte $0C,$04
    .byte $FB,$7F,$01,$03
    .byte $EC,$1F,$00,$00
    .byte $F4,$20,$00,$F8
    .byte $F4,$21,$00,$00
    .byte $F4,$22,$00,$08
    .byte $FC,$23,$00,$F8
    .byte $FC,$24,$00,$00
    .byte $FC,$25,$00,$08
    .byte $04,$26,$00,$F8
    .byte $04,$27,$00,$00
    .byte $04,$28,$00,$08
    .byte $80

;Samus run.
ObjFrame_SamusRun1:
    .byte $0C,$04
    .byte $F9,$7F,$01,$02
    .byte $EC,$29,$00,$F8
    .byte $EC,$2A,$00,$00
    .byte $F4,$2B,$00,$F8
    .byte $F4,$2C,$00,$00
    .byte $F4,$2D,$00,$08
    .byte $FC,$2E,$00,$F8
    .byte $FC,$2F,$00,$00
    .byte $FC,$30,$00,$08
    .byte $04,$31,$00,$F8
    .byte $04,$32,$00,$00
    .byte $80

;Samus run.
ObjFrame_SamusRun2:
    .byte $0C,$04
    .byte $FB,$7F,$01,$04
    .byte $EC,$33,$00,$00
    .byte $F4,$34,$00,$F8
    .byte $F4,$35,$00,$00
    .byte $F4,$36,$00,$08
    .byte $FC,$37,$00,$F8
    .byte $FC,$38,$00,$00
    .byte $FC,$39,$00,$08
    .byte $04,$3B,$00,$F8
    .byte $04,$3E,$00,$00
    .byte $04,$3F,$00,$08
    .byte $80

;Samus facing forward.
ObjFrame_SamusFront:

;Samus stand.
ObjFrame_SamusStand:
    .byte $0C,$04
    .byte $F9,$7F,$01,$00
    .byte $EC,$00,$00,$F8
    .byte $EC,$01,$00,$00
    .byte $F4,$02,$00,$F8
    .byte $F4,$03,$00,$00
    .byte $F4,$04,$00,$08
    .byte $FC,$05,$00,$F8
    .byte $FC,$06,$00,$00
    .byte $FC,$07,$00,$08
    .byte $04,$08,$00,$F8
    .byte $04,$09,$00,$00
    .byte $04,$0A,$00,$08
    .byte $80

;Samus stand and fire.
ObjFrame_SamusStandFire:
    .byte $0C,$04
    .byte $F9,$7F,$01,$01
    .byte $EC,$0B,$00,$F8
    .byte $EC,$0C,$00,$00
    .byte $F4,$0D,$00,$F8
    .byte $F4,$0E,$00,$00
    .byte $F4,$0F,$00,$08
    .byte $FC,$10,$00,$F8
    .byte $FC,$11,$00,$00
    .byte $FC,$12,$00,$08
    .byte $FC,$13,$00,$10
    .byte $04,$14,$00,$F8
    .byte $04,$15,$00,$00
    .byte $04,$16,$00,$08
    .byte $80

;Samus stand and jump.
ObjFrame_SamusJump:
    .byte $0C,$04
    .byte $F9,$7F,$01,$00
    .byte $EC,$00,$00,$F8
    .byte $EC,$01,$00,$00
    .byte $F4,$02,$00,$F8
    .byte $F4,$03,$00,$00
    .byte $F4,$04,$00,$08
    .byte $FC,$17,$00,$F8
    .byte $FC,$18,$00,$00
    .byte $FC,$19,$00,$08
    .byte $04,$1A,$00,$F8
    .byte $04,$1B,$00,$00
    .byte $80

;Samus jump and fire.
ObjFrame_SamusJumpFire:
    .byte $0C,$04
    .byte $F9,$7F,$01,$00
    .byte $EC,$00,$00,$F8
    .byte $EC,$01,$00,$00
    .byte $F4,$02,$00,$F8
    .byte $F4,$03,$00,$00
    .byte $F4,$04,$00,$08
    .byte $FC,$17,$00,$F8
    .byte $FC,$18,$00,$00
    .byte $FC,$1C,$00,$08
    .byte $FC,$13,$00,$10
    .byte $04,$1A,$00,$F8
    .byte $04,$1B,$00,$00
    .byte $80

ObjFrame_DoropieHurt:
    .byte $0C,$04
    .byte $EC,$00,$00,$F8
    .byte $EC,$01,$00,$00
    .byte $F4,$02,$00,$F8
    .byte $F4,$1D,$00,$00
    .byte $F4,$04,$00,$08
    .byte $FC,$17,$00,$F8
    .byte $FC,$1E,$00,$00
    .byte $FC,$19,$00,$08
    .byte $04,$1A,$00,$F8
    .byte $04,$1B,$00,$00
    .byte $80

;Samus run and fire.
ObjFrame_SamusRunFire0:
    .byte $0C,$04
    .byte $FB,$7F,$01,$03
    .byte $EC,$1F,$00,$00
    .byte $F4,$20,$00,$F8
    .byte $F4,$21,$00,$00
    .byte $F4,$22,$00,$08
    .byte $FC,$23,$00,$F8
    .byte $FC,$24,$00,$00
    .byte $FC,$3C,$00,$08
    .byte $FC,$13,$00,$10
    .byte $04,$26,$00,$F8
    .byte $04,$27,$00,$00
    .byte $04,$3D,$00,$08
    .byte $80

;Samus run and fire.
ObjFrame_SamusRunFire1:
    .byte $0C,$04
    .byte $F9,$7F,$01,$02
    .byte $EC,$29,$00,$F8
    .byte $EC,$2A,$00,$00
    .byte $F4,$2B,$00,$F8
    .byte $F4,$2C,$00,$00
    .byte $F4,$2D,$00,$08
    .byte $FC,$2E,$00,$F8
    .byte $FC,$7D,$00,$00
    .byte $FC,$7E,$00,$08
    .byte $FC,$13,$00,$10
    .byte $04,$31,$00,$F8
    .byte $04,$32,$00,$00
    .byte $80

;Samus run and fire.
ObjFrame_SamusRunFire2:
    .byte $0C,$04
    .byte $FB,$7F,$01,$04
    .byte $EC,$33,$00,$00
    .byte $F4,$34,$00,$F8
    .byte $F4,$35,$00,$00
    .byte $F4,$36,$00,$08
    .byte $FC,$37,$00,$F8
    .byte $FC,$38,$00,$00
    .byte $FC,$3A,$00,$08
    .byte $FC,$13,$00,$10
    .byte $04,$3B,$00,$F8
    .byte $04,$3E,$00,$00
    .byte $04,$3F,$00,$08
    .byte $80

;Samus somersault.
ObjFrame_SamusSalto0:
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
.elif CFG_NUM_SAMUS_TILES == 64
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
ObjFrame_SamusSalto1:
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
.elif CFG_NUM_SAMUS_TILES == 64
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
ObjFrame_SamusSalto2:
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
.elif CFG_NUM_SAMUS_TILES == 64
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
ObjFrame_SamusSalto3:
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
.elif CFG_NUM_SAMUS_TILES == 64
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
ObjFrame_SamusRoll3:
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $07,$04
    .byte $F6,$13,$20,$F8
    .byte $F6,$14,$20,$00
    .byte $FE,$15,$20,$F8
    .byte $FE,$16,$20,$00
    .byte $80
.endif

;Samus roll.
ObjFrame_SamusRoll2:
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $07,$04
    .byte $02,$13,$A0,$F8
    .byte $02,$14,$A0,$00
    .byte $FA,$15,$A0,$F8
    .byte $FA,$16,$A0,$00
    .byte $80
.endif

;Samus roll.
ObjFrame_SamusRoll0:
    .byte $08,$04
    .byte $F0,$05,$00,$F8
    .byte $F0,$06,$00,$00
    .byte $F8,$08,$00,$F8
    .byte $F8,$09,$00,$00
    .byte $F8,$0A,$00,$08
    .byte $00,$0B,$00,$F8
    .byte $00,$0C,$00,$00
    .byte $00,$0D,$00,$08
    .byte $80

ObjFrame_DoropieDuckFire:
    .byte $08,$04
    .byte $F0,$05,$00,$F8
    .byte $F0,$06,$00,$00
    .byte $F8,$08,$00,$F8
    .byte $F8,$07,$00,$00
    .byte $F8,$0F,$00,$08
    .byte $F8,$01,$00,$10
    .byte $00,$0B,$00,$F8
    .byte $00,$0C,$00,$00
    .byte $00,$0D,$00,$08
    .byte $80

;Elevator.
ObjFrame_Elevator:
    .byte $04,$10
    .byte $FC,$00+CFG_NUM_SAMUS_TILES,$20,$F0
    .byte $FC,$01+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $FC,$01+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $FC,$00+CFG_NUM_SAMUS_TILES,$60,$08
    .byte $80

;Missile right.
ObjFrame_MissileRight:
    .byte $04,$08
    .byte $FC,$02+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $FC,$03+CFG_NUM_SAMUS_TILES,$60,$F8
    .byte $80

;Missile left.
ObjFrame_MissileLeft:
    .byte $04,$08
    .byte $FC,$02+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $FC,$03+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80

;Missile up.
ObjFrame_MissileUp:
    .byte $08,$04
    .byte $F8,$04+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $00,$05+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Bullet fire.
ObjFrame_RegularBullet:
    .byte $02,$02
    .byte $FC,$06+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Bullet hit.
ObjFrame_BulletHit:
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
ObjFrame_SamusPntUp:

;Samus from ball to pointing up.
ObjFrame_SamusPntUpFire:
    .byte $0C,$04
    .byte $F4,$1F,$01,$00
    .byte $EC,$18,$00,$F8
    .byte $EC,$19,$00,$00
    .byte $F4,$1A,$00,$F0
    .byte $F4,$1B,$00,$F8
    .byte $F4,$1C,$00,$00
    .byte $FC,$1D,$00,$F8
    .byte $FC,$1E,$00,$00
    .byte $04,$02,$00,$F8
    .byte $04,$03,$00,$00
    .byte $04,$04,$00,$08
    .byte $80

;Door closed.
ObjFrame_DoorClosed:
    .byte $18,$08
    .byte $E8,$08+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $F0,$09+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $F8,$0A+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$0A+CFG_NUM_SAMUS_TILES,$A0,$00
    .byte $08,$09+CFG_NUM_SAMUS_TILES,$A0,$00
    .byte $10,$08+CFG_NUM_SAMUS_TILES,$A0,$00
    .byte $80

;Door open/close.
ObjFrame_DoorOpenClose:
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
ObjFrame_SamusExplode:
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
.elif CFG_NUM_SAMUS_TILES == 64
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
ObjFrame_SamusJumpPntUp:
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $0F,$04
    .byte $E8,$27,$60,$FC
    .byte $F0,$28,$20,$00
    .byte $F0,$29,$20,$F8
    .byte $F8,$2A,$20,$00
    .byte $F8,$2B,$20,$F8
    .byte $00,$0B,$60,$00
    .byte $00,$1C,$60,$F8
    .byte $00,$1D,$60,$F0
    .byte $08,$0D,$60,$00
    .byte $80
.endif

;Samus jump and point up.
ObjFrame_SamusJumpPntUpFire:
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $0F,$04
    .byte $EA,$27,$60,$FC
    .byte $F0,$28,$20,$00
    .byte $F0,$29,$20,$F8
    .byte $F8,$2A,$20,$00
    .byte $F8,$2B,$20,$F8
    .byte $00,$0B,$60,$00
    .byte $00,$1C,$60,$F8
    .byte $00,$1D,$60,$F0
    .byte $08,$0D,$60,$00
    .byte $80
.endif

;Bomb explode.
ObjFrame_BombExplode0:
    .byte $0C,$0C
    .byte $F8,$0E+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$0E+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $00,$0E+CFG_NUM_SAMUS_TILES,$A0,$F8
    .byte $00,$0E+CFG_NUM_SAMUS_TILES,$E0,$00
    .byte $80

;Samus run and point up.
ObjFrame_SamusRunPntUp0:
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $0F,$04
    .byte $E8,$27,$60,$FC
    .byte $F0,$28,$20,$00
    .byte $F0,$29,$20,$F8
    .byte $F8,$2A,$20,$00
    .byte $F8,$2B,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $08,$06,$60,$F8
    .byte $80
.endif

;Samus run and point up.
ObjFrame_SamusRunPntUp1:
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $0F,$04
    .byte $E8,$27,$60,$FC
    .byte $F0,$28,$20,$00
    .byte $F0,$29,$20,$F8
    .byte $F8,$2A,$20,$00
    .byte $F8,$2B,$20,$F8
    .byte $00,$0B,$60,$00
    .byte $00,$0C,$60,$F8
    .byte $08,$0D,$60,$00
    .byte $08,$0E,$60,$F8
    .byte $08,$0F,$60,$F0
    .byte $80
.endif

;Samus run and point up.
ObjFrame_SamusRunPntUp2:
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $0F,$04
    .byte $E8,$27,$60,$FC
    .byte $F0,$28,$20,$00
    .byte $F0,$29,$20,$F8
    .byte $F8,$2A,$20,$00
    .byte $F8,$2B,$20,$F8
    .byte $00,$14,$60,$00
    .byte $00,$15,$60,$F8
    .byte $00,$16,$60,$F0
    .byte $08,$17,$60,$00
    .byte $08,$18,$60,$F8
    .byte $80
.endif

;Samus run and point up.
ObjFrame_SamusRunPntUpFire0:
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $0F,$04
    .byte $EA,$27,$60,$FC
    .byte $F0,$28,$20,$00
    .byte $F0,$29,$20,$F8
    .byte $F8,$2A,$20,$00
    .byte $F8,$2B,$20,$F8
    .byte $00,$04,$60,$00
    .byte $00,$05,$60,$F8
    .byte $08,$06,$60,$F8
    .byte $80
.endif

;Samus point up, run and fire.
ObjFrame_SamusRunPntUpFire1:
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $0F,$04
    .byte $EA,$27,$60,$FC
    .byte $F0,$28,$20,$00
    .byte $F0,$29,$20,$F8
    .byte $F8,$2A,$20,$00
    .byte $F8,$2B,$20,$F8
    .byte $00,$0B,$60,$00
    .byte $00,$0C,$60,$F8
    .byte $08,$0D,$60,$00
    .byte $08,$0E,$60,$F8
    .byte $08,$0F,$60,$F0
    .byte $80
.endif

;Samus point up, run and fire.
ObjFrame_SamusRunPntUpFire2:
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $0F,$04
    .byte $EA,$27,$60,$FC
    .byte $F0,$28,$20,$00
    .byte $F0,$29,$20,$F8
    .byte $F8,$2A,$20,$00
    .byte $F8,$2B,$20,$F8
    .byte $00,$14,$60,$00
    .byte $00,$15,$60,$F8
    .byte $00,$16,$60,$F0
    .byte $08,$17,$60,$00
    .byte $08,$18,$60,$F8
    .byte $80
.endif

ObjFrame_DoropieFacingBackground:
    .byte $0C,$04
    .byte $EC,$10,$00,$F8
    .byte $EC,$00,$00,$00
    .byte $F4,$11,$00,$F8
    .byte $F4,$12,$00,$00
    .byte $F4,$13,$00,$08
    .byte $FC,$14,$00,$F8
    .byte $FC,$15,$00,$00
    .byte $FC,$0E,$00,$08
    .byte $04,$16,$00,$F8
    .byte $04,$17,$00,$00
    .byte $80

ObjFrame_DoropieTeleport0:
    .byte $00,$00
    .byte $F0,$24,$00,$F8
    .byte $F0,$26,$00,$00
    .byte $F8,$21,$00,$F8
    .byte $F8,$23,$00,$00
    .byte $00,$20,$00,$F8
    .byte $00,$25,$00,$00
    .byte $80

ObjFrame_DoropieTeleport1:
    .byte $00,$00
    .byte $EC,$22,$00,$FC
    .byte $F4,$27,$00,$FC
    .byte $FC,$27,$80,$FC
    .byte $04,$22,$80,$FC
    .byte $80

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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $07,$04
    .byte $F8,$1D,$20,$F8
    .byte $F8,$1E,$20,$00
    .byte $00,$1F,$20,$F8
    .byte $00,$20,$20,$00
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $07,$04
    .byte $00,$1D,$A0,$F8
    .byte $00,$1E,$A0,$00
    .byte $F8,$1F,$A0,$F8
    .byte $F8,$20,$A0,$00
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $07,$04
    .byte $FF,$1D,$E0,$00
    .byte $FF,$1E,$E0,$F8
    .byte $F7,$1F,$E0,$00
    .byte $F7,$20,$E0,$F8
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
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $07,$04
    .byte $F7,$1D,$60,$00
    .byte $F7,$1E,$60,$F8
    .byte $FF,$1F,$60,$00
    .byte $FF,$20,$60,$F8
    .byte $80
.endif

;Bomb explode.
ObjFrame_BombExplode1:
    .byte $0C,$0C
    .byte $F8,$0F+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$0F+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $00,$0F+CFG_NUM_SAMUS_TILES,$A0,$F8
    .byte $00,$0F+CFG_NUM_SAMUS_TILES,$E0,$00
    .byte $80

;Bomb explode.
ObjFrame_BombExplodeBlank:
    .byte $00,$00
    .byte $80

;Wave beam.
ObjFrame_WaveBeam:
    .byte $04,$04
    .byte $FC,$10+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Wave + ice beam.
ObjFrame_WaveIceBeam:
    .byte $04,$04
    .byte $FC,$10+CFG_NUM_SAMUS_TILES,$21,$FC
    .byte $80

;Bomb explode.
ObjFrame_BombExplode2:
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
ObjFrame_Bomb0:
    .byte $04,$04
    .byte $FC,$14+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Bomb tick.
ObjFrame_Bomb1:
    .byte $04,$04
    .byte $FC,$15+CFG_NUM_SAMUS_TILES,$20,$FC
    .byte $80

;Bomb item.
ObjFrame_BombItem:
.if CFG_NUM_SAMUS_TILES != 64
    .byte $03,$03
    .byte $F8,$30+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$31+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$32+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$33+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $03,$03
    .byte $F8,$80,$20,$F8
    .byte $F8,$81,$20,$00
    .byte $00,$82,$20,$F8
    .byte $00,$83,$20,$00
    .byte $80
.endif

;High jump item.
ObjFrame_HighJumpItem:
.if CFG_NUM_SAMUS_TILES != 64
    .byte $03,$03
    .byte $F8,$34+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$35+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$36+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$37+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $03,$03
    .byte $F8,$84,$20,$F8
    .byte $F8,$85,$20,$00
    .byte $00,$86,$20,$F8
    .byte $00,$87,$20,$00
    .byte $80
.endif

;Long beam item.
ObjFrame_LongBeamItem:
.if CFG_NUM_SAMUS_TILES != 64
    .byte $03,$03
    .byte $F8,$38+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$39+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$3A+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$3B+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $03,$03
    .byte $F8,$88,$20,$F8
    .byte $F8,$89,$20,$00
    .byte $00,$8A,$20,$F8
    .byte $00,$8B,$20,$00
    .byte $80
.endif

;Screw attack item.
ObjFrame_ScrewAttackItem:
.if CFG_NUM_SAMUS_TILES != 64
    .byte $03,$03
    .byte $F8,$3C+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$3D+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$3E+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$3F+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $03,$03
    .byte $F8,$8C,$20,$F8
    .byte $F8,$8D,$20,$00
    .byte $00,$8E,$20,$F8
    .byte $00,$8F,$20,$00
    .byte $80
.endif

;Maru Mari item.
ObjFrame_MaruMariItem:
.if CFG_NUM_SAMUS_TILES != 64
    .byte $03,$03
    .byte $F8,$40+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$41+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$42+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$43+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $03,$03
    .byte $F8,$90,$20,$F8
    .byte $F8,$91,$20,$00
    .byte $00,$92,$20,$F8
    .byte $00,$93,$20,$00
    .byte $80
.endif

;Varia item.
ObjFrame_VariaSuitItem:
.if CFG_NUM_SAMUS_TILES != 64
    .byte $03,$03
    .byte $F8,$44+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$45+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$46+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$47+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $03,$03
    .byte $F8,$94,$20,$F8
    .byte $F8,$95,$20,$00
    .byte $00,$96,$20,$F8
    .byte $00,$97,$20,$00
    .byte $80
.endif

;Wave beam item.
ObjFrame_WaveBeamItem:
.if CFG_NUM_SAMUS_TILES != 64
    .byte $03,$03
    .byte $F8,$38+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$48+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$3A+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$3B+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $03,$03
    .byte $F8,$88,$20,$F8
    .byte $F8,$98,$20,$00
    .byte $00,$8A,$20,$F8
    .byte $00,$8B,$20,$00
    .byte $80
.endif

;Ice beam item.
ObjFrame_IceBeamItem:
.if CFG_NUM_SAMUS_TILES != 64
    .byte $03,$03
    .byte $F8,$38+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$49+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$3A+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$3B+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $03,$03
    .byte $F8,$88,$20,$F8
    .byte $F8,$99,$20,$00
    .byte $00,$8A,$20,$F8
    .byte $00,$8B,$20,$00
    .byte $80
.endif

;Energy tank item.
ObjFrame_EnergyTankItem:
.if CFG_NUM_SAMUS_TILES != 64
    .byte $03,$03
    .byte $F8,$4A+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$4B+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $00,$4C+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$4D+CFG_NUM_SAMUS_TILES,$20,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $03,$03
    .byte $F8,$9A,$20,$F8
    .byte $F8,$9B,$20,$00
    .byte $00,$9C,$20,$F8
    .byte $00,$9D,$20,$00
    .byte $80
.endif

;Missile item.
ObjFrame_MissileItem:
.if CFG_NUM_SAMUS_TILES != 64
    .byte $03,$03
    .byte $F8,$4E+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $F8,$4E+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $00,$4F+CFG_NUM_SAMUS_TILES,$20,$F8
    .byte $00,$4F+CFG_NUM_SAMUS_TILES,$60,$00
    .byte $80
.elif CFG_NUM_SAMUS_TILES == 64
    .byte $03,$03
    .byte $F8,$9E,$20,$F8
    .byte $F8,$9E,$60,$00
    .byte $00,$9F,$20,$F8
    .byte $00,$9F,$60,$00
    .byte $80
.endif

;Skree burrow.
ObjFrame_SkreeProjectile:
    .byte $04,$04
    .byte $FC,$EA,$23,$FC
    .byte $80

;Kraid statue.
ObjFrame_KraidStatue:
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
ObjFrame_RidleyStatue:
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
ObjFrame_MissileExplode0:
    .byte $04,$08
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$00,$F8
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$40,$00
    .byte $80

;Missile explode.
ObjFrame_MissileExplode1:
    .byte $04,$0C
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$00,$F0
    .byte $F4,$17+CFG_NUM_SAMUS_TILES,$00,$F8
    .byte $F4,$17+CFG_NUM_SAMUS_TILES,$40,$00
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$40,$08
    .byte $04,$17+CFG_NUM_SAMUS_TILES,$C0,$F8
    .byte $04,$17+CFG_NUM_SAMUS_TILES,$C0,$00
    .byte $80

;Missile explode.
ObjFrame_MissileExplode2:
    .byte $04,$10
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$00,$E8
    .byte $EC,$17+CFG_NUM_SAMUS_TILES,$00,$F0
    .byte $EC,$17+CFG_NUM_SAMUS_TILES,$40,$08
    .byte $FC,$16+CFG_NUM_SAMUS_TILES,$40,$10
    .byte $0C,$17+CFG_NUM_SAMUS_TILES,$C0,$F0
    .byte $0C,$17+CFG_NUM_SAMUS_TILES,$C0,$08
    .byte $80

ObjFrame_ChargedShotRight0:
    .byte $08,$08
    .byte $F8,$6A,$00,$F8
    .byte $F8,$6B,$00,$00
    .byte $00,$6C,$00,$F8
    .byte $00,$6D,$00,$00
    .byte $80

ObjFrame_ChargedShotRight1:
    .byte $08,$08
    .byte $F8,$6E,$00,$F8
    .byte $F8,$6F,$00,$00
    .byte $00,$6E,$80,$F8
    .byte $00,$6F,$80,$00
    .byte $80

ObjFrame_ChargedShotUp0:
    .byte $08,$08
    .byte $F8,$70,$00,$F8
    .byte $F8,$71,$00,$00
    .byte $00,$72,$00,$F8
    .byte $00,$73,$00,$00
    .byte $80

ObjFrame_ChargedShotUp1:
    .byte $08,$08
    .byte $F8,$74,$00,$F8
    .byte $00,$75,$00,$F8
    .byte $F8,$74,$40,$00
    .byte $00,$75,$40,$00
    .byte $80

.if CFG_UNIQUE_LEFT_FACING_SAMUS_FRAMES != 0
ObjFrame_SamusRun0_L:
    .byte $0F,$04
    .byte $F0,$00,$20,$F8
    .byte $F0,$01,$20,$00
    .byte $F8,$2E,$20,$F8
    .byte $F8,$2F,$20,$00
    .byte $00,$04,$20,$F8
    .byte $00,$05,$20,$00
    .byte $08,$06,$20,$00
    .byte $80

ObjFrame_SamusRun1_L:
    .byte $0F,$04
    .byte $F0,$07,$20,$F8
    .byte $F0,$08,$20,$00
    .byte $F8,$30,$20,$F8
    .byte $F8,$31,$20,$00
    .byte $00,$0B,$20,$F8
    .byte $00,$0C,$20,$00
    .byte $08,$0D,$20,$F8
    .byte $08,$0E,$20,$00
    .byte $08,$0F,$20,$08
    .byte $80

ObjFrame_SamusRun2_L:
    .byte $0F,$04
    .byte $F0,$10,$20,$F8
    .byte $F0,$11,$20,$00
    .byte $F8,$32,$20,$F8
    .byte $F8,$33,$20,$00
    .byte $00,$14,$20,$F8
    .byte $00,$15,$20,$00
    .byte $00,$16,$20,$08
    .byte $08,$17,$20,$F8
    .byte $08,$18,$20,$00
    .byte $80

ObjFrame_SamusRunFire0_L:
    .byte $0F,$04
    .byte $F0,$00,$20,$F8
    .byte $F0,$01,$20,$00
    .byte $F8,$19,$60,$F0
    .byte $F8,$2C,$20,$F8
    .byte $F8,$2D,$20,$00
    .byte $00,$04,$20,$F8
    .byte $00,$05,$20,$00
    .byte $08,$06,$20,$00
    .byte $80

ObjFrame_SamusRunFire1_L:
    .byte $0F,$04
    .byte $F0,$00,$20,$F8
    .byte $F0,$01,$20,$00
    .byte $F8,$19,$60,$F0
    .byte $F8,$2C,$20,$F8
    .byte $F8,$2D,$20,$00
    .byte $00,$0B,$20,$F8
    .byte $00,$0C,$20,$00
    .byte $08,$0D,$20,$F8
    .byte $08,$0E,$20,$00
    .byte $08,$0F,$20,$08
    .byte $80

ObjFrame_SamusRunFire2_L:
    .byte $0F,$04
    .byte $F0,$00,$20,$F8
    .byte $F0,$01,$20,$00
    .byte $F8,$19,$60,$F0
    .byte $F8,$2C,$20,$F8
    .byte $F8,$2D,$20,$00
    .byte $00,$14,$20,$F8
    .byte $00,$15,$20,$00
    .byte $00,$16,$20,$08
    .byte $08,$17,$20,$F8
    .byte $08,$18,$20,$00
    .byte $80

ObjFrame_SamusJump_L:
    .byte $0F,$04
    .byte $F0,$00,$20,$F8
    .byte $F0,$01,$20,$00
    .byte $F8,$2E,$20,$F8
    .byte $F8,$2F,$20,$00
    .byte $00,$0B,$20,$F8
    .byte $00,$1C,$20,$00
    .byte $00,$1D,$20,$08
    .byte $08,$0D,$20,$F8
    .byte $80

ObjFrame_SamusJumpFire_L:
    .byte $0F,$04
    .byte $F0,$00,$20,$F8
    .byte $F0,$01,$20,$00
    .byte $F8,$19,$60,$F0
    .byte $F8,$2C,$20,$F8
    .byte $F8,$2D,$20,$00
    .byte $00,$0B,$20,$F8
    .byte $00,$1C,$20,$00
    .byte $00,$1D,$20,$08
    .byte $08,$0D,$20,$F8
    .byte $80

ObjFrame_SamusStand_L:
    .byte $0F,$04
    .byte $F0,$38,$20,$F8
    .byte $F0,$39,$20,$00
    .byte $F8,$3A,$20,$F8
    .byte $F8,$3B,$20,$00
    .byte $00,$22,$60,$F8
    .byte $00,$23,$60,$00
    .byte $08,$24,$20,$F8
    .byte $08,$25,$20,$00
    .byte $F8,$26,$20,$F4
    .byte $80

ObjFrame_SamusStandFire_L:
    .byte $0F,$04
    .byte $F0,$38,$20,$F8
    .byte $F0,$39,$20,$00
    .byte $F8,$3A,$20,$F8
    .byte $F8,$3B,$20,$00
    .byte $00,$22,$60,$F8
    .byte $00,$23,$60,$00
    .byte $08,$24,$20,$F8
    .byte $08,$25,$20,$00
    .byte $F8,$26,$20,$F6
    .byte $80

ObjFrame_SamusPntUp_L:
    .byte $0F,$04
    .byte $E8,$27,$20,$FC
    .byte $F0,$34,$20,$F8
    .byte $F0,$35,$20,$00
    .byte $F8,$36,$20,$F8
    .byte $F8,$37,$20,$00
    .byte $00,$22,$60,$F8
    .byte $00,$23,$60,$00
    .byte $08,$24,$20,$F8
    .byte $08,$25,$20,$00
    .byte $80

ObjFrame_SamusPntUpFire_L:
    .byte $0F,$04
    .byte $EA,$27,$20,$FC
    .byte $F0,$34,$20,$F8
    .byte $F0,$35,$20,$00
    .byte $F8,$36,$20,$F8
    .byte $F8,$37,$20,$00
    .byte $00,$22,$60,$F8
    .byte $00,$23,$60,$00
    .byte $08,$24,$20,$F8
    .byte $08,$25,$20,$00
    .byte $80

ObjFrame_SamusJumpPntUp_L:
    .byte $0F,$04
    .byte $E8,$27,$20,$FC
    .byte $F0,$34,$20,$F8
    .byte $F0,$35,$20,$00
    .byte $F8,$36,$20,$F8
    .byte $F8,$37,$20,$00
    .byte $00,$0B,$20,$F8
    .byte $00,$1C,$20,$00
    .byte $00,$1D,$20,$08
    .byte $08,$0D,$20,$F8
    .byte $80

ObjFrame_SamusJumpPntUpFire_L:
    .byte $0F,$04
    .byte $EA,$27,$20,$FC
    .byte $F0,$34,$20,$F8
    .byte $F0,$35,$20,$00
    .byte $F8,$36,$20,$F8
    .byte $F8,$37,$20,$00
    .byte $00,$0B,$20,$F8
    .byte $00,$1C,$20,$00
    .byte $00,$1D,$20,$08
    .byte $08,$0D,$20,$F8
    .byte $80

ObjFrame_SamusRunPntUp0_L:
    .byte $0F,$04
    .byte $E8,$27,$20,$FC
    .byte $F0,$34,$20,$F8
    .byte $F0,$35,$20,$00
    .byte $F8,$36,$20,$F8
    .byte $F8,$37,$20,$00
    .byte $00,$04,$20,$F8
    .byte $00,$05,$20,$00
    .byte $08,$06,$20,$00
    .byte $80

ObjFrame_SamusRunPntUp1_L:
    .byte $0F,$04
    .byte $E8,$27,$20,$FC
    .byte $F0,$34,$20,$F8
    .byte $F0,$35,$20,$00
    .byte $F8,$36,$20,$F8
    .byte $F8,$37,$20,$00
    .byte $00,$0B,$20,$F8
    .byte $00,$0C,$20,$00
    .byte $08,$0D,$20,$F8
    .byte $08,$0E,$20,$00
    .byte $08,$0F,$20,$08
    .byte $80

ObjFrame_SamusRunPntUp2_L:
    .byte $0F,$04
    .byte $E8,$27,$20,$FC
    .byte $F0,$34,$20,$F8
    .byte $F0,$35,$20,$00
    .byte $F8,$36,$20,$F8
    .byte $F8,$37,$20,$00
    .byte $00,$14,$20,$F8
    .byte $00,$15,$20,$00
    .byte $00,$16,$20,$08
    .byte $08,$17,$20,$F8
    .byte $08,$18,$20,$00
    .byte $80

ObjFrame_SamusRunPntUpFire0_L:
    .byte $0F,$04
    .byte $EA,$27,$20,$FC
    .byte $F0,$34,$20,$F8
    .byte $F0,$35,$20,$00
    .byte $F8,$36,$20,$F8
    .byte $F8,$37,$20,$00
    .byte $00,$04,$20,$F8
    .byte $00,$05,$20,$00
    .byte $08,$06,$20,$00
    .byte $80

ObjFrame_SamusRunPntUpFire1_L:
    .byte $0F,$04
    .byte $EA,$27,$20,$FC
    .byte $F0,$34,$20,$F8
    .byte $F0,$35,$20,$00
    .byte $F8,$36,$20,$F8
    .byte $F8,$37,$20,$00
    .byte $00,$0B,$20,$F8
    .byte $00,$0C,$20,$00
    .byte $08,$0D,$20,$F8
    .byte $08,$0E,$20,$00
    .byte $08,$0F,$20,$08
    .byte $80

ObjFrame_SamusRunPntUpFire2_L:
    .byte $0F,$04
    .byte $EA,$27,$20,$FC
    .byte $F0,$34,$20,$F8
    .byte $F0,$35,$20,$00
    .byte $F8,$36,$20,$F8
    .byte $F8,$37,$20,$00
    .byte $00,$14,$20,$F8
    .byte $00,$15,$20,$00
    .byte $00,$16,$20,$08
    .byte $08,$17,$20,$F8
    .byte $08,$18,$20,$00
    .byte $80
.endif
