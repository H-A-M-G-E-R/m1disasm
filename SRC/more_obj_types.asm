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

; Local object type 5
SpawnObjChangeLocal:
    jsr SpawnObjChange
    jmp EnemyLoop

; Global object type $A
SpawnObjChangeGlobal:
    jsr SpawnObjChange
    jmp ChooseSpawningRoutine

SpawnObjChange:
    lda ($00),y
    jsr Adiv16
    iny
    jsr ChooseRoutine
        .word SpawnTilesetChange
        .word SpawnMusicChange
        .word SpawnAreaChange

SpawnTilesetChange:
    lda ($00),y
    ldx AreaChangePending
    bne @change
    cmp TilesetIndex
    beq @dontChange
    @change:
        tax
        inx
        stx TilesetChangePending
    @dontChange:
    lda #$02
    rts

SpawnMusicChange:
    lda ($00),y
    sta CurrentRoomMusic
    ;ldx ObjAction
    ;cpx #sa_Elevator
    ;bne @exit
    ;    sta CurrentMusic
    ;@exit:
    lda #$02
    rts

; global only
; if there's an area change and a tileset change in the same map coord, order the area change before the tileset change.
SpawnAreaChange:
    lda ($00),y
    cmp InArea
    beq @dontChange
        tax
        inx
        stx AreaChangePending
    @dontChange:
    lda #$02
    rts

ChangeAreaAndTilesetIfPending:
    ldx AreaChangePending
    beq ChangeTilesetIfPending
        ; switch area bank
        dex
        txa
        jsr SwitchBank
        ; copy area pointers
        jsr CopyAreaPointers
        ; clear enemy RAM, and also AreaChangePending
        jsr DestroyEnemies
        ; default to tileset #$00 if there's no tileset change previously
        lda TilesetChangePending
        bne ChangeTilesetIfPending
        jmp ChangeTileset

ChangeTilesetIfPending:
    ldx TilesetChangePending
    beq ChangeTileset@RTS
    dex
    txa
    ; fallthrough

ChangeTileset:
    sta TilesetIndex
    ldy #$00
    sty TileAnimIndex
    sty PalAnimIndex
    sty TilesetChangePending
    iny
    sty TileAnimDelay
    sty PalAnimDelay
@RTS:
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
