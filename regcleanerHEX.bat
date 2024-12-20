        @echo off
        color a
        del /s /f /q c:\windows\temp\*.*
        color b
        rd /s /q c:\windows\temp
        color c
        md c:\windows\temp
        color d
        del /s /f /q C:\WINDOWS\Prefetch
        color e
        del /s /f /q C:\Windows\SoftwareDistribution\Download
        color f
        del /s /f /q %temp%\*.*
        color a
        rd /s /q %temp%
        color b
        md %temp%
        color c
        deltree /y c:\windows\tempor~1
        color d
        deltree /y c:\windows\temp
        color e
        deltree /y c:\windows\tmp
        color f
        deltree /y c:\windows\ff*.tmp
        color a
        deltree /y c:\windows\history
        color b
        deltree /y c:\windows\cookies
        color c
        deltree /y c:\windows\recent
        color d
        deltree /y c:\windows\spool\printers
        color e
        del c:\WIN386.SWP
        color a
        del /s /f /q C:\ProgramData\spf
taskkill /f /im Steam.exe /t
set hostspath=%windir%\System32\drivers\etc\hosts
echo 127.0.0.1 xboxlive.com >> %hostspath%
echo 127.0.0.1 user.auth.xboxlive.com >> %hostspath%
echo 127.0.0.1 presence-heartbeat.xboxlive.com >> %hostspath%


reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectInput" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\DefaultAccount\Current\default$windows.data.apps.appleveltileinfo$appleveltilelist\windows.data.apps.appleveltileinfo$w~citizenfx.fivem.client" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\DefaultAccount\Current\default$windows.data.apps.appleveltileinfo$appleveltilelist\windows.data.apps.appleveltileinfo$w~citizenfx.fivem.sdk" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /v CitizenFX.FiveM.Client /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\QuietHours" /v FullScreenProcess /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\JumplistData" /v CitizenFX.FiveM.Client /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\JumplistData" /v RockstarGames.SocialClub.UI.Final /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FiveM_b2612_GTAProcess.exe" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FiveM_b2699_GTAProcess.exe" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FiveM_b2944_GTAProcess.exe" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FiveM_b3095_GTAProcess.exe" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FiveM_ChromeBrowser" /f > NUL 2>&1
reg delete "HKEY_CLASSES_ROOT\xbox" /f > NUL 2>&1
reg delete "HKEY_CLASSES_ROOT\xbox-network" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TPM\WMI" /v WindowsAIKHash /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\FiveM" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\HardwareID" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\WinRAR\ArcHistory" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f > NUL 2>&1
reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\MuiCache" /f > NUL 2>&1
reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-332004695-2829936588-140372829-1002" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\Store" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001" /va /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\CitizenFX_FiveM" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\RegisteredApplications" /f > NUL 2>&1

reg delete "HKEY_USERS\.DEFAULT\Software\Classes\Local Settings\MrtCache" /f > NUL 2>&1
reg delete "HKCR\Local Settings\MrtCache" /f > NUL 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /f > NUL 2>&1
reg delete "HKLM\System\CurrentControlSet\Control\TimeZoneInformation" /f > NUL 2>&1
reg delete "HKLM\HARDWARE\DESCRIPTION\System\CentralProcessor\0" /f > NUL 2>&1
reg delete "HKLM\SYSTEM\MountedDevice" /f > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Dfrg\Statistic" /f > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume" /f > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\CPC\Volume" /f > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2" /f > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\LastEnum" /f > NUL 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\mssmbios\Data /v SMBiosData" /f > NUL 2>&1
reg delete "HKLM\SYSTEM\MountedDevice" /f > NUL 2>&1
reg delete "HKCU\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\com.epicgames.launcher" /f > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Dfrg\Statistic" /f > NUL 2>&1
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume" /f > NUL 2>&1
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\CPC\Volume" /f > NUL 2>&1
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2" /f > NUL 2>&1
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BitBucket /v LastEnum" /f > NUL 2>&1
reg delete "HKCU\Software\Classes\Interface /v ClsidStore" /f > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequest" /f > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform /v BackupProductKeyDefault" /f > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform /v actionlist" /f > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform /v ServiceSessionId" /f > NUL 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f > NUL 2>&1
reg delete "HKCU\Software\Hex-Rays\IDA\History" /f > NUL 2>&1
reg delete "HKCU\Software\Hex-Rays\IDA\History64" /f > NUL 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform /v ServiceSessionId" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\IdentityCRL" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OneSettings\xbox" /f > NUL 2>&1
reg delete "HKEY_USERS\.DEFAULT\Software\Microsoft\IdentityCRL" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SYSTEM\GameConfigStore\Children" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppBadgeUpdated /v CitizenFX.FiveM" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppBadgeUpdated\Office.OneDrive" /f > NUL 2>&1

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\UFH" /f > NUL 2>&1
reg delete "HKEY_CLASSES_ROOT\Discord" /f > NUL 2>&1
reg delete "HKEY_CLASSES_ROOT\discord-1245323353804505108" /f > NUL 2>&1
reg delete "HKEY_CLASSES_ROOT\discord-382624125287399424" /f > NUL 2>&1
reg delete "HKEY_CLASSES_ROOT\fivem" /f > NUL 2>&1
reg delete "HKEY_CLASSES_ROOT\FiveM.ProtocolHandler" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\a5f1c31ce4b9ff1e438749ff6b84757a" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\CitizenFX" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\System\GameConfigStore\Children\638a72fd-a7cc-4ce0-8c56-88665be614cd" /f > NUL 2>&1
reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\Deployment\Package\*" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE" /v Recent Files /f > NUL 2>&1

