param([switch]$force)

$syncSettingsPath = [IO.Path]::Combine($env:APPDATA, "Code\User\syncLocalSettings.json")

if (Test-Path -Path $syncSettingsPath) {
  $text = (Get-Content -Path $syncSettingsPath -Raw)
  $json = @{ }
  (ConvertFrom-Json $text).psobject.properties | ForEach-Object { $json[$_.Name] = $_.Value }
  if ([string]::IsNullOrEmpty($json['token'])) {
    if ($force) {
    } else {
    }
  }
}