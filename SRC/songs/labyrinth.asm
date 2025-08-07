SongLabyrinthHeader:
    SongHeader NoteLengthsTbl@6, $FF, $F0, $03, $05
    .word @sq1, @sq2, @tri, @noise
    .byte $B3, $B3

@sq1:
    SongNoteLength $4
    SongNote "C#3"
    SongNote "C#3"
    SongRepeatSetup $B
        SongNoteLength $4
        SongNote "C#2"
    SongRepeat
    SongRepeatSetup $28
        SongNoteLength $1
        SongNote "C#2"
        SongNote "D2"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $1
        SongNote "D2"
        SongNote "E2"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $1
        SongNote "C#2"
        SongNote "D2"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $1
        SongNote "D2"
        SongNote "E2"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $1
        SongNote "C#2"
        SongNote "D2"
    SongRepeat
    SongRepeatSetup $3
        SongNoteLength $3
        SongNote "E3"
        SongNoteLength $2
        SongNote "D#3"
        SongNote "D3"
        SongNoteLength $4
        SongNote "C#3"
    SongRepeat
    SongNoteLength $5
    SongNote "A3"
    SongNote "G#3"
    SongNote "F#3"
    SongNote "E3"
    SongNoteLength $2
    SongNote "D#3"
    SongNote "C#3"
    SongNoteLength $5
    SongNote "C3"
    SongNote "C#3"
    SongNote "D#3"
    SongNote "E3"
    SongNoteLength $2
    SongNote "G3"
    SongNote "G#3"
    SongNoteLength $3
    SongNote "A3"
    SongNote "G#3"
    SongNote "F#3"
    SongNoteLength $1
    SongNote "C3"
    SongNote "B2"
    SongNote "A#2"
    SongNote "A2"
    SongRepeatSetup $8
        SongNoteLength $0
        SongNote "G#2"
        SongNote "G#2"
        SongNote "A2"
        SongNote "A2"
    SongRepeat
    SongRepeatSetup $6
        SongNoteLength $3
        SongNote "F#3"
        SongRest
        SongNote "E3"
        SongRest
        SongNote "D#3"
        SongRest
        SongNote "D#3"
        SongRest
    SongRepeat
    SongEnd

@sq2:
    SongNoteLength $4
    SongNote "G#3"
    SongNote "G#3"
    SongNote "G#2"
    SongRepeatSetup $2
        SongNoteLength $4
        SongNote "C#3"
        SongRest
        SongNote "G#3"
        SongNoteLength $3
        SongNote "G#3"
        SongNoteLength $1
        SongNote "F#3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "F#3"
        SongNoteLength $5
        SongNote "B3"
        SongNoteLength $1
        SongNote "A3"
        SongNoteLength $5
        SongNote "B3"
        SongNoteLength $1
        SongNote "A3"
        SongNoteLength $5
        SongNote "B3"
        SongNoteLength $1
        SongNote "A3"
        SongNote "F#3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "F#3"
        SongNoteLength $4
        SongNote "F3"
        SongNote "F3"
        SongNote "C#3"
        SongNoteLength $3
        SongNote "C#3"
        SongNoteLength $2
        SongNote "B3"
        SongNote "C#4"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $5
        SongNote "D4"
        SongNoteLength $0
        SongNote "C#4"
        SongNote "B3"
        SongNoteLength $5
        SongNote "C#4"
        SongNoteLength $0
        SongNote "B3"
        SongNote "A3"
        SongNoteLength $5
        SongNote "B3"
        SongNoteLength $0
        SongNote "A3"
        SongNote "G#3"
        SongNoteLength $2
        SongNote "A3"
        SongNote "B3"
        SongNoteLength $4
        SongNote "G#3"
        SongNoteLength $2
        SongNote "G#3"
        SongNote "F#3"
        SongNote "G#3"
        SongNote "C#4"
    SongRepeat
    SongRepeatSetup $3
        SongNoteLength $3
        SongNote "G#3"
        SongNoteLength $2
        SongNote "G3"
        SongNote "F#3"
        SongNoteLength $4
        SongNote "F3"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $3
        SongNote "E4"
        SongNoteLength $4
        SongNote "C#4"
        SongNoteLength $3
        SongNote "G#4"
        SongNote "G4"
        SongNote "G#4"
        SongRest
        SongRest
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $2
        SongNote "F#3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "B3"
        SongNote "C#4"
        SongNote "D#4"
        SongNote "E4"
        SongNote "F#4"
        SongNote "G#4"
        SongNote "F#4"
        SongNote "E4"
        SongNote "D#4"
        SongNote "G#3"
        SongNote "A#3"
        SongNote "C4"
        SongNote "C#4"
    SongRepeat
    SongNoteLength $1
    SongNote "F#4"
    SongNote "C#4"
    SongNote "F#4"
    SongNoteLength $2
    SongNote "G#4"
    SongNoteLength $1
    SongNote "C#4"
    SongNote "G#4"
    SongNoteLength $2
    SongNote "A4"
    SongNoteLength $1
    SongNote "C#4"
    SongNote "F#4"
    SongNote "G#4"
    SongNote "A4"
    SongNote "B4"
    SongNote "C#5"
    SongNoteLength $4
    SongNote "C#5"
    SongNote "C5"
    SongNoteLength $1
    SongRest
    SongRepeatSetup $3
        SongNoteLength $1
        SongNote "F#4"
        SongNote "G#4"
    SongRepeat
    SongNote "F#4"
    SongNoteLength $2
    SongNote "E4"
    SongRepeatSetup $3
        SongNoteLength $1
        SongNote "F#4"
        SongNote "E4"
    SongRepeat
    SongNoteLength $2
    SongNote "D#4"
    SongNoteLength $1
    SongNote "E4"
    SongNote "D#4"
    SongNote "E4"
    SongNote "C#4"
    SongNote "D#4"
    SongNote "C#4"
    SongNote "D#4"
    SongNote "C4"
    SongNote "C#4"
    SongNote "A3"
    SongNote "B3"
    SongNote "G3"
    SongNote "G#3"
    SongNote "G4"
    SongNote "G#4"
    SongRepeatSetup $2
        SongNoteLength $4
        SongNote "A#3"
        SongNote "A3"
        SongNote "A3"
        SongNote "G#3"
    SongRepeat

