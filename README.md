```
!!! Everything below is in TODO state. !!!
```

----

# Quake Configs

This are my settings for Quake engines and notes.
Added missing keybindings (WASD movement, ...) and extra ones (easier weapon switching, ...).
Changed visual settings. Sometimes there is an option to set/switch with `F10` key between them.
Note that by default this key quits the game. Styles: `Default` (for given engine),
`Enhanced-like`, `Semi-DOSQuake` (between Enhanced and DOSQuake) and `DOSQuake-like`.
Left fog unchanged (Enhanced: `0.025 0.576471 0.266667 0.431373`, DOSQuake: `0 0.3 0.3 0.3`).

## Why this way

It is possible to put all engines into one directory (don't worry about `*.dll`-s) and share one `autoexec.cfg`.
Some settings can be set then using different aliases or `exec filename.cfg` commands.
One compatibility issue is `host_maxfps 0`. In QSS works fine, but not in QS.
Downsides: many config parts are doubled along with `*.pak` files that take space.
On Linux one might use symlinks.
On Windows symlinks are not properly handled by engines, but hardlinks are fine.

## Howto

* [ ] Buy and install Quake

This document assumes having bought and installed `Quake` (not `Quake Enhanced`)
from [GOG](https://www.gog.com/en/game/quake_the_offering) to `C:\GOG Games\Quake`.
Not that by default it might be installed to `%PROGRAMFILES(X86)%\GOG GalaxyGames\Quake`.
Game is also available on [Steam](https://store.epicgames.com/en-US/p/quake)
and [Epic Games Store](https://store.epicgames.com/en-US/p/quake).

* [ ] Download engine(s)

If you don't know which one, start with [Ironwail](https://github.com/andrei-drexler/ironwail).

* [ ] Download addons

TODO:

* [ ] After

For better aiming precision, turn off Mouse Accelearion in your system.
Add commands to `autoexec.cfg` or issue from in-game console:

```
name "Your Name"
hostname "Your Name"
```

## Other configs

- [SDA](https://speeddemosarchive.com/quake/) - select `Downloads` and get `Quake (light version)` package.
- [GitHub: Melbo](https://github.com/m-e-l-b-o/autoexec)
- [Discord: The Campfire](https://discord.gg/YdfzYBEjP5) - ComfyByTheFire shares her config there.

# Engines

## Vanilla experience

1. [Vanilla experience](https://www.gog.com/en/game/quake_the_offering):
- DOS Quake (`run-gog-dosquake.cmd`) - you might want to apply [Ultimate DOSBox patch for Quake (GOG version) v1.10](https://www.moddb.com/games/quake/downloads/ultimate-dosbox-patch-for-quake-gog-version-v110). If you have a Steam version, then use [Ultimate DOSBox patch for Quake (Steam/other version) v1.10](https://www.moddb.com/games/quake/downloads/ultimate-dosbox-patch-for-quake-steamother-version-v110).
- WinQuake (`run-gog-winquake.cmd`)
- GLQuake (`run-gog-glquake.cmd`)
2. [ChadQuake](https://github.com/adolfintel/ChadQuake) (`run-chadquake.cmd`).
3. [Quakespasm](https://quakespasm.sourceforge.net/)
4. [Quakespasm-Spiked](https://triptohell.info/moodles/qss)
5. [Ironwail](https://github.com/andrei-drexler/ironwail)
6. [JoeQuake](http://joequake.runecentral.com/)

## Best visuals (subjectively)

TODO:
1. [FTE](https://fte.triptohell.info/)
2. [Zircon]() + [Quake 1.5] + [Combat+]()
3. [Darkplaces]() + RTLights from Slipseer
4. [Epsilon Build]()
5. [Quakespasm-Spiked]() + [Play_Q]() or [TribalFX]()

## Speedrunning

1. [JoeQuake](http://joequake.runecentral.com/)

Guides:

- [] -
- [] -
- [Youtube: ]
- [Discord: ]

TODO:
    Configs, setups, guides
    Speedruns Explained, Quake Speed Demos

## Progamming

Places to start:
- [Youtube: Matt's Ramblings]()
- [Michael Abrash: Black Book]()
- [Handmade Quake]()
- [Engine getting started](https://quakewiki.org/wiki/Engine_getting_started)

TODO: Rust, QuakeC

# Mods

TODO:

# Communities

TODO:
https://steamcommunity.com/app/2320/discussions/
nexusmods

# Contact

Mail: sl8code (at) gmail.com
Discord: TODO:





Plan
- download all binaries. automate it?
- update "run-" commands
- update configs
- update gitignore
- finish setup scripts

- update notes
- push to github

- symlinks

Future:
- doom
- quake 2
- duke, blood, ...


https://www.pcgamingwiki.com/wiki/Quake
https://quakeone.com/forum/quake-mod-releases/finished-works/283201-vanilla-quake-fixes
http://quakeone.com/forum/quake-mod-releases/finished-works/6241-small-mod-compilation


# Mapping essentials
    Dumptruck

## Console

You'll have to use it from time to time, usually it can be opened/closed using tilde key `~` on keyboard.
It's a place to write commands.

## Engines

It's not possible to determine which look is original one (WinQuake, GLQuake or DOS version).
I like to believe it's DOS Quake.
Each engine has different defaults (fog settings, brightness levels, particle type and scaling, ...), HUD-s and quirks.

Originals:

- DOS Quake version (`cd "C:\GOG Games\Quake\DOSBox" & DOSBox.exe -conf ..\dosbox_quake.conf -conf ..\dosbox_quake_single.conf`) - you might want to apply this [Ultimate DOSBox patch for Quake (GOG version) v1.10](https://www.moddb.com/games/quake/downloads/ultimate-dosbox-patch-for-quake-gog-version-v110). If you have a Steam version, then use [Ultimate DOSBox patch for Quake (Steam/other version) v1.10](https://www.moddb.com/games/quake/downloads/ultimate-dosbox-patch-for-quake-steamother-version-v110).
- WinQuake (`cd "C:\GOG Games\Quake" & Winquake.exe`)
- GLQuake (`cd "C:\GOG Games\Quake" & Glquake.exe`)

Enhanced (also called KexQuake or Rerelease or Remastered):

- Enhanced (`cd "C:\GOG Games\Quake Enhanced" & Quake_Shipping_Playfab_GOG_x64.exe +ui_addonsBaseURL "https://kexquake.s3.amazonaws.com/" +g_showintromovie 0`) - here's an example about running with additional parameter to get more addons in downloads menu. More info about it can be found [here](https://kexquake.s3.amazonaws.com/index.html). Another param disables an intro. Alternatively you can create a file:
`C:\GOG Games\Quake Enhanced\id1\autoexec.cfg` and place there: `g_showintromovie "0"`. Some people don't carefully read messages when starting the game for the first time and later they have white text instead of proper fonts. To fix this go to menu, then `Options`, `Accessibility`, `Alternative Typeface` - `Off`. When you play Quake 64 mod, you might want to disable CRT effect with `r_crtmode "0"` command.

Mark-V forks:

- [ChadQuake](https://fdossena.com/?p=chadQuake/index.frag) - aim to achieve original look.

FitzQuake forks:

- [QuakeSpasm](https://quakespasm.sourceforge.net/) - awesome for playing single player maps, should be compatible with almost everything out there. Anyway I'd recommend one of its forks.

QuakeSpasm forks:

- [QuakeSpasm-Spiked](https://triptohell.info/moodles/qss/) - has some improvements over QuakeSpasm, like high framerate is decopled from physics
- [Ironwail](https://github.com/andrei-drexler/ironwail) - it's my engine of choice now. Here's a video that got me convinced, maybe it's convince you too - [Ironwail is amazing](https://www.youtube.com/watch?v=9MO3GxoNm8o) - it came out along with version 0.7.0 that did get a lot of features.
- [vkQuake](https://github.com/Novum/vkQuake) - requires updated video card drivers on Windows (default ones are too old). You can check if your video card is supported [here](https://vulkan.gpuinfo.org/).
- [QSS-M](https://qssm.quakeone.com/) - for multiplayer.

Other:

- [JoeQuake](http://joequake.runecentral.com/) - used by speedrunners. `show_speed 1` in console to show speed meter. I recommend downloading maps [100m, 110m, 400m](https://quake.speeddemosarchive.com/quake/otherdemos/demos.php?records=bunny) to practice bunny hopping. There are awesome tutorials on YouTube about bunny hopping (a technique to make you move faster by jumping) and how to do it.
- [DarkPlaces](https://icculus.org/twilight/darkplaces/) - has a lot of visual features, used to play Epsilon mod, Quake 1.5 and Slayer's Testament.
- [TyrQuake](https://disenchant.net/tyrquake/) - when you play Quake with RetroArch it uses TyrQuake under the hood.
- [FTE](https://fte.triptohell.info/) - very advanced engine.
- [RetroQuad](https://www.patreon.com/posts/retroquad-0-10-0-59789217) - focuses on 8-bit color software rendering.

Other:

- NetQuake.io (`https://www.netquake.io/`) - play in a browser.
- [QuakeDroid](http://quakeone.com/quakedroid/) - Quake for Android
- [Quad Touch](https://play.google.com/store/apps/details?id=com.opentouchgaming.quadtouch&gl=US) - best way to play Quake on Android. I've tried with Bluetooth controller 8BitDo SN30 Pro+ and it works.

Windows 98 compatible, tested on 233MHz: (TODO: not yet)

- WinQuake
- GLQuake
- Engoo
- [QDOS](http://dk.toastednet.org/QDOS/)
- FitzQuake
- Makaqu
- ToChris

IF you want to know more about engines I recommend an article:
[Quake Engines & Source Ports: A Beginners Guide](https://www.slipseer.com/index.php?threads/quake-engines-source-ports-a-beginners-guide.11/).

## Engine: Ironwail: Setup

There's a nice [Quakespasm spiked with mods and maps Fanpack](https://www.reddit.com/r/quake/comments/py715s/quakespasm_spiked_with_mods_and_maps_fanpack/), here's how to do things manually to get similar effect.

Description will be based on GOG version and assume default install directory on Windows.
In case you need any support related to Linux I'll be happy to help.
- Download and install `Quake` and `Quake Enhanced`.
- Download and extract [Ironwail](https://github.com/andrei-drexler/ironwail/releases).
- Ironwail can find game files on its own, but let's configure it.
Press `Win`+`R` or just press `Win`, type `cmd` and press `Enter`.
```bat
:: Please note paths used here, you might want to use different ones
set "IRONWAIL=C:\Games\ironwail-0.7.0-win64"
set "QUAKE=C:\GOG Games\Quake"
set "ENHANCED=C:\GOG Games\Quake Enhanced"

:: Copy Original Quake files and music
xcopy "%QUAKE%"\id1\PAK*.PAK "%IRONWAIL%"\id1\
xcopy "%QUAKE%"\hipnotic\pak0.pak "%IRONWAIL%"\hipnotic\
xcopy "%QUAKE%"\rogue\pak0.pak "%IRONWAIL%"\rogue\
xcopy "%ENHANCED%"\id1\music "%IRONWAIL%"\id1\music\
xcopy "%ENHANCED%"\hipnotic\music "%IRONWAIL%"\hipnotic\music\
xcopy "%ENHANCED%"\rogue\music "%IRONWAIL%"\rogue\music\
:: Run Original Quake, go to Mods menu and download everything, see if music works
cd "%IRONWAIL%" & ironwail.exe -addons "https://kexquake.s3.amazonaws.com/"

:: Copy Enhanced version files
xcopy "%ENHANCED%"\ctf "%IRONWAIL%"\enhanced\ctf\
xcopy "%ENHANCED%"\dopa "%IRONWAIL%"\enhanced\dopa\
xcopy "%ENHANCED%"\hipnotic "%IRONWAIL%"\enhanced\hipnotic\
xcopy "%ENHANCED%"\id1 "%IRONWAIL%"\enhanced\id1\
xcopy "%ENHANCED%"\mg1 "%IRONWAIL%"\enhanced\mg1\
xcopy "%ENHANCED%"\rogue "%IRONWAIL%"\enhanced\rogue\
copy "%ENHANCED%"\QuakeEX.kpf "%IRONWAIL%"\enhanced\"
:: Run Enhanced Quake, go to Mods menu and download everything
cd "%IRONWAIL%" & ironwail.exe -basedir enhanced -addons "https://kexquake.s3.amazonaws.com/"
```

Note about folders:
- `hipnotic` - relates to Official Mission Pack 1: "Scourge of Armagon".
- `rogue` - relates to Official Mission Pack 2: "Dissolution of Eternity".
- `dopa` - considered to be Episode 5: "Dimensions of the Past".
- `mg1` - new episode named "Dimension of the Machine".

## Engine: Ironwail: Config

Create `%IRONWAIL%\id1\autoexec.cfg` and/or `%IRONWAIL%\enhanced\id1\autoexec.cfg` with your settings.
Comments are starting with `//` and are skipped by game, to uncomment is to remove `//` before a command.
Here is my config as an example (to see default value write a command without a value):

```
// General
name "Player"
hostname "ServerName"
sndspeed "44100" // Makes sound better
cl_upspeed "350" // Faster swimming up

// Some settings are available only on Ironwail.
gl_texturemode "GL_NEAREST_MIPMAP_LINEAR" // Retro look
gl_texture_anisotropy "1" // More retro look
r_oit "1" // "order-independent transparency", needed by a few maps, turning off should improve performance

// Keys
unbind "F10" // Default: "quit"
bind "\" "toggle scr_showfps" // Toggles showing FPS
bind "MWHEELUP" "impulse 10" // By default it cycles weapons counterintuitively
bind "MWHEELDOWN" "impulse 12"

// Cheats
sv_cheats "1"
bind "MOUSE2" "noclip"
bind "g" "god"
bind "q" "impulse 255" // Quad damage
bind "f" "toggle r_fullbright" // Useful to see in dark places. Can be considered cheating

// Other settings
exec md_enhanced.cfg
//exec md_retro.cfg
//exec md_retro_plus.cfg
```

Additional config files:

- md_enhanced.cfg:
```
hudstyle "2"
r_scale "0"
r_softemu "0"
r_viewmodel_quake "1"
scr_sbaralpha "0.75"
scr_sbarscale "2"
scr_conalpha "0.5"
scr_conspeed "9000"
scr_pixelaspect "1"
viewsize "100"
cl_bob "0"
cl_rollspeed "0"
cl_rollangle "0"
v_gunkick "0"
fov "95"
gamma "1.0"
contrast "1.2"
crosshair "2"
r_lerpmodels "1"
r_lerpmove "1"
fog "0.025" "0.576471" "0.266667" "0.431373"
ui_mouse "1"
sv_aim "1"

bind "F10" "exec md_retro.cfg"
```

- md_retro.cfg:
```
hudstyle "0" // Classic HUD. Default: "2"
r_scale "2" // More pixelated. Default: "1"
r_softemu "3" // More retro look. Try values "1"-"3"
r_viewmodel_quake "1" // Change weapon placement. Use with 'hudstyle "0"'
scr_sbaralpha "1" // Non-transparent HUD
scr_sbarscale "3" // HUD scale. Change to your preferences based on resolution
scr_conalpha "1" // Non-transparent console
scr_conspeed "9000"
scr_pixelaspect "1" // Pixel scaling in menu
viewsize "100" // Display additionally more ammo status
cl_bob "0.02"
cl_rollspeed "200"
cl_rollangle "2.0"
v_gunkick "2"
fov "90"
gamma "1.0" // Makes game darker. Use it while making maps to make sure it is not too dark
contrast "1.2" // With 1.2 gives some more colour
crosshair "1"
r_lerpmodels "1"
r_lerpmove "1"
fog "0" "0.3" "0.3" "0.3"
ui_mouse "1"
sv_aim "1" // Turn off auto-aim

bind "F10" "exec md_retro_plus.cfg"
```

- md_retro_plus.cfg:
```
exec md_retro.cfg

r_scale "4"
scr_conspeed "300"
scr_pixelaspect "5:6" // Square pixels in menu
gamma "1.4" // Makes game darker. Use it while making maps to make sure it is not too dark
contrast "1.2" // With 1.2 gives some more colour
crosshair "0"
r_lerpmodels "0"
r_lerpmove "0"
ui_mouse "0"
sv_aim "0.93"

bind "F10" "exec md_enhanced.cfg"
```

Note that's above there's enhanced config loaded by default, F10 toggles also between retro and retro plus.

### Refinement: Lightmaps

Download [Colored Lightmaps](https://www.moddb.com/games/quake/addons/quake-colored-lightmaps) and extract to `%IRONWAIL%`.
Go to `hipnotic`, `rogue` subfolders and rename `LIGHTS.PAK` to `pak1.pak`. In `id1` rename to `pak2.pak`.
You can try to spot a difference how the game looks with and without colored lightmaps. Note that this is not supported with
Enhanced Quake and they are not needed there.
Add more lits for mods from [here](https://quakewiki.org/wiki/External_Lit_And_Vis_Files).

### Refinement: Sounds

Use [Sound Bulb](https://www.moddb.com/games/quake/addons/quake-sound-bulb) for 44kHz remastered sounds.
I've downloaded a version from here - [Slipseer](https://www.slipseer.com/index.php?resources/quake-sound-bulb-higher-quality-audio-for-quake-1.110/). Extract contents to `%IRONWAIL%\enhanced`. Now copy manualy to Original Quake like so:

```bat
set "IRONWAIL=C:\Games\ironwail-0.7.0-win64"
:: Please note that in case pak2.pak doesn't exist and you add pak3.pak it won't load in game.
copy "%IRONWAIL%"\enhanced\id1\pak1.pak "%IRONWAIL%"\id1\pak3.pak
copy "%IRONWAIL%"\enhanced\hipnotic\pak1.pak "%IRONWAIL%"\hipnotic\pak2.pak
copy "%IRONWAIL%"\enhanced\rogue\pak1.pak "%IRONWAIL%"\rogue\pak2.pak
```

It's nice improvement, however I'm used to original sounds and axe hitting a wall hurts my ears (sound/player/axhit2.wav) I'm using different sounds set - [Mindgrid](https://gfx.quakeworld.nu/details/384/mindgridaudio-high-resolution-quake-1-sounds/). Extract `mindgrid-audio_high-resolution_quake1_sounds.pk3` to a temporary location. Download [PakScape](https://valvedev.info/tools/pakscape/), run it and open `*.pk3` file. Then save as Quake Pak type to `%IRONWAIL%/id1/pak4.pak` and `%IRONWAIL%/enhanced/id1/pak2.pak`.
With other engines it would be enough to move `sound` folder to `id1` - it would overwrite the sounds from `pak*.pak` files, but seems like with Ironwail it works the other way round.

### Refinement: Models

Download [Authentic Models](https://www.moddb.com/mods/authentic-models-for-quake).
Extract to `%IRONWAIL%` and `%IRONWAIL%\enhanced`. Change in all extracted subfolders `z` to a next number in file `pakz.pak`.
So id `id1` contains `pak3.pak` and `pakz.pak`, then rename `pakz.pak` to `pak4.pak`.
Additional I recommend [Upgraded armor](https://www.moddb.com/games/quake/addons/upgraded-armor-for-quake-1). Use same trick as mentioned for Mindgrid sounds. Extract the archive, open PakScape, `File` -> `New`. Move there `gfx` and `progs` folders. Save as Quake Pak type to `%IRONWAIL%/id1/pak5.pak` and `%IRONWAIL%/enhanced/id1/pak3.pak`.

### Refinement: Last touches

In `%IRONWAIL%` folder create files:
- `addons.url.dat` containing: https://kexquake.s3.amazonaws.com
- `ironwail-enhanced.cmd`:
```bat
@echo off
cd "%~dp0"
start "" "ironwail.exe" -basedir enhanced
```

## Links

* Alternative guides:
- [How to start playing Quake](https://www.rockpapershotgun.com/quake-renaissance-how-to-start-playing-quake)
* Tools:
- [Quake Injector](https://www.quaddicted.com/tools/quake_injector) - downloads maps form Quaddicted
- [Quakestarter](https://www.slipseer.com/index.php?resources/quakestarter.104/) - only for Windows, make setting game up easier, quite nice

## Comments

Feel free to comment about:

- typos, my English. Point out my mistakes and I'll correct them,
- Quake config,
- anything I can change in this guide (maybe it's overcomplicated).

## Ideas

- mention about mouse acceleration



progs
    vanilla/progs1.5
    greenwood
    progs_dump + re:mobilize
    copper/reignited
        +scarlet # has copper, overflow bug in coop
    alkaline
    q1.5/epsilon
    tribal/playq
    dwell

not important
    ravenkeep
    mjolnir
        ad
        vr - hook


02
    - `pak0.pak`: [Greenwood's mild model pack](https://alkalinequake.wordpress.com/files-links/)
03
    - `pak0.pak`: Amelie Sounds mix from Discord
04
    - `pak0.pak`: [Upgaded Armor](https://www.moddb.com/games/quake/addons/upgraded-armor-for-quake-1)

other:
    instead of 02
        - `pak0.pak`: [Authentic Models](https://www.moddb.com/mods/authentic-models-for-quake)
    mindgrid
    reignited


Quake 1.5 + music + ...



# Quake 1 config + notes

- there's only `autoexec.cfg` without using `exec filename.cfg` because there is no need to keep everything separate and performance is better
- things here are constantly changing, feel free to fork it and customize your way
- contact: sl8code (at) gmail.com
- for newcomers and not only I recommend [Quakestarter](https://www.slipseer.com/index.php?resources/quakestarter.104/). Includes 2 engines, sane example autoexec.cfg and Windows script for setting things up and downloading/starting mods from curated list. Similar project: [QSS with mods and maps](https://www.reddit.com/r/quake/comments/py715s/quakespasm_spiked_with_mods_and_maps_fanpack/)
- for speedrunning check out Quake package (light for starters) from [SDA](https://speeddemosarchive.com/quake/)

## Features

- keybindings:
    - `mouse scroll`: make changing weapon more natural (scroll down for previous weapon)
    - `right mouse button`: cheat: toggle no clipping
    - `right mouse button`: JoeQuake: move forward (for power bunny hopping)
    - `4th mouse button`: JoeQuake: 10 FPS trick for 1 frame
    - `5th mouse button`: JoeQuake: 10 FPS trick for button hold duration (read on Quake Speedrunning Discord that 15 is better for exiting wind tunnels)
    - `5th mouse button`: Ironwail: zoom
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
I recommend getting [Quake Injector](https://www.quaddicted.com/tools/quake_injector), sort by user score and play with [Ironwail](https://github.com/andrei-drexler/ironwail/releases) engine with `look1_iw` settings.
When using JoeQuake don't forget to run with `+set s_khz 44` argument for better sound quality.

## Incompatibilities

- [Re:Mobilize](https://www.slipseer.com/index.php?resources/re-mobilize.239/) - comment out `MOUSE2` binding in `id1/autoexec.cfg` using `//` in front of the line. Alternative: `bind "MOUSE2" "+hook"` after loading a mod.

## Addons

I use [PakScape](https://valvedev.info/tools/pakscape/) to create `pak` archives in case files were loose, because Ironwail handles `pak` files better. Remember that having `pak2.pak` and then `pak4.pak` without `pak3.pak` then `pak4.pak` will not be loaded.

- Classic: `id1`
    - [VisPatch](https://vispatch.sourceforge.net/): makes transparent water work
    - optionally: `pak2.pak`: [Fullbright patches](https://github.com/c-d-a/q1fbfix): when using different models it might be best to move `progs` folder from here or keep it high in paks order (low number)
    - `pak3.pak`: [Lits and vis files](https://quakewiki.org/wiki/External_Lit_And_Vis_Files)
    - `pak4.pak`: [Sound Bulb](https://www.slipseer.com/index.php?resources/quake-sound-bulb-higher-quality-audio-for-quake-1.110/)
    - `pak5.pak`: `sound/player/axhit2.wav` from [Mindgrid Sounds](https://gfx.quakeworld.nu/details/384/mindgridaudio-high-resolution-quake-1-sounds/) or optionally all sounds from there except for `demon` folder
    - optionally: `pak6.pak`: [Quake 100% Nightmare demos](https://speeddemosarchive.com/quake/): use Dzip from SpeedDemosArchive site to extract compressed (.dz) demo. In case you've downloaded all_5716.dz Dzip should extract .pak file from it that contains all demos.  Add to `autoexec.cfg`: `playdemo start` and `cl_startdemos 1`. Note that demo for `e2m6` is incompatible with Enhanced version
    - optionally: `pak7.pak`: [Greenwood's mild model pack](https://alkalinequake.wordpress.com/files-links/)
    - optionally: `progs.dat`: [CleanFixedQuakeC](https://github.com/Jason2Brownlee/QuakeCGPL)
    - `music`: make sure you have this folder with `track02-track11.{mp3,ogg}` in there (not all Quake releases have music by default)
- Enhanced: `id1`
    - it already has remastered sounds - similar to `Sound Bulb` and `Seans Better Quality Sounds`
    - already has lits, but different than in classic
    - has transparent water in id1 levels and it seems not that easy to change and turn off alpha
    - `pak1.pak`: `sound/player/axhit2.wav` from [Mindgrid Sounds](https://gfx.quakeworld.nu/details/384/mindgridaudio-high-resolution-quake-1-sounds/) or optionally all sounds from there except for `demon` folder
    - optionally: `pak2.pak`: [Greenwood's mild model pack](https://alkalinequake.wordpress.com/files-links/)
    - optionally: `pak3.pak`: [Authentic Models](https://www.moddb.com/mods/authentic-models-for-quake) if not using `pak2.pak`
    - optionally: `pak4.pak`: [Upgraded Armor](https://www.moddb.com/games/quake/addons/upgraded-armor-for-quake-1)
    - optionally: `progs.dat`: [Reignited](https://www.moddb.com/mods/quake-reignited) or [Copper](http://lunaran.com/copper/)
    - `../QuakeEX.kpf`: don't forget about this one as it holds translations
- `hipnotic` (Mission Pack 1: Scourge of Armagon) / `rogue` (Mission Pack 2: Dissolution of Eternity)
    - [VisPatch](https://vispatch.sourceforge.net/): makes transparent water work
    - `pak1.pak`: [Lits and vis files](https://quakewiki.org/wiki/External_Lit_And_Vis_Files)
    - Enhanced: `pak2.pak`: [Authentic Models](https://www.moddb.com/mods/authentic-models-for-quake)
    - Classic: `pak2.pak`: [Sound Bulb](https://www.slipseer.com/index.php?resources/quake-sound-bulb-higher-quality-audio-for-quake-1.110/)
- Map essentials:
    - [100m](https://speeddemosarchive.com/quake/contests/100m.html): nice for learning bunny hopping, usually played with JoeQuake. You can find there also 110m and 400m
    - [qdeck16](https://www.celephais.net/board/view_thread.php?id=62138): nice map for multiplayer, based on popular map from Unreal Tournament
- Mod essentials:
    - Alkaline
    - Alkaline Jam
    - Arcane Dimensions
    - Coppertone Summer Jam
    - Coppertone Summer Jam 2
    - Deathmatch Dimension
    - Dimensions of the Past
    - Dwell
    - Re:Mobilize
    - Tainted
    - TODO:

In case of using QSS engine [Play_Q](https://www.quaddicted.com/forum/viewtopic.php?id=1018) mod plays nice with it.

### Communities and links

TODO: Some of them are in forum threads, best to link to them

- [Slipseer](https://www.slipseer.com/)
- [Quaddicted](https://www.quaddicted.com/)
- [func_MsgBoard](https://www.celephais.net/board/forum.php)
- [r/quake](https://www.reddit.com/r/quake/)
- [Lemmy: Quake](https://lemmy.world/c/quake)
- <https://lemmy.ml/c/quake@lemmy.world>
- <https://quakeone.com/>
- Discord: Quake Mapping
- Discord: Quake Speedrunning
- Discord: Quake Enhanced Add-on Server
- Discord: LibreQuake
- Discord: There are more - you can find them if you're interested in it. ComfyByTheFire has nice sounds compilation on her Discord (The Campfire)
- Podcast: [In the Keep](https://inthekeep.com/)
- Podcast: Quakecast (can be found on Spotfiy and other places)
- Twitter: TODO:

//- YouTube: Quake Speedruns Explained
//- YouTube: Quake done Quick
//- YouTube: Matt's Ramblings

- YouTube: Immorpher
- YouTube: badsebitv
- YouTube: Muty
- YouTube: Kebby_Quake
- YouTube: dumptrucks_ds
- YouTube: GGRC
- YouTube: Markie Music
- YouTube: GreenwoodQuake
- [Mod DB: Addons](https://www.moddb.com/games/quake/addons)
- [Mod DB: Mods](https://www.moddb.com/games/quake/mods)
- [SpeedDemosArchive](https://quake.speeddemosarchive.com/)
- [Thingiverse](https://www.thingiverse.com/search?q=quake) - models for 3D printers
- [The Quake Marine card model](http://home.clara.net/rogerpattenden/quake-marine.html) - I can confirm that it is still possible to order as it is 2023 and I've received 2 models. Contact by mail for quote, payment is done through PayPal using same mail as for contact
- Youtube Channels - https://www.slipseer.com/index.php?threads/quake-youtube-channels-and-videos.147/#post-2497
- bot archive https://github.com/Jason2Brownlee/QuakeBotArchive/
- python bsp https://www.youtube.com/watch?v=sFSLY7n3YsM
- https://www.quaddicted.com/forum/viewtopic.php?pid=8292#p8292
