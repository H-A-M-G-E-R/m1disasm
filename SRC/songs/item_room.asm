SongItemRoomHeader:
    SongHeader NoteLengthsTbl@6, $FF, $03, $00, $00
    .word @sq1, $0000, @tri, $0000
    .byte $92, $96

@sq1:
    SongNoteLength $3
    SongRest
    SongNoteLength $2
    SongRest
    SongRest
    SongRest
    SongRest
    SongRest
    SongRest
    SongRest
    SongNoteLength $4
    SongRest
    SongNoteLength $2
    SongRest
    SongRest
    SongRest
    SongRest
    SongRest
    SongNoteLength $3
    SongRest
    SongNoteLength $2
    SongRest
    SongRest
    SongRest
    SongNoteLength $3
    SongRest
    SongEnd

@tri:
    SongRepeatSetup $2
        SongNoteLength $0
        SongNote "B2"
        SongNote "C3"
        SongNote "G#2"
        SongNote "A2"
    SongRepeat
    SongRepeatSetup $20
        SongNoteLength $4
        SongRest
    SongRepeat
