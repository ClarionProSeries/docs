Param(
  [Parameter(Mandatory=$true,Position=0)][string]$In,
  [Parameter(Mandatory=$true,Position=1)][string]$Out
)

$ErrorActionPreference = 'Stop'

# Read lines (prefer UTF-8)
try { $lines = Get-Content -LiteralPath $In -Encoding UTF8 } catch { $lines = Get-Content -LiteralPath $In }

# Find first non-empty line (tolerate BOM)
$start = 0
while ($start -lt $lines.Count -and ($lines[$start] -replace "^\uFEFF","").Trim() -eq "") { $start++ }

$stripFrom = -1; $stripTo = -1
if ($start -lt $lines.Count) {
  $first = ($lines[$start] -replace "^\uFEFF","").Trim()
  if ($first -eq '---') {
    for ($i = $start + 1; $i -lt $lines.Count; $i++) {
      $t = $lines[$i].Trim()
      if ($t -eq '---' -or $t -eq '...') { $stripFrom = $start; $stripTo = $i; break }
    }
  }
}

# Remove that YAML block if it is truly the first block
$outLines = if ($stripFrom -ge 0 -and $stripTo -ge $stripFrom) {
  if ($stripTo + 1 -lt $lines.Count) { $lines[($stripTo + 1)..($lines.Count - 1)] } else { @() }
} else {
  $lines
}

# Ensure destination folder exists and write UTF-8 without BOM
$dir = [System.IO.Path]::GetDirectoryName($Out)
if ($dir -and -not (Test-Path -LiteralPath $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
$enc = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($Out, ($outLines -join "`r`n"), $enc)