reg delete "HKEY_CURRENT_USER\SOFTWARE\Rockstar Games" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\RegisteredApplications" /v FiveM /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f > NUL 2>&1
reg delete "HKEY_CURRENT_USER\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\26" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /f > NUL 2>&1
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001" /v Cloned /f > NUL 2>&1

taskkill /f /im Steam.exe /t


del log.klg

del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"

del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
rem .log
rem del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old

del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp


rem del /f /q %userprofile%\COOKIES s\*.*
rem del /f /q %userprofile%\recent\*.*

%windir%\system32\sfc.exe /purgecache

ipconfig/release                  
ipconfig/renew                   
ipconfig/flushdns                 
ipconfig /registerdns           
arp -d                                  
Nbtstat -R                         
Nbtstat -RR
del /f /q /s %systemdrive%\*.old
del /f /s /q %systemdrive%\*._mp
del /f /q /s %systemdrive%\*.bak
del /f /q /s %systemdrive%\*.log
del /f /q /s %systemdrive%\*.tmp
del /f /q /s %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.gid
del /f /q /s %systemdrive%\RECYCLER\*.*
del /f /q /s %WinDir%\Temp\*.*
del /f /q /s %WinDir%\Prefetch\*.*
del /f /q /s %WinDir%\Driver Cache\i386\*.*
del /f /q /s %WinDir%\system32\dllcache\*.*
del /f /q /s %WinDir%$hf_mig$\*.*
del /f /q /s %WinDir%\Driver Cache\*.*ll
del /f /q /s %WinDir%\addins\*.*
del /f /q /s %WinDir%\LastGood\*.*
del /f /q /s %WinDir%\Offline Web Pages\*.*
del /f /q /s %WinDir%$NtServicePackUninstall$\*.*
del /f /q /s %WinDir%\Provisioning\*.*
del /f /q /s %WinDir%\ServicePackFiles\*.*
del /f /q /s %WinDir%\Web klasörü\*.*
del /f /q /s %WinDir%\Connection Wizard\*.*
del /f /q /s %WinDir%\EHome\*.*
del /f /q /s %WinDir%\Assembly\*.*
del /f /q /s %WinDir%\SoftwareDistribution\Download\*.*
del /f /q /s %WinDir%\mui\*.*
del /f /q /s %WinDir%\Config\*.*
del /f /q /s %WinDir%\msapps\*.*
del /f /s /q %winDir%\*.bak
del /f /q /s %userprofile%\AppData/Local/Temp\*.*
del /f /s /q %windir%\prefetch\*.*
DEL /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
del /f /q %SystemRoot%\comsetup.log
del /f /q %SystemRoot%\DtcInstall.log
del /f /q %localappdata%\Microsoft\Windows\WebCache\*.*
del /f /q  %SystemRoot%\Logs\CBS\CBS.log
del /f /q  %SystemRoot%\Logs\DISM\DISM.log
del /f /q "%SystemRoot%\Logs\NetSetup\*"
del /f /q "%LocalAppData%\Microsoft\CLR_v4.0\UsageTraces\*"
del /f /q "%LocalAppData%\Microsoft\CLR_v4.0_32\UsageTraces\*"
del /f /q %SystemRoot%\Temp\CBS\*
del /s /f /q %localappdata%\Microsoft\Windows\WebCache\*.*
del /s /f /q %SystemRoot%\setupapi.log
del /s /f /q %SystemRoot%\Panther\*
del /s /f /q %SystemRoot%\inf\setupapi.app.log
del /s /f /q %SystemRoot%\inf\setupapi.dev.log
del /s /f /q %SystemRoot%\inf\setupapi.offline.log
pushd "C:\Temp" && (rd /s /q "C:\Temp" 2>nul & popd)
pushd "%windir%\temp" && (rd /s /q "%windir%\temp" 2>nul & popd)
pushd "%temp%" && (rd /s /q "%temp%" 2>nul & popd)
Powershell -Command "$bin = (New-Object -ComObject Shell.Application).NameSpace(10);$bin.items() | ForEach { Write-Host "Deleting $($_.Name) from Recycle Bin"; Remove-Item $_.Path -Recurse -Force}"
pushd "C:\Windows\Temp" && (rd /s /q "C:\Windows\Temp" 2>nul & popd)
pushd "%windir%\Prefetch " && (rd /s /q "%windir%\Prefetch" 2>nul & popd)
pushd "%windir%\system32\dllcache" && (rd /s /q "%windir%\system32\dllcache" 2>nul & popd)
pushd "%windir%\spool\printers" && (rd /s /q "%windir%\spool\printers" 2>nul & popd)
pushd "%USERPROFILE%\Local Settings\History" && (rd /s /q "%USERPROFILE%\Local Settings\History" 2>nul & popd)
pushd "%USERPROFILE%\Local Settings\Temporary Internet Files" && (rd /s /q "%USERPROFILE%\Local Settings\Temporary Internet Files" 2>nul & popd)
pushd "%USERPROFILE%\AppData\Local\Microsoft\Windows\Temporary Internet Files" && (rd /s /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Temporary Internet Files" 2>nul & popd)
pushd "%USERPROFILE%\Local Settings\Temp" && (rd /s /q "%USERPROFILE%\Local Settings\Temp" 2>nul & popd)
pushd "%USERPROFILE%\AppData\Local\Temp" && (rd /s /q "%USERPROFILE%\AppData\Local\Temp" 2>nul & popd)
::pushd "%AppData%\Microsoft\Windows\Recent\" && (rd /s /q "%AppData%\Microsoft\Windows\Recent\" 2>nul & popd) //THIS WILL REMOVE USER PINNED ITEMS
pushd "%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer" && (rd /s /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer" 2>nul & popd)
DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db
DEL /f /s /q /a %LocalAppData%\Microsoft\Windows\Explorer\*.db
DEL /q /f /s %USERPROFILE%\AppData\Roaming\Microsoft\Office\*.tmp 
if exist "%profiles%\%%u\Local Settings\Temp" echo Deletando....
if exist "%profiles%\%%u\Local Settings\Temp" cd "%profiles%\%%u\Local Settings\Temp"
if exist "%profiles%\%%u\Local Settings\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\Local Settings\Temp" rmdir /s /q "%profiles%\%%u\Local Settings\Temp"
if exist "%profiles%\%%u\AppData\Local\Temp" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Temp" cd "%profiles%\%%u\AppData\Local\Temp"
if exist "%profiles%\%%u\AppData\Local\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Temp" rmdir /s /q "%profiles%\%%u\AppData\Local\Temp"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive"

if exist "%Systemroot%\Temp" echo Deletando....
if exist "%Systemroot%\Temp" cd "%Systemroot%\Temp"
if exist "%Systemroot%\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%Systemroot%\Temp" rmdir /s /q "%Systemroot%\Temp"

if exist "%SYSTEMDRIVE%\Temp" echo Deletando....
if exist "%SYSTEMDRIVE%\Temp" cd "%SYSTEMDRIVE%\Temp"
if exist "%SYSTEMDRIVE%\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%SYSTEMDRIVE%\Temp" rmdir /s /q "%Systemroot%\Temp"

if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" cd "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" rmdir /s /q "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"

if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"

if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" cd "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache"

if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" cd "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Caches" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"

if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache"
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache"

if exist "%profiles%\%%u\Windows\SoftwareDistribution\DataStore" echo Deletando....
if exist "%profiles%\%%u\Windows\SoftwareDistribution\DataStore" cd "%profiles%\%%u\Windows\SoftwareDistribution\DataStore"
if exist "%profiles%\%%u\Windows\SoftwareDistribution\DataStore" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\Windows\SoftwareDistribution\DataStore" rmdir /s /q "%profiles%\%%u\Windows\SoftwareDistribution\DataStore"

if exist "%profiles%\%%u\Windows\SoftwareDistribution\Download" echo Deletando....
if exist "%profiles%\%%u\Windows\SoftwareDistribution\Download" cd "%profiles%\%%u\Windows\SoftwareDistribution\Download"
if exist "%profiles%\%%u\Windows\SoftwareDistribution\Download" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\Windows\SoftwareDistribution\Download" rmdir /s /q "%profiles%\%%u\Windows\SoftwareDistribution\Download"

del /f /s /q %appdata%\Listary\UserData > nul

rd /s /q "%APPDATA%\Sun\Java\Deployment\cache"

rd /s /q "%APPDATA%\Macromedia\Flash Player"

del /f /q %ProgramFiles(x86)%\Steam\Dumps

del /f /q %ProgramFiles(x86)%\Steam\Traces

del /f /q %ProgramFiles(x86)%\Steam\appcache\*.log

rmdir /s /q "%AppData%\vstelemetry" 2>nul

rmdir /s /q "%LocalAppData%\Microsoft\VSApplicationInsights" 2>nul
rmdir /s /q "%ProgramData%\Microsoft\VSApplicationInsights" 2>nul
rmdir /s /q "%Temp%\Microsoft\VSApplicationInsights" 2>nul

rmdir /s /q "%Temp%\VSFaultInfo" 2>nul

rmdir /s /q "%Temp%\VSFeedbackPerfWatsonData" 2>nul

rmdir /s /q "%Temp%\VSFeedbackVSRTCLogs" 2>nul

rmdir /s /q "%Temp%\VSRemoteControl" 2>nul

rmdir /s /q "%Temp%\VSTelem" 2>nul

rmdir /s /q "%Temp%\VSTelem.Out" 2>nul

rmdir /s /q "%USERPROFILE%\.dotnet\TelemetryStorageService" 2>nul

del /f /q "%localappdata%\Microsoft\Windows\INetCache\IE\*"

rd /s /q "%localappdata%\Microsoft\Windows\WebCache"

reg delete "HKCU\SOFTWARE\Microsoft\Internet Explorer\TypedURLs" /va /f

reg delete "HKCU\SOFTWARE\Microsoft\Internet Explorer\TypedURLsTime" /va /f

takeown /f "%localappdata%\Temporary Internet Files" /r /d y
icacls "%localappdata%\Temporary Internet Files" /grant administrators:F /t
rd /s /q "%localappdata%\Temporary Internet Files"

rd /s /q "%localappdata%\Google\Chrome\User Data\Crashpad\reports\"
rd /s /q "%localappdata%\Google\CrashReports\"
del /f /q "%localappdata%\Google\Software Reporter Tool\*.log"

del /q /s /f "%USERPROFILE%\Local Settings\Application Data\Safari\WebpageIcons.db"
del /q /s /f "%localappdata%\Apple Computer\Safari\WebpageIcons.db"
del /q /s /f "%USERPROFILE%\Local Settings\Application Data\Apple Computer\Safari\Cache.db"
del /q /s /f "%localappdata%\Apple Computer\Safari\Cache.db"
del /q /s /f "%USERPROFILE%\Local Settings\Application Data\Apple Computer\Safari\Cookies.db"
del /q /s /f "%localappdata%\Apple Computer\Safari\Cookies.db"
rd /s /q "%USERPROFILE%\Local Settings\Application Data\Apple Computer\Safari"
rd /s /q "%AppData%\Apple Computer\Safari"

del /f /s /q /a %LocalAppData%\Microsoft\Windows\Explorer\*.db

del /f /q %localappdata%\Temp\*.tmp
del /f /q %localappdata%\Temp\*.bac
del /f /q %localappdata%\Temp\*.old
rd /s /q "%WINDIR%\Temp"
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*