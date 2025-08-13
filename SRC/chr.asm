.include "hardware.asm"
.include "constants.asm"
.include "macros.asm"
.include "config.asm"

.section "CHR Bank 0" bank $10 slot "CHRROMSlot" orga $0000 force
    TitleBG: .incbin "title/title_bg.chr" ; 4
    EndingBG: .incbin "title/ending_bg.chr" ; 4
    SurfaceBG_Frame0: .incbin "data/surface/bg.chr" ; 4
    SurfaceBG_Frame1: .incbin "data/surface/bg_frame_1.chr" ; 4
    SurfaceBG_Frame2: .incbin "data/surface/bg_frame_2.chr" ; 4
    SurfaceBG_Frame3: .incbin "data/surface/bg_frame_3.chr" ; 4
    HeartBG_Frame0: .incbin "data/heart/bg.chr" ; 4
    HeartBG_Frame1: .incbin "data/heart/bg_frame_1.chr" ; 4
    HeartBG_Frame2: .incbin "data/heart/bg_frame_2.chr" ; 4
    HeartBG_Frame3: .incbin "data/heart/bg_frame_3.chr" ; 4
    SheolBG_Frame0: .incbin "data/sheol/bg.chr" ; 4
    SheolBG_Frame1: .incbin "data/sheol/bg_frame_1.chr" ; 4
    SheolBG_Frame2: .incbin "data/sheol/bg_frame_2.chr" ; 4
    SheolBG_Frame3: .incbin "data/sheol/bg_frame_3.chr" ; 4
    TrenchBG_Frame0: .incbin "data/trench/bg.chr" ; 4
    TrenchBG_Frame1: .incbin "data/trench/bg_frame_1.chr" ; 4
    TrenchBG_Frame2: .incbin "data/trench/bg_frame_2.chr" ; 4
    TrenchBG_Frame3: .incbin "data/trench/bg_frame_3.chr" ; 4
    LabyrinthBG_Frame0: .incbin "data/labyrinth/bg.chr" ; 4
    LabyrinthBG_Frame1: .incbin "data/labyrinth/bg_frame_1.chr" ; 4
    LabyrinthBG_Frame2: .incbin "data/labyrinth/bg_frame_2.chr" ; 4
    LabyrinthBG_Frame3: .incbin "data/labyrinth/bg_frame_3.chr" ; 4

    TitleSPR: .incbin "title/title_spr.chr" ; 4
    EndingSPR: .incbin "title/ending_spr.chr" ; 4

    JunkoNormalGFX0: .incbin "common_chr/junko_normal_0.chr" ; 1
    JunkoNormalGFX1: .incbin "common_chr/junko_normal_1.chr" ; 1
    JunkoNormalGFX2: .incbin "common_chr/junko_normal_2.chr" ; 1
    JunkoNormalGFX3: .incbin "common_chr/junko_normal_3.chr" ; 1
    JunkoNormalGFX4: .incbin "common_chr/junko_normal_4.chr" ; 1
    JunkoNormalGFX5: .incbin "common_chr/junko_normal_5.chr" ; 1
    JunkoNormalGFX6: .incbin "common_chr/junko_normal_6.chr" ; 1
    JunkoNormalGFX7: .incbin "common_chr/junko_normal_7.chr" ; 1
    JunkoNormalGFXSpider: .incbin "common_chr/junko_normal_spider.chr" ; 1 (placeholder)

    JunkoNudeGFX0: .incbin "common_chr/junko_nude_0.chr" ; 1
    JunkoNudeGFX1: .incbin "common_chr/junko_nude_1.chr" ; 1
    JunkoNudeGFX2: .incbin "common_chr/junko_nude_2.chr" ; 1
    JunkoNudeGFX3: .incbin "common_chr/junko_nude_3.chr" ; 1
    JunkoNudeGFX4: .incbin "common_chr/junko_nude_4.chr" ; 1
    JunkoNudeGFX5: .incbin "common_chr/junko_nude_5.chr" ; 1
    JunkoNudeGFX6: .incbin "common_chr/junko_nude_6.chr" ; 1
    JunkoNudeGFX7: .incbin "common_chr/junko_nude_7.chr" ; 1
    JunkoNudeGFXSpider: .incbin "common_chr/junko_nude_spider.chr" ; 1 (placeholder)

    JunkoPeaceGFX0: .incbin "common_chr/junko_peace_0.chr" ; 1
    JunkoPeaceGFX1: .incbin "common_chr/junko_peace_1.chr" ; 1
    JunkoPeaceGFX2: .incbin "common_chr/junko_peace_2.chr" ; 1
    JunkoPeaceGFX3: .incbin "common_chr/junko_peace_3.chr" ; 1
    JunkoPeaceGFX4: .incbin "common_chr/junko_peace_4.chr" ; 1
    JunkoPeaceGFX5: .incbin "common_chr/junko_peace_5.chr" ; 1
    JunkoPeaceGFX6: .incbin "common_chr/junko_peace_6.chr" ; 1
    JunkoPeaceGFX7: .incbin "common_chr/junko_peace_7.chr" ; 1
    JunkoPeaceGFXSpider: .incbin "common_chr/junko_normal_spider.chr" ; 1 (placeholder)

    JunkoPeaceLabyrinthGFX0: .incbin "common_chr/junko_peace_labyrinth_0.chr" ; 1
    JunkoPeaceLabyrinthGFX1: .incbin "common_chr/junko_peace_labyrinth_1.chr" ; 1
    JunkoPeaceLabyrinthGFX2: .incbin "common_chr/junko_peace_labyrinth_2.chr" ; 1
    JunkoPeaceLabyrinthGFX3: .incbin "common_chr/junko_peace_labyrinth_3.chr" ; 1
    JunkoPeaceLabyrinthGFX4: .incbin "common_chr/junko_peace_labyrinth_4.chr" ; 1
    JunkoPeaceLabyrinthGFX5: .incbin "common_chr/junko_peace_labyrinth_5.chr" ; 1
    JunkoPeaceLabyrinthGFX6: .incbin "common_chr/junko_peace_labyrinth_6.chr" ; 1
    JunkoPeaceLabyrinthGFX7: .incbin "common_chr/junko_peace_labyrinth_7.chr" ; 1
    JunkoPeaceLabyrinthGFXSpider: .incbin "common_chr/junko_nude_spider.chr" ; 1 (placeholder)

    ItemsNormalGFX: .incbin "common_chr/items_normal.chr" ; 1
    ItemsPeaceGFX: .incbin "common_chr/items_peace.chr" ; 1

    SurfaceEnemiesSPR: .incbin "data/surface/enemies.chr" ; 1
    HeartEnemiesSPR: .incbin "data/heart/enemies.chr" ; 1
    SheolEnemiesSPR: .incbin "data/sheol/enemies.chr" ; 1
    TrenchEnemiesSPR: .incbin "data/trench/enemies.chr" ; 1
    LabyrinthEnemiesSPR: .incbin "data/labyrinth/enemies.chr" ; 1

    BlankSPR:
.ends
