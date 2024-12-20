powershell "[console]::beep(500,300)

cls
Color 9
cls

echo Clearing Microsoft Edge


@echo off
rem Close all instances of Microsoft Edge before clearing data
taskkill /F /IM msedge.exe >nul 2>&1
timeout /t 2 >nul

rem Clear browsing history
del /F /Q "%LocalAppData%\Microsoft\Edge\User Data\Default\History*.*"

rem Clear cookies
del /F /Q "%LocalAppData%\Microsoft\Edge\User Data\Default\Cookies*.*"

rem Clear cache
rd /S /Q "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache"

cls

echo Sucsessfully Cleared!
timeout /t 3 /nobreak >nul
cls

echo Clearing Brave Browser

@echo off
rem Close all instances of Brave browser before clearing data
taskkill /F /IM brave.exe >nul 2>&1
timeout /t 3 >nul

rem Clear browsing history
del /F /Q "%LocalAppData%\BraveSoftware\Brave-Browser\User Data\Default\History*.*"

rem Clear cookies
del /F /Q "%LocalAppData%\BraveSoftware\Brave-Browser\User Data\Default\Cookies*.*"

rem Clear cache
rd /S /Q "%LocalAppData%\BraveSoftware\Brave-Browser\User Data\Default\Cache"


cls

echo Sucsessfully Cleared!

timeout /t 3 /nobreak >nul
cls
echo Clearing Chrome Browser!

@echo off
rem Close all instances of Google Chrome before clearing data
taskkill /F /IM chrome.exe >nul 2>&1
timeout /t 2 >nul

rem Clear browsing history
del /F /Q "%LocalAppData%\Google\Chrome\User Data\Default\History*.*"

rem Clear cookies
del /F /Q "%LocalAppData%\Google\Chrome\User Data\Default\Cookies*.*"

rem Clear cache
rd /S /Q "%LocalAppData%\Google\Chrome\User Data\Default\Cache"

cls

echo Sucsessfully Cleared!

timeout /t 3 /nobreak >nul
cls


echo Clearing Opera GX Browser!

rem Close all instances of Opera GX before clearing data
taskkill /F /IM opera.exe >nul 2>&1
timeout /t 2 >nul

rem Clear browsing history
del /F /Q "%LocalAppData%\Opera Software\Opera GX\User Data\Default\History*.*"

rem Clear cookies
del /F /Q "%LocalAppData%\Opera Software\Opera GX\User Data\Default\Cookies*.*"

rem Clear cache
rd /S /Q "%LocalAppData%\Opera Software\Opera GX\User Data\Default\Cache"

cls

echo Sucsessfully Cleared!

timeout /t 3 /nobreak >nul
cls


echo Proceeding To Clean FiveM!
timeout /t 3 >nul
powershell "[console]::beep(500,300)
cls
taskkill /f /im Steam.exe /t
set hostspath=%windir%\System32\drivers\etc\hosts
echo 127.0.0.1 xboxlive.com >> %hostspath%
echo 127.0.0.1 user.auth.xboxlive.com >> %hostspath%
echo 127.0.0.1 presence-heartbeat.xboxlive.com >> %hostspath%
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\HardwareID /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\Store /f
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /va /f
REG DELETEH KEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETEH KEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-332004695-2829936588-140372829-1002 /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cfx_curl_x86_64.dll
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\Browser"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\db"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\dunno"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\servers"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\subprocess"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\unconfirmed"
del /s /q /f %LocalAppData%\FiveM\FiveM.app\steam_api64.dll
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\authbrowser"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\crashometry"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\launcher_skip"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\launcher_skip_mtl2"
rmdir /s /q "%LocalAppData%\DigitalEntitlements"
del /s /q /f %LocalAppData%\FiveM\FiveM.app\profiles.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_chrome.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_372.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_1604.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_1868.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_2060.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_2189.bin
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\mods\*.*"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\logs\*.*"
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenGame.dll
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cfx_curl_x86_64.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\steam.dll
rmdir /s /q %userprofile%\AppData\Roaming\CitizenFX
del /s /q /f %LocalAppData%\FiveM\FiveM.app\asi-five.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX.ini
del /s /q /f %LocalAppData%\FiveM\FiveM.app\caches.XML
del /s /q /f %LocalAppData%\FiveM\FiveM.app\adhesive.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\discord.dll
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\crashes\*.*"
del /s /q /f %LocalAppData%\DigitalEntitlements
del /s /q /f "%LocalAppData%\DigitalEntitlements"
RENAME %userprofile%\AppData\Roaming\discord\0.0.309\modules\discord_rpc Jay_SPOOFER
rmdir /s /q "%LocalAppData%\DigitalEntitlements"
rmdir /s /q %userprofile%\AppData\Roaming\CitizenFX
set hostspath=%windir%\System32\drivers\etc\hosts
echo 127.0.0.1 xboxlive.com >> %hostspath%
echo 127.0.0.1 user.auth.xboxlive.com >> %hostspath%
echo 127.0.0.1 presence-heartbeat.xboxlive.com >> %hostspath%
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\HardwareID /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\Store /f
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /va /f
REG DELETEH KEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETEH KEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-332004695-2829936588-140372829-1002 /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f¨
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-00000000000000000 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\FiveM\Capabilities /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppBadgeUpdated /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f






REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1020092347800879114 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1048726933883601046 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1053811633400594573 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1056348491804315698 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1057762707065020457 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1064244202227122296 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1066377822685384775 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1079227898688438393 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1136387601658544148 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1143012210155728968 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1149766925140889650 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1158862498036981830 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1164711282545545257 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1171337974265421865 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1181472539705344120 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1191797861713711124 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1205682735620816977 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1207595576867430451 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1212201037843406878 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1213795490622349313 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1218332411893649448 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1226831805441638451 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1231800202189607033 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1242041612658540555 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1243638525597847622 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1244727633598484542 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1246193261459144724 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1248756203975213056 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-382624125287399424 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-628637344098025482 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-628637344098025482 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-829754221574356992 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-846962980277059644 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-934287445535649802 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-947971403544662067 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\discord-952023423939412039 /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\fivem /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Classes\FiveM.ProtocolHandler /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules /f









deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_chrome.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_372.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_1604.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_1868.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_2060.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX_SubProcess_game_2189.bin
del /s /q /f %LocalAppData%\FiveM\FiveM.app\botan.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\asi-five.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\steam.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\steam_api64.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenGame.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\profiles.dll
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cfx_curl_x86_64.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\CitizenFX.ini
del /s /q /f %LocalAppData%\FiveM\FiveM.app\caches.XML
del /s /q /f %LocalAppData%\FiveM\FiveM.app\adhesive.dll
del /s /q /f %LocalAppData%\FiveM\FiveM.app\discord.dll
RENAME %userprofile%\AppData\Roaming\discord\0.0.30s9\modules\discord_rpc Jay_SPOOFER
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\Browser"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\db"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\dunno"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\servers"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\subprocess"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\unconfirmed"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\authbrowser"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\crashometry"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\launcher_skip"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\cache\launcher_skip_mtl2"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\crashes\*.*"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\logs\*.*"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\mods\*.*"
del /s /q /f %LocalAppData%\FiveM\FiveM.app









reg delete "HKEY\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
reg delete "HKEY\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg delete "HKCU\Software\Microsoft\Windows\Shell" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f







reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA} /f
reg delete HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs /f
reg delete HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU /f
reg delete HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
reg delete HKCU\Software\Microsoft\Windows\Shell /f
reg delete HKCU\SOFTWARE\WinRAR\ArcHistory /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /f

reg delete HKLM\Software\Clients\StartMenuInternet /f
del /Q /F "C:\Users\%username%\AppData\Local\Temp\*"

