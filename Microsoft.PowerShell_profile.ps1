
<# The commented section is explaining how to build out the prompt. None are required. 
# Are you running powershell as UAC admin? 
$IsAdmin = (New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)

# get logged on user. This could be used with global profiles
# 
$CmdPromptUser = [Security.Principal.WindowsIdentity]::GetCurrent();

# $pwd is an environment variable -leaf takes the last component of the string/branch
$CmdPromptCurrentFolder = Split-Path -Path $pwd -Leaf

# Show me where I am and add to the Windows titlebar
$host.ui.RawUI.WindowTitle = "Current Folder: $pwd"	
#>

# The prompt.ps1 script is used a "built-in" script used to modify the prompt. This can be located anywhere, but usually
# in your profile directory. This could be the only line in this profile script while using prompt.ps1 for everything else
. e:\prompt\prompt.ps1