@echo off
cd..
del BatchDOS.bat
del cmdmenusel.exe
rmdir /s /q kernel
rmdir /s /q boot
exit
exit
exit
ping -n 1 localhost>nul
exit