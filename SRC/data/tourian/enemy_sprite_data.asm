;-----------------------------------[ Enemy animation data tables ]----------------------------------

EnAnimTbl: ;($A406)
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

EnAnim_RinkaSpawning:
    .byte _id_EnFrame_RinkaSpawning0, _id_EnFrame_RinkaSpawning1
EnAnim_Rinka:
    .byte _id_EnFrame_Rinka, $FF

EnAnim_RinkaExplode:
    .byte _id_EnFrame_RinkaExplode, $FF

EnAnim_Explosion:
    .byte _id_EnFrame_Explosion0, $F7, _id_EnFrame_Explosion1, $F7, $FF

;----------------------------[ Enemy sprite drawing pointer tables ]---------------------------------

EnFramePtrTable1:
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
    PtrTableEntry EnFramePtrTable1, EnFrame_CannonTimeBombSet
    PtrTableEntry EnFramePtrTable1, EnFrame1A
    PtrTableEntry EnFramePtrTable1, EnFrame_RinkaSpawning0
    PtrTableEntry EnFramePtrTable1, EnFrame_RinkaSpawning1
    PtrTableEntry EnFramePtrTable1, EnFrame_Rinka
    PtrTableEntry EnFramePtrTable1, EnFrame_RinkaExplode
    PtrTableEntry EnFramePtrTable1, EnFrame_Explosion0
    PtrTableEntry EnFramePtrTable1, EnFrame_Explosion1
    PtrTableEntry EnFramePtrTable1, EnFrame_MissilePickup
    PtrTableEntry EnFramePtrTable1, EnFrame_SmallEnergyPickup
    PtrTableEntry EnFramePtrTable1, EnFrame_BigEnergyPickup

;Enemy frame drawing data.

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
