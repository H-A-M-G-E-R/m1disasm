FileSave:
    ; calculate checksum
    lda #<Health.b
    sta $00
    sta $02
    lda #>Health.b
    sta $01
    sta $03
    jsr CalculateFileChecksum
    sta SaveChecksum
    sta SaveChecksumDup
    eor #$FF
    sta SaveChecksumXor
    sta SaveChecksumXorDup

    ; get save slot address
    lda CurrentSaveSlot
    asl
    tax
    lda SaveSlotAddrs,x
    sta $00
    lda SaveSlotAddrs+1,x
    sta $01

    ; copy data to save slot
@copyData:
    ldy #$00
    ldx #$00
    @loop:
        lda ($02),y
        sta ($00),y
        iny
        bne @noHi
            inx
            inc $03
            inc $01
        @noHi:
        cpy #<_sizeof_SaveSlots.0.b
        bne @loop
        cpx #>_sizeof_SaveSlots.0.b
        bne @loop
    rts

FileLoad:
    ; get save slot address
    lda CurrentSaveSlot
    asl
    tax
    lda SaveSlotAddrs,x
    sta $02
    lda SaveSlotAddrs+1,x
    sta $03

    ; copy data from save slot
    lda #<Health.b
    sta $00
    lda #>Health.b
    sta $01
    bne FileSave@copyData ; branch always

; save slot address is in $01.$00
CalculateFileChecksum:
    ldy #$00
    ldx #$00
    txa ; A = 0
    @loop:
        clc
        adc ($00),y
        iny
        bne @noHi
            inx
            inc $01
        @noHi:
        cpy #<(_sizeof_SaveSlots.0-4).b
        bne @loop
        cpx #>(_sizeof_SaveSlots.0-4).b
        bne @loop
    rts

SaveSlotAddrs:
    .word SaveSlots.0
    .word SaveSlots.1
    .word SaveSlots.2

CheckForCorruptSaveFiles:
    ; save CurrentSaveSlot
    lda CurrentSaveSlot
    pha

    ; loop through 3 slots
    lda #$00
    sta CurrentSaveSlot
    sta $04 ; number of corrupt files
    @loop:
        ; load file
        jsr FileLoad

        ; calculate checksum
        lda #<Health.b
        sta $00
        lda #>Health.b
        sta $01
        jsr CalculateFileChecksum

        ; check if checksum matches
        cmp SaveChecksum
        bne @corrupt
        cmp SaveChecksumDup
        bne @corrupt
        eor #$FF
        cmp SaveChecksumXor
        bne @corrupt
        cmp SaveChecksumXorDup
        beq @notCorrupt
        @corrupt:
            ; checksum doesn't match
            ; init blank save file
            jsr InitializeStats
            jsr FileSave
            inc $04
        @notCorrupt:

        inc CurrentSaveSlot
        lda CurrentSaveSlot
        cmp #$03
        bne @loop

    ; restore CurrentSaveSlot
    pla
    sta CurrentSaveSlot

    ; check if all files were corrupt
    lda $04
    cmp #$03
    bne @notAllCorrupt
        ; all files were corrupt, select file 0
        lda #$00
        sta CurrentSaveSlot
    @notAllCorrupt:
    rts

SaveSamusPos:
    lda InArea
    sta SaveArea

    lda SamusMapPosX
    sta SaveSamusMapX
    lda SamusMapPosY
    sta SaveSamusMapY

    jsr GetNameTableAtScrollDir
    eor ObjHi
    beq @doneMapCoords

    lda ScrollDir
    cmp #$02
    bcs @horiz

    @vert:
        tay
        beq @up
        lda ScrollY
        beq @doneMapCoords
        dec SaveSamusMapY
        jmp @doneMapCoords
    @up:
        inc SaveSamusMapY
        jmp @doneMapCoords

    @horiz:
        beq @left
        lda ScrollX
        beq @doneMapCoords
        dec SaveSamusMapX
        jmp @doneMapCoords
    @left:
        inc SaveSamusMapX

@doneMapCoords:
    lda ObjX
    sta SaveSamusX
    lda ObjY
    sta SaveSamusY

    lda ScrollDir
    and #$02
    sta SaveScrollDir
    rts
