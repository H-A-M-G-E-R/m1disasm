; -------------------
; METROID source code
; -------------------
; MAIN PROGRAMMERS
;     HAI YUKAMI
;   ZARU SOBAJIMA
;    GPZ SENGOKU
;    N.SHIOTANI
;     M.HOUDAI
; (C) 1986 NINTENDO
;
;Commented by Dirty McDingus (nmikstas@yahoo.com)
;Disassembled using TRaCER.

;Brinstar (memory page 1)

.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"
.include "config.asm"

.redef BANK = 1
.section "ROM Bank $001" bank 1 slot "ROMSwitchSlot" orga $8000 force

;------------------------------------------[ Start of code ]-----------------------------------------

.include "areas_common.asm"

;----------------------------------------------------------------------------------------------------

PalPntrTbl:
    PtrTableEntry PalPntrTbl, Palette00                 ;($A271)Default room palette.
    PtrTableEntry PalPntrTbl, Palette01                 ;($A295)Samus power suit palette.
    PtrTableEntry PalPntrTbl, Palette02                 ;($A2A1)Samus varia suit palette.
    PtrTableEntry PalPntrTbl, Palette03                 ;($A29B)Samus power suit with missiles selected palette.
    PtrTableEntry PalPntrTbl, Palette04                 ;($A2A7)Samus varia suit with missiles selected palette.
    PtrTableEntry PalPntrTbl, Palette05                 ;($A2AD)Alternate room palette.
    PtrTableEntry PalPntrTbl, Palette06                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette07                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette08                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette09                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette0A                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette0B                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette0C                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette0D                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette0E                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette0F                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette10                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette11                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette12                 ;($A2D0)
    PtrTableEntry PalPntrTbl, Palette13                 ;($A2D0)Samus fade in palette. Same regardless of varia suit and suitless.
    PtrTableEntry PalPntrTbl, Palette14                 ;($A2D7)Samus fade in palette.
    PtrTableEntry PalPntrTbl, Palette15                 ;($A2DE)Samus fade in palette.
    PtrTableEntry PalPntrTbl, Palette16                 ;($A2E5)Samus fade in palette.
    PtrTableEntry PalPntrTbl, Palette17                 ;($A2EC)Unused?
    PtrTableEntry PalPntrTbl, Palette18                 ;($A2F4)Suitless Samus power suit palette.
    PtrTableEntry PalPntrTbl, Palette19                 ;($A2FC)Suitless Samus varia suit palette.
    PtrTableEntry PalPntrTbl, Palette1A                 ;($A304)Suitless Samus power suit with missiles selected palette.
    PtrTableEntry PalPntrTbl, Palette1B                 ;($A30C)Suitless Samus varia suit with missiles selected palette.

AreaPointers:
    .word SpecItmsTbl               ;($A3D6)Beginning of special items table.
    .word EnFramePtrTable1          ;($9DE0)Pointer table into enemy animation data.
    .word EnAnimTbl                 ;($9D6A)index to values in addr tables for enemy animations.

; Tourian-specific jump table (dummied out in other banks)
;  Each line is RTS, NOP, NOP in this bank
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA

AreaRoutine: ; L95C3
    jmp AreaRoutineStub ; Just an RTS

; area init data
    .byte $FF                       ;Not used.
AreaMusicFlag:
    .byte music_Brinstar            ;Brinstar music init flag.
AreaMinibossMusic:
    .byte music_Tourian

;Special room numbers(used to start item room music).
AreaItemRoomNumbers:
    .byte $2B, $2C, $28, $0B, $1C, $0A, $1A

AreaSamusMapPosX:
    .byte $03   ;Samus start x coord on world map.
AreaSamusMapPosY:
    .byte $0E   ;Samus start y coord on world map.
AreaSamusX:
    .byte $80   ;Samus start horizontal screen position.
AreaSamusY:
    .byte $B0   ;Samus start vertical screen position.
AreaScrollDir:
    .byte $02   ;Starting scroll direction. 0 = vertical, 2 = horizontal

AreaFireballKilledAnimIndex:
    .byte EnAnim_FireballKilled - EnAnimTbl
AreaExplosionAnimIndex:
    .byte EnAnim_Explosion - EnAnimTbl

    .byte $00, $00
AreaFireballFallingAnimIndex:
    .byte $00, $00
AreaFireballSplatterAnimIndex:
    .byte $00, $00, $00, $00
AreaMellowAnimIndex:
    .byte EnAnim_Mellow - EnAnimTbl

AreaTilesets:
    .word TileAnim0, PalAnim0
    .word TileAnim1, PalAnim1

; Enemy AI jump table
ChooseEnemyAIRoutine:
    lda EnsExtra.0.type,x
    jsr CommonJump_ChooseRoutine
        .word SidehopperFloorAIRoutine ; 00 - Sidehopper
        .word SidehopperCeilingAIRoutine ; 01 - Ceiling sidehopper
        .word WaverAIRoutine ; 02 - Waver
        .word RipperAIRoutine ; 03 - Ripper
        .word SkreeAIRoutine ; 04 - Skree
        .word CrawlerAIRoutine ; 05 - Zoomer (crawler)
        .word RioAIRoutine ; 06 - Rio (swoopers)
        .word PipeBugAIRoutine ; 07 - Zeb
        .word KraidAIRoutine ; 08 - Kraid (crashes due to bug)
        .word KraidLintAIRoutine ; 09 - Kraid's lint (crashes)
        .word KraidNailAIRoutine ; 0A - Kraid's nail (crashes)
        .word $0000 ; 0B - Null pointers (hard crash)
        .word $0000 ; 0C - Null
        .word $0000 ; 0D - Null
        .word $0000 ; 0E - Null
        .word $0000 ; 0F - Null

