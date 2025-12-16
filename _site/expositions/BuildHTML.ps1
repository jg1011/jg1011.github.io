param (
    [string]$TargetFile = "*" # Default to process all, or provide relative path like "combi/swiss_subsets.md"
)

$ExpositionsRoot = "expositions"
$OutputRoot = "_includes/rendered"

# Ensure output directory exists
if (-not (Test-Path $OutputRoot)) {
    New-Item -ItemType Directory -Path $OutputRoot -Force | Out-Null
}

# Find files to process
$files = Get-ChildItem -Path $ExpositionsRoot -Recurse -Filter "*.md" | Where-Object { 
    $TargetFile -eq "*" -or $_.FullName -like "*$TargetFile*"
}

foreach ($file in $files) {
    # Calculate relative path to mirror structure (optional, or flat structure)
    # For now, let's keep a flat structure in _includes/rendered to avoid complexity, 
    # using the filename as the key. 
    # Ideally: combi/swiss_subsets.md -> _includes/rendered/swiss_subsets.html
    
    $baseName = $file.BaseName
    $outputFile = Join-Path $OutputRoot "$baseName.html"
    
    Write-Host "Building: $($file.Name) -> $baseName.html"
    
    # Run Pandoc
    # -f markdown: Input format
    # -t html: Output format
    # --mathjax: Preserve math for MathJax to handle (converts to \( \) and \[ \])
    # --wrap=none: Prevent random line wrapping that might break layout
    
    pandoc $file.FullName -f markdown -t html --mathjax --wrap=none -o $outputFile
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "  [OK] Success"
    } else {
        Write-Host "  [ERR] Failed to build $($file.Name)" -ForegroundColor Red
    }
}

