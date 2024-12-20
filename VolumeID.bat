@echo off
call :isAdmin
if %errorlevel% == 0 (
    goto :run
) else (
    echo Requesting administrative privileges...
    goto :UACPrompt
)
exit /b

:isAdmin
    fsutil dirty query %systemdrive% >nul
    exit /b

:run
color 6
title VolumeID Generator

:A
cls
Setlocal EnableDelayedExpansion
set _RNDLength=4
set _Alphanumeric=ABCDEF0123456789
set _Str=%_Alphanumeric%987654321

:_LenLoop
if not "%_Str:~18%"=="" set _Str=%_Str:~9%& set /A _Len+=9& goto :_LenLoop
set _tmp=%_Str:~9,1%
set /A _Len=_Len+_tmp
set _count=0
set _RndAlphaNum=

:_loop
set /a _count+=1
set /RND=%Random%
set /A _RND=_RND%%%_Len%
set _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
if !_count! lss %_RNDLength% goto _loop

set _VolumeID=!_RndAlphaNum!

:VolumeIDCheck
if exist C:\Windows\Volumeid.exe (
    set VolumeIDPath=C:\Windows\Volumeid.exe
) else (
    echo Volumeid.exe not found, please ensure it's installed.
    exit /b
)

:ChangeVolumeID
cls
echo Changing Volume ID to: !_VolumeID!
%VolumeIDPath% c: !_VolumeID!

exit

:UACPrompt
   echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
   echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1", "", "runas", 1 >> "%temp%\getadmin.vbs"
   "%temp%\getadmin.vbs"
   del "%temp%\getadmin.vbs"
   exit /B
