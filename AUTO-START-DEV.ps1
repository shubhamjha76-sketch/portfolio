# Auto-Fix Script: Ensures correct directory and starts dev server
$ErrorActionPreference = "Stop"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Auto-Fix: Project Setup & Dev Server" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Navigate to project root
$projectRoot = "C:\Users\mayan\Downloads\my portfolio"
Set-Location $projectRoot

Write-Host "Current directory: $(Get-Location)" -ForegroundColor Green
Write-Host ""

# Verify package.json exists
if (-not (Test-Path "package.json")) {
    Write-Host "ERROR: package.json not found!" -ForegroundColor Red
    Write-Host "Expected location: $projectRoot\package.json" -ForegroundColor Yellow
    exit 1
}

Write-Host "[OK] package.json found" -ForegroundColor Green
Write-Host ""

# Check and install dependencies
if (-not (Test-Path "node_modules")) {
    Write-Host "Installing dependencies..." -ForegroundColor Yellow
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "ERROR: npm install failed!" -ForegroundColor Red
        exit 1
    }
    Write-Host "[OK] Dependencies installed" -ForegroundColor Green
} else {
    Write-Host "[OK] node_modules exists" -ForegroundColor Green
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Starting dev server..." -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Server will start on: http://localhost:5000" -ForegroundColor Yellow
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host ""

# Start dev server
npm run dev
