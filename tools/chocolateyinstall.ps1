$ErrorActionPreference 		= 'Stop';
$toolsDir 			= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName 			= 'vmware-horizon-client'
$fileType 			= 'exe'
$url 				= 'https://download3.vmware.com/software/view/viewclients/CART21FQ1/VMware-Horizon-Client-5.4.3-16346110.exe'
$softwareName 			= "VMware Horizon Client*"
$checksum 			= '9E6293635D5B9E45939BABA405686B8671C4A37998DEC488799F20D9B6DD8C78'
$checksumType 			= 'sha256'
$silentArgs 			= '/silent /norestart'
$validExitCodes			= @(0, 3010, 1641)

	$packageArgs = @{
	  packageName		= $env:ChocolateyPackageName
	  fileType		= $fileType
	  url			= $url
	  softwareName		= $softwareName
	  checksum      	= $checksum
	  checksumType		= $checksumType
	  silentArgs		= $silentArgs
	  validExitCodes	= $validExitCodes
	}

Install-ChocolateyPackage @packageArgs
