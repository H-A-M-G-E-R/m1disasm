; -------------------
; METROID source code
; -------------------
; MAIN PROGRAMMERS
;     HAI YUKAMI
;   ZARU SOBAJIMA
;    GPZ SENGOKU
;    N.SHIOTANI
;     M.HOUDAI
; (C) 1986 NINTENDO
;
;Disassembled, reconstructed and commented
;by SnowBro [Kent Hansen] <kentmhan@online.no>
;Continued by Dirty McDingus (nmikstas@yahoo.com)
;A work in progress.

;Metroid defines.


.ifndef BUILDTARGET
    .fail "no build target specified"
.endif


.memorymap
    defaultslot 0
    slot 0 $0000 $0010 "HeaderSlot"
    slot 1 $0000 $0800 "RAMConsoleSlot"
    slot 2 $6000 $2000 "RAMCartSlot"
    slot 3 $8000 $4000 "ROMSwitchSlot"
    slot 4 $C000 $4000 "ROMFixedSlot"
    slot 5 $0000 $40000 "CHRROMSlot"
.endme

.rombankmap
    bankstotal $11
    banksize $4000
    banks $10
    banksize $40000
    banks 1
.endro

.stringmaptable charmap "SRC/charmap.tbl"


.include "SRC/constants_ram.asm"


;------------------------------------------[ Misc. defines ]-----------------------------------------

;Special item types.
it_Squeept             = $1
it_PowerUp             = $2
it_Mellow              = $3
it_Elevator            = $4
it_Cannon              = $5   ;High nibble is Cannons.0.instrListID
it_MotherBrain         = $6
it_Zebetite            = $7   ;High nibble is Zebetite slot ID
it_RinkaSpawner        = $8
it_Door                = $9
it_PaletteChange       = $A

;Power up id for items
pu_BOMBS               = $00
pu_HIGHJUMP            = $01
pu_LONGBEAM            = $02
pu_SCREWATTACK         = $03
pu_MARUMARI            = $04
pu_VARIA               = $05
pu_WAVEBEAM            = $06
pu_ICEBEAM             = $07
pu_ENERGYTANK          = $08
pu_MISSILES            = $09

;Bitmask defs used for SamusGear.
gr_BOMBS               = %00000001
gr_HIGHJUMP            = %00000010
gr_LONGBEAM            = %00000100
gr_SCREWATTACK         = %00001000
gr_MARUMARI            = %00010000
gr_VARIA               = %00100000
gr_WAVEBEAM            = %01000000
gr_ICEBEAM             = %10000000

gr1_SPIDERBALL         = %00000001

;unique items IIIIII
ui_BOMBS               = %000000 << 10
ui_HIGHJUMP            = %000001 << 10
ui_LONGBEAM            = %000010 << 10 ;(Not considered a unique item).
ui_SCREWATTACK         = %000011 << 10
ui_MARUMARI            = %000100 << 10
ui_VARIA               = %000101 << 10
ui_WAVEBEAM            = %000110 << 10 ;(Not considered a unique item).
ui_ICEBEAM             = %000111 << 10 ;(Not considered a unique item).
ui_ENERGYTANK          = %001000 << 10
ui_MISSILES            = %001001 << 10
ui_MISSILEDOOR         = %001010 << 10
ui_MOTHERBRAIN         = %001110 << 10
ui_ZEBETITE1           = %001111 << 10
ui_ZEBETITE2           = %010000 << 10
ui_ZEBETITE3           = %010001 << 10
ui_ZEBETITE4           = %010010 << 10
ui_ZEBETITE5           = %010011 << 10

;Samus action handlers.
sa_Stand               = 0
sa_Run                 = 1       ;Also run and jump.
sa_Jump                = 2
sa_Roll                = 3
sa_PntUp               = 4
sa_05                  = 5       ;Dummied out, was sa_Door.
sa_PntJump             = 6
sa_SpiderIdle          = 7
sa_SpiderRoll          = 8
sa_SpiderFall          = 9
sa_Dead                = 10
sa_Dead2               = 11      ;Also after time bomb exploded.
sa_Elevator            = 12
sa_FadeIn              = 13
sa_Begin               = 255

;Weapon action handlers.
wa_RegularBeam         = $01
wa_WaveBeam            = $02
wa_IceBeam             = $03
wa_WaveIceBeam         = $04
wa_BulletExplode       = $05
wa_LayBomb             = $06
wa_BombCount           = $07
wa_BombExplode         = $08
wa_Missile             = $09 ; must be an odd number, see FireWeaponForwards and FireWeaponUpwards
wa_ScrewAttack         = $0A

;Enemy Status
enemyStatus_NoEnemy    = 0
enemyStatus_Resting    = 1
enemyStatus_Active     = 2
enemyStatus_Explode    = 3
enemyStatus_Frozen     = 4
enemyStatus_Pickup     = 5
enemyStatus_Hurt       = 6
; greater than 6 is the same as no enemy

;Sound indices (higher index = higher priority)
;sfxNoise_08            = $08
sfxNoise_ScrewAttack   = $07
sfxNoise_MissileLaunch = $06
sfxNoise_BombExplode   = $05
sfxNoise_SamusWalk     = $04
sfxNoise_SpitFlame     = $03
sfxNoise_PauseMusic    = $02
;sfxNoise_01            = $01

sfxSQ1_Pause           = $0C
sfxSQ1_MissilePickup   = $0B
sfxSQ1_EnergyPickup    = $0A
sfxSQ1_Metal           = $09
sfxSQ1_IceBeam         = $08
sfxSQ1_LongBeam        = $07
sfxSQ1_BulletFire      = $06
sfxSQ1_TimeBombTick    = $05
sfxSQ1_OutOfHole       = $04
sfxSQ1_EnemyHit        = $03
sfxSQ1_SamusJump       = $02
sfxSQ1_WaveFire        = $01

sfxTri_SamusDie        = $08
sfxTri_Door            = $07
sfxTri_MetroidHit      = $06
sfxTri_StatueRaise     = $05
sfxTri_Beep            = $04
sfxTri_BigEnemyHit     = $03
sfxTri_SamusBall       = $02
sfxTri_BombLaunch      = $01

;sfxMulti_08            = $08
;sfxMulti_07            = $07
;sfxMulti_06            = $06
;sfxMulti_05            = $05
;sfxMulti_04            = $04
sfxMulti_SamusHit      = $03
sfxMulti_BossHit       = $02
sfxMulti_IncorrectPassword = $01

music_RidleyArea       = $01
music_Tourian          = $02
music_ItemRoom         = $03
music_KraidArea        = $04
music_Norfair          = $05
music_Escape           = $06
music_MotherBrain      = $07
music_Brinstar         = $08
music_Intro            = $09
music_PowerUp          = $0A
music_EndMusic         = $0B
music_IntroMusic       = $0C
