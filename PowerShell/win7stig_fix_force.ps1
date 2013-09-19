<# STIGing Windows 7 #>

<# Start #>
Write-Host "Start STIGing"



Write-host "STIG V-26579 - Maximum Log Size Application- Creating key value MaxSize"
New-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application -Force
Set-ItemProperty -path registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application -Name MaxSize -Type DWord -Value '32768' -Force

Write-host "STIG V-26580 - Maximum Log Size Security- Creating key value MaxSize"
New-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security -Force
Set-ItemProperty -path registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security -Name MaxSize -Type DWord -Value '81920' -Force

Write-host "STIG V-26581 - Maximum Log Size Setup - Creating key value MaxSize"
New-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\System -Force
Set-ItemProperty -path registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\System -Name MaxSize -Type DWord -Value '32768' -Force

Write-host "STIG V-26580 - Maximum Log Size Security- Creating key value MaxSize"
New-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security -Force
Set-ItemProperty -path registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security -Name MaxSize -Type DWord -Value '81920' -Force

Write-host "STIG V-26582 - Maximum Log Size System - Creating key value MaxSize"
New-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Setup -Force
Set-ItemProperty -path registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Setup -Name MaxSize -Type DWord -Value '32768' -Force



<# List new keys #>
Get-ChildItem registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog

Write-Host "STIGing END"
<# End #>