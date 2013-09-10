<# Basic Remediation PowerShell script #>
<# Intent to address Windows 7 STIG settings #>

<# Read a registry key #>
<# Get-ChildItem -path hkcu:\ #>

<# Create new registry key #>
<# New-Item -Path HKCU:\Software\_DeleteMe #> 

<# Delete registry key #>
<# Remove-Item -path HKCU:\Software_DeleteMe -Verbose #>

<# Create new registry key value #>
<# New-ItemProperty -Path HKCU:\Software\_DeleteME -Name PowerShellTest -PropertyType String -Value PS1 -Verbose #>

<# Update (change) registry key name #>
<# Rename-ItemProperty -Path HKCU:\Software\_DeleteMe -Name PowerShellTest -NewName PowerShellTest1 -Verbose #>

<# Update (change) registry key vaule #>
Set-ItemProperty -Path HKCU:\Software\_DeleteMe -Name PowerShellTest1 -Value PS3  -Verbose


