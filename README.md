# QuickStart

1. Install [Chocolatey](https://chocolatey.org/) package manager, a lot of packages easy to find and install.

```cmd
:: cmd 
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

2. Run `install_packages.cmd` as Administrator or choco install sudo and run `sudo . .\install_packages.cmd`.

3. Install [Scoop](https://scoop.sh/) command-line installer

```powershell
# powershell
set-executionpolicy remotesigned -s currentuser
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
```