; Animation related table ?
EnemyDeathAnimIndex:
    .byte EnAnim_27 - EnAnimTbl, EnAnim_27 - EnAnimTbl ; unused enemy
    .byte EnAnim_29 - EnAnimTbl, EnAnim_29 - EnAnimTbl ; unused enemy
    .byte EnAnim_2D - EnAnimTbl, EnAnim_2B - EnAnimTbl
    .byte EnAnim_RipperExplodeFacingRight - EnAnimTbl, EnAnim_RipperExplodeFacingLeft - EnAnimTbl
    .byte EnAnim_SkreeExplode - EnAnimTbl, EnAnim_SkreeExplode - EnAnimTbl
    .byte EnAnim_ZoomerExplode - EnAnimTbl, EnAnim_ZoomerExplode - EnAnimTbl
    .byte EnAnim_RioExplode - EnAnimTbl, EnAnim_RioExplode - EnAnimTbl
    .byte EnAnim_ZebExplodeFacingRight - EnAnimTbl, EnAnim_ZebExplodeFacingLeft - EnAnimTbl
    .byte EnAnim_72 - EnAnimTbl, EnAnim_74 - EnAnimTbl ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte EnAnim_Mellow - EnAnimTbl, EnAnim_Mellow - EnAnimTbl ; unused enemy
    .byte EnAnim_Mellow - EnAnimTbl, EnAnim_Mellow - EnAnimTbl ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy

EnemyHealthTbl:
    .byte $08, $08, $04, $FF, $02, $02, $04, $01, $20, $FF, $FF, $04, $01, $00, $00, $00

; Base damage caused by area enemies.
; Normal, tough
EnemyDamageTbl:
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08
    .byte $08, $08

MellowDamage:
    .word $0080

EnemyPrimaryPaletteTbl:
    .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02

; First byte: channel (0 = noise, 1 = SQ1, 2 = SQ2, 3 = tri, 4 = multi)
; Second byte: sound
; Minibosses ignore this table and use SFX_BossHit
EnemyHitSFXTbl:
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $03, sfxTri_BigEnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit

; ResetAnimIndex table for resting enemy
EnemyRestingAnimIndex:
    .byte EnAnim_05 - EnAnimTbl, EnAnim_05 - EnAnimTbl ; unused enemy
    .byte EnAnim_0B - EnAnimTbl, EnAnim_0B - EnAnimTbl ; unused enemy
    .byte EnAnim_17 - EnAnimTbl, EnAnim_13 - EnAnimTbl
    .byte EnAnim_RipperFacingRight - EnAnimTbl, EnAnim_RipperFacingLeft - EnAnimTbl
    .byte EnAnim_Skree - EnAnimTbl, EnAnim_Skree - EnAnimTbl
    .byte EnAnim_ZoomerOnFloor - EnAnimTbl, EnAnim_ZoomerOnFloor - EnAnimTbl
    .byte EnAnim_Rio - EnAnimTbl, EnAnim_Rio - EnAnimTbl
    .byte EnAnim_59 - EnAnimTbl, EnAnim_57 - EnAnimTbl
    .byte EnAnim_6C - EnAnimTbl, EnAnim_6F - EnAnimTbl ; unused enemy
    .byte EnAnim_5B - EnAnimTbl, EnAnim_5D - EnAnimTbl ; unused enemy
    .byte EnAnim_62 - EnAnimTbl, EnAnim_67 - EnAnimTbl ; unused enemy
    .byte EnAnim_Mellow - EnAnimTbl, EnAnim_Mellow - EnAnimTbl ; unused enemy
    .byte EnAnim_Mellow - EnAnimTbl, EnAnim_Mellow - EnAnimTbl ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy

; ResetAnimIndex table for active enemy
EnemyActiveAnimIndex:
    .byte EnAnim_05 - EnAnimTbl, EnAnim_05 - EnAnimTbl ; unused enemy
    .byte EnAnim_0B - EnAnimTbl, EnAnim_0B - EnAnimTbl ; unused enemy
    .byte EnAnim_17 - EnAnimTbl, EnAnim_13 - EnAnimTbl
    .byte EnAnim_RipperFacingRight - EnAnimTbl, EnAnim_RipperFacingLeft - EnAnimTbl
    .byte EnAnim_Skree - EnAnimTbl, EnAnim_Skree - EnAnimTbl
    .byte EnAnim_ZoomerOnFloor - EnAnimTbl, EnAnim_ZoomerOnFloor - EnAnimTbl
    .byte EnAnim_Rio - EnAnimTbl, EnAnim_Rio - EnAnimTbl
    .byte EnAnim_ZebFacingRight - EnAnimTbl, EnAnim_ZebFacingLeft - EnAnimTbl
    .byte EnAnim_6C - EnAnimTbl, EnAnim_6F - EnAnimTbl ; unused enemy
    .byte EnAnim_5B - EnAnimTbl, EnAnim_5D - EnAnimTbl ; unused enemy
    .byte EnAnim_5F - EnAnimTbl, EnAnim_64 - EnAnimTbl ; unused enemy
    .byte EnAnim_Mellow - EnAnimTbl, EnAnim_Mellow - EnAnimTbl ; unused enemy
    .byte EnAnim_Mellow - EnAnimTbl, EnAnim_Mellow - EnAnimTbl ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy

