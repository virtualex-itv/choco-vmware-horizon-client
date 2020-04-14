$ErrorActionPreference 		= 'Stop';
$toolsDir 			= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName 			= 'vmware-horizon-client'
$fileType 			= 'exe'
$url 				= 'https://download3.vmware.com/software/view/viewclients/CART21FQ1/VMware-Horizon-Client-5.4.2-15936851.exe'
$softwareName 			= "VMware Horizon Client*"
$checksum 			= 'F1E064CA366BE5356800A06C648F4B16C298B33F06E47C2F7EF7D33715DC2176'
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
