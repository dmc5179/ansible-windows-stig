# replace the command name with any PowerShell command name
# you'd like to explore
$Name = "Get-Printer"
$ModuleName = (Get-Command -Name $Name -CommandType Function, Cmdlet).Source

if ('' -eq $ModuleName)
{
    Write-Warning "$Name was defined in memory, no module available."
    return
} 

Write-Warning "$Name resides in $ModuleName module"

$module = Get-Module -Name $ModuleName -ListAvailable
explorer $module.ModuleBase
