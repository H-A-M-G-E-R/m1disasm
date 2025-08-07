SongJunkoThemeHeader:
    SongHeader NoteLengthsTbl@6, $FF, $F0, $01, $02
    .word @sq1, @sq2, @tri, @noise
    .byte $B6, $57

@sq1:
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "E4"
        SongNote "B3"
        SongNote "F#4"
        SongNote "B3"
        SongNote "G4"
        SongNote "B3"
        SongNote "F#4"
        SongNote "B3"
        SongNote "D4"
        SongNote "A3"
        SongNote "E4"
        SongNote "A3"
        SongNote "F#4"
        SongNote "A3"
        SongNote "E4"
        SongNote "A3"
        SongNote "C4"
        SongNote "G3"
        SongNote "D4"
        SongNote "G3"
        SongNote "E4"
        SongNote "G3"
        SongNote "C4"
        SongNote "G3"
        SongNote "B3"
        SongNote "B2"
        SongNote "A3"
        SongNote "B2"
        SongNote "G3"
        SongNote "B2"
        SongNote "F#3"
        SongNote "B2"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "E5"
        SongNoteLength $2
        SongNote "E5"
        SongNoteLength $1
        SongNote "B5"
        SongNote "A5"
        SongNote "G5"
        SongNote "F#5"
        SongNoteLength $2
        SongNote "G5"
        SongNoteLength $1
        SongNote "F#5"
        SongNoteLength $0
        SongNote "E5"
        SongNote "F#5"
        SongNoteLength $5
        SongNote "D5"
        SongNoteLength $2
        SongNote "A5"
        SongNoteLength $1
        SongNote "A4"
        SongNote "C5"
        SongNote "E5"
        SongNote "F#5"
        SongNote "G5"
        SongNote "F#5"
        SongNote "E5"
        SongNoteLength $3
        SongNote "G5"
        SongNote "F#5"
        SongNoteLength $0
        SongNote "D5"
        SongNote "D#5"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "E4"
        SongNote "B3"
        SongNote "F#4"
        SongNote "B3"
        SongNote "G4"
        SongNote "B3"
        SongNote "F#4"
        SongNote "B3"
        SongNote "D4"
        SongNote "A3"
        SongNote "E4"
        SongNote "A3"
        SongNote "F#4"
        SongNote "A3"
        SongNote "E4"
        SongNote "A3"
        SongNote "C4"
        SongNote "G3"
        SongNote "D4"
        SongNote "G3"
        SongNote "E4"
        SongNote "G3"
        SongNote "C4"
        SongNote "G3"
        SongNote "B3"
        SongNote "B2"
        SongNote "A3"
        SongNote "B2"
        SongNote "G3"
        SongNote "B2"
        SongNote "F#3"
        SongNote "B2"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $0
        SongNote "E5"
        SongNote "G5"
        SongRest
        SongNote "E5"
        SongNote "G5"
        SongRest
        SongNote "E5"
        SongNote "G5"
        SongRest
        SongNote "E5"
        SongNote "B5"
        SongNote "E6"
        SongNote "B5"
        SongNote "A5"
        SongNote "G5"
        SongNote "E5"
        SongNote "A5"
        SongNote "A5"
        SongRest
        SongNote "A5"
        SongRest
        SongNote "A5"
        SongNote "B5"
        SongRest
        SongNoteLength $2
        SongNote "A5"
        SongNoteLength $A
        SongNote "A5"
        SongNote "G#5"
        SongNote "G5"
        SongNote "F#5"
        SongNote "F5"
        SongNote "E5"
        SongNote "D#5"
        SongNote "D5"
        SongNoteLength $0
        SongNote "A5"
        SongNote "G5"
        SongNote "F#5"
        SongNoteLength $1
        SongNote "G5"
        SongNoteLength $0
        SongNote "F#5"
        SongNote "E5"
        SongNoteLength $1
        SongNote "F#5"
        SongNoteLength $0
        SongNote "E5"
        SongNote "F#5"
        SongNote "G5"
        SongNote "A5"
        SongNote "G5"
        SongNote "A5"
        SongNote "A#5"
        SongNote "B5"
        SongNoteLength $1
        SongNote "B5"
        SongNote "B5"
        SongNoteLength $0
        SongNote "B5"
        SongNoteLength $1
        SongNote "D6"
        SongNoteLength $2
        SongNote "B5"
        SongNoteLength $A
        SongNote "B5"
        SongNote "A#5"
        SongNote "A5"
        SongNote "G#5"
        SongNote "G5"
        SongNote "F#5"
        SongNote "F5"
        SongNote "E5"
    SongRepeat
    SongEnd

@sq2:
    SongRepeatSetup $8
        SongNoteLength $2
        SongNote "G3"
        SongNote "A3"
        SongNote "B3"
        SongNote "A3"
        SongNote "F#3"
        SongNote "G3"
        SongNote "A3"
        SongNote "G3"
        SongNote "E3"
        SongNote "F#3"
        SongNote "G3"
        SongNote "E3"
        SongNote "D#3"
        SongNote "E3"
        SongNote "F#3"
        SongNote "B3"
    SongRepeat

