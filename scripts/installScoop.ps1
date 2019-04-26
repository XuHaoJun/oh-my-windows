Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh')

& ([IO.Path]::Combine($PSScriptRoot, 'RefreshEnv.cmd'))