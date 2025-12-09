$ErrorActionPreference = "Continue"
Set-Location "C:\Users\mayan\Downloads\my portfolio"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Debug: Starting Dev Server" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Current directory: $(Get-Location)" -ForegroundColor Yellow
Write-Host ""

if (-not (Test-Path "package.json")) {
    Write-Host "ERROR: package.json not found!" -ForegroundColor Red
    exit 1
}

Write-Host "[OK] package.json found" -ForegroundColor Green

if (-not (Test-Path "node_modules")) {
    Write-Host "Installing dependencies..." -ForegroundColor Yellow
    npm install
}

Write-Host ""
Write-Host "Checking Node.js..." -ForegroundColor Yellow
node --version
npm --version

Write-Host ""
Write-Host "Starting server..." -ForegroundColor Yellow
Write-Host ""

# Run and capture all output
$outputFile = "server-output.log"
npm run dev *> $outputFile 2>&1

# If it exits, show the output
if (Test-Path $outputFile) {
    Write-Host "Server output:" -ForegroundColor Cyan
    Get-Content $outputFile
}
