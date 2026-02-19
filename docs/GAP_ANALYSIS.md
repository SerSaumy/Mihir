# Gap Analysis: Spec vs Implementation

Based on `mihir.txt` (original instructions) vs current codebase.

## ✅ Implemented

| Spec Section | Status | Notes |
|--------------|--------|-------|
| Step 2: Tech Stack | Done | Flutter, Drift, Riverpod, Dio, etc. |
| Step 3: Project Structure | Done | All directories exist |
| Step 4: Data Models | Done | Manga, Chapter, Page, Extension (Freezed) |
| Step 5: Extension Bridge - Structure | Partial | Runtime, api_shims skeleton only |
| Step 6: Library Screen | Done | Grid/list, categories, search, filter panel |
| Step 7: Manga Detail | Done | Split view, chapter list |
| Step 8: Reader - Modes | Done | RTL, LTR, vertical, long strip, double page |
| Step 8: Reader - Toolbar | Done | Basic toolbar, scrubber |
| Step 9: Downloads UI | Done | Queue display, pause/resume UI |
| Step 10: Browse Screen | Done | Sources, Extensions, Global Search tabs |
| Step 11: Updates Screen | Done | UI layout |
| Step 12: History Screen | Done | Grouped by date, resume |
| Step 14: Settings | Done | All sections (Appearance, Library, Reader, etc.) |
| Step 18: Onboarding | Partial | Welcome screen only |
| Step 19: Build | Done | Scripts, CI, release workflow |
| Step 20: Attribution | Done | CREDITS.md, LICENSE, About screen |

## ❌ Not Implemented

| Spec Section | Priority | Complexity |
|--------------|----------|------------|
| Step 5: Full Extension Bridge | Critical | Very High |
| - APK extraction | | Medium |
| - DEX→JAR conversion | | Medium |
| - JAR→Java decompilation | | Medium |
| - Java→JS transpiler | | Very High |
| - IPC bridge Dart↔Node | | High |
| - Extension Manager: fetch repo index | | Medium |
| - Extension Manager: install pipeline | | High |
| Step 10: Local Source | High | Medium |
| Step 8: Reader - image loading | High | Medium |
| Step 8: Reader - zoom, chapter transition | Medium | Medium |
| Step 9: Actual download logic | High | High |
| Step 13: Tracker integrations | Medium | High |
| Step 14: Backup - .tachibk import/export | High | High |
| Step 15: Global Search Ctrl+K | Medium | Low |
| Step 15: Deep linking mihir:// | Low | Medium |
| Step 16: Window state persistence | Medium | Low |
| Step 16: Taskbar, System tray | Low | Medium |
| Step 18: Onboarding - Import from Mihon | Medium | Low |
| Step 19: Winget manifest | Low | Low |

## 🚧 Partially Implemented

- Library: Missing collapsible sidebar, bulk select, Continue Reading on hover
- Reader: Placeholder pages, no real image loading
- Extension Manager: UI exists, no repo fetch or install
- Settings: UI only, persistence partial
