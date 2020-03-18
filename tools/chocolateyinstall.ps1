$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'vmware-horizon-client'
$fileType	= 'exe'
$url	= 'https://download3.vmware.com/software/view/viewclients/CART21FQ1/VMware-Horizon-Client-5.4.0-15805437.exe'
$softwareName	= "VMware Horizon Client*"
$checksum	= '637A12653DFBFE7539FC55B3287653B504E791A9CF8ECC6BEF9BE8F9166645CB'
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
