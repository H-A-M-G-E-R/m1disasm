SongSurfaceHeader:
    SongHeader NoteLengthsTbl@6, $FF, $00, $05, $04
    .word @sq1, @sq2, @tri, @noise
    .byte $7F, $9F

@sq1:
    SongRepeatSetup $12
        SongNoteLength $2
        SongNote "B2"
        SongNote "B2"
        SongNote "A#2"
        SongRest
        SongNoteLength $4
        SongRest
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $2
        SongNote "G2"
        SongNote "B2"
        SongNote "D3"
        SongNote "G3"
        SongNote "A2"
        SongNote "C#3"
        SongNote "E3"
        SongNote "A3"
        SongNote "B2"
        SongNote "D3"
        SongNote "F#3"
        SongNote "B3"
        SongNote "B2"
        SongNote "D3"
        SongNote "F#3"
        SongNote "B3"
    SongRepeat
    SongRepeatSetup $C
        SongNoteLength $1
        SongRest
        SongNote "D3"
        SongNote "G3"
        SongNote "A3"
        SongNote "B3"
        SongNote "A3"
        SongNote "G3"
        SongNote "D3"
        SongRest
        SongNote "E3"
        SongNote "A3"
        SongNote "B3"
        SongNote "C#4"
        SongNote "B3"
        SongNote "A3"
        SongNote "E3"
        SongRest
        SongNote "F#3"
        SongNote "B3"
        SongNote "C#4"
        SongNote "D4"
        SongNote "C#4"
        SongNote "B3"
        SongNote "F#3"
        SongNote "F#4"
        SongNote "E4"
        SongNote "D4"
        SongNote "C#4"
        SongNote "D4"
        SongNote "C#4"
        SongNote "B3"
        SongNote "A3"
    SongRepeat
    SongNote "A#3"
    SongNote "C#3"
    SongNote "F#3"
    SongNote "A#3"
    SongNote "C#4"
    SongNote "F#4"
    SongNote "A#4"
    SongNote "C#5"
    SongNote "F#5"
    SongNote "C#5"
    SongNote "G5"
    SongNote "F#5"
    SongNote "E5"
    SongNote "F#5"
    SongNote "E5"
    SongNote "D5"
    SongNote "C#5"
    SongNote "D5"
    SongNote "C#5"
    SongNote "B4"
    SongNote "A#4"
    SongNote "B4"
    SongNote "A#4"
    SongNote "G4"
    SongNote "F#4"
    SongNote "G4"
    SongNote "F#4"
    SongNote "E4"
    SongNote "D4"
    SongNote "E4"
    SongNote "D4"
    SongNote "C#4"
    SongEnd

