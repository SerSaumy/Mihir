# Build script for MSIX package (Windows Store format)
# This creates a distributable MSIX package

Write-Host "Building MSIX package for Windows..." -ForegroundColor Green

# Navigate to app directory
Set-Location "$PSScriptRoot\..\mihir_app"

# Clean previous builds
Write-Host "Cleaning previous builds..." -ForegroundColor Yellow
flutter clean

# Get dependencies
Write-Host "Getting dependencies..." -ForegroundColor Yellow
flutter pub get

# Generate code
Write-Host "Generating code..." -ForegroundColor Yellow
flutter pub run build_runner build --delete-conflicting-outputs

# Build MSIX package
Write-Host "Building MSIX package..." -ForegroundColor Yellow
flutter build windows --release --msix

# Check if build was successful
if ($LASTEXITCODE -eq 0) {
    Write-Host "MSIX build successful!" -ForegroundColor Green
    Write-Host ""
    Write-Host "MSIX location:" -ForegroundColor Cyan
    Write-Host "mihir_app\build\windows\x64\runner\Release\*.msix" -ForegroundColor White
} else {
    Write-Host "Build failed!" -ForegroundColor Red
    exit 1
}

Set-Location "$PSScriptRoot\.."
