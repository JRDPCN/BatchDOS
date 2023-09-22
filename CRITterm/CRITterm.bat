@echo off
start msg.vbs
ping -n 2 localhost>nul
start bsod.hta
ping -n 4 localhost>nul
del msg.vbs
del bsod.vbs
ping -n 10 localhost>nul
start terminator.bat
exit
exit
exit
ping -n 1 localhost>nul
exit