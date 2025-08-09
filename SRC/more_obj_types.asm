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

; Global object type $A
SpawnTilesetChange:
    iny
    lda ($00),y
    cmp TilesetIndex
    beq @exit
        jsr ChangeTileset
    @exit:
    lda #$02
    jmp ChooseSpawningRoutine

ChangeTileset:
    sta TilesetIndex
    ldy #$00
    sty TileAnimIndex
    sty PalAnimIndex
    iny
    sty TileAnimDelay
    sty PalAnimDelay
    rts

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

ElevatorReadahead:
    ; push map Y
    lda SamusMapPosY
    pha
        ; get room ahead of elevator
        tay
        ldx PageIndex
        lda ElevatorType-$20,x
        bpl @down
            dey
            jmp @endif_B
        @down:
            iny
        @endif_B:
        sty SamusMapPosY
        ; check if there's item room music ahead
        jsr GetRoomNum

        ; check for tileset change
        jsr ScanForItems
        bcc +
            jsr ElevatorReadahead_ItemStart
        +
    ; restore map Y
    pla
    sta SamusMapPosY
    lda #$FF
    sta RoomNumber
    rts

ElevatorReadahead_ItemLoop:
    jsr AddToPtr00
ElevatorReadahead_ItemStart:
    ldy #$00
    lda ($00),y
    and #$0F
    jsr ChooseRoutine
        .word ExitSub
        .word @4 ; enemy
        .word @4 ; item
        .word @1 ; mellows
        .word @2 ; elevator
        .word @3 ; cannon
        .word @1 ; mother brain
        .word @1 ; zebetite
        .word @1 ; rinka spawner
        .word @2 ; door
        .word @tilesetChange
        .word @roomState

@1:
    lda #$01
    bne ElevatorReadahead_ItemLoop

@3:
    lda #$03
    bne ElevatorReadahead_ItemLoop

@4:
    lda #$04
    bne ElevatorReadahead_ItemLoop

@5:
    lda #$05
    bne ElevatorReadahead_ItemLoop

@tilesetChange:
    iny
    lda ($00),y
    sta TilesetIndexAheadOfElevator
@2:
    lda #$02
    bne ElevatorReadahead_ItemLoop

@roomState:
    lda ($00),y
    jsr Adiv16
    jsr ChooseRoutine
        .word @2 ; vertical scroll
        .word @5 ; item
        .word @2 ; miniboss dead