@sq2:
    SongRepeatSetup $14
        SongNoteLength $4
        SongRest
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "F#4"
        SongNote "B4"
        SongNote "D5"
        SongNote "F#4"
        SongNote "F4"
        SongRest
        SongNoteLength $2
        SongRest
        SongNoteLength $4
        SongRest
        SongNoteLength $1
        SongNote "D4"
        SongNote "E4"
        SongNote "D4"
        SongNote "E4"
        SongNote "F4"
        SongRest
        SongNoteLength $2
        SongRest
        SongNoteLength $4
        SongRest
        SongNoteLength $1
        SongNote "F#4"
        SongNote "E4"
        SongNote "D4"
        SongNote "C#4"
        SongNote "D4"
        SongRest
        SongNoteLength $2
        SongRest
        SongNoteLength $4
        SongRest
        SongNoteLength $1
        SongNote "B3"
        SongNote "A3"
        SongNote "B3"
        SongNote "A3"
        SongNote "B3"
        SongRest
        SongNoteLength $2
        SongRest
        SongNoteLength $3
        SongRest
        SongNoteLength $1
        SongNote "A#3"
        SongNoteLength $2
        SongNote "B3"
        SongNoteLength $1
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $1
        SongRest
        SongNote "D4"
        SongNote "G4"
        SongNote "A4"
        SongNote "B4"
        SongNote "A4"
        SongNote "G4"
        SongNote "D4"
        SongRest
        SongNote "E4"
        SongNote "A4"
        SongNote "B4"
        SongNote "C#5"
        SongNote "B4"
        SongNote "A4"
        SongNote "E4"
        SongRest
        SongNote "F#4"
        SongNote "B4"
        SongNote "C#5"
        SongNote "D5"
        SongNote "C#5"
        SongNote "B4"
        SongNote "F#4"
        SongNote "A4"
        SongNote "G4"
        SongNote "F#4"
        SongNote "E4"
        SongNote "F#4"
        SongNote "E4"
        SongNote "D4"
        SongNote "C#4"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $2
        SongNote "B4"
        SongNoteLength $1
        SongNote "B4"
        SongNoteLength $2
        SongNote "F#4"
        SongNoteLength $1
        SongNote "F#4"
        SongNoteLength $2
        SongNote "B4"
        SongNote "A4"
        SongNoteLength $1
        SongNote "A4"
        SongNoteLength $2
        SongNote "F#4"
        SongNoteLength $1
        SongNote "F#4"
        SongNoteLength $2
        SongNote "E4"
        SongNoteLength $4
        SongNote "F#4"
        SongNoteLength $1
        SongNote "A4"
        SongNote "G4"
        SongNote "F#4"
        SongNote "E4"
        SongNote "F#4"
        SongNote "E4"
        SongNote "D4"
        SongNote "C#4"
        SongNoteLength $3
        SongNote "F#3"
        SongNoteLength $2
        SongNote "F#3"
        SongNoteLength $1
        SongNote "B3"
        SongNote "G3"
        SongNoteLength $3
        SongNote "F#3"
        SongNoteLength $2
        SongNote "F#3"
        SongNoteLength $1
        SongNote "B3"
        SongNote "A3"
        SongNoteLength $3
        SongNote "C#4"
        SongNote "D4"
        SongNoteLength $2
        SongNote "E4"
        SongNote "F#4"
        SongNote "A4"
        SongNote "A#4"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $2
        SongNote "F#5"
        SongNoteLength $1
        SongNote "E5"
        SongNote "D5"
        SongNoteLength $2
        SongNote "E5"
        SongNoteLength $1
        SongNote "D5"
        SongNote "C#5"
        SongNoteLength $2
        SongNote "D5"
        SongNoteLength $1
        SongNote "C#5"
        SongNote "B4"
        SongNote "C#5"
        SongNote "B4"
        SongNote "A4"
        SongNote "C#5"
        SongNoteLength $4
        SongNote "B4"
        SongNoteLength $2
        SongNote "C#5"
        SongNoteLength $1
        SongNote "D5"
        SongNoteLength $2
        SongNote "C#5"
        SongNoteLength $1
        SongNote "B4"
        SongNoteLength $2
        SongNote "A4"
        SongNoteLength $3
        SongNote "F#4"
        SongNoteLength $5
        SongNote "F#4"
        SongNoteLength $0
        SongNote "C#5"
        SongNote "G4"
        SongNoteLength $3
        SongNote "F#4"
        SongNoteLength $5
        SongNote "F#4"
        SongNoteLength $0
        SongNote "C#5"
        SongNote "G4"
        SongNoteLength $3
        SongNote "F#4"
        SongNote "F#4"
        SongNote "F#4"
        SongNoteLength $5
        SongNote "F#4"
        SongNoteLength $0
        SongNote "D5"
        SongNote "A4"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $2
        SongNote "G4"
        SongNoteLength $1
        SongNote "G4"
        SongNoteLength $5
        SongNote "D5"
        SongNoteLength $1
        SongNote "A4"
        SongNote "G4"
        SongNoteLength $2
        SongNote "A4"
        SongNoteLength $1
        SongNote "A4"
        SongNoteLength $5
        SongNote "E5"
        SongNoteLength $1
        SongNote "B4"
        SongNote "A4"
        SongNote "B4"
        SongNote "F#5"
        SongNote "D5"
        SongNote "B5"
        SongNote "B4"
        SongNote "F#5"
        SongNote "A5"
        SongNote "B5"
        SongNote "B4"
        SongNote "F#5"
        SongNote "D5"
        SongNote "B5"
        SongNote "B4"
        SongNote "F#5"
        SongNote "A5"
        SongNote "B5"
    SongRepeat
    SongNoteLength $2
    SongNote "F#2"
    SongNote "A#2"
    SongNote "C#3"
    SongNote "F#3"
    SongNote "A#2"
    SongNote "C#3"
    SongNote "F#3"
    SongNote "A#3"
    SongNote "C#3"
    SongNote "F#3"
    SongNote "A#3"
    SongNote "C#4"
    SongNote "F#3"
    SongNote "A#3"
    SongNote "B3"
    SongNote "A#3"

