# Start Dev Server Script
Set-Location "C:\Users\mayan\Downloads\my portfolio"

Write-Host "Current directory: $(Get-Location)" -ForegroundColor Green
Write-Host "Checking for package.json..." -ForegroundColor Yellow

if (Test-Path "package.json") {
    Write-Host "✓ package.json found" -ForegroundColor Green
    
    if (-not (Test-Path "node_modules")) {
        Write-Host "Installing dependencies..." -ForegroundColor Yellow
        npm install
    } else {
        Write-Host "✓ node_modules exists" -ForegroundColor Green
    }
    
    Write-Host "Starting dev server..." -ForegroundColor Yellow
    npm run dev
} else {
    Write-Host "✗ ERROR: package.json not found!" -ForegroundColor Red
    Write-Host "Make sure you're in the project directory." -ForegroundColor Red
    pause
}
