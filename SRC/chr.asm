.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"

.SECTION "CHR Bank 0" BANK 8 SLOT "CHRROMSlot" ORGA $0000 FORCE
    TitleBG: .incbin "SRC/title/title_bg.chr" ; 4
    EndingBG: .incbin "SRC/title/ending_bg.chr" ; 4
    BrinstarBG: .incbin "brinstar/bg.chr" ; 4
    NorfairBG: .incbin "norfair/bg.chr" ; 4
    TourianBG: .incbin "tourian/bg.chr" ; 4
    KraidBG: .incbin "kraid/bg.chr" ; 4
    RidleyBG: .incbin "ridley/bg.chr" ; 4

    TitleSPR: .incbin "SRC/title/title_spr.chr" ; 4
    EndingSPR: .incbin "SRC/title/ending_spr.chr" ; 4

    SamusSuitGFX0: .incbin "common_chr/samus_suit_0.chr" ; 1
    SamusSuitGFX1: .incbin "common_chr/samus_suit_1.chr" ; 1
    SamusSuitGFX2: .incbin "common_chr/samus_suit_2.chr" ; 1
    SamusSuitGFX3: .incbin "common_chr/samus_suit_3.chr" ; 1
    SamusSuitGFX4: .incbin "common_chr/samus_suit_4.chr" ; 1
    SamusSuitGFX5: .incbin "common_chr/samus_suit_5.chr" ; 1
    SamusSuitGFX6: .incbin "common_chr/samus_suit_6.chr" ; 1
    SamusSuitGFX7: .incbin "common_chr/samus_suit_7.chr" ; 1
    SamusSuitlessGFX0: .incbin "common_chr/samus_suitless_0.chr" ; 1
    SamusSuitlessGFX1: .incbin "common_chr/samus_suitless_1.chr" ; 1
    SamusSuitlessGFX2: .incbin "common_chr/samus_suitless_2.chr" ; 1
    SamusSuitlessGFX3: .incbin "common_chr/samus_suitless_3.chr" ; 1
    SamusSuitlessGFX4: .incbin "common_chr/samus_suitless_4.chr" ; 1
    SamusSuitlessGFX5: .incbin "common_chr/samus_suitless_5.chr" ; 1
    SamusSuitlessGFX6: .incbin "common_chr/samus_suitless_6.chr" ; 1
    SamusSuitlessGFX7: .incbin "common_chr/samus_suitless_7.chr" ; 1

    ItemsGFX: .incbin "common_chr/items.chr" ; 1

    BrinstarSPR: .incbin "SRC/brinstar/sprite_tiles.chr" ; 1
    NorfairSPR: .incbin "SRC/norfair/sprite_tiles.chr" ; 1
    TourianSPR: .incbin "SRC/tourian/sprite_tiles.chr" ; 1
    KraidSPR: .incbin "SRC/kraid/sprite_tiles.chr" ; 1
    RidleySPR: .incbin "SRC/ridley/sprite_tiles.chr" ; 1

    BlankSPR:
.ENDS
