SamusSpiderIdle:
    jsr CheckCancelSpider
    ; make spider fall if midair
    jsr CheckSpiderCollisionOnSurface
    bcc @collision
        lda #sa_SpiderFall
        sta ObjAction
        bne @exit ; branch always
    @collision:
    ; check dpad input
    ldx SpiderOrientation
    lda SpiderInputDirections,x
    ldy #$00
    bit Joy1Status
    bne @right
        iny
        lda SpiderInputDirections+4,x
        bit Joy1Status
        beq @exit
    @right:
    sty SamusDir
    lda #sa_SpiderRoll
    sta ObjAction
    bne SamusSpiderRoll ; branch always

@exit:
    lda #$02
    jmp SetSamusData

SamusSpiderRoll:
    jsr CheckCancelSpider
    ; make spider fall if midair
    jsr CheckSpiderCollisionOnSurface
    bcc @collision
        lda #sa_SpiderFall
        sta ObjAction
        bne @exit ; branch always
    @collision:
    ; set idle action if dpad isn't pressed
    lda Joy1Status
    and #BUTTON_RIGHT | BUTTON_LEFT | BUTTON_DOWN | BUTTON_UP.b
    bne @pressedDPad
        lda #sa_SpiderIdle
        sta ObjAction
        bne @exit
    @pressedDPad:
    ; halve speed in lava
    lda SamusInLava
    beq @notInLava
        lda FrameCount
        lsr
        bcc @exit
    @notInLava:
    jsr @move
    bcs @endif_turnInside
        ; hit wall
        jsr TurnSpiderAtInsideWall
        jsr @move
        jmp @exit
    @endif_turnInside:
    ; outside corner check
    jsr TurnSpiderAtOutsideWall
    jsr @move
    bcs @exit
    ; spider isn't at an outside corner, revert orientation
    jsr TurnSpiderAtInsideWall
@exit:
    lda #$02
    jmp SetSamusData

@move:
    ; X = (orientation * 2 + direction) * 2
    lda SamusDir
    lsr
    lda SpiderOrientation
    rol
    asl
    tax
    lda SpiderMovementRoutinesTbl+1,x
    pha
    lda SpiderMovementRoutinesTbl,x
    pha
    rts

SamusSpiderFall:
    jsr CheckCancelSpider
    ; check if the spider sticks to a surface
    jsr CheckSpiderCollisionDown
    bcc @stick
    jsr CheckSpiderCollisionUp
    bcc @stick
    jsr CheckSpiderCollisionRight
    bcc @stick
    jsr CheckSpiderCollisionLeft
    bcs @inAir
    @stick:
        sta SpiderOrientation
        lda #sa_SpiderIdle
        sta ObjAction
        bne @exit ; branch always
    @inAir:
    ; i copy-pasted from SamusRoll
    lda Joy1Status
    jsr BitScan
    cmp #BUTTONBIT_DOWN
    bcs @noChangeDir
        sta SamusDir
    @noChangeDir:
    ldx SamusDir
    jsr LCCB7
    jsr LCF2E
    lda Joy1Status
    and #BUTTON_RIGHT | BUTTON_LEFT.b
    bne @exit
        jsr ClearHorzData
    @exit:
    lda #$02
    jmp SetSamusData

CheckSpiderCollisionOnSurface:
    lda SpiderOrientation
    jsr ChooseRoutine
        .word CheckSpiderCollisionDown
        .word CheckSpiderCollisionRight
        .word CheckSpiderCollisionUp
        .word CheckSpiderCollisionLeft

CheckSpiderCollisionDown:
    lda ObjY
    clc
    adc ObjRadY
    and #$07
    bne CheckSpiderCollisionLeft@dontCheck
    jsr CheckMoveDown
    bcs @RTS
        lda #$00
    @RTS:
    rts

CheckSpiderCollisionRight:
    lda ObjX
    clc
    adc ObjRadX
    and #$07
    bne CheckSpiderCollisionLeft@dontCheck
    jsr ObjectCheckMoveRight
    bcs @RTS
        lda #$01
    @RTS:
    rts

CheckSpiderCollisionUp:
    lda ObjY
    sec
    sbc ObjRadY
    and #$07
    bne CheckSpiderCollisionLeft@dontCheck
    jsr CheckMoveUp
    bcs @RTS
        lda #$02
    @RTS:
    rts

CheckSpiderCollisionLeft:
    lda ObjX
    sec
    sbc ObjRadX
    and #$07
    bne @dontCheck
    jsr ObjectCheckMoveLeft
    bcs @RTS
        lda #$03
    @RTS:
    rts
@dontCheck:
    sec
    rts

TurnSpiderAtInsideWall:
    lda #$01
    ldx SamusDir
    beq +
        lda #$FF
    +
    clc
    adc SpiderOrientation
    and #$03
    sta SpiderOrientation
    rts

TurnSpiderAtOutsideWall:
    lda #$01
    ldx SamusDir
    bne +
        lda #$FF
    +
    clc
    adc SpiderOrientation
    and #$03
    sta SpiderOrientation
    rts

CheckCancelSpider:
    jsr CheckBombLaunch
    ; cancel if A pressed
    lda Joy1Change
    and #BUTTON_A
    bne @cancel
    ; cancel if knockback or bomb jump
    lda SamusIsHit
    and #$20
    beq @RTS
@cancel:
    ; unspider
    lda #sa_Roll
    sta ObjAction
    jsr StopVertMovement
    jsr ClearHorzData
    lda #ObjAnim_16 - ObjectAnimIndexTbl.b
    jsr SetSamusAnim
    lda #$02
    jsr SetSamusData
    pla
    pla
@RTS:
    rts

SpiderInputDirections:
    .byte BUTTON_RIGHT, BUTTON_UP, BUTTON_LEFT, BUTTON_DOWN
    .byte BUTTON_LEFT, BUTTON_DOWN, BUTTON_RIGHT, BUTTON_UP

SpiderMovementRoutinesTbl:
    .word MoveSamusRight-1, MoveSamusLeft-1
    .word MoveSamusUp-1, MoveSamusDown-1
    .word MoveSamusLeft-1, MoveSamusRight-1
    .word MoveSamusDown-1, MoveSamusUp-1
