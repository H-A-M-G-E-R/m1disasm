RinkaAIRoutine:
    ; branch if enemy is not active
    ldy EnsExtra.0.status,x
    cpy #enemyStatus_Active
    bne L9AB0

    ; enemy is active
    ; branch if previous status is not resting
    dey ; set y to #$01
    cpy EnemyStatusPreAI
    bne L9AB0

    ; previous status is resting
    ; that means the rinka's speed vector needs to be initialized
    ; clear rinka acceleration
    ; (this is useless, because rinka isn't using the acceleration movement system)
    lda #$00
    jsr ClearRinkaAcceleration ; in metroid.asm
    ; clear rinka sub-pixel position
    sta EnsExtra.0.subPixelY,x
    sta EnsExtra.0.subPixelX,x

    ; get x distance between Samus and the enemy
    jsr GetEnemyXSlotPosition
    ldy #$00
    jsr GetObjectYSlotPosition
    jsr AbsXDistFromYSlotToXSlot
    lda Temp00_Diff
    sta $03

    ; get y distance between Samus and the enemy
    jsr AbsYDistFromYSlotToXSlot
    lda Temp00_Diff
    sta $02

    ; logic or both together
    ora $03
    ; for bits 7, 6, 5 of this
    ldy #$03
    L9A74:
        ; shift bit into carry
        asl
        ; branch if that bit is set
        bcs L9A7A
        dey
        bne L9A74
L9A7A:
    ; branch if bits 7, 6, 5 were not set
    dey
    bmi L9A83
        ; bit 7 or 6 or 5 was set
        ; divide by 2 repeatedly until this isn't the case anymore
        lsr $02
        lsr $03
        bpl L9A7A
    L9A83:
    ; $02 and $03 now do not have bits 7, 6, 5 set

    ; set rinka speed based on $02 and $03
    jsr SetRinkaSpeed
    
    lda EnData05,x
    ; shift horizontal facing direction into carry
    lsr
    ; push EnData05/2 to stack
    pha
    ; branch if facing right
    bcc endIf9A9B
        ; enemy is facing left
        ; negate rinka x speed
        lda #$00
        sbc EnSpeedSubPixelX,x
        sta EnSpeedSubPixelX,x
        lda #$00
        sbc EnSpeedX,x
        sta EnSpeedX,x
    endIf9A9B:
    ; pull EnData05/2 from stack
    pla
    ; shift vertical facing direction into carry
    lsr
    lsr
    ; branch if facing down
    bcc endIf9AB0
        ; enemy is facing up
        ; negate rinka y speed
        lda #$00
        sbc EnSpeedSubPixelY,x
        sta EnSpeedSubPixelY,x
        lda #$00
        sbc EnSpeedY,x
        sta EnSpeedY,x
    endIf9AB0:

L9AB0:
    ; move rinka
    
    ; apply y sub-pixel speed to sub-pixel position
    lda EnSpeedSubPixelY,x
    clc
    adc EnsExtra.0.subPixelY,x
    sta EnsExtra.0.subPixelY,x
    ; if sub-pixel position overflowed, add 1 to temp speed
    lda EnSpeedY,x
    adc #$00
    sta Temp04_SpeedY

    ; apply x sub-pixel speed to sub-pixel position
    lda EnSpeedSubPixelX,x
    clc
    adc EnsExtra.0.subPixelX,x
    sta EnsExtra.0.subPixelX,x
    ; if sub-pixel position overflowed, add 1 to temp speed
    lda EnSpeedX,x
    adc #$00
    sta Temp05_SpeedX

    ; store position to temp
    lda EnY,x
    sta Temp08_PositionY
    lda EnX,x
    sta Temp09_PositionX
    lda EnsExtra.0.hi,x
    sta Temp0B_PositionHi
    ; apply speed
    jsr CommonJump_ApplySpeedToPosition
    ; branch if movement succeeded
    bcs L9AF1
        ; movement failed, remove rinka
        lda #$00
        sta EnsExtra.0.status,x
    L9AF1:
    jsr LoadEnemyPositionFromTemp_
    ; change animation frame every 8 frames
    lda #$08
    jmp CommonJump_01


SetRinkaSpeed:
    ; load y speed
    lda $02
    pha
    ; write upper nibble to enemy y speed
    jsr Adiv16_
    sta EnSpeedY,x
    pla
    ; write lower nibble to enemy y speed subpixels
    jsr Amul16_
    sta EnSpeedSubPixelY,x

    ; load x speed
    lda $03
    pha
    jsr Adiv16_
    ; write upper nibble to enemy x speed
    sta EnSpeedX,x
    pla
    ; write lower nibble to enemy x speed subpixels
    jsr Amul16_
    sta EnSpeedSubPixelX,x

    ; half both speeds because I made it move at 60FPS
    lda EnSpeedY,x
    asl
    ror EnSpeedY,x
    ror EnSpeedSubPixelY,x

    lda EnSpeedX,x
    asl
    ror EnSpeedX,x
    ror EnSpeedSubPixelX,x

    rts


    lsr ; unused instruction
Adiv16_:
    lsr
    lsr
    lsr
    lsr
    rts

Amul16_:
    asl
    asl
    asl
    asl
    rts

