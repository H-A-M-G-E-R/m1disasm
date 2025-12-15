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

;Ridley hideout (memory page 5)

.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"
.include "config.asm"

.redef BANK = 5
.section "ROM Bank $005" bank 5 slot "ROMSwitchSlot" orga $8000 force

;------------------------------------------[ Start of code ]-----------------------------------------

.include "areas_common.asm"

;----------------------------------------------------------------------------------------------------

PalPntrTbl:
    PtrTableEntry PalPntrTbl, Palette00                 ;($A0EB)Default room palette.
    PtrTableEntry PalPntrTbl, Palette01                 ;($A10F)Samus power suit palette.
    PtrTableEntry PalPntrTbl, Palette02                 ;($A11B)Samus varia suit palette.
    PtrTableEntry PalPntrTbl, Palette03                 ;($A115)Samus power suit with missiles selected palette.
    PtrTableEntry PalPntrTbl, Palette04                 ;($A121)Samus varia suit with missiles selected palette.
    PtrTableEntry PalPntrTbl, Palette05                 ;($A127)Alternate room palette.
    PtrTableEntry PalPntrTbl, Palette06                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette07                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette08                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette09                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette0A                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette0B                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette0C                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette0D                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette0E                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette0F                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette10                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette11                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette12                 ;($A13B)
    PtrTableEntry PalPntrTbl, Palette13                 ;($A13B)Samus fade in palette. Same regardless of varia suit and suitless.
    PtrTableEntry PalPntrTbl, Palette14                 ;($A142)Samus fade in palette.
    PtrTableEntry PalPntrTbl, Palette15                 ;($A149)Samus fade in palette.
    PtrTableEntry PalPntrTbl, Palette16                 ;($A150)Samus fade in palette.
    PtrTableEntry PalPntrTbl, Palette17                 ;($A157)Unused?
    PtrTableEntry PalPntrTbl, Palette18                 ;($A15F)Suitless Samus power suit palette.
    PtrTableEntry PalPntrTbl, Palette19                 ;($A167)Suitless Samus varia suit palette.
    PtrTableEntry PalPntrTbl, Palette1A                 ;($A16F)Suitless Samus power suit with missiles selected palette.
    PtrTableEntry PalPntrTbl, Palette1B                 ;($A177)Suitless Samus varia suit with missiles selected palette.

SpecItmsTblPtr:
    .word SpecItmsTbl               ;($A20D)Beginning of special items table.

.DSTRUCT AreaPointers_ROM INSTANCEOF AreaPointersStruct VALUES
    EnFramePtrTable1:   .word EnFramePtrTable1          ;($9DE0)Pointer table into enemy animation data.
    EnAnimTable:        .word EnAnimTable               ;($9D6A)Index to values in addr tables for enemy animations.
.ENDST

; Tourian-specific jump table (dummied out in other banks)
;  Each line is RTS, NOP, NOP in this bank
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA
    .byte $60, $EA, $EA

AreaRoutine:
    jmp RTS_Polyp                       ;Area specific routine.

AreaMinibossMusic:
    .byte music_Tourian

AreaMapPosX:
    .byte $19   ;Samus start x coord on world map.
AreaMapPosY:
    .byte $18   ;Samus start y coord on world map.
AreaSamusX:
    .byte $80   ;Samus start horizontal screen position.
AreaSamusY:
    .byte $6E   ;Samus start vertical screen position.
AreaScrollDir:
    .byte $00   ;Starting scroll direction. 0 = vertical, 2 = horizontal
AreaMusicFlag:
    .byte music_RidleyArea          ;Ridley hideout music init flag.
AreaTilesetIndex:
    .byte $00

AreaEnProjectileKilledAnimIndex:
    .byte EnAnim_EnProjectileKilled - EnAnimTable
AreaExplosionAnimIndex:
    .byte EnAnim_Explosion - EnAnimTable

    .byte $00, $00
AreaEnProjectileFallingAnimIndex:
    .byte $00, $00
AreaEnProjectileSplatterAnimIndex:
    .byte $00, $00, $00, $00
