SongEscapeHeader:
    SongHeader NoteLengthsTbl@6, $FF, $F0, $03, $03
    .word @sq1, @sq2, @tri, @noise
    .byte $F4, $F4

@sq1:
    SongNoteLength $4
    SongNote "F3"
    SongRepeatSetup $7
        SongNoteLength $4
        SongNote "C3"
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $3
        SongNote "C3"
    SongRepeat
    SongRepeatSetup $6
        SongNoteLength $2
        SongNote "C3"
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $1
        SongNote "C3"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $2
        SongNote "C#3"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $2
        SongNote "C3"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $2
        SongNote "C#3"
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $2
        SongNote "C3"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $2
        SongNote "F3"
        SongNote "F3"
        SongNote "D#3"
        SongNote "D#3"
        SongNote "C#3"
        SongNote "C#3"
        SongNote "C3"
        SongNote "C3"
        SongNote "A#2"
        SongNote "A#2"
        SongNote "B2"
        SongNote "B2"
        SongNote "C3"
        SongNote "C3"
        SongNote "C3"
        SongNote "C3"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $2
        SongNote "A#2"
        SongNote "A#2"
        SongNote "A#2"
        SongNote "A#2"
        SongNote "G#2"
        SongNote "G#2"
        SongNote "G#2"
        SongNote "G#2"
        SongNote "F#2"
        SongNote "F#2"
        SongNote "F#2"
        SongNote "F#2"
        SongNote "F2"
        SongNote "F2"
        SongNoteLength $1
        SongNote "F2"
        SongNote "F2"
        SongNote "F2"
        SongNote "F2"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $2
        SongNote "C3"
        SongNote "F3"
        SongNote "D#3"
        SongNote "C3"
        SongNote "F3"
        SongNote "D#3"
        SongNote "F3"
        SongNote "C3"
    SongRepeat
    SongRepeatSetup $7
        SongNoteLength $2
        SongNote "C#3"
    SongRepeat
    SongNote "C3"
    SongRepeatSetup $4
        SongNoteLength $2
        SongNote "A#2"
    SongRepeat
    SongNote "D3"
    SongNote "D3"
    SongNote "D#3"
    SongNote "E3"
    SongNote "C5"
    SongNote "F5"
    SongNoteLength $3
    SongNote "D#5"
    SongNoteLength $1
    SongNote "C5"
    SongRest
    SongNote "A#4"
    SongRest
    SongNoteLength $3
    SongNote "G#4"
    SongNoteLength $2
    SongNote "F4"
    SongNote "C4"
    SongNoteLength $3
    SongNote "D#4"
    SongNoteLength $9
    SongNote "F4"
    SongNote "D#4"
    SongNote "F4"
    SongNote "G4"
    SongNote "F4"
    SongNote "G4"
    SongNote "G#4"
    SongNote "G4"
    SongNote "G#4"
    SongNote "A#4"
    SongNote "G#4"
    SongNote "A#4"
    SongNoteLength $5
    SongNote "C5"
    SongNoteLength $1
    SongNote "F4"
    SongNoteLength $4
    SongNote "F4"
    SongNoteLength $1
    SongNote "F4"
    SongNote "G4"
    SongNote "G#4"
    SongNote "A#4"
    SongNoteLength $A
    SongNote "F3"
    SongNote "G3"
    SongNote "G#3"
    SongNote "A#3"
    SongNote "C4"
    SongNote "D4"
    SongNote "D#4"
    SongNote "E4"
    SongNoteLength $2
    SongNote "F4"
    SongNote "D#4"
    SongNote "C4"
    SongNote "F4"
    SongNote "D#4"
    SongNote "F4"
    SongNote "C3"
    SongEnd

