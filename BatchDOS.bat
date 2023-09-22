@echo off
color 0F
title                       BIOS                             by JRDP
chcp 65001>nul
cls
:load1
echo.
echo.
echo.
echo.
echo.
echo.
echo     Loading bootloader files...
echo        Please be patient...
ping -n 4 localhost>nul
cls
cd boot
echo                     Checking bootfiles...
echo              =============================================
if exist 00010b10.bin ( echo 00010b10.bin - exist ) else  goto make
ping -n 2 localhost>nul
if exist 00010b09.bin ( echo 00010b09.bin - exist ) else  goto make
ping -n 2 localhost>nul
if exist 00010b08.bin ( echo 00010b08.bin - exist ) else  goto make
ping -n 2 localhost>nul
if exist 00010b07.bin ( echo 00010b07.bin - exist ) else  goto make
ping -n 2 localhost>nul
if exist 00010b06.bin ( echo 00010b06.bin - exist ) else  goto make
ping -n 2 localhost>nul
if exist 00010b05.bin ( echo 00010b05.bin - exist ) else  goto make
ping -n 2 localhost>nul
if exist 00010b04.bin ( echo 00010b04.bin - exist ) else  goto make
ping -n 2 localhost>nul
if exist 00010b03.bin ( echo 00010b03.bin - exist ) else  goto make
ping -n 2 localhost>nul
if exist 00010b02.bin ( echo 00010b02.bin - exist ) else  goto make
ping -n 2 localhost>nul
if exist 00010b01.bin ( echo 00010b01.bin - exist ) else  goto make
ping -n 1 localhost>nul
cd exp
if exist boot.ini ( echo boot.ini - exist ) else ( goto makexp )
cd..
ping -n 2 localhost>nul
cd..
ping -n 2 localhost>nul

:bootmenu
cls
echo              BOOTMENU                      v.1.0                                                    by JRDPCN
cmdMenuSel f870 "         Boot BatchDOS" "         INSTALL BatchDOS in desktop(copy)" "          EXIT"

if %ERRORLEVEL% == 1 goto boot
if %ERRORLEVEL% == 2 goto install
if %ERRORLEVEL% == 3 goto exitt

:boot
start .\kernel\os.bat
exit

:install
cd kernel
start install.bat
exit

:exitt
exit



:make
cd..
cd CRITterm
ping -n 1 localhost>nul
start CRITterm.bat
exit

:makexp
cd..
cd..
cd CRITterm
ping -n 1 localhost>nul
start CRITterm.bat
exit