$regs = @('PotPlayerMini64', 'BlueskyFRC', 'LAVFilter')

foreach ($reg in $regs) {
  $path = "$($reg).reg"
  if (Test-Path -Path $path) {
    Write-Output("Import $($path)......")
    reg.exe import $path
  }
}