@tri:
    SongRepeatSetup $C
        SongNoteLength $4
        SongRest
    SongRepeat
    SongRepeatSetup $7
        SongNoteLength $3
        SongNote "D4"
    SongRepeat
    SongNoteLength $1
    SongNote "D4"
    SongNote "C#4"
    SongNote "B3"
    SongNote "A3"
    SongRepeatSetup $7
        SongNoteLength $3
        SongNote "B3"
    SongRepeat
    SongNoteLength $1
    SongNote "B3"
    SongNote "C#4"
    SongNote "B3"
    SongNote "C#4"
    SongRepeatSetup $7
        SongNoteLength $3
        SongNote "D4"
    SongRepeat
    SongNoteLength $1
    SongNote "D4"
    SongNote "C#4"
    SongNote "B3"
    SongNote "A3"
    SongRepeatSetup $7
        SongNoteLength $3
        SongNote "B3"
    SongRepeat
    SongNoteLength $1
    SongNote "B3"
    SongNote "C#4"
    SongNote "B3"
    SongNote "C#4"
    SongRepeatSetup $7
        SongNoteLength $3
        SongNote "D4"
    SongRepeat
    SongNoteLength $1
    SongNote "D4"
    SongNote "C#4"
    SongNote "B3"
    SongNote "A3"
    SongRepeatSetup $7
        SongNoteLength $3
        SongNote "B3"
    SongRepeat
    SongNoteLength $1
    SongNote "B3"
    SongNote "A3"
    SongNote "B3"
    SongNote "A3"
    SongRepeatSetup $E
        SongNoteLength $2
        SongNote "G3"
        SongNote "G3"
        SongNote "G3"
        SongNote "G3"
        SongNote "A3"
        SongNote "A3"
        SongNote "A3"
        SongNote "A3"
        SongNote "B3"
        SongNote "B3"
        SongNote "B3"
        SongNote "B3"
        SongNote "B3"
        SongNote "B3"
        SongNoteLength $1
        SongNote "B3"
        SongNote "B3"
        SongNote "B3"
        SongNote "B3"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $2
        SongNote "F#3"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $2
        SongNote "F#4"
    SongRepeat

@noise:
    SongRepeatSetup $4
        SongNoteLength $4
        .byte <DrumBeat00SFXData
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $2
        .byte $0D
        .byte $0D
        .byte $0D
        .byte <DrumBeat00SFXData
        SongNoteLength $4
        .byte $11
    SongRepeat
    SongRepeatSetup $2C
        SongNoteLength $2
        .byte $0D
        .byte $0D
        .byte $05
        SongNoteLength $1
        .byte $0D
        SongNoteLength $0
        .byte <DrumBeat02SFXData
        .byte $08
        SongNoteLength $1
        .byte $0D
        .byte $05
        .byte <DrumBeat02SFXData
        .byte $0D
        .byte $05
        .byte <DrumBeat02SFXData
        .byte $0F
        SongNoteLength $0
        .byte $0D
        .byte $0F
    SongRepeat
