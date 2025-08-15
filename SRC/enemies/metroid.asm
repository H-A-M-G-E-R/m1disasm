;data20:
  ;bits 0-3 is #$0 to #$C, frame counter from touching to fully latched on.
  ;bits 4-6 is #$0 to #$5, count how many bomb hits (5 for separation).
  ;bit 7 is sign of x speed

MetroidAIRoutine:
    ; Delete self if escape timer is active (EndTimer+1 != #$FF)
    ldy EndTimer+1.b
    iny
    beq L9804
        lda #$00
        sta EnsExtra.0.status,x
    L9804:
    
    ; prepare CommonEnemyJump_00_01_02 parameters
    ; change animation frame every 15 frames
    lda #$0F
    sta $00
    sta $01
    ; branch if metroid is exploding
    lda EnsExtra.0.status,x
    cmp #enemyStatus_Explode
    beq CommonEnemyJump_00_01_02
    
    ; branch if enemy is not initing
    lda EnsExtra.0.pose,x
    bne +
        ; enemy is initing, init metroid not latching
        sta EnsExtra2.0.data20,x
    +

    ; check if metroid is frozen or not
    lda EnsExtra.0.status,x
    cmp #enemyStatus_Frozen
    bne L9894
        ; metroid is frozen
        ; make it vincible with 20 health
        lda #20
        sta EnHealth,x
        jsr ClearCurrentMetroidLatch
        beq L9822
    L9894:
        ; metroid is not frozen, metroid is invincible
        lda #$FF
        sta EnHealth,x

    ; branch if metroid latch for this metroid is inactive
    lda EnsExtra2.0.data20,x
    beq L9822
        ; metroid latch is active, jump
        jmp L9899
    L9822:

    ; load whether the metroid is red (#$00) or green (#$01) into y
    ldy EnMovementIndex,x
    
    ; push y max speed to stack
    lda MetroidMaxSpeed,y
    pha
    
    ; check if y speed is positive
    lda EnSpeedY,x
    bpl L983B
        ; negate y max speed
        pla
        jsr TwosComplement
        pha
        ; get absolute value of y speed
        lda #$00
        cmp EnSpeedSubPixelY,x
        sbc EnSpeedY,x
    L983B:
    ; compare absolute y speed with absolute max speed
    cmp MetroidMaxSpeed,y
    pla
    bcc L9849
        ; limit speed to max
        sta EnSpeedY,x
        lda #$00
        sta EnSpeedSubPixelY,x
    L9849:
    
    ; push x max speed to stack
    lda MetroidMaxSpeed,y
    pha
    
    ; check if x speed is positive
    lda EnSpeedX,x
    bpl L985F
        ; negate x speed
        pla
        jsr TwosComplement
        pha
        ; get absolute value of x speed
        lda #$00
        cmp EnSpeedSubPixelX,x
        sbc EnSpeedX,x
    L985F:
    ; compare absolute x speed with absolute max speed
    cmp MetroidMaxSpeed,y
    pla
    bcc L986D
        ; limit speed to max
        sta EnSpeedX,x
        lda #$00
        sta EnSpeedSubPixelX,x
    L986D:
    
    ; load acceleration sign bits into a (bit0: horizontal sign, bit2: vertical sign)
    lda EnData05,x
    pha
    ; get horizontal acceleration
    jsr GetMetroidAccel
    sta EnsExtra.0.accelX,x
    pla
    ; get vertical acceleration
    lsr
    lsr
    jsr GetMetroidAccel
    sta EnsExtra.0.accelY,x
    
L9899:
    lda EnemyMovementPtr
    cmp #$06
    bne L98A9
    cmp EnsExtra.0.status,x
    beq L98A9
    lda #enemyStatus_Frozen
    sta EnsExtra.0.status,x
L98A9:
    lda EnIsHit,x
    and #$20
    beq L990F
        ; check if metroid is latched onto Samus
        lda EnsExtra2.0.data20,x
        beq L98EF
            ; metroid is latched onto Samus
            ; don't count bomb hit if not hit by a bomb explosion
            lda EnWeaponAction,x
            cmp #wa_BombExplode
            bne L9932
            
            ; don't count bomb hit when bit 1 of FrameCount is set
            lda FrameCount
            and #$02
            bne L9932
            
            ; count up one bomb hit
            lda EnsExtra2.0.data20,x
            clc
            adc #$10
            sta EnsExtra2.0.data20,x
            
            ; check if 5 bomb hits have been dealt to the metroid
            and #$70
            cmp #$50
            bne L9932
            
            ; the bomb hits have released the latch of the metroid onto Samus
            lda #enemyStatus_Active
            ora EnSpecialAttribs,x
            sta EnPrevStatus,x
            lda #enemyStatus_Hurt
            sta EnsExtra.0.status,x
            lda #$20
            sta EnSpecialAttribs,x
            lda #$01
            sta EnData0D,x
        L98EF:
        ; let go of Samus
        lda #$00
        sta EnIsHit,x
        sta EnsExtra2.0.data20,x
        sta EnSpeedSubPixelY,x
        sta EnSpeedSubPixelX,x
        ; set repel speed
        lda EnsExtra.0.accelY,x
        jsr GetMetroidRepelSpeed
        sta EnSpeedY,x
        lda EnsExtra.0.accelX,x
        jsr GetMetroidRepelSpeed
        sta EnSpeedX,x
    L990F:
    ; check if metroid is latched onto Samus (again)
    lda EnsExtra2.0.data20,x
    bne L9932
        ; metroid is not latched
        ; check if metroid is touching Samus
        lda EnIsHit,x
        and #$04
        ; branch if metroid doesnt touch Samus
        beq L9967
        
        ; begin attempt to latch onto Samus
        ; put sign of x speed + $01 into latch
        lda EnSpeedX,x
        and #$80
        ora #$01
        tay
        jsr ClearMetroidSpeed
        tya
        sta EnsExtra2.0.data20,x
    L9932:
    ; metroid is latched
    ; branch if bit 7 of EnData05 is set
    lda EnData05,x
    asl
    bmi L9967
    ; push metroid latch to stack
    lda EnsExtra2.0.data20,x
    php
    ; if metroid is not fully latched, increase latch frame counter
    and #$0F
    cmp #$0C
    beq L9941
        inc EnsExtra2.0.data20,x
    L9941:
    ; prepare metroid offset relative to Samus's position
    ; load y offset from table
    tay
    lda MetroidLatchOffsetY-1,y
    sta Temp04_SpeedY
    ; calculate x offset based on latch frame counter
    ; #$0C - frame counter
    sty Temp05_SpeedX
    lda #$0C
    sec
    sbc Temp05_SpeedX
    ldx PageIndex
    ; negate offset if latch's sign of x speed is positive
    plp
    bmi L9956
        jsr TwosComplement
    L9956:
    sta Temp05_SpeedX
    ; load Samus position
    jsr StoreSamusPositionToTemp
    ; add offset to Samus position
    jsr CommonJump_ApplySpeedToPosition
    ; set as metroid position
    jsr LoadEnemyPositionFromTemp_

L9967:
    ; Don't suck Samus's energy if metroid isn't fully attached to Samus
    lda EnsExtra2.0.data20,x
    and #$0F
    cmp #$0C
    bne L999E
    
    ; Don't suck Samus's energy if she is dead
    lda Health
    ora Health+1
    beq L999E
    
    ; Subtract 1/4 health point from Samus
    ldy #$02
    sty HealthChange
    jsr CommonJump_SubtractHealth
    ; Set MetroidOnSamus to true
    inc MetroidOnSamus
L999E:
    ; branch if bit 7 of EnData05 is set
    lda EnData05,x
    asl
    bmi L99AB

    lda ObjectCntrl
    bmi L99AB
        lda EnsExtra.0.type,x
        eor #$03 ~ $02
        sta ObjectCntrl
    L99AB:
    jmp CommonEnemyJump_00_01_02

ClearCurrentMetroidLatch:
    lda #$00
    sta EnsExtra2.0.data20,x
    rts

ClearMetroidSpeed:
    lda #$00
    sta EnSpeedY,x
    sta EnSpeedX,x
    sta EnSpeedSubPixelX,x
    sta EnSpeedSubPixelY,x
ClearRinkaAcceleration: ; referenced in rinka.asm
    sta EnsExtra.0.accelX,x
    sta EnsExtra.0.accelY,x
    rts

MetroidLatchOffsetY:
    .byte $00, $FC, $F9, $F7, $F6, $F6, $F5, $F5, $F5, $F6, $F6, $F8

StoreSamusPositionToTemp:
    ; put Samus position as parameters to CommonJump_ApplySpeedToPosition
    lda ObjX
    sta Temp09_PositionX
    lda ObjY
    sta Temp08_PositionY
    lda ObjHi
    sta Temp0B_PositionHi
    rts

LoadEnemyPositionFromTemp_:
    ; save function result as enemy position
    lda Temp09_PositionX
    sta EnX,x
    lda Temp08_PositionY
    sta EnY,x
    lda Temp0B_PositionHi
    and #$01
    sta EnsExtra.0.hi,x
    rts

GetMetroidAccel:
    ; put acceleration sign bit in carry
    lsr
    ; load whether the metroid is red (#$00) or green (#$01) into a
    lda EnMovementIndex,x
    ; rotate direction bit back into a
    rol
    ; get MetroidAccel at that index
    tay
    lda MetroidAccel,y
    rts

GetMetroidRepelSpeed:
    ; use bit 7 of accel as an index for MetroidRepelSpeed table
    rol
    and #$01
    tay
    lda MetroidRepelSpeed,y
    rts

MetroidRepelSpeed:
    .byte -$02, $02

MetroidAccel:
    .byte $0C, -$0C ; red metroid
    .byte $18, -$18 ; green metroid

MetroidMaxSpeed:
    .byte $01 ; red metroid
    .byte $02 ; green metroid

