$toolBoxDir = Split-Path $script:MyInvocation.MyCommand.Path
$executionPath = Get-Location
cp "$toolBoxDir\gitignore\Python.gitignore" "$executionPath\.gitignore"

git init
git add .
virtualenv venv/
git commit -m "Initialized by toolbox."
Write-Host "Initialized git repo for new Python project under $executionPath."
