MapLeft     =   $64                 ; Map position on screen
MapTop      =   $63
MapWidth    =   7                   ; Map size, in tiles
MapHeight   =   5
BlankTile   =   $64
SamusBlipTile = $7B

DrawMap:
    ; Draw samus blip
    ldy SpritePagePos

    ; make blip flicker
    lda FrameCount
    and #$10
    bne @DrawMapTiles

    lda BlipX                           ; Calculate blip X
    bmi @DrawMapTiles                   ; Hide blip if off map display
    cmp #MapWidth
    bcs @DrawMapTiles        
    asl
    asl
    asl
    clc
    adc #MapLeft
    sta SpriteRAM.0.x,Y

    lda BlipY                           ; Calculate blip Y
    bmi @DrawMapTiles                   ; Hide blip if off map display
    cmp #MapHeight
    bcs @DrawMapTiles 
    asl
    asl
    asl
    clc
    adc #MapTop
    sta SpriteRAM.0.y,Y

    lda #$00
    sta SpriteRAM.0.attrib,Y
    lda #SamusBlipTile
    sta SpriteRAM.0.tileID,Y

    iny
    iny
    iny
    iny
    sty SpritePagePos

    @DrawMapTiles:
    lda #$00
    sta $00
    ; loop rows
    @rowLoop:
        ; Get screen Y coordinate for row
        asl                 ; Grid Y * 8
        asl
        asl
        clc
        adc #MapTop         ; + top of grid
        sta $01

        ; Get screen X coordinate
        lda #MapLeft + MapWidth * 8 - 8.b
        sta $02

        ldx #MapWidth - 1.b ; 7 screens per row
        @cellLoop:
            lda $02
            sta SpriteRAM.0.x,Y
            lda $01
            sta SpriteRAM.0.y,Y
            lda #$01
            sta SpriteRAM.0.attrib,Y

            lda $00
            jsr GetMapTile
            sta SpriteRAM.0.tileID,Y

            ; Next tile 8 px to the right
            lda $02
            sec
            sbc #$08
            sta $02

            iny
            iny
            iny
            iny
            sty SpritePagePos
            dex
        bpl @cellLoop

        inc $00
        lda $00
        cmp #MapHeight      ; 7 rows
    bne @rowLoop
    
    rts
    
GetMapTile:
    ; Gets tile number to use for the given map position
    ; X MUST BE PRESERVED
    ; x [in]    Cell X position
    ; a [in]    Cell Y position
    ; a [out]   Tile number
    ;
    ; Uses $03, $04, $05, $06
    
    stx $03             ; Preserve registers
    sty $06
    ldx #$00            ; Clear a variable
    stx $04            
    
    clc
    adc MinimapY        ; Get absolute Y
    sec
    sbc #$02
    bcc @YOutOfRange    ; If < 0, out of range. Use blank tile
    cmp #$20
    bcs @YOutOfRange    ; If >= #$20, out of range. Use blank tile.

    ; Set 16-bit value at $04 to (y * #$20)
    lsr
    ror $04
    lsr
    ror $04
    lsr
    ror $04
    
    ; Add address of map data
    clc
    adc #>PauseMap.b
    sta $05

    lda $03
    clc                 ; Get absolute X
    adc MinimapX
    sec
    sbc #$03
    bcc @XOutOfRange    ; If < 0, its out of range, use a blank tile
    cmp #$20
    bcs @XOutOfRange    ; If >= #$20, it is out of range, use a blank tile

    tay
    lda ($04),Y         ; Get map tile number
    
    ldx $03             ; Restore registers
    ldy $06
    rts

@XOutOfRange:
@YOutOfRange:
    ldx $03
    ldy $06
    lda #BlankTile
    rts

GetMapCoords:
    lda SamusMapPosX
    sta MinimapX
    lda SamusMapPosY
    sta MinimapY

    jsr GetNameTableAtScrollDir
    eor ObjHi
    beq @return

        lda ScrollDir
        cmp #$02
        bcs @horiz

    @vert:
        tay
        beq @up
        lda ScrollY
        beq @return
        dec MinimapY
        jmp @return
    @up:
        inc MinimapY
        jmp @return

    @horiz:
        beq @left
        lda ScrollX
        beq @return
        dec MinimapX
        jmp @return
    @left:
        inc MinimapX

@return:
    ; Place blip
    lda #$03
    sta BlipX
    lda #$02
    sta BlipY

    rts

MapInputHandler:
    lda Joy1Change
    ora Joy1Retrig
    sta $00

    and #BUTTON_UP
    beq +
        ldx MinimapY        ; Don't move up past edge of map
        beq +
        dec MinimapY
        inc BlipY
        jsr SFX_Beep
    +
    lda $00
    and #BUTTON_DOWN
    beq +
        ldx MinimapY        ; Don't move right past edge of map
        cpx #$1F
        beq +
        inc MinimapY
        dec BlipY
        jsr SFX_Beep
    +
    lda $00
    and #BUTTON_LEFT
    beq +
        ldx MinimapX        ; Don't move up past edge of map
        beq +
        dec MinimapX
        inc BlipX
        jsr SFX_Beep
    +
    lda $00
    and #BUTTON_RIGHT
    beq +
        ldx MinimapX        ; Don't move right past edge of map
        cpx #$1F
        beq +
        inc MinimapX
        dec BlipX
        jsr SFX_Beep
    +

@return:
    rts

DrawMinimap:
    ; check if minimap needs to be updated
    jsr GetMapCoords
    lda MinimapX
    cmp MinimapPrevX
    bne @update
    lda MinimapY
    cmp MinimapPrevY
    beq @noUpdate
    @update:
        ; update minimap
        ; set previous map position
        lda MinimapX
        sta MinimapPrevX
        lda MinimapY
        sta MinimapPrevY

        ; generate minimap tiles
        ldy #$00
        @loop_generate:
            ldx @mapXOffsets,y
            lda @mapYOffsets,y
            jsr GetMapTile
            sta MinimapTileIndices,y
            iny
            cpy #$09
            bne @loop_generate
    @noUpdate:
    ; draw blip
    ldx SpritePagePos
    ; make blip flicker
    lda FrameCount
    and #$10
    bne @skipDrawingBlip
        lda #$20
        sta SpriteRAM.0.x,x
        lda #$3D
        sta SpriteRAM.0.y,x
        lda #SamusBlipTile
        sta SpriteRAM.0.tileID,x
        lda #$00
        sta SpriteRAM.0.attrib,x
        inx
        inx
        inx
        inx
    @skipDrawingBlip:
    ; draw the minimap itself
    ldy #$00
    @loop_draw:
        lda @spriteXPositions,y
        sta SpriteRAM.0.x,x
        lda @spriteYPositions,y
        sta SpriteRAM.0.y,x
        lda MinimapTileIndices,y
        sta SpriteRAM.0.tileID,x
        lda #$01
        sta SpriteRAM.0.attrib,x
        inx
        inx
        inx
        inx
        iny
        cpy #$09
        bne @loop_draw
    @hitMax:
    stx SpritePagePos
    rts

@mapXOffsets:
    .byte $02,$03,$04
    .byte $02,$03,$04
    .byte $02,$03,$04

@mapYOffsets:
    .byte $01,$01,$01
    .byte $02,$02,$02
    .byte $03,$03,$03

@spriteXPositions:
    .byte $18,$20,$28
    .byte $18,$20,$28
    .byte $18,$20,$28

@spriteYPositions:
    .byte $35,$35,$35
    .byte $3D,$3D,$3D
    .byte $45,$45,$45
