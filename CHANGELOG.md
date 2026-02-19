# Changelog

All notable changes to Mihir will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-02-19

### Added
- Initial release of Mihir
- Complete UI implementation for all major screens:
  - Library screen with grid/list views, categories, search, and filters
  - Manga detail screen with split view layout
  - Reader with multiple reading modes (RTL, LTR, vertical, long strip, double page)
  - Browse screen with sources and extensions tabs
  - Downloads manager with queue and progress tracking
  - Settings screens (Appearance, Library, Reader, Downloads, Backup, Advanced)
  - Updates feed screen
  - Reading history screen
- Database schema with Drift ORM
- State management with Riverpod
- HTTP client setup with cookie management
- Extension bridge foundation (Node.js runtime structure)
- Build scripts for Windows executable and MSIX package
- GitHub Actions workflow for automated releases
- App logo integration

### Technical
- Flutter Windows app structure
- Drift database with all required tables
- Riverpod providers for state management
- GoRouter for navigation
- Extension bridge runtime structure (Node.js)
- Android API shims foundation

### Documentation
- Comprehensive README
- Architecture documentation
- Extension compatibility guide
- Implementation status

## [Unreleased]

### Planned
- Complete extension bridge implementation (APK → JS transpilation)
- Real image loading in reader
- Library update logic
- Download implementation
- Tracker integrations (MAL, AniList, etc.)
- Backup/restore functionality (.tachibk format)
- Window management and system tray
- Onboarding flow
