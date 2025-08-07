SongJakeThemeHeader:
    SongHeader NoteLengthsTbl@6, $FF, $F0, $03, $03
    .word @sq1, @sq2, @tri, @noise
    .byte $92, $96

@sq1:
    SongNoteLength $5
    SongNote "A#3"
    SongNoteLength $2
    SongNote "C4"
    SongNote "D4"
    SongNoteLength $3
    SongNote "E4"
    SongNoteLength $2
    SongNote "F4"
    SongNoteLength $5
    SongNote "G4"
    SongNote "A4"
    SongNoteLength $0
    SongNote "D4"
    SongNote "E4"
    SongNoteLength $5
    SongNote "F#4"
    SongNoteLength $0
    SongNote "E4"
    SongNote "G4"
    SongNoteLength $5
    SongNote "A4"
    SongNoteLength $0
    SongNote "F4"
    SongNote "B4"
    SongNoteLength $3
    SongNote "D5"
    SongRepeatSetup $2
        SongNoteLength $5
        SongNote "A#3"
        SongNoteLength $2
        SongNote "C4"
        SongNote "D4"
        SongNoteLength $3
        SongNote "E4"
        SongNoteLength $2
        SongNote "F4"
        SongNoteLength $5
        SongNote "G4"
        SongNoteLength $3
        SongNote "A4"
        SongNote "D5"
        SongNote "E5"
        SongNote "F5"
    SongRepeat
    SongNoteLength $2
    SongNote "A4"
    SongNoteLength $5
    SongNote "F4"
    SongNoteLength $1
    SongNote "D4"
    SongNoteLength $A
    SongNote "G#4"
    SongNote "A4"
    SongNote "A4"
    SongRest
    SongNoteLength $3
    SongNote "G4"
    SongNoteLength $2
    SongNote "F4"
    SongRepeatSetup $4
        SongNoteLength $5
        SongNote "D4"
        SongNoteLength $0
        SongNote "C4"
        SongNote "C#4"
    SongRepeat
    SongNoteLength $1
    SongNote "C4"
    SongNote "D4"
    SongRest

@sq2:
    SongNoteLength $1
    SongNote "C4"
    SongNote "D4"
    SongRest
    SongNote "D4"
    SongRest
    SongNote "D4"
    SongRest
    SongNoteLength $0
    SongNote "D4"
    SongRest
    SongNoteLength $1
    SongNote "D4"
    SongRest
    SongNote "C4"
    SongRest
    SongNote "A#3"
    SongRest
    SongNote "A3"
    SongRest
    SongNoteLength $5
    SongNote "D3"
    SongNoteLength $0
    SongNote "F#4"
    SongNote "G4"
    SongNoteLength $5
    SongNote "A4"
    SongNoteLength $0
    SongNote "G4"
    SongNote "B4"
    SongNoteLength $5
    SongNote "D5"
    SongNoteLength $0
    SongNote "C5"
    SongNote "E5"
    SongNoteLength $5
    SongNote "F#5"
    SongNoteLength $1
    SongRest
    SongNoteLength $5
    SongNote "F3"
    SongNoteLength $2
    SongNote "E3"
    SongNote "D3"
    SongNoteLength $3
    SongNote "C3"
    SongNoteLength $2
    SongNote "A#2"
    SongNoteLength $5
    SongNote "A2"
    SongNoteLength $3
    SongNote "F#2"
    SongNote "D2"
    SongNote "C3"
    SongNote "D3"
    SongNoteLength $5
    SongNote "D4"
    SongNoteLength $2
    SongNote "A4"
    SongNote "A#4"
    SongNoteLength $3
    SongNote "G4"
    SongNoteLength $2
    SongNote "A4"
    SongNoteLength $5
    SongNote "A#4"
    SongNoteLength $3
    SongNote "F#4"
    SongNote "F#4"
    SongNote "G4"
    SongNote "A4"
    SongNoteLength $2
    SongNote "D5"
    SongNoteLength $5
    SongNote "A4"
    SongNoteLength $1
    SongNote "F4"
    SongNote "D5"
    SongNoteLength $3
    SongNote "C5"
    SongNoteLength $2
    SongNote "A#4"
    SongNoteLength $5
    SongNote "C5"
    SongNoteLength $1
    SongNote "D5"
    SongNote "F#5"
    SongNote "G5"
    SongNote "C#5"
    SongNote "F#5"
    SongNote "G5"
    SongNote "B4"
    SongNote "F#5"
    SongNote "G5"
    SongNote "A4"
    SongNote "F5"
    SongNote "G5"
    SongNote "G4"
    SongNote "F4"
    SongNote "E4"
    SongNote "D4"

