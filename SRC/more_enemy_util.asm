; mostly copy-pasted from CheckCollisionOfXSlotAndYSlot
; result is stored in Temp00_Diff and Temp01_DiffHi
; $02 and $03 aren't clobbered
SignedYDistFromYSlotToXSlot:
    ;subtract y slot entity's y position from x slot entity's y position
    lda Temp07_XSlotPositionY
    sec
    sbc Temp06_YSlotPositionY
    ;Store difference in $00.
    sta Temp00_Diff
    
    ; branch if room is horizontal
    lda ScrollDir
    and #$02
    bne @else_sameHiY
    ; room is vertical
    ; branch if high bytes of y pos are equal
    lda Temp0B_XSlotPositionHi
    eor Temp0A_YSlotPositionHi
    beq @else_sameHiY

    ; high bytes are not equal
    ; this must be reflected in the difference
    jsr SignedXDistFromYSlotToXSlot@positionHi_notEqual
    ; compensate for the screen height being 240 instead of 256
    lda Temp00_Diff
    bmi @negative_diffHiY
    sec
    sbc #$100-SCRN_VY.b
    sta Temp00_Diff
    bcs @endIf_A
        dec Temp01_DiffHi
    @endIf_A:
    rts

@negative_diffHiY:
    clc
    adc #$100-SCRN_VY.b
    sta Temp00_Diff
    bcc @endIf_B
        inc Temp01_DiffHi
    @endIf_B:
    rts

@else_sameHiY:
    ; high bytes are equal
    lda #$00
    sbc #$00
    sta Temp01_DiffHi
    rts

SignedXDistFromYSlotToXSlot:
    ;subtract y slot entity's x position from x slot entity's x position
    lda Temp09_XSlotPositionX
    sec
    sbc Temp08_YSlotPositionX
    ;Store difference in $00.
    sta Temp00_Diff

    ; branch if room is vertical
    lda ScrollDir
    and #$02
    beq @else_sameHiX
    ; room is horizontal
    ; branch if high bytes of x pos are equal
    lda Temp0B_XSlotPositionHi
    eor Temp0A_YSlotPositionHi
    beq @else_sameHiX

    ; high bytes are not equal
    ; this must be reflected in the difference
    jmp @positionHi_notEqual

@else_sameHiX:
    ; high bytes are equal
    sbc #$00
    sta Temp01_DiffHi
    rts

@positionHi_notEqual:
    ; subtract y slot entity's hi position from x slot entity's hi position
    lda Temp0B_XSlotPositionHi
    sbc Temp0A_YSlotPositionHi
@positionHi_equal:
    sta Temp01_DiffHi
@RTS:
    rts

AbsYDistFromYSlotToXSlot:
    jsr SignedYDistFromYSlotToXSlot
    lda Temp01_DiffHi
    bpl SignedXDistFromYSlotToXSlot@RTS
    jmp NegateTemp00Temp01

AbsXDistFromYSlotToXSlot:
    jsr SignedXDistFromYSlotToXSlot
    lda Temp01_DiffHi
    bpl SignedXDistFromYSlotToXSlot@RTS
    jmp NegateTemp00Temp01

EnemyUpdateFlipIfBit2Of968BClear:
    jsr ReadTableAt968B
    and #$04
    bne @RTS
        lda EnsExtra2.0.props2F,x
        and #~$40
        sta EnsExtra2.0.props2F,x
        lda EnData05,x
        lsr
        ror
        lsr
        and #$40
        ora EnsExtra2.0.props2F,x
        sta EnsExtra2.0.props2F,x
    @RTS:
    rts
