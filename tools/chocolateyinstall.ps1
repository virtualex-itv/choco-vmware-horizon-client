$ErrorActionPreference  = 'Stop';
$toolsDir               = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName            = 'vmware-horizon-client'
$fileType               = 'exe'
$url                    = 'https://download3.vmware.com/software/view/viewclients/CART21FQ4/VMware-Horizon-Client-2012-8.1.0-17349995.exe'
$softwareName           = "VMware Horizon Client*"
$checksum               = '77E5B2DE068CC675CED808DA6744B62988E83FB7756AB92478B9DD1F130D4C36'
$checksumType           = 'sha256'
$silentArgs             = '/silent /norestart'
$validExitCodes         = @(0, 3010, 1641)

    $packageArgs = @{
      packageName       = $env:ChocolateyPackageName
      fileType          = $fileType
      url               = $url
      softwareName      = $softwareName
      checksum          = $checksum
      checksumType      = $checksumType
      silentArgs        = $silentArgs
      validExitCodes    = $validExitCodes
    }

Install-ChocolateyPackage @packageArgs
