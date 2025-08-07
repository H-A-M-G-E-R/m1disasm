SongSheolHeader:
    SongHeader NoteLengthsTbl@6, $FF, $F0, $01, $02
    .word @sq1, @sq2, @tri, @noise
    .byte $B6, $57

@sq1:
    SongRepeatSetup $4
        SongNoteLength $4
        SongRest
    SongRepeat
    SongNote "G3"
    SongNote "A#3"
    SongNoteLength $3
    SongNote "B3"
    SongNoteLength $1
    SongRest
    SongNoteLength $2
    SongNote "A#3"
    SongNoteLength $1
    SongNote "G3"
    SongNoteLength $3
    SongNote "A#3"
    SongNote "B3"
    SongNoteLength $4
    SongNote "G3"
    SongNote "A#3"
    SongNoteLength $3
    SongNote "B3"
    SongNoteLength $1
    SongRest
    SongNoteLength $2
    SongNote "A#3"
    SongNoteLength $1
    SongNote "G3"
    SongNoteLength $3
    SongNote "A#3"
    SongNoteLength $1
    SongNote "G3"
    SongNote "A#3"
    SongNote "B3"
    SongNote "C#4"
    SongNoteLength $3
    SongNote "D4"
    SongNoteLength $1
    SongRest
    SongNoteLength $2
    SongNote "C#4"
    SongNoteLength $1
    SongNote "B3"
    SongNoteLength $3
    SongNote "A#3"
    SongNoteLength $1
    SongRest
    SongNoteLength $2
    SongNote "G#3"
    SongNoteLength $1
    SongNote "A#3"
    SongNoteLength $3
    SongNote "B3"
    SongNoteLength $1
    SongRest
    SongNoteLength $2
    SongNote "A#3"
    SongNoteLength $1
    SongNote "B3"
    SongNoteLength $3
    SongNote "C#4"
    SongNoteLength $1
    SongNote "G#3"
    SongNote "A#3"
    SongNote "B3"
    SongNote "C#4"
    SongNoteLength $5
    SongNote "D4"
    SongNoteLength $0
    SongNote "F#4"
    SongNote "G4"
    SongNoteLength $2
    SongNote "F#4"
    SongNote "D4"
    SongNoteLength $5
    SongNote "C#4"
    SongNoteLength $0
    SongNote "D4"
    SongNote "E4"
    SongNoteLength $1
    SongNote "D4"
    SongNote "C#4"
    SongNote "B3"
    SongNote "A#3"
    SongNoteLength $3
    SongNote "B3"
    SongNote "G3"
    SongNoteLength $4
    SongNote "A#3"
    SongNote "B3"
    SongNote "A#3"
    SongNote "B3"
    SongNoteLength $3
    SongNote "A#3"
    SongNoteLength $1
    SongRest
    SongNoteLength $A
    SongNote "A#4"
    SongNote "A4"
    SongNote "G#4"
    SongNote "G4"
    SongNote "F#4"
    SongNote "F4"
    SongNote "E4"
    SongNote "D#4"
    SongNote "D4"
    SongNote "C#4"
    SongNote "C4"
    SongNote "B3"
    SongRepeatSetup $2
        SongNoteLength $2
        SongNote "F#4"
        SongNoteLength $1
        SongNote "B4"
        SongNote "F#4"
        SongNoteLength $2
        SongNote "B4"
        SongNote "F#4"
        SongNoteLength $1
        SongNote "B4"
        SongNote "F#4"
        SongNoteLength $2
        SongNote "B4"
        SongNoteLength $5
        SongNote "G4"
        SongNoteLength $1
        SongNote "F#4"
        SongNoteLength $2
        SongNote "E4"
        SongNote "F#4"
        SongNote "G4"
        SongNote "F#4"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $6
        SongNote "D4"
        SongNote "E4"
        SongNote "F#4"
        SongNote "E4"
        SongNote "D4"
        SongNoteLength $2
        SongRest
        SongNote "C#4"
        SongNote "B3"
        SongNoteLength $6
        SongNote "A#3"
        SongNote "F#3"
    SongRepeat
    SongNoteLength $0
    SongNote "B3"
    SongRest
    SongNoteLength $2
    SongRest
    SongNoteLength $0
    SongNote "B3"
    SongRest
    SongNoteLength $1
    SongNote "B3"
    SongRest
    SongNote "B3"
    SongNoteLength $5
    SongRest
    SongNoteLength $2
    SongRest
    SongEnd

