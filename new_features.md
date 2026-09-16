# Engine
* RNG is fixed, using this: https://www.nesdev.org/wiki/Random_number_generator
* MMC3 or MMC5 CHR ROM, allowing for animated tiles.
* Palettes are put in a buffer (PalRam), allowing multiple palette changes in one frame.
* Animated tilesets and palettes
* Freed up area bank space by moving common sprite data to a seperate bank (originally it was in all area banks).
* Bankswitch to access world map so we don't have to copy it to RAM, freeing up PRG RAM.
* Moved HUD code to bank 0 to free up bank 7.
* Rewrote attribute scrolling to fix color glitches while scrolling.
* New metasprite engine, reducing lag and making it easier to add/edit metasprites. Can use NEXXT to make metasprites: https://frankengraphics.itch.io/nexxt

# Saving
* Implemented saving to 3 slots, no menu yet, may consider the Metroid + Saving hack.
* Items are directly saved, never encoded to a password.
* Game is saved after using an elevator, and reverts to the previous save upon death just like later games.

# Room
* Rooms are stored as compressed data instead of structures, allowing more variety, but uses more space.
* Vertical door transitions. Just use the same door tile and Samus will enter the door depending on the which side she touches the tile.
* New object types:
    * Scroll blocks: Blocks scrolling to not show unwanted rooms.
    * Tileset change: Changes tileset and palette.
    * Music change: Changes music.
    * Area change: Changes area.
    * Room states: Change rooms based on conditions, such as scroll direction, item collected, and miniboss dead.
* Tile blast animation and respawn time can be customizable for each type of tile. Can set it to never respawn until the room is reloaded.
* Objects can be placed off-grid.
* Execute code after loading a room, just like Editroid.
* Editroid's Doorway Scrolling Patch, togglable in config

# Samus
* Samus's GFX are CHR bankswitched, freeing up CHR for extra stuff.
* Samus has unique left-facing sprites, making use of the feature mentioned above.
* Samus can aim while jumping/falling.
* New item: Spider Ball! Works like M2: press down while morphed to activate spider ball, A to deactivate.
* Unmorphing now checks for frozen enemies above.
* Start with full health on game start.
* Samus can have a maximum of 8 energy tanks instead of 6.


# Projectiles
* Ice beam and wave beam can stack.
* Gave the ice beam and explosion seperate metasprites.
* Damage table for each projectile (WeaponDamageTbl)

# Enemies
* Expanded the number of enemies from 6 to 12.
* Fixed a bug where exploding a tough enemy shows its non-tough color.
* Fixed tough rippers/squeepts not being immune to everything.
* Non-tough ripper II is purple instead of having the same color as its tough variant. (red)
* Enemies move at 60fps instead of 30fps.
* New flags: process offscreen, solid, ignore projectile or Samus collision, H-flip
* Enemies/enemy projectiles/mellows have their own damage values instead of having a common value, can have a seperate value for tough variants.
* Enemies have different drop rates instead of being shared, can have seperate rates for tough variants.
