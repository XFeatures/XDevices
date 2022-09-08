@echo off
@chcp 65001>nul
@cd %~dp0
set adb=C:\XFeatures\XDevices\adb\adb.exe
title XDevices  - scrcpy
call scrcpy.exe -d
echo --------------------------------------
echo Нажмите любую клавишу чтобы закрыть это окно.
pause>nul