@sq2:
    SongRepeatSetup $4
        SongNoteLength $4
        SongRest
    SongRepeat
    SongNoteLength $3
    SongNote "B3"
    SongNoteLength $1
    SongNote "B3"
    SongNoteLength $7
    SongNote "A#3"
    SongNote "B3"
    SongNoteLength $3
    SongNote "C#4"
    SongNoteLength $1
    SongNote "C#4"
    SongNoteLength $7
    SongNote "B3"
    SongNote "C#4"
    SongNoteLength $3
    SongNote "D4"
    SongNoteLength $1
    SongRest
    SongNoteLength $2
    SongNote "C#4"
    SongNoteLength $1
    SongNote "B3"
    SongNoteLength $3
    SongNote "C#4"
    SongNote "D4"
    SongNoteLength $4
    SongNote "B3"
    SongNote "C#4"
    SongNoteLength $3
    SongNote "D4"
    SongNoteLength $1
    SongRest
    SongNoteLength $2
    SongNote "C#4"
    SongNoteLength $1
    SongNote "B3"
    SongNoteLength $3
    SongNote "C#4"
    SongNoteLength $1
    SongNote "B3"
    SongNote "C#4"
    SongNote "D4"
    SongNote "E4"
    SongNoteLength $3
    SongNote "F#4"
    SongNoteLength $1
    SongRest
    SongNoteLength $2
    SongNote "E4"
    SongNoteLength $1
    SongNote "D4"
    SongNoteLength $3
    SongNote "C#4"
    SongNoteLength $1
    SongRest
    SongNoteLength $2
    SongNote "B3"
    SongNoteLength $1
    SongNote "C#4"
    SongNoteLength $3
    SongNote "D4"
    SongNoteLength $1
    SongRest
    SongNoteLength $2
    SongNote "C#4"
    SongNoteLength $1
    SongNote "D4"
    SongNoteLength $3
    SongNote "E4"
    SongNoteLength $1
    SongNote "B3"
    SongNote "C#4"
    SongNote "D4"
    SongNote "E4"
    SongNoteLength $5
    SongNote "F#4"
    SongNoteLength $0
    SongNote "A4"
    SongNote "B4"
    SongNoteLength $2
    SongNote "A4"
    SongNote "F#4"
    SongNoteLength $5
    SongNote "E4"
    SongNoteLength $0
    SongNote "F#4"
    SongNote "G4"
    SongNoteLength $1
    SongNote "F#4"
    SongNote "E4"
    SongNote "D4"
    SongNote "C#4"
    SongNoteLength $3
    SongNote "D4"
    SongNote "B3"
    SongNoteLength $4
    SongNote "C#3"
    SongNoteLength $1
    SongNote "F#3"
    SongNote "G3"
    SongNote "F#3"
    SongNoteLength $2
    SongNote "G3"
    SongNoteLength $1
    SongNote "F#3"
    SongNote "G3"
    SongNoteLength $0
    SongNote "F#3"
    SongNote "G3"
    SongNoteLength $3
    SongNote "F#3"
    SongNote "G3"
    SongNoteLength $1
    SongNote "F#3"
    SongNote "G3"
    SongNote "F#3"
    SongNoteLength $2
    SongNote "G3"
    SongNoteLength $1
    SongNote "F#3"
    SongNote "G3"
    SongNoteLength $0
    SongNote "F#3"
    SongNote "G3"
    SongNoteLength $3
    SongNote "F#3"
    SongNoteLength $1
    SongRest
    SongNoteLength $A
    SongNote "F#4"
    SongNote "F4"
    SongNote "E4"
    SongNote "D#4"
    SongNote "D4"
    SongNote "C#4"
    SongNote "C4"
    SongNote "B3"
    SongNote "A#3"
    SongNote "A3"
    SongNote "G#3"
    SongNote "G3"
    SongRepeatSetup $2
        SongNoteLength $2
        SongNote "D4"
        SongNoteLength $1
        SongNote "B3"
        SongNote "D4"
        SongNoteLength $2
        SongNote "B3"
        SongNote "D4"
        SongNoteLength $1
        SongNote "B3"
        SongNote "D4"
        SongNoteLength $2
        SongNote "B3"
        SongNoteLength $5
        SongNote "E4"
        SongNoteLength $1
        SongNote "D4"
        SongNoteLength $2
        SongNote "C#4"
        SongNote "F#3"
        SongNote "G3"
        SongNote "A#3"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $6
        SongNote "B2"
        SongNoteLength $1
        SongNote "A2"
        SongNote "B2"
        SongNote "C#3"
        SongNote "D3"
        SongNote "E3"
        SongNote "F3"
        SongNoteLength $6
        SongNote "F#3"
        SongNote "A#3"
        SongNoteLength $2
        SongNote "B3"
        SongNoteLength $0
        SongNote "F#3"
        SongNote "G3"
        SongNoteLength $1
        SongNote "F#3"
        SongNoteLength $0
        SongNote "E3"
        SongNote "F#3"
        SongNoteLength $1
        SongNote "E3"
        SongNoteLength $0
        SongNote "D3"
        SongNote "E3"
        SongNoteLength $1
        SongNote "D3"
        SongNoteLength $0
        SongNote "C#3"
        SongNote "D3"
        SongNoteLength $1
        SongNote "C#3"
        SongNoteLength $0
        SongNote "B2"
        SongNote "C#3"
        SongNoteLength $1
        SongNote "B2"
        SongNoteLength $3
        SongNote "A#2"
        SongNoteLength $9
        SongNote "A2"
        SongNote "G#2"
        SongNote "F2"
        SongNoteLength $1
        SongNote "F#2"
        SongRest
        SongNote "F#4"
        SongRest
        SongNote "F#4"
        SongRest
    SongRepeat
    SongNoteLength $0
    SongNote "F#4"
    SongRest
    SongNoteLength $2
    SongRest
    SongNoteLength $0
    SongNote "F#4"
    SongRest
    SongNoteLength $1
    SongNote "F#4"
    SongRest
    SongNote "F#4"
    SongNoteLength $5
    SongRest
    SongNoteLength $2
    SongRest

