$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'vmware-horizon-client'
$fileType	= 'exe'
$url	= 'https://download3.vmware.com/software/view/viewclients/CART21FQ1/VMware-Horizon-Client-5.4.1-15897311.exe'
$softwareName	= "VMware Horizon Client*"
$checksum	= '0EEAC95786888DFF6396D1CA234A4E380B49C953E98D586F7108CC8F342D3EFA'
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
