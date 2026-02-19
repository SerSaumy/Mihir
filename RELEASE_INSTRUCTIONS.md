# Creating an Executable Release on GitHub

## Option 1: Manual Workflow (Recommended for first release)

1. **Ensure all changes are pushed:**
   ```powershell
   git add -A
   git commit -m "Your message"
   git push origin main
   ```

2. **Trigger the release workflow:**
   - Go to https://github.com/SerSaumy/mihir/actions
   - Click "Build Windows Release"
   - Click "Run workflow"
   - Enter version (e.g. `1.0.0`) in the input
   - Click "Run workflow"

3. **Wait for the build** (~5–10 minutes)

4. **Download the release:**
   - Go to https://github.com/SerSaumy/mihir/releases
   - The new release will appear with the ZIP file attached

## Option 2: Tag-based release

1. **Create and push a tag:**
   ```powershell
   git tag v1.0.0
   git push origin v1.0.0
   ```

2. **The workflow runs automatically** and creates a release for that tag

3. **Check Releases** for the built ZIP

## Option 3: Local build + manual upload

1. **Build locally:**
   ```powershell
   cd mihir_app
   flutter pub get
   dart run build_runner build --delete-conflicting-outputs
   flutter build windows --release
   ```

2. **Create the ZIP:**
   ```powershell
   Compress-Archive -Path "build\windows\x64\runner\Release\*" -DestinationPath "..\mihir-windows-1.0.0.zip"
   ```

3. **Create release on GitHub:**
   - Go to https://github.com/SerSaumy/mihir/releases
   - Click "Create a new release"
   - Tag: `v1.0.0`
   - Title: `Mihir v1.0.0`
   - Upload the ZIP file
   - Publish

## Troubleshooting

- **Build fails**: Run `dart run build_runner build` locally first to generate code
- **CI fails**: Check the Actions tab for error details
- **No release created**: Ensure the workflow completed; for manual runs, the version input is required
