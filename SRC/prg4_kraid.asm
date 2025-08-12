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

;Kraid hideout (memory page 4)

.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"

.redef BANK = 4
.section "ROM Bank $004" bank 4 slot "ROMSwitchSlot" orga $8000 force

;------------------------------------------[ Start of code ]-----------------------------------------

.include "areas_common.asm"

;----------------------------------------------------------------------------------------------------

PalPntrTbl:
    PtrTableEntry PalPntrTbl, Palette00                 ;($A155)Room palette.
    PtrTableEntry PalPntrTbl, Palette01                 ;($A179)Samus power suit palette.
    PtrTableEntry PalPntrTbl, Palette02                 ;($A185)Samus varia suit palette.
    PtrTableEntry PalPntrTbl, Palette03                 ;($A17F)Samus power suit with missiles selected palette.
    PtrTableEntry PalPntrTbl, Palette04                 ;($A18B)Samus varia suit with missiles selected palette.
    PtrTableEntry PalPntrTbl, Palette05                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette06                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette07                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette08                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette09                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette0A                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette0B                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette0C                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette0D                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette0E                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette0F                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette10                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette11                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette12                 ;($A191)
    PtrTableEntry PalPntrTbl, Palette13                 ;($A191)Samus fade in palette. Same regardless of varia suit and suitless.
    PtrTableEntry PalPntrTbl, Palette14                 ;($A198)Samus fade in palette.
    PtrTableEntry PalPntrTbl, Palette15                 ;($A19F)Samus fade in palette.
    PtrTableEntry PalPntrTbl, Palette16                 ;($A1A6)Samus fade in palette.
    PtrTableEntry PalPntrTbl, Palette17                 ;($A1AD)Unused?
    PtrTableEntry PalPntrTbl, Palette18                 ;($A1B5)Suitless Samus power suit palette.
    PtrTableEntry PalPntrTbl, Palette19                 ;($A1BD)Suitless Samus varia suit palette.
    PtrTableEntry PalPntrTbl, Palette1A                 ;($A1C5)Suitless Samus power suit with missiles selected palette.
    PtrTableEntry PalPntrTbl, Palette1B                 ;($A1CD)Suitless Samus varia suit with missiles selected palette.

AreaPointers:
    .word SpecItmsTbl               ;($A26D)Beginning of special items table.
    .word EnFramePtrTable1          ;($9CF7)Address table into enemy animation data.
    .word EnAnimTbl                 ;($9C86)Index to values in addr tables for enemy animations.

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
    jmp AreaRoutineStub ; Just an RTS

L95CC:
    .byte $1D                       ;Kraid's room.
AreaMusicFlag:
    .byte music_Trench
AreaMinibossMusic:
    .byte music_JakeTheme

;Special room numbers(used to start item room music).
AreaItemRoomNumbers:
.byte $22, $43, $FF, $FF

AreaSamusMapPosX:
    .byte $14   ;Samus start x coord on world map.
AreaSamusMapPosY:
    .byte $05   ;Samus start y coord on world map.
AreaSamusX:
    .byte $80   ;Samus start horizontal screen position.
AreaSamusY:
    .byte $71   ;Samus start vertical screen position.
AreaScrollDir:
    .byte $00   ;Starting scroll direction. 0 = vertical, 2 = horizontal

AreaFireballKilledAnimIndex:
    .byte EnAnim_FireballKilled - EnAnimTbl
AreaExplosionAnimIndex:
    .byte EnAnim_43 - EnAnimTbl

    .byte $00, $00
AreaFireballFallingAnimIndex:
    .byte $00, $00
AreaFireballSplatterAnimIndex:
    .byte $00, $00, $00, $00
AreaMellowAnimIndex:
    .byte EnAnim_64 - EnAnimTbl

AreaTilesets:
    .word TileAnim0, PalAnim0
    .word TileAnim1, PalAnim1

ChooseEnemyAIRoutine:
    lda EnsExtra.0.type,x
    jsr CommonJump_ChooseRoutine
        .word SidehopperFloorAIRoutine ; 00 - sidehopper
        .word SidehopperCeilingAIRoutine ; 01 - ceiling sidehopper
        .word AreaRoutineStub ; 02 - unused enemy type that doesn't properly clear itself
        .word RipperAIRoutine ; 03 - ripper
        .word SkreeAIRoutine ; 04 - skree
        .word CrawlerAIRoutine ; 05 - crawler
        .word AreaRoutineStub ; 06 - same as 2
        .word PipeBugAIRoutine ; 07 - geega
        .word KraidAIRoutine ; 08 - kraid
        .word KraidLintAIRoutine ; 09 - kraid lint
        .word KraidNailAIRoutine ; 0a - kraid nail
        .word AreaRoutineStub ; 0b - same as 2
        .word AreaRoutineStub ; 0c - same as 2
        .word AreaRoutineStub ; 0d - same as 2
        .word AreaRoutineStub ; 0e - same as 2
        .word AreaRoutineStub ; 0f - same as 2

EnemyDeathAnimIndex:
    .byte EnAnim_27 - EnAnimTbl, EnAnim_27 - EnAnimTbl
    .byte EnAnim_29 - EnAnimTbl, EnAnim_29 - EnAnimTbl
    .byte EnAnim_2D - EnAnimTbl, EnAnim_2B - EnAnimTbl ; unused enemy
    .byte EnAnim_31 - EnAnimTbl, EnAnim_2F - EnAnimTbl
    .byte EnAnim_33 - EnAnimTbl, EnAnim_33 - EnAnimTbl
    .byte EnAnim_41 - EnAnimTbl, EnAnim_41 - EnAnimTbl
    .byte EnAnim_48 - EnAnimTbl, EnAnim_48 - EnAnimTbl ; unused enemy
    .byte EnAnim_50 - EnAnimTbl, EnAnim_4E - EnAnimTbl
    .byte EnAnim_6D - EnAnimTbl, EnAnim_6F - EnAnimTbl
    .byte $00, $00
    .byte $00, $00
    .byte EnAnim_64 - EnAnimTbl, EnAnim_64 - EnAnimTbl ; unused enemy
    .byte EnAnim_64 - EnAnimTbl, EnAnim_64 - EnAnimTbl ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy

EnemyHealthTbl:
    .byte $08, $08, $00, $FF, $02, $02, $00, $01, $60, $FF, $FF, $00, $00, $00, $00, $00

; Base damage caused by area enemies.
; Normal, tough
EnemyDamageTbl:
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20
    .byte $20, $20

MellowDamage:
    .word $0200

EnemyPrimaryPaletteTbl:
    .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02

EnemyHitSFXTbl:
    .byte $03, sfxTri_BigEnemyHit
    .byte $03, sfxTri_BigEnemyHit
    .byte $03, sfxTri_BigEnemyHit
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

EnemyRestingAnimIndex:
    .byte EnAnim_05 - EnAnimTbl, EnAnim_05 - EnAnimTbl
    .byte EnAnim_0B - EnAnimTbl, EnAnim_0B - EnAnimTbl
    .byte EnAnim_17 - EnAnimTbl, EnAnim_13 - EnAnimTbl ; unused enemy
    .byte EnAnim_1B - EnAnimTbl, EnAnim_19 - EnAnimTbl
    .byte EnAnim_23 - EnAnimTbl, EnAnim_23 - EnAnimTbl
    .byte EnAnim_ZeelaOnFloor - EnAnimTbl, EnAnim_ZeelaOnFloor - EnAnimTbl
    .byte EnAnim_48 - EnAnimTbl, EnAnim_48 - EnAnimTbl ; unused enemy
    .byte EnAnim_54 - EnAnimTbl, EnAnim_52 - EnAnimTbl
    .byte EnAnim_67 - EnAnimTbl, EnAnim_6A - EnAnimTbl
    .byte EnAnim_56 - EnAnimTbl, EnAnim_58 - EnAnimTbl
    .byte EnAnim_5D - EnAnimTbl, EnAnim_62 - EnAnimTbl
    .byte EnAnim_64 - EnAnimTbl, EnAnim_64 - EnAnimTbl ; unused enemy
    .byte EnAnim_64 - EnAnimTbl, EnAnim_64 - EnAnimTbl ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy

EnemyActiveAnimIndex:
    .byte EnAnim_05 - EnAnimTbl, EnAnim_05 - EnAnimTbl
    .byte EnAnim_0B - EnAnimTbl, EnAnim_0B - EnAnimTbl
    .byte EnAnim_17 - EnAnimTbl, EnAnim_13 - EnAnimTbl ; unused enemy
    .byte EnAnim_1B - EnAnimTbl, EnAnim_19 - EnAnimTbl
    .byte EnAnim_23 - EnAnimTbl, EnAnim_23 - EnAnimTbl
    .byte EnAnim_ZeelaOnFloor - EnAnimTbl, EnAnim_ZeelaOnFloor - EnAnimTbl
    .byte EnAnim_48 - EnAnimTbl, EnAnim_48 - EnAnimTbl ; unused enemy
    .byte EnAnim_4B - EnAnimTbl, EnAnim_48 - EnAnimTbl
    .byte EnAnim_67 - EnAnimTbl, EnAnim_6A - EnAnimTbl
    .byte EnAnim_56 - EnAnimTbl, EnAnim_58 - EnAnimTbl
    .byte EnAnim_5A - EnAnimTbl, EnAnim_5F - EnAnimTbl
    .byte EnAnim_64 - EnAnimTbl, EnAnim_64 - EnAnimTbl ; unused enemy
    .byte EnAnim_64 - EnAnimTbl, EnAnim_64 - EnAnimTbl ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy
    .byte $00, $00 ; unused enemy

L967B:
    .byte $00
    .byte $00
    .byte $00 ; unused enemy
    .byte $00 | $80
    .byte $00
    .byte $00
    .byte $00 ; unused enemy
    .byte $00
    .byte $00
    .byte $00
    .byte $00
    .byte $00 ; unused enemy
    .byte $00 | $80 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy

L968B:
    .byte $89, $89, $09, $00, $86, $04, $89, $80, $83, $00, $00, $00, $82, $00, $00, $00

EnemyForceSpeedTowardsSamusDelayTbl:
    .byte $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $40, $00, $00, $00

EnemyDistanceToSamusThreshold:
    .byte $00
    .byte $00
    .byte $6 | (0 << 7) ; unused enemy
    .byte $00
    .byte $3 | (1 << 7)
    .byte $00
    .byte $4 | (1 << 7) ; unused enemy
    .byte $00
    .byte $00
    .byte $00
    .byte $00
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy

EnemyInitDelayTbl:
    .byte $08, $08, $01, $01, $01, $01, $10, $08, $10, $00, $00, $01, $01, $00, $00, $00

EnemyMovementChoiceOffset:
    .byte EnemyMovementChoice_SidehopperFloor - EnemyMovementChoices
    .byte EnemyMovementChoice_SidehopperCeiling - EnemyMovementChoices
    .byte $00 ; unused enemy
    .byte EnemyMovementChoice_Ripper - EnemyMovementChoices
    .byte EnemyMovementChoice_Skree - EnemyMovementChoices
    .byte EnemyMovementChoice_Zeela - EnemyMovementChoices ; enemy moves manually
    .byte $00 ; unused enemy
    .byte EnemyMovementChoice_Geega - EnemyMovementChoices
    .byte EnemyMovementChoice_Kraid - EnemyMovementChoices
    .byte EnemyMovementChoice_KraidLint - EnemyMovementChoices
    .byte EnemyMovementChoice_KraidNail - EnemyMovementChoices
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
    .byte $00 ; unused enemy
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
    .byte  $20 ; $00
    .byte  $1C ; $01
    .byte  $1C ; $02
    .byte -$1C ; $03
    .byte -$1C ; $04
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
EnSpeedYTable:
    .word -$04F0 ; $00
    .word -$04F2 ; $01
    .word -$01F2 ; $02
    .word  $04F2 ; $03
    .word  $01F2 ; $04
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

L977B:
    .byte $64, $6C, $21, $01, $04, $00, $4C, $40, $04, $00, $00, $40, $40, $00, $00, $00

EnemyFireballRisingAnimIndexTable:
    .byte $00, $00
    .byte EnAnim_5F - EnAnimTbl, EnAnim_62 - EnAnimTbl
    .byte EnAnim_64 - EnAnimTbl, EnAnim_64 - EnAnimTbl
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

EnemyFireballMovementPtrTable:
    .word EnemyFireballMovement0
    .word EnemyFireballMovement1
    .word EnemyFireballMovement2
    .word EnemyFireballMovement3

; Referenced using EnData0A / 2
EnemyFireballDamageTbl:
    .byte $20, $20, $20, $20

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
EnemyMovementChoice_SidehopperFloor:
    EnemyMovementChoiceEntry $01, $02
EnemyMovementChoice_SidehopperCeiling:
    EnemyMovementChoiceEntry $03, $04
EnemyMovementChoice_Ripper:
    EnemyMovementChoiceEntry $06
EnemyMovementChoice_Skree:
    EnemyMovementChoiceEntry $07
EnemyMovementChoice_Geega:
    EnemyMovementChoiceEntry $09
EnemyMovementChoice_Zeela: ; enemy moves manually
    EnemyMovementChoiceEntry $00
EnemyMovementChoice_Kraid:
    EnemyMovementChoiceEntry $0C, $0D
EnemyMovementChoice_KraidLint:
    EnemyMovementChoiceEntry $0E
EnemyMovementChoice_KraidNail:
    EnemyMovementChoiceEntry $0F, $10, $11, $0F

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
EnemyMovement05_R:
EnemyMovement05_L:
    ; nothing

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

; kraid
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
    SignMagSpeed $64,  1,  1
    SignMagSpeed $14,  0,  0
    SignMagSpeed $64, -1,  1
    EnemyMovementInstr_FE

EnemyMovement0D_L:
    SignMagSpeed $64, -1,  1
    SignMagSpeed $14,  0,  0
    SignMagSpeed $64,  1,  1
    EnemyMovementInstr_FE

; kraid lint
EnemyMovement0E_R:
    SignMagSpeed $A0,  4,  0
    EnemyMovementInstr_Restart

EnemyMovement0E_L:
    SignMagSpeed $A0, -4,  0
    EnemyMovementInstr_Restart

; kraid nail
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
; Ripper Routine
.include "enemies/ripper.asm"

;-------------------------------------------------------------------------------
; Skree Routine
.include "enemies/skree.asm"
; The crawler routine below depends upon two of the exit labels in skree.asm

;-------------------------------------------------------------------------------
; Crawler Routine
.include "enemies/crawler.asm"

;-------------------------------------------------------------------------------

.include "enemies/pipe_bug.asm"

;-------------------------------------------------------------------------------
; Kraid Routine
.include "enemies/kraid.asm"
; Note: For this bank the functions StorePositionToTemp and LoadPositionFromTemp
;  are in are in kraid.asm. Extract those functions from that file if you plan
;  on removing it.

AreaRoutineStub:
    rts

; What's this table?
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
    .byte $05, TrenchBG_Frame0/$400
    .byte $05, TrenchBG_Frame1/$400
    .byte $05, TrenchBG_Frame2/$400
    .byte $05, TrenchBG_Frame3/$400
    .byte $00

PalAnim0:
PalAnim1:
    .byte _id_Palette00+1
    .byte $00

.include "data/trench/enemy_sprite_data.asm"

;----------------------------------------[ Palette data ]--------------------------------------------

.include "data/trench/palettes.asm"

;-----------------------------------[ Special items table ]-----------------------------------------

.include "data/trench/global_objs.asm"

.ends