@sq2:
    SongRepeatSetup $3
        SongNoteLength $1
        SongNote "F3"
        SongNote "G#3"
        SongNote "F3"
        SongNoteLength $3
        SongNote "G#3"
        SongNoteLength $0
        SongNote "F3"
        SongNote "G#3"
        SongNoteLength $1
        SongNote "G3"
        SongNote "A#3"
        SongNote "G3"
        SongNoteLength $3
        SongNote "A#3"
        SongNoteLength $0
        SongNote "G#3"
        SongNote "A#3"
        SongNoteLength $1
        SongNote "C4"
        SongNote "A#3"
        SongNote "G#3"
        SongNoteLength $3
        SongNote "F3"
        SongNoteLength $0
        SongNote "A#3"
        SongNote "C4"
        SongNoteLength $1
        SongNote "A#3"
        SongNote "G#3"
        SongNoteLength $0
        SongNote "G3"
        SongNote "A#3"
        SongNoteLength $5
        SongNote "E3"
        SongNoteLength $2
        SongNote "G3"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $3
        SongNote "F3"
        SongNoteLength $1
        SongRest
        SongNoteLength $7
        SongNote "E3"
        SongNote "F3"
        SongNoteLength $3
        SongNote "G3"
        SongNoteLength $1
        SongRest
        SongNoteLength $7
        SongNote "F3"
        SongNote "G3"
        SongNoteLength $3
        SongNote "G3"
        SongNoteLength $1
        SongRest
        SongNoteLength $7
        SongNote "F3"
        SongNote "D3"
        SongNoteLength $3
        SongNote "E3"
        SongNoteLength $2
        SongNote "D3"
        SongNote "E3"
    SongRepeat
    SongNoteLength $3
    SongNote "G#4"
    SongNote "G4"
    SongNote "F4"
    SongNote "E4"
    SongNote "C#4"
    SongNote "D4"
    SongNote "E4"
    SongNoteLength $2
    SongNote "E4"
    SongNote "G4"
    SongNote "F4"
    SongNote "G#4"
    SongNote "G4"
    SongNote "D#4"
    SongNote "C#4"
    SongNote "F4"
    SongNote "E4"
    SongNote "C4"
    SongNote "A#3"
    SongNote "G#3"
    SongNote "G3"
    SongNote "F3"
    SongNoteLength $5
    SongNote "E3"
    SongNoteLength $A
    SongNote "G3"
    SongNote "G#3"
    SongNote "A#3"
    SongNote "B3"
    SongNoteLength $3
    SongNote "C4"
    SongRepeatSetup $2
        SongNoteLength $5
        SongNote "C#4"
        SongNoteLength $3
        SongNote "D#4"
        SongNoteLength $1
        SongRest
        SongNoteLength $5
        SongNote "C4"
        SongNoteLength $3
        SongNote "C#4"
        SongNoteLength $1
        SongRest
        SongNoteLength $5
        SongNote "A#3"
        SongNoteLength $3
        SongNote "C4"
        SongNoteLength $1
        SongRest
        SongNoteLength $4
        SongNote "A3"
    SongRepeat
    SongRepeatSetup $7
        SongNoteLength $2
        SongNote "F2"
        SongNote "G#3"
        SongNote "G3"
        SongRest
        SongNote "G#3"
        SongNote "G3"
        SongNote "G#3"
        SongRest
    SongRepeat
    SongNoteLength $A
    SongNote "G#3"
    SongNote "A#3"
    SongNote "C4"
    SongNote "D4"
    SongNote "D#4"
    SongNote "E4"
    SongNote "F4"
    SongNote "G4"
    SongNoteLength $2
    SongNote "G#4"
    SongNote "G4"
    SongRest
    SongNote "G#4"
    SongNote "G4"
    SongNote "G#4"
    SongNote "C4"

