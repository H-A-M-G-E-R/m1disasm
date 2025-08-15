; Bunnyhead AI Handler
; This beheaded bunny wants to chew on your brain, don't let it!

PipeBugAIRoutine:
    ; branch if pipe bug is not active
    lda EnsExtra.0.status,x
    cmp #enemyStatus_Active
    beq +
        ; stop chewing if frozen
        lda EnsExtra.0.status,x
        cmp #enemyStatus_Frozen
        bne ++
            lda #$00
            sta EnsExtra.0.data1C,x
        ++
        jmp PipeBugApplySpeed
    +

    lda EnemyStatusPreAI
    cmp #enemyStatus_Resting
    bne +
        ; init enemy
        ; bunnyhead is not chewing
        lda #$00
        sta EnsExtra.0.data1C,x
    +

    lda EnsExtra.0.data1C,x
    bmi @chewing

    ; branch if hit Junko
    lda EnIsHit,x
    and #$04
    bne @startChewing

    ; if pipe bug is going forward, apply speed
    lda EnSpeedX,x
    beq +
        jmp PipeBugApplySpeed
    +

    ; if EnsExtra.0.accelY is in effect, we need to check if y speed became positive
    lda EnsExtra.0.accelY,x
    bne PipeBugCheckIfGoForwards

    ; branch if pipe bug is more than #$40 pixels (4 blocks) below Samus
    ; while this is true, pipe bug will continue to rise at a fixed y speed
    lda ObjY
    sec
    sbc EnY,x
    cmp #$40
    bcs PipeBugApplySpeed

    ; set EnsExtra.0.accelY to #$20
    ; eventually, this gravity will make y speed positive
    lda #$20
    sta EnsExtra.0.accelY,x
    bne PipeBugApplySpeed ; branch always

@startChewing:
    lda EnIsHit,x
    and #$01
    eor SamusDir
    ora #$80
    sta EnsExtra.0.data1C,x

@chewing:
    ; latch onto Junko
    lda EnData05,x
    and #$FE
    sta $00
    lda EnsExtra.0.data1C,x
    and #$01
    eor SamusDir
    ora $00
    sta EnData05,x
    jsr InitEnActiveAnimIndex

    ldx #$00
    jsr StoreObjectPositionToTemp
    ldx PageIndex
    lda EnData05,x
    and #$01
    tay
    lda @latchXOffsets,y
    sta Temp05_SpeedX
    lda ObjRadY
    eor #$FF
    sta Temp04_SpeedY
    jsr ApplySpeedToPosition
    jsr LoadEnemyPositionFromTemp

    ; drain Junko's health
    lda FrameCount
    and #$0F
    bne +
        jsr SFX_SamusHit
        .if BANK == 1
            lda #$20
        .elif BANK == 2
            lda #$25
        .elif BANK == 3
            lda #$75
        .elif BANK == 4
            lda #$50
        .elif BANK == 5
            lda #$60
        .endif
        sta HealthChange
        jsr SubtractHealth
    +

    ; change animation frame every 2 frames
    lda #$02
    jmp CommonJump_01

@latchXOffsets:
    .byte -$06, $06

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
    jsr StoreEnemyPositionToTemp_
    jsr CommonJump_ApplySpeedToPosition
    ; remove bug if it is out of bounds
    bcc PipeBugDelete
    jsr LoadEnemyPositionFromTemp_
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

