InitialSaveData:
    .word $1000 ; Health = 100
    .word $1000 ; MaxHealth = 100
    .byte $00   ; SamusGear
    .byte $00   ; MissileCount
    .byte $00   ; MaxMissiles
    .byte $00   ; KraidStatueStatus
    .byte $00   ; RidleyStatueStatus
    .byte $00   ; SamusAge
    .byte $00   ; SamusAge+1
    .byte $00   ; SamusAge+2
    .byte $00   ; SamusGear1
    .byte $00   ; SaveArea = surface
    .byte $0A   ; SaveSamusMapX
    .byte $01   ; SaveSamusMapY
    .byte $80   ; SaveSamusX
    .byte $B9   ; SaveSamusY
    .byte $02   ; SaveScrollDir = horizontal
    .byte $00   ; TilesetIndex
    .byte $00   ; EndingType = game not completed
    .byte $00   ; NARPASSWORD
    .byte $00   ; JustInBailey
    .byte $00   ; NumberOfUniqueItems
InitialSaveDataEnd:
