New-Variable -Name vimrcPath -Visibility private
Set-Variable -Name vimrcPath -Value ([IO.Path]::Combine($HOME, '_vimrc'))
if (!(Test-Path -Path $vimrcPath)) {
  echo("install _vimrc....")
  Copy-Item -Path .\configs\vim\_vimrc -Destination vimrcPath
} else {
  echo("_vimrc already setup.")
}