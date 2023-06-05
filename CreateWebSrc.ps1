<#
	.NOTES
	===========================================================================
	 Created on:   	4/6-2023
	 Created by:   	Ib Helmer Nilsen
	 Organization: 	Professionshøjskolen UCN
	 Filename:     	CreateWebSrv.ps1
	 URL:			https://github.com/ibhelmer/AzureCloudKursus
	===========================================================================
	.DESCRIPTION
		Installer  og installere Azure Powershell modul (Windows)
#>

New-AzVm `
    -ResourceGroupName 'CloudKursus' `
    -Name 'WebSrv2' `
	-Size 'Standard_B1ls'`
    -Location 'West Europe' `
    -VirtualNetworkName 'LB-vnet' `
    -SubnetName 'LBSubnet' `
    -SecurityGroupName 'ihnNSG' `
    -PublicIpAddressName '' `
    -OpenPorts 80,22