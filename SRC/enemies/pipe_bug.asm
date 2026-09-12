; Pipe Bug AI Handler

PipeBugAIRoutine:
    ; branch if pipe bug is not active
    lda EnsExtra.0.status,x
    cmp #enemyStatus_Active
    bne PipeBugApplySpeed

    ; if pipe bug is going forward, apply speed
    lda EnSpeedX,x
    bne PipeBugApplySpeed

    ; if EnsExtra.0.accelY is in effect, we need to check if y speed became positive
    lda EnsExtra.0.accelY,x
    bne PipeBugCheckIfGoForwards

    ; branch if pipe bug is more than #$40 pixels (4 blocks) below Samus
    ; while this is true, pipe bug will continue to rise at a fixed y speed
    jsr GetEnemyXSlotPosition
    ldy #$00
    jsr GetObjectYSlotPosition
    jsr SignedYDistFromYSlotToXSlot
    ; branch if dist == 0
    lda Temp00_Diff
    ora Temp01_DiffHi
    beq +
    ; branch if dist <= #-$40
    lda Temp00_Diff
    cmp #-$3F
    lda Temp01_DiffHi
    sbc #$FF
    bcc PipeBugApplySpeed

    ; set EnsExtra.0.accelY to #$20
    ; eventually, this gravity will make y speed positive
+
    lda #$20
    sta EnsExtra.0.accelY,x
    bne PipeBugApplySpeed ; branch always

PipeBugCheckIfGoForwards:
    ; branch if y speed is negative (pipe bug is still rising)
    lda EnSpeedY,x
    bmi PipeBugApplySpeed
        ; y speed is not negative, we must stop moving vertically and go forwards
        ; set y speed and acceleration to 0
        lda #$00
        sta EnSpeedY,x
        sta EnSpeedSubPixelY,x
        sta EnsExtra.0.accelY,x
        ; set pipe bug x speed depending on its facing direction
        lda EnData05,x
        and #$01
        tay
        lda PipeBugSpeedXTable,y
        sta EnSpeedX,x
PipeBugApplySpeed:
    ; exit if pipe bug is not active
    lda EnsExtra.0.status,x
    cmp #enemyStatus_Active
    bne PipeBugExit
    
    ; get y speed
    ldy #$07
    jsr CommonJump_EnemyGetDeltaY_UsingAcceleration
    ; push y speed to stack
    pha
    ; get x speed
    jsr CommonJump_EnemyGetDeltaX_UsingAcceleration
    ; set x speed
    sta Temp05_SpeedX
    ; set y speed
    pla
    sta Temp04_SpeedY

    ; apply speed
    jsr StoreEnemyPositionToTemp
    jsr CommonJump_ApplySpeedToPosition
    ; remove bug if it is out of bounds
    bcc PipeBugDelete
    jsr LoadEnemyPositionFromTemp
    ; fallthrough

;Exit 1
PipeBugExit:
    ; change animation frame every 3 frames
    lda #$03
    jmp CommonJump_01 ; Common Enemy Handler

;Exit 2
PipeBugDelete:
    ; Set enemy status to 0
    lda #enemyStatus_NoEnemy
    sta EnsExtra.0.status,x
    rts

PipeBugSpeedXTable:
.if BANK == 1 ; Brinstar
    .byte $02, -$02
.else ; Norfair, Kraid, Ridley
    .byte $04, -$04
.endif

