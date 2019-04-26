
# TODO
# Find more automatic way for install packages like node.js npm solution.
# relational post: How to install list of app through scoop.
# https://github.com/lukesampson/scoop/issues/2289
scoop bucket add extras
scoop bucket add xuhaojun 'https://github.com/XuHaoJun/scoop-xuhaojun'
scoop bucket add Ash258 'https://github.com/Ash258/scoop-Ash258.git'
scoop update

$path = [IO.path]::Combine($PSScriptRoot, '../scoop-packages.txt')
function isEmptyOrComment($str) {
  return  $str -Match [regex]::New('^(\s|#)*$') 
}
$packages = Get-Content $path | Where-Object -FilterScript { -Not (isEmptyOrComment($_)) } | ForEach-Object { [regex]::Escape($_) }

function installPackage($package = '') {
  scoop install $package
}

foreach ($pkg in $packages) {
  installPackage($pkg)
}

# TODO
# make a scoop package.json and use platform field for install amd mobile only tools.
$cpu = Get-WmiObject win32_Processor
$amdMobileRegex = [regex]::New('(?i:.*AMD.*Mobile.*)')
$amdMobliePackages = @('xuhaojun/ryzenadj', 'xuhaojun/ryzentest')
if ($cpu.Name -match $amdMobileRegex) {
  foreach ($pkg in $amdMobliePackages) {
    installPackage($pkg)
  }
}