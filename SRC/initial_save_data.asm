InitialSaveData:
    .word $0999 ; Health = 99
    .word $0999 ; MaxHealth = 99
    .byte $00   ; SamusGear
    .byte $00   ; MissileCount
    .byte $00   ; MaxMissiles
    .byte $00   ; KraidStatueStatus
    .byte $00   ; RidleyStatueStatus
    .byte $00   ; SamusAge
    .byte $00   ; SamusAge+1
    .byte $00   ; SamusAge+2
    .byte $00   ; SamusGear1
    .byte $00   ; SaveArea = Brinstar
    .byte $16   ; SaveSamusMapX
    .byte $0B   ; SaveSamusMapY
    .byte $80   ; SaveSamusX
    .byte $6E   ; SaveSamusY
    .byte $02   ; SaveScrollDir = horizontal
    .byte music_Brinstar ; CurrentRoomMusic
    .byte $00   ; TilesetIndex
    .byte $00   ; EndingType = game not completed
    .byte $00   ; NARPASSWORD
    .byte $00   ; JustInBailey
    .byte $00   ; NumberOfUniqueItems
InitialSaveDataEnd:
