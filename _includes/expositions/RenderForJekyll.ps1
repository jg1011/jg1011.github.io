param (
    [Parameter(Mandatory=$true)]
    [string]$InputPath,

    [Parameter(Mandatory=$true)]
    [string]$OutputDir
)

# Ensure the output directory exists
if (-not (Test-Path -Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

# Determine output filename (InputFile.md -> InputFile_escaped.md)
$fileName = Split-Path $InputPath -Leaf
$baseName = [System.IO.Path]::GetFileNameWithoutExtension($fileName)
$extension = [System.IO.Path]::GetExtension($fileName)
$outputFileName = "${baseName}_escaped${extension}"
$outputFilePath = Join-Path $OutputDir $outputFileName

# Read content
$content = Get-Content -Raw $InputPath

# Replace \{ with \\{ and \} with \\} for Jekyll/MathJax compatibility
$content = $content -replace '\\{', '\\{'
$content = $content -replace '\\}', '\\}'

# Save to output
Set-Content -Path $outputFilePath -Value $content

Write-Host "Processed '$InputPath' -> '$outputFilePath'"