;another animation related table
L967B:
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00
    .byte $00 | $80
    .byte $00
    .byte $00
    .byte $00
    .byte $00
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 | $80 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy

; Bit 7: for when bit 1 is set, 0=force y axis only, 1=force y and x axis
; Bit 5: EnemyMovementInstr_FE failure -> 0=nothing. 1=set EnData05 to (~(facing dir bits) | (bits 0-4 of this)) 
; Bits 0-4 are used when bit 5 is set
; Bit 4: is enemy intangible (unsure of this)
; Bits 2-3: Was: #$00,#$04=normal enemy hit sound, #$08=big enemy hit sound, #$0C=metroid hit sound
; Bit 1: force enemy speed to point towards samus
; Bit 0: can drop big energy
L968B:
    .byte $01, $01, $01, $00, $86, $04, $89, $80, $81, $00, $00, $00, $82, $00, $00, $00

; EnData0D table (set upon load, and a couple other times)
EnemyForceSpeedTowardsSamusDelayTbl:
    .byte $01, $01, $01, $01, $01, $01, $01, $01, $20, $01, $01, $01, $40, $00, $00, $00

; Update EnData05 bit 4 or bit 3 depending on whether samus is close enough to the enemy
; bit 7: 0=EnData05 bit 4, 1=EnData05 bit 3
; bit 4-6: zero
; bit 0-3: number of blocks distance threshold in the axis indicated by EnData05 bit 7
EnemyDistanceToSamusThreshold:
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $6 | (0 << 7)
    .byte $00
    .byte $3 | (1 << 7)
    .byte $00
    .byte $8 | (1 << 7)
    .byte $00
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy

EnemyInitDelayTbl:
    .byte $08, $08, $01, $01, $01, $01, $10, $08, $10, $00, $00, $01, $01, $00, $00, $00

; Index to a table starting at EnemyMovementChoices
EnemyMovementChoiceOffset:
    .byte EnemyMovementChoice_SidehopperFloor - EnemyMovementChoices ; unused enemy
    .byte EnemyMovementChoice_SidehopperCeiling - EnemyMovementChoices ; unused enemy
    .byte EnemyMovementChoice_Waver - EnemyMovementChoices
    .byte EnemyMovementChoice_Ripper - EnemyMovementChoices
    .byte EnemyMovementChoice_Skree - EnemyMovementChoices
    .byte EnemyMovementChoice_Zoomer - EnemyMovementChoices ; enemy moves manually
    .byte EnemyMovementChoice_Rio - EnemyMovementChoices
    .byte EnemyMovementChoice_Zeb - EnemyMovementChoices
    .byte EnemyMovementChoice_Kraid - EnemyMovementChoices ; unused enemy
    .byte EnemyMovementChoice_KraidLint - EnemyMovementChoices ; unused enemy
    .byte EnemyMovementChoice_KraidNail - EnemyMovementChoices ; unused enemy
    .byte EnemyMovementChoice_Zoomer - EnemyMovementChoices ; unused enemy
    .byte EnemyMovementChoice08 - EnemyMovementChoices ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy

; EnData08*2 + one of the low bits of EnData05 is used as an index to this pointer table
; Pointer table to enemy movement strings
EnemyMovementPtrs:
    .word EnemyMovement00_R, EnemyMovement00_L
    .word EnemyMovement01_R, EnemyMovement01_L
    .word EnemyMovement02_R, EnemyMovement02_L
    .word EnemyMovement03_R, EnemyMovement03_L
    .word EnemyMovement04_R, EnemyMovement04_L
    .word EnemyMovement05_R, EnemyMovement05_L
    .word EnemyMovement06_R, EnemyMovement06_L
    .word EnemyMovement07_R, EnemyMovement07_L
    .word EnemyMovement08_R, EnemyMovement08_L
    .word EnemyMovement09_R, EnemyMovement09_L
    .word EnemyMovement0A_R, EnemyMovement0A_L
    .word EnemyMovement0B_R, EnemyMovement0B_L
    .word EnemyMovement0C_R, EnemyMovement0C_L
    .word EnemyMovement0D_R, EnemyMovement0D_L
    .word EnemyMovement0E_R, EnemyMovement0E_L
    .word EnemyMovement0F_R, EnemyMovement0F_L
    .word EnemyMovement10_R, EnemyMovement10_L
    .word EnemyMovement11_R, EnemyMovement11_L
; Unused padding to the above?
    .byte $00, $00, $00, $00, $00, $00, $00, $00

