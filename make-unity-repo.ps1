$toolBoxDir = Split-Path $script:MyInvocation.MyCommand.Path
$executionPath = Get-Location
cp "$toolBoxDir\unity-gitignore.gitignore" "$executionPath\.gitignore"

git init
git add .
git commit -m "Initialized by toolbox."
Write-Host "Initialized git repo for Unity project."
