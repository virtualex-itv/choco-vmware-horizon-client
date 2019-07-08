$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'vmware-horizon-client'
$fileType	= 'exe'
$url	= 'https://download3.vmware.com/software/view/viewclients/CART20FQ2/VMware-Horizon-Client-5.1.0-14045148.exe'
$softwareName	= "VMware Horizon Client*"
$checksum	= '890D06FAE91AE9E54E9520338E1B59652BD320DE02D5BDC00D5DF868FC2C336E'
$checksumType	= 'sha256'
$silentArgs	= '/silent /norestart'
$validExitCodes		= @(0, 3010, 1641)

	$packageArgs = @{
	  packageName		= $env:ChocolateyPackageName
	  unzipLocation		= $toolsDir
	  fileType			= $fileType
	  url				= $url
	  softwareName		= $softwareName
	  checksum      	= $checksum
	  checksumType		= $checksumType
	  silentArgs		= $silentArgs
	  validExitCodes	= $validExitCodes
	}

Install-ChocolateyPackage @packageArgs