; enemy accel y table ($972B)
EnAccelYTable:
    .byte  $20 ; $00
    .byte  $10 ; $01
    .byte  $0C ; $02
    .byte -$10 ; $03
    .byte -$0C ; $04
    .byte  $00 ; $05
    .byte  $00 ; $06
    .byte  $20 ; $07
    .byte -$20 ; $08
    .byte  $00 ; $09
    .byte  $15 ; $0A
    .byte  $1C ; $0B
    .byte  $00 ; $0C
    .byte  $00 ; $0D
    .byte  $00 ; $0E
    .byte  $00 ; $0F
    .byte  $00 ; $10
    .byte  $00 ; $11
    .byte  $00 ; $12
    .byte  $00 ; $13
; enemy accel x table ($973F)
EnAccelXTable:
    .byte  $00 ; $00
    .byte  $00 ; $01
    .byte  $00 ; $02
    .byte  $00 ; $03
    .byte  $00 ; $04
    .byte  $00 ; $05
    .byte  $00 ; $06
    .byte  $00 ; $07
    .byte  $00 ; $08
    .byte  $00 ; $09
    .byte  $00 ; $0A
    .byte  $00 ; $0B
    .byte  $00 ; $0C
    .byte  $00 ; $0D
    .byte  $00 ; $0E
    .byte  $00 ; $0F
    .byte  $00 ; $10
    .byte  $00 ; $11
    .byte  $00 ; $12
    .byte  $00 ; $13
; enemy speed y table ($9753)
EnSpeedYTable:
    .word -$04F0 ; $00
    .word -$01F8 ; $01
    .word -$00FA ; $02
    .word  $01F8 ; $03
    .word  $00FA ; $04
    .word  $0000 ; $05
    .word  $0000 ; $06
    .word  $0010 ; $07
    .word  $05F0 ; $08
    .word -$0200 ; $09
    .word -$01F6 ; $0A
    .word  $000E ; $0B
    .word  $0000 ; $0C
    .word  $0000 ; $0D
    .word  $0000 ; $0E
    .word  $0000 ; $0F
    .word  $0000 ; $10
    .word  $0000 ; $11
    .word  $0000 ; $12
    .word  $0000 ; $13
; enemy speed x table ($9767)
EnSpeedXTable:
    .word  $0000 ; $00
    .word  $0100 ; $01
    .word  $0100 ; $02
    .word  $0100 ; $03
    .word  $0100 ; $04
    .word  $0000 ; $05
    .word  $0000 ; $06
    .word  $0000 ; $07
    .word  $0100 ; $08
    .word  $0000 ; $09
    .word  $0100 ; $0A
    .word  $0100 ; $0B
    .word  $0000 ; $0C
    .word  $0000 ; $0D
    .word  $0000 ; $0E
    .word  $0000 ; $0F
    .word  $0000 ; $10
    .word  $0000 ; $11
    .word  $0000 ; $12
    .word  $0000 ; $13

; Behavior-Related Table?
; bit7: bit7 of EnData05 for pipe bug
; bit6: 0=enemy uses movement strings. 1=enemy uses acceleration and speed and subpixels.
; bit4: 0=is not metroid, 1=is metroid
; bit2-3: bit6-7 of EnsExtra.0.data1F for resting enemies
; bit1: toggle bit2 of EnData05 in EnemyIfMoveFailedDown/EnemyIfMoveFailedUp
; bit0: toggle bit0 of EnData05 in EnemyIfMoveFailedRight/EnemyIfMoveFailedLeft
L977B:
    .byte $64, $6C, $21, $01, $04, $00, $4C, $40, $04, $00, $00, $40, $40, $00, $00, $00

; Enemy animation related table?
EnemyFireballRisingAnimIndexTable:
    .byte $00, $00
    .byte EnAnim_64 - EnAnimTbl, EnAnim_67 - EnAnimTbl
    .byte EnAnim_Mellow - EnAnimTbl, EnAnim_Mellow - EnAnimTbl
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
EnemyFireballPosOffsetX:
    .byte $0C, $F4
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
EnemyFireballPosOffsetY:
    .byte $F4
    .byte $00
    .byte $00
    .byte $00

; Another movement pointer table?
; Referenced using EnData0A
EnemyFireballMovementPtrTable:
    .word EnemyFireballMovement0
    .word EnemyFireballMovement1
    .word EnemyFireballMovement2
    .word EnemyFireballMovement3

; Referenced using EnData0A / 2
EnemyFireballDamageTbl:
    .byte $08, $08, $08, $08

; Table used for indexing the blasting animations in TileBlastAnim
TileBlastBlastAnimIndexTable:
    .byte TileBlastAnim0 - TileBlastAnim ; tile #$70
    .byte TileBlastAnim0 - TileBlastAnim ; tile #$74
    .byte TileBlastAnim0 - TileBlastAnim ; tile #$78
    .byte TileBlastAnim0 - TileBlastAnim ; tile #$7C
    .byte TileBlastAnim0 - TileBlastAnim ; tile #$80
    .byte TileBlastAnim0 - TileBlastAnim ; tile #$84
    .byte TileBlastAnim0 - TileBlastAnim ; tile #$88
    .byte TileBlastAnim0 - TileBlastAnim ; tile #$8C
    .byte TileBlastAnim0 - TileBlastAnim ; tile #$90
    .byte TileBlastAnim0 - TileBlastAnim ; tile #$94

