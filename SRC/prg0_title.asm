; -------------------
; METROID source code
; -------------------
; MAIN PROGRAMMERS
;     HAI YUKAMI
;   ZARU SOBAJIMA
;    GPZ SENGOKU
;    N.SHIOTANI
;     M.HOUDAI
; (C) 1986 NINTENDO
;
;Commented by Dirty McDingus (nmikstas@yahoo.com)
;Disassembled using TRaCER.

;Title/end (memory page 0)

.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"
.include "config.asm"

.def BANK = 0
.section "ROM Bank $000" bank 0 slot "ROMSwitchSlot" orga $8000 force

;------------------------------------------[ Start of code ]-----------------------------------------

; Save code

.if CFG_SAVE != 0
    .include "save.asm"
.endif

MainTitleRoutine: ; 00:8000
    ;If intro routines not running, branch.
    lda TitleRoutine
    cmp #_id_StartContinueScreen15.b
    bcs L8027
    ;if start has not been pressed, branch.
    lda Joy1Change
    and #BUTTON_START
    beq L8022
    .if CFG_SAVE == 0
        ;Set name table to name table 0.
        lda PPUCTRL_ZP
        and #$FC
        sta PPUCTRL_ZP
        ;start was pressed, load START/CONTINUE screen.
        lda #_id_StartContinueScreen1B.b
        sta TitleRoutine
        bne L8027 ;Branch always.
    .else
        lda Joy1Status
        cmp #BUTTON_START | BUTTON_B | BUTTON_A.b
        bne +
            ; NUKE THE FILE!!!
            jsr InitializeStats
            jsr FileSave
            jsr SFX_BombExplode
            jmp L8022
        +
        ;Load file and start game.
        jsr FileLoad
        jmp InitializeGame
    .endif
    L8022:
    .if CFG_SAVE != 0
        lda Joy1Change
        and #BUTTON_RIGHT
        beq +
            jsr SFX_Beep
            inc CurrentSaveSlot
            lda CurrentSaveSlot
            cmp #$03
            bne +
            lda #$00
            sta CurrentSaveSlot
        +
        lda Joy1Change
        and #BUTTON_LEFT
        beq +
            jsr SFX_Beep
            dec CurrentSaveSlot
            lda CurrentSaveSlot
            bpl +
            lda #$02
            sta CurrentSaveSlot
        +
    .endif
        ;($C1BC)Remove sparkle and crosshair sprites from screen.
        jsr RemoveIntroSprites

        ;Do routine.
        lda TitleRoutine
        jsr L8027

        ;Use only first 3 bits of byte since the pointer table only has 8 entries.
        lda IntroStarOffset
        and #$07
        ;*2 to find entry in IntroStarPntr table.
        asl
        tay
        ;Write palette data from IntroStarPntr table.
        lda IntroStarPntr,y
        ldx IntroStarPntr+1,y
        jsr ProcessPalPPUString
        ;Increment index for next palette change every 16th frame.
        lda FrameCount
        and #$0F
        bne +
        inc IntroStarOffset

        +
        rts
L8027:
    jsr ChooseRoutine
    TitleRoutinePtrTable:
        PtrTableEntry TitleRoutinePtrTable, InitializeAfterReset      ;($8071)First routine after reset.
        PtrTableEntry TitleRoutinePtrTable, DrawIntroBackground       ;($80D0)Draws ground on intro screen.
        PtrTableEntry TitleRoutinePtrTable, FadeInDelay               ;($80F9)Sets up METROID fade in delay.
        PtrTableEntry TitleRoutinePtrTable, METROIDFadeIn             ;($812C)Fade METROID onto screen.
        PtrTableEntry TitleRoutinePtrTable, LoadFlashTimer            ;($8142)Load timer for METROID flash.
        PtrTableEntry TitleRoutinePtrTable, FlashEffect               ;($8109)Makes METROID flash.
        PtrTableEntry TitleRoutinePtrTable, METROIDSparkle            ;($814D)Top and bottom "sparkles" on METROID.
        PtrTableEntry TitleRoutinePtrTable, METROIDFadeOut            ;($8163)Fades METROID off the screen.
        PtrTableEntry TitleRoutinePtrTable, Crosshairs                ;($8182)Displays "crosshairs" effect on screen.
        PtrTableEntry TitleRoutinePtrTable, MoreCrosshairs            ;($81D1)Continue "crosshairs" effect.
        PtrTableEntry TitleRoutinePtrTable, IncTitleRoutine0A         ;($806E)Increment TitleRoutine.
        PtrTableEntry TitleRoutinePtrTable, IncTitleRoutine0B         ;($806E)Increment TitleRoutine.
        PtrTableEntry TitleRoutinePtrTable, ChangeIntroNameTable      ;($822E)Change from name table 0 to name table 1.
        PtrTableEntry TitleRoutinePtrTable, MessageFadeIn             ;($8243)Fade in intro sequence message.
        PtrTableEntry TitleRoutinePtrTable, MessageFadeOut            ;($8263)Fade out intro sequence message.
        PtrTableEntry TitleRoutinePtrTable, DelayIntroReplay          ;($8283)Set Delay time before intro sequence restarts.
        PtrTableEntry TitleRoutinePtrTable, ClearSpareMem             ;($8068)clears some memory addresses not used by game.
        PtrTableEntry TitleRoutinePtrTable, PrepIntroRestart          ;($82A3)Prepare to restart intro routines.
        PtrTableEntry TitleRoutinePtrTable, TitleScreenOff            ;($82ED)Turn screen off.
        PtrTableEntry TitleRoutinePtrTable, TitleRoutineReturn13      ;($82F3)Rts.
        PtrTableEntry TitleRoutinePtrTable, TitleRoutineReturn14      ;($82F3)Rts.
        PtrTableEntry TitleRoutinePtrTable, StartContinueScreen15     ;($90BA)Displays START/Continue screen.
        PtrTableEntry TitleRoutinePtrTable, ChooseStartContinue       ;($90D7)player chooses between START and CONTINUE.
        PtrTableEntry TitleRoutinePtrTable, LoadPasswordScreen        ;($911A)Loads password entry screen.
        PtrTableEntry TitleRoutinePtrTable, EnterPassword             ;($9147)User enters password.
        PtrTableEntry TitleRoutinePtrTable, DisplayPassword           ;($9359)After game over, display password on screen.
        PtrTableEntry TitleRoutinePtrTable, WaitForSTART              ;($9394)Wait for START when showing password.
        PtrTableEntry TitleRoutinePtrTable, StartContinueScreen1B     ;($90BA)Displays START/Continue screen.
        PtrTableEntry TitleRoutinePtrTable, GameOver                  ;($939E)Displays "GAME OVER".
        PtrTableEntry TitleRoutinePtrTable, EndGame                   ;($9AA7)Show ending of the game.
        PtrTableEntry TitleRoutinePtrTable, SetTimer                  ;($C4AA)Set delay timer.

;----------------------------------------[ Intro routines ]------------------------------------------

ClearSpareMem: ; 00:8068
IncTitleRoutine0A: ; 00:806E
IncTitleRoutine0B:
    ;Increment to next title routine.
    inc TitleRoutine
    rts

InitializeAfterReset: ; 00:8071
.if CFG_SAVE != 0
    jsr CheckForCorruptSaveFiles
.endif
    lda #$02                        ;A=2.
    sta IntroMusicRestart           ;Title rountines cycle twice before restart of music.
    ldy #$00
    sty PalDataIndex                ;Reset index to palette data.
    sty ScreenFlashPalIndex         ;Reset index into screen flash palette data.
    sty IntroStarOffset             ;Reset index into IntroStarPntr table.
    sty FadeDataIndex               ;Reset index into fade out palette data.

    ;Set $0000 to point to address $6000.
    sty $00
    ldx #>RoomRAMA.b
    ;The following loop Loads the RAM with the following values:
    ;$6000 thru $62FF = #$00.
    ;$6300 thru $633F = #$C0.
    ;$6340 thru $63FF = #$C4.
    ;$6400 thru $66FF = #$00.
    ;$6700 thru $673F = #$C0.
    ;$6740 thru $67FF = #$C4.
    @loop_A:
        ; save high byte to $01
        stx $01
        ; y = ((high byte) & $03) * 2
        txa
        and #$03
        asl
        tay
        ; save to $02
        sty $02
        ; load fill byte into a
        lda RamValueTbl,y
        ; loop through 256 bytes
        ldy #$00
        @loop_B:
            ; write fill byte
            sta ($00),y
            ; exit if we went through 256 bytes
            iny
            beq @exitloop_B
            ; branch if y is not #$40
            cpy #$40
            bne @loop_B
            ; y is #$40, we must change the fill byte
            ldy $02
            lda RamValueTbl+1,y
            ldy #$40
            bpl @loop_B
        @exitloop_B:
        ; exit loop when next high byte is #$68
        inx
        cpx #$68
        bne @loop_A
    ;Increment to next routine. DrawIntroBackground
    inc TitleRoutine
    ;Loads stars on intro screen.
    jmp LoadStarSprites

;The following table is used by the code above for writing values to RAM.
RamValueTbl: ; 00:80C8
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $C0, $C4

DrawIntroBackground: ; 00:80D0
    ;Initiates intro music.
    lda #music_IntroMusic
    sta CurrentMusic
    ;Turn screen off to draw on the screen.
    jsr ScreenOff
    ;Compress the nametable to a buffer.
    lda #<TitleNametable_Compressed.b
    sta lzsa_srcptr
    lda #>TitleNametable_Compressed.b
    sta lzsa_srcptr+1.b
    lda #<RoomRAMA.b
    sta lzsa_dstptr
    lda #>RoomRAMA.b
    sta lzsa_dstptr+1.b
    jsr lzsa1_unpack
    ;Write the nametable to PPU.
    ;Reset PPU address latch.
    lda PPUSTATUS
    ;PPU increment = 1.
    lda PPUCTRL_ZP
    and #$FB
    sta PPUCTRL_ZP
    sta PPUCTRL
    ;PPU address = $2000 (nametable 0).
    lda #$20
    sta PPUADDR
    ldx #$00
    stx PPUADDR

    stx $00
    lda #>RoomRAMA.b
    sta $01
    ldx #$08
    @loop_A:
        @loop_B:
            lda ($00),y
            sta PPUDATA
            iny
            bne @loop_B
        inc $01
        dex
        bne @loop_A
    jsr WriteScroll

    ;Write palette 0.
    lda #$01
    jsr WriteTitlePal
    ;Switch to name table 0
    lda PPUCTRL_ZP
    and #$FC
    sta PPUCTRL_ZP
    ;Next routine sets up METROID fade in delay. FadeInDelay
    inc TitleRoutine
    ;Turn screen back on.
    jmp ScreenOn

