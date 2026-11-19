# Remove Markdown YAML front matter before converting for CHM.
# Compatible with Windows PowerShell 5.1 and PowerShell 7.
param(
    [Parameter(Mandatory=$true, Position=0)][string]$SourceFile,
    [Parameter(Mandatory=$true, Position=1)][string]$OutputFile
)
$ErrorActionPreference = 'Stop'
try {
    $text = [System.IO.File]::ReadAllText($SourceFile, [System.Text.Encoding]::UTF8)
    $text = $text.TrimStart([char]0xFEFF)
    $front = [regex]::Match($text, '\A---\r?\n(?s:.*?)\r?\n---\s*\r?\n')
    if ($front.Success) { $text = $text.Substring($front.Length) }
    [System.IO.File]::WriteAllText($OutputFile, $text, [System.Text.UTF8Encoding]::new($false))
} catch {
    Write-Error $_
    exit 1
}
