; Waver Routine
WaverAIRoutine:
    lda #EnAnim_Waver2FacingRight - EnAnimTbl.b
    sta EnemyFlipAfterDisplacementAnimIndex
    lda EnsExtra.0.status,x
    cmp #enemyStatus_Explode
    beq L99F7
        jsr CommonJump_EnemyFlipAfterDisplacement
    L99F7:
    jmp CommonEnemyStub2

