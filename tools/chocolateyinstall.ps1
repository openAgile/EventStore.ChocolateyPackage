try {
  $name = 'eventstore'
  $url = 'http://download.geteventstore.com/binaries/EventStore-OSS-Win-v3.0.0-rc9.zip'
  $url64 = $url
  $install_folder_path = "c:\eventstore"
  $installArgs = $env:chocolateyInstallArguments
  if($installArgs -ne $null)
  {
    $install_folder_path = $installArgs
  }

  $install_path = "$env:ProgramFiles\eventstore"

  Install-ChocolateyZipPackage $name $url $install_path
  
  Write-ChocolateySuccess $name
} catch {
  Write-ChocolateyFailure $name $($_.Exception.Message)
  throw
}  