; Delay before tile respawns (* 4). 0 = never respawn
TileBlastRespawnDelayTbl:
    .byte $50 ; tile #$70
    .byte $50 ; tile #$74
    .byte $50 ; tile #$78
    .byte $50 ; tile #$7C
    .byte $50 ; tile #$80
    .byte $50 ; tile #$84
    .byte $50 ; tile #$88
    .byte $50 ; tile #$8C
    .byte $50 ; tile #$90
    .byte $50 ; tile #$94

; Table used for indexing the respawning animations in TileBlastAnim
TileBlastRespawnAnimIndexTable:
    .byte TileBlastAnim6 - TileBlastAnim ; tile #$70
    .byte TileBlastAnim7 - TileBlastAnim ; tile #$74
    .byte TileBlastAnim8 - TileBlastAnim ; tile #$78
    .byte TileBlastAnim0 - TileBlastAnim ; tile #$7C
    .byte TileBlastAnim1 - TileBlastAnim ; tile #$80
    .byte TileBlastAnim2 - TileBlastAnim ; tile #$84
    .byte TileBlastAnim3 - TileBlastAnim ; tile #$88
    .byte TileBlastAnim4 - TileBlastAnim ; tile #$8C
    .byte TileBlastAnim9 - TileBlastAnim ; tile #$90
    .byte TileBlastAnim5 - TileBlastAnim ; tile #$94

; Frame data for tile blasts

TileBlastAnim:
TileBlastAnim0:  .byte $06,$07,$00,$FE ; blasting tile or respawning tile #$7C
TileBlastAnim1:  .byte $07,$06,$01,$FE ; respawning tile #$80
TileBlastAnim2:  .byte $07,$06,$02,$FE ; respawning tile #$84
TileBlastAnim3:  .byte $07,$06,$03,$FE ; respawning tile #$88
TileBlastAnim4:  .byte $07,$06,$04,$FE ; respawning tile #$8C
TileBlastAnim5:  .byte $07,$06,$05,$FE ; respawning tile #$94
TileBlastAnim6:  .byte $07,$06,$09,$FE ; respawning tile #$70
TileBlastAnim7:  .byte $07,$06,$0A,$FE ; respawning tile #$74
TileBlastAnim8:  .byte $07,$06,$0B,$FE ; respawning tile #$78
TileBlastAnim9:  .byte $07,$06,$08,$FE ; respawning tile #$90

; Referenced by LFE83
TileBlastFramePtrTable:
    .word TileBlastFrame00
    .word TileBlastFrame01
    .word TileBlastFrame02
    .word TileBlastFrame03
    .word TileBlastFrame04
    .word TileBlastFrame05
    .word TileBlastFrame06
    .word TileBlastFrame07
    .word TileBlastFrame08
    .word TileBlastFrame09
    .word TileBlastFrame0A
    .word TileBlastFrame0B
    .word TileBlastFrame0C
    .word TileBlastFrame0D
    .word TileBlastFrame0E
    .word TileBlastFrame0F
    .word TileBlastFrame10

; If I'm reading the code correctly, this table is accessed with this formula:
;  EnData08 = EnemyMovementChoices[(EnemyMovementChoices[EnemyMovementChoiceOffset[EnemyDataIndex]] and (FrameCount xor RandomNumber1))+1]
; These values are used as indexes into EnAccelYTable, EnAccelXTable, EnSpeedYTable, EnSpeedXTable.
EnemyMovementChoices:
EnemyMovementChoice_SidehopperFloor:
    EnemyMovementChoiceEntry $01, $02
EnemyMovementChoice_SidehopperCeiling:
    EnemyMovementChoiceEntry $03, $04
EnemyMovementChoice_Waver:
    EnemyMovementChoiceEntry $05
EnemyMovementChoice_Ripper:
    EnemyMovementChoiceEntry $06
EnemyMovementChoice_Skree:
    EnemyMovementChoiceEntry $07
EnemyMovementChoice_Rio:
    EnemyMovementChoiceEntry $08
EnemyMovementChoice_Zeb:
    EnemyMovementChoiceEntry $09
EnemyMovementChoice_Zoomer: ; enemy moves manually
    EnemyMovementChoiceEntry $00
EnemyMovementChoice08: ; unused
    EnemyMovementChoiceEntry $0B
EnemyMovementChoice_Kraid: ; unused
    EnemyMovementChoiceEntry $0C, $0D
EnemyMovementChoice_KraidLint: ; unused
    EnemyMovementChoiceEntry $0E
EnemyMovementChoice_KraidNail: ; unused
    EnemyMovementChoiceEntry $0F, $10, $11, $0F

;-------------------------------------------------------------------------------
;I believe this is the point where the level banks don't need to match addresses
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
; Enemy movement strings (pointed to by the table L96DB)
;  These are decoded/read starting at about L8244 in areas_common.asm
;  An enemy may use these if bit 6 of their value on the table at L977B is set
;  EnCounter determined the offset within the string to be read
;
; Format
; values <0xF0 specify a duration in frames, followed by a bitpacked velocity vector
; 0xFA-0xFE are control codes I haven't deciphered yet
; 0xFF is "restart"