@tri:
    SongRepeatSetup $A
        SongNoteLength $0
        SongNote "E4"
        SongRest
        SongNoteLength $1
        SongNote "E4"
        SongRest
        SongNoteLength $0
        SongNote "E4"
        SongRest
        SongNoteLength $A
        SongNote "E4"
        SongRest
        SongNote "E4"
        SongRest
        SongNoteLength $0
        SongNote "E4"
        SongRest
        SongNote "E4"
        SongRest
        SongNote "E4"
        SongRest
        SongNote "F#4"
        SongRest
        SongNoteLength $1
        SongNote "F#4"
        SongRest
        SongNoteLength $0
        SongNote "F#4"
        SongRest
        SongNoteLength $A
        SongNote "F#4"
        SongRest
        SongNote "F#4"
        SongRest
        SongNoteLength $0
        SongNote "F#4"
        SongRest
        SongNote "F#4"
        SongRest
        SongNote "F#4"
        SongRest
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $0
        SongNote "D4"
        SongRest
        SongNoteLength $1
        SongNote "D4"
        SongRest
        SongNoteLength $0
        SongNote "D4"
        SongRest
        SongNoteLength $A
        SongNote "D4"
        SongRest
        SongNote "D4"
        SongRest
        SongNoteLength $0
        SongNote "D4"
        SongRest
        SongNote "D4"
        SongRest
        SongNote "D4"
        SongRest
        SongNote "C#4"
        SongRest
        SongNoteLength $1
        SongNote "C#4"
        SongRest
        SongNoteLength $0
        SongNote "C#4"
        SongRest
        SongNoteLength $A
        SongNote "C#4"
        SongRest
        SongNote "C#4"
        SongRest
        SongNoteLength $0
        SongNote "C#4"
        SongRest
        SongNote "C#4"
        SongRest
        SongNote "C#4"
        SongRest
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $5
        SongNote "B4"
        SongRest
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $5
        SongNote "A#4"
        SongRest
    SongRepeat
    SongRepeatSetup $5
        SongNoteLength $0
        SongNote "B3"
        SongRest
        SongNote "D4"
        SongRest
        SongNote "F#4"
        SongRest
        SongNote "B4"
        SongRest
        SongNote "D5"
        SongRest
        SongNote "F#5"
        SongRest
        SongNote "B5"
        SongRest
        SongNote "F#5"
        SongRest
        SongNote "D5"
        SongRest
        SongNote "B4"
        SongRest
        SongNote "F#4"
        SongRest
        SongNote "D4"
        SongRest
        SongNote "A#3"
        SongRest
        SongNote "C#4"
        SongRest
        SongNote "F#4"
        SongRest
        SongNote "A#4"
        SongRest
        SongNote "C#5"
        SongRest
        SongNote "F#5"
        SongRest
        SongNote "A#5"
        SongRest
        SongNote "F#5"
        SongRest
        SongNote "C#5"
        SongRest
        SongNote "A#4"
        SongRest
        SongNote "G4"
        SongRest
        SongNote "F#4"
        SongRest
    SongRepeat
    SongNote "B3"
    SongRest
    SongNoteLength $2
    SongRest
    SongNoteLength $0
    SongNote "B3"
    SongRest
    SongNoteLength $1
    SongNote "B3"
    SongRest
    SongNote "B3"
    SongNoteLength $5
    SongRest
    SongNoteLength $2
    SongRest

@noise:
    SongRepeatSetup $3
        SongNoteLength $6
        .byte $45
        SongNoteLength $1
        .byte <DrumBeat00SFXData
        .byte $45
    SongRepeat
    SongNoteLength $3
    .byte $45
    .byte $57
    SongRepeatSetup $14
        SongNoteLength $1
        .byte $45
        .byte $03
        .byte $05
        .byte $03
        SongNoteLength $0
        .byte $0D
        .byte $0D
        .byte $03
        .byte $0D
        .byte <DrumBeat03SFXData
        .byte $0D
        .byte $03
        .byte $0D
    SongRepeat
    SongRepeatSetup $18
        SongNoteLength $1
        .byte $45
        .byte $03
        .byte <DrumBeat03SFXData
        .byte $03
        .byte <DrumBeat03SFXData
        .byte $03
    SongRepeat
    SongRepeatSetup $3
        SongNoteLength $2
        .byte $0D
    SongRepeat
    SongRepeatSetup $3
        SongNoteLength $2
        .byte $45
    SongRepeat