AreaMellowAnimIndex:
    .byte EnAnim_Mella - EnAnimTable

AreaMissilePickupAnimFrame:
    .byte _id_EnFrame_MissilePickup
AreaSmallEnergyPickupAnimFrame:
    .byte _id_EnFrame_SmallEnergyPickup
AreaBigEnergyPickupAnimFrame:
    .byte _id_EnFrame_BigEnergyPickup

AreaTilesets:
    .word TileAnim0, PalAnim0
    .word TileAnim1, PalAnim1

ChooseEnemyAIRoutine:
    lda EnsExtra.0.type,x
    jsr CommonJump_ChooseRoutine
        .word SwooperAIRoutine00 ; 00 - swooper has not seen samus
        .word SwooperAIRoutine01 ; 01 - swooper targetting samus
        .word SidehopperFloorAIRoutine ; 02 - dessgeegas
        .word SidehopperCeilingAIRoutine ; 03 - ceiling dessgeegas
        .word RemoveEnemy_ ; 04 - disappears
        .word RemoveEnemy_ ; 05 - same as 4
        .word CrawlerAIRoutine ; 06 - crawler
        .word PipeBugAIRoutine ; 07 - zebbo
        .word RemoveEnemy_ ; 08 - same as 4
        .word RidleyAIRoutine ; 09 - ridley
        .word RidleyFireballAIRoutine ; 0A - ridley fireball
        .word RemoveEnemy_ ; 0B - same as 4
        .word MultiviolaAIRoutine ; 0C - bouncy orbs
        .word RemoveEnemy_ ; 0D - same as 4
        .word PolypAIRoutine ; 0E - polyp (unused)
        .word RemoveEnemy_ ; 0F - same as 4

EnemyDeathAnimIndex:
    .byte EnAnim_HoltzExplode - EnAnimTable ; 00 - swooper has not seen samus
    .byte EnAnim_HoltzExplode - EnAnimTable ; 01 - swooper targetting samus
    .byte EnAnim_DessgeegaExplodeFloor - EnAnimTable ; 02 - dessgeegas
    .byte EnAnim_DessgeegaExplodeCeiling - EnAnimTable ; 03 - ceiling dessgeegas
    .byte $00 ; 04 - disappears
    .byte $00 ; 05 - same as 4
    .byte EnAnim_ViolaExplode - EnAnimTable ; 06 - crawler
    .byte EnAnim_ZebboExplode_R - EnAnimTable ; 07 - zebbo
    .byte $00 ; 08 - same as 4
    .byte EnAnim_RidleyExplode - EnAnimTable ; 09 - ridley
    .byte EnAnim_RidleyFireball_R - EnAnimTable ; 0A - ridley fireball
    .byte $00 ; 0B - same as 4
    .byte EnAnim_MultiviolaExplode - EnAnimTable ; 0C - bouncy orbs
    .byte $00 ; 0D - same as 4
    .byte $00 ; 0E - polyp (unused)
    .byte $00 ; 0F - same as 4

EnemyHealthTbl:
    .byte $08 ; 00 - swooper has not seen samus
    .byte $08 ; 01 - swooper targetting samus
    .byte $08 ; 02 - dessgeegas
    .byte $08 ; 03 - ceiling dessgeegas
    .byte $01 ; 04 - disappears
    .byte $01 ; 05 - same as 4
    .byte $02 ; 06 - crawler
    .byte $01 ; 07 - zebbo
    .byte $01 ; 08 - same as 4
    .byte $8C ; 09 - ridley
    .byte $FF ; 0A - ridley fireball
    .byte $FF ; 0B - same as 4
    .byte $08 ; 0C - bouncy orbs
    .byte $06 ; 0D - same as 4
    .byte $FF ; 0E - polyp (unused)
    .byte $00 ; 0F - same as 4

; Base damage caused by area enemies.
; Normal, tough
EnemyDamageTbl:
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24
    .byte $24, $24

MellowDamage:
    .word $0240

EnemyPrimaryPaletteTbl:
    .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $03, $02, $02, $02, $02, $02