; unused (???)
EnemyMovement00_R:
    SignMagSpeed $40,  2,  2
    EnemyMovementInstr_FE

EnemyMovement00_L:
    SignMagSpeed $40, -2,  2
    EnemyMovementInstr_FE

EnemyMovement01_R:
EnemyMovement01_L:
EnemyMovement02_R:
EnemyMovement02_L:
EnemyMovement03_R:
EnemyMovement03_L:
EnemyMovement04_R:
EnemyMovement04_L:
    ; nothing

; waver
EnemyMovement05_R:
    SignMagSpeed $04,  2, -7
    SignMagSpeed $08,  2, -6
    SignMagSpeed $08,  2, -5
    SignMagSpeed $0A,  2, -3
    SignMagSpeed $06,  2, -1
    SignMagSpeed $08,  2,  0
    SignMagSpeed $0A,  2,  1
    SignMagSpeed $06,  2,  3
    SignMagSpeed $0A,  2,  5
    SignMagSpeed $08,  2,  6
    SignMagSpeed $04,  2,  7
    SignMagSpeed $04,  2,  7
    SignMagSpeed $08,  2,  6
    SignMagSpeed $08,  2,  5
    SignMagSpeed $0A,  2,  3
    SignMagSpeed $06,  2,  1
    SignMagSpeed $08,  2,  0
    SignMagSpeed $0A,  2, -1
    SignMagSpeed $06,  2, -3
    SignMagSpeed $0A,  2, -5
    SignMagSpeed $08,  2, -6
    SignMagSpeed $04,  2, -7
    EnemyMovementInstr_ClearEnJumpDsplcmnt

    SignMagSpeed $06,  2, -5
    SignMagSpeed $0C,  2, -3
    SignMagSpeed $10,  2, -1
    SignMagSpeed $0A,  2,  0
    SignMagSpeed $0E,  2,  1
    SignMagSpeed $0A,  2,  3
    SignMagSpeed $08,  2,  5
    SignMagSpeed $06,  2,  5
    SignMagSpeed $0C,  2,  3
    SignMagSpeed $10,  2,  1
    SignMagSpeed $0A,  2,  0
    SignMagSpeed $0E,  2, -1
    SignMagSpeed $0A,  2, -3
    SignMagSpeed $08,  2, -5
    EnemyMovementInstr_ClearEnJumpDsplcmnt
    EnemyMovementInstr_Restart

EnemyMovement05_L:
    SignMagSpeed $04, -2, -7
    SignMagSpeed $08, -2, -6
    SignMagSpeed $08, -2, -5
    SignMagSpeed $0A, -2, -3
    SignMagSpeed $06, -2, -1
    SignMagSpeed $08, -2,  0
    SignMagSpeed $0A, -2,  1
    SignMagSpeed $06, -2,  3
    SignMagSpeed $0A, -2,  5
    SignMagSpeed $08, -2,  6
    SignMagSpeed $04, -2,  7
    SignMagSpeed $04, -2,  7
    SignMagSpeed $08, -2,  6
    SignMagSpeed $08, -2,  5
    SignMagSpeed $0A, -2,  3
    SignMagSpeed $06, -2,  1
    SignMagSpeed $08, -2,  0
    SignMagSpeed $0A, -2, -1
    SignMagSpeed $06, -2, -3
    SignMagSpeed $0A, -2, -5
    SignMagSpeed $08, -2, -6
    SignMagSpeed $04, -2, -7
    EnemyMovementInstr_ClearEnJumpDsplcmnt

    SignMagSpeed $06, -2, -5
    SignMagSpeed $0C, -2, -3
    SignMagSpeed $10, -2, -1
    SignMagSpeed $0A, -2,  0
    SignMagSpeed $0E, -2,  1
    SignMagSpeed $0A, -2,  3
    SignMagSpeed $08, -2,  5
    SignMagSpeed $06, -2,  5
    SignMagSpeed $0C, -2,  3
    SignMagSpeed $10, -2,  1
    SignMagSpeed $0A, -2,  0
    SignMagSpeed $0E, -2, -1
    SignMagSpeed $0A, -2, -3
    SignMagSpeed $08, -2, -5
    EnemyMovementInstr_ClearEnJumpDsplcmnt
    EnemyMovementInstr_Restart

; ripper
EnemyMovement06_R:
    SignMagSpeed $02,  1,  0
    EnemyMovementInstr_Restart

EnemyMovement06_L:  
    SignMagSpeed $02, -1,  0
    EnemyMovementInstr_Restart

; skree
EnemyMovement07_R:
    SignMagSpeed $08,  2,  2
    SignMagSpeed $02,  2,  4
    SignMagSpeed $02,  2,  2
    SignMagSpeed $02,  2,  4
    SignMagSpeed $02,  2,  6
    SignMagSpeed $02,  2,  4
    SignMagSpeed $08,  2,  6
    EnemyMovementInstr_RepeatPreviousUntilFailure
    SignMagSpeed $02,  0,  0
    SignMagSpeed $C8,  0,  0
    EnemyMovementInstr_StopMovement