del /q "C:\Windows\Prefetch\FIVEM.EXE-7C3470C7.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F32.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F33.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F39.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_DUMPSERVER-8DCC29E8.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_GTAPROCESS.EXE-B6E4B6F6.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2699_DUMPSERVER-3DD6C6AB.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2699_GTAPROCESS.EXE-B4C33459.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2802_DUMPSERVER-3816C69D.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2802_GTAPROCESS.EXE-C5C02C0B.pf"
del /q "C:\Windows\Prefetch\FIVEM_CHROMEBROWSER-D72619E6.pf"
del /q "C:\Windows\Prefetch\FIVEM_CHROMEBROWSER-D72619E7.pf"
del /q "C:\Windows\Prefetch\FIVEM_CHROMEBROWSER-D72619ED.pf"
del /q "C:\Windows\Prefetch\FIVEM_ROSLAUNCHER-2144CB09.pf"
del /q "C:\Windows\Prefetch\FIVEM_ROSSERVICE-E4219BB4.pf"
del /q "C:\Windows\Prefetch\FIVEM.EXE-7C3470C8.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F34.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F3A.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_DUMPSERVER-8DCC29E9.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_GTAPROCESS.EXE-B6E4B6F7.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2699_DUMPSERVER-3DD6C6AC.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2699_GTAPROCESS.EXE-B4C3345A.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2802_DUMPSERVER-3816C69E.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2802_GTAPROCESS.EXE-C5C02C0C.pf"
del /q "C:\Windows\Prefetch\FIVEM_CHROMEBROWSER-D72619E8.pf"
del /q "C:\Windows\Prefetch\FIVEM_CHROMEBROWSER-D72619EE.pf"
del /q "C:\Windows\Prefetch\FIVEM_ROSLAUNCHER-2144CB0A.pf"
del /q "C:\Windows\Prefetch\FIVEM_ROSSERVICE-E4219BB5.pf"
del /q "C:\Windows\Prefetch\FIVEM.EXE-7C3470C9.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F35.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F3B.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_DUMPSERVER-8DCC29EA.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_GTAPROCESS.EXE-B6E4B6F8.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2699_DUMPSERVER-3DD6C6AD.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2699_GTAPROCESS.EXE-B4C3345B.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2802_DUMPSERVER-3816C69F.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2802_GTAPROCESS.EXE-C5C02C0D.pf"
del /q "C:\Windows\Prefetch\FIVEM_CHROMEBROWSER-D72619E9.pf"
del /q "C:\Windows\Prefetch\FIVEM_CHROMEBROWSER-D72619EF.pf"
del /q "C:\Windows\Prefetch\FIVEM_ROSLAUNCHER-2144CB0B.pf"
del /q "C:\Windows\Prefetch\FIVEM_ROSSERVICE-E4219BB6.pf"
del /q "C:\Windows\Prefetch\FIVEM.EXE-7C3470CA.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F36.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F3C.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_DUMPSERVER-8DCC29EB.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_GTAPROCESS.EXE-B6E4B6F9.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2699_DUMPSERVER-3DD6C6AE.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2699_GTAPROCESS.EXE-B4C3345C.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2802_DUMPSERVER-3816C6A0.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2802_GTAPROCESS.EXE-C5C02C0E.pf"
del /q "C:\Windows\Prefetch\FIVEM_CHROMEBROWSER-D72619EA.pf"
del /q "C:\Windows\Prefetch\FIVEM_CHROMEBROWSER-D72619F0.pf"
del /q "C:\Windows\Prefetch\FIVEM_ROSLAUNCHER-2144CB0C.pf"
del /q "C:\Windows\Prefetch\FIVEM_ROSSERVICE-E4219BB7.pf"
del /q "C:\Windows\Prefetch\FIVEM.EXE-7C3470CB.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F37.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F3D.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_DUMPSERVER-8DCC29EC.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_GTAPROCESS.EXE-B6E4B6FA.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2699_DUMPSERVER-3DD6C6AF.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2699_GTAPROCESS.EXE-B4C3345D.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2802_DUMPSERVER-3816C6A1.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2802_GTAPROCESS.EXE-C5C02C0F.pf"
del /q "C:\Windows\Prefetch\FIVEM_CHROMEBROWSER-D72619EB.pf"
del /q "C:\Windows\Prefetch\FIVEM_CHROMEBROWSER-D72619F1.pf"
del /q "C:\Windows\Prefetch\FIVEM_ROSLAUNCHER-2144CB0D.pf"
del /q "C:\Windows\Prefetch\FIVEM_ROSSERVICE-E4219BB8.pf"
del /q "C:\Windows\Prefetch\FIVEM.EXE-7C3470CC.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F38.pf"
del /q "C:\Windows\Prefetch\FIVEM_AUTHBROWSER-3DCB7F3E.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_DUMPSERVER-8DCC29ED.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2612_GTAPROCESS.EXE-B6E4B6FB.pf"
del /q "C:\Windows\Prefetch\FIVEM_B2699_DUMPSERVER-3DD6



start powershell.exe -NoExit -Command "& {Remove-Item -Path 'HKCU:\SOFTWARE\Classes\discord-00000000000000000','HKCU:\SOFTWARE\FiveM\Capabilities','HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppBadgeUpdated','HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched','HKCU:\SOFTWARE\Classes\discord-1020092347800879114','HKCU:\SOFTWARE\Classes\discord-1048726933883601046','HKCU:\SOFTWARE\Classes\discord-1053811633400594573','HKCU:\SOFTWARE\Classes\discord-1056348491804315698','HKCU:\SOFTWARE\Classes\discord-1057762707065020457','HKCU:\SOFTWARE\Classes\discord-1064244202227122296','HKCU:\SOFTWARE\Classes\discord-1066377822685384775','HKCU:\SOFTWARE\Classes\discord-1079227898688438393','HKCU:\SOFTWARE\Classes\discord-1136387601658544148','HKCU:\SOFTWARE\Classes\discord-1143012210155728968','HKCU:\SOFTWARE\Classes\discord-1149766925140889650','HKCU:\SOFTWARE\Classes\discord-1158862498036981830','HKCU:\SOFTWARE\Classes\discord-1164711282545545257','HKCU:\SOFTWARE\Classes\discord-1171337974265421865','HKCU:\SOFTWARE\Classes\discord-1181472539705344120','HKCU:\SOFTWARE\Classes\discord-1191797861713711124','HKCU:\SOFTWARE\Classes\discord-1205682735620816977','HKCU:\SOFTWARE\Classes\discord-1207595576867430451','HKCU:\SOFTWARE\Classes\discord-1212201037843406878','HKCU:\SOFTWARE\Classes\discord-1213795490622349313','HKCU:\SOFTWARE\Classes\discord-1218332411893649448','HKCU:\SOFTWARE\Classes\discord-1226831805441638451','HKCU:\SOFTWARE\Classes\discord-1231800202189607033','HKCU:\SOFTWARE\Classes\discord-1242041612658540555','HKCU:\SOFTWARE\Classes\discord-1243638525597847622','HKCU:\SOFTWARE\Classes\discord-1244727633598484542','HKCU:\SOFTWARE\Classes\discord-1246193261459144724','HKCU:\SOFTWARE\Classes\discord-1248756203975213056','HKCU:\SOFTWARE\Classes\discord-382624125287399424','HKCU:\SOFTWARE\Classes\discord-628637344098025482','HKCU:\SOFTWARE\Classes\discord-783577998363590676','HKCU:\SOFTWARE\Classes\discord-829754221574356992','HKCU:\SOFTWARE\Classes\discord-846962980277059644','HKCU:\SOFTWARE\Classes\discord-934287445535649802','HKCU:\SOFTWARE\Classes\discord-947971403544662067','HKCU:\SOFTWARE\Classes\discord-952023423939412039','HKCU:\SOFTWARE\Classes\fivem','HKCU:\SOFTWARE\Classes\FiveM.ProtocolHandler','HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules' -Recurse -Force}"

timeout /t 3 /nobreak


taskkill /f /im powershell.exe


rd /s /q %AppData%\Local\FiveM\FiveM.app\citizen
cd %localappdata%\FiveM\FiveM.app\data\
del /s /q server-cache-priv\*

cd %systemroot%\Prefetch
del /q /f *




REM List of registry keys to delete
set "keys=HKEY_CURRENT_USER\SOFTWARE\Classes\discord-00000000000000000"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\FiveM\Capabilities"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppBadgeUpdated"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1020092347800879114"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1048726933883601046"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1053811633400594573"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1056348491804315698"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1057762707065020457"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1064244202227122296"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1066377822685384775"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1079227898688438393"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1136387601658544148"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1143012210155728968"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1149766925140889650"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1158862498036981830"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1164711282545545257"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1171337974265421865"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1181472539705344120"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1191797861713711124"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1205682735620816977"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1207595576867430451"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1212201037843406878"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1213795490622349313"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1218332411893649448"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1226831805441638451"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1231800202189607033"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1242041612658540555"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1243638525597847622"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1244727633598484542"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1246193261459144724"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-1248756203975213056"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-382624125287399424"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-628637344098025482"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-783577998363590676"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-829754221574356992"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-846962980277059644"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-934287445535649802"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-947971403544662067"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\discord-952023423939412039"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\fivem"
set "keys=%keys% HKEY_CURRENT_USER\SOFTWARE\Classes\FiveM.ProtocolHandler"
set "keys=%keys% HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules"

REM Loop through each key and delete it
for %%k in (%keys%) do (
    echo Deleting registry key: %%k
    reg delete "%%k" /f >nul 2>&1

    if %errorlevel% equ 0 (
        echo Registry key %%k deleted successfully.
    ) else (
        echo Failed to delete registry key %%k.
    )
)





@echo off
cls
Color 9 


echo Unlinked Rockstar, Discord and Steam!
echo FiveM Is Cleaned! 

@echo off
timeout /t 5 /nobreak >nul
exit