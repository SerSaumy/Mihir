# Build script for Windows executable
# This script builds a release version of Mihir for Windows

Write-Host "Building Mihir for Windows..." -ForegroundColor Green

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

# Build Windows release
Write-Host "Building Windows release..." -ForegroundColor Yellow
flutter build windows --release

# Check if build was successful
if ($LASTEXITCODE -eq 0) {
    Write-Host "Build successful!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Executable location:" -ForegroundColor Cyan
    Write-Host "mihir_app\build\windows\x64\runner\Release\mihir.exe" -ForegroundColor White
    Write-Host ""
    Write-Host "To create a distributable package:" -ForegroundColor Yellow
    Write-Host "1. Copy the entire Release folder" -ForegroundColor White
    Write-Host "2. Or use: flutter build windows --release --msix" -ForegroundColor White
} else {
    Write-Host "Build failed!" -ForegroundColor Red
    exit 1
}

Set-Location "$PSScriptRoot\.."
