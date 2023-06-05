<#
	.NOTES
	===========================================================================
	 Created on:   	4/6-2023
	 Created by:   	Ib Helmer Nilsen
	 Organization: 	Professionshøjskolen UCN
	 Filename:     	InstallPSModul.ps1
	 URL:			https://github.com/ibhelmer/AzureCloudKursus
	===========================================================================
	.DESCRIPTION
		Klargør og installere Azure Powershell modul
#>
# Tjek om modulet AzureRM er installeret i PowerShell, fjernes hvis det er installeret
Get-Module -ListAvailable | Where-Object {$_.Name -like 'AzureRM*'} | Uninstall-Module 

# Dette kan også gøres "manuelt" ved først at liste installeret modul med navnet AzureRM:
#Get-InstalledModule -name AzureRM
# Hvis der er installeret et modul med navnet AzureRM fjernes dette:
#Uninstall-Module -name AzureRM

#Set herefter executionPolicy for powershell til RemoteSigned 
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
# Installer Az PowerShell modulet i Windows PowerShell:
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force
# Nu kan der forbindes til Azure via:
Connect-AzAccount
