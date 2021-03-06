param (
  [switch]$force = $false
)

$options = @{
  force = $force
}

$configsPath = [IO.Path]::Combine($PSScriptRoot, '../configs')
$packages = (Get-ChildItem $configsPath -Directory -Name)

$passOptions = @()
foreach ($k in $options.Keys) {
  $v = $options[$k]
  if (($v -is [switch]) -And $v) {
    $passOptions += "-$($k)"
  } else {
    $passOptions += "-$($k) $($v)"
  }
}


foreach ($pkg in $packages) {
  $configPath = [IO.Path]::Combine($configsPath, $pkg)
  $setupScript = [IO.Path]::Combine($configPath, 'setup.ps1')
  if ((Test-Path -Path $configPath) -And (Test-Path -Path $setupScript)) {
    Set-Location -Path $configPath
    powershell.exe -File $setupScript @passOptions
  }
}

Set-Location -Path $PSScriptRoot