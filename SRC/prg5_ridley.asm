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

AreaPointers:
    .word SpecItmsTbl               ;($A20D)Beginning of special items table.
    .word EnFramePtrTable1          ;($9BF0)Address table into enemy animation data.
    .word EnAnimTbl                 ;($9B85)Index to values in addr tables for enemy animations.

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

AreaRoutine:
    jmp RTS_Polyp                       ;Area specific routine.

L95CC:
    .byte $12                       ;Ridley's room.
AreaMusicFlag:
    .byte music_Labyrinth
AreaMinibossMusic:
    .byte music_ElwoodTheme

;Special room numbers(used to start item room music).
AreaItemRoomNumbers:
    .byte $26, $27, $FF, $FF

AreaSamusMapPosX:
    .byte $0C   ;Samus start x coord on world map.
AreaSamusMapPosY:
    .byte $17   ;Samus start y coord on world map.
AreaSamusX:
    .byte $80   ;Samus start horizontal screen position.
AreaSamusY:
    .byte $71   ;Samus start vertical screen position.
AreaScrollDir:
    .byte $00   ;Starting scroll direction. 0 = vertical, 2 = horizontal

AreaFireballKilledAnimIndex:
    .byte EnAnim_FireballKilled - EnAnimTbl
AreaExplosionAnimIndex:
    .byte EnAnim_58 - EnAnimTbl

    .byte EnAnim_44 - EnAnimTbl, EnAnim_4A - EnAnimTbl
AreaFireballFallingAnimIndex:
    .byte EnAnim_48 - EnAnimTbl, EnAnim_4A - EnAnimTbl
AreaFireballSplatterAnimIndex:
    .byte EnAnim_4A - EnAnimTbl, EnAnim_36 - EnAnimTbl, EnAnim_36 - EnAnimTbl, EnAnim_36 - EnAnimTbl
AreaMellowAnimIndex:
    .byte EnAnim_25 - EnAnimTbl

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
        .word RidleyProjectileAIRoutine ; 0A - ridley fireball
        .word RemoveEnemy_ ; 0B - same as 4
        .word MultiviolaAIRoutine ; 0C - bouncy orbs
        .word RemoveEnemy_ ; 0D - same as 4
        .word PolypAIRoutine ; 0E - polyp (unused)
        .word RemoveEnemy_ ; 0F - same as 4

EnemyDeathAnimIndex:
    .byte EnAnim_23 - EnAnimTbl, EnAnim_23 - EnAnimTbl
    .byte EnAnim_23 - EnAnimTbl, EnAnim_23 - EnAnimTbl
    .byte EnAnim_3A - EnAnimTbl, EnAnim_3A - EnAnimTbl
    .byte EnAnim_3C - EnAnimTbl, EnAnim_3C - EnAnimTbl
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte EnAnim_56 - EnAnimTbl, EnAnim_56 - EnAnimTbl
    .byte EnAnim_65 - EnAnimTbl, EnAnim_63 - EnAnimTbl
    .byte $00, $00 ; unused enemy
    .byte EnAnim_11 - EnAnimTbl, EnAnim_11 - EnAnimTbl
    .byte EnAnim_13 - EnAnimTbl, EnAnim_18 - EnAnimTbl
    .byte EnAnim_28 - EnAnimTbl, EnAnim_28 - EnAnimTbl ; unused enemy
    .byte EnAnim_32 - EnAnimTbl, EnAnim_32 - EnAnimTbl
    .byte EnAnim_34 - EnAnimTbl, EnAnim_34 - EnAnimTbl ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy

EnemyHealthTbl:
    .byte $08, $08, $08, $08, $01, $01, $02, $01, $01, $8C, $FF, $FF, $08, $06, $FF, $00

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

EnemyRestingAnimIndex:
    .byte EnAnim_1D - EnAnimTbl, EnAnim_1D - EnAnimTbl
    .byte EnAnim_1D - EnAnimTbl, EnAnim_1D - EnAnimTbl
    .byte EnAnim_3E - EnAnimTbl, EnAnim_3E - EnAnimTbl
    .byte EnAnim_44 - EnAnimTbl, EnAnim_44 - EnAnimTbl
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte EnAnim_4A - EnAnimTbl, EnAnim_4A - EnAnimTbl
    .byte EnAnim_69 - EnAnimTbl, EnAnim_67 - EnAnimTbl
    .byte $00, $00 ; unused enemy
    .byte EnAnim_05 - EnAnimTbl, EnAnim_08 - EnAnimTbl
    .byte EnAnim_13 - EnAnimTbl, EnAnim_18 - EnAnimTbl
    .byte EnAnim_1D - EnAnimTbl, EnAnim_1D - EnAnimTbl ; unused enemy
    .byte EnAnim_2D - EnAnimTbl, EnAnim_28 - EnAnimTbl
    .byte EnAnim_34 - EnAnimTbl, EnAnim_34 - EnAnimTbl ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy

EnemyActiveAnimIndex:
    .byte EnAnim_20 - EnAnimTbl, EnAnim_20 - EnAnimTbl
    .byte EnAnim_20 - EnAnimTbl, EnAnim_20 - EnAnimTbl
    .byte EnAnim_3E - EnAnimTbl, EnAnim_3E - EnAnimTbl
    .byte EnAnim_44 - EnAnimTbl, EnAnim_44 - EnAnimTbl
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte EnAnim_4A - EnAnimTbl, EnAnim_4A - EnAnimTbl
    .byte EnAnim_60 - EnAnimTbl, EnAnim_5D - EnAnimTbl
    .byte $00, $00 ; unused enemy
    .byte EnAnim_05 - EnAnimTbl, EnAnim_08 - EnAnimTbl
    .byte EnAnim_13 - EnAnimTbl, EnAnim_18 - EnAnimTbl
    .byte EnAnim_1D - EnAnimTbl, EnAnim_1D - EnAnimTbl ; unused enemy
    .byte EnAnim_2D - EnAnimTbl, EnAnim_28 - EnAnimTbl
    .byte EnAnim_34 - EnAnimTbl, EnAnim_34 - EnAnimTbl ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy

L967B:
    .byte $00
    .byte $00
    .byte $00
    .byte $00
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00
    .byte $00
    .byte $00 | $80 ; unused enemy
    .byte $00
    .byte $00
    .byte $00 ; unused enemy
    .byte $02 | $80
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy

L968B:
    .byte $89, $89, $89, $89, $00, $00, $04, $80, $80, $81, $00, $00, $05, $89, $00, $00

EnemyForceSpeedTowardsSamusDelayTbl:
    .byte $01, $01, $01, $01, $01, $01, $01, $01, $28, $10, $00, $00, $00, $01, $00, $00

EnemyDistanceToSamusThreshold:
    .byte $5 | (0 << 7)
    .byte $5 | (0 << 7)
    .byte $00
    .byte $00
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00
    .byte $00
    .byte $00 ; unused enemy
    .byte $00
    .byte $00
    .byte $00 ; unused enemy
    .byte $00
    .byte $6 | (1 << 7) ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy

EnemyInitDelayTbl:
    .byte $10, $01, $03, $03, $10, $10, $01, $08, $09, $10, $01, $10, $01, $20, $00, $00

EnemyMovementChoiceOffset:
    .byte EnemyMovementChoice_HoltzIdle - EnemyMovementChoices
    .byte EnemyMovementChoice_HoltzAttacking - EnemyMovementChoices
    .byte EnemyMovementChoice_DessgeegaFloor - EnemyMovementChoices
    .byte EnemyMovementChoice_DessgeegaCeiling - EnemyMovementChoices
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte EnemyMovementChoice_Zebbo - EnemyMovementChoices ; enemy moves manually
    .byte EnemyMovementChoice_Zebbo - EnemyMovementChoices
    .byte $00 ; unused enemy
    .byte EnemyMovementChoice_Ridley - EnemyMovementChoices
    .byte EnemyMovementChoice_RidleyFireball - EnemyMovementChoices
    .byte EnemyMovementChoice06 - EnemyMovementChoices ; unused enemy
    .byte EnemyMovementChoice_Multiviola - EnemyMovementChoices
    .byte EnemyMovementChoice08 - EnemyMovementChoices ; unused enemy
    .byte EnemyMovementChoice_HoltzIdle - EnemyMovementChoices ; unused enemy
    .byte $00 ; unused enemy

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

    .byte $00, $00, $00, $00, $00, $00, $00, $00

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
    .byte $4C, $4C, $64, $6C, $00, $00, $00, $40, $00, $64, $44, $44, $40, $00, $00, $00

EnemyFireballRisingAnimIndexTable:
    .byte $00, $00
    .byte $00, $00
    .byte EnAnim_34 - EnAnimTbl, EnAnim_34 - EnAnimTbl
    .byte EnAnim_44 - EnAnimTbl, EnAnim_4A - EnAnimTbl
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
EnemyFireballPosOffsetX:
    .byte $08, $F8
    .byte $00, $00
    .byte $00, $00
    .byte $08, $F8
EnemyFireballPosOffsetY:
    .byte $00
    .byte $00
    .byte $00
    .byte $F8

EnemyFireballMovementPtrTable:
    .word EnemyFireballMovement0
    .word EnemyFireballMovement0
    .word EnemyFireballMovement2
    .word EnemyFireballMovement3

; Referenced using EnData0A / 2
EnemyFireballDamageTbl:
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

TileBlastRespawnDelayTbl:
    .byte $00 ; tile #$70
    .byte $00 ; tile #$74
    .byte $00 ; tile #$78
    .byte $00 ; tile #$7C
    .byte $00 ; tile #$80
    .byte $00 ; tile #$84
    .byte $00 ; tile #$88
    .byte $00 ; tile #$8C
    .byte $00 ; tile #$90
    .byte $00 ; tile #$94

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

; unused (seahorse)
EnemyMovement11_R:
EnemyMovement11_L:
    SignMagSpeed $28,  0, -1
    SignMagSpeed $14,  0,  0
    EnemyMovementInstr_ClearEnJumpDsplcmnt
    SignMagSpeed $60,  0,  0
    SignMagSpeed $28,  0,  1
    EnemyMovementInstr_StopMovementSeahorse

EnemyFireballMovement0:
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
    .byte $05, LabyrinthBG_Frame0/$400
    .byte $05, LabyrinthBG_Frame1/$400
    .byte $05, LabyrinthBG_Frame2/$400
    .byte $05, LabyrinthBG_Frame3/$400
    .byte $00

PalAnim0:
PalAnim1:
    .byte _id_Palette00+1
    .byte $00

.include "data/labyrinth/enemy_sprite_data.asm"

;------------------------------------------[ Palette data ]------------------------------------------

.include "data/labyrinth/palettes.asm"

;-----------------------------------[ Special items table ]-----------------------------------------

.include "data/labyrinth/global_objs.asm"

.ends

