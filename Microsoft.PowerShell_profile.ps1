function Write-HostCenter { param($Message) Write-Host ("{0}{1}" -f (' ' * (([Math]::Max(0, $Host.UI.RawUI.BufferSize.Width / 2) - [Math]::Floor($Message.Length / 2)))), $Message) }
Write-Host 'PowerShell' $PsVersionTable.PSVersion
Write-Host "Welcome $([char]27)[32m$([Environment]::UserName)"
Write-Host "Use" -NoNewline
Write-Host " pphelp" -ForegroundColor "Yellow" -NoNewline
Write-Host " to get help" -ForegroundColor "White"
Write-Host ' '
function prompt { 
"$([char]27)[32m$([Environment]::UserName)$([char]27)[0m" + "@" + "$([char]27)[34m$((Get-ChildItem Env:Computername).Value)$([char]27)[0m" + "$([char]27)[35m on " + "$((Get-Location))$([char]27)[0m $([char]27)$([char]27)[0m$ "
}
function root  {
cd /
}
function home {
cd $env:USERPROFILE
}
function pphelp {
Write-Host '  PowerPlus | Help' -ForegroundColor "Blue"
echo "Command Name | Description"
echo "-------------|----------------------------------------------"
echo "home         | Changes directory to the user home directory."
echo "root         | Changes directory to the root of the drive."
echo "help         | Prompts PowerShell help message."
echo " "
echo "PowerPlus v0.1 | https://github.com/Noahvocat/PowerPlus"
}