EnemyHitSFXTbl:
    .byte $03, sfxTri_BigEnemyHit
    .byte $03, sfxTri_BigEnemyHit
    .byte $03, sfxTri_BigEnemyHit
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
    .byte $03, sfxTri_BigEnemyHit
    .byte $01, sfxSQ1_EnemyHit
    .byte $01, sfxSQ1_EnemyHit

EnemyDropChanceTblNormal:
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
EnemyDropChanceTblTough:
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90
    .byte 90, 60, 90

EnemyRestingAnimIndex:
    .byte EnAnim_HoltzIdle - EnAnimTable ; 00 - swooper has not seen samus
    .byte EnAnim_HoltzIdle - EnAnimTable ; 01 - swooper targetting samus
    .byte EnAnim_DessgeegaIdleFloor - EnAnimTable ; 02 - dessgeegas
    .byte EnAnim_DessgeegaIdleCeiling - EnAnimTable ; 03 - ceiling dessgeegas
    .byte $00 ; 04 - disappears
    .byte $00 ; 05 - same as 4
    .byte EnAnim_ViolaOnFloor - EnAnimTable ; 06 - crawler
    .byte EnAnim_ZebboResting_R - EnAnimTable ; 07 - zebbo
    .byte $00 ; 08 - same as 4
    .byte EnAnim_RidleyIdle_R - EnAnimTable ; 09 - ridley
    .byte EnAnim_RidleyFireball_R - EnAnimTable ; 0A - ridley fireball
    .byte $00 ; 0B - same as 4
    .byte EnAnim_MultiviolaSpinningClockwise - EnAnimTable ; 0C - bouncy orbs
    .byte $00 ; 0D - same as 4
    .byte $00 ; 0E - polyp (unused)
    .byte $00 ; 0F - same as 4

EnemyActiveAnimIndex:
    .byte EnAnim_HoltzSwooping - EnAnimTable ; 00 - swooper has not seen samus
    .byte EnAnim_HoltzSwooping - EnAnimTable ; 01 - swooper targetting samus
    .byte EnAnim_DessgeegaIdleFloor - EnAnimTable ; 02 - dessgeegas
    .byte EnAnim_DessgeegaIdleCeiling - EnAnimTable ; 03 - ceiling dessgeegas
    .byte $00 ; 04 - disappears
    .byte $00 ; 05 - same as 4
    .byte EnAnim_ViolaOnFloor - EnAnimTable ; 06 - crawler
    .byte EnAnim_Zebbo_R - EnAnimTable ; 07 - zebbo
    .byte $00 ; 08 - same as 4
    .byte EnAnim_RidleyIdle_R - EnAnimTable ; 09 - ridley
    .byte EnAnim_RidleyFireball_R - EnAnimTable ; 0A - ridley fireball
    .byte $00 ; 0B - same as 4
    .byte EnAnim_MultiviolaSpinningClockwise - EnAnimTable ; 0C - bouncy orbs
    .byte $00 ; 0D - same as 4
    .byte $00 ; 0E - polyp (unused)
    .byte $00 ; 0F - same as 4

L967B:
    .byte $00 ; 00 - swooper has not seen samus
    .byte $00 ; 01 - swooper targetting samus
    .byte $00 ; 02 - dessgeegas
    .byte $00 ; 03 - ceiling dessgeegas
    .byte $00 ; 04 - disappears
    .byte $00 ; 05 - same as 4
    .byte $00 ; 06 - crawler
    .byte $00 ; 07 - zebbo
    .byte $00 | $80 ; 08 - same as 4
    .byte $00 ; 09 - ridley
    .byte $00 ; 0A - ridley fireball
    .byte $00 ; 0B - same as 4
    .byte $02 | $80 ; 0C - bouncy orbs
    .byte $00 ; 0D - same as 4
    .byte $00 ; 0E - polyp (unused)
    .byte $00 ; 0F - same as 4

