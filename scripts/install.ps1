# TODO
# Concurrently install scoop and chocolatey package manager first.

$sudo = ([IO.Path]::Combine($PSScriptRoot, 'sudo.ps1'))

& $sudo ([IO.Path]::Combine($PSScriptRoot, 'installGlobalPackages.ps1'))

powershell.exe -File ([IO.Path]::Combine($PSScriptRoot, 'installScoop.ps1'))

powershell.exe -File ([IO.Path]::Combine($PSScriptRoot, 'installLocalPackages.ps1'))

powershell.exe -File ([IO.Path]::Combine($PSScriptRoot, 'setup.ps1'))