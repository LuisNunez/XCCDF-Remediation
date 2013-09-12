<# UnFix Undo Remediation script #>

Write-Output "Starting Remediation Undo"
$a = Test-Path -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\


if ( $a -eq "True")
    {
        Write-Host "key exists"
        Write-Host "Deleting Key"
        Remove-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog -Recurse
    }
    else
    {
        Write-Host "key does not exist"
    }
