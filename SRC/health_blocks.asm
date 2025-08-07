; ---------------------------------------------------------------------------
; Health Blocks
;
; by snarf and Drevan Zero
; 
; 2/3/2013 - Version 1.0
; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------
; Config
; ---------------------------------------------------------------------------

.def HealyTile $FD export         ; (Tile number must be greater than $80)
.def MissileRefillTile $FE export ; (Tile number must be greater than $80)

; These two values use BCD. Use $, but write it as if decimal. E.g. to
; heal 1.5 health per frame, set HealRate to $0015
HealRate = $0005                ; Tenths of health added per frame

; ---------------------------------------------------------------------------
; Code
; ---------------------------------------------------------------------------
        

HealthBlockCheck:
    ; New routine that checks the TouchingHealyBlock variable and
    ; heals samus if applicable

    lda TouchingHealyBlock
    beq +                       ; Touching healy block?
        ; Add health
        .if HealRate > $00FF
            lda #>HealRate.b    ; Only set high byte if > $FF
            sta HealthHiChange
        .endif
        lda #<HealRate.b
        sta HealthChange
        jsr AddHealth
        
        lda FrameCount          ; Every 32nd frame...
        and #$1F
        bne +
        jsr SFX_ScrewAttack     ; Play sound
    +
    lda TouchingMissileRefill
    beq +
        ; Add a missile every 16 frames
        lda FrameCount
        and #$0F
        bne +
        ldy MissileCount
        cpy MaxMissiles
        beq +
        iny
        sty MissileCount
        jmp SFX_MissilePickup
    +
    rts

