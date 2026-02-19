# Pre-Release Checklist

## Before Syncing to GitHub

### ✅ Completed
- [x] Logo files moved to `mihir_app/assets/logos/`
- [x] Unnecessary documentation files removed
- [x] Logo integrated into app (About dialog)
- [x] Build scripts created (`scripts/build_windows.ps1`, `scripts/build_msix.ps1`)
- [x] GitHub Actions workflow created (`.github/workflows/build_release.yml`)
- [x] `.gitignore` updated to exclude `mihon-reference/`
- [x] README updated with correct repository URL
- [x] CHANGELOG.md created

### ⚠️ Before First Release

1. **Generate Code** (Required before building):
   ```powershell
   cd mihir_app
   flutter pub get
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

2. **Test Build**:
   ```powershell
   .\scripts\build_windows.ps1
   ```

3. **Verify Executable**:
   - Check that `mihir_app\build\windows\x64\runner\Release\mihir.exe` exists
   - Test running the executable

4. **Update Version** (if needed):
   - Edit `mihir_app/pubspec.yaml` version field
   - Update `CHANGELOG.md`

5. **Create Initial Release on GitHub**:
   - Tag: `v1.0.0`
   - Title: "Mihir v1.0.0 - Initial Release"
   - Description: Copy from CHANGELOG.md
   - Upload the built executable or let GitHub Actions handle it

## Repository Structure

```
mihir/
├── .github/
│   └── workflows/
│       └── build_release.yml    # Automated builds
├── docs/                        # Documentation
├── extension_bridge/            # Extension compatibility layer
├── mihir_app/                   # Main Flutter app
│   ├── assets/
│   │   └── logos/              # App logos
│   └── lib/                     # Source code
├── scripts/                     # Build scripts
├── .gitignore
├── CHANGELOG.md
├── CREDITS.md
├── LICENSE
└── README.md
```

## Files Excluded from Repository

- `mihon-reference/` - Reference repository (in .gitignore)
- Build outputs (`.exe`, `.msix` files)
- Generated code (`.g.dart`, `.freezed.dart` files - will be generated)
- IDE files (`.idea/`, `.vscode/`)
- Dependencies (`node_modules/`, `.dart_tool/`)

## Next Steps After GitHub Sync

1. Create initial release tag: `v1.0.0`
2. GitHub Actions will automatically build and attach the executable
3. Update README with release download link
4. Continue development on `main` branch
