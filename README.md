# QuickStart 
1. Install [Chocolatey](https://chocolatey.org/) package manager.
``` cmd
:: cmd version install command
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```
2. Run `install_packages.cmd` as Administrator or choco install sudo and run `sudo . .\install_packages.cmd`.