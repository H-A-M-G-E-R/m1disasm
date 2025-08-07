SongElwoodThemeHeader:
    SongHeader NoteLengthsTbl@6, $FF, $F0, $01, $01
    .word @sq1, @sq2, @tri, @noise
    .byte $92, $96

@sq1:
    SongNoteLength $5
    SongNote "C#4"
    SongNote "B3"
    SongNote "A3"
    SongNote "G#3"
    SongNoteLength $2
    SongNote "F#3"
    SongNote "E3"
    SongNoteLength $5
    SongNote "D#3"
    SongNote "G3"
    SongNote "G#3"
    SongNote "C4"
    SongNoteLength $2
    SongNote "G#3"
    SongNote "G3"
    SongNoteLength $3
    SongNote "A3"
    SongNote "G#3"
    SongNote "F#3"
    SongNote "E3"
    SongNoteLength $6
    SongNote "D#3"
    SongNoteLength $1
    SongRest
    SongNote "G3"
    SongNoteLength $4
    SongNote "G#3"

@sq2:
    SongNoteLength $5
    SongNote "A3"
    SongNote "D#4"
    SongNote "E4"
    SongNote "C#4"
    SongNoteLength $2
    SongNote "E4"
    SongNote "F#4"
    SongNoteLength $5
    SongNote "C4"
    SongNote "C#4"
    SongNote "D#4"
    SongNote "G4"
    SongNoteLength $2
    SongNote "G#4"
    SongNote "G4"
    SongNoteLength $3
    SongNote "F#4"
    SongNote "G#4"
    SongNote "A4"
    SongNote "C#5"
    SongNoteLength $6
    SongNote "C5"
    SongNoteLength $1
    SongRest
    SongNote "C#5"
    SongNoteLength $4
    SongNote "D#5"

@tri:
    SongRepeatSetup $8
        SongNoteLength $1
        SongNote "A3"
        SongNote "A4"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $1
        SongNote "G#3"
        SongNote "G#4"
    SongRepeat
    SongNote "F#3"
    SongNote "F#4"
    SongNote "F#3"
    SongNote "F#4"
    SongNote "E3"
    SongNote "E4"
    SongNote "E3"
    SongNote "E4"
    SongNote "D#3"
    SongNote "D#4"
    SongNote "D#3"
    SongNote "D#4"
    SongNote "C#3"
    SongNote "C#4"
    SongNote "C#3"
    SongNote "C#4"
    SongRepeatSetup $4
        SongNoteLength $1
        SongNote "G#2"
        SongNote "G#3"
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $1
        SongNote "G#3"
        SongNote "G#4"
    SongRepeat

@noise:
    SongRepeatSetup $6
        SongNoteLength $1
        .byte $45
        .byte $0D
        SongNoteLength $2
        .byte <DrumBeat03SFXData
        SongNoteLength $1
        .byte $45
        .byte $0D
        .byte $05
        SongNoteLength $0
        .byte $03
        .byte <DrumBeat01SFXData
    SongRepeat
    SongRest
    SongNoteLength $7
    .byte <DrumBeat03SFXData
    SongNoteLength $0
    .byte $05
    SongNoteLength $7
    .byte <DrumBeat03SFXData
    SongRepeatSetup $2
        SongNoteLength $0
        SongRest
        .byte <DrumBeat03SFXData
        SongNoteLength $1
        .byte $45
        SongNoteLength $0
        .byte $05
        .byte <DrumBeat03SFXData
        SongNoteLength $1
        .byte $45
    SongRepeat
    SongNoteLength $0
    .byte $45
    .byte $0D
    .byte $03
    .byte <DrumBeat01SFXData
    .byte $05
    .byte $45
    .byte $0D
    .byte $05
    SongEnd
