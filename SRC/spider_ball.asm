SamusSpiderIdle:
    jsr CheckCancelSpider
    ; make spider fall if midair
    jsr CheckSpiderCollision
    bpl @collision
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
    jsr CheckSpiderCollision
    bpl @collision
        lda #sa_SpiderFall
        sta ObjAction
        bne @exit
    @collision:
    ; set idle action if dpad isn't pressed
    lda Joy1Status
    and #BUTTON_RIGHT | BUTTON_LEFT | BUTTON_DOWN | BUTTON_UP.b
    bne @pressedDPad
        lda #sa_SpiderIdle
        sta ObjAction
        bne @exit
    @pressedDPad:
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
    jsr CheckSpiderCollision
    bmi @inAir
        lda #sa_SpiderIdle
        sta ObjAction
        bne @exit ; branch always
    @inAir:
    ; i copy-pasted from SamusRoll
    lda Joy1Change
    jsr BitScan
    cmp #BUTTONBIT_DOWN
    bcs @noChangeDir
        sta SamusDir
        lda #ObjAnim_16 - ObjectAnimIndexTbl.b
        jsr SetSamusAnim
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

CheckSpiderCollision:
    ; down
    lda ObjY
    clc
    adc ObjRadY
    and #$07
    bne +
        jsr CheckMoveDown
        bcs +
        lda #$00
        beq @setOrientation ; branch always
    +
    ; up
    lda ObjY
    sec
    sbc ObjRadY
    and #$07
    bne +
        jsr CheckMoveUp
        bcs +
        lda #$02
        bne @setOrientation ; branch always
    +
    ; right
    lda ObjX
    clc
    adc ObjRadX
    and #$07
    bne +
        jsr ObjectCheckMoveRight
        bcs +
        lda #$01
        bne @setOrientation ; branch always
    +
    ; left
    lda ObjX
    sec
    sbc ObjRadX
    and #$07
    bne +
        jsr ObjectCheckMoveLeft
        bcs +
        lda #$03
        bne @setOrientation ; branch always
    +
    lda #$FF
@setOrientation:
    sta SpiderOrientation
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
