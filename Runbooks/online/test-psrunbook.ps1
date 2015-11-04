
Add-WindowsFeature RSAT-AD-PowerShell

Import-Module ActiveDirectory
$aduserobj = Get-ADUser Administrator
Write-Output $aduserobj.Name