New-Variable -Name vimrcPath -Visibility private
Set-Variable -Name vimrcPath -Value ([IO.Path]::Combine($HOME, '_vimrc'))
if (Test-Path -Path $vimrcPath) {
  Write-Output("backup old _vimrc to _vimrc.old")
  Move-Item -Force -Path $vimrcPath -Destination ([IO.Path]::Combine($HOME, '_vimrc.old'))
}
Copy-Item -Path _vimrc -Destination $vimrcPath