@tri:
    SongNoteLength $4
    SongNote "D#4"
    SongNote "C#4"
    SongNote "C#3"
    SongRepeatSetup $2
        SongNoteLength $4
        SongNote "C#2"
        SongNote "G#2"
        SongNoteLength $6
        SongNote "C#3"
        SongNoteLength $2
        SongRest
        SongNoteLength $3
        SongNote "C#3"
        SongNoteLength $1
        SongNote "B2"
        SongNote "C#3"
        SongNote "D3"
        SongNote "B2"
        SongNoteLength $5
        SongNote "E3"
        SongNoteLength $1
        SongNote "D3"
        SongNoteLength $5
        SongNote "E3"
        SongNoteLength $1
        SongNote "D3"
        SongNoteLength $5
        SongNote "E3"
        SongNoteLength $1
        SongNote "D3"
        SongNote "B2"
        SongNote "C#3"
        SongNote "D3"
        SongNote "E3"
        SongNoteLength $4
        SongNote "C#3"
        SongNote "C#4"
        SongNoteLength $1
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "A3"
        SongNote "F#3"
        SongNote "D4"
        SongNote "A3"
        SongNote "F#4"
        SongNote "D4"
        SongNote "A4"
        SongNote "G#4"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "G#3"
        SongNote "F3"
        SongNote "C#4"
        SongNote "G#3"
        SongNote "F4"
        SongNote "C#4"
        SongNote "G#4"
        SongNote "G4"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "A3"
        SongNote "F#3"
        SongNote "D4"
        SongNote "A3"
        SongNote "F#4"
        SongNote "D4"
        SongNote "A4"
        SongNote "G#4"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $1
        SongNote "G#3"
        SongNote "F3"
        SongNote "C#4"
        SongNote "G#3"
        SongNote "F4"
        SongNote "C#4"
        SongNote "G#4"
        SongNote "G4"
    SongRepeat
    SongNoteLength $3
    SongNote "B2"
    SongNoteLength $2
    SongNote "A#2"
    SongNote "A2"
    SongNoteLength $4
    SongNote "G#2"
    SongNoteLength $3
    SongNote "B3"
    SongNoteLength $2
    SongNote "A#3"
    SongNote "A3"
    SongNoteLength $4
    SongNote "G#3"
    SongNoteLength $3
    SongNote "B4"
    SongNoteLength $2
    SongNote "A#4"
    SongNote "A4"
    SongNoteLength $4
    SongNote "G#4"
    SongRepeatSetup $2
        SongNoteLength $5
        SongNote "C#5"
        SongNote "B4"
        SongNote "A4"
        SongNote "G#4"
        SongNoteLength $2
        SongNote "F#4"
        SongNote "E4"
        SongNoteLength $5
        SongNote "D#4"
        SongNote "G4"
        SongNote "G#4"
        SongNote "C5"
        SongNoteLength $2
        SongNote "G#4"
        SongNote "G4"
        SongNoteLength $3
        SongNote "F#4"
        SongNote "E4"
        SongNote "D#4"
        SongNoteLength $2
        SongNote "B3"
        SongNote "A3"
        SongNoteLength $1
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
        SongNote "G#3"
        SongNote "A3"
        SongNoteLength $2
        SongNote "G#3"
        SongNote "G#2"
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $3
        SongNote "C#4"
        SongRest
        SongNote "C#4"
        SongRest
        SongNote "C#4"
        SongRest
        SongNote "C4"
        SongRest
    SongRepeat

@noise:
    SongRepeatSetup $2E
        SongNoteLength $3
        .byte $03
    SongRepeat
    SongRepeatSetup $20
        SongNoteLength $2
        .byte <DrumBeat01SFXData
    SongRepeat
    SongRepeatSetup $18
        SongNoteLength $2
        .byte $0D
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $0
        .byte $0D
        .byte $0D
        .byte $0D
        .byte $0F
        .byte <DrumBeat02SFXData
        .byte $08
        SongRest
        .byte <DrumBeat03SFXData
        SongNoteLength $1
        .byte $0D
        .byte $0D
        .byte $05
        .byte $0D
        SongNoteLength $0
        .byte $0D
        .byte $0F
        .byte $0D
        .byte $0F
        .byte <DrumBeat02SFXData
        .byte $08
        SongRest
        .byte <DrumBeat03SFXData
        SongNoteLength $1
        .byte $0D
        .byte $0D
        .byte $05
        .byte $0D
        SongNoteLength $0
        .byte $0D
        .byte $0F
        .byte $0D
        .byte $0F
        .byte <DrumBeat02SFXData
        .byte $08
        SongRest
        .byte <DrumBeat03SFXData
        SongNoteLength $1
        .byte $0D
        .byte $0D
        .byte $05
        .byte $0D
        SongNoteLength $0
        .byte $0D
        .byte $0F
        .byte $0D
        .byte $0F
        .byte $05
        .byte $0F
        .byte $0D
        .byte $0F
        .byte $0D
        .byte $0F
        .byte $05
        .byte $0F
        .byte $0D
        .byte $0D
        .byte <DrumBeat03SFXData
        .byte $0D
    SongRepeat
