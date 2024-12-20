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
set _RND=%Random%
set /A _RND=_RND%%%_Len%
set _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
if !_count! lss %_RNDLength% goto _loop

set POOP=4
set FART=ABCDEF0123456789
set DEEZ=%FART%987654321

:VAG
if not "%DEEZ:~18%"=="" set DEEZ=%DEEZ:~9%& set /A BOOBS+=9& goto :VAG
set TIT=%DEEZ:~9,1%
set /A BOOBS=BOOBS+TIT
set BUTT=0
set ASS=

:80085
set /a BUTT+=1
set SACK=%Random%
set /A SACK=SACK%%%BOOBS%
set ASS=!ASS!!FART:~%SACK%,1!
if !BUTT! lss %POOP% goto 80085





:Color Text
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

set SHART=!_RndAlphaNum!-!ASS!
set SHART=!SHART!

vol c:

setlocal
:PROMPT
IDSHIT
cls

:VOLUMETRASH
if exist C:\Windows\System32\Volumeid.exe goto IDSHIT
if not exist C:\Windows\System32\Volumeid.exe goto YUNOANSWER

:YUNOANSWER
%SystemRoot%\explorer.exe C:\Windows\System32
echo Put Volumeid.exe here then continue
pause
cls
if not exist C:\Windows\System32\Volumeid.exe goto YUNOANSWER
goto IDSHIT

:IDSHIT
volumeid c: !SHART!
cls

call :colorEcho 0f "================================"
echo.
call :colorEcho 0f "["
call :colorEcho 0f "Your new VolumeID is"
call :colorEcho 04 " !SHART!"
call :colorEcho 0f "]"
echo.
call :colorEcho 0f "================================"
echo.
call :colorEcho 04 "RESTART YOUR COMPUTER NOW!"
echo.


pause >nul
exit

:colorEcho
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i

 exit /b

 :UACPrompt
   echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
   echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1", "", "runas", 1 >> "%temp%\getadmin.vbs"
   "%temp%\getadmin.vbs"
   del "%temp%\getadmin.vbs"
  exit /B`
