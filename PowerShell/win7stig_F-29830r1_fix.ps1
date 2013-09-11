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
    }

