workflow stop-nanodemos
{
	$MgmtCred = Get-AutomationPSCredential -Name "CREDHyperVMgmt"
	$MgmtHost = Get-AutomationVariable -Name "VARG-HyperVMgmtServer"
	InlineScript {
		Get-VM | ? {$_.Name -match 'Nano'} | Stop-VM
		
	} -PSComputerName $MgmtHost -PSCredential $MgmtCred
	
	Write-Output "All Nano Demo Server VMs have been stopped in your Datacenter!"
}