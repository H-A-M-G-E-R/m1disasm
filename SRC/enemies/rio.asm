RioAIRoutine:
    ; branch if enemy is resting
    lda EnemyStatusPreAI
    cmp #enemyStatus_Resting
    beq RioExit_Resting

    ; branch if enemy is exploding
    cmp #enemyStatus_Explode
    beq RioExit_Explode

    ; set gravity to negative #$20 (gravity pulls towards ceiling)
    lda #-$20
    sta EnsExtra.0.accelY,x
    ; branch if y speed is negative
    lda EnSpeedY,x
    bmi RioExitA

    ; y speed is positive
    ; exit if bit 4 of EnData05 is unset
    lda EnData05,x
    and #$10
    beq RioExitA

    ; get y distance between Samus and the enemy
    jsr GetEnemyXSlotPosition
    ldy #$00
    jsr GetObjectYSlotPosition
    jsr AbsYDistFromYSlotToXSlot
    ; branch if Samus is not within a block's distance 
    lda Temp01_DiffHi
    bne RioExitA
    lda Temp00_Diff
    cmp #$10
    bcs RioExitA
    ; Samus is vertically aligned with the enemy
    ; stop applying gravity to enemy speed
    lda #$00
    sta EnsExtra.0.accelY,x

RioExitA:
    ; change animation frame every 3 frames
    lda #$03
    jmp CommonJump_00

RioExit_Explode:
    jmp CommonJump_02

RioExit_Resting:
    ; change animation frame every 8 frames
    lda #$08
    jmp CommonJump_01