L968B:
    .byte %10000101 ; 00 - swooper has not seen samus
    .byte %10000101 ; 01 - swooper targetting samus
    .byte %10000101 ; 02 - dessgeegas
    .byte %10000101 ; 03 - ceiling dessgeegas
    .byte %00000000 ; 04 - disappears
    .byte %00000000 ; 05 - same as 4
    .byte %00000100 ; 06 - crawler
    .byte %10000000 ; 07 - zebbo
    .byte %10000000 ; 08 - same as 4
    .byte %10000001 ; 09 - ridley
    .byte %00000000 ; 0A - ridley fireball
    .byte %00000000 ; 0B - same as 4
    .byte %00000001 ; 0C - bouncy orbs
    .byte %10000001 ; 0D - same as 4
    .byte %00000000 ; 0E - polyp (unused)
    .byte %00000000 ; 0F - same as 4

EnemyForceSpeedTowardsSamusDelayTbl:
    .byte $01 ; 00 - swooper has not seen samus
    .byte $01 ; 01 - swooper targetting samus
    .byte $01 ; 02 - dessgeegas
    .byte $01 ; 03 - ceiling dessgeegas
    .byte $01 ; 04 - disappears
    .byte $01 ; 05 - same as 4
    .byte $01 ; 06 - crawler
    .byte $01 ; 07 - zebbo
    .byte $28 ; 08 - same as 4
    .byte $10 ; 09 - ridley
    .byte $00 ; 0A - ridley fireball
    .byte $00 ; 0B - same as 4
    .byte $00 ; 0C - bouncy orbs
    .byte $01 ; 0D - same as 4
    .byte $00 ; 0E - polyp (unused)
    .byte $00 ; 0F - same as 4

EnemyDistanceToSamusThreshold:
    .byte $5 | (0 << 7) ; 00 - swooper has not seen samus
    .byte $5 | (0 << 7) ; 01 - swooper targetting samus
    .byte $00 ; 02 - dessgeegas
    .byte $00 ; 03 - ceiling dessgeegas
    .byte $00 ; 04 - disappears
    .byte $00 ; 05 - same as 4
    .byte $00 ; 06 - crawler
    .byte $00 ; 07 - zebbo
    .byte $00 ; 08 - same as 4
    .byte $00 ; 09 - ridley
    .byte $00 ; 0A - ridley fireball
    .byte $00 ; 0B - same as 4
    .byte $00 ; 0C - bouncy orbs
    .byte $6 | (1 << 7) ; 0D - same as 4
    .byte $00 ; 0E - polyp (unused)
    .byte $00 ; 0F - same as 4

EnemyInitDelayTbl:
    .byte $10 ; 00 - swooper has not seen samus
    .byte $01 ; 01 - swooper targetting samus
    .byte $03 ; 02 - dessgeegas
    .byte $03 ; 03 - ceiling dessgeegas
    .byte $10 ; 04 - disappears
    .byte $10 ; 05 - same as 4
    .byte $01 ; 06 - crawler
    .byte $08 ; 07 - zebbo
    .byte $09 ; 08 - same as 4
    .byte $10 ; 09 - ridley
    .byte $01 ; 0A - ridley fireball
    .byte $10 ; 0B - same as 4
    .byte $01 ; 0C - bouncy orbs
    .byte $20 ; 0D - same as 4
    .byte $00 ; 0E - polyp (unused)
    .byte $00 ; 0F - same as 4

EnemyMovementChoiceOffset:
    .byte EnemyMovementChoice_HoltzIdle - EnemyMovementChoices ; 00 - swooper has not seen samus
    .byte EnemyMovementChoice_HoltzAttacking - EnemyMovementChoices ; 01 - swooper targetting samus
    .byte EnemyMovementChoice_DessgeegaFloor - EnemyMovementChoices ; 02 - dessgeegas
    .byte EnemyMovementChoice_DessgeegaCeiling - EnemyMovementChoices ; 03 - ceiling dessgeegas
    .byte $00 ; 04 - disappears
    .byte $00 ; 05 - same as 4
    .byte EnemyMovementChoice_Zebbo - EnemyMovementChoices ; 06 - crawler (enemy moves manually)
    .byte EnemyMovementChoice_Zebbo - EnemyMovementChoices ; 07 - zebbo
    .byte $00 ; 08 - same as 4
    .byte EnemyMovementChoice_Ridley - EnemyMovementChoices ; 09 - ridley
    .byte EnemyMovementChoice_RidleyFireball - EnemyMovementChoices ; 0A - ridley fireball
    .byte EnemyMovementChoice06 - EnemyMovementChoices ; 0B - same as 4
    .byte EnemyMovementChoice_Multiviola - EnemyMovementChoices ; 0C - bouncy orbs
    .byte EnemyMovementChoice08 - EnemyMovementChoices ; 0D - same as 4
    .byte EnemyMovementChoice_HoltzIdle - EnemyMovementChoices ; 0E - polyp (unused)
    .byte $00 ; 0F - same as 4

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
    .word $0000, $0000
    .word $0000, $0000

