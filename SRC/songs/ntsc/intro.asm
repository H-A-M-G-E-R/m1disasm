SongIntroHeader:
    SongHeader NoteLengthsTbl@9, $01, $F0, $02, $05
    .word SongIntroSQ1, SongIntroSQ2, SongIntroTri, $0000
    .byte $B6, $F6

SongIntroSQ2:
    SongNoteLength $0
    .byte $01

SongIntroTri:
    SongNoteLength $0
    .byte $01

SongIntroSQ1:
    SongNoteLength $0
    .byte $01
    SongEnd
