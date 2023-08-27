@echo off
cd "%~dp0"
goto :main

:hardlink
mklink /H %~1\%~3 _Downloaded\%~2 2>nul
goto :eof

:copy-classic
mkdir %~1\id1\music 2>nul
call :hardlink %~1 id1\pak0.pak id1\pak0.pak
call :hardlink %~1 id1\pak1.pak id1\pak1.pak
call :hardlink %~1 music-mp3\music\track02.mp3 id1\music\track02.mp3
call :hardlink %~1 music-mp3\music\track03.mp3 id1\music\track03.mp3
call :hardlink %~1 music-mp3\music\track04.mp3 id1\music\track04.mp3
call :hardlink %~1 music-mp3\music\track05.mp3 id1\music\track05.mp3
call :hardlink %~1 music-mp3\music\track06.mp3 id1\music\track06.mp3
call :hardlink %~1 music-mp3\music\track07.mp3 id1\music\track07.mp3
call :hardlink %~1 music-mp3\music\track08.mp3 id1\music\track08.mp3
call :hardlink %~1 music-mp3\music\track09.mp3 id1\music\track09.mp3
call :hardlink %~1 music-mp3\music\track10.mp3 id1\music\track10.mp3
call :hardlink %~1 music-mp3\music\track11.mp3 id1\music\track11.mp3
goto :eof

:copy-optional
call :hardlink %~1 id1-classic-fullbright-patches\pak0.pak id1\pak2.pak
call :hardlink %~1 id1-classic-lits-and-vis\pak0.pak id1\pak3.pak
call :hardlink %~1 sound-bulb\pak0.pak id1\pak4.pak
call :hardlink %~1 mindgrid-sounds\pak0.pak id1\pak5.pak
goto :eof

:main
call :copy-classic ChadQuake
call :copy-classic Ironwail
call :copy-optional Ironwail
call :copy-classic JoeQuake
pause