EnAccelYTable:
    .byte -$20 ; $00
    .byte -$20 ; $01
    .byte  $00 ; $02
    .byte  $00 ; $03
    .byte  $20 ; $04
    .byte  $20 ; $05
    .byte -$20 ; $06
    .byte -$20 ; $07
    .byte  $00 ; $08
    .byte  $00 ; $09
    .byte -$08 ; $0A
    .byte  $06 ; $0B
    .byte  $05 ; $0C
    .byte  $20 ; $0D
    .byte  $20 ; $0E
    .byte  $20 ; $0F
    .byte  $00 ; $10
    .byte  $00 ; $11
    .byte  $00 ; $12
    .byte  $00 ; $13
EnAccelXTable:
    .byte  $00 ; $00
    .byte  $00 ; $01
    .byte  $00 ; $02
    .byte  $00 ; $03
    .byte  $00 ; $04
    .byte  $00 ; $05
    .byte  $00 ; $06
    .byte  $00 ; $07
    .byte -$0E ; $08
    .byte  $00 ; $09
    .byte  $00 ; $0A
    .byte  $00 ; $0B
    .byte  $00 ; $0C
    .byte  $00 ; $0D
    .byte  $02 ; $0E
    .byte  $08 ; $0F
    .byte  $00 ; $10
    .byte  $00 ; $11
    .byte  $00 ; $12
    .byte  $00 ; $13
EnSpeedYTable:
    .word  $05F0 ; $00
    .word  $05F0 ; $01
    .word  $0100 ; $02
    .word  $0080 ; $03
    .word -$04F0 ; $04
    .word -$01F0 ; $05
    .word  $04F0 ; $06
    .word  $01F0 ; $07
    .word  $0080 ; $08
    .word -$0200 ; $09
    .word  $02FC ; $0A
    .word -$00FD ; $0B
    .word -$00FD ; $0C
    .word -$02F0 ; $0D
    .word -$0370 ; $0E
    .word -$0370 ; $0F
    .word -$0180 ; $10
    .word  $0000 ; $11
    .word  $0000 ; $12
    .word  $0000 ; $13
EnSpeedXTable:
    .word  $0000 ; $00
    .word  $0100 ; $01
    .word  $0080 ; $02
    .word  $0080 ; $03
    .word  $0100 ; $04
    .word  $0100 ; $05
    .word  $0100 ; $06
    .word  $0100 ; $07
    .word  $02F9 ; $08
    .word  $0000 ; $09
    .word  $0080 ; $0A
    .word  $0080 ; $0B
    .word  $0080 ; $0C
    .word  $0000 ; $0D
    .word  $0001 ; $0E
    .word  $0004 ; $0F
    .word  $0180 ; $10
    .word  $0000 ; $11
    .word  $0000 ; $12
    .word  $0000 ; $13

L977B:
    .byte %01001100 ; 00 - swooper has not seen samus
    .byte %01001100 ; 01 - swooper targetting samus
    .byte %01100100 ; 02 - dessgeegas
    .byte %01101100 ; 03 - ceiling dessgeegas
    .byte %00000000 ; 04 - disappears
    .byte %00000000 ; 05 - same as 4
    .byte %00000000 ; 06 - crawler (enemy moves manually)
    .byte %01000000 ; 07 - zebbo
    .byte %00000000 ; 08 - same as 4
    .byte %01100100 ; 09 - ridley
    .byte %01000100 ; 0A - ridley fireball
    .byte %01000100 ; 0B - same as 4
    .byte %01000000 ; 0C - bouncy orbs
    .byte %00000000 ; 0D - same as 4
    .byte %00000000 ; 0E - polyp (unused)
    .byte %00000000 ; 0F - same as 4

