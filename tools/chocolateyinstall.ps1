try {
  $package = 'xmlstarlet'
  $PackageVersion = "1.6.1"
  $toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $filename       = 'xmlstarlet-1.6.1-win32.zip'
  $url          = "$toolsDir\$filename"
  $destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
  Install-ChocolateyZipPackage $package -url $url -unzipLocation $destination
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
