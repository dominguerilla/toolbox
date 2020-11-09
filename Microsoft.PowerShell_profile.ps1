
# My handy dandy tool-belt
$toolbox = Join-Path -Path $Home -ChildPath "toolbox"
$notes = Join-Path -Path $Home -ChildPath "Dropbox\Notes"
New-Alias -Name vi -Value 'C:\Program Files (x86)\vim\vim80\vim.exe'
New-Alias -Name vim -Value 'C:\Program Files (x86)\vim\vim80\vim.exe'
New-Alias -Name make-unity-repo -Value "$toolbox\make-unity-repo.ps1"
New-Alias -Name make-python-repo -Value "$toolbox\make-python-repo.ps1"
New-Alias -Name grind -Value "$toolbox\grind.ps1"

function prompt {
	"$(Get-Location)> ";
}

# Include this if you like a vim command line experience
Set-PSReadlineOption -EditMode vi -BellStyle Visual
