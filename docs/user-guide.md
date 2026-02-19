# Mihir User Guide

## Getting Started

### Installation

1. Go to [GitHub Releases](https://github.com/SerSaumy/mihir/releases)
2. Download the latest `mihir-windows-x.x.x.zip`
3. Extract to a folder of your choice
4. Run `mihir.exe`

### First Launch

On first launch, you'll see a welcome screen. Click **Get Started** to begin.

### Importing from Mihon

If you have a Mihon backup (`.tachibk` file):

1. Export from Mihon: Settings → Backup → Create Backup
2. In Mihir: Settings → Backup and Restore → Restore Backup
3. Select your `.tachibk` file
4. Your library, categories, and reading progress will be imported

## Using the App

### Library

- **Grid/List View**: Toggle between grid and list using the toolbar
- **Cover Size**: Use the slider in grid mode to resize covers
- **Categories**: Use the category tabs to filter (All, Default, custom categories)
- **Search**: Type in the search bar to filter by title
- **Filters**: Click the filter icon for advanced filters

### Adding Manga

1. Go to **Browse** → **Extensions**
2. Install extensions to add sources
3. Go to **Browse** → **Sources**
4. Browse or search within a source
5. Click **Add to Library** on manga you want to follow

### Reading

- **Navigation**: Arrow keys, WASD, or mouse
- **Reading Modes**: Access via the menu (Right-to-Left, Vertical, Long Strip, etc.)
- **Fullscreen**: Press F
- **Exit**: Press Escape

### Downloads

- Go to **Downloads** to see active and completed downloads
- Queue downloads from manga or chapter screens
- Configure download location in Settings → Downloads

## Keyboard Shortcuts

| Key | Action |
|-----|--------|
| Arrow Keys / WASD | Page navigation |
| F | Fullscreen |
| Escape | Back |
| Ctrl+Left/Right | Previous/Next chapter |
| Spacebar | Advance page |

## System Requirements

- Windows 10 or higher (64-bit)
- 4GB RAM minimum
- 500MB disk space (more for downloads)

## Troubleshooting

### App won't start
- Ensure you're on 64-bit Windows
- Try running as administrator
- Check Windows Event Viewer for errors

### Extensions not loading
- Java 11+ required for extension processing
- Node.js 18+ required for extension runtime
- Install both and restart Mihir

### Slow performance
- Reduce library size
- Clear cache in Settings → Advanced
- Disable unused extensions
