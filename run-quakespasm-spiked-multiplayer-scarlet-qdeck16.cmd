@echo off
cd "%~dp0\QuakeSpasm-Spiked-Multiplayer"
start "" "QSS-M-w64.exe" -game qdeck16 -game scarlet ^
    -particles 99999 -listen 16 +deathmatch 1 +skill 2 +map qdeck16