@tri:
    SongNoteLength $3
    SongNote "E5"
    SongNoteLength $1
    SongRest
    SongNote "B4"
    SongNote "E5"
    SongNote "G5"
    SongNote "F#5"
    SongNoteLength $2
    SongNote "E5"
    SongNote "D5"
    SongNoteLength $1
    SongNote "B4"
    SongNoteLength $0
    SongNote "A4"
    SongNote "E4"
    SongNoteLength $5
    SongNote "A4"
    SongNoteLength $1
    SongNote "G4"
    SongNote "E4"
    SongNoteLength $2
    SongNote "G4"
    SongNoteLength $1
    SongNote "G4"
    SongNote "E4"
    SongNote "G4"
    SongNoteLength $2
    SongNote "A4"
    SongNote "B4"
    SongNote "D4"
    SongNoteLength $3
    SongNote "E5"
    SongNoteLength $1
    SongNote "D5"
    SongNote "E5"
    SongNote "B5"
    SongNoteLength $A
    SongNote "D#6"
    SongNoteLength $0
    SongNote "E6"
    SongNoteLength $A
    SongRest
    SongNoteLength $2
    SongNote "D6"
    SongNote "C6"
    SongNote "B5"
    SongNote "A5"
    SongNoteLength $1
    SongNote "F#5"
    SongNote "E5"
    SongNoteLength $2
    SongNote "F#5"
    SongNote "G5"
    SongNote "G#5"
    SongNoteLength $0
    SongNote "A5"
    SongNote "A#5"
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "B5"
        SongNote "B4"
        SongNote "B4"
    SongRepeat
    SongNote "B5"
    SongNote "B4"
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "E5"
        SongNote "B4"
        SongNote "F#5"
        SongNote "B4"
        SongNote "G5"
        SongNote "B4"
        SongNote "F#5"
        SongNote "B4"
        SongNote "D5"
        SongNote "A4"
        SongNote "E5"
        SongNote "A4"
        SongNote "F#5"
        SongNote "A4"
        SongNote "E5"
        SongNote "A4"
        SongNote "C5"
        SongNote "G4"
        SongNote "D5"
        SongNote "G4"
        SongNote "E5"
        SongNote "G4"
        SongNote "C5"
        SongNote "G4"
        SongNote "B4"
        SongNote "B3"
        SongNote "A4"
        SongNote "B3"
        SongNote "G4"
        SongNote "B3"
        SongNote "F#4"
        SongNote "B3"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $0
        SongNote "E5"
        SongNote "G5"
        SongNote "A5"
        SongNoteLength $2
        SongNote "B5"
        SongNoteLength $0
        SongNote "E6"
        SongNote "B5"
        SongNote "A5"
        SongNote "G5"
        SongNote "F#5"
        SongNote "G5"
        SongNote "A5"
        SongNote "E5"
        SongNote "G5"
        SongNoteLength $A
        SongNote "A5"
        SongRest
        SongNote "A5"
        SongRest
        SongRest
        SongRest
        SongNote "A5"
        SongRest
        SongRest
        SongRest
        SongNote "A5"
        SongRest
        SongNote "B5"
        SongRest
        SongRest
        SongRest
        SongNoteLength $2
        SongNote "A5"
        SongNoteLength $A
        SongNote "A5"
        SongNote "G#5"
        SongNote "G5"
        SongNote "F#5"
        SongNote "F5"
        SongNote "E5"
        SongNote "D#5"
        SongNote "D5"
        SongNoteLength $0
        SongNote "A4"
        SongNote "C5"
        SongNote "E5"
        SongNote "G5"
        SongNoteLength $1
        SongRest
        SongNoteLength $0
        SongNote "A4"
        SongNote "C5"
        SongNote "E5"
        SongNote "A5"
        SongNoteLength $1
        SongRest
        SongNoteLength $2
        SongNote "A#5"
        SongNoteLength $A
        SongNote "B5"
        SongRest
        SongNote "B5"
        SongRest
        SongRest
        SongRest
        SongNote "B5"
        SongRest
        SongRest
        SongRest
        SongNote "B5"
        SongRest
        SongNote "D6"
        SongRest
        SongRest
        SongRest
        SongNoteLength $2
        SongNote "B5"
        SongNoteLength $A
        SongNote "B5"
        SongNote "A#5"
        SongNote "A5"
        SongNote "G#5"
        SongNote "G5"
        SongNote "F#5"
        SongNote "F5"
        SongNote "E5"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "E5"
        SongNote "B4"
        SongNote "F#5"
        SongNote "B4"
        SongNote "G5"
        SongNote "B4"
        SongNote "F#5"
        SongNote "B4"
        SongNote "D5"
        SongNote "A4"
        SongNote "E5"
        SongNote "A4"
        SongNote "F#5"
        SongNote "A4"
        SongNote "E5"
        SongNote "A4"
        SongNote "C5"
        SongNote "G4"
        SongNote "D5"
        SongNote "G4"
        SongNote "E5"
        SongNote "G4"
        SongNote "C5"
        SongNote "G4"
        SongNote "B4"
        SongNote "B3"
        SongNote "A4"
        SongNote "B3"
        SongNote "G4"
        SongNote "B3"
        SongNote "F#4"
        SongNote "B3"
    SongRepeat

@noise:
    SongRepeatSetup $10
        SongNoteLength $1
        .byte $1D
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $0F
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $1D
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $0F
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $1D
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $0F
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $1D
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $0F
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $1D
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $0F
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $1D
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $0F
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $1D
        SongNoteLength $0
        .byte $08
        .byte $09
        SongNoteLength $1
        .byte $0F
        SongNoteLength $0
        .byte $08
        .byte $09
        .byte $1D
        SongNoteLength $1
        .byte <DrumBeat03SFXData
        SongNoteLength $0
        .byte $1D
        .byte <DrumBeat03SFXData
        .byte $0F
        .byte $08
        .byte $09
    SongRepeat
