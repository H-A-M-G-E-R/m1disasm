.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"
.include "config.asm"

.section "CHR Bank 0" bank $10 slot "CHRROMSlot" orga $0000 force
    TitleBG: .incbin "title/title_bg.chr" ; 4
    EndingBG: .incbin "title/ending_bg.chr" ; 4
    BrinstarBG: .incbin "data/brinstar/bg.chr" ; 4
    NorfairBG: .incbin "data/norfair/bg.chr" ; 4
    TourianBG: .incbin "data/tourian/bg.chr" ; 4
    KraidBG: .incbin "data/kraid/bg.chr" ; 4
    RidleyBG: .incbin "data/ridley/bg.chr" ; 4

    TitleSPR: .incbin "title/title_spr.chr" ; 4
    EndingSPR: .incbin "title/ending_spr.chr" ; 4

    SamusSuitGFX0: .incbin "common_chr/doropie_0.chr" ; 1
    SamusSuitGFX1: .incbin "common_chr/doropie_1.chr" ; 1
    SamusSuitlessGFX0: .incbin "common_chr/doropie_0.chr" ; 1
    SamusSuitlessGFX1: .incbin "common_chr/doropie_1.chr" ; 1

    CommonSPRGFX: .incbin "common_chr/common_spr.chr" ; 1
    ItemsGFX: .incbin "common_chr/items.chr" ; 1

    BrinstarSPR: .incbin "data/brinstar/sprite_tiles.chr" ; 1
    NorfairSPR: .incbin "data/norfair/sprite_tiles.chr" ; 1
    TourianSPR: .incbin "data/tourian/sprite_tiles.chr" ; 1
    KraidSPR: .incbin "data/kraid/sprite_tiles.chr" ; 1
    RidleySPR: .incbin "data/ridley/sprite_tiles.chr" ; 1

    BlankSPR:
.ends
