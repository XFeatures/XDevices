@echo off
@cd %~dp0
title XDevices - sndcpy

if not "%1"=="" (
    set serial=-s %1
    echo �������� ���ன�⢠ %1...
) else (
    echo �������� ���ன�⢠...
)

C:\XFeatures\XDevices\adb\adb.exe %serial% wait-for-device || goto :ERROR
C:\XFeatures\XDevices\adb\adb.exe %serial% install -t -r -g C:\XFeatures\XDevices\sound\sndcpy.apk || (
    echo �������� �������饩 ���ᨨ sndcrpy...
    C:\XFeatures\XDevices\adb\adb.exe %serial% uninstall com.rom1v.sndcpy || goto :ERROR
    C:\XFeatures\XDevices\adb\adb.exe %serial% install -t -g C:\XFeatures\XDevices\sound\sndcpy.apk || goto :ERROR
)
C:\XFeatures\XDevices\adb\adb.exe %serial% shell appops set com.rom1v.sndcpy PROJECT_MEDIA allow
C:\XFeatures\XDevices\adb\adb.exe %serial% forward tcp:28200 localabstract:sndcpy || goto :ERROR
C:\XFeatures\XDevices\adb\adb.exe %serial% shell am start com.rom1v.sndcpy/.MainActivity || goto :ERROR

echo �࠭���� ��㪠 ����饭�...
vlc\vlc.exe -Idummy --demux rawaud --network-caching=0 --play-and-exit tcp://localhost:28200
exit

:ERROR
echo ������: #%errorlevel%.
pause
exit /b %errorlevel%