FadeInDelay: ; 00:80F9
    ;Switch to name table 0 or 2. (useless, PPUCTRL_ZP is always #$90 here)
    lda PPUCTRL_ZP
    and #$FE
    sta PPUCTRL_ZP
    ;Loads Timer3 with #$08. Delays Fade in routine by 80 frames (1.3 seconds).
    lda #$08
    jsr SetTimer3
    ;Loads PalDataIndex with #$04
    lda #$04
    sta PalDataIndex
    ;Increment to next routine. METROIDFadeIn
    inc TitleRoutine
    rts

FlashEffect: ; 00:8109
    ;Every fourth frame, run change palette. Creates METROID flash effect.
    lda FrameCount
    and #$03
    bne @RTS
    ;Uses only the first four palette data sets in the flash routine.
    lda PalDataIndex
    and #$03
    sta PalDataIndex
    jsr LoadPalData
    ;If 80 frames (1.3 seconds) have not elapsed, branch so routine will keep running.
    lda Timer3
    bne @RTS
    ;Ensures the palette index is back at 0.
    lda PalDataIndex
    cmp #$04
    bne @RTS
    ;Increment to next routine. METROIDSparkle
    inc TitleRoutine
    jsr LoadSparkleData             ;($87AB) Loads data for next routine.
    ;Sets Timer 3 for a delay of 240 frames (4 seconds).
    lda #$18
    jsr SetTimer3
@RTS:
    rts

METROIDFadeIn: ; 00:812C
    ; exit if 80 frames (1.3 seconds) have not elapsed yet.
    lda Timer3
    bne RTS_8141
    ;Every 16th FrameCount, Change palette. Causes the fade in effect.
    lda FrameCount
    and #$0F
    bne RTS_8141
    ;Load data into Palettes.
    jsr LoadPalData
    ; exit if the fade in still has more palettes to go through
    bne RTS_8141
    ; fade in is completed
    ;Set timer delay for METROID flash effect. Delays flash by 320 frames (5.3 seconds).
    lda #$20
    jsr SetTimer3
    ;Increment to next routine. LoadFlashTimer
    inc TitleRoutine
RTS_8141:
    rts

LoadFlashTimer: ; 00:8142
    ;If 320 frames have not passed, exit
    lda Timer3
    bne RTS_8141
    ;Stores a value of 80 frames in Timer3 (1.3 seconds).
    lda #$08
    jsr SetTimer3
    ;Increment to next routine. FlashEffect
    inc TitleRoutine
    rts

METROIDSparkle: ; 00:814D
    ;Wait until 3 seconds have passed since last routine before continuing.
    lda Timer3
    bne @RTS

    ;Check if sparkle sprites are done moving.
    lda IntroSprs.0.complete
    and IntroSprs.1.complete
    cmp #$01
    bne @endIf_A
        ; sparkle sprites are done moving, sparkle routine is finished
        ;Increment to next routine. METROIDFadeOut
        inc TitleRoutine
        bne @RTS
    @endIf_A:
    ; sparkle sprites are not done moving, continue with sparkle routine.
    ;Update sparkle sprites on the screen.
    jsr UpdateSparkleSprites
@RTS:
    rts

METROIDFadeOut: ; 00:8163
    ;Wait until the frame count is a multiple of eight before proceeding.
    lda FrameCount
    and #$07
    bne @RTS
    ;If FadeDataIndex is less than #$04, keep doing the palette changing routine.
    lda FadeDataIndex
    cmp #$04;
    bne @endIf_A
        ;($8897)Load initial sprite values for crosshair routine.
        jsr InitCrossMissiles
        ;Set counter for slow sprite movement for 8 frames,
        lda #$08
        sta CrossMsl0to3SlowDelay
        ;Load Timer3 with a delay of 80 frames(1.3 seconds).
        jsr SetTimer3
        ;Set SecondCrosshairSprites = #$00
        lda #$00
        sta SecondCrosshairSprites
        ;Increment to next routine. Crosshairs
        inc TitleRoutine
    @endIf_A:
    ;Fades METROID off the screen.
    jsr DoFadeOut
@RTS:
    rts

Crosshairs: ; 00:8182
    ;Is it time to flash the screen white? If not, branch.
    lda FlashScreen
    beq @endIf_A
        ;Flash screen white.
        jsr FlashIntroScreen
    @endIf_A:
    ;Wait 80 frames from last routine before running this one.
    lda Timer3
    bne @RTS

    ;Check if first 4 sprites have completed their movements.  If not, branch.
    lda IntroSprs.0.complete
    and IntroSprs.1.complete
    and IntroSprs.2.complete
    and IntroSprs.3.complete
    beq @notComplete

    ;Prepare to flash screen and draw cross.
    ;Branch if second crosshair sprites are already active.
    lda #$01
    cmp SecondCrosshairSprites
    beq @endIf_B
        ;Indicates second crosshair sprites are active.
        inc SecondCrosshairSprites
        ;Draw cross animation on screen.
        sta IsUpdatingCrossExplode
        ;Flash screen white.
        sta FlashScreen
        ;Reset index to cross sprite data.
        lda #$00
        sta CrossExplodeLengthIndex
    @endIf_B:
    ;Check if second 4 sprites have completed their movements.  If not, branch.
    and IntroSprs.4.complete
    and IntroSprs.5.complete
    and IntroSprs.6.complete
    and IntroSprs.7.complete
    beq @notComplete

    ;Prepare to flash screen and draw cross.
    ;Draw cross animation on screen.
    lda #$01
    sta IsUpdatingCrossExplode
    ;Flash screen white.
    sta FlashScreen
    ;Loads stars on intro screen. (useless, stars are already on the screen at this point)
    jsr LoadStarSprites
    ;Reset index to cross sprite data.
    lda #$00
    sta CrossExplodeLengthIndex
    ;Increment to next routine. MoreCrosshairs
    inc TitleRoutine
    bne @complete ;Branch always.
@notComplete:
    ;Draw sprites that converge in center of screen.
    jsr UpdateCrossMissiles
@complete:
    ;Draw cross sprites in middle of the screen.
    jsr UpdateCrossExplode
@RTS:
    rts

MoreCrosshairs: ; 00:81D1
    ;Is it time to flash the screen white? If not, branch.
    lda FlashScreen
    beq @endIf_A
        ;Draw cross sprites in middle of the screen.
        jsr UpdateCrossExplode
        ;Flash screen white.
        jmp FlashIntroScreen
    @endIf_A:
    ;Increment to next routine. ChangeIntroNameTable
    inc TitleRoutine
    ;These values are written into memory, but they are not used later in the title routine.
    ;This is the remnants of some abandoned code.
    lda #$60
    sta ObjY
    lda #$7C
    sta ObjX
    lda ObjAnimResetIndex
    sta ObjAnimIndex
    rts

ChangeIntroNameTable: ; 00:822E
    ;Change to name table 1.
    lda PPUCTRL_ZP
    ora #$01
    sta PPUCTRL_ZP
    ;Next routine to run is MessageFadeIn.
    inc TitleRoutine
    ;Set Timer3 for 80 frames(1.33 seconds).
    lda #$08
    jsr SetTimer3
    ;Index to FadeInPalData.
    lda #$06
    sta FadeDataIndex
    rts

MessageFadeIn: ; 00:8243
    ;Check if delay timer has expired.  If not, branch to exit.
    lda Timer3
    bne @RTS
    ;Perform next step of fade every 8th frame.
    lda FrameCount
    and #$07
    bne @RTS
    ;Has end of fade in palette data been reached? If not, branch.
    lda FadeDataIndex
    cmp #$0B
    bne @endIf_A
        ;Clear FadeDataIndex.
        lda #$00
        sta FadeDataIndex
        ;Set Timer3 to 480 frames(8 seconds).
        lda #$30
        jsr SetTimer3
        ;Next routine is MessageFadeOut.
        inc TitleRoutine
        bne @RTS ;Branch always.
    @endIf_A:
    ;Fade message onto screen.
    jsr DoFadeOut
@RTS:
    rts

MessageFadeOut: ; 00:8263
    ;Check if delay timer has expired.  If not, branch to exit.
    lda Timer3
    bne @RTS
    ;Perform next step of fade every 8th frame.
    lda FrameCount
    and #$07
    bne @RTS
    ;Has end of fade out palette data been reached? If not, branch.
    lda FadeDataIndex
    cmp #$05
    bne @endIf_A
        ;Set index to start of fade in data.
        lda #$06
        sta FadeDataIndex
        ;Next routine is DelayIntroReplay.
        inc TitleRoutine
        bne @RTS ;Branch always.
    @endIf_A:
    ;Fade message off of screen.
    jsr DoFadeOut
@RTS:
    rts

DelayIntroReplay: ; 00:8283
    ;Increment to next routine. ClearSpareMem
    inc TitleRoutine
    ;Set Timer3 for a delay of 160 frames(2.6 seconds).
    lda #$10
    jsr SetTimer3
    rts

PrepIntroRestart: ; 00:82A3
    ;Check if delay timer has expired.  If not, branch to exit.
    lda Timer3
    bne @RTS
    
    sta IsSamus ;Clear IsSamus memory address.
    ;Clear RAM $0300 thru $031F.
    ldy #$1F
    @loop:
        sta ObjAction,y
        dey
        bpl @loop
    ;Change to name table 0.
    lda PPUCTRL_ZP
    and #$FC
    sta PPUCTRL_ZP
    ;Clear all index values from these addresses.
    iny ;Y=0.
    sty PalDataIndex
    sty ScreenFlashPalIndex
    sty IntroStarOffset
    sty FadeDataIndex
    sty Joy1Change
    sty Joy1Status
    sty Joy1Retrig
    ;Next routine sets up METROID fade in delay.
    ldy #$02
    sty TitleRoutine
    ;Check to see if intro music needs to be restarted. Branch if not.
    lda IntroMusicRestart
    bne @else_A
        ;Restart intro music.
        lda #$FF
        sta PreviousMusic
        ;Set restart of intro music after another two cycles of the title routines.
        lda #$02
        sta IntroMusicRestart
    @RTS:
        rts

    @else_A:
        ;One title routine cycle complete. Decrement intro music restart counter.
        dec IntroMusicRestart
        rts

TitleScreenOff: ; 00:82ED
    ;This routine should not be reached.
    ;Turn screen off.
    jsr ScreenOff
    ;Next routine is TitleRoutineReturn.
    inc TitleRoutine
    rts

TitleRoutineReturn13: ; 00:82F3
TitleRoutineReturn14:
    ;Last title routine function. Should not be reached.
    rts

;The following error message is diplayed if the player enters an incorrect password.
L8759: ; 00:8759
    .stringmap charmap, "ERROR TRY AGAIN"

;If the error message above is not being displayed on the password
;screen, the following fifteen blanks spaces are used to cover it up.
L8768: ; 00:8768
    .stringmap charmap, "               "

LoadSparkleData: ; 00:87AB
    ldx #$0A
    L87AD:
        lda InitSparkleDataTbl,x
        sta IntroSprs.0.y,x            ;Loads $6EA0 thru $6EAA with the table below.
        sta IntroSprs.1.y,x            ;Loads $6EB0 thru $6EBA with the table below.
        dex
        ;Loop until all values from table below are loaded.
        bpl L87AD
    ;$6EA0 thru $6EAA = #$3C, #$C6, #$01, #$18, #$00, #$00, #$00, #$00, #$20, #$00, #$00, initial.
    ;$6EB0 thru $6EBA = #$6B, #$C6, #$01, #$DC, #$00, #$00, #$00, #$00, #$20, #$00, #$00, initial.
    lda #$6B
    sta IntroSprs.1.y
    lda #$DC
    sta IntroSprs.1.x
    rts

;Used by above routine to load Metroid initial sparkle data into $6EA0
;thru $6EAA and $6EB0 thru $6EBA.

InitSparkleDataTbl: ; 00:87C4
    .byte $3C, $C6, $01, $18, $00, $00, $00, $00, $20, $00, $00

UpdateSparkleSprites: ; 00:87CF
    ;Performs calculations on top sparkle sprite.
    ldx #$00
    jsr DoTwoSparkleUpdates
    ;Performs calculations on bottom sparkle sprite.
    ldx #$10
    ; fallthrough
DoTwoSparkleUpdates: ; 00:87D6
    jsr SparkleUpdate               ;($87D9)Update sparkle sprite data.
    ; fallthrough
SparkleUpdate: ; 00:87D9
    ;If $6EA5 has not reached #$00, skip next routine.
    lda IntroSprs.0.nextDelay,x
    bne @endIf_A
        ;($881A)Update sparkle sprite screen position.
        jsr DoSparkleSpriteCoord
    @endIf_A:

    ;If sprite is already done, skip routine.
    lda IntroSprs.0.complete,x
    bne @RTS

    dec IntroSprs.0.nextDelay,x

    ;Updates sparkle sprite Y coord.
    lda IntroSprs.0.sparkleYChange,x
    clc
    adc IntroSprs.0.y,x
    sta IntroSprs.0.y,x

    ;Updates sparkle sprite X coord.
    lda IntroSprs.0.sparkleXChange,x
    clc
    adc IntroSprs.0.x,x
    sta IntroSprs.0.x,x

    ;Decrement IntroSprChangeDelay.
    dec IntroSprs.0.changeDelay,x
    ;If 0, time to change sprite graphic.
    bne @endIf_B
        ;The sparkle sprite graphic is-->
        ;changed back and forth between pattern table-->
        ;graphic $C6 and $C5. (BUG! Should be $C6 and $C7)
        lda IntroSprs.0.tileID,x
        eor #$C6~$C5
        sta IntroSprs.0.tileID,x
        ;IntroSprChangeDelay is reset to #$20.
        lda #$20
        sta IntroSprs.0.changeDelay,x
        ;Flips pattern at $C5 in pattern table-->
        ;horizontally when displayed.
        asl ; a = #OAMDATA_HFLIP
        eor IntroSprs.0.attrib,x
        sta IntroSprs.0.attrib,x
    @endIf_B:
    jmp WriteIntroSprite ;($887B)Transfer sprite info into sprite RAM.
@RTS:
    rts


DoSparkleSpriteCoord: ; 00:881A
    ;($C2C0)Y=0 when working with top sparkle sprite and y=2 when working with bottom sparkle sprite.
    txa
    jsr Adiv8
    tay
    ; loads either TopSparkleDataTbl or BottomSparkleDataTbl into $00 depending on-->
    ; which sparkle we're processing
    lda SparkleAddressTbl,y
    sta $00
    lda SparkleAddressTbl+1,y
    sta $01
    ;Loads index for finding sparkle data (x=$00 or $10).
    ldy IntroSprs.0.index,x
    lda ($00),y
    ;If data byte MSB is set, set $6EA9 to #$01 and move to next index for sparkle sprite data.
    bpl @endIf_A
        lda #$01
        sta IntroSprs.0.byteType,x
    @endIf_A:
    ;If value is equal to zero, sparkle sprite processing is complete.
    bne @endIf_B
        lda #$01
        sta IntroSprs.0.complete,x
    @endIf_B:
    sta IntroSprs.0.nextDelay,x
    iny
    ;Get x/y position byte.
    lda ($00),y
    ;decrement byteType
    dec IntroSprs.0.byteType,x
    ;If byteType was zero, branch.
    bmi @else_C
        ;This code is run when the MSB of the first byte is set.
        ;This allows the sprite to change X coord by more than 7.
        ;Ensures Y coord does not change.
        lda #$00
        sta IntroSprs.0.sparkleYChange,x
        ; second byte is used as sparkleXChange
        lda ($00),y
        bmi @endIf_C ; branch always
    @else_C:
        ;Parse sign-magnitude speeds
        ;Store value twice so X and Y coordinates can be extracted.
        pha
        pha
        ;Set IntroSpr0ByteType to #$00 after processing.
        lda #$00
        sta IntroSprs.0.byteType,x

        pla
        ;Get high nibble for y
        jsr Adiv16
        ;Check if nibble to be converted to twos complement.
        jsr @NibbleSubtract
        ;Store amount to move sprite in y direction.
        sta IntroSprs.0.sparkleYChange,x

        pla
        ;Get low nibble for x
        and #$0F
        ;Check if nibble to be converted to twos complement.
        jsr @NibbleSubtract
    @endIf_C:
    ;Store amount to move sprite in x direction.
    sta IntroSprs.0.sparkleXChange,x
    ;Add two to find index for next instruction.
    inc IntroSprs.0.index,x
    inc IntroSprs.0.index,x
    rts

@NibbleSubtract: ; 00:8871
    ; return nibble if sign bit of the nibble isn't set (if value is positive)
    cmp #$08
    bcc @RTS
    ; value is negative
    ; return negation of lower three bits of nibble
    and #$07
    jsr TwosComplement
@RTS:
    rts


;Load the four bytes for the intro sprites into sprite RAM.
WriteIntroSprite: ; 00:887B
    lda IntroSprs.0.y,x
    sec ;Subtract #$01 from first byte to get proper y coordinate.
    sbc #$01
    sta SpriteRAM.4.y,x

    lda IntroSprs.0.tileID,x
    sta SpriteRAM.4.tileID,x

    lda IntroSprs.0.attrib,x
    sta SpriteRAM.4.attrib,x

    lda IntroSprs.0.x,x
    sta SpriteRAM.4.x,x

    rts

InitCrossMissiles: ; 00:8897
    ;Set delay for second 4 sprites to 32 frames.
    lda #$20
    sta CrossMsl4to7SpawnDelay
    ;Prepare to loop 64 times.
    ldx #$3F

    @loop:
        ;Load data from tables below.
        lda InitCrossMissile0and4Tbl,x
        ;if #$FF, skip loading that byte and move to next item.
        cmp #$FF
        beq @endIf_A
            ;Store initial values for sprites 0 thru 3.
            sta IntroSprs.0.y,x
            ;Store initial values for sprites 4 thru 7.
            sta IntroSprs.4.y,x
        @endIf_A:
        dex
        bpl @loop                       ;Loop until all data is loaded.

    lda #$B8                        ;Special case for sprite 6 and 7.
    sta IntroSprs.6.y               ;
    sta IntroSprs.7.y               ;Change sprite 6 and 7 initial y position.
    lda #$16                        ;
    sta IntroSprs.6.speedY           ;Change sprite 6 and 7 y displacement. The combination-->
    sta IntroSprs.7.speedY           ;of these two changes the slope of the sprite movement.
    rts

;The following tables are loaded into RAM as initial sprite control values for the crosshair sprites.

InitCrossMissile0and4Tbl: ; 00:88BE
    .byte $20                       ;Initial starting y screen position.
    .byte $C5                       ;Sprite pattern table index.
    .byte $80                       ;Sprite control byte.
    .byte $00                       ;Initial starting x screen position.
    .byte $FF                       ;Not used.
    .byte $FF                       ;Not used.
    .byte $74                       ;Intro sprite x total movement distance.
    .byte $58                       ;Intro sprite y total movement distance.
    .byte $FF                       ;Not used.
    .byte $FF                       ;Not used.
    .byte $00                       ;Sprite task complete idicator.
    .byte $FF                       ;Not used.
    .byte $1D                       ;x displacement of sprite movement(run).
    .byte $0E                       ;y displacement of sprite movement(rise).
    .byte $01                       ;Change sprite x coord in positive direction.
    .byte $01                       ;Change sprite y coord in positive direction.

InitCrossMissile1and5Tbl: ; 00:88CE
    .byte $20                       ;Initial starting y screen position.
    .byte $C5                       ;Sprite pattern table index.
    .byte $C0                       ;Sprite control byte.
    .byte $F8                       ;Initial starting x screen position.
    .byte $FF                       ;Not used.
    .byte $FF                       ;Not used.
    .byte $7C                       ;Intro sprite x total movement distance.
    .byte $58                       ;Intro sprite y total movement distance.
    .byte $FF                       ;Not used.
    .byte $FF                       ;Not used.
    .byte $00                       ;Sprite task complete idicator.
    .byte $FF                       ;Not used.
    .byte $1F                       ;x displacement of sprite movement(run).
    .byte $0E                       ;y displacement of sprite movement(rise).
    .byte $80                       ;Change sprite x coord in negative direction.
    .byte $01                       ;Change sprite y coord in positive direction.

InitCrossMissile2and6Tbl: ; 00:88DE
    .byte $C8                       ;Initial starting y screen position.
    .byte $C5                       ;Sprite pattern table index.
    .byte $00                       ;Sprite control byte.
    .byte $00                       ;Initial starting x screen position.
    .byte $FF                       ;Not used.
    .byte $FF                       ;Not used.
    .byte $74                       ;Intro sprite x total movement distance.
    .byte $60                       ;Intro sprite y total movement distance.
    .byte $FF                       ;Not used.
    .byte $FF                       ;Not used.
    .byte $00                       ;Sprite task complete idicator.
    .byte $FF                       ;Not used.
    .byte $1D                       ;x displacement of sprite movement(run).
    .byte $1A                       ;y displacement of sprite movement(rise).
    .byte $01                       ;Change sprite x coord in positive direction.
    .byte $80                       ;Change sprite y coord in negative direction.

InitCrossMissile3and7Tbl: ; 00:88EE
    .byte $C8                       ;Initial starting y screen position.
    .byte $C5                       ;Sprite pattern table index.
    .byte $40                       ;Sprite control byte.
    .byte $F8                       ;Initial starting x screen position.
    .byte $FF                       ;Not used.
    .byte $FF                       ;Not used.
    .byte $7C                       ;Intro sprite x total movement distance.
    .byte $60                       ;Intro sprite y total movement distance.
    .byte $FF                       ;Not used.
    .byte $FF                       ;Not used.
    .byte $00                       ;Sprite task complete idicator.
    .byte $FF                       ;Not used.
    .byte $1F                       ;x displacement of sprite movement(run).
    .byte $1A                       ;y displacement of sprite movement(rise).
    .byte $80                       ;Change sprite x coord in negative direction.
    .byte $80                       ;Change sprite y coord in negative direction.

; this is for the two volleys of 4 missiles colliding in the title screen
UpdateCrossMissiles: ; 00:88FE
    ;Has CrossMsl0to3SlowDelay already hit 0? If so, branch.
    lda CrossMsl0to3SlowDelay
    beq L8936

    dec CrossMsl0to3SlowDelay
    ;Is CrossMsl0to3SlowDelay now equal to 0? if not, branch.
    bne L8936

    ;Multiply the rise and run of the 8 sprites by 2.-->
    ;This doubles their speed.
    asl IntroSprs.0.speedX
    asl IntroSprs.0.speedY
    asl IntroSprs.1.speedX
    asl IntroSprs.1.speedY
    asl IntroSprs.2.speedX
    asl IntroSprs.2.speedY
    asl IntroSprs.3.speedX
    asl IntroSprs.3.speedY
    asl IntroSprs.4.speedX
    asl IntroSprs.4.speedY
    asl IntroSprs.5.speedX
    asl IntroSprs.5.speedY
    asl IntroSprs.6.speedX
    asl IntroSprs.6.speedY
    asl IntroSprs.7.speedX
    asl IntroSprs.7.speedY

L8936: ; 00:8936
    ;Move sprite 0.
    ldx #$00
    jsr UpdateCrossMissile
    ;Move sprite 1.
    ldx #$10
    jsr UpdateCrossMissile
    ;Move sprite 2.
    ldx #$20
    jsr UpdateCrossMissile
    ;Move sprite 3.
    ldx #$30
    ;Check to see if the delay to start movement of the second-->
    ;4 sprites has ended.
    lda CrossMsl4to7SpawnDelay
    beq L894F
        ;If not, return after moving sprite 3.
        dec CrossMsl4to7SpawnDelay
        bne UpdateCrossMissile
    L894F:
    ;If so, start moving those sprites.
    jsr UpdateCrossMissile
    ;Move sprite 4.
    ldx #$40
    jsr UpdateCrossMissile
    ;Move sprite 5.
    ldx #$50
    jsr UpdateCrossMissile
    ;Move sprite 6.
    ldx #$60
    jsr UpdateCrossMissile
    ;Move sprite 7.
    ldx #$70
    ; fallthrough
UpdateCrossMissile: ; 00:8963
    ;If the current sprite has finished its movements, exit this routine.
    lda IntroSprs.0.complete,x
    bne @RTS

    ;Calculate new sprite position.
    jsr UpdateCrossMissileCoords
    ;If sprite not at final position, branch to move next frame.
    bcs @endIf_A
        ;Sprite movement complete.
        lda #$01
        sta IntroSprs.0.complete,x
    @endIf_A:
    ;($887B)Write sprite data to sprite RAM.
    jmp WriteIntroSprite

@RTS:
    rts

UpdateCrossExplode: ; 00:8976
    ;If not ready to draw crosshairs, branch to exit.
    lda IsUpdatingCrossExplode
    beq RTS_89A9

    ;Check to see if before last index in table.
    ldy CrossExplodeLengthIndex
    cpy #$04
    ;If so, branch to draw cross sprites.
    bcc L8986
        ;If beyond last index, branch to exit.
        bne RTS_89A9
        ;If at last index, clear indicator to draw cross sprites.
        lda #$00
        sta IsUpdatingCrossExplode
    L8986:
    lda CrossExplodeLengthTbl,y
    sta $00
    ldy #$00 ;Reset index into CrossExplodeDataTbl

    L898D:
        ;Get offset into sprite RAM to load sprite.
        ldx CrossExplodeDataTbl,y
        iny
        L8991:
            ;Store sprite data byte in sprite RAM.
            lda CrossExplodeDataTbl,y
            sta SpriteRAM,x
            inx ;Move to next sprite RAM address.
            iny ;Move to next data byte in table.
            ;Is new sprite position reached?-->
            txa
            and #$03
            ;if not, branch to load next sprite data byte.
            bne L8991
        ;Has all the sprites been loaded for cross graphic?-->
        cpy $00
        ;If not, branch to load next set of sprite data.
        bne L898D

    ;Increment index into CrossExplodeLengthTbl every other frame.
    ;This updates the cross sprites every two frames.
    lda FrameCount
    lsr
    bcc RTS_89A9
    inc CrossExplodeLengthIndex
RTS_89A9:
    rts

;The following table tells the routine above how many data bytes to load from CrossExplodeDataTbl.
;The more data that is loaded, the bigger the cross that is drawn on the screen.
;The table below starts the cross out small, it then grows bigger and gets small again.

CrossExplodeLengthTbl: ; 00:89AA
    .byte CrossExplodeDataTbl@end_0 - CrossExplodeDataTbl
    .byte CrossExplodeDataTbl@end_1 - CrossExplodeDataTbl
    .byte CrossExplodeDataTbl@end_2 - CrossExplodeDataTbl
    .byte CrossExplodeDataTbl@end_1 - CrossExplodeDataTbl
    .byte CrossExplodeDataTbl@end_0 - CrossExplodeDataTbl

;The following table is used to find the data for the sparkle routine in the table below:

SparkleAddressTbl: ; 00:89AF
    .word TopSparkleDataTbl         ;($89B3)Table for top sparkle data.
    .word BottomSparkleDataTbl      ;($89E9)Table for bottom sparkle data.

;The following two tables are the data tables for controlling the movement of the sparkle sprites
;in the title routine.  Here's how the data in the tables work: The first byte is a counter byte.
;It is loaded into a memory address and decremented every frame. Whilt that value is not 0, the
;second byte is used to change the sprite's x and y coordinates in the screen.  The upper 4 bits
;of the second byte are amount to change the y coordinates every frame.  If bit 7 is set, the
;y coordinates of the sprite are reduced every frame by the amount stored in bits 4,5 and 6. The
;lower 4 bits of the second byte are used to change the x coordinates of the sprite in the same
;manner.  If bit 3 is set, the x coordinates of the sprite are reduced every frame by the amount
;stored in bits 0, 1 and 2.
;Special case: If MSB of the first byte is set(in the case of this data, the first byte is #$FF),
;The counter byte is set to only 1 frame and the second byte contains only x coordinates to move
;the sprite.  The y coordinates do not change.  This allows 8 bytes to move the x coordinate
;instead of only 4.  This allows the sprite to "jump" across the edges of the letters. If the MSB
;of the second byte is set, the x coordinate of the sprite is decreased by the amount stored in
;the other seven bytes.

TopSparkleDataTbl: ; 00:89B3
    SignMagSpeed $01,  0,  0
    SignMagSpeed $01,  0,  0
    SignMagSpeed $01,  1,  0
    SignMagSpeed $06,  0,  0
    SignMagSpeed $07,  1,  0
    SignMagSpeed $10,  1,  0
    SignMagSpeed $03,  1,  0
    SignMagSpeed $01,  0,  0
    SignMagSpeed $01,  1,  0
    SignMagSpeed $01,  0,  0
    SignMagSpeed $01,  1,  0
    SignMagSpeed $01,  0,  0
    SignMagSpeed $09,  1,  0
    SignMagSpeed $04,  0,  0
    SignMagSpeed $27,  1,  0
    SignMagSpeed $01,  0,  0
    SignMagSpeed $01,  0,  0
    SignMagSpeed $06,  1,  0
    SignMagSpeed $01,  0,  0
    SignMagSpeed $15,  1,  0
    SignMagSpeed $06,  0,  0
    SignMagSpeed $01,  1,  0
    SignMagSpeed $08,  1,  0
    SignMagSpeed $0E,  2,  0
    SignMagSpeed $02,  3,  0
    SignMagSpeed $06,  4,  0
    SignMagSpeed $00,  0,  0

BottomSparkleDataTbl: ; 00:89E9
    SignMagSpeed $01,  0,  0
    SignMagSpeed $08, -1,  0
    SignMagSpeed $01, -1, -1
    SignMagSpeed $01, -1,  0
    SignMagSpeed $01, -1, -1
    SignMagSpeed $01, -1,  0
    SignMagSpeed $01, -1, -1
    SignMagSpeed $01, -1,  0
    SignMagSpeed $01, -1, -1
    SignMagSpeed $01, -1,  0
    SignMagSpeed $01, -1, -1
    SignMagSpeed $01, -1,  0
    SignMagSpeed $01, -1, -1
    SignMagSpeed $01, -1,  0
    SignMagSpeed $01, -1, -1
    SignMagSpeed $01, -1,  0
    SignMagSpeed $01, -1, -1
    SignMagSpeed $01, -1,  0
    SignMagSpeed $01, -1, -1
    SignMagSpeed $01, -1,  0
    SignMagSpeed $01, -1, -1
    SignMagSpeed $01, -1,  1
    SignMagSpeed $01,  1,  1
    SignMagSpeed $01,  0,  1
    SignMagSpeed $01,  1,  1
    SignMagSpeed $01,  0,  1
    SignMagSpeed $01,  1,  1
    SignMagSpeed $01,  0,  1
    SignMagSpeed $01,  1,  1
    SignMagSpeed $01,  0,  1
    SignMagSpeed $01,  1,  1
    SignMagSpeed $01,  0,  1
    SignMagSpeed $01,  1,  1
    SignMagSpeed $01,  0,  1
    SignMagSpeed $01,  1,  1
    SignMagSpeed $01,  0,  1
    SignMagSpeed $02,  1,  1
    SignMagSpeed $01,  0,  1
    SignMagSpeed $01,  1,  1
    SignMagSpeed $10, -1,  0
    .byte $FF, -17 ;MSB of first byte set. move sprite x pos -17 pixels.
    SignMagSpeed $11, -1,  0
    .byte $FF, -13 ;MSB of first byte set. move sprite x pos -13 pixels.
    SignMagSpeed $1F, -1,  0
    .byte $FF, -20 ;MSB of first byte set. move sprite x pos -20 pixels.
    SignMagSpeed $0F, -1,  0
    .byte $FF, -19 ;MSB of first byte set. move sprite x pos -19 pixels.
    SignMagSpeed $16, -1,  0
    SignMagSpeed $00,  0,  0

;The following table is used by the UpdateCrossExplode routine to draw the sprites on the screen that
;make up the cross that appears during the Crosshairs routine.  The single byte is the index into
;the sprite RAM where the sprite data is to be written.  The 4 bytes that follow it are the actual
;sprite data bytes.

CrossExplodeDataTbl: ; 00:8A4B
    .byte $10                       ;Load following sprite data into Sprite04RAM.
    .byte $5A, $C0, $00, $79        ;Sprite data.
    @end_0:
    .byte $14                       ;Load following sprite data into Sprite05RAM.
    .byte $52, $C8, $00, $79        ;Sprite data.
    .byte $18                       ;Load following sprite data into Sprite06RAM.
    .byte $5A, $C2, $40, $71        ;Sprite data.
    .byte $1C                       ;Load following sprite data into Sprite07RAM.
    .byte $5A, $C2, $00, $81        ;Sprite data.
    .byte $20                       ;Load following sprite data into Sprite08RAM.
    .byte $62, $C8, $80, $79        ;Sprite data.
    @end_1:
    .byte $14                       ;Load following sprite data into Sprite05RAM.
    .byte $52, $C9, $00, $79        ;Sprite data.
    .byte $18                       ;Load following sprite data into Sprite06RAM.
    .byte $5A, $C1, $00, $71        ;Sprite data.
    .byte $1C                       ;Load following sprite data into Sprite07RAM.
    .byte $5A, $C1, $00, $81        ;Sprite data.
    .byte $20                       ;Load following sprite data into Sprite08RAM.
    .byte $62, $C9, $00, $79        ;Sprite data.
    .byte $24                       ;Load following sprite data into Sprite09RAM.
    .byte $4A, $C8, $00, $79        ;Sprite data.
    .byte $28                       ;Load following sprite data into Sprite0ARAM.
    .byte $5A, $C2, $40, $69        ;Sprite data.
    .byte $2C                       ;Load following sprite data into Sprite0BRAM.
    .byte $5A, $C2, $00, $89        ;Sprite data.
    .byte $30                       ;Load following sprite data into Sprite0CRAM.
    .byte $6A, $C8, $80, $79        ;Sprite data.
    @end_2:

LoadPalData: ; 00:8A8C
    ;Chooses which set of palette data to load from the table below.
    ldy PalDataIndex
    lda @PalSelectTbl,y
    cmp #$FF
    beq @RTS
    ;Write palette data.
    jsr WriteTitlePal
    inc PalDataIndex
@RTS:
    rts

;The table below is used by above routine to pick the proper palette.
@PalSelectTbl: ; 00:8A9A
    .byte $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0C, $FF


FlashIntroScreen: ; 00:8AA7
    ldy ScreenFlashPalIndex         ;Load index into table below.
    lda @ScreenFlashPalTbl,y         ;Load palette data byte.
    cmp #$FF                        ;Has the end of the table been reached?-->
    bne @else_A                     ;If not, branch.
        ;Clear screen flash palette index and reset screen flash control address.
        lda #$00
        sta ScreenFlashPalIndex
        sta FlashScreen
        beq @RTS ;Branch always.
    @else_A:
        ;Write palette data.
        jsr WriteTitlePal
        ;Increment index into table below.
        inc ScreenFlashPalIndex
@RTS:
    rts

@ScreenFlashPalTbl: ; 00:8ABD
.if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_PAL" || BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP"
    .byte $11, $01, $11, $01, $11, $11, $01, $11, $01, $FF
.elif BUILDTARGET == "NES_CNSUS"
    .byte $11, $11, $11, $01, $01, $01, $01, $01, $01, $FF
.endif


;The following table is a list of pointers into the table below. It contains
;the palette data for the twinkling stars in the intro scene.  The palette data
;is changed every 16 frames by the above routine.

IntroStarPntr: ; 00:8AFF
    .word IntroStarPal0, IntroStarPal1, IntroStarPal2, IntroStarPal3
    .word IntroStarPal4, IntroStarPal5, IntroStarPal6, IntroStarPal7

;The following table contains the platette data that is changed in the intro
;scene to give the stars a twinkling effect. All entries in the table are
;non-repeating.

; 00:8B0F
IntroStarPal0:  PPUString $3F19, $0F, $02, $13, $0F, $00, $34, $0F
    .byte $00
IntroStarPal1:  PPUString $3F19, $06, $01, $23, $0F, $0F, $34, $09
    .byte $00
IntroStarPal2:  PPUString $3F19, $16, $0F, $23, $0F, $0F, $24, $1A
    .byte $00
IntroStarPal3:  PPUString $3F19, $17, $0F, $13, $0F, $00, $04, $28
    .byte $00
IntroStarPal4:  PPUString $3F19, $17, $01, $14, $0F, $10, $0F, $28
    .byte $00
IntroStarPal5:  PPUString $3F19, $16, $02, $0F, $0F, $30, $0F, $1A
    .byte $00
IntroStarPal6:  PPUString $3F19, $06, $12, $0F, $0F, $30, $04, $09
    .byte $00
IntroStarPal7:  PPUString $3F19, $0F, $12, $14, $0F, $10, $24, $0F
    .byte $00

;----------------------------------------------------------------------------------------------------

DoFadeOut: ; 00:8B5F
    ;Load palette data from table below.
    ldy FadeDataIndex
    lda FadeOutPalData,y
    ;If palette data = #$FF, exit.
    cmp #$FF
    beq @RTS
        ;Store new palette data.
        jsr WriteTitlePal
        inc FadeDataIndex
    @RTS:
    rts

FadeOutPalData: ; 00:8B6D
    .byte $0D, $0E, $0F, $10, $01, $FF

FadeInPalData: ; 00:8B73
    .byte $01, $10, $0F, $0E, $0D, $FF

;----------------------------------------[ Password routines ]---------------------------------------

ProcessUniqueItems: ; 00:8B79
    ;Store NumberOfUniqueItems at $03.
    lda NumberOfUniqueItems
    sta Temp03_NumberOfUniqueItems
    ;Set $04 to #$00.
    ldy #$00
    sty Temp04_UniqueItemIndex
    @loop:
        ;Use $04 at index into unique item list.
        ldy Temp04_UniqueItemIndex
        ;Load the two bytes representing the aquired Unique item and store them in $00 and $01.
        iny
        lda UniqueItemHistory-1,y
        sta Temp00_ItemData
        iny
        lda UniqueItemHistory-1,y
        sta Temp00_ItemData+1.b
        ;Increment $04 by two (load unique item complete).
        sty Temp04_UniqueItemIndex
        ;Find unique item.
        jsr UniqueItemSearch
        ;If all unique items processed, return, else branch to process next unique item.
        ldy Temp04_UniqueItemIndex
        cpy Temp03_NumberOfUniqueItems
        bcc @loop
    rts

UniqueItemSearch: ; 00:8B9C
    ldx #$00
    L8B9E:
        ; y = x*2
        txa
        asl
        tay
        ;Load unique item reference starting at $9029(2 bytes).
        lda ItemData,y
        cmp Temp00_ItemData
        bne L8BAF
            ;Get next byte of unique item.
            lda ItemData+1,y
            cmp Temp00_ItemData+1.b
            ;If unique item found, branch to UniqueItemFound.
            beq UniqueItemFound
        L8BAF:
        ;If we've gone through all items, return, else branch to find next unique item.
        ;(BUG! This checks one item too many and goes oob of the ItemData table)
        inx
        cpx #(ItemData@end - ItemData) / 2 + 1.b
        bcc L8B9E
    rts

;The following routine sets the item bits for aquired items in addresses $6988 thru $698E.-->
;Items 0 thru 7 masked in $6988, 8 thru 15 in $6989, etc.
UniqueItemFound: ; 00:8BB5
    ;Shifts 5 MSBs to LSBs of item # and saves results in $05.
    txa
    jsr Adiv8
    sta Temp05_PasswordByteIndex
    ;Restores 5 MSBs of item # and drops 3 LSBs; saves in $02.
    jsr Amul8
    sta Temp02_ItemDataIndex5MSB
    ;Remove 5 MSBs and stores 3 LSBs in $06.
    txa
    sec
    sbc Temp02_ItemDataIndex5MSB
    sta Temp06_PasswordBitIndex
    ;Masks each unique item in the proper item address (addresses $6988 thru $698E).
    ldx Temp05_PasswordByteIndex
    lda PasswordByte,x
    ldy Temp06_PasswordBitIndex
    ora GenericBitmaskTbl,y
    sta PasswordByte,x
    rts


LoadUniqueItems: ; 00:8BD4
    lda #$00
    sta NumberOfUniqueItems
    ;$05 offset of password byte currently processing(0 thru 7).
    sta Temp05_PasswordByteIndex
    ;$06 bit of password byte currently processing(0 thru 7).
    sta Temp06_PasswordBitIndex
    ;Maximum number of unique items(59 or #$3B).
    lda #(ItemData@end - ItemData) / 2.b
    sta Temp07_ItemDataIndexMax
    ;$08 stores contents of password byte currently processing.
    ldy Temp05_PasswordByteIndex
    lda PasswordByte,y
    sta Temp08_PasswordByte
    ;Stores number of unique items processed(#$0 thru #$3B).
    ldx #$00
    stx Temp09_ItemDataIndex
    ;If start of new byte, branch. (this is always the case)
    ldx Temp06_PasswordBitIndex
    beq @processItemBit

    ;This code does not appear to ever be executed.
    ldx #$01
    stx $02
    clc
    @loop_unused:
        ror
        sta $08
        ldx $02
        cpx $06
        beq @processItemBit
        inc $02
        jmp @loop_unused

@processItemByte: ; 00:8C03
    ;Locates next password byte to process and loads it into $08.
    ldy Temp05_PasswordByteIndex
    lda PasswordByte,y
    sta Temp08_PasswordByte

@processItemBit: ; 00:8C0A
        ;Rotates next bit to be processed to the carry flag.
        lda Temp08_PasswordByte
        ror
        sta Temp08_PasswordByte
        ;If Samus has this item, store item in unique item history.
        bcc @endIf_A
            jsr SamusHasItem
        @endIf_A:
        ;If last bit of item byte has been checked, move to next byte.
        ldy Temp06_PasswordBitIndex
        cpy #$07
        bcs @moveToNextByte
        ; move to next bit
        inc Temp06_PasswordBitIndex
        ;If all 59 unique items have been searched through, exit.
        inc Temp09_ItemDataIndex
        ldx Temp09_ItemDataIndex
        cpx Temp07_ItemDataIndexMax
        bcs @RTS
        ;Repeat routine for next item bit.
        jmp @processItemBit

@moveToNextByte:
    ; move to bit 0 of next byte
    ldy #$00
    sty Temp06_PasswordBitIndex
    inc Temp05_PasswordByteIndex
    ;If all 59 unique items have been searched through, exit.
    inc Temp09_ItemDataIndex
    ldx Temp09_ItemDataIndex
    cpx Temp07_ItemDataIndexMax
    bcs @RTS
    ;Process next item byte.
    jmp @processItemByte

@RTS:
    rts

SamusHasItem: ; 00:8C39
    ;Reconstitute ItemDataIndex from $05 and $06
    lda Temp05_PasswordByteIndex
    jsr Amul8
    clc
    adc Temp06_PasswordBitIndex
    ;* 2. Each item is two bytes in length.
    asl
    tay
    ;$00 and $01 store the two bytes of the unique item to process.
    lda ItemData+1,y
    sta Temp00_ItemData+1.b
    lda ItemData,y
    sta Temp00_ItemData
    ;Store the two bytes of the unique item in RAM in the unique item history.
    ldy NumberOfUniqueItems
    sta UniqueItemHistory,y
    lda $01
    iny
    sta UniqueItemHistory,y
    iny
    ;Keeps a running total of unique items.
    sty NumberOfUniqueItems
    rts

CheckPassword: ; 00:8C5E
    jsr ConsolidatePassword         ;($8F60)Convert password characters to password bytes.
    jsr ValidatePassword            ;($8DDE)Verify password is correct.
    ;Branch if incorrect password.
    bcs L8C69
        jsr LoadPasswordData
        jmp InitializeGame              ;($92D4)Preliminary housekeeping before game starts.
    L8C69:
    ;Set IncorrectPassword SFX flag.
    lda #sfxMulti_IncorrectPassword 
    jsr SFX_SetMultiSFXFlag
    ;Set Timer3 time for 120 frames (2 seconds).
    lda #$0C
    jsr SetTimer3
    ;Run EnterPassword routine.
    lda #_id_EnterPassword.b
    sta TitleRoutine
    rts

CalculatePassword: ; 00:8C7A
    lda #$00
    ldy #$0F
    ;Clears the 16 first password bytes (and also the 16 first password characters, for some reason)
    @loop_A:
        sta PasswordByte,y
        sta PasswordChar,y
        dey
        bpl @loop_A

    jsr ProcessUniqueItems          ;($8B79)Determine what items Samus has collected.
    ;Branch if mother brain has not been defeated
    lda PasswordByte+(((ItemData@MotherBrain-ItemData)/2)/8)
    and #1<<(((ItemData@MotherBrain-ItemData)/2)&7).b
    beq @endIf_A
        ;Mother brain was defeated
        ;Restore mother brain, zebetites and all missile doors in Tourian as punishment for-->
        ;dying in the escape.
        ;Only reset in the password.  Continuing without resetting will not restore those items.
        lda #$00
        sta PasswordByte+$07
        lda PasswordByte+$06
        and #$03
        sta PasswordByte+$06
    @endIf_A:

    ;Store InArea in bits 0 thru 5 in address $6990.
    lda InArea
    and #$3F
    ;Sets MSB of $6990 is Samus is suitless.
    ldy JustInBailey
    beq @endIf_suitless
        ora #$80
    @endIf_suitless:
    sta PasswordByte+$08

    ;SamusGear stored in $6991.
    lda SamusGear
    sta PasswordByte+$09

    ;MissileCount stored in $6992.
    lda MissileCount
    sta PasswordByte+$0A

    lda #$00
    sta $00
    ;Set bit 7 of $00 if Kraid statue is up.
    lda KraidStatueStatus
    and #$80
    beq @endIf_statueBit7
        lda $00
        ora #$80
        sta $00
    @endIf_statueBit7:
    ;Set bit 6 of $00 if Kraid is defeated.
    lda KraidStatueStatus
    and #$01
    beq @endIf_statueBit6
        lda $00
        ora #$40
        sta $00
    @endIf_statueBit6:
    ;Set bit 5 of $00 if Ridley statue is up.
    lda RidleyStatueStatus
    and #$80
    beq @endIf_statueBit5
        lda $00
        ora #$20
        sta $00
    @endIf_statueBit5:
    ;Set bit 4 of $00 if Ridley is defeated.
    lda RidleyStatueStatus
    and #$02
    beq @endIf_statueBit4
        lda $00
        ora #$10
        sta $00
    @endIf_statueBit4:
    ;Stores statue statuses in 4 MSB at $6997.
    lda $00
    sta PasswordByte+$0F

    ;Store SamusAge in $6993, SamusAge+1 in $6994, SamusAge+2 in $6995 and SamusAge+3 in $6996.
    ldy #$03
    @loop_SamusAge:
        lda SamusAge,y
        sta PasswordByte+$0B,y
        dey
        bpl @loop_SamusAge

    ;Store the value of $2E at $6998 when any of the 4 LSB are set.
    ;(Does not allow RandomNumber1 to be a multiple of 16).
    @loop_random:
        jsr RandomNumbers
        and #$0F
        beq @loop_random
    sta PasswordByte+$10

    jsr PasswordChecksumAndScramble ;($8E17)Calculate checksum and scramble password.
    jmp LoadPasswordChar            ;($8E6C)Calculate password characters.

LoadPasswordData: ; 00:8D12
    lda NARPASSWORD
    pha
    jsr InitializeStats
    pla
    sta NARPASSWORD

    ;If invincible Samus active, skip further password processing.
    bne RTS_8D3C
    
    ;Set flag to start from password.
    lda #$01
    sta StartingFromPassword
    
    jsr LoadUniqueItems             ;($8BD4)Load unique items from password.
    jsr LoadTanksAndMissiles        ;($8D3D)Calculate number of missiles from password.

    ;If MSB in PasswordByte08 is set, Samus is not wearing her suit.
    ldy #$00
    lda PasswordByte+$08
    and #$80
    beq L8D27
        iny
    L8D27:
    sty JustInBailey

    ;Extract first 5 bits from PasswordByte08 and use it to determine starting area.
    lda PasswordByte+$08
    and #$0F ; so existing passwords work correctly
    cmp #$05
    bcc +
        ;so certain passwords like ENGAGE RIDLEY MOTHER FUCKER won't crash the game
        lda #$00
    +
    sta SaveArea
    
    ;Load Samus' age.
    ldy #$03
    L8D33:
        ;Loop to load all 4 age bytes.
        lda PasswordByte+$0B,y
        sta SamusAge,y
        dey
        bpl L8D33
RTS_8D3C:
    rts

LoadTanksAndMissiles: ; 00:8D3D
    ;Loads Samus gear from password.
    lda PasswordByte+$09
    sta SamusGear
    ;Loads current number of missiles from password.
    lda PasswordByte+$0A
    sta MissileCount

    ;initialize temp vars for kraid and ridley statues's state
    lda #$00
    sta Temp00_KraidStatueStatus
    sta Temp02_RidleyStatueStatus
    ;If MSB is set, Kraid statue is up.
    lda PasswordByte+$0F
    and #$80
    beq @endIf_kraidRaised
        ;Kraid statue is up, set MSB in $00.
        lda Temp00_KraidStatueStatus
        ora #$80
        sta Temp00_KraidStatueStatus
    @endIf_kraidRaised:
    ;If bit 6 is set, Kraid is defeated.
    lda PasswordByte+$0F
    and #$40
    beq @endIf_kraidKilled
        ;Kraid is defeated, set LSB in $00.
        lda Temp00_KraidStatueStatus
        ora #$01
        sta Temp00_KraidStatueStatus
    @endIf_kraidKilled:
    ;Store Kraid status.
    lda Temp00_KraidStatueStatus
    sta KraidStatueStatus
    ;If bit 5 is set, Ridley statue is up.
    lda PasswordByte+$0F
    and #$20
    beq @endIf_ridleyRaised
        ;Ridley statue is up, set MSB in $02.
        lda Temp02_RidleyStatueStatus
        ora #$80
        sta Temp02_RidleyStatueStatus
    @endIf_ridleyRaised:
    ;If bit 4 is set, Ridley is defeated.
    lda PasswordByte+$0F
    and #$10
    beq @endIf_ridleyKilled
        ;Ridley is defeated, set bit 1 of $02.
        lda Temp02_RidleyStatueStatus
        ora #$02
        sta Temp02_RidleyStatueStatus
    @endIf_ridleyKilled:
    ;Store Ridley status.
    lda Temp02_RidleyStatueStatus
    sta RidleyStatueStatus

    ;initialize temp vars for energy tank count and missile tank count
    lda #$00
    sta Temp00_EnergyTankCount
    sta Temp02_MissileTankCount
    ldy #$00
    @loop_tanks:
        ;Load second byte of item
        lda UniqueItemHistory+1,y
        ;Compare the 6 MSBs to #$20. If it matches, an energy tank has been found.
        and #$FC
        cmp #>ui_ENERGYTANK.b
        bne @endIf_etank
            ;Increment number of energy tanks found.
            inc Temp00_EnergyTankCount
            jmp @IncrementToNextItem
        @endIf_etank:
        ;Compare the 6 MSBs to #$24. If it matches, missiles have been found.
        cmp #>ui_MISSILES.b
        bne @IncrementToNextItem
            ;Increment number of missiles found.
            inc Temp02_MissileTankCount
    @IncrementToNextItem: ; 00:8DA9
        ;Increment twice. Each item is 2 bytes.
        ;7 extra item slots in unique item history.
        ;Loop until all unique item history checked.
        iny
        iny
        cpy #$84
        bcc @loop_tanks
    ;Store the number of energy tanks found in Health and MaxHealth.
    lda Temp00_EnergyTankCount
    jsr Amul16
    ora #$09
    sta Health+1
    sta MaxHealth+1
    lda #$99
    sta Health
    sta MaxHealth
    lda #$00
    ;Branch if no missile tanks found.
    ldy Temp02_MissileTankCount
    beq @endIf_B
        clc
        ;For every missile tank found, this loop adds 5 missiles to MaxMissiles.
        @loop_mul5:
            adc #$05
            dey
            bne @loop_mul5
    @endIf_B:
    ;75 missiles are added to MaxMissiles if Kraid has been defeated
    ldy KraidStatueStatus
    beq @endIf_C
        adc #$4B
        bcs @capMaxMissiles
    @endIf_C:
    ;another 75 missiles are added if the ridley has been defeated.
    ldy RidleyStatueStatus
    beq @endIf_D
        adc #$4B
        bcc @endIf_D
    @capMaxMissiles:
        ;If number of missiles exceeds 255, it stays at 255.
        lda #$FF
@endIf_D:
    sta MaxMissiles
    rts

ValidatePassword: ; 00:8DDE
    ;If invincible Samus already active, branch.
    lda NARPASSWORD
    bne @passwordIsNotNARPASSWORD

    ;Check if NARPASSWORD was entered at the password screen
    ldy #$0F
    @loop_NARPASSWORD:
        lda PasswordChar,y
        cmp NARPASSWORDTbl,y
        bne @passwordIsNotNARPASSWORD
        dey
        bpl @loop_NARPASSWORD

    ;NARPASSWORD was entered, activate invincible Samus
    lda #$01
    sta NARPASSWORD
    bne @validPassword ; branch always

@passwordIsNotNARPASSWORD:
    ;NARPASSWORD was not entered, continue to process password
    jsr UnscramblePassword          ;($8E4E)Unscramble password.
    jsr PasswordChecksum            ;($8E21)Calculate password checksum.
    cmp PasswordByte+$11            ;Verify proper checksum.
    beq @validPassword
    ;If password is invalid, sets carry flag.
    sec
    bcs @RTS ; branch always
@validPassword:
    ;If password is valid, clears carry flag.
    clc
@RTS:
    rts

;The table below is used by the code above. It checks to see if NARPASSWORD has been entered.
;NOTE: any characters after the 16th character will be ignored if the first 16 characters
;match the values below.

NARPASSWORDTbl: ; 00:8E07
    .stringmap charmap, "NARPASSWORD00000"

PasswordChecksumAndScramble: ; 00:8E17
    ;Store the combined added value of addresses $6988 thu $6998 in $6999.
    jsr PasswordChecksum
    sta PasswordByte+$11
    ;Scramble password.
    jsr PasswordScramble
    rts

;Add the values at addresses $6988 thru $6998 together.
PasswordChecksum: ; 00:8E21
    ldy #$10
    lda #$00
    @loop:
        clc
        adc PasswordByte,y
        dey
        bpl @loop
    rts

PasswordScramble: ; 00:8E2D
    lda PasswordByte+$10
    sta Temp02_ScrambleCount
    @loop_A:
        ;Store contents of $6988 in $00 for further processing after rotation.
        lda PasswordByte
        sta Temp00_PasswordByte
        ldx #$00
        ldy #$0F
        @loop_B:
            ;Rotate right, including carry, all values in addresses $6988 thru $6997.
            ror PasswordByte,x
            inx
            dey
            bpl @loop_B
        ;Rotate right $6988 to ensure the LSB from address $6997 is rotated to the MSB of $6988.
        ror Temp00_PasswordByte
        lda Temp00_PasswordByte
        sta PasswordByte
        ;Continue rotating until $02 = 0.
        dec Temp02_ScrambleCount
        bne @loop_A
    rts

UnscramblePassword: ; 00:8E4E
    ;Stores random number used to scramble the password.
    lda PasswordByte+$10
    sta Temp02_ScrambleCount
    @loop_A:
        ;Preserve MSB that may have been rolled from $6988.
        lda PasswordByte+$0F
        sta Temp00_PasswordByte
        ldx #$0F
        @loop_B:
            ;The following loop rolls left the first 16 bytes of the password one time.
            rol PasswordByte,x
            dex
            bpl @loop_B
        ;Rolls byte in $6997 to ensure MSB from $6988 is not lost.
        rol Temp00_PasswordByte
        lda Temp00_PasswordByte
        sta PasswordByte+$0F
        ;Loop repeats the number of times decided by the random-->
        ;number in $6998 to properly unscramble the password.
        dec Temp02_ScrambleCount
        bne @loop_A
    rts

;The following code takes the 18 password bytes and converts them into 24 characters
;to be displayed to the player as the password.  NOTE: the two MSBs will always be 0.

LoadPasswordChar: ; 00:8E6C
    .repeat 6 index I
        ;%XXXXXX-- %-------- %--------
        ldy #(I*3+0).b
        jsr SixUpperBits
        sta PasswordChar+I*4+0
        ;%------XX %XXXX---- %--------
        ldy #(I*3+0).b
        jsr TwoLowerAndFourUpper
        sta PasswordChar+I*4+1
        ;%-------- %----XXXX %XX------
        ldy #(I*3+1).b
        jsr FourLowerAndTwoUpper
        sta PasswordChar+I*4+2
        ;%-------- %-------- %--XXXXXX
        ldy #(I*3+2).b
        jsr SixLowerBits
        sta PasswordChar+I*4+3
    .endr
    rts

SixUpperBits: ; 00:8F2D
    ;Uses six upper bits to create a new byte.
    ;Bits are right shifted twice and two lower bits are discarded.
    lda PasswordByte,y
    lsr
    lsr
    rts

TwoLowerAndFourUpper: ; 00:8F33
    ;Saves two lower bits and stores them in bits 4 and 5.
    lda PasswordByte,y
    and #$03                        
    jsr Amul16
    sta $00
    ;Saves upper 4 bits and stores them bits 0, 1, 2 and 3.
    lda PasswordByte+1,y            
    jsr Adiv16
    ;Add two sets of bits together to make a byte where bits 6 and 7 = 0.
    ora $00
    rts

FourLowerAndTwoUpper: ; 00:8F46
    ;Keep lower 4 bits.
    ;Move lower 4 bits to bits 5, 4, 3 and 2.
    lda PasswordByte,y
    and #$0F
    asl
    asl
    sta $00
    ;Move upper two bits to bits 1 and 0.
    lda PasswordByte+1,y            
    rol
    rol
    rol
    and #$03
    ;Add two sets of bits together to make a byte where bits 6 and 7 = 0.
    ora $00
    rts

SixLowerBits: ; 00:8F5A
    ;Discard bits 6 and 7.
    lda PasswordByte,y
    and #$3F
    rts

;The following routine converts the 24 user entered password characters into the 18 password
;bytes used by the program to store Samus' stats and unique item history.

ConsolidatePassword: ; 00:8F60
    .repeat 6 index I
        ;%00XXXXXX %00XX---- %00------ %00------
        ldy #(I*4+0).b
        jsr SixLowerAndTwoUpper
        sta PasswordByte+I*3+0
        ;%00------ %00--XXXX %00XXXX-- %00------
        ldy #(I*4+1).b
        jsr FourLowerAndFiveThruTwo
        sta PasswordByte+I*3+1
        ;%00------ %00------ %00----XX %00XXXXXX
        ldy #(I*4+2).b
        jsr TwoLowerAndSixLower
        sta PasswordByte+I*3+2
    .endr
    rts

SixLowerAndTwoUpper: ; 00:8FF1
    ;Remove upper two bits and transfer lower six bits to upper six bits.
    lda PasswordChar,y
    asl
    asl
    sta $00
    ;Move bits 4 and 5 to lower two bits and discard the rest.
    lda PasswordChar+1,y
    jsr Adiv16
    ;Combine the two bytes together.
    ora $00
    rts

FourLowerAndFiveThruTwo: ; 00:9001
    ;Take four lower bits and transfer them to upper four bits. Discard the rest.
    lda PasswordChar,y              
    jsr Amul16
    sta $00
    ;Remove two lower bits and transfer bits 5 thru 2 to lower four bits.
    lda PasswordChar+1,y            
    lsr
    lsr
    ;Combine the two bytes together.
    ora $00
    rts

TwoLowerAndSixLower: ; 00:9011
    ;Shifts two lower bits to two higest bits and discards the rest
    lda PasswordChar,y
    ror
    ror
    ror
    and #$C0
    sta $00
    ;Add six lower bits to previous results.
    lda PasswordChar+1,y            
    ora $00
    rts

;The following table contains the unique items in the game.  The two bytes can be deciphered
;as follows:IIIIIIXX XXXYYYYY. I = item type, X = X coordinate on world map, Y = Y coordinate
;on world map. See constants.asm for values of IIIIII.

ItemData: ; 00:9029
@MaruMari:
    .word ui_MARUMARI    + ($02 << 5) + $0E  ;Maru Mari at coord 02,0E                    (Item 0)

    .word ui_MISSILES    + ($12 << 5) + $0B  ;Missiles at coord 12,0B                     (Item 1)
    .word ui_MISSILEDOOR + ($07 << 5) + $05  ;Red door to long beam at coord 07,05        (Item 2)
    .word ui_MISSILEDOOR + ($04 << 5) + $02  ;Red door to Tourian elevator at coord 05,02 (Item 3)
    .word ui_ENERGYTANK  + ($19 << 5) + $07  ;Energy tank at coord 19,07                  (Item 4)
    .word ui_MISSILEDOOR + ($19 << 5) + $05  ;Red door to bombs at coord 1A,05            (Item 5)

@Bombs:
    .word ui_BOMBS       + ($19 << 5) + $05  ;Bombs at coord 19,05                        (Item 6)

    .word ui_MISSILEDOOR + ($13 << 5) + $09  ;Red door to ice beam at coord 13,09         (Item 7)
    .word ui_MISSILES    + ($18 << 5) + $03  ;Missiles at coord 18,03                     (Item 8)
    .word ui_ENERGYTANK  + ($1B << 5) + $03  ;Energy tank at coord 1B,03                  (Item 9)
    .word ui_MISSILEDOOR + ($0F << 5) + $02  ;Red door to varia suit at coord 0F,02       (Item 10)

@Varia:
    .word ui_VARIA       + ($0F << 5) + $02  ;Varia suit at coord 0F,02                   (Item 11)

    .word ui_ENERGYTANK  + ($09 << 5) + $0E  ;Energy tank at coord 09,0E                  (Item 12)
    .word ui_MISSILES    + ($12 << 5) + $0E  ;Missiles at coord 12,0E                     (Item 13)
    .word ui_MISSILES    + ($11 << 5) + $0F  ;Missiles at coord 11,0F                     (Item 14)
    .word ui_MISSILEDOOR + ($1A << 5) + $0C  ;Red door to ice beam at coord 1B,0C         (Item 15)
    .word ui_MISSILES    + ($1B << 5) + $0A  ;Missiles at coord 1B,0A                     (Item 16)
    .word ui_MISSILES    + ($1C << 5) + $0A  ;Missiles at coord 1C,0A                     (Item 17)
    .word ui_MISSILES    + ($1C << 5) + $0B  ;Missiles at coord 1C,0B                     (Item 18)
    .word ui_MISSILES    + ($1B << 5) + $0B  ;Missiles at coord 1B,0B                     (Item 19)
    .word ui_MISSILES    + ($1A << 5) + $0B  ;Missiles at coord 1A,0B                     (Item 20)
    .word ui_MISSILES    + ($14 << 5) + $0F  ;Missiles at coord 14,0F                     (Item 21)
    .word ui_MISSILES    + ($13 << 5) + $0F  ;Missiles at coord 13,0F                     (Item 22)
    .word ui_MISSILEDOOR + ($1B << 5) + $11  ;Red door to high jump at coord 1C,11        (Item 23)

@HighJump:
    .word ui_HIGHJUMP    + ($1B << 5) + $11  ;High jump at coord 1B,11                    (Item 24)

    .word ui_MISSILEDOOR + ($0F << 5) + $10  ;Red door to screw attack at coord 0E,10     (Item 25)

@ScrewAttack:
    .word ui_SCREWATTACK + ($0F << 5) + $10  ;Screw attack at coord 0D,1D                 (Item 26)

    .word ui_MISSILES    + ($13 << 5) + $16  ;Missiles at coord 13,16                     (Item 27)
    .word ui_MISSILES    + ($14 << 5) + $16  ;Misslies at coord 14,16                     (Item 28)
    .word ui_MISSILEDOOR + ($12 << 5) + $15  ;Red door to wave beam at coord 1C,15        (Item 29)
    .word ui_ENERGYTANK  + ($1A << 5) + $13  ;Energy tank at coord 1A,13                  (Item 30)
    .word ui_MISSILES    + ($1C << 5) + $14  ;Missiles at coord 1C,14                     (Item 31)
    .word ui_MISSILEDOOR + ($07 << 5) + $15  ;Red door at coord 07,15                     (Item 32)
    .word ui_MISSILES    + ($09 << 5) + $15  ;Missiles at coord 09,15                     (Item 33)
    .word ui_MISSILES    + ($04 << 5) + $15  ;Missiles at coord 04,15                     (Item 34)
    .word ui_MISSILEDOOR + ($07 << 5) + $16  ;Red door at coord 07,16                     (Item 35)
    .word ui_ENERGYTANK  + ($0A << 5) + $16  ;Energy tank at coord 0A,16                  (Item 36)
    .word ui_MISSILEDOOR + ($07 << 5) + $18  ;Red door at coord 07,18                     (Item 37)
    .word ui_MISSILEDOOR + ($03 << 5) + $1B  ;Red door at coord 03,1B                     (Item 38)
    .word ui_MISSILES    + ($05 << 5) + $1B  ;Missiles at coord 05,1B                     (Item 39)
    .word ui_MISSILES    + ($0A << 5) + $19  ;Missiles at coord 0A,19                     (Item 40)
    .word ui_MISSILEDOOR + ($08 << 5) + $1D  ;Red door to Kraid at coord 08,1D            (Item 41)
    .word ui_ENERGYTANK  + ($08 << 5) + $1D  ;Energy tank at coord 08,1D(Kraid's room)    (Item 42)
    .word ui_MISSILES    + ($12 << 5) + $18  ;Missiles at coord 12,18                     (Item 43)
    .word ui_MISSILEDOOR + ($11 << 5) + $19  ;Red door at coord 11,19                     (Item 44)
    .word ui_ENERGYTANK  + ($11 << 5) + $19  ;Energy tank at coord 11,19                  (Item 45)
    .word ui_MISSILES    + ($14 << 5) + $1E  ;Missiles at coord 14,1E                     (Item 46)
    .word ui_MISSILEDOOR + ($10 << 5) + $1D  ;purple door at coord 10,1D(Ridley's room)   (Item 47)
    .word ui_ENERGYTANK  + ($0F << 5) + $1D  ;Energy tank at coord 0F,1D                  (Item 48)
    .word ui_MISSILES    + ($18 << 5) + $1B  ;Missile at coord 18,1B                      (Item 49)
    .word ui_MISSILEDOOR + ($03 << 5) + $07  ;Orange door at coord 03,07                  (Item 50)
    .word ui_MISSILEDOOR + ($09 << 5) + $07  ;Red door at coord 09,07                     (Item 51)
    .word ui_MISSILEDOOR + ($09 << 5) + $0B  ;Red door at coord 0A,0B                     (Item 52)
    .word ui_ZEBETITE1                       ;1st Zebetite in mother brain room           (Item 53)
    .word ui_ZEBETITE2                       ;2nd Zebetite in mother brain room           (Item 54)
    .word ui_ZEBETITE3                       ;3rd Zebetite in mother brain room           (Item 55)
    .word ui_ZEBETITE4                       ;4th Zebetite in mother brain room           (Item 56)
    .word ui_ZEBETITE5                       ;5th Zebetite in mother brain room           (Item 57)

@MotherBrain:
    .word ui_MOTHERBRAIN                     ;Mother brain                                (Item 58)

@end:

ClearAll: ; 00:909F
    ;Turn off screen, clear sprites and name tables.
    jsr ScreenOff
    jsr ClearNameTables
    jsr EraseAllSprites             ;
    lda PPUCTRL_ZP                  ;Set Name table address to $2000.
    and #$FC                        ;
    sta PPUCTRL_ZP                  ;
    lda #$00                        ;
    sta ScrollY                     ;Reset scroll offsets.
    sta ScrollX                     ;
    jsr WaitNMIPass                 ;($C42C)Wait for NMI to end.
    jmp VBOffAndHorzWrite           ;($C47D)Set PPU for horizontal write and turn off VBlank.

StartContinueScreen15: ; 00:90BA
StartContinueScreen1B:
    jsr ClearAll                    ;($909F)Turn off screen, erase sprites and nametables.
    ldx #<L9984.b                     ;Low address for PPU write.
    ldy #>L9984.b                     ;High address for PPU write.
    jsr PreparePPUProcess_          ;($9449)Clears screen and writes "START CONTINUE".
    ldy #$00                        ;
    sty StartContinue               ;Set selection sprite at START.
    .if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_PAL" || BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP"
        lda #$0D
    .elif BUILDTARGET == "NES_CNSUS"
        NES_CNSUS_IllegalOpcode42
        .byte $0D
    .endif
    jsr WriteTitlePal               ;Change palette and title routine.
    lda #_id_ChooseStartContinue.b  ;Next routine is ChooseStartContinue.
    sta TitleRoutine                ;

TurnOnDisplay: ; 00:90D1
    jsr NMIOn                       ;($C487)Turn on the nonmaskable interrupt.
    jmp ScreenOn                    ;($C447)Turn screen on.

ChooseStartContinue: ; 00:90D7
    ;Checks both select and start buttons.
    lda Joy1Change
    and #BUTTON_START | BUTTON_SELECT.b
    ;Branch if START not pressed.
    cmp #BUTTON_START
    bne @endIf_A
        ;if CONTINUE selected, branch.
        ldy StartContinue
        bne @endIf_B
            ;Zero out all stats.
            jsr InitializeStats
            ;Start game.
            jmp InitializeGame
        @endIf_B:
        ;Next routine is LoadPasswordScreen.
        ldy #_id_LoadPasswordScreen.b
        sty TitleRoutine
    @endIf_A:
    ;Branch if SELECT not pressed.
    cmp #BUTTON_SELECT
    bne @endIf_C
        ;Toggles between START and CONTINUE on game select screen.
        lda StartContinue
        eor #$01
        sta StartContinue
        ;Set SFX flag for select being pressed. Uses triangle channel.
        jsr SFX_Beep
    @endIf_C:
    ldy StartContinue
    ;Load sprite info for square selection sprite.
    lda StartContTbl,y
    sta SpriteRAM.0.y
    lda #$6E
    sta SpriteRAM.0.tileID
    lda #$03
    sta SpriteRAM.0.attrib
    lda #$50
    sta SpriteRAM.0.x
    rts

StartContTbl: ; 00:9118
    .byte $60                       ;Y sprite position for START.
    .byte $78                       ;Y sprite position for CONTINUE.

LoadPasswordScreen: ; 00:911A
    jsr ClearAll                    ;($909F)Turn off screen, erase sprites and nametables.
    ldx #<L99E3.b                     ;Loads PPU with info to display-->
    ldy #>L99E3.b                     ;PASS WORD PLEASE.
    jsr PreparePPUProcess_          ;($9449)Load "PASSWORD PLEASE" on screen.
    jsr DisplayInputCharacters      ;($940B)Write password character to screen.
    lda #$13                        ;
    jsr WriteTitlePal               ;Change palette.
    lda #$00                        ;
    sta InputRow                    ;Sets character select cursor to-->
    sta InputColumn                 ;upper left character (0).
    jsr SetTimer3                      ;
    lda #$00                        ;
    sta PasswordCursor              ;Sets password cursor to password character 0.
    ldy #$00                        ;
    sty PasswordStat00              ;Appears to have no function.
    inc TitleRoutine                ;
    jmp TurnOnDisplay               ;($90D1)Turn on screen and NMI.

EnterPassword: ; 00:9147
    ;($C1A3)Remove sprites from screen.
    jsr EraseAllSprites

    ;Check to see if START has been pressed.
    lda Joy1Change
    and #BUTTON_START
    ;If not, branch.
    beq @endIf_A
        ;Check if password is correct.
        jmp CheckPassword
    @endIf_A:

    ;Prepare to write the password screen data to PPU.
    ldx #$01
    stx PPUDataPending
    ldx PPUStrIndex

    ;Upper byte of PPU string.
    lda #$21
    jsr WritePPUByte
    ;Lower byte of PPU string.
    lda #$A8
    jsr WritePPUByte
    ;PPU string length.
    lda #$0F
    jsr WritePPUByte

    lda Timer3
    beq @else_B
        ;Writes 'ERROR TRY AGAIN' on the screen if Timer3 is anything but #$00.
        lda #<L8759.b
        sta $02
        lda #>L8759.b
        sta $03
        jmp @endIf_B
    @else_B:
        ;Writes the blank lines that cover the message 'ERROR TRY AGAIN'.
        lda #<L8768.b
        sta $02
        lda #>L8768.b
        sta $03
    @endIf_B:
    ; loop to write all the bytes from those strings to ppu string buffer
    ldy #$00
    @loop:
        lda ($02),y
        jsr WritePPUByte
        iny
        cpy #$0F
        bne @loop

    ;If button A pressed, branch.
    lda Joy1Change
    bmi @endIf_C
        ;Check if backspace pressed.
        jmp CheckBackspace
    @endIf_C:

    ;Initiate BombLaunch SFX if a character has been written to the screen.
    jsr SFX_BombLaunch
    
    ;Check to see if password cursor is on character 19 thru 24.  If not, branch.
    lda PasswordCursor
    cmp #$12
    bcc L91A8
    ;Will equal #$50 thru #$55.
    clc
    adc #$3E
    jmp LoadRowAndColumn

L91A8:
    ;Check to see if password cursor is on character 13 thru 18.  If not, branch.
    cmp #$0C
    bcc L91B2
    ;Will equal #$49 thru #$4E.
    clc
    adc #$3D
    jmp LoadRowAndColumn

L91B2:
    ;Check to see if password cursor is on character 7 thru 12.  If not, branch.
    cmp #$06
    bcc L91BC
    ;Will equal #$10 thru #$15.
    clc
    adc #$0A
    jmp LoadRowAndColumn

L91BC:
    ;Will equal #$09 thru #$0E.
    clc
    adc #$09

LoadRowAndColumn: ; 00:91BF
    sta $06
    lda InputRow
    asl ;*2. address pointer is two bytes.
    tay
    ;Store lower byte of row pointer.
    lda PasswordRowTbl,y
    sta $00
    ;Store upper byte of row pointer.
    lda PasswordRowTbl+1,y
    sta $01
    ;Uses InputColumn value to find proper index of current character selected.
    ldy InputColumn
    lda ($00),y
    ;Temp storage of A.
    pha
    ;Store value of current character selected.
    sta TileInfo0
    ;Replace password character tile with the one selected by the player.
    lda #$11
    sta TileSize
    ldx $06
    ldy #$21
    jsr PrepareEraseTiles           ;($9450)
    ldx PasswordCursor
    ;Store the currently selected password character in the proper PasswordChar RAM location.
    pla
    sta PasswordChar,x

    ;Increment PasswordCursor.
    lda PasswordCursor
    clc
    adc #$01
    ;If at last character, loop back to the first character.
    cmp #$18
    bcc L91F8
        lda #$00
    L91F8:
    sta PasswordCursor

CheckBackspace: ; 00:91FB
    ;If button B (backspace) has not been pressed, branch.
    lda Joy1Change
    and #BUTTON_B
    beq L920E
        ;Subtract 1 from PasswordCursor.
        lda PasswordCursor
        sec
        sbc #$01
        ;If PasswordCursor is negative, load PasswordCursor with #$17 (last character).
        bcs L920B
            lda #$17
        L920B:
        sta PasswordCursor
    L920E:
    ldy PasswordStat00 ;Appears to have no function.
    ;If FrameCount bit 3 not set, branch.
    ;This flashes the cursor on and off.
    lda FrameCount
    and #$08
    beq L923F
        ;Set cursor y position to #$3F if PasswordCursor is on character 0 thru 11,
        ;else set it to #$4F.
        lda #$3F
        ldx PasswordCursor
        cpx #$0C
        bcc L9222
            lda #$4F
        L9222:
        sta SpriteRAM.1.y
        ;Set pattern for password cursor sprite.
        lda #$6E
        sta SpriteRAM.1.tileID
        ;Set attributes for password cursor sprite.
        lda #OAMDATA_PRIORITY
        sta SpriteRAM.1.attrib
        ; load cursor position
        lda PasswordCursor
        cmp #$0C
        ;If the password cursor is at the 12th character or less, branch.
        bcc L9238
            ;Cursor is on the second row of password.
            ;Calculate how many characters the password cursor is from the left.
            sbc #$0C
        L9238:
        tax
        ;Set X position of PasswordCursor based on this.
        lda CursorPosXTbl,x
        sta SpriteRAM.1.x
    L923F:
    ldx InputRow                    ;Load X and Y with row and column-->
    ldy InputColumn                 ;of current character selected.
    lda Joy1Retrig                  ;
    and #$0F                        ;If no directional buttons are in-->
    beq L9297                       ;retrigger mode, branch.
    pha                             ;Temp storage of A.
    jsr SFX_Beep                    ;Initiate BeepSFX when the player pushes a button on the directional pad.
    pla                             ;Restore A.
    lsr                             ;Put status of right directional button in carry bit.
    bcc L926C                       ;Branch if right button has not been pressed.
        iny                             ;
        cpy #$0D                        ;Increment Y(column).  If Y is greater than #$0C,-->
        bne L9269                       ;increment X(Row).  If X is greater than #$04,-->
            inx                             ;set X to #$00(start back at top row) and store-->
            cpx #$05                        ;new row in InputRow.
            bne L9264                       ;
                ldx #$00                        ;
            L9264:
            stx InputRow                    ;
            ldy #$00                        ;Store new column in InputColumn.
        L9269:
        sty InputColumn                 ;
    L926C:
    lsr                             ;Put status of left directional button in carry bit.
    bcc L927F                       ;Branch if left button has not been pressed.
        dey                             ;
        bpl L927C                       ;Decrement Y(column).  If Y is less than #$00,-->
            dex                             ;Decrement X(row).  If X is less than #$00,-->
            bpl L9277                       ;set X to #$04(last row) and store new row-->
                ldx #$04                        ;in InputRow.
            L9277:
            stx InputRow                    ;
            ldy #$0C                        ;Store new column in InputColumn.
        L927C:
        sty InputColumn                 ;
    L927F:
    lsr                             ;Put status of down directional button in carry bit.
    bcc L928C                       ;Branch if down button has not been pressed.
        inx                             ;
        cpx #$05                        ;Increment X(row).  if X is greater than #$04,-->
        bne L9289                       ;set X to #$00(first row) and store new-->
            ldx #$00                        ;row in InputRow.
        L9289:
        stx InputRow                    ;
    L928C:
    lsr                             ;Put status of up directional button in carry bit.
    bcc L9297                       ;Branch if up button has not been pressed.
        dex                             ;
        bpl L9294                       ;Decrement X(row).  if X is less than #$00,-->
            ldx #$04                        ;set X to #$04(last row) and store new-->
        L9294:
        stx InputRow                    ;row in InputRow.
    L9297:
    ;If FrameCount bit 3 not set, branch.
    lda FrameCount
    and #$08
    beq RTS_92B3
        ;Set Y-coord of character selection sprite.
        lda CharSelectYTbl,x
        sta SpriteRAM.2.y
        ;Set pattern for character selection sprite.
        lda #$6E
        sta SpriteRAM.2.tileID
        ;Set attributes for character selection sprite.
        lda #$20
        sta SpriteRAM.2.attrib
        ;Set x-Coord of character selection sprite.
        lda CharSelectXTbl,y
        sta SpriteRAM.2.x
    RTS_92B3:
    rts

;The following data does not appear to be used in the program.
    .byte $21, $20

;The following table is used to determine the proper Y position of the character
;selection sprite on password entry screen.
CharSelectYTbl: ; 00:92B6
    .byte $77, $87, $97, $A7, $B7

;The following table is used to determine the proper X position of the character
;selection sprite on password entry screen.
CharSelectXTbl: ; 00:92BB
    .byte $20, $30, $40, $50, $60, $70, $80, $90, $A0, $B0, $C0, $D0, $E0

;When the PasswordCursor is on the second row of the password, the following table is used
;to determine the proper x position of the password cursor sprite(password characters 12-23).
CursorPosXTbl: ; 00:92C8
    .byte $48, $50, $58, $60, $68, $70, $80, $88, $90, $98, $A0, $A8

InitializeGame: ; 00:92D4
    lda #_id_MoreInit.b
    sta MainRoutine                 ;Initialize starting area.
    jsr ScreenNmiOff                ;($C45D)Turn off screen.
    jsr LoadSamusGFX                ;($C5DC)Load Samus GFX into pattern table.
    jsr NMIOn                       ;($C487)Turn on the non-maskable interrupt.
    ldy SaveArea                    ;Load area Samus is to start in.
    sty InArea
    lda BankTable,y                 ;Change to proper memory page.
    sta SwitchPending               ;
RTS_9324:
    rts

InitializeStats: ;($932B)
    ;Copy initial save data to RAM when starting new game.
    ldx #InitialSaveDataEnd-InitialSaveData.b
    @loop_A:
        lda InitialSaveData-1,x
        sta Health-1,x
        dex
        bne @loop_A
    ;Clear flag to start from password.
    stx StartingFromPassword
    ;Clear unique item history.
    ldx #$00
    txa
    @loop_B:
        sta UniqueItemHistory,x
        inx
        bne @loop_B
    rts

.include "initial_save_data.asm"

DisplayPassword: ; 00:9359
    ;Wait for "GAME OVER" to be displayed for 160 frames (2.6 seconds).
    lda Timer3
    bne RTS_9324

.if CFG_SAVE == 0
    ;Turn off screen, erase sprites and nametables.
    jsr ClearAll
    ;Clears screen and writes "PASS WORD".
    ldx #<@PPUString.b
    ldy #>@PPUString.b
    jsr PreparePPUProcess_
    jsr InitPasswordFontGFX
    ; calculate and display password to screen
    jsr CalculatePassword
    jsr NMIOn
    jsr PasswordToScreen
    jsr WaitNMIPass
    ;Change palette.
    lda #$13
    sta PalDataPending
    ;Next routine is WaitForSTART.
    inc TitleRoutine
    .if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_PAL" || BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP"
        jmp ScreenOn                    ;($C447)Turn screen on.
    .elif BUILDTARGET == "NES_CNSUS"
        NES_CNSUS_IllegalOpcode42
        .word ScreenOn
    .endif
.else
    ; load previous save and start game
    jsr FileLoad
    jmp InitializeGame
.endif

@PPUString:
    ;Information below is for above routine to display "PASS WORD" on the screen.
    .if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_PAL"
        PPUString $214B, \
            "PASS WORD"
    .elif BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP" || BUILDTARGET == "NES_CNSUS"
        PPUString $214B, \
            " PASSWORD"
    .endif

    ;Information to be stored in attribute table 0.
    PPUStringRepeat $23D0, $00, $08

    ;Turn color on to display password characters.
    PPUStringRepeat $23D8, $55, $20

    PPUStringEnd

WaitForSTART: ; 00:9394
    ;Waits for START to be ressed proceed past the GAME OVER screen.
    lda Joy1Change
    .if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_PAL" || BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP"
        and #BUTTON_START
    .elif BUILDTARGET == "NES_CNSUS"
        ;START has no effect
        NES_CNSUS_IllegalOpcode42
        .byte BUTTON_START
    .endif
    ;If start not pressed, branch.
    beq @RTS
        ;Check if password is correct.
        jmp CheckPassword
    @RTS:
    rts

GameOver: ; 00:939E
    ;Turn off screen, erase sprites and nametables.
    jsr ClearAll
    ;Clears screen and writes "GAME OVER".
    ldx #<@PPUString.b
    ldy #>@PPUString.b
    jsr PreparePPUProcess_
    jsr NMIOn
    ;Load Timer3 with a delay of 160 frames (2.6 seconds) for displaying "GAME OVER".
    lda #$10
    jsr SetTimer3
    ;Next routine is DisplayPassword.
    lda #_id_DisplayPassword.b
    sta TitleRoutine
    jmp ScreenOn

@PPUString:
    ;Information below is for above routine to display "GAME OVER" on the screen.
    PPUString $218C, \
        "GAME OVER"

    PPUStringEnd


PasswordToScreen: ; 00:93C6
    jsr WaitNMIPass                 ;($C42C)Wait for NMI to end.

    ldy #$05                        ;Index to find password characters(base=$699A).
    jsr LoadPasswordTiles           ;($93F9)Load tiles on screen.
    ldx #$A9                        ;PPU low address byte.
    ldy #$21                        ;PPU high address byte.
    jsr PrepareEraseTiles           ;($9450)Erase tiles on screen.

    ldy #$0B                        ;Index to find password characters(base=$699A).
    jsr LoadPasswordTiles           ;($93F9)Load tiles on screen.
    ldx #$B0                        ;PPU low address byte.
    ldy #$21                        ;PPU high address byte.
    jsr PrepareEraseTiles           ;($9450)Erase tiles on screen.

    ldy #$11                        ;Index to find password characters(base=$699A).
    jsr LoadPasswordTiles           ;($93F9)Load tiles on screen.
    ldx #$E9                        ;PPU low address byte.
    ldy #$21                        ;PPU high address byte.
    jsr PrepareEraseTiles           ;($9450)Erase tiles on screen.

    ldy #$17                        ;Index to find password characters(base=$699A).
    jsr LoadPasswordTiles           ;($93F9)Load tiles on screen.
    ldx #$F0                        ;PPU low address byte.
    ldy #$21                        ;PPU high address byte.
    jmp PrepareEraseTiles           ;($9450)Erase tiles on screen.


LoadPasswordTiles: ; 00:93F9
    ;Tiles to replace are one block high and 6 blocks long.
    lda #$16
    sta TileSize
    ldx #$05

    ;Transfer password characters to TileInfo addresses.
    @loop:
        lda PasswordChar,y
        sta TileInfo0,x
        dey
        dex
        bpl @loop
    rts

DisplayInputCharacters: ; 00:940B
    lda PPUSTATUS                   ;Clear address latches.
    ldy #$00                        ;
    tya                             ;Initially sets $00 an $01.
    sta $00                         ;to #$00.
    sta $01                         ;Also, initially sets x and y to #$00.
    L9415:
        asl                             ;
        tax                             ;
        lda PasswordRowsTbl,x           ;
        sta PPUADDR                     ;
        lda PasswordRowsTbl+1,x         ;Displays the list of characters -->
        sta PPUADDR                     ;to choose from on the password-->
        ldx #$00                        ;entry screen.
        L9425:
            lda PasswordRow0,y              ;Base is $99A2.
            sta PPUDATA                     ;
            lda #$FF                        ;Blank tile.
            sta PPUDATA                     ;
            iny                             ;
            inx                             ;
            cpx #$0D                        ;13 characters in current row?
            bne L9425                       ;if not, add another character.
        inc $01                         ;
        lda $01                         ;
        cmp #$05                        ;5 rows?
        bne L9415                       ;If not, go to next row.
    rts

;The table below is used by the code above to determine the positions
;of the five character rows on the password entry screen.
;The two entries in each row are the upper and lower address bytes to start writing to the name table, respectively.
PasswordRowsTbl: ; 00:943F
    .byte $21, $E4
    .byte $22, $24
    .byte $22, $64
    .byte $22, $A4
    .byte $22, $E4


PreparePPUProcess_: ; 00:9449
    stx $00                         ;Lower byte of pointer to PPU string
    sty $01                         ;Upper byte of pointer to PPU string
    jmp ProcessPPUString            ;($C30C)

PrepareEraseTiles: ; 00:9450
    stx $00                         ;PPU low address byte
    sty $01                         ;PPU high address byte

    ;Address of byte where tile size of tile to be erased is stored.
    ldx #<TileSize.b
    ldy #>TileSize.b
    stx $02
    sty $03
    jmp WriteTileBlast              ;($C328)Erase the selected tiles.

;--------------------------------------[ Palette data ]---------------------------------------------

;The following table points to the palette data
;used in the intro and ending portions of the game.

bank0_PalPntrTbl: ; 00:9560
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette00
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette01
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette02
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette03
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette04
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette05
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette06
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette07
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette08
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette09
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette0A
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette0B
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette0C
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette0D
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette0E
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette0F
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette10
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette11
    PtrTableEntry bank0_PalPntrTbl, bank0_Palette12

bank0_Palette00: ; 00:9586
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette01: ; 00:95AA
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $35, $35, $04, $0F, $35, $14, $04, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette02: ; 00:95CE
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $39, $39, $09, $0F, $39, $29, $09, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette03: ; 00:95F2
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $36, $36, $06, $0F, $36, $15, $06, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette04: ; 00:9616
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $27, $27, $12, $0F, $27, $21, $12, $0F, $16, $1A, $27, $0F, $31, $20, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette05: ; 00:963A
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $01, $01, $0F, $0F, $01, $0F, $0F, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette06: ; 00:965E
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $01, $01, $0F, $0F, $01, $01, $0F, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette07: ; 00:9682
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $02, $02, $01, $0F, $02, $02, $01, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette08: ; 00:96A6
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $02, $02, $01, $0F, $02, $01, $01, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette09: ; 00:96CA
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $12, $12, $02, $0F, $12, $12, $02, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette0A: ; 00:96EE
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $11, $11, $02, $0F, $11, $02, $02, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette0B: ; 00:9712
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $31, $31, $01, $0F, $31, $11, $01, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette0C: ; 00:9736
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $12, $30, $21, $0F, $27, $28, $29, $0F, $31, $31, $01, $0F, $16, $2A, $27, $0F, $12, $30, $21, $0F, $27, $24, $2C, $0F, $15, $21, $38
    PPUStringEnd

bank0_Palette0D: ; 00:975A
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $12, $12, $01, $0F, $12, $02, $01, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette0E: ; 00:977E
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $02, $02, $0F, $0F, $02, $01, $0F, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette0F: ; 00:97A2
    PPUString $3F00, \
        $0F, $28, $18, $08, $0F, $29, $1B, $1A, $0F, $01, $01, $0F, $0F, $01, $0F, $0F, $0F, $16, $1A, $27, $0F, $37, $3A, $1B, $0F, $17, $31, $37, $0F, $32, $22, $12
    PPUStringEnd

bank0_Palette10: ; 00:97C6
    PPUString $3F00, \
        $30, $28, $18, $08, $30, $29, $1B, $1A, $30, $30, $30, $30, $30, $30, $30, $30, $30, $16, $1A, $27, $30, $37, $3A, $1B, $30, $17, $31, $37, $30, $32, $22, $12
    PPUStringEnd

bank0_Palette11: ; 00:97EA
    PPUString $3F00, \
        $0F, $30, $30, $21
    PPUStringEnd

bank0_Palette12: ; 00:97F2
    PPUString $3F00, \
        $0F, $30, $30, $0F, $0F, $2A, $2A, $21, $0F, $31, $31, $0F, $0F, $2A, $2A, $21
    PPUStringEnd

UpdateCrossMissileCoords: ; 00:981E
    ;Load sprite run(sprite x component).
    lda IntroSprs.0.speedX,x
    ;Calculate sprite displacement in x direction.
    jsr @CalcDisplacement
    ;Get byte describing if sprite increasing or decreasing pos.
    ldy IntroSprs.0.dirX,x
    bpl @endIf_A
        ;If MSB is set, sprite is decreasing position.
        ;negate sprite displacement.
        eor #$FF
        clc
        adc #$01
    @endIf_A:
    ;Add displacement to sprite x coord.
    clc
    adc IntroSprs.0.x,x
    sta IntroSprs.0.x,x
    ;Subtract total sprite movemnt value from current sprite x pos.
    sec
    sbc IntroSprs.0.crossMissileXChange,x
    ;Transfer processor status to A.
    php
    pla
    ;Eor carry bit with direction byte to see if sprite has reached its end point.
    eor IntroSprs.0.dirX,x
    lsr
    ;Branch if sprite has reached the end of x movement.
    bcc @endIf_B
        ;Load sprite rise(sprite y component).
        lda IntroSprs.0.speedY,x
        ;Calculate sprite displacement in y direction.
        jsr @CalcDisplacement
        ;Get byte describing if sprite increasing or decreasing pos.
        ldy IntroSprs.0.dirY,x
        bpl @endIf_C
            ;If MSB is set, sprite is decreasing position.
            ;negate sprite displacement.
            eor #$FF
            clc
            adc #$01
        @endIf_C:
        ;Add displacement to sprite y coord.
        clc
        adc IntroSprs.0.y,x
        sta IntroSprs.0.y,x
        ;Subtract total sprite movemnt value from current sprite y pos.
        sec
        sbc IntroSprs.0.crossMissileYChange,x
        ;Transfer processor status to A.
        php
        pla
        ;Eor carry bit with direction byte to see if sprite has reached its end point.
        eor IntroSprs.0.dirY,x
        lsr
        ;Branch if sprite has not reached the end of y movement.
        bcs @RTS
    @endIf_B:
    ;After sprite has reached its final position, this code explicitly writes final x and y coords
    ;to the sprite position addresses to make sure the sprites don't overshoot their mark.
    lda IntroSprs.0.crossMissileYChange,x
    sta IntroSprs.0.y,x
    lda IntroSprs.0.crossMissileXChange,x
    sta IntroSprs.0.x,x
@RTS:
    rts

@CalcDisplacement: ; 00:9871
    ;store sprite speed
    sta Temp04_Displacement
    ;Time division. The higher the number, the slower the sprite.
    ;time division in this case is #$08.
    ;the real divisor will be the closest power of two above this number (#$10).
    lda #$08
    sta Temp00_FrameCountMask
    @loop:
        ;Calculate the change in the sprite position by dividing speed
        lsr Temp04_Displacement
        bcc @endIf_D
        ; the frame count is used to dither the division result over time
        ; the greater the fractional part of the result is, the greater chances 1 will be added to the result.
        lda FrameCount
        and Temp00_FrameCountMask
        bne @endIf_D
        inc Temp04_Displacement
    @endIf_D:
        lsr Temp00_FrameCountMask
        bne @loop
    ;Return displacement (speed/16).
    lda Temp04_Displacement
    rts


;This function decrements the y coordinate of the 40 intro star sprites.
DecSpriteYCoord: ; 00:988A
    ;If the end game is playing, branch to exit.
    lda TitleRoutine
    cmp #_id_EndGame.b
    bcs @RTS
    ;If no sprite load is pending, branch to exit.
    lda SpriteLoadPending
    beq @RTS
    ;If not on an odd numbered frame, branch to exit.
    lda FrameCount
    lsr
    bcs @RTS
    ;Decrement y coord of the intro star sprites.
    ldx #$9F
    @loop:
        ;Decrement y coord of 40 sprites.
        dec IntroStarSprite,x
        dec SpriteRAM.24,x
        ;Move to next sprite.
        dex
        dex
        dex
        dex
        ;Loop 40 times.
        cpx #$FF
        bne @loop
    ;Sprite RAM load complete.
    lda #$00
    sta SpriteLoadPending
@RTS:
    rts


LoadStarSprites: ; 00:98AE
    ;Store RAM contents of $6E00 thru $6E9F in sprite RAM at locations $0260 thru $02FF.
    ldy #$9F
    @loop:
        lda IntroStarSprite,y
        sta SpriteRAM.24,y
        dey
        cpy #$FF
        bne @loop
    ;Sprite RAM load complete.
    lda #$00
    sta SpriteLoadPending
    rts

;The following values are loaded into RAM $6E00 thru $6E9F in InitBank0
;routine.  These values are then loaded into sprite RAM at $0260 thru $02FF
;in above routine.  They are the stars in the title screen.
IntroStarsData: ; 00:98C0
    .byte $73, $CC, $22, $F2
    .byte $48, $CD, $63, $EE
    .byte $2A, $CE, $A2, $DC
    .byte $36, $CF, $E2, $C6
    .byte $11, $CC, $23, $B7
    .byte $53, $CD, $63, $A0
    .byte $BB, $CE, $A2, $9A
    .byte $0F, $CF, $E2, $8B
    .byte $85, $CC, $E2, $70
    .byte $9D, $CD, $A3, $6B
    .byte $A0, $CE, $63, $58
    .byte $63, $CF, $23, $4F
    .byte $0A, $CC, $22, $39
    .byte $1F, $CD, $23, $2A
    .byte $7F, $CE, $A3, $1F
    .byte $56, $CF, $A2, $03
    .byte $4D, $CC, $E3, $AF
    .byte $3E, $CD, $63, $2B
    .byte $61, $CE, $E2, $4F
    .byte $29, $CF, $62, $6F
    .byte $8A, $CC, $23, $82
    .byte $98, $CD, $A3, $07
    .byte $AE, $CE, $E2, $CA
    .byte $B6, $CF, $63, $E3
    .byte $0F, $CC, $62, $18
    .byte $1F, $CD, $22, $38
    .byte $22, $CE, $A3, $5F
    .byte $53, $CF, $E2, $78
    .byte $48, $CC, $E3, $94
    .byte $37, $CD, $A3, $B3
    .byte $6F, $CE, $A3, $DC
    .byte $78, $CF, $22, $FE
    .byte $83, $CC, $62, $0B
    .byte $9F, $CD, $23, $26
    .byte $A0, $CE, $62, $39
    .byte $BD, $CF, $A2, $1C
    .byte $07, $CC, $E3, $A4
    .byte $87, $CD, $63, $5D
    .byte $5A, $CE, $62, $4F
    .byte $38, $CF, $23, $85

;Not used.
    PPUString $3F00, \
        $02, $20, $1B, $3A, $02, $20, $21, $01, $02, $2C, $30, $27, $02, $26, $31, $17, \
        $02, $16, $19, $27, $02, $16, $20, $27, $02, $16, $20, $11, $02, $01, $20, $21
    PPUStringEnd

L9984: ; 00:9984
    PPUString $218C, \
        "START"

    PPUString $21EC, \
        "CONTINUE"

    PPUStringEnd

;The following pointer table is used to find the start
;of each row on the password screen in the data below.
PasswordRowTbl: ; 00:9998
    .word PasswordRow0              ;($99A2)
    .word PasswordRow1              ;($99AF)
    .word PasswordRow2              ;($99BC)
    .word PasswordRow3              ;($99C9)
    .word PasswordRow4              ;($99D6)

;The following data is used to load the name table With the password characters:
PasswordRow0: .stringmap charmap, "0123456789ABC"
PasswordRow1: .stringmap charmap, "DEFGHIJKLMNOP"
PasswordRow2: .stringmap charmap, "QRSTUVWXYZabc"
PasswordRow3: .stringmap charmap, "defghijklmnop"
PasswordRow4: .stringmap charmap, "qrstuvwxyz?- "

;Writes 'PASSWORD PLEASE' on name table 0 in row $2080 (5th row from top).
L99E3:
    .if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_PAL"
        PPUString $2088, \
            "PASS WORD PLEASE"
    .elif BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP" || BUILDTARGET == "NES_CNSUS"
        PPUString $20A8, \
            "PASSWORD PLEASE "
    .endif

    ;Clears attribute table 0 starting at address $23C0.
    PPUStringRepeat $23C0, $00, $10

    ;Writes to attribute table 0 starting at address $23D0.
    PPUStringRepeat $23D0, $55, $08

    ;Writes to attribute table 0 starting at address $23D8.
    PPUStringRepeat $23D8, $FF, $20

    ;Writes to attribute table 0 starting at address $23DA.
    PPUStringRepeat $23DA, $F0, $04

    PPUStringEnd

;----------------------------------------[ Ending routines ]-----------------------------------------

;The following routine is accessed via the NMI routine every frame.
NMIScreenWrite: ; 00:9A07
    ;If titleRoutine not at end game, exit.
    lda TitleRoutine
    cmp #$1D
    bcc Exit100

    jsr LoadCredits                 ;($9C45)Display end credits on screen.
    ;If not time to write end message, branch
    lda EndMsgWrite
    beq L9A24
    ;If end message is finished being written, branch
    cmp #$05
    bcs L9A24
        ;Writes the end message on name table 0
        asl
        tay
        ldx EndMessageStringTbl0-2,y
        lda EndMessageStringTbl0-1,y
        tay
        jsr PreparePPUProcess           ;($C20E)Prepare to write to PPU.
    L9A24:
    ;If not time to erase end message, branch
    lda HideShowEndMsg
    beq Exit100
    ;If end message is finished being erased, branch
    cmp #$05
    bcs Exit100
        ;Erases the end message on name table 0
        asl
        tay
        ldx EndMessageStringTbl1-2,y
        lda EndMessageStringTbl1-1,y
        tay
        jmp PreparePPUProcess           ;($C20E)Prepare to write to PPU.
Exit100:
    rts                             ;Exit from above and below routines.

Restart: ; 00:9A39
    ;If start has not been pressed, branch to exit.
    lda Joy1Status
    and #BUTTON_START
    beq Exit100

    ;Erase PasswordByte00 thru PasswordByte11.
    ldy #$11
    lda #$00
    @loop_erasePassword:
        sta PasswordByte,y
        dey
        bpl @loop_erasePassword

    ;Erase Unique item history.
    iny ;Y = #$00.
    L9A4A:
        sta UniqueItemHistory,y
        iny
        bne L9A4A

    ;If Samus does not have Maru Mari, branch.-->
    lda SamusGear
    and #gr_MARUMARI
    beq L9A5C
        ;Else load Maru Mari data into PasswordByte00.
        lda #1<<(((ItemData@MaruMari-ItemData)/2)&7).b
        sta PasswordByte+(((ItemData@MaruMari-ItemData)/2)/8)
    L9A5C:

    ;If Samus does not have bombs, branch.-->
    lda SamusGear
    and #gr_BOMBS
    beq L9A6B
        ;Else load bomb data into PasswordByte00.
        lda PasswordByte+(((ItemData@Bombs-ItemData)/2)/8)
        ora #1<<(((ItemData@Bombs-ItemData)/2)&7).b
        sta PasswordByte+(((ItemData@Bombs-ItemData)/2)/8)
    L9A6B:

    ;If Samus does not have varia suit, branch.-->
    lda SamusGear
    and #gr_VARIA
    beq L9A77
        ;Else load varia suit data into PasswordByte01.
        lda #1<<(((ItemData@Varia-ItemData)/2)&7).b
        sta PasswordByte+(((ItemData@Varia-ItemData)/2)/8)
    L9A77:

    ;If Samus does not have high jump, branch.-->
    lda SamusGear
    and #gr_HIGHJUMP
    beq L9A83
        ;Else load high jump data into PasswordByte03.
        lda #1<<(((ItemData@HighJump-ItemData)/2)&7).b
        sta PasswordByte+(((ItemData@HighJump-ItemData)/2)/8)
    L9A83:
    
    ;If Samus does not have screw attack, branch.-->
    lda SamusGear
    and #gr_SCREWATTACK
    beq L9A92
        ;Else load screw attack data into PasswordByte03.
        lda PasswordByte+(((ItemData@ScrewAttack-ItemData)/2)/8)
        ora #1<<(((ItemData@ScrewAttack-ItemData)/2)&7).b
        sta PasswordByte+(((ItemData@ScrewAttack-ItemData)/2)/8)
    L9A92:

    lda SamusGear                   ;
    sta PasswordByte+$09              ;Store Samus gear data in PasswordByte09.
    lda SamusGear1                  ;
    sta PasswordByte+$0E            ;Store Samus extra gear data in PasswordByte0E.
    lda #$00                        ;
    ldy JustInBailey                ;
    beq L9AA1                       ;If Samus is wearing suit, branch.  Else-->
        lda #$80                        ;load suitless Samus data into PasswordByte08.
    L9AA1:
    sta PasswordByte+$08              ;
    
    jsr LoadPasswordData
    jmp InitializeGame              ;($92D4)Clear RAM to restart game at beginning.

EndGame: ; 00:9AA7
    jsr LoadEndStarSprites          ;($9EAA)Load stars in end scene onto screen.
    lda IsCredits                   ;Skips palette change when rolling credits.
    bne L9AC0                       ;
    lda FrameCount                  ;
    and #$0F                        ;Changes star palettes every 16th frame.
    bne L9AC0                       ;
    inc IntroStarOffset             ;
    lda IntroStarOffset             ;Reset palette data to #$01 after it-->
    cmp #$09                        ;reaches #$09.
    bne +                           ;
    lda #$01                        ;
    sta IntroStarOffset             ;
    +
    jsr EndGamePalWrite
    lda SamusGear
    and #gr_VARIA
    beq +
    lda #$0D                        ;Load Varia Suit palette if Samus has Varia.
    jsr EndGamePalWrite             ;
    +
L9AC0:
    lda RoomPtr                     ;RoomPtr used in end of game to determine-->
    jsr ChooseRoutine               ;($C27C)which subroutine to run below.
        .word LoadEndGFX                ;($9AD5)Load end GFX to pattern tables.
        .word ShowEndSamus              ;($9B1C)Show Samus and end message.
        .word EndSamusFlash             ;($9B34)Samus flashes and changes.
        .word SamusWave                 ;($9B93)Samus waving in ending if suitless.
        .word EndFadeOut                ;($9BCD)Fade out Samus in ending.
        .word RollCredits               ;($9BFC)Rolls ending credits.
        .word Restart                   ;($9A39)Starts at beginning after game completed.
        .word ExitSub                   ;($C45C)Rts.

LoadEndGFX: ; 00:9AD5
    jsr ClearAll                    ;($909F)Turn off screen, erase sprites and nametables.
    jsr InitEndGFX                  ;($C5D0)Prepare to load end GFX.
    lda #$04                        ;
    ldy JustInBailey                ;Checks if game was played as suitless-->
    bne L9AE4                       ;Samus.  If so, branch.
    lda #$00                        ;Loads SpritePointerIndex with #$00(suit on).
L9AE4:
    sta EndingType                  ;
    asl                             ;Loads SpritePointerIndex with #$08(suitless).
    sta SpritePointerIndex          ;
    ldx #<LA052.b                     ;Loads the screen where Samus stands on-->
    ldy #>LA052.b                     ;the surface of the planet in end of game.
    jsr PreparePPUProcess           ;($C20E)Prepare to write to PPU.
    jsr NMIOn                       ;($C487)Turn on non-maskable interrupt.
    lda #music_EndMusic             ;Initiate end game music.
    sta CurrentMusic                ;
    .if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP" || BUILDTARGET == "NES_CNSUS"
        ;Loads Timer3 with a delay of 960 frames (16 seconds).
        lda #$60
    .elif BUILDTARGET == "NES_PAL"
        lda #$38
    .endif
    jsr SetTimer3
    lda #$36                        ;#$36/#$03 = #$12.  Number of sprites-->
    sta SpriteByteCounter           ;used to draw end graphic of Samus.
    lda #$00                        ;
    sta SpriteAttribByte            ;
    sta ColorCntIndex               ;
    sta IsCredits                   ;The following values are-->
    sta EndMsgWrite                 ;initialized to #$00.
    sta HideShowEndMsg              ;
    sta CreditPageNumber            ;
    sta IntroStarOffset             ;
    lda #$01                        ;
    jsr EndGamePalWrite             ;Change palette.
    lda SamusGear
    and #gr_VARIA
    beq +                           ;
    lda #$0D                        ;Load Varia Suit palette if Samus has Varia.
    jsr EndGamePalWrite             ;
    +
    lda #$08                        ;
    sta ClrChangeCounter            ;Initialize ClrChangeCounter with #$08.
    inc RoomPtr                     ;
    jmp ScreenOn                    ;($C447)Turn screen on.

ShowEndSamus: ; 00:9B1C
    jsr LoadEndSamusSprites         ;($9C9A)Load end image of Samus.
    lda Timer3                      ;Once 960 frames (16 seconds) have expired,-->
    bne L9B26                       ;Move to EndSamusFlash routine.
        inc RoomPtr
        rts

    L9B26:
    .if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP" || BUILDTARGET == "NES_CNSUS"
        ;After 160 frames have passed (2.6 seconds), write end message.
        cmp #$50
    .elif BUILDTARGET == "NES_PAL"
        cmp #$30
    .endif
    bne L9B2D
        inc EndMsgWrite
        rts

    L9B2D:
    cmp #$01                        ;After 950 frames have passed-->
    bne L9B33                       ;(15.8 seconds), erase end message.
        inc HideShowEndMsg
    L9B33:
    rts

EndSamusFlash: ; 00:9B34
    lda FrameCount                  ;If FrameCount not divisible by 32, branch.
    and #$1F                        ;
    bne L9B69                       ;
        inc ColorCntIndex               ;Every 32 frames, increment the ColorCntIndex-->
        lda ColorCntIndex               ;value.  Flashing Samus lasts for 512-->
        cmp #$08                        ;frames (8.5 seconds).
        bne L9B52                       ;
            jsr ChooseEnding                ;($CAF5)Choose which Samus ending to show.
            jsr CalculatePassword           ;($8C7A)Calculate game password.
            lda EndingType                  ;
            asl                             ;When EndSamusFlash routine is half way-->
            sta SpritePointerIndex          ;done, this code will calculate the-->
            lda #$36                        ;password and choose the proper ending.
            sta SpriteByteCounter           ;
        L9B52:
        cmp #$10                        ;
        bne L9B69                       ;Once flashing Samus is compete, set Timer3-->
        jsr SetTimer3                      ;for a 160 frame(2.6 seconds) delay.
        ldy #$00                        ;
        lda EndingType                  ;
        cmp #$04                        ;If one of the suitless Samus endings,-->
        bcc L9B62                       ;increment sprite color for proper-->
            iny                             ;color to be displayed and increment-->
        L9B62:
        sty SpriteAttribByte            ;RoomPtr and erase the sprites.
        inc RoomPtr                     ;
        jmp EraseAllSprites             ;($C1A3)Clear all sprites off the screen.
    L9B69:
    dec ClrChangeCounter            ;Decrement ClrChangeCounter.
    bne L9B80                       ;
    ldy ColorCntIndex               ;
    lda PalChangeTable,y            ;When ClrChangeCounter=#$00, fetch new-->
    sta ClrChangeCounter            ;ClrChangeCounter value. and increment-->
    inc SpriteAttribByte            ;sprite color.
    lda SpriteAttribByte            ;
    cmp #$03                        ;
    bne L9B80                       ;
    lda #$00                        ;If sprite color=#$03, set sprite-->
    sta SpriteAttribByte            ;color to #$00.
L9B80:
    jmp LoadEndSamusSprites         ;($9C9A)Load end image of Samus.

;The following table is used by the above routine to load ClrChangeCounter.  ClrChangeCounter
;decrements every frame, When ClrChangeCounter reaches zero, the sprite colors for Samus
;changes.  This has the effect of making Samus flash.  The flashing starts slow, speeds up,
;then slows down again.
PalChangeTable: ; 00:9B83
    .byte $08, $07, $06, $05, $04, $03, $02, $01, $01, $02, $03, $04, $05, $06, $07, $08

SamusWave: ; 00:9B93
    ;If 160 frame timer from previous routine has not expired, branch(waves for 2.6 seconds).
    lda Timer3
    bne L9BA2
    .if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP" || BUILDTARGET == "NES_CNSUS"
        ;Load Timer3 with 160 frame delay (2.6 seconds).
        lda #$10
    .elif BUILDTARGET == "NES_PAL"
        lda #$08
    .endif
    jsr SetTimer3
    ;Increment RoomPtr
    inc RoomPtr
    rts

L9BA2:
    ;If suitless Samus ending, branch.
    lda EndingType
    cmp #$04
    bcs L9BAC
        jmp LoadEndSamusSprites
    L9BAC:
    ;If jumpsuit Samus ending, WaveSpritePointer=#$00
    ;if bikini Samus ending, WaveSpritePointer=#$04.
    sbc #$04
    asl
    asl
    sta WaveSpritePointer
    ;Every eight frames, change wave sprite data.
    lda FrameCount
    and #$08
    bne L9BBE
        ldy #$10                        ;Load WaveSpriteCounter with #$10(16 bytes of-->
        sty WaveSpriteCounter           ;sprite data to be loaded).
        bne L9BC6                       ;Branch always.
    L9BBE:
        inc WaveSpritePointer           ;
        inc WaveSpritePointer           ;When bit 3 of FrameCount is not set,-->
        ldy #$10                        ;Samus' waving hand is down.
        sty WaveSpriteCounter           ;
    L9BC6:
    lda #$2D                        ;Load SpriteByteCounter in preparation for-->
    sta SpriteByteCounter           ;refreshing Samus sprite bytes.
    jmp LoadWaveSprites             ;($9C7F)Load sprites for waving Samus.

EndFadeOut: ; 00:9BCD
    lda Timer3                      ;If 160 frame delay from last routine has not-->
    bne L9BEF                       ;yet expired, branch.
    lda IsCredits                   ;
    bne L9BDB                       ;Branch if fade out is happening.

        lda #$08
        sta IntroStarOffset
        inc IsCredits               ;Increment IsCredits (start fade out).

    L9BDB:
    lda FrameCount                  ;
    and #$07                        ;Every seventh frame, increment the palette info-->
    bne L9BEF                       ;If PalDataPending is not equal to #$0C, keep-->
    inc IntroStarOffset             ;incrementing every seventh frame until it does.-->
    lda IntroStarOffset             ;This creates the fade out effect.
    cmp #$0C                        ;
    beq +                           ;
        tay
        lda SamusGear
        and #gr_VARIA
        beq ++
        tya
        clc                         ;Load Varia Suit palette if Samus has Varia.
        adc #$05                    ;
        tay
        ++
        tya
        jsr EndGamePalWrite
        beq L9BEF                   ;Branch always.
    +
        .if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP" || BUILDTARGET == "NES_CNSUS"
            ;After fadeout complete, load Timer3 with 160 frame delay(2.6 seconds) and increment RoomPtr.
            lda #$10
        .elif BUILDTARGET == "NES_PAL"
            lda #$08
        .endif
        jsr SetTimer3                      ;delay(2.6 seconds) and increment RoomPtr.
        inc RoomPtr                     ;
    L9BEF:
    lda EndingType                  ;
    cmp #$04                        ;If suitless Samus ending, load hand wave sprites,-->
    bcs L9BF9                       ;else just load regular Samus sprites
        jmp LoadEndSamusSprites         ;($9C9A)Load end image of Samus.
    L9BF9:
        jmp LoadWaveSprites             ;($9C7F)Load sprites for waving Samus.

RollCredits: ; 00:9BFC
    lda Timer3                      ;If 160 frame timer delay from previous-->
    beq L9C17                       ;routine has expired, branch.
    cmp #$02                        ;If not 20 frames left in Timer3, branch to exit.
    bne RTS_9C44                       ;
    jsr ScreenOff                   ;($C439)When 20 frames left in Timer3,-->
    jsr ClearNameTables@nameTable0  ;($C16D)clear name table 0 and sprites.-->
    jsr EraseAllSprites             ;($C1A3)prepares screen for credits.
    lda #$0C                        ;
    jsr EndGamePalWrite             ;Change to proper palette for credits.
    jsr ScreenOn                    ;($C447)Turn screen on.
    jmp WaitNMIPass                 ;($C43F)Wait for NMI to end.
L9C17:
    lda CreditPageNumber            ;If first page of credits has not started to-->
    bne L9C1D                       ;roll, start it now, else branch.
    inc CreditPageNumber            ;
L9C1D:
    cmp #$06                        ;If not at last page of credits, branch.
    bne L9C2A                       ;
    lda ScrollY                     ;
    cmp #$88                        ;If last page of credits is not finished-->
    bcc L9C2A                       ;scrolling, branch.  Else increment to next-->
    inc RoomPtr                     ;routine.
    rts

L9C2A:
    lda FrameCount                  ;credits scroll up one position every 3 frames.
    and #$03                        ;
    bne RTS_9C44                       ;Ready to scroll? If not, branch.
    inc ScrollY                     ;
    lda ScrollY                     ;Load ScrollY and check it to see if its-->
    cmp #$F0                        ;position is at the very bottom on name table.-->
    bne RTS_9C44                       ;if not, branch.
    inc CreditPageNumber            ;
    lda #$00                        ;
    sta ScrollY                     ;When Scrolly is at bottom of the name table,-->
    lda PPUCTRL_ZP                   ;Swap to next name table(0 or 2) and increment-->
    eor #$02                        ;CreditPageNumber.
    sta PPUCTRL_ZP                   ;
RTS_9C44:
    rts

;The following routine is checked every frame and is accessed via the NMIScreenWrite routine.
;The LoadCredits routine works like this: The Y scroll position is checked every frame.  When
;it is in the first four positions of the current name table (0, 1, 2 or 3), or the four
;positions right after 127 (128, 129, 130 and 131), the routine will then load the ending
;credits into the positions on the name table that were just scrolled over.  For example, If
;the scroll window is currently half way down name table 0, the LoadCredits routine will load
;the contents of the upper half of name table 0.  Also, name table 0 contains odd numbered
;pages and name table 2 contains even numbered pages.

LoadCredits: ; 00:9C45
    ;If credits are not being displayed, exit.
    ldy CreditPageNumber
    beq @RTS
    ;If CreditPageNumber is higher than #$06, exit.
    cpy #$07
    bcs @RTS
    ;If ScrollY is less than #$80 (128), branch.
    ldx #$00
    lda ScrollY
    bpl @endIf_A
        ;Load X with sign bit (#$01) and remove sign bit from A.
        inx
        sec
        sbc #$80
    @endIf_A:
    ;If (ScrollY & #$7F) is greater or equal to #$04, branch to exit.
    cmp #$04
    bcs @RTS
    ;Store #$00, #$01, #$02 or #$03 in address $01.
    sta $01
    ;Y now contains CreditPageNumber - 1.
    dey
    ;If ScrollY is #$80 (128) or greater, branch.
    txa
    bne @else_B
        ;Y now contains CreditPageNumber - 2.
        dey
        ;If on Credit page less than two, branch to exit.
        bmi @RTS
        ;Start with ((CreditPageNumber - 2) * 8 + 4 + $01) * 2.
        ;Equivalent to CreditPageNumber * 16 - 22
        ;This formula is used when ScrollY = 0, 1, 2 and 3.
        ;Result is index to find proper credits to load.
        tya
        asl
        asl
        asl
        adc #$04
        bne @endIf_B ;Branch always.
    @else_B:
        ;Start with ((CreditPageNumber - 1) * 8 + $01) * 2.
        ;Equivalent to CreditPageNumber * 16 - 14
        ;This formula is used when ScrollY = 128, 129, 130 and 131.
        ;Result is index to find proper credits to load.
        tya
        asl
        asl
        asl
    @endIf_B:
    adc $01
    asl
    tay
    ldx CreditsPointerTbl,y         ;Base is $A291. Lower byte of pointer to PPU string.
    lda CreditsPointerTbl+1,y       ;Upper byte of pointer to PPU string.
    tay
    jmp PreparePPUProcess           ;($C20E)Prepare to write to PPU.
@RTS:
    rts

LoadWaveSprites: ; 00:9C7F
    ;Load pointer to wave sprite data into addresses $00 and $01.
    ldx WaveSpritePointer
    lda WavePointerTable,x
    sta $00
    lda WavePointerTable+1,x
    sta $01
    ;Offset for sprite RAM load.
    ldx #<SpriteRAM.8.b
    ldy #$00
    @loop:
        ;Load wave sprites into sprite RAM starting at location $0220 (SpriteRAM.8).
        lda ($00),y
        sta SpriteRAM,x
        inx
        iny
        ;Check to see if sprite RAM load complete. If not, branch and load another byte.
        cpy WaveSpriteCounter
        bne @loop

LoadEndSamusSprites: ; 00:9C9A
    ldx #$30                        ;Index for loading Samus sprite data into sprite RAM.
    ldy SpritePointerIndex          ;
    lda EndSamusAddrTbl,y           ;Base is $9D5A.
    sta $00                         ;Load $00 and $01 with pointer to the sprite-->
    lda EndSamusAddrTbl+1,y         ;data that shows Samus at the end of the game.
    sta $01                         ;
    ldy #$00                        ;
    L9CAA:
        lda ($00),y                     ;Load sprite data starting at Sprite0CRAM.
        sta SpriteRAM,x               ;Load sprite Y-coord.
        inx                             ;
        iny                             ;Increment X and Y.
        lda ($00),y                     ;
        bpl L9CC0                       ;If sprite pattern byte MSB cleared, branch.
            and #$7F                        ;
            sta SpriteRAM,x               ;Remove MSB and write sprite pattern data-->
            lda SpriteAttribByte            ;to sprite RAM.
            eor #$40                        ;
            bne L9CC5                       ;
        L9CC0:
            sta SpriteRAM,x               ;Writes sprite pattern byte to-->
            lda SpriteAttribByte            ;sprite RAM if its MSB is not set.
        L9CC5:
        inx                             ;
        sta SpriteRAM,x               ;Writes sprite attribute byte to sprite RAM.
        iny                             ;
        inx                             ;Increment X and Y.
        lda ($00),y                     ;
        sta SpriteRAM,x               ;Load sprite X-coord.
        iny                             ;
        inx                             ;Increment X and Y.
        cpy SpriteByteCounter           ;
        bne L9CAA                       ;Repeat until sprite load is complete.
    lda RoomPtr
    cmp #$02                        ;If not running the EndSamusFlash routine, branch.
    bcc RTS_9CF9
    lda ColorCntIndex
    cmp #$08                        ;If EndSamusFlash routine is more than half-->
    bcc RTS_9CF9                       ;way done, Check ending type for the Samus helmet-->
    lda EndingType                  ;off ending.  If not helmet off ending, branch.
    cmp #$03
    bne RTS_9CF9
    ldy #$00
    ldx #$00
    L9CED:
        ;The following code loads the sprite graphics when the helmet off ending is playing.
        ;The sprites below keep Samus head from flashing while the rest of her body does.
        lda SamusHeadSpriteTable,y
        sta SpriteRAM,x
        iny
        inx
        cpy #$18
        bne L9CED
RTS_9CF9:
    rts

;The following table is used by the routine above to keep Samus'
;head from flashing during the helmet off ending.

SamusHeadSpriteTable: ; 00:9CFA
    .byte $93, $36, $01, $70        ;Sprite00RAM
    .byte $93, $37, $01, $78        ;Sprite01RAM
    .byte $93, $38, $01, $80        ;Sprite02RAM
    .byte $9B, $46, $01, $70        ;Sprite03RAM
    .byte $9B, $47, $01, $78        ;Sprite04RAM
    .byte $9B, $48, $01, $80        ;Sprite05RAM

;The following table is a pointer table to the sprites that makes Samus wave in the end
;of the game when she is suitless.  The top two pointers are for when she is in the jumpsuit
;and the bottom two pointers are for when she is in the bikini.

WavePointerTable: ; 00:9D12
    .word JsHandUpTable                     ;Jumpsuit Samus hand up.
    .word JsHandDownTable                     ;Jumpsuit Samus hand down.
    .word BkHandUpTable                     ;Bikini Samus hand up.
    .word BkHandDownTable                     ;Bikini Samus hand down.

;Sprite data table used when Samus is in jumpsuit and her waving hand is up.
JsHandUpTable: ; 00:9D1A
    .byte $9B, $1F, $01, $80
    .byte $A3, $2F, $01, $80
    .byte $AB, $3F, $01, $80
    .byte $F4, $3F, $01, $80

;Sprite data table used when Samus is in jumpsuit and her waving hand is down.
JsHandDownTable: ; 00:9D2A
    .byte $9B, $2A, $01, $80
    .byte $9B, $2B, $01, $88
    .byte $A3, $3A, $01, $80
    .byte $AB, $3F, $01, $80

;Sprite data table used when Samus is in bikini and her waving hand is up.
BkHandUpTable: ; 00:9D3A
    .byte $9B, $0C, $01, $80
    .byte $A3, $1C, $01, $80
    .byte $AB, $3F, $01, $80
    .byte $F4, $3F, $01, $80

;Sprite data table used when Samus is in bikini and her waving hand is down.
BkHandDownTable: ; 00:9D4A
    .byte $9B, $4A, $01, $80
    .byte $9B, $4B, $01, $88
    .byte $A3, $4D, $01, $80
    .byte $AB, $3F, $01, $80

EndSamusAddrTbl: ; 00:9D5A
    .word NormalSamus               ;($9D66)Pointer to end graphic of Samus wearing suit.
    .word BackTurnedSamus           ;($9D9C)Pointer to end graphic of back turned Samus.
    .word FistRaisedSamus           ;($9DD2)Pointer to end graphic of fist raised Samus.
    .word HelmetOffSamus            ;($9E08)Pointer to end graphic of helmet off Samus.
    .word JumpsuitSamus             ;($9E3E)Pointer to end graphic of jumpsuit Samus.
    .word BikiniSamus               ;($9E74)Pointer to end graphic of bikini Samus.

;The following three bytes are loaded into sprite RAM.  The third byte (attribute byte) is
;not included.  Instead, if the MSB of the second byte (pattern byte) is set, the pattern
;byte is flipped horizontally (mirror image).  If pattern byte MSB is not set, the attribute
;byte is stored as #$00.  This is done so the code can generate the flashing Samus effect at
;the end of the game.

NormalSamus: ; 00:9D66
    .byte $93, $00, $70
    .byte $93, $01, $78
    .byte $93, $80, $80             ;Mirrored pattern at pattern table location $00.
    .byte $9B, $10, $70
    .byte $9B, $11, $78
    .byte $9B, $90, $80             ;Mirrored pattern at pattern table location $10.
    .byte $A3, $20, $70
    .byte $A3, $21, $78
    .byte $A3, $22, $80
    .byte $AB, $30, $70
    .byte $AB, $31, $78
    .byte $AB, $32, $80
    .byte $B3, $40, $70
    .byte $B3, $41, $78
    .byte $B3, $C0, $80
    .byte $BB, $50, $70
    .byte $BB, $49, $78
    .byte $BB, $D0, $80             ;Mirrored pattern at pattern table location $50.

BackTurnedSamus: ; 00:9D9C
    .byte $93, $02, $70
    .byte $93, $03, $78
    .byte $93, $04, $80
    .byte $9B, $12, $70
    .byte $9B, $13, $78
    .byte $9B, $14, $80
    .byte $A3, $05, $70
    .byte $A3, $06, $78
    .byte $A3, $07, $80
    .byte $AB, $15, $70
    .byte $AB, $16, $78
    .byte $AB, $17, $80
    .byte $B3, $08, $70
    .byte $B3, $09, $78
    .byte $B3, $88, $80             ;Mirrored pattern at pattern table location $08.
    .byte $BB, $18, $70
    .byte $BB, $19, $78
    .byte $BB, $98, $80             ;Mirrored pattern at pattern table location $18.

FistRaisedSamus: ; 00:9DD2
    .byte $93, $00, $70
    .byte $93, $01, $78
    .byte $93, $34, $80
    .byte $9B, $10, $70
    .byte $9B, $11, $78
    .byte $9B, $44, $80
    .byte $A3, $20, $70
    .byte $A3, $21, $78
    .byte $A3, $33, $80
    .byte $AB, $30, $70
    .byte $AB, $31, $78
    .byte $AB, $43, $80
    .byte $B3, $40, $70
    .byte $B3, $41, $78
    .byte $B3, $C0, $80             ;Mirrored pattern at pattern table location $40.
    .byte $BB, $50, $70
    .byte $BB, $49, $78
    .byte $BB, $D0, $80             ;Mirrored pattern at pattern table location $50.

HelmetOffSamus: ; 00:9E08
    .byte $93, $0D, $70
    .byte $93, $0E, $78
    .byte $93, $0F, $80
    .byte $9B, $35, $70
    .byte $9B, $27, $78
    .byte $9B, $28, $80
    .byte $A3, $20, $70
    .byte $A3, $21, $78
    .byte $A3, $22, $80
    .byte $AB, $30, $70
    .byte $AB, $31, $78
    .byte $AB, $32, $80
    .byte $B3, $40, $70
    .byte $B3, $41, $78
    .byte $B3, $C0, $80             ;Mirrored pattern at pattern table location $40.
    .byte $BB, $50, $70
    .byte $BB, $49, $78
    .byte $BB, $D0, $80             ;Mirrored pattern at pattern table location $50.

JumpsuitSamus: ; 00:9E3E
    .byte $93, $0D, $70
    .byte $93, $0E, $78
    .byte $93, $0F, $80
    .byte $9B, $1D, $70
    .byte $9B, $1E, $78
    .byte $A3, $2D, $70
    .byte $A3, $2E, $78
    .byte $AB, $3D, $70
    .byte $AB, $3E, $78
    .byte $B3, $08, $70
    .byte $B3, $4E, $78
    .byte $B3, $4F, $80
    .byte $BB, $45, $70
    .byte $BB, $3B, $78
    .byte $BB, $51, $80
    .byte $9B, $29, $80
    .byte $A3, $39, $80
    .byte $AB, $4C, $80

BikiniSamus: ; 00:9E74
    .byte $93, $0D, $70
    .byte $93, $0E, $78
    .byte $93, $0F, $80
    .byte $9B, $0A, $70
    .byte $9B, $0B, $78
    .byte $A3, $1A, $70
    .byte $A3, $1B, $78
    .byte $AB, $3D, $70
    .byte $AB, $3E, $78
    .byte $B3, $08, $70
    .byte $B3, $4E, $78
    .byte $B3, $4F, $80
    .byte $BB, $45, $70
    .byte $BB, $3B, $78
    .byte $BB, $51, $80
    .byte $9B, $2C, $80
    .byte $A3, $3C, $80
    .byte $AB, $4C, $80

LoadEndStarSprites: ; 00:9EAA
    ldy #$00
    L9EAC:
        lda EndStarDataTable,y
        sta SpriteRAM.28,y               ;Load the table below into sprite RAM-->
        iny                             ;starting at address $0270.
        cpy #$9C
        bne L9EAC
    rts

;Loaded into sprite RAM by routine above. Displays stars at the end of the game.

EndStarDataTable: ; 00:9EB8
    .byte $08, $23, $22, $10
    .byte $68, $23, $23, $60
    .byte $00, $23, $22, $60
    .byte $7F, $23, $23, $6A
    .byte $7F, $23, $22, $D4
    .byte $33, $23, $23, $B2
    .byte $93, $23, $22, $47
    .byte $B3, $23, $23, $95
    .byte $0B, $23, $22, $E2
    .byte $1C, $23, $23, $34
    .byte $84, $23, $22, $18
    .byte $B2, $23, $23, $EE
    .byte $40, $23, $22, $22
    .byte $5A, $23, $23, $68
    .byte $1A, $23, $22, $90
    .byte $AA, $23, $23, $22
    .byte $81, $24, $22, $88
    .byte $6A, $24, $23, $D0
    .byte $A8, $24, $22, $A0
    .byte $10, $24, $23, $70
    .byte $15, $25, $22, $42
    .byte $4A, $25, $23, $7D
    .byte $30, $25, $22, $50
    .byte $5A, $25, $23, $49
    .byte $50, $25, $22, $B9
    .byte $91, $25, $23, $B0
    .byte $19, $25, $22, $C0
    .byte $53, $25, $23, $BA
    .byte $A4, $25, $22, $D6
    .byte $98, $25, $23, $1A
    .byte $68, $25, $22, $0C
    .byte $97, $25, $23, $EA
    .byte $33, $25, $22, $92
    .byte $43, $25, $23, $65
    .byte $AC, $25, $22, $4A
    .byte $2A, $25, $23, $71
    .byte $7C, $26, $22, $B2
    .byte $73, $26, $23, $E7
    .byte $0C, $26, $22, $AA

WriteTitlePal:
    asl
    tay
    lda bank0_PalPntrTbl-2,y
    ldx bank0_PalPntrTbl-1,y
    jmp ProcessPalPPUString

EndGamePalWrite: ; 00:9F54
    asl
    tay
    lda EndGamePalPntrTbl-2,y
    ldx EndGamePalPntrTbl-1,y
    jmp ProcessPalPPUString

;The following pointer table is used by the routine above to
;find the proper palette data during the EndGame routine.

EndGamePalPntrTbl: ; 00:9F81
    .word EndGamePal00              ;($9F9B)
    .word EndGamePal01              ;($9FBF)
    .word EndGamePal02              ;($9FCB)
    .word EndGamePal03              ;($9FD7)
    .word EndGamePal04              ;($9FE3)
    .word EndGamePal05              ;($9FEF)
    .word EndGamePal06              ;($9FFB)
    .word EndGamePal07              ;($A007)
    .word EndGamePal08              ;($A013)
    .word EndGamePal09              ;($A02E)
    .word EndGamePal0A              ;($A049)
    .word EndGamePal0B              ;($9806)
    .word EndGamePal0C
    .word EndGamePal0D
    .word EndGamePal0E
    .word EndGamePal0A

EndGamePal00:
    PPUString $3F00, \
        $0F, $21, $11, $02, $0F, $29, $1B, $1A, $0F, $27, $28, $29, $0F, $28, $18, $08, $0F, $16, $19, $27, $0F, $36, $15, $17, $0F, $12, $21, $20, $0F, $35, $12, $16
    PPUStringEnd

EndGamePal01:
    PPUString $3F18, \
        $0F, $10, $20, $30, $0F, $0F, $0F, $0F
    PPUStringEnd

EndGamePal02:
    PPUString $3F18, \
        $0F, $12, $22, $32, $0F, $0B, $1B, $2B
    PPUStringEnd

EndGamePal03:
    PPUString $3F18, \
        $0F, $14, $24, $34, $0F, $09, $19, $29
    PPUStringEnd

EndGamePal04:
    PPUString $3F18, \
        $0F, $16, $26, $36, $0F, $07, $17, $27
    PPUStringEnd

EndGamePal05:
    PPUString $3F18, \
        $0F, $18, $28, $38, $0F, $05, $15, $25
    PPUStringEnd

EndGamePal06:
    PPUString $3F18, \
        $0F, $1A, $2A, $3A, $0F, $03, $13, $13
    PPUStringEnd

EndGamePal07:
    PPUString $3F18, \
        $0F, $1C, $2C, $3C, $0F, $01, $11, $21
    PPUStringEnd

EndGamePal08:
    PPUString $3F0C, \
        $0F, $18, $08, $07, $0F, $26, $05, $07, $0F, $26, $05, $07, $0F, $01, $01, $05, $0F, $13, $1C, $0C
    PPUStringEnd

EndGamePal09:
    PPUString $3F0C, \
        $0F, $08, $07, $0F, $0F, $06, $08, $0F, $0F, $06, $08, $0F, $0F, $00, $10, $0F, $0F, $01, $0C, $0F
    PPUStringEnd

EndGamePal0A:
    PPUString $3F0C, \
        $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    PPUStringEnd

EndGamePal0B:
    PPUString $3F00, \
        $0F, $2C, $2C, $2C, $0F, $2C, $2C, $2C, $0F, $2C, $2C, $2C, $0F, $2C, $2C, $2C, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F

    .byte $00                       ;End EndGamePal0B data.

;Ending Varia Suit palette (suit and suitless).
EndGamePal0C:
    PPUString $3F10, \
        $0F, $16, $19, $35, $0F, $36, $15, $19

    .byte $00

;Ending Varia Suit fade-out 1
EndGamePal0D:
    PPUString $3F0C, \
        $0F, $18, $08, $07, $0F, $26, $05, $09, $0F, $26, $05, $09, $0F, $01, $01, $05, $0F, $13, $1C, $0C

    .byte $00

;Ending Varia Suit fade-out 2
EndGamePal0E:
    PPUString $3F0C, \
        $0F, $08, $07, $0F, $0F, $06, $08, $0F, $0F, $06, $08, $0F, $0F, $00, $10, $0F, $0F, $01, $0C, $0F

    .byte $00

;The following data writes the end game background graphics.

;Writes ground graphics on name table 0 in row $2300 (25th row from top).
LA052:
    PPUString $2300, \
        $30, $31, $30, $31, $30, $31, $30, $31, $30, $31, $30, $31, $30, $31, $30, $31, $30, $31, $30, $31, $30, $31, $30, $31, $30, $31, $30, $31, $30, $31, $30, $31

    ;Writes ground graphics on name table 0 in row $2320 (26th row from top).
    PPUString $2320, \
        $32, $33, $32, $33, $32, $33, $32, $33, $32, $33, $32, $33, $32, $33, $32, $33, $32, $33, $32, $33, $32, $33, $32, $33, $32, $33, $32, $33, $32, $33, $32, $33

    ;Writes ground graphics on name table 0 in row $2340 (27th row from top).
    PPUString $2340, \
        $34, $35, $34, $35, $34, $35, $34, $35, $34, $35, $34, $35, $34, $35, $34, $35, $34, $35, $34, $35, $34, $35, $34, $35, $34, $35, $34, $35, $34, $35, $34, $35

    ;Writes ground graphics on name table 0 in row $2360 (28th row from top).
    PPUString $2360, \
        $36, $37, $36, $37, $36, $37, $36, $37, $36, $37, $36, $37, $36, $37, $36, $37, $36, $37, $36, $37, $36, $37, $36, $37, $36, $37, $36, $37, $36, $37, $36, $37

    ;Writes ground graphics on name table 0 in row $2380 (29th row from top).
    PPUString $2380, \
        $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39

    ;Writes ground graphics on name table 0 in row $23A0 (bottom row).
    PPUString $23A0, \
        $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B, $3A, $3B

    ;Sets all color bits in attribute table 0 starting at $23F0.
    PPUStringRepeat $23F0, $FF, $10

    ;Writes credits on name table 2 in row $2820 (2nd row from top).
    PPUString $282E, \
        "STAFF"

    ;Writes credits on name table 2 in row $28A0 (6th row from top).
    PPUString $28A8, \
        "SCENARIO WRITTEN BY"

    ;Writes credits on name table 2 in row $28E0 (8th row from top).
    PPUString $28EE, \
        "KANOH"

    ;Writes credits on name table 2 in row $2960 (12th row from top).
    PPUString $2966, \
        "CHARACTER DESIGNED BY"

    ;Writes credits on name table 2 in row $29A0 (14th row from top).
    PPUString $29AC, \
        "KIYOTAKE"

    ;Writes credits on name table 2 in row $2A20 (18th row from top).
    PPUString $2A2B, \
        "NEW MATSUOKA"

    ;Writes credits on name table 2 in row $2A60 (20th row from top).
    PPUString $2A6C, \
        "SHIKAMOTO"

    ;Writes credits on name table 2 in row $2AE0 (24th row from top).
    PPUString $2AEC, \
        "MUSIC BY"

    ;Writes credits on name table 2 in row $2B20 (26th row from top)
    PPUString $2B2B, \
        "HIP TANAKA"

    ;Writes credits on name table 2 in row $2BA0 (bottom row).
    PPUString $2BA7, \
        " MAIN PROGRAMMERS "

    PPUStringEnd

;The following pointer table is accessed by the NMIScreenWrite routine.
;It is used to locate the start of the PPU strings below.

EndMessageStringTbl0:
    .word LA1C2, LA1EB, LA20F, LA240

LA1C2:
    ;Writes end message on name table 0 in row $2060 (4th row from top).
    PPUString $206D, \
        "GREAT !!"

    ;Writes end message on name table 0 in row $20C0 (7th row from top).
    PPUString $20C3, \
        "YOU FULFILED YOUR MISSION."

    PPUStringEnd

LA1EB:
    ;Writes end message on name table 0 in row $2100 (9th row from top).
    PPUString $2103, \
        "IT WILL REVIVE PEACE IN"

    ;Writes end message on name table 0 in row $2140 (11th row from top).
    PPUString $2142, \
        "SPACE."

    PPUStringEnd

LA20F:
    ;Writes end message on name table 0 in row $2180 (13th row from top).
    PPUString $2183, \
        "BUT,IT MAY BE INVADED BY"

    ;Writes end message on name table 0 in row $21C0 (15th row from top).
    PPUString $21C2, \
        "THE OTHER METROID."

    PPUStringEnd

LA240:
    ;Writes end message on name table 0 in row $2200 (18th row from top).
    PPUString $2203, \
        "PRAY FOR A TRUE PEACE IN"

    ;Writes end message on name table 0 in row $2240 (19th row from top).
    PPUString $2242, \
        "SPACE!"

    PPUStringEnd

;The following pointer table is accessed by the NMIScreenWrite routine.
;It is used to locate the start of the PPU strings below.

EndMessageStringTbl1: ; 00:A265
    .word LA26D, LA276, LA27F, LA288

LA26D:
    ;Erases end message on name table 0 in row $2060 (4th row from top).
    PPUStringRepeat $206D, " ", $08

    ;Erases end message on name table 0 in row $20C0 (7th row from top).
    PPUStringRepeat $20C3, " ", $1A

    PPUStringEnd

LA276:
    ;Erases end message on name table 0 in row $2100 (9th row from top).
    PPUStringRepeat $2103, " ", $17

    ;Erases end message on name table 0 in row $2140 (11th row from top).
    PPUStringRepeat $2142, " ", $0A

    PPUStringEnd

LA27F:
    ;Erases end message on name table 0 in row $2180 (13th row from top).
    PPUStringRepeat $2183, " ", $18

    ;Erases end message on name table 0 in row $21C0 (15th row from top).
    PPUStringRepeat $21C2, " ", $12

    PPUStringEnd

LA288:
    ;Erases end message on name table 0 in row $2200 (18th row from top).
    PPUStringRepeat $2203, " ", $18

    ;Erases end message on name table 0 in row $2240 (19th row from top).
    PPUStringRepeat $2242, " ", $0A

    PPUStringEnd

;The following table is used by the LoadCredits routine to load the end credits on the screen.

CreditsPointerTbl: ; 00:A291
    .word PPUString_Credits00
    .word PPUString_Credits01
    .word PPUString_Credits02
    .word PPUString_Credits03
    .word PPUString_Credits04
    .word PPUString_Credits05
    .word PPUString_Credits06
    .word PPUString_Credits07
    .word PPUString_Credits08
    .word PPUString_Credits09
    .word PPUString_Credits0A
    .word PPUString_Credits0B
    .word PPUString_Credits0C
    .word PPUString_Credits0D
    .word PPUString_Credits0E
    .word PPUString_Credits0F
    .word PPUString_Credits10
    .word PPUString_Credits11
    .word PPUString_Credits12
    .word PPUString_Credits13
    .word PPUString_Credits14
    .word PPUString_Credits15
    .word PPUString_Credits16
    .word PPUString_Credits17
    .word PPUString_Credits18
    .word PPUString_Credits19
    .word PPUString_Credits1A
    .word PPUString_Credits1B
    .word PPUString_Credits1C
    .word PPUString_Credits1D
    .word PPUString_Credits1E
    .word PPUString_Credits1F
    .word PPUString_Credits20
    .word PPUString_Credits21
    .word PPUString_Credits22
    .word PPUString_Credits23
    .word PPUString_Credits24
    .word PPUString_Credits25
    .word PPUString_Credits24
    .word PPUString_Credits25
    .word PPUString_Credits28
    .word PPUString_Credits29
    .word PPUString_Credits28
    .word PPUString_Credits29

PPUString_Credits00:
    ;Writes credits on name table 0 in row $2020 (2nd row from top).
    PPUString $202C, \
        "HAI YUKAMI"

    ;Clears attribute table 0 starting at $23C0.
    PPUStringRepeat $23C0, $00, $20

    PPUStringEnd

PPUString_Credits01:
    ;Writes credits on name table 0 in row $2060 (4th row from top)
    PPUString $206A, \
        "ZARU SOBAJIMA"

    ;Writes credits on name table 0 in row $20A0 (6th row from top).
    PPUString $20AB, \
        "GPZ SENGOKU"

    PPUStringEnd

PPUString_Credits02:
    PPUStringEnd

PPUString_Credits03:
    ;Writes credits on name table 0 in row $2160 (12th row from top).
    PPUString $216A, \
        "N.SHIOTANI"

    ;Clears attribute table 0 starting at $23E0
    PPUStringRepeat $23E0, $00, $20

    PPUStringEnd

;Writes credits on name table 0 in row $21E0 (16th row from top).
PPUString_Credits04:
    PPUString $21EB, \
        "M.HOUDAI"

    PPUStringEnd

PPUString_Credits05:
    ;Writes credits on name table 0 in row $22A0 (22nd row from top).
    PPUString $22A7, \
        "SPECIAL THANKS  TO"

    PPUStringEnd

PPUString_Credits06:
    ;Writes credits on name table 0 in row $22E0 (24nd row from top).
    PPUString $22EC, \
        "KEN ZURI"

    ;Writes credits on name table 0 in row $2320 (26nd row from top).
    PPUString $232E, \
        "SUMI"

    PPUStringEnd

PPUString_Credits07:
    ;Writes credits on name table 0 in row $2360 (28nd row from top).
    PPUString $236C, \
        "INUSAWA"

    ;Writes credits on name table 0 in row $23A0 (bottom row).
    PPUString $23AD, \
        "KACHO"

    PPUStringEnd

PPUString_Credits08:
    ;Writes credits on name table 2 in row $2820 (2nd row from top).
    PPUStringRepeat $2828, " ", $0E

    ;Writes credits on name table 2 in row $2860 (4th row from top).
    PPUString $286C, \
        "HYAKKAN"

    PPUStringEnd

PPUString_Credits09:
    ;Writes credits on name table 2 in row $28A0 (6th row from top).
    PPUString $28A8, \
        "     GOYAKE        "

    ;Writes credits on name table 2 in row $28E0 (8th row from top).
    PPUStringRepeat $28E8, " ", $0F

    PPUStringEnd

PPUString_Credits0A:
    ;Writes credits on name table 2 in row $2920 (10th row from top).
    PPUString $292C, \
        "HARADA "

    PPUStringEnd

PPUString_Credits0B:
    ;Writes credits on name table 2 in row $2960 (12th row from top).
    PPUString $2966, \
        "       PENPEN         "

    ;Writes credits on name table 2 in row $29A0 (14th row from top).
    PPUStringRepeat $29A8, " ", $0F

    PPUStringEnd

PPUString_Credits0C:
    ;Writes credits on name table 2 in row $29E0 (16th row from top).
    PPUString $29EA, \
        "CONVERTED BY"

    PPUStringEnd

PPUString_Credits0D:
    ;Writes credits on name table 2 in row $2A20 (18th row from top).
    PPUString $2A26, \
        "     T.NARIHIRO  "

    ;Writes credits on name table 2 in row $2A60 (20th row from top).
    PPUStringRepeat $2A67, " ", $11

    PPUStringEnd

PPUString_Credits0E:
    ;Writes credits on name table 2 in row $2AE0 (24th row from top).
    PPUString $2AEB, \
        "ASSISTED BY"

    ;Writes credits on name table 2 in row $2B20 (26th row from top).
    PPUString $2B28, \
        "   MAKOTO KANOH"

    PPUStringEnd

PPUString_Credits0F:
    ;Writes credits on name table 2 in row $2BA0 (bottom row).
    PPUStringRepeat $2BA6, " ", $13

    PPUStringEnd

PPUString_Credits10:
    ;Writes credits on name table 0 in row $2020 (2nd row from the top).
    PPUString $202B, \
        "DIRECTED BY"

    PPUStringEnd

PPUString_Credits11:
    ;Writes credits on name table 0 in row $2060 (4th row from the top).
    PPUString $2067, \
        "     YAMAMOTO       "

    ;Writes credits on name table 0 in row $20A0 (6th row from the top).
    PPUStringRepeat $20AA, " ", $0E

    PPUStringEnd

PPUString_Credits12:
    ;Writes credits on name table 0 in row $2120 (10th row from the top).
    PPUString $2127, \
        "  CHIEF DIRECTOR "

    ;Writes credits on name table 0 in row $2160 (12th row from the top).
    PPUString $2168, \
        "  SATORU OKADA   "

    PPUStringEnd

PPUString_Credits13:
    ;Writes credits on name table 0 in row $21E0 (16th row from the top).
    PPUStringRepeat $21E6, " ", $18

    PPUStringEnd

PPUString_Credits14:
    ;Writes credits on name table 0 in row $2220 (18th row from the top).
    PPUString $222B, \
        "PRODUCED BY     "

    ;Writes credits on name table 0 in row $2260 (20th row from the top).
    PPUString $226A, \
        "GUNPEI YOKOI"

    PPUStringEnd

PPUString_Credits15:
    ;Writes credits on name table 0 in row $22A0 (22nd row from the top).
    PPUStringRepeat $22A6, " ", $13

    ;Writes credits on name table 0 in row $22E0 (24th row from the top).
    PPUStringRepeat $22E8, " ", $0F

    PPUStringEnd

PPUString_Credits16:
    ;Writes credits on name table 0 in row $2320 (26th row from the top).
    PPUStringRepeat $2329, " ", $0D

    ;Writes credits on name table 0 in row $2340 (27th row from the top).
    PPUString $234B, \
        "COPYRIGHT"

    PPUStringEnd

PPUString_Credits17:
    ;Writes credits on name table 0 in row $2360 (28th row from the top).
    PPUStringRepeat $236B, " ", $0A

    ;Writes credits on name table 0 in row $2380 (29th row from the top).
    PPUString $238E, \
        "1986"

    ;Writes credits on name table 0 in row $23A0 (bottom row).
    PPUStringRepeat $23A8, " ", $0F

    PPUStringEnd

PPUString_Credits18:
    ;Writes credits on name table 2 in row $2800 (top row)
    PPUString $280C, \
        "NINTENDO"

    ;Writes credits on name table 2 in row $2860 (4th row from top).
    PPUStringRepeat $2866, " ", $11

    PPUStringEnd

PPUString_Credits19:
    ;Writes credits on name table 2 in row $28A0 (6th row from top).
    PPUStringRepeat $28AA, " ", $0C

    PPUStringEnd

PPUString_Credits1A:
    ;Writes credits on name table 2 in row $2920 (10th row from top).
    PPUStringRepeat $2926, " ", $1B

    PPUStringEnd

PPUString_Credits1B:
    ;Writes credits on name table 2 in row $2960 (12th row from top).
    PPUStringRepeat $2967, " ", $12

    PPUStringEnd

PPUString_Credits1C:
    ;Writes credits on name table 2 in row $29E0 (16th row from top).
    PPUStringRepeat $29E6, " ", $14

    PPUStringEnd

PPUString_Credits1D:
    ;Writes credits on name table 2 in row $2A20 (18th row from top).
    PPUStringRepeat $2A28, " ", $15

    PPUStringEnd

PPUString_Credits1E:
    ;Writes credits on name table 2 in row $2AE0 (24th row from top).
    PPUStringRepeat $2AE6, " ", $10

    PPUStringEnd

PPUString_Credits1F:
    ;Writes credits on name table 2 in row $2B20 (26th row from top).
    PPUStringRepeat $2B29, " ", $0E

PPUString_Credits20:
    PPUStringEnd

;Writes the top half of 'The End' on name table 0 in row $2020 (2nd row from top).
PPUString_Credits21:
    PPUString $2026, \
        "     ", $24, $25, $26, $27, "  ", $2C, $2D, $2E, $2F, "     "

    PPUStringEnd

;Writes the bottom half of 'The End' on name table 0 in row $2040 (3rd row from top).
PPUString_Credits22:
    PPUString $204B, \
        $28, $29, $2A, $2B, "  ", $02, $03, $04, $05

    ;Writes credits on name table 0 in row $2060 (4th row from top).
    PPUStringRepeat $206A, " ", $0C

    PPUStringEnd

PPUString_Credits23:
    ;Writes credits on name table 0 in row $2120 (10th row from top).
    PPUStringRepeat $2126, " ", $13

    PPUStringEnd

PPUString_Credits24:
    ;Writes credits on name table 0 in row $2160 (12th row from top).
    PPUStringRepeat $216A, " ", $0C

    PPUStringEnd

PPUString_Credits25:
    ;Writes credits on name table 0 in row $2180 (13th row from top).
    PPUString $2188, \
        "                 "

PPUString_Credits28:
    ;Writes credits on name table 0 in row $2220 (18th row from top).
    PPUStringRepeat $2226, " ", $0B

    PPUStringEnd

PPUString_Credits29:
    PPUStringEnd

;Code I moved from bank 7 to free up space in there

;Calls the proper routine according to the bank number in CurrentMainBank.

GoBankInit:
    lda CurrentMainBank
    jsr ChooseRoutine
        .word InitBank0                 ;($C531)Initialize bank 0.
        .word InitGenericAreaBank       ;($C552)Initialize bank 1.
        .word InitGenericAreaBank
        .word InitGenericAreaBank       ;($C590)Initialize bank 3.
        .word InitGenericAreaBank
        .word InitGenericAreaBank
        .word ExitSub                   ;($C45C)Rts
        .word ExitSub                   ;($C45C)Rts

;Title screen memory page.

InitBank0:
    ldy #$00                        ;
    sty GamePaused                  ;Ensure game is not paused.
    iny                             ;Y=1.
    sty GameMode                    ;Game is at title routines.
    jsr ScreenNmiOff                ;($C45D)Waits for NMI to end then turns it off.
    jsr ClearNameTables             ;($C158)Erase name table data.

    ;Loads sprite info for stars into RAM $6E00 thru 6E9F.
    ldy #$A0
    @loop:
        lda IntroStarsData-1,y
        sta IntroStarSprite-1,y
        dey
        bne @loop

    jsr InitTitleGFX                ;($C5D7)Load title GFX.
    jmp NMIOn                       ;($C487)Turn on VBlank interrupts.

InitEndGFX:
    lda #$01                        ;
    sta GameMode                    ;Game is at title/end game.
    lda #EndingSPR/$400.b
    sta CHRBank4
    jsr LoadAreaGFX
    .byte EndingBG/$400
    .byte EndingBG/$400+1
    .byte EndingBG/$400+2
    .byte EndingBG/$400+3
    .byte EndingSPR/$400+1
    .byte EndingSPR/$400+2
    .byte EndingSPR/$400+3

InitTitleGFX:
    lda #TitleSPR/$400.b
    sta CHRBank4
    jsr LoadAreaGFX
    .byte TitleBG/$400
    .byte TitleBG/$400+1
    .byte TitleBG/$400+2
    .byte TitleBG/$400+3
    .byte TitleSPR/$400+1
    .byte TitleSPR/$400+2
    .byte TitleSPR/$400+3

LoadSamusGFX:
.if CFG_NUM_SAMUS_TILES == 16
    ldy #SamusSuitGFX4/$400.b
.elif CFG_NUM_SAMUS_TILES == 32
    ldy #SamusSuitGFX1/$400.b
.endif

    ;Branch if wearing suit
    lda JustInBailey
    beq LC5EB
        ;Switch to girl gfx
    .if CFG_NUM_SAMUS_TILES == 16
        ldy #SamusSuitlessGFX4/$400.b
    .elif CFG_NUM_SAMUS_TILES == 32
        ldy #SamusSuitlessGFX1/$400.b
    .endif
    LC5EB:
    sty CHRBank4
    rts

InitGenericAreaBank:
    lda #$00                        ;GameMode = play.
    sta GameMode                    ;
    lda CurrentMainBank
    jsr ChooseRoutine
        .word ExitSub
        .word InitBrinstarGFX
        .word InitNorfairGFX
        .word InitTourianGFX
        .word InitKraidGFX
        .word InitRidleyGFX
        .word ExitSub
        .word ExitSub

InitBrinstarGFX:
    jsr LoadAreaGFX
    .byte BrinstarBG/$400
    .byte BrinstarBG/$400+1
    .byte BrinstarBG/$400+2
    .byte BrinstarBG/$400+3
.if CFG_NUM_SAMUS_TILES != 64
    .byte ItemsGFX/$400
    .byte BlankSPR/$400
.elif CFG_NUM_SAMUS_TILES == 64
    .byte CommonSPRGFX/$400
    .byte ItemsGFX/$400
.endif
    .byte BrinstarSPR/$400

InitNorfairGFX:
    jsr LoadAreaGFX
    .byte NorfairBG/$400
    .byte NorfairBG/$400+1
    .byte NorfairBG/$400+2
    .byte NorfairBG/$400+3
.if CFG_NUM_SAMUS_TILES != 64
    .byte ItemsGFX/$400
    .byte BlankSPR/$400
.elif CFG_NUM_SAMUS_TILES == 64
    .byte CommonSPRGFX/$400
    .byte ItemsGFX/$400
.endif
    .byte NorfairSPR/$400

InitTourianGFX:
    jsr LoadAreaGFX
    .byte TourianBG/$400
    .byte TourianBG/$400+1
    .byte TourianBG/$400+2
    .byte TourianBG/$400+3
.if CFG_NUM_SAMUS_TILES != 64
    .byte ItemsGFX/$400
    .byte BlankSPR/$400
.elif CFG_NUM_SAMUS_TILES == 64
    .byte CommonSPRGFX/$400
    .byte ItemsGFX/$400
.endif
    .byte TourianSPR/$400

InitKraidGFX:
    jsr LoadAreaGFX
    .byte KraidBG/$400
    .byte KraidBG/$400+1
    .byte KraidBG/$400+2
    .byte KraidBG/$400+3
.if CFG_NUM_SAMUS_TILES != 64
    .byte ItemsGFX/$400
    .byte BlankSPR/$400
.elif CFG_NUM_SAMUS_TILES == 64
    .byte CommonSPRGFX/$400
    .byte ItemsGFX/$400
.endif
    .byte KraidSPR/$400

InitRidleyGFX:
    jsr LoadAreaGFX
    .byte RidleyBG/$400
    .byte RidleyBG/$400+1
    .byte RidleyBG/$400+2
    .byte RidleyBG/$400+3
.if CFG_NUM_SAMUS_TILES != 64
    .byte ItemsGFX/$400
    .byte BlankSPR/$400
.elif CFG_NUM_SAMUS_TILES == 64
    .byte CommonSPRGFX/$400
    .byte ItemsGFX/$400
.endif
    .byte RidleySPR/$400

LoadAreaGFX:
    pla
    sta $07
    pla
    sta $08
    ldy #$01
    lda ($07),y
    sta CHRBank0
    iny
    lda ($07),y
    sta CHRBank1
    iny
    lda ($07),y
    sta CHRBank2
    iny
    lda ($07),y
    sta CHRBank3
    iny
    lda ($07),y
    sta CHRBank5
    iny
    lda ($07),y
    sta CHRBank6
    iny
    lda ($07),y
    sta CHRBank7
    rts

;---------------------------------------[ Remove intro sprites ]-------------------------------------

;The following routine is used in the Intro to remove the sparkle sprites and the crosshairs
;sprites every frame.  It does this by loading the sprite values with #$F4 which moves the
;sprite to the bottom right of the screen and uses a blank graphic for the sprite.

RemoveIntroSprites:
    ;Start at address $200. ($00) = $0200 (sprite page)
    ldy #>SpriteRAM.b
    sty $01
    ldy #<SpriteRAM.b
    sty $00
    ;Prepare to clear RAM $0200-$025F
    ldy #$5F
    lda #$F4
    @loop:
        sta ($00),y
        dey
        ;Loop unitl $200 thru $25F is filled with #$F4.
        bpl @loop
    ; branch if mode = Play.
    lda GameMode
    beq Exit101
        jmp DecSpriteYCoord

;----------------------------------------[ Choose ending ]-------------------------------------------

;Determine what type of ending is to be shown, based on Samus' age.
ChooseEnding:
    ldy #$01
    @loop:
        ;If SamusAge+2 anything but #$00, load worst ending(more than 37 hours of gameplay).
        ;(BUG! Should be checking SamusAge+3 here too)
        lda SamusAge+2
        bne @endingFound
        ;If SamusAge+1 is slower or equal to the threshold in AgeTable, confirm ending
        lda SamusAge+1
        cmp AgeTable-1,y
        bcs @endingFound
        ;SamusAge+1 is faster than that threshold
        iny
        ;loop if there exists a better ending to check
        cpy #$05
        bne @loop
        ;this is the best ending, dont loop anymore
@endingFound:
    ;Store the ending number (1..5), 5=best ending
    sty EndingType

    ;Was the best or 2nd best ending achieved? Branch if not (suit stays on)
    lda #$00
    cpy #$04
    bcc @endIf_A
        ;Suit OFF, baby!
        lda #$01
    @endIf_A:
    sta JustInBailey
Exit101:
    rts

;Table used by above subroutine to determine ending type.
AgeTable:
    .byte $7A                       ;Max. 37 hours
    .byte $16                       ;Max. 6.7 hours
    .byte $0A                       ;Max. 3.0 hours
    .byte $04                       ;Best ending. Max. 1.2 hours

;---------------------------------------[ Display status bar ]---------------------------------------

;Displays Samus' status bar components.

DisplayBar:
    ldy #$00                        ;Reset data index.
    lda SpritePagePos               ;Load current sprite index.
    pha                             ;save sprite page pos.
    pha
    tax
    @loop:
        ;Store contents of DataDisplayTbl in sprite RAM.
        lda DataDisplayTbl,y
        sta SpriteRAM,x
        inx
        iny
        lda DataDisplayTbl,y
        sta SpriteRAM,x
        inx
        iny
        lda DataDisplayTbl,y
        sta SpriteRAM,x
        inx
        iny
        lda DataDisplayTbl,y
        sta SpriteRAM,x
        inx
        iny
        ;At end of DataDisplayTbl? If not, loop to load next byte from table.
        cpy #10*4.b
        bne @loop

;Display 2-digit health count.
    stx SpritePagePos               ;Save new location in sprite RAM.
    pla                             ;Restore initial sprite page pos.
    tax                             ;
    lda Health+1                    ;
    and #$0F                        ;Extract upper health digit.
    jsr SPRWriteDigit               ;($E173)Display digit on screen.
    lda Health                    ;
    jsr Adiv16                      ;($C2BF)Move lower health digit to 4 LSBs.
    jsr SPRWriteDigit               ;($E173)Display digit on screen.
    ldy EndTimer+1.b                ;
    iny                             ;Is Samus in escape sequence?-->
    bne LE11C                          ;If so, branch.
    ldy MaxMissiles                 ;
    beq LE10A                           ;Don't show missile count if Samus has no missile containers.

;Display 3-digit missile count.
    lda MissileCount                ;
    jsr HexToDec                    ;($E198)Convert missile hex count to decimal cout.
    lda $02                         ;Upper digit.
    jsr SPRWriteDigit               ;($E173)Display digit on screen.
    lda $01                         ;Middle digit.
    jsr SPRWriteDigit               ;($E173)Display digit on screen.
    lda $00                         ;Lower digit.
    jsr SPRWriteDigit               ;($E173)Display digit on screen.
    bne LE14A                         ;Branch always.

;Samus has no missiles, erase missile sprite.
LE10A:
    lda #$FF                        ;"Blank" tile.
    cpx #$F4                        ;If at last 3 sprites, branch to skip.
    bcs LE14A                          ;
    sta SpriteRAM.3.tileID,x             ;Erase left half of missile.
    cpx #$F0                        ;If at last 4 sprites, branch to skip.
    bcs LE14A                          ;
    sta SpriteRAM.4.tileID,x             ;Erase right half of missile.
    bne LE14A                          ;Branch always.

;Display 3-digit end sequence timer.
LE11C:
    lda EndTimer+1.b                ;
    jsr Adiv16                      ;($C2BF)Upper timer digit.
    jsr SPRWriteDigit               ;($E173)Display digit on screen.
    lda EndTimer+1.b                ;
    and #$0F                        ;Middle timer digit.
    jsr SPRWriteDigit               ;($E173)Display digit on screen.
    lda EndTimer                  ;
    jsr Adiv16                      ;($C2BF)Lower timer digit.
    jsr SPRWriteDigit               ;($E173)Display digit on screen.
    lda #$1E+CFG_NUM_SAMUS_TILES.b  ;"TI" sprite(left half of "TIME").
    sta SpriteRAM.0.tileID,x             ;
    inc SpriteRAM.0.attrib,x             ;Change color of sprite.
    cpx #$FC                        ;If at last sprite, branch to skip.
    bcs LE14A                           ;
    lda #$1F+CFG_NUM_SAMUS_TILES.b  ;"ME" sprite(right half of "TIME").
    sta SpriteRAM.1.tileID,x             ;
    inc SpriteRAM.1.attrib,x             ;Change color of sprite.

LE14A:
    ldx SpritePagePos               ;Restore initial sprite page pos.
    lda MaxHealth+1                 ;
    and #$F0                        ;
    beq LE16C@checkOverflow                          ;Branch to exit if Samus has no energy tanks.

;Display full/empty energy tanks.
    jsr Adiv16
    sta $03                         ;Temp store tank count.
    ldy #$00                        ;Tank index.
    lda #$5C                        ;"Full energy tank" tile.
    sta $00                         ;
    lda Health+1                    ;
    jsr Adiv16                      ;($C2BF)/16. A contains # of full energy tanks.
    sta $01                         ;Storage of full tanks.
    bne AddTanks                    ;Branch if at least 1 tank is full.
    lda #$4A                        ;Else switch to "empty energy tank" tile.
    sta $00

AddTanks:
    ;Add energy tank to Samus' data display.
    lda EnergyTankYPositions,y
    sta SpriteRAM.0.y,x
    ;Tile value.
    lda $00
    sta SpriteRAM.0.tileID,x
    ;Palette #.
    lda #$00
    sta SpriteRAM.0.attrib,x
    ;X coord.
    lda EnergyTankXPositions,y
    sta SpriteRAM.0.x,x
    inx
    inx
    inx
    inx
    iny
    dec $01                         ;Any more full energy tanks left?-->
    bne LE16C                           ;If so, then branch.-->
        lda #$4A                        ;Otherwise, switch to "empty energy tank" tile.
        sta $00
    LE16C:
    dec $03                         ;done all tanks?-->
    bne AddTanks                    ;if not, loop to do another.

    stx SpritePagePos               ;Store new sprite page position.
@checkOverflow:
    ; overflow failsafe
    pla
    cmp SpritePagePos
    bcc RTS_E172
        lda #$00
        sta SpritePagePos
RTS_E172:
    rts

;----------------------------------------[Sprite write digit ]---------------------------------------

;A=value in range 0..9. #$A0 is added to A(the number sprites begin at $A0), and the result is stored
;as the tile # for the sprite indexed by X.

SPRWriteDigit:
    clc
    adc #$20+CFG_NUM_SAMUS_TILES.b  ;#$A0 is index into pattern table for numbers.
    sta SpriteRAM.0.tileID,x             ;Store proper nametable pattern in sprite RAM.
    ;Find next sprite pattern table byte.
    ; fallthrough

;-----------------------------------------[ Add 4 to x ]---------------------------------------------

Xplus4:
    ;Add 4 to value stored in X.
    inx
    inx
    inx
    inx
    rts

EnergyTankXPositions:
    .byte $18,$22,$2C,$36
    .byte $18,$22,$2C,$36

EnergyTankYPositions:
    .if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_PAL"
        .byte $17,$17,$17,$17
        .byte $0D,$0D,$0D,$0D
    .elif BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP" || BUILDTARGET == "NES_CNSUS"
        .byte $15,$15,$15,$15
        .byte $0B,$0B,$0B,$0B
    .endif

;------------------------------------[ Convert hex to decimal ]--------------------------------------

;Convert 8-bit value in A to 3 decimal digits.
;Upper digit put in $02, middle in $01 and lower in $00.
HexToDec:
    ldy #100                        ;Find upper digit.
    sty $0A                         ;
    jsr DivideByRepeatedSubtraction ;Extract hundreds digit.
    sty $02                         ;Store upper digit in $02.

    ldy #10                         ;Find middle digit.
    sty $0A                         ;
    jsr DivideByRepeatedSubtraction ;Extract tens digit.
    sty $01                         ;Store middle digit in $01.

    sta $00                         ;Store lower digit in $00
    rts

; A is the dividend
; $0A is the divisor
; returns quotient in Y and remainder in A
DivideByRepeatedSubtraction: ;($E1AD)
    ldy #$00
    sec
    ;Loop and subtract value in $0A from A until carry flag is not set.
    @loop:
        iny
        sbc $0A
        bcs @loop
    ;the last subtraction made A negative
    ;undo last subtraction
    dey
    adc $0A
    rts

;-------------------------------------[ Status bar sprite data ]-------------------------------------

;Sprite data for Samus' data display

DataDisplayTbl:
    .byte $21,$20+CFG_NUM_SAMUS_TILES,$01,$30           ;Upper health digit.
    .byte $21,$20+CFG_NUM_SAMUS_TILES,$01,$38           ;Lower health digit.
    .if BUILDTARGET == "NES_NTSC" || BUILDTARGET == "NES_PAL"
        .byte $2B,$FF,$01,$28           ;Upper missile digit.
        .byte $2B,$FF,$01,$30           ;Middle missile digit.
        .byte $2B,$FF,$01,$38           ;Lower missile digit.
        .byte $2B,$02+CFG_NUM_SAMUS_TILES,$00,$18           ;Left half of missile.
        .byte $2B,$03+CFG_NUM_SAMUS_TILES,$00,$20           ;Right half of missile.
    .elif BUILDTARGET == "NES_MZMUS" || BUILDTARGET == "NES_MZMJP" || BUILDTARGET == "NES_CNSUS"
        .byte $2D,$FF,$01,$28           ;Upper missile digit.
        .byte $2D,$FF,$01,$30           ;Middle missile digit.
        .byte $2D,$FF,$01,$38           ;Lower missile digit.
        .byte $2D,$02+CFG_NUM_SAMUS_TILES,$00,$18           ;Left half of missile.
        .byte $2D,$03+CFG_NUM_SAMUS_TILES,$00,$20           ;Right half of missile.
    .endif
    .byte $21,$19+CFG_NUM_SAMUS_TILES,$01,$18           ;E
    .byte $21,$1A+CFG_NUM_SAMUS_TILES,$01,$20           ;N
    .byte $21,$1B+CFG_NUM_SAMUS_TILES,$00,$28           ;..

;-------------------------------------[ Compressed nametables ]-------------------------------------

TitleNametable_Compressed:
    .incbin "title/title_nametable_compressed.bin"

;-------------------------------------------[ World map ]--------------------------------------------

.align $100 ;Needs to be aligned, see GetRoomNum

WorldMap:
    .incbin "data/world_map.bin"

.ends

