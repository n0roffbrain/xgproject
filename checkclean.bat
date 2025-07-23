@echo off


taskkill /f /im msedge.exe /t >nul 2>&1
taskkill /f /im chrome.exe /t >nul 2>&1

:: Clear temporary files
del /s /f /q "%TEMP%\*.*" >nul 2>&1
rd /s /q "%TEMP%" >nul 2>&1
md "%TEMP%" >nul 2>&1
rd /s /q C:\$Recycle.bin
powershell.exe -WindowStyle Hidden -NoProfile -Command "Clear-RecycleBin -Force" >nul 2>&1

del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
rd /s /q "C:\Windows\Temp" >nul 2>&1
md "C:\Windows\Temp" >nul 2>&1

del /f /s /q %ProgramData%\Microsoft\RAC >nul 2>&1
del /f /s /q %ProgramData%\Microsoft\RAC\PublishedData >nul 2>&1
del /f /s /q %ProgramData%\Microsoft\RAC\StateData >nul 2>&1
wevtutil cl Application >nul 2>&1
wevtutil cl System >nul 2>&1

del /s /f /q "C:\Windows\Prefetch\*.*" >nul 2>&1
del /s /f /q "C:\Windows\SoftwareDistribution\Download\*.*" >nul 2>&1

:: Clear browser and system caches
del /s /f /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cookies" >nul 2>&1
del /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cookies" >nul 2>&1
del /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cookies-journal" >nul 2>&1
del /s /f /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\History" >nul 2>&1
del /s /f /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Downloads" >nul 2>&1

del /s /f /q "%APPDATA%\Microsoft\Windows\Recent\*.*" >nul 2>&1
del /s /f /q "%APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*.*" >nul 2>&1
del /s /f /q "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*.*" >nul 2>&1
del /f /q "%APPDATA%\Local\Microsoft\Edge\User Data\Default\History" >nul 2>&1
del /f /q "%APPDATA%\Local\Microsoft\Edge\User Data\Default\Web Data" >nul 2>&1
del /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cookies" >nul 2>&1
del /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cookies-journal" >nul 2>&1
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2

del /f /q "%APPDATA%\AppData\Roaming\Microsoft\Windows\Recent" >nul 2>&1
del /f /q "%APPDATA%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations" >nul 2>&1

reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU\0\0" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU\17" /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\Shell\BagMRU" /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\Shell\Bags" /f >nul 2>&1

del /f /q "%APPDATA%\Local\Microsoft\Windows\UsrClass.DAT" >nul 2>&1

reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f >nul 2>&1

REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{F4E57C4B-2036-45F0-A9AB-443BCFE33D9F}\Count" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{F4E57C4B-2036-45F0-A9AB-443BCFE33D9F}\Count" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{F4E57C4B-2036-45F0-A9AB-443BCFE33D9F}\Items" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /va /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v PinnedPlaces /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" /v AutoSuggest /f >nul 2>&1
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" /v AutoSuggest /t REG_SZ /d no /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /f >nul 2>&1

REG DELETE "Computer\HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f >nul 2>&1
REG DELETE "Computer\HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitch" /f >nul 2>&1
REG DELETE "Computer\HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings" /f >nul 2>&1
REG DELETE "Computer\HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f >nul 2>&1
REG DELETE "Computer\HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /f >nul 2>&1
REG DELETE "Computer\HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f >nul 2>&1


REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\WinRAR\ArcHistory" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f >nul 2>&1
REG DELETE "HKEY_LOCAL_MACHINE\Software\Clients\StartMenuInternet" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\WinRAR\ArcHistory" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f >nul 2>&1
REG DELETE "HKEY_LOCAL_MACHINE\Software\Clients\StartMenuInternet" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall" /f >nul 2>&1
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f >nul 2>&1


REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f >nul 2>&1
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /f >nul 2>&1
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f >nul 2>&1
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f >nul 2>&1
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f >nul 2>&1
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache" /f >nul 2>&1
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f >nul 2>&1
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\Shell\Bags" /f >nul 2>&1
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\Shell\BagMRU" /f >nul 2>&1
DEL /Q /F /S "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*" >nul 2>&1
DEL /Q /F /S "%APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*" >nul 2>&1
DEL /Q /F "%APPDATA%\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" >nul 2>&1
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows Defender\Scan\History" /f >nul 2>&1

rmdir /S /Q %USERPROFILE%\AppData\Local\FiveM\FiveM.app\citizen\common\data\acticon

DEL /Q /F "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\History" >nul 2>&1
DEL /Q /F "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\History-journal" >nul 2>&1
REG DELETE "HKCU\Software\Microsoft\Edge\Download" /f >nul 2>&1
REG DELETE "HKCU\Software\Google\Chrome\Download" /f >nul 2>&1
DEL /Q /F "%LOCALAPPDATA%\Google\Chrome\User Data\Default\History" >nul 2>&1
DEL /Q /F "%LOCALAPPDATA%\Google\Chrome\User Data\Default\History-journal" >nul 2>&1

REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.exe" /f >nul 2>&1
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.zip" /f >nul 2>&1
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.msi" /f >nul 2>&1


reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /va /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /va /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam\UserSettings" /f >nul 2>&1

:: Clear USB and device history
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USBSTOR" /va /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USB" /va /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceClasses\{53f56307-b6bf-11d0-94f2-00a0c91efb8b}" /va /f >nul 2>&1

:: Clear compatibility cache
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /va /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /va /f >nul 2>&1

:: Clear user-specific registry entries
for /f "tokens=*" %%u in ('wmic useraccount get sid ^| findstr /i S-1-5-21') do (
    reg delete "HKEY_USERS\%%u\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2" /f >nul 2>&1
    reg delete "HKEY_USERS\%%u\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f >nul 2>&1
    reg delete "HKEY_USERS\%%u\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps" /f >nul 2>&1
)

:: Clear event logs
for /f "tokens=*" %%G in ('wevtutil.exe el') do (
    wevtutil.exe cl "%%G" >nul 2>&1
)

:: Clear Internet Explorer/Edge cache
rundll32.exe InetCpl.cpl,ClearMyTracksByProcess 1 >nul 2>&1

:: Final cleanup
del /f /q "%systemroot%\Panther\*.*" >nul 2>&1
del /f /q "%systemroot%\appcompat\Programs\*.txt" >nul 2>&1
del /f /q "%systemroot%\appcompat\Programs\*.xml" >nul 2>&1
del /f /q "%systemroot%\appcompat\Programs\Install\*.txt" >nul 2>&1
del /f /q "%systemroot%\appcompat\Programs\Install\*.xml" >nul 2>&1

echo Cleanup completed successfully!
exit