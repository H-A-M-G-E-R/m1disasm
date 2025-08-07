SongItemRoomHeartHeader:
    SongHeader NoteLengthsTbl@6, $FF, $03, $00, $00
    .word @sq1, @sq2, @tri, $0000
    .byte $92, $96

@sq1:
    SongNoteLength $8
    SongRest
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

@sq2:
    SongNoteLength $3
    SongRest
    SongNoteLength $2
    SongRest
    SongNoteLength $4
    SongRest
    SongNoteLength $2
    SongRest
    SongNoteLength $3
    SongRest
    SongNoteLength $2
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
    SongRepeatSetup $4
        SongNoteLength $4
        SongRest
    SongRepeat
