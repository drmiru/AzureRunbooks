workflow demo
{
	param(
		[Parameter(mandatory=$true)]
		[string]$Message
	)
	
	$localdir = "C:\DSC\AzureDemo"
	If (!(test-path -path $localdir))
	{
		Write-Verbose "Local Directory does not exist"
	}
	$Message | Out-File "$localdir\message.txt" -force
}