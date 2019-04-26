powershell.exe -File ([IO.Path]::Combine($PSScriptRoot, 'installChocolatey.ps1'))

choco install -y ([IO.Path]::Combine($PSScriptRoot, '../chocolatey-packages.config'))