EnemyMovement07_L:
    SignMagSpeed $08, -2,  2
    SignMagSpeed $02, -2,  4
    SignMagSpeed $02, -2,  2
    SignMagSpeed $02, -2,  4
    SignMagSpeed $02, -2,  6
    SignMagSpeed $02, -2,  4
    SignMagSpeed $08, -2,  6
    EnemyMovementInstr_RepeatPreviousUntilFailure
    SignMagSpeed $02,  0,  0
    SignMagSpeed $C8,  0,  0
    EnemyMovementInstr_StopMovement


EnemyMovement08_R:
EnemyMovement08_L:
EnemyMovement09_R:
EnemyMovement09_L:
EnemyMovement0A_R:
EnemyMovement0A_L:
EnemyMovement0B_R:
EnemyMovement0B_L:
    ; nothing

; unused (kraid)
EnemyMovement0C_R:
    SignMagSpeed $28,  1,  1
    SignMagSpeed $14,  0,  0
    SignMagSpeed $28, -1,  1
    EnemyMovementInstr_FE

EnemyMovement0C_L:
    SignMagSpeed $28, -1,  1
    SignMagSpeed $14,  0,  0
    SignMagSpeed $28,  1,  1
    EnemyMovementInstr_FE

EnemyMovement0D_R:
    SignMagSpeed $3C,  1,  1
    SignMagSpeed $14,  0,  0
    SignMagSpeed $3C, -1,  1
    EnemyMovementInstr_FE

EnemyMovement0D_L:
    SignMagSpeed $3C, -1,  1
    SignMagSpeed $14,  0,  0
    SignMagSpeed $3C,  1,  1
    EnemyMovementInstr_FE

; unused (kraid lint)
EnemyMovement0E_R:
    SignMagSpeed $A0,  4,  0
    EnemyMovementInstr_Restart

EnemyMovement0E_L:
    SignMagSpeed $A0, -4,  0
    EnemyMovementInstr_Restart

; unused (kraid nail)
EnemyMovement0F_R:
    SignMagSpeed $04,  3, -7
    SignMagSpeed $08,  3, -6
    SignMagSpeed $08,  3, -5
    SignMagSpeed $0A,  3, -3
    SignMagSpeed $06,  3, -1
    SignMagSpeed $08,  3,  0
    SignMagSpeed $0A,  3,  1
    SignMagSpeed $06,  3,  3
    SignMagSpeed $0A,  3,  5
    SignMagSpeed $08,  3,  6
    SignMagSpeed $A0,  3,  7
    EnemyMovementInstr_Restart

EnemyMovement0F_L:
    SignMagSpeed $04, -3, -7
    SignMagSpeed $08, -3, -6
    SignMagSpeed $08, -3, -5
    SignMagSpeed $0A, -3, -3
    SignMagSpeed $06, -3, -1
    SignMagSpeed $08, -3,  0
    SignMagSpeed $0A, -3,  1
    SignMagSpeed $06, -3,  3
    SignMagSpeed $0A, -3,  5
    SignMagSpeed $08, -3,  6
    SignMagSpeed $A0, -3,  7
    EnemyMovementInstr_Restart

EnemyMovement10_R:
    SignMagSpeed $04,  4, -7
    SignMagSpeed $08,  4, -6
    SignMagSpeed $08,  4, -5
    SignMagSpeed $0A,  4, -3
    SignMagSpeed $06,  4, -1
    SignMagSpeed $08,  4,  0
    SignMagSpeed $0A,  4,  1
    SignMagSpeed $06,  4,  3
    SignMagSpeed $0A,  4,  5
    SignMagSpeed $08,  4,  6
    SignMagSpeed $A0,  4,  7
    EnemyMovementInstr_Restart

EnemyMovement10_L:
    SignMagSpeed $04, -4, -7
    SignMagSpeed $08, -4, -6
    SignMagSpeed $08, -4, -5
    SignMagSpeed $0A, -4, -3
    SignMagSpeed $06, -4, -1
    SignMagSpeed $08, -4,  0
    SignMagSpeed $0A, -4,  1
    SignMagSpeed $06, -4,  3
    SignMagSpeed $0A, -4,  5
    SignMagSpeed $08, -4,  6
    SignMagSpeed $A0, -4,  7
    EnemyMovementInstr_Restart

EnemyMovement11_R:
    SignMagSpeed $04,  2, -7
    SignMagSpeed $08,  2, -6
    SignMagSpeed $08,  2, -5
    SignMagSpeed $0A,  2, -3
    SignMagSpeed $06,  2, -1
    SignMagSpeed $08,  2,  0
    SignMagSpeed $0A,  2,  1
    SignMagSpeed $06,  2,  3
    SignMagSpeed $0A,  2,  5
    SignMagSpeed $08,  2,  6
    SignMagSpeed $A0,  2,  7
    EnemyMovementInstr_Restart

EnemyMovement11_L:
    SignMagSpeed $04, -2, -7
    SignMagSpeed $08, -2, -6
    SignMagSpeed $08, -2, -5
    SignMagSpeed $0A, -2, -3
    SignMagSpeed $06, -2, -1
    SignMagSpeed $08, -2,  0
    SignMagSpeed $0A, -2,  1
    SignMagSpeed $06, -2,  3
    SignMagSpeed $0A, -2,  5
    SignMagSpeed $08, -2,  6
    SignMagSpeed $A0, -2,  7
    EnemyMovementInstr_Restart

