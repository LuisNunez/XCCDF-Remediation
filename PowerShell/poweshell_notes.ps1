﻿<# Basic Remediation PowerShell script 
   Cmdlets to address Windows 7 STIG registry settings #>

# Read a registry key
Get-ChildItem -path hkcu:\ 
Get-ChildItem -Path Registry::HKEY_LOCAL_MACHINE\  
Get-ChildItem -Path Registry::HKEY_CLASSES_ROOT\  
Get-ChildItem -Path Registry::HKEY_CURRENT_CONFIG\
Get-ChildItem -Path Registry::HKEY_CURRENT_USER\  
Get-ChildItem -Path Registry::HKEY_PERFORMANCE_DATA\
Get-ChildItem -Path Registry::HKEY_USERS\

# Create new registry key
New-Item -Path HKCU:\Software\_DeleteMe  

# Delete registry key
Remove-Item -path HKCU:\Software_DeleteMe -Verbose 

# Create new registry key value
New-ItemProperty -Path HKCU:\Software\_DeleteME -Name PowerShellTest -PropertyType String -Value PS1 -Verbose 

# Remove registry item
Remove-ItemProperty -Path registry::hklm\SOFTWARE\Policies\Google\Chrome -name RemoteAccessClientFirewallTraversal -verbose

# Update (change) registry key name
Rename-ItemProperty -Path HKCU:\Software\_DeleteMe -Name PowerShellTest -NewName PowerShellTest1 -Verbose 

# Update (change) registry key vaule
Set-ItemProperty -Path HKCU:\Software\_DeleteMe -Name PowerShellTest1 -Value PS3  -Verbose

# Checking existence of hive
Test-path -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies
