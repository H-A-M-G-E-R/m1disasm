; Zoomer Routine (Crawler)
CrawlerAIRoutine:
    ; move only 6 frames out of 8 (0.75px per frame)
    txa
    lsr
    lsr
    lsr
    adc FrameCount
    and #$03
    beq Crawler03

    lda EnemyStatusPreAI
    .if BANK == 1 || BANK == 4
        cmp #enemyStatus_Resting
        beq SkreeExit_Resting
        cmp #enemyStatus_Explode
        beq SkreeExit_Explode
    .elif BANK == 2 || BANK == 5
        cmp #enemyStatus_Resting
        beq CrawlerExit_Resting
        cmp #enemyStatus_Explode
        beq CrawlerExit_Explode
    .endif
    lda EnsExtra.0.status,x
    cmp #enemyStatus_Explode
    beq Crawler03

    ; move crawler in its direction
    lda EnData0A,x
    and #$03
    jsr JumpByRTSToMovementRoutine
    jsr CrawlerInsideCornerCheck
Crawler02:
    jsr CrawlerOutsideCornerCheck
Crawler03:
    ; change animation frame every 3 frames
    lda #$03
    jsr CommonJump_UpdateEnemyAnim
CrawlerExit_Explode:
    jmp CommonJump_02

.if BANK == 2 || BANK == 5
    CrawlerExit_Resting:
        jmp CommonJump_01
.endif

CrawlerReorientSprite:
    ; Y = orientation * 2 + direction
    lda EnData05,x
    lsr
    lda EnData0A,x
    and #$03
    rol
    tay
    lda CrawlerAnimIndexTable,y
    jmp CommonJump_InitEnAnimIndex

.if BANK == 1
    CrawlerAnimIndexTable:
        .byte EnAnim_ZoomerOnFloor - EnAnimTable
        .byte EnAnim_ZoomerOnFloor - EnAnimTable
        .byte EnAnim_ZoomerOnLeftWall - EnAnimTable
        .byte EnAnim_ZoomerOnRightWall - EnAnimTable
        .byte EnAnim_ZoomerOnCeiling - EnAnimTable
        .byte EnAnim_ZoomerOnCeiling - EnAnimTable
        .byte EnAnim_ZoomerOnRightWall - EnAnimTable
        .byte EnAnim_ZoomerOnLeftWall - EnAnimTable
.elif BANK == 2
    CrawlerAnimIndexTable:
        .byte EnAnim_NovaOnFloor - EnAnimTable
        .byte EnAnim_NovaOnFloor - EnAnimTable
        .byte EnAnim_NovaOnLeftWall - EnAnimTable
        .byte EnAnim_NovaOnRightWall - EnAnimTable
        .byte EnAnim_NovaOnCeiling - EnAnimTable
        .byte EnAnim_NovaOnCeiling - EnAnimTable
        .byte EnAnim_NovaOnRightWall - EnAnimTable
        .byte EnAnim_NovaOnLeftWall - EnAnimTable
.elif BANK == 4
    CrawlerAnimIndexTable:
        .byte EnAnim_ZeelaOnFloor - EnAnimTable
        .byte EnAnim_ZeelaOnFloor - EnAnimTable
        .byte EnAnim_ZeelaOnLeftWall - EnAnimTable
        .byte EnAnim_ZeelaOnRightWall - EnAnimTable
        .byte EnAnim_ZeelaOnCeiling - EnAnimTable
        .byte EnAnim_ZeelaOnCeiling - EnAnimTable
        .byte EnAnim_ZeelaOnRightWall - EnAnimTable
        .byte EnAnim_ZeelaOnLeftWall - EnAnimTable
.elif BANK == 5
    CrawlerAnimIndexTable:
        .byte EnAnim_ViolaOnFloor - EnAnimTable
        .byte EnAnim_ViolaOnFloor - EnAnimTable
        .byte EnAnim_ViolaOnLeftWall - EnAnimTable
        .byte EnAnim_ViolaOnRightWall - EnAnimTable
        .byte EnAnim_ViolaOnCeiling - EnAnimTable
        .byte EnAnim_ViolaOnCeiling - EnAnimTable
        .byte EnAnim_ViolaOnRightWall - EnAnimTable
        .byte EnAnim_ViolaOnLeftWall - EnAnimTable
.endif

CrawlerInsideCornerCheck:
    ; inside corner check, check if collided with wall
    ; (carry flag was updated by JumpByRTSToMovementRoutine called before this)
    ldx PageIndex
    bcs RTS_Crawler06
    ; flip direction if tried to move offscreen
    lda $00
    bne CrawlerFlipDirection
        ; at inside corner, stick to wall
        ldy EnData0A,x
        dey
        tya
        and #$03
        sta EnData0A,x
        jmp CrawlerReorientSprite

    CrawlerFlipDirection:
        lda EnData05,x
        eor #$01
        sta EnData05,x
        lda EnData0A,x
        lsr
        bcc RTS_Crawler06
        lda EnData0A,x
        eor #$02
        sta EnData0A,x
    RTS_Crawler06:
        rts

CrawlerOutsideCornerCheck:
    ; outside corner check, check if there's no floor beneath the crawler
    jsr CrawlerOutsideCornerGetNextOrientation
    jsr JumpByRTSToMovementRoutine
    ldx PageIndex
    bcc @RTS
        ; at outside corner, stick to wall
        jsr CrawlerOutsideCornerGetNextOrientation
        sta EnData0A,x
        jsr CrawlerReorientSprite
    @RTS:
    rts

CrawlerOutsideCornerGetNextOrientation:
    ; returns the orientation needed to turn an outside corner, relative to current orientation
    ldy EnData0A,x
    iny
    tya
    and #$03
    rts

; a: orientation
JumpByRTSToMovementRoutine:
    ; Y = (orientation * 2 + direction)*2
    ; shift direction bit into carry
    ldy EnData05,x
    sty $00
    lsr $00
    ; rotate it left into orientation in a
    rol
    ; *2 because pointers are 2 bytes
    asl
    tay
    ; push movement routine pointer into stack
    lda CrawlerMovementRoutinesTable+1,y
    pha
    lda CrawlerMovementRoutinesTable,y
    pha
    ; return to the pushed pointer
    rts

; Crawler jump table
CrawlerMovementRoutinesTable:
    .word EnemyMoveOnePixelRight-1
    .word EnemyMoveOnePixelLeft-1
    .word EnemyMoveOnePixelDown-1
    .word EnemyMoveOnePixelDown-1
    .word EnemyMoveOnePixelLeft-1
    .word EnemyMoveOnePixelRight-1
    .word EnemyMoveOnePixelUp-1
    .word EnemyMoveOnePixelUp-1

