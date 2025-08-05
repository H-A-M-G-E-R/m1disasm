DrawMetasprite:
    ldx SpritePagePos
    ldy Temp11_FrameIndex
    dec Temp10_ScreenY ; Because PPU uses Y + 1 as real Y coord.
    ; Go to DrawExplodingMetasprite if Temp02_ExplodeTimer != 0
    lda Temp02_ExplodeTimer
    bne DrawExplodingMetasprite
    ; Go to DrawMetaspriteXFlipped if bit 6 of Temp04_MetaspriteFlipFlags is set
    bit Temp04_MetaspriteFlipFlags
    bvs DrawMetaspriteXFlipped
    @loop:
        ; y
        lda (Temp00_FramePtr),y
        cmp #$80 ; $80 is terminator
        beq @exit
        iny
        clc
        adc Temp10_ScreenY
        sta SpriteRAM.0.y,x
        ; tile index
        lda (Temp00_FramePtr),y
        iny
        sta SpriteRAM.0.tileID,x
        ; attributes
        lda (Temp00_FramePtr),y
        iny
        eor Temp05_Cntrl
        sta SpriteRAM.0.attrib,x
        ; x
        lda (Temp00_FramePtr),y
        iny
        clc
        adc Temp0E_ScreenX
        sta SpriteRAM.0.x,x

        inx
        inx
        inx
        inx
        bne @loop
@exit:
    stx SpritePagePos
ClearObjectCntrl:
    lda #$00                        ;
    sta ObjectCntrl                 ;Clear object control byte.
    rts                             ;

DrawMetaspriteXFlipped:
    @loop:
        ; y
        lda (Temp00_FramePtr),y
        cmp #$80 ; $80 is terminator
        beq @exit
        iny
        clc
        adc Temp10_ScreenY
        sta SpriteRAM.0.y,x
        ; tile index
        lda (Temp00_FramePtr),y
        iny
        sta SpriteRAM.0.tileID,x
        ; attributes
        lda (Temp00_FramePtr),y
        iny
        eor Temp05_Cntrl
        sta SpriteRAM.0.attrib,x
        ; x
        lda Temp0E_ScreenX
        sec
        sbc (Temp00_FramePtr),y
        iny
        sec
        sbc #$08
        sta SpriteRAM.0.x,x

        inx
        inx
        inx
        inx
        bne @loop
@exit:
    stx SpritePagePos
    jmp ClearObjectCntrl

DrawExplodingMetasprite:
    ; Go to DrawExplodingMetaspriteXFlipped if bit 6 of Temp04_MetaspriteFlipFlags is set
    bit Temp04_MetaspriteFlipFlags
    bvs DrawExplodingMetaspriteXFlipped
    @loop:
        ; explode displacement index
        lda (Temp00_FramePtr),y
        bmi @exit ; $80 is terminator
        iny
        sta Temp03_ExplodePlaceIndex
        ; y
        lda (Temp00_FramePtr),y
        iny
        sty Temp11_FrameIndex
        clc
        adc Temp10_ScreenY
        sta SpriteRAM.0.y,x
        ; displace y by explosion
        lda Temp03_ExplodePlaceIndex
        lsr
        tay
        lda ExplodeIndexTbl,y
        clc
        adc Temp02_ExplodeTimer
        tay
        lda ExplodePlacementTbl-1,y
        clc
        adc SpriteRAM.0.y,x
        sta SpriteRAM.0.y,x
        ; tile index
        ldy Temp11_FrameIndex
        lda (Temp00_FramePtr),y
        iny
        sta SpriteRAM.0.tileID,x
        ; attributes
        lda (Temp00_FramePtr),y
        iny
        eor Temp05_Cntrl
        sta SpriteRAM.0.attrib,x
        ; x
        lda (Temp00_FramePtr),y
        iny
        clc
        adc Temp0E_ScreenX
        sta SpriteRAM.0.x,x
        ; displace x by explosion
        lda Temp03_ExplodePlaceIndex
        lsr
        php
        lda Temp02_ExplodeTimer
        asl
        plp
        bcs +
            eor #$FF
            adc #$01
        +
        clc
        adc SpriteRAM.0.x,x
        sta SpriteRAM.0.x,x

        inx
        inx
        inx
        inx
        bne @loop
@exit:
    stx SpritePagePos
    jmp ClearObjectCntrl

DrawExplodingMetaspriteXFlipped:
    @loop:
        ; explode displacement index
        lda (Temp00_FramePtr),y
        bmi @exit ; $80 is terminator
        iny
        sta Temp03_ExplodePlaceIndex
        ; y
        lda (Temp00_FramePtr),y
        iny
        sty Temp11_FrameIndex
        clc
        adc Temp10_ScreenY
        sta SpriteRAM.0.y,x
        ; displace y by explosion
        lda Temp03_ExplodePlaceIndex
        lsr
        tay
        lda ExplodeIndexTbl,y
        clc
        adc Temp02_ExplodeTimer
        tay
        lda ExplodePlacementTbl-1,y
        clc
        adc SpriteRAM.0.y,x
        sta SpriteRAM.0.y,x
        ; tile index
        ldy Temp11_FrameIndex
        lda (Temp00_FramePtr),y
        iny
        sta SpriteRAM.0.tileID,x
        ; attributes
        lda (Temp00_FramePtr),y
        iny
        eor Temp05_Cntrl
        sta SpriteRAM.0.attrib,x
        ; x
        lda Temp0E_ScreenX
        sec
        sbc (Temp00_FramePtr),y
        iny
        sec
        sbc #$08
        sta SpriteRAM.0.x,x
        ; displace x by explosion
        lda Temp03_ExplodePlaceIndex
        lsr
        php
        lda Temp02_ExplodeTimer
        asl
        plp
        bcc +
            eor #$FF
            adc #$00
        +
        clc
        adc SpriteRAM.0.x,x
        sta SpriteRAM.0.x,x

        inx
        inx
        inx
        inx
        bne @loop
@exit:
    stx SpritePagePos
    jmp ClearObjectCntrl