;-------------------------------------------------------------------------------

; Instruction (?) strings of a different type pointed to by EnemyFireballMovementPtrTable
EnemyFireballMovement0:
    SignMagSpeed $04,  3, -3
    SignMagSpeed $05,  3, -2
    SignMagSpeed $06,  3, -1
    SignMagSpeed $07,  3,  0
    SignMagSpeed $06,  3,  1
    SignMagSpeed $05,  3,  2
    SignMagSpeed $50,  3,  3
    .byte $FF

EnemyFireballMovement1:
    SignMagSpeed $09,  2, -4
    SignMagSpeed $08,  2, -2
    SignMagSpeed $07,  2, -1
    SignMagSpeed $07,  2,  1
    SignMagSpeed $08,  2,  2
    SignMagSpeed $09,  2,  4
    SignMagSpeed $50,  2,  7
    .byte $FF

EnemyFireballMovement2:
    SignMagSpeed $07,  2, -4
    SignMagSpeed $06,  2, -2
    SignMagSpeed $05,  2, -1
    SignMagSpeed $05,  2,  1
    SignMagSpeed $06,  2,  2
    SignMagSpeed $07,  2,  4
    SignMagSpeed $50,  2,  7
    .byte $FF

EnemyFireballMovement3:
    SignMagSpeed $05,  2, -4
    SignMagSpeed $04,  2, -2
    SignMagSpeed $03,  2, -1
    SignMagSpeed $03,  2,  1
    SignMagSpeed $04,  2,  2
    SignMagSpeed $05,  2,  4
    SignMagSpeed $50,  2,  7
    .byte $FF

;-------------------------------------------------------------------------------

CommonEnemyJump_00_01_02:
    lda EnemyStatusPreAI
    cmp #enemyStatus_Resting
    beq @resting
    cmp #enemyStatus_Explode
    beq @explode
        ; enemy default
        lda $00
        jmp CommonJump_00
    @resting:
        ; enemy resting
        lda $01
        jmp CommonJump_01
    @explode:
        ; enemy explode
        jmp CommonJump_02

.include "enemies/sidehopper.asm"

;-------------------------------------------------------------------------------

.include "enemies/ripper.asm"

;-------------------------------------------------------------------------------

.include "enemies/waver.asm"

;-------------------------------------------------------------------------------
; SkreeRoutine
.include "enemies/skree.asm"
; The crawler routine below depends upon two of the exit labels in skree.asm

;-------------------------------------------------------------------------------

.include "enemies/crawler.asm"

;-------------------------------------------------------------------------------
; Rio/Swooper Routine
.include "enemies/rio.asm"

;-------------------------------------------------------------------------------

.include "enemies/pipe_bug.asm"

;-------------------------------------------------------------------------------
; Brinstar Kraid Routine
.include "enemies/kraid.asm"
; Note: For this bank the functions StorePositionToTemp and LoadPositionFromTemp
;  are in are in kraid.asm. Extract those functions from that file if you plan
;  on removing it.

AreaRoutineStub: ;L9D35
    rts

; Strings pointed to by TileBlastFramePtrTable
TileBlastFrame00:
    .byte $22
    .byte $FF, $FF
    .byte $FF, $FF

TileBlastFrame01:
    .byte $22
    .byte $80, $81
    .byte $82, $83

TileBlastFrame02:
    .byte $22
    .byte $84, $85
    .byte $86, $87

TileBlastFrame03:
    .byte $22
    .byte $88, $89
    .byte $8A, $8B

TileBlastFrame04:
    .byte $22
    .byte $8C, $8D
    .byte $8E, $8F

TileBlastFrame05:
    .byte $22
    .byte $94, $95
    .byte $96, $97

TileBlastFrame06:
    .byte $22
    .byte $9C, $9D
    .byte $9D, $9C

TileBlastFrame07:
    .byte $22
    .byte $9E, $9F
    .byte $9F, $9E

TileBlastFrame08:
    .byte $22
    .byte $90, $91
    .byte $92, $93

TileBlastFrame09:
    .byte $32
    .byte $4E, $4E
    .byte $4E, $4E
    .byte $4E, $4E

TileBlastFrame0A:
TileBlastFrame0B:
TileBlastFrame0C:
TileBlastFrame0D:
TileBlastFrame0E:
TileBlastFrame0F:
TileBlastFrame10:
    ; nothing

; duration, CHR bank
; 0 = end
TileAnim0:
TileAnim1:
    .byte $FF, BrinstarBG/$400
    .byte $00

; first entry is initial palette index
; other entries are duration, palette index
; 0 = end
PalAnim0:
    .byte _id_Palette00+1
    .byte $00

PalAnim1:
    .byte _id_Palette05+1
    .byte $00

.include "data/brinstar/enemy_sprite_data.asm"

;----------------------------------------[ Palette data ]--------------------------------------------

.include "data/brinstar/palettes.asm"

;------------------------------------[ Special items table ]-----------------------------------------

.include "data/brinstar/global_objs.asm"

.ends

