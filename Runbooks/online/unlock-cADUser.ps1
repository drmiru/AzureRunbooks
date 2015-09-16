workflow unlock-cADUser
{
	param(
	[Parameter(mandatory=$true)]
	[string]$UserLoginName
	)
	
	Import-Module ActiveDirectory
	
	$aduserobj = get-ADUser $UserLoginName -Properties *
	
	Write-Output $aduserobj
	
}
