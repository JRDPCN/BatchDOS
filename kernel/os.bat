@echo off
color 0a
title test
GOTO Main

:Main
cls
echo.
echo Wybierz nickname:
echo.
cmdMenuSel f870 "liveuser" "batchdos" "test" "wpisz wlasny nick" "EXIT BatchDOS"

if %ERRORLEVEL% == 1 goto liveuser
if %ERRORLEVEL% == 2 goto batchdos
if %ERRORLEVEL% == 3 goto test
if %ERRORLEVEL% == 4 goto custom
if %ERRORLEVEL% == 5 goto exit

:exit
exit

:custom
cls
echo Wpisz wlasna nazwe:
set /p cus="> "
set nickname=%cus%
goto cm
:liveuser
cls
set nickname=liveuser
goto cm
:batchdos
cls
set nickname=batchdos
goto cm
:test
cls
set nickname=test
goto cm
cls
:cm
echo For help,type "help"
:sh
set /p shell="%nickname%~shell_ "

%shell%
goto sh