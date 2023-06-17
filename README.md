# Quake 1 config + notes

## Features

- keybindings:
    - `mouse scroll`: make changing weapon more natural (scroll down for previous weapon)
    - `right mouse button`: cheat: toggle no clipping
    - `f`: cheat: toggle showing fullbrights. Useful in some maps. Might be considered cheating as it makes finding some secrets easier
    - `g`: cheat: immortality
    - `b`: cheat: show bounding boxes, with Ironwail you can pair it with r_showbboxes_filer to display only what you need (like keys, items, monsters, etc.)
    - `x`/`q`/`r`/`v`: switching weapons (closer to w/s/a/d for quicker switching, might be useful in multiplayer)
    - `\`: display FPS
    - `F10`: change visual and other settings, by default it was `quit`. Use `look{0,1,2,3}_{iw,qs,qss,qssm,vk}` before once, more about it below
    - `F11`: unbinded - does nothing, because sometimes instead of F10 it's easy to accidentally press F11
- aliases:
    - `ammo`: add max (by default) ammo
    - `quad`: gives quad damage, might not work with all mods
    - `capon`/`capoff`: might be useful for recording fly-throughs. Stolen from somewhere, probably from one of the dumptruck_ds videos
    - Ironwail: `look0_iw`: default engine settings.
    - Ironwail: `look1_iw`: default Remastered/Enhanced/Kex-like engine settings
    - Ironwail: `look2_iw`: mixed settings between look1 and look3
    - Ironwail: `look3_iw`: default DOSQuake settings
    - Ironwail: `sshot_iw`: prepare to get a screenshot for [Sightseeing Thread](https://www.slipseer.com/index.php?threads/sightseeing-thread.21/)
    - QuakeSpasm: `look{0,1,2,3}_qs`: see `look{0,1,2,3}_iw`
    - QuakeSpasm-Spiked: `look{0,1,2,3}_qss`: see `look{0,1,2,3}_iw`
    - QuakeSpasm-Spiked Multiplayer: `look{0,1,2,3}_qssm`: see `look{0,1,2,3}_iw`
    - vkQuake: `look{0,1,2,3}_vk`: see `look{0,1,2,3}_iw`

In Ironwail I prefer `look1_iw`. `F10` switches to `look2_iw`, then `look3_iw` which then to `look0_iw` and so on.
Note that for example when you load start map of Explore Jam 3 and change visuals it will affect maps fog settings. You might want to issue `restart` or load a save.
When using this config don't forget to change `name` and `hostname` to you liking.
I recommend getting [Quake Injector](https://www.quaddicted.com/tools/quake_injector), sort by user score and play with [Ironwail](https://github.com/andrei-drexler/ironwail/releases) engine with `look1_iw` settings

## Incompatibilities

- [Re:Mobilize](https://www.slipseer.com/index.php?resources/re-mobilize.239/) - comment out `MOUSE2` binding in `id1/autoexec.cfg` using `//` in front of the line. Alternative: `bind "MOUSE2" "+hook"` after loading a mod.

## Addons

I use [PakScape](https://valvedev.info/tools/pakscape/) to create `pak` archives in case files were loose, because Ironwail handles `pak` files better. Remember that having `pak2.pak` and then `pak4.pak` without `pak3.pak` then `pak4.pak` will not be loaded.

- Enhanced: `id1`
    - it already has remastered sounds - similar to `Sound Bulb` and `Seans Better Quality Sounds`
    - already has lits, but different than in classic
    - has transparent water in id1 levels and it seems not that easy to change turn off alpha
    - `pak1.pak`: `sound/player/axhit2.wav` from [Mindgrid Sounds](https://gfx.quakeworld.nu/details/384/mindgridaudio-high-resolution-quake-1-sounds/)
    - optionally: `pak2.pak`: [Greenwood's mild model pack](https://alkalinequake.wordpress.com/files-links/)
    - optionally: `pak3.pak`: Mindgrid - all sounds except for demon
    - optionally: `pak4.pak`: [Authentic Models](https://www.moddb.com/mods/authentic-models-for-quake) if not using `pak2.pak`
    - optionally: `pak5.pak`: [Upgaded Armor](https://www.moddb.com/games/quake/addons/upgraded-armor-for-quake-1)
    - progs.dat: [Reignited](https://www.moddb.com/mods/quake-reignited)
- Classic: `id1`
    - `pak2.pak`: [Lits and vis files](https://quakewiki.org/wiki/External_Lit_And_Vis_Files)
    - `pak3.pak`: [Sound Bulb](https://www.slipseer.com/index.php?resources/quake-sound-bulb-higher-quality-audio-for-quake-1.110/)
    - `pak4.pak`: `sound/player/axhit2.wav` from [Mindgrid Sounds](https://gfx.quakeworld.nu/details/384/mindgridaudio-high-resolution-quake-1-sounds/)
- `hipnotic` (Mission Pack 1: Scourge of Armagon) / `rogue` (Mission Pack 2: Dissolution of Eternity)
    - `pak1.pak`: [Lits and vis files](https://quakewiki.org/wiki/External_Lit_And_Vis_Files)
    - Enhanced: `pak2.pak`: [Authentic Models](https://www.moddb.com/mods/authentic-models-for-quake)
    - Classic: `pak2.pak`: [Sound Bulb](https://www.slipseer.com/index.php?resources/quake-sound-bulb-higher-quality-audio-for-quake-1.110/)

### Communities

- [Slipseer](https://www.slipseer.com/)
- [Quaddicted](https://www.quaddicted.com/)
- [func_MsgBoard](https://www.celephais.net/board/forum.php)
- [r/quake](https://www.reddit.com/r/quake/)
- Discord: Quake Mapping
- Discord: Quake Enhanced Add-on Server
- Discord: LibreQuake
- Discord: There are more - you can find them if you're interested in it
- Podcast: [In the Keep](https://inthekeep.com/)
- Podcast: Quakecast (can be found on Spotfiy and other places)

## Notes

- there's only `autoexec.cfg` without using `exec filename.cfg` because there is no need to keep everything separate and performance is better. You can see for your self by having a keybind that loads a few exec-s.

## TODO

I modify things from time to time.
- optionally: settings for Darkplaces, Quake 1.5, Epsilon build
- optionally: settings for Kex
- optionally: settings for JoeQuake
- optionally: settings for ChadQuake
