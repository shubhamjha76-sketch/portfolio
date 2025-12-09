# Auto-fix script: Automatically finds project root and runs npm commands
$ErrorActionPreference = "Stop"

Write-Host "=== Auto-Fix Script ===" -ForegroundColor Cyan
Write-Host ""

# Find project root (current directory or parent)
$projectRoot = $PSScriptRoot
if (-not $projectRoot) {
    $projectRoot = Get-Location
}

# Check if package.json exists in current directory
if (-not (Test-Path "$projectRoot\package.json")) {
    Write-Host "ERROR: package.json not found in current directory!" -ForegroundColor Red
    Write-Host "Current directory: $projectRoot" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Searching for project folder..." -ForegroundColor Yellow
    
    # Search in Downloads folder
    $downloadsPath = "$env:USERPROFILE\Downloads"
    $possiblePaths = @(
        "$downloadsPath\my portfolio",
        "$downloadsPath\File-Genie",
        "$downloadsPath\my-portfolio"
    )
    
    foreach ($path in $possiblePaths) {
        if (Test-Path "$path\package.json") {
            $projectRoot = $path
            Write-Host "Found project at: $projectRoot" -ForegroundColor Green
            break
        }
    }
    
    if (-not (Test-Path "$projectRoot\package.json")) {
        Write-Host "FATAL: Could not find package.json anywhere!" -ForegroundColor Red
        exit 1
    }
}

Set-Location $projectRoot
Write-Host "Project root: $projectRoot" -ForegroundColor Green
Write-Host ""

# Verify package.json exists
if (-not (Test-Path "package.json")) {
    Write-Host "ERROR: package.json still not found!" -ForegroundColor Red
    exit 1
}

Write-Host "✓ package.json found" -ForegroundColor Green

# Check if node_modules exists
if (-not (Test-Path "node_modules")) {
    Write-Host "Installing dependencies..." -ForegroundColor Yellow
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "ERROR: npm install failed!" -ForegroundColor Red
        exit 1
    }
    Write-Host "✓ Dependencies installed" -ForegroundColor Green
} else {
    Write-Host "✓ node_modules exists" -ForegroundColor Green
}

Write-Host ""
Write-Host "Starting dev server..." -ForegroundColor Yellow
Write-Host "Press Ctrl+C to stop" -ForegroundColor Gray
Write-Host ""

npm run dev
