# WinUpdater V1.0
# Created: 01.2024
# https://github.com/nuri-it/winupdater

$logFilePath = Join-Path -Path $PSScriptRoot -ChildPath "winupdater.log"
if (-not (Test-Path $logFilePath)) {
    New-Item -ItemType File -Path $logFilePath -Force | Out-Null
}

# Install the NuGet provider (if not already installed)
if (-not (Get-PackageProvider -ListAvailable | Where-Object { $_.Name -eq "NuGet" })) {
    Install-PackageProvider -Name NuGet -Force -Confirm:$false
}

# Install the PSWindowsUpdate module (if not already installed)
if (-not (Get-Module -Name PSWindowsUpdate -ListAvailable)) {
    Install-Module -Name PSWindowsUpdate -Force -Confirm:$false
}

Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -AutoReboot | Out-File $logFilePath -Force