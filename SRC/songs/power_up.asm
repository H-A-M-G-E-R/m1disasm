SongPowerUpHeader:
    SongHeader NoteLengthsTbl@4, $00, $F0, $01, $03
    .word @sq1, @sq2, @tri, $0000
    .byte $B6, $F6

@sq1:
    SongNoteLength $B
    SongRest
    SongNoteLength $7
    SongNote "F3"
    SongNote "G#3"
    SongNote "F3"
    SongNoteLength $6
    SongNote "G#3"
    SongNoteLength $B
    SongNote "F3"
    SongNote "G#3"
    SongNoteLength $7
    SongNote "G3"
    SongNote "A#3"
    SongNote "G3"
    SongNoteLength $6
    SongNote "A#3"

@sq2:
    SongNoteLength $7
    SongNote "F3"
    SongNote "G#3"
    SongNote "F3"
    SongNoteLength $6
    SongNote "G#3"
    SongNoteLength $B
    SongNote "F3"
    SongNote "G#3"
    SongNoteLength $7
    SongNote "G3"
    SongNote "A#3"
    SongNote "G3"
    SongNoteLength $6
    SongNote "A#3"
    SongEnd

@tri:
    SongNoteLength $F
    SongNote "F3"
    SongNote "G#3"
