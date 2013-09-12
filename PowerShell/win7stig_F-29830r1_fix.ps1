<# PowerShell script to remediate #>

<# Based on DISA Windows 7 STIG Benchmark Version 1 Release 6 #>
<# Maximum Log Size - Application #>
<# Rule ID SV-36021r1_rule #>
<# CCE-9603-2 #>
<# fix id F-29830r1_fix #>
<#  HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application MaxSize value #>
<# regdword #>
<# value 32768 #>


<#
New-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\
New-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application
#>

Write-Output "Starting Remediation"
$a = Test-Path -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\
$b = Test-Path -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application

if ( $a -eq "True")
    {
        Write-Host "key exists"
    }
    else
    {
        Write-Host "key does not exist"
        Write-Host "Creating key"
        New-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog
    }

if ($b -eq "True")
    {
        Write-Host "key exists"
    }
    else
    {
        Write-Host "key does not exist"
        Write-Host "Creating key"
        New-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application
        Write-host "Creating key value MaxSize"
        Set-ItemProperty -path registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application -Name MaxSize -Type DWord -Value '32768'
    }

<# Commented out for now.
if((Get-ItemProperty -path registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application -Name MaxSize -ea 0).go ) 
    {'Propertyalready exists'
        Write-Host 'Value Exits'
    }
    else 
    {
        Write-Host "Does not Exists" 
        Write-Host "Writing value"
        Set-ItemProperty -path registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application -Name MaxSize -Type DWord -Value '32768'
    }
Write-Host "End of Remediation"
#>
