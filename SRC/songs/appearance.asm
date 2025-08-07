SongAppearanceHeader:
    SongHeader NoteLengthsTbl@6, $00, $F0, $02, $00
    .word @sq1, @sq2, @tri, $0000
    .byte $34, $34

@sq1:
    SongNoteLength $4
    SongNote "E4"
    SongNote "F#4"
    SongNote "A4"
    SongNote "G2"
    SongEnd

@sq2:
    SongRepeatSetup $C
        SongNoteLength $0
        SongNote "A#4"
        SongNote "A4"
        SongNote "G4"
        SongNote "F#4"
    SongRepeat
    SongRepeatSetup $4
        SongNoteLength $4
        SongNote "F2"
    SongRepeat

@tri:
    SongNoteLength $4
    SongNote "E4"
    SongNote "F#4"
    SongNote "A4"
    SongNote "G2"
