@echo off
cd "%~dp0"
del /S ^
    history.txt ^
    darkplaces_history.txt ^
    conhistory.txt ^
    cmdhist.dat ^
    qconsole.log ^
    stderr.txt ^
    stdout.txt ^
    config.cfg ^
    ironwail.cfg ^
    fte.cfg ^
    vkQuake.cfg ^
    zircon_history.txt ^
    iplog.dat
:: FIXME:
@REM del /S /Q screenshots
@REM del /S /Q autosave quick.sav

