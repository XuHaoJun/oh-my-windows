Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

& ([IO.Path]::Combine($PSScriptRoot, 'RefreshEnv.cmd'))