EnProjectileRisingAnimIndexTable:
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
EnProjectilePosOffsetX:
    .byte $08, $F8
    .byte $00, $00
    .byte $00, $00
    .byte $08, $F8
EnProjectilePosOffsetY:
    .byte $00
    .byte $00
    .byte $00
    .byte $F8

EnProjectileMovementPtrTable:
    .word EnProjectileMovement0
    .word EnProjectileMovement1
    .word EnProjectileMovement2
    .word EnProjectileMovement3

; Referenced using EnData0A / 2
EnemyProjectileDamageTbl:
    .byte $24, $24, $24, $24

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

TileBlastBlastAnimDelayTbl:
    .byte $02 ; tile #$70
    .byte $02 ; tile #$74
    .byte $02 ; tile #$78
    .byte $02 ; tile #$7C
    .byte $02 ; tile #$80
    .byte $02 ; tile #$84
    .byte $02 ; tile #$88
    .byte $02 ; tile #$8C
    .byte $02 ; tile #$90
    .byte $02 ; tile #$94

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

TileBlastRespawnAnimDelayTbl:
    .byte $02 ; tile #$70
    .byte $02 ; tile #$74
    .byte $02 ; tile #$78
    .byte $02 ; tile #$7C
    .byte $02 ; tile #$80
    .byte $02 ; tile #$84
    .byte $02 ; tile #$88
    .byte $02 ; tile #$8C
    .byte $02 ; tile #$90
    .byte $02 ; tile #$94

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

EnemyMovementChoices:
EnemyMovementChoice_DessgeegaFloor:
    EnemyMovementChoiceEntry $04, $05
EnemyMovementChoice_DessgeegaCeiling:
    EnemyMovementChoiceEntry $06, $07
EnemyMovementChoice02: ; not assigned to any enemy
    EnemyMovementChoiceEntry $02
EnemyMovementChoice_Zebbo: ; enemy moves manually
    EnemyMovementChoiceEntry $09
EnemyMovementChoice_Ridley:
    EnemyMovementChoiceEntry $0D
EnemyMovementChoice_RidleyFireball:
    EnemyMovementChoiceEntry $0E, $0F
EnemyMovementChoice06: ; unused enemy
    EnemyMovementChoiceEntry $00, $01, $02, $03
EnemyMovementChoice_Multiviola:
    EnemyMovementChoiceEntry $10
EnemyMovementChoice08: ; unused enemy
    EnemyMovementChoiceEntry $11
EnemyMovementChoice_HoltzIdle:
    EnemyMovementChoiceEntry $00
EnemyMovementChoice_HoltzAttacking:
    EnemyMovementChoiceEntry $01

EnemyMovement00_R:
EnemyMovement00_L:
EnemyMovement01_R:
EnemyMovement01_L:
    ; nothing

; unused (ripper)
EnemyMovement02_R:
    SignMagSpeed $02,  3,  0
    EnemyMovementInstr_Restart

EnemyMovement02_L:
    SignMagSpeed $02, -3,  0
    EnemyMovementInstr_Restart

EnemyMovement03_R:
EnemyMovement03_L:
EnemyMovement04_R:
EnemyMovement04_L:
EnemyMovement05_R:
EnemyMovement05_L:
EnemyMovement06_R:
EnemyMovement06_L:
EnemyMovement07_R:
EnemyMovement07_L:
EnemyMovement08_R:
EnemyMovement08_L:
EnemyMovement09_R:
EnemyMovement09_L:
EnemyMovement0A_R:
EnemyMovement0A_L:
EnemyMovement0B_R:
EnemyMovement0B_L:
EnemyMovement0C_R:
EnemyMovement0C_L:
EnemyMovement0D_R:
EnemyMovement0D_L:
EnemyMovement0E_R:
EnemyMovement0E_L:
EnemyMovement0F_R:
EnemyMovement0F_L:
EnemyMovement10_R:
EnemyMovement10_L:
    ; nothing

