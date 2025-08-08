; Local object type 3
LoadScrollBlock:
    jsr GetNameTableAtScrollDir
    eor #$01
    tax
    lda ($00),y
    jsr Adiv16
    sta ScrollBlockOnNameTable3,x
    lda #$01
    jmp EnemyLoop

; Global object type $B
SpawnRoomState:
    lda ($00),y
    jsr Adiv16
    iny
    jsr @jumpTable
    jmp ChooseSpawningRoutine

@jumpTable:
    jsr ChooseRoutine
        .word SpawnRoomState_VertScroll
        .word SpawnRoomState_Item
        .word SpawnRoomState_MinibossDead

; For when horizontal and vertical rooms cross
SpawnRoomState_VertScroll:
    lda ScrollDir
    lsr
    bne @horizontal
        lda ($00),y
        sta RoomNumber
    @horizontal:
    lda #$02
    rts

SpawnRoomState_Item:
    lda ($00),y
    sta Temp09_ItemType
    iny
    lda ($00),y
    sta Temp07_ItemX
    iny
    lda ($00),y
    sta Temp06_ItemY
    jsr CreateItemID
    jsr CheckForItem
    bcc @notCollected
        ldy #$04
        lda ($00),y
        sta RoomNumber
    @notCollected:
    lda #$05
    rts

; Valid for areas 2 and 4 (miniboss lairs) only
SpawnRoomState_MinibossDead:
    lda InArea
    lsr
    tax
    lda KraidStatueStatus-1,x
    beq @notDead
        lda ($00),y
        sta RoomNumber
    @notDead:
    lda #$02
    rts
