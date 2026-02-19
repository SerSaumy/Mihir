<p align="center">
  <img src="mihir_app/assets/logos/mihir_logo_transparent.png" alt="Mihir Logo" width="120"/>
</p>

# Mihir

### Full-featured manga reader for Windows

Discover and read manga, webtoons, comics, and more – easier than ever on your Windows desktop. Mihon reimagined for the desktop.

[![GitHub](https://img.shields.io/github/downloads/SerSaumy/mihir/total?label=downloads&labelColor=27303D&color=0D1117&logo=github&logoColor=FFFFFF&style=flat)](https://github.com/SerSaumy/mihir/releases)
[![CI](https://img.shields.io/github/actions/workflow/status/SerSaumy/mihir/build_release.yml?labelColor=27303D)](https://github.com/SerSaumy/mihir/actions/workflows/build_release.yml)
[![License: Apache-2.0](https://img.shields.io/github/license/SerSaumy/mihir?labelColor=27303D&color=0877d2)](/LICENSE)

## Download

[![Mihir Stable](https://img.shields.io/github/release/SerSaumy/mihir.svg?maxAge=3600&label=Stable&labelColor=06599d&color=043b69)](https://github.com/SerSaumy/mihir/releases)

*Requires Windows 10 or higher (x64).*

## Features

* Local reading of content.
* A configurable reader with multiple viewers, reading directions and other settings.
* Tracker support: MyAnimeList, AniList, Kitsu, MangaUpdates, Shikimori, and Bangumi support.
* Categories to organize your library.
* Light and dark themes.
* Schedule updating your library for new chapters.
* Create backups locally to read offline or import from Mihon.
* Extension compatibility – run Mihon APK extensions on Windows through our bridge system.
* Plus much more...

## Installation

### For Users

1. Go to [Releases](https://github.com/SerSaumy/mihir/releases)
2. Download the latest `mihir-windows-*.zip`
3. Extract and run `mihir.exe`

### For Developers

**Prerequisites**

* Flutter SDK (latest stable)
* Node.js 18+ (for extension bridge)
* Java 11+ (for extension processing)

**Setup**

```bash
# Clone the repository
git clone https://github.com/SerSaumy/mihir.git
cd mihir

# Install Flutter dependencies
cd mihir_app
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs

# Install Node.js dependencies (for extension bridge)
cd ../extension_bridge
npm install
```

**Run**

```bash
cd mihir_app
flutter run -d windows
```

**Build**

```powershell
# Windows executable
.\scripts\build_windows.ps1

# Or MSIX package
.\scripts\build_msix.ps1
```

**Project structure**

```
mihir/
├── mihir_app/           # Main Flutter Windows app
├── extension_bridge/     # Extension compatibility layer
├── docs/                # Documentation
└── scripts/             # Build scripts
```

## Contributing

[Code of conduct](./CODE_OF_CONDUCT.md) · [Contributing guide](./CONTRIBUTING.md)

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Before reporting a new issue, take a look at the [changelog](./CHANGELOG.md) and the already opened [issues](https://github.com/SerSaumy/mihir/issues).

## Credits

Thank you to all the people who have contributed!

Mihir is based on [Mihon](https://mihon.app), which is based on [Tachiyomi](https://tachiyomi.org). See [CREDITS.md](./CREDITS.md) for full attribution.

## Disclaimer

The developer(s) of this application does not have any affiliation with the content providers available, and this application hosts zero content. Extensions are third-party and not developed by or affiliated with Mihir. Use extensions at your own discretion.

## License

Copyright © 2015 Javier Tomás  
Copyright © 2024 Mihon Open Source Project  
Copyright © 2026 Mihir Contributors

Licensed under the Apache License, Version 2.0 (the "License");  
you may not use this file except in compliance with the License.  
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
