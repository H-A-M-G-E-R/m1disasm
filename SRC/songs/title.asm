SongTitleHeader:
    SongHeader NoteLengthsTbl@6, $00, $F0, $03, $03
    .word @sq1, @sq2, @tri, @noise
    .byte $B6, $F6

@sq1:
    SongRepeatSetup $6
        SongNoteLength $4
        SongNote "A2"
        SongNote "G2"
        SongNote "F#2"
        SongNoteLength $0
        SongNote "F2"
        SongRest
        SongNote "F2"
        SongRest
        SongNote "F2"
        SongRest
        SongNote "F2"
        SongRest
        SongNote "F2"
        SongRest
        SongNote "F2"
        SongRest
        SongNote "G2"
        SongRest
        SongNote "G2"
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $5
        SongNote "E5"
        SongNote "D5"
        SongNoteLength $2
        SongNote "C5"
        SongNoteLength $5
        SongNote "B4"
        SongNote "A4"
        SongNoteLength $2
        SongNote "G4"
        SongNoteLength $1
        SongNote "A4"
        SongNote "G4"
        SongNoteLength $3
        SongNote "E4"
        SongNoteLength $1
        SongNote "D4"
        SongNoteLength $4
        SongNote "E4"
        SongNoteLength $1
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $5
        SongNote "C4"
        SongNote "B3"
        SongNoteLength $2
        SongNote "G3"
        SongNoteLength $5
        SongNote "B3"
        SongNoteLength $3
        SongNote "C4"
        SongNoteLength $1
        SongRest
        SongNoteLength $5
        SongNote "C4"
        SongNote "B3"
        SongNoteLength $2
        SongNote "G3"
        SongNoteLength $5
        SongNote "F3"
        SongNote "E3"
        SongNoteLength $2
        SongNote "D3"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $4
        SongRest
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $2
        SongNote "D2"
        SongNoteLength $1
        SongNote "E2"
        SongNoteLength $5
        SongNote "F2"
        SongNoteLength $2
        SongNote "D2"
        SongNote "E2"
        SongNoteLength $1
        SongNote "G#2"
        SongNoteLength $5
        SongNote "B2"
        SongNoteLength $2
        SongNote "G#2"
        SongNote "A2"
        SongNoteLength $1
        SongNote "D3"
        SongNoteLength $2
        SongNote "C3"
        SongNoteLength $1
        SongNote "B2"
        SongNote "G#2"
        SongNoteLength $2
        SongNote "A2"
        SongNoteLength $1
        SongNote "D3"
        SongNote "D#3"
        SongNoteLength $5
        SongNote "E3"
        SongNoteLength $2
        SongNote "A2"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $4
        SongNote "E3"
    SongRepeat

@sq2:
    SongRepeatSetup $4
        SongNoteLength $4
        SongNote "A3"
        SongNote "G3"
        SongNote "F#3"
        SongNote "F3"
    SongRepeat
    SongRepeatSetup $6
        SongNoteLength $1
        SongNote "E3"
        SongNote "F3"
        SongNote "E3"
        SongNoteLength $2
        SongNote "A3"
        SongNote "E4"
        SongNoteLength $1
        SongNote "C4"
        SongNoteLength $2
        SongNote "D4"
        SongNoteLength $1
        SongNote "C4"
        SongNoteLength $2
        SongNote "D4"
        SongNote "E4"
        SongNoteLength $1
        SongNote "B3"
        SongNote "C4"
        SongNote "B3"
        SongNoteLength $3
        SongNote "A3"
        SongNoteLength $1
        SongNote "G3"
        SongNoteLength $4
        SongNote "A3"
        SongNoteLength $1
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $5
        SongNote "A3"
        SongNote "G3"
        SongNoteLength $2
        SongNote "E3"
        SongNoteLength $5
        SongNote "G3"
        SongNoteLength $3
        SongNote "A3"
        SongNoteLength $1
        SongRest
        SongNoteLength $5
        SongNote "A3"
        SongNote "G3"
        SongNoteLength $2
        SongNote "E3"
        SongNoteLength $5
        SongNote "D3"
        SongNote "C3"
        SongNoteLength $2
        SongNote "B2"
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $1
        SongNote "D3"
        SongNote "F3"
        SongNote "D3"
        SongNote "E4"
        SongNote "D4"
        SongNote "C4"
        SongNote "B3"
        SongNote "A3"
        SongNote "E3"
        SongNote "G3"
        SongNote "E3"
        SongNote "G#3"
        SongNote "E3"
        SongNote "D4"
        SongNote "C4"
        SongNote "B3"
        SongNote "E3"
        SongNote "F3"
        SongNote "E3"
        SongNote "A3"
        SongNote "E3"
        SongNote "B3"
        SongNote "E3"
        SongNote "C4"
        SongNote "E3"
        SongNote "D4"
        SongNote "E3"
        SongNote "E4"
        SongNote "D4"
        SongNote "C4"
        SongNote "B3"
        SongNote "A3"
    SongRepeat
    SongRepeatSetup $C
        SongNoteLength $2
        SongNote "A3"
        SongNoteLength $1
        SongNote "B3"
        SongNoteLength $2
        SongNote "C4"
        SongNoteLength $1
        SongNote "D4"
        SongNoteLength $4
        SongNote "E4"
        SongNoteLength $2
        SongNote "G#3"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $4
        SongNote "A2"
    SongRepeat

