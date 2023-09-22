@echo off
chcp 65001>nul
title install.bat
color 0a
cls
echo "Welcome in BatchDOS instalator."
echo "This script will copy BatchDOS to your real desktop on Windows"
echo "In folder BatchDOS"
echo "Do u want that?"
set /p ans="yes or no="

if %ans% == yes ( cls && goto inst )
if %ans% == no ( echo "Why? im sad :(" )
ping -n 3 localhost>nul
exit

:inst
xcopy "BatchDOS-i" "%userprofile%\Desktop" /E /I /Y
ping -n 1 localhost>nul
echo Done!!
echo         Now you can run BatchDOS from folder BatchDOS on your desktop!
echo                     I hope u will enjoy it :)
ping -n 10 localhost>nul
exit
