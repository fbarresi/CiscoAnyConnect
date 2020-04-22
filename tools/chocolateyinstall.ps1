$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'anyconnect-win-3.1.06073-pre-deploy-k9.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi' #only one of these: exe, msi, msu
  file         = $fileLocation

  softwareName  = 'CiscoAnyConnect*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  silentArgs   = '/quiet'
}

Install-ChocolateyPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-package
