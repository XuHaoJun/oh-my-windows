scoop bucket add extras
scoop bucket add xuhaojun 'https://github.com/XuHaoJun/scoop-xuhaojun'
scoop bucket add Ash258 'https://github.com/Ash258/scoop-Ash258.git'

$path = [IO.path]::Combine($PSScriptRoot, 'scoop-packages.txt')
$packages = Get-Content $path | ForEach-Object { [regex]::Escape($_) }
echo $packages