; unused (dragon)
EnemyMovement11_R:
EnemyMovement11_L:
    SignMagSpeed $28,  0, -1
    SignMagSpeed $14,  0,  0
    EnemyMovementInstr_ClearEnJumpDsplcmnt
    SignMagSpeed $60,  0,  0
    SignMagSpeed $28,  0,  1
    EnemyMovementInstr_StopMovementDragon

EnProjectileMovement0:
EnProjectileMovement1:
    SignMagSpeed $09,  2, -4
    SignMagSpeed $08,  2, -2
    SignMagSpeed $07,  2, -1
    SignMagSpeed $07,  2,  1
    SignMagSpeed $08,  2,  2
    SignMagSpeed $09,  2,  4
    SignMagSpeed $50,  2,  7
    .byte $FF

EnProjectileMovement2:
    SignMagSpeed $07,  2, -4
    SignMagSpeed $06,  2, -2
    SignMagSpeed $05,  2, -1
    SignMagSpeed $05,  2,  1
    SignMagSpeed $06,  2,  2
    SignMagSpeed $07,  2,  4
    SignMagSpeed $50,  2,  7
    .byte $FF

EnProjectileMovement3:
    SignMagSpeed $05,  2, -4
    SignMagSpeed $04,  2, -2
    SignMagSpeed $03,  2, -1
    SignMagSpeed $03,  2,  1
    SignMagSpeed $04,  2,  2
    SignMagSpeed $05,  2,  4
    SignMagSpeed $50,  2,  7
    .byte $FF

;-------------------------------------------------------------------------------
RemoveEnemy_:
    lda #$00
    sta EnsExtra.0.status,x
    rts

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

;-------------------------------------------------------------------------------

.include "enemies/sidehopper.asm"

;-------------------------------------------------------------------------------

.include "enemies/pipe_bug.asm"

;-------------------------------------------------------------------------------
; Swooper Routine

.include "enemies/swooper.asm"

;-------------------------------------------------------------------------------
; Crawler Routine
.include "enemies/crawler.asm"

;-------------------------------------------------------------------------------

.include "enemies/ridley.asm"

StoreEnemyPositionToTemp_:
    lda EnY,x
    sta Temp08_PositionY
    lda EnX,x
    sta Temp09_PositionX
    lda EnsExtra.0.hi,x
    sta Temp0B_PositionHi
    rts

LoadEnemyPositionFromTemp_:
    lda Temp0B_PositionHi
    and #$01
    sta EnsExtra.0.hi,x
    lda Temp08_PositionY
    sta EnY,x
    lda Temp09_PositionX
    sta EnX,x
    rts

;-------------------------------------------------------------------------------
; Bouncy Orb Routine
.include "enemies/multiviola.asm"

;-------------------------------------------------------------------------------
; Polyp (beta?) Routine
.include "enemies/polyp.asm"

;-------------------------------------------------------------------------------

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
    .byte $22
    .byte $70, $71
    .byte $72, $73

TileBlastFrame0A:
    .byte $22
    .byte $74, $75
    .byte $76, $77

TileBlastFrame0B:
    .byte $22
    .byte $78, $79
    .byte $7A, $7B

TileBlastFrame0C:
TileBlastFrame0D:
TileBlastFrame0E:
TileBlastFrame0F:
TileBlastFrame10:
    ;nothing

TileAnim0:
TileAnim1:
    .byte $FF, RidleyBG/$400
    .byte $00

PalAnim0:
PalAnim1:
    .byte _id_Palette00+1
    .byte $00

.include "data/ridley/enemy_sprite_data.asm"

;------------------------------------------[ Palette data ]------------------------------------------

.include "data/ridley/palettes.asm"

;-----------------------------------[ Special items table ]-----------------------------------------

.include "data/ridley/global_objs.asm"

.ends

