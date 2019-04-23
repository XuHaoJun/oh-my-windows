param([switch]$force)

$syncSettingsPath = [IO.Path]::Combine($env:APPDATA, "Code\User\syncLocalSettings.json")

if (Test-Path -Path $syncSettingsPath) {
  $text = (Get-Content -Path $syncSettingsPath -Raw)
  $json = @{ }
  (ConvertFrom-Json $text).psobject.properties | Foreach { $json[$_.Name] = $_.Value }
  if ([string]::IsNullOrEmpty($hashtable['token'])) {
    if ($force) {
    } else {
    }
  }
}