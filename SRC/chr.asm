.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"

.SECTION "CHR Bank 0" BANK 8 SLOT "CHRROMSlot" ORGA $0000 FORCE
    TitleBG: .incbin "title/title_bg.chr" ; 4
    EndingBG: .incbin "title/ending_bg.chr" ; 4
    BrinstarBG: .incbin "data/brinstar/bg.chr" ; 4
    NorfairBG: .incbin "data/norfair/bg.chr" ; 4
    TourianBG: .incbin "data/tourian/bg.chr" ; 4
    KraidBG: .incbin "data/kraid/bg.chr" ; 4
    RidleyBG: .incbin "data/ridley/bg.chr" ; 4

    TitleSPR: .incbin "title/title_spr.chr" ; 4
    EndingSPR: .incbin "title/ending_spr.chr" ; 4

    SamusSuitGFX0: .incbin "common_chr/samus_suit_0.chr" ; 1
    SamusSuitGFX1: .incbin "common_chr/samus_suit_1.chr" ; 1
    SamusSuitGFX2: .incbin "common_chr/samus_suit_2.chr" ; 1
    SamusSuitGFX3: .incbin "common_chr/samus_suit_3.chr" ; 1
    SamusSuitGFX4: .incbin "common_chr/samus_suit_4.chr" ; 1
    SamusSuitGFX5: .incbin "common_chr/samus_suit_5.chr" ; 1
    SamusSuitGFX6: .incbin "common_chr/samus_suit_6.chr" ; 1
    SamusSuitGFX7: .incbin "common_chr/samus_suit_7.chr" ; 1
    SamusSuitGFXSpider: .incbin "common_chr/samus_suit_spider.chr" ; 1
    SamusSuitlessGFX0: .incbin "common_chr/samus_suitless_0.chr" ; 1
    SamusSuitlessGFX1: .incbin "common_chr/samus_suitless_1.chr" ; 1
    SamusSuitlessGFX2: .incbin "common_chr/samus_suitless_2.chr" ; 1
    SamusSuitlessGFX3: .incbin "common_chr/samus_suitless_3.chr" ; 1
    SamusSuitlessGFX4: .incbin "common_chr/samus_suitless_4.chr" ; 1
    SamusSuitlessGFX5: .incbin "common_chr/samus_suitless_5.chr" ; 1
    SamusSuitlessGFX6: .incbin "common_chr/samus_suitless_6.chr" ; 1
    SamusSuitlessGFX7: .incbin "common_chr/samus_suitless_7.chr" ; 1
    SamusSuitlessGFXSpider: .incbin "common_chr/samus_suit_spider.chr" ; 1 (placeholder)

    IrizarGFX: .incbin "common_chr/irizar.chr" ; 1
    BusscarGFX: .incbin "common_chr/busscar.chr" ; 1

    BrinstarSPR: .incbin "data/brinstar/sprite_tiles.chr" ; 1
    NorfairSPR: .incbin "data/norfair/sprite_tiles.chr" ; 1
    TourianSPR: .incbin "data/tourian/sprite_tiles.chr" ; 1
    KraidSPR: .incbin "data/kraid/sprite_tiles.chr" ; 1
    RidleySPR: .incbin "data/ridley/sprite_tiles.chr" ; 1

    BlankSPR:
.ENDS
