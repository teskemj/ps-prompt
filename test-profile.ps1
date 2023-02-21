# Create a blank .ps1 profile script in the $userprofile\documents\WindowsPowerShell folder

if (!(Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}