$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'vmware-horizon-client'
$fileType	= 'exe'
$url	= 'https://download3.vmware.com/software/view/viewclients/CART20FQ3/VMware-Horizon-Client-5.2.0-14570289.exe'
$softwareName	= "VMware Horizon Client*"
$checksum	= '0819DC7C86483B4F669C0F78374337EAF8E6EC961B7551C54B580F96FAD4D6A8'
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