@tri:
    SongRepeatSetup $3
        SongNoteLength $1
        SongNote "G#4"
        SongNote "C5"
        SongNote "G#4"
        SongNoteLength $3
        SongNote "C5"
        SongNoteLength $0
        SongNote "G#4"
        SongNote "C5"
        SongNoteLength $1
        SongNote "A#4"
        SongNote "C#5"
        SongNote "A#4"
        SongNoteLength $3
        SongNote "C#5"
        SongNoteLength $0
        SongNote "C5"
        SongNote "C#5"
        SongNoteLength $1
        SongNote "D#5"
        SongNote "C#5"
        SongNote "C5"
        SongNoteLength $3
        SongNote "G#4"
        SongNoteLength $0
        SongNote "C#5"
        SongNote "D#5"
        SongNoteLength $1
        SongNote "C#5"
        SongNote "C5"
        SongNote "A#4"
        SongNoteLength $5
        SongNote "C5"
        SongNoteLength $2
        SongNote "C5"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $3
        SongNote "G#4"
        SongNoteLength $1
        SongRest
        SongNoteLength $7
        SongNote "G4"
        SongNote "G#4"
        SongNoteLength $3
        SongNote "A#4"
        SongNoteLength $1
        SongRest
        SongNoteLength $7
        SongNote "G#4"
        SongNote "A#4"
        SongNoteLength $3
        SongNote "A#4"
        SongNoteLength $1
        SongRest
        SongNoteLength $7
        SongNote "G#4"
        SongNote "F4"
        SongNoteLength $1
        SongNote "G4"
        SongNote "G#4"
        SongNote "G4"
        SongNote "G#4"
        SongNote "G4"
        SongNote "G#4"
        SongNote "F4"
        SongNote "G4"
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $0
        SongNote "F4"
        SongNote "C5"
        SongNoteLength $1
        SongNote "A#4"
        SongNote "G#4"
        SongNoteLength $2
        SongNote "A#4"
        SongNoteLength $1
        SongNote "G#4"
        SongNote "G4"
        SongNoteLength $2
        SongNote "G#4"
        SongNoteLength $1
        SongNote "G4"
        SongNote "F4"
        SongNoteLength $3
        SongNote "G4"
        SongNoteLength $1
        SongRest
        SongNote "F4"
        SongNote "G4"
        SongNote "G#4"
        SongNoteLength $2
        SongNote "F4"
        SongNoteLength $1
        SongNote "G4"
        SongNoteLength $0
        SongNote "G#4"
        SongRest
        SongNoteLength $3
        SongNote "G#4"
        SongNote "G4"
        SongNoteLength $1
        SongRest
    SongRepeat
    SongRepeatSetup $2
        SongNoteLength $5
        SongNote "F4"
        SongNoteLength $3
        SongNote "G4"
        SongNoteLength $1
        SongRest
        SongNoteLength $5
        SongNote "D#4"
        SongNoteLength $3
        SongNote "F4"
        SongNoteLength $1
        SongRest
        SongNoteLength $5
        SongNote "C#4"
        SongNoteLength $3
        SongNote "D#4"
        SongNoteLength $1
        SongRest
        SongNote "C4"
        SongNote "C#4"
        SongNote "C4"
        SongNote "C#4"
        SongNote "C4"
        SongNote "C#4"
        SongNote "C4"
        SongNote "C3"
    SongRepeat
    SongRepeatSetup $7
        SongNoteLength $2
        SongNote "F2"
        SongNote "C5"
        SongNote "A#4"
        SongRest
        SongNote "C5"
        SongNote "A#4"
        SongNote "C5"
        SongRest
    SongRepeat
    SongNote "F2"
    SongNote "C6"
    SongNote "A#5"
    SongRest
    SongNote "C6"
    SongNote "A#5"
    SongNote "C6"
    SongNote "C3"

@noise:
    SongRepeatSetup $2E
        SongNoteLength $2
        .byte $0D
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $1
        .byte $0D
    SongRepeat
    SongRepeatSetup $20
        SongNoteLength $1
        .byte <DrumBeat01SFXData
        .byte $03
    SongRepeat
    SongRepeatSetup $8
        SongNoteLength $2
        .byte $45
        .byte $27
        .byte $39
        SongNoteLength $A
        .byte <DrumBeat01SFXData
        .byte $03
        .byte <DrumBeat01SFXData
        .byte $03
        .byte <DrumBeat01SFXData
        .byte $03
        .byte <DrumBeat01SFXData
        .byte $03
    SongRepeat
    SongRepeatSetup $E
        SongNoteLength $0
        .byte $45
        .byte <DrumBeat00SFXData
        SongNoteLength $1
        .byte $0D
        .byte <DrumBeat01SFXData
        .byte $0D
    SongRepeat
    SongNoteLength $3
    .byte $0D
    .byte $57
    SongRepeatSetup $E
        SongNoteLength $1
        .byte $0D
        .byte $0D
        SongNoteLength $2
        .byte <DrumBeat02SFXData
        .byte $05
        .byte $27
    SongRepeat
    SongNoteLength $4
    .byte $0D
    .byte <DrumBeat00SFXData
