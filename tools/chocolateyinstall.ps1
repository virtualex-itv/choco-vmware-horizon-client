$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'vmware-horizon-client'
$fileType	= 'exe'
$url	= 'https://download3.vmware.com/software/view/viewclients/CART20FQ4/VMware-Horizon-Client-5.3.0-15208953.exe'
$softwareName	= "VMware Horizon Client*"
$checksum	= '8111ABBA91659B5023285F7968904E63E1EAC50147ACC6F7699556679D7D25CB'
$checksumType	= 'sha256'
$silentArgs	= '/silent /norestart'
$validExitCodes		= @(0, 3010, 1641)

	$packageArgs = @{
	  packageName		= $env:ChocolateyPackageName
	  unzipLocation		= $toolsDir
	  fileType		= $fileType
	  url			= $url
	  softwareName		= $softwareName
	  checksum      	= $checksum
	  checksumType		= $checksumType
	  silentArgs		= $silentArgs
	  validExitCodes	= $validExitCodes
	}

Install-ChocolateyPackage @packageArgs