@tri:
    SongRepeatSetup $2
        SongNoteLength $2
        SongNote "F4"
        SongNote "C5"
        SongNoteLength $1
        SongNote "A#4"
        SongNote "A4"
        SongNote "F4"
        SongNote "D4"
        SongRest
        SongNote "D4"
        SongNote "E4"
        SongNote "D5"
        SongNote "C5"
        SongNote "A#4"
        SongNote "A4"
        SongNote "G4"
        SongNote "F#4"
        SongNote "G4"
        SongNote "A4"
        SongNote "A#4"
        SongNote "C5"
        SongNote "D5"
        SongNote "C5"
        SongNote "A#4"
        SongNote "A4"
        SongNote "A#4"
        SongNote "A4"
        SongNoteLength $5
        SongNote "F#4"
        SongNoteLength $2
        SongNote "D4"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "A#3"
        SongNote "A#4"
        SongNote "A#3"
        SongNoteLength $2
        SongNote "A#4"
        SongNoteLength $1
        SongNote "A#3"
        SongNote "A#4"
        SongNote "A#3"
        SongNote "C4"
        SongNote "C5"
        SongNote "A#3"
        SongNote "A#4"
        SongNote "C4"
        SongNote "C5"
        SongNote "C#4"
        SongNote "C#5"
        SongNote "D4"
        SongNote "D5"
        SongNote "D4"
        SongNote "D5"
        SongNote "D4"
        SongNote "D5"
        SongNote "D4"
        SongNote "D5"
        SongNote "D4"
        SongNote "D5"
        SongNote "D4"
        SongNote "D5"
        SongNote "D4"
        SongNote "D5"
        SongNote "C4"
        SongNote "C5"
    SongRepeat

@noise:
    SongRepeatSetup $4
        SongNoteLength $1
        .byte $0D
        .byte $0D
        .byte <DrumBeat03SFXData
        SongNoteLength $0
        .byte $05
        .byte <DrumBeat03SFXData
        SongNoteLength $1
        .byte $0D
        .byte $0D
        .byte <DrumBeat03SFXData
        SongNoteLength $0
        SongRest
        .byte <DrumBeat03SFXData
        SongNoteLength $1
        .byte $0D
        .byte $0D
        .byte <DrumBeat03SFXData
        .byte $0D
        SongNoteLength $0
        .byte $45
        .byte $03
        SongNoteLength $1
        .byte $45
        SongNoteLength $0
        .byte $0D
        .byte <DrumBeat01SFXData
        SongNoteLength $1
        .byte $0D
        .byte $0D
        .byte $0D
        .byte <DrumBeat03SFXData
        SongNoteLength $0
        .byte $45
        .byte <DrumBeat01SFXData
        SongNoteLength $1
        .byte $45
        .byte $45
        .byte $0D
        .byte $45
        SongNoteLength $0
        .byte $05
        .byte <DrumBeat03SFXData
        SongNoteLength $1
        .byte $45
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
        SongNoteLength $0
        .byte $03
        .byte <DrumBeat01SFXData
        SongRest
        .byte <DrumBeat03SFXData
    SongRepeat
    SongEnd