@tri:
    SongRepeatSetup $8
        SongNoteLength $4
        SongNote "A3"
        SongNote "G3"
        SongNote "F#3"
        SongNote "F3"
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $2
        SongNote "C5"
        SongNoteLength $1
        SongNote "B4"
        SongNoteLength $5
        SongNote "A4"
        SongNoteLength $1
        SongNote "E4"
        SongNoteLength $3
        SongNote "G4"
        SongNoteLength $2
        SongNote "A5"
        SongNoteLength $1
        SongNote "E5"
        SongNote "D5"
        SongNote "C5"
        SongNote "B4"
        SongNote "C5"
        SongNote "B4"
        SongNoteLength $5
        SongNote "A4"
        SongNoteLength $1
        SongNote "D5"
        SongNoteLength $4
        SongNote "E5"
        SongNoteLength $1
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $0
        SongNote "A3"
        SongRest
        SongNote "A4"
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $0
        SongNote "G3"
        SongRest
        SongNote "G4"
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $0
        SongNote "F#3"
        SongRest
        SongNote "F#4"
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $0
        SongNote "F3"
        SongRest
        SongNote "F4"
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $0
        SongNote "A3"
        SongRest
        SongNote "A4"
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $0
        SongNote "G3"
        SongRest
        SongNote "G4"
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $0
        SongNote "F#3"
        SongRest
        SongNote "F#4"
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $0
        SongNote "F3"
        SongRest
        SongNote "F4"
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $4
        SongRest
    SongRepeat
    SongRepeatSetup $5
        SongNoteLength $0
        SongNote "D4"
        SongRest
        SongNote "D4"
        SongRest
        SongNote "D4"
        SongRest
        SongNote "D4"
        SongRest
        SongNote "D4"
        SongRest
        SongNote "D4"
        SongRest
        SongNote "D4"
        SongRest
        SongNote "D4"
        SongRest
        SongNote "E4"
        SongRest
        SongNote "E4"
        SongRest
        SongNote "E4"
        SongRest
        SongNote "E4"
        SongRest
        SongNote "E4"
        SongRest
        SongNote "E4"
        SongRest
        SongNote "E4"
        SongRest
        SongNote "E4"
        SongRest
        SongNote "A4"
        SongRest
        SongNote "A4"
        SongRest
        SongNote "A4"
        SongRest
        SongNote "A4"
        SongRest
        SongNote "A4"
        SongRest
        SongNote "A4"
        SongRest
        SongNote "A4"
        SongRest
        SongNote "A4"
        SongRest
        SongNote "A5"
        SongRest
        SongNote "A5"
        SongRest
        SongNote "G5"
        SongRest
        SongNote "G5"
        SongRest
        SongNote "E5"
        SongRest
        SongNote "E5"
        SongRest
        SongNote "D5"
        SongRest
        SongNote "C5"
        SongRest
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $2
        SongNote "F5"
        SongNoteLength $1
        SongNote "G5"
        SongNoteLength $2
        SongNote "A5"
        SongNoteLength $1
        SongNote "G5"
        SongNoteLength $2
        SongNote "F5"
        SongNote "G#5"
        SongNoteLength $1
        SongNote "A5"
        SongNoteLength $2
        SongNote "B5"
        SongNoteLength $1
        SongNote "A5"
        SongNoteLength $2
        SongNote "G#5"
        SongNote "C6"
        SongNoteLength $1
        SongNote "B5"
        SongNoteLength $2
        SongNote "A5"
        SongNoteLength $1
        SongNote "G5"
        SongNote "E5"
        SongNoteLength $2
        SongNote "C6"
        SongNote "B5"
        SongNoteLength $5
        SongNote "A5"
        SongNoteLength $2
        SongNote "E5"
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $4
        SongNote "G#3"
    SongRepeat
    SongNote "E3"
    SongNote "D4"
    SongRepeatSetup $4
        SongNoteLength $1
        SongNote "B3"
    SongRepeat
    SongRest
    SongRepeatSetup $3
        SongNoteLength $1
        SongNote "B3"
    SongRepeat
    SongNoteLength $3
    SongNote "B3"
    SongRepeatSetup $5
        SongNoteLength $3
        SongRest
    SongRepeat

@noise:
    SongRepeatSetup $8
        SongNoteLength $3
        .byte $45
        .byte <DrumBeat01SFXData
    SongRepeat
    SongRepeatSetup $16
        SongNoteLength $2
        .byte $0D
        SongNoteLength $5
        .byte $05
        SongNoteLength $1
        .byte $0D
        SongRest
        SongNoteLength $0
        .byte $0D
        .byte $0D
        SongNoteLength $2
        .byte $0D
        SongNoteLength $5
        SongRest
        SongNoteLength $1
        .byte $0D
        SongRest
        SongNoteLength $0
        .byte $0D
        .byte $0D
        SongNoteLength $2
        .byte $0D
        SongNoteLength $5
        .byte $05
        SongNoteLength $1
        .byte $0D
        SongRest
        SongNoteLength $0
        .byte $0D
        .byte $0D
        SongNoteLength $1
        .byte $45
        SongNoteLength $0
        .byte $0D
        .byte <DrumBeat03SFXData
        SongNoteLength $1
        .byte $45
        .byte $05
        SongNoteLength $0
        .byte $0D
        SongNoteLength $7
        .byte <DrumBeat03SFXData
        SongNoteLength $1
        .byte $45
        .byte $0D
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $4
        .byte $12
    SongRepeat
    SongEnd
