# Mihir Architecture

## Overview

Mihir is built using Flutter for Windows, with a custom extension bridge system that allows Android APK extensions to run natively on Windows.

## Core Components

### 1. Flutter Application (`mihir_app/`)

The main Flutter application handles:
- UI rendering and user interaction
- Database operations (via Drift)
- HTTP requests (via Dio)
- State management (via Riverpod)
- Extension lifecycle management

### 2. Extension Bridge (`extension_bridge/`)

The extension bridge is a Node.js-based system that:
- Extracts and processes APK files
- Transpiles Kotlin/Java bytecode to JavaScript
- Provides Android API shims
- Executes extension code in a sandboxed environment
- Proxies HTTP requests back to Dart

## Data Flow

### Extension Installation Flow

1. User installs extension (APK file)
2. Dart extracts APK using `archive` package
3. Dart extracts `classes.dex` from APK
4. Dart spawns Java process to convert DEX → JAR (dex2jar)
5. Dart spawns Java process to decompile JAR → Java source (CFR)
6. Dart spawns Node.js process to transpile Java → JavaScript
7. JavaScript bundle is cached in `%AppData%\Mihir\extensions\{pkgName}\bundle.js`
8. Extension is marked as ready

### Extension Execution Flow

1. User browses/search a source
2. Dart sends JSON-RPC message to Node.js bridge process
3. Node.js loads cached JavaScript bundle
4. Node.js executes extension method (e.g., `getMangaList`)
5. Extension makes HTTP request (via shim)
6. HTTP request is proxied back to Dart
7. Dart executes HTTP request with full Cloudflare bypass, cookies, etc.
8. Response is sent back to Node.js
9. Node.js processes response and returns result to Dart
10. Dart updates UI with results

## Database Schema

All data is stored in SQLite using Drift ORM:

- **Mangas**: Manga metadata
- **Chapters**: Chapter information
- **Pages**: Page URLs and local paths
- **Extensions**: Installed extension metadata
- **Sources**: Available sources from extensions
- **Categories**: Library categories
- **Tracks**: Tracker integration data
- **History**: Reading history
- **Downloads**: Download queue and status

## HTTP Client

Dio is used for all HTTP requests with:
- Cookie management (`dio_cookie_manager`)
- Cloudflare bypass (via WebView widget)
- Custom headers and interceptors
- Request/response logging

## State Management

Riverpod provides:
- Provider-based state management
- Dependency injection
- Testable architecture
- Reactive updates

## Extension Bridge Details

### Android API Shims

Common Android APIs are shimmed to JavaScript equivalents:
- `android.util.Base64` → Node.js `Buffer`
- `android.text.Html` → Cheerio HTML parsing
- `okhttp3.Request/Response` → Axios (proxied to Dart)
- `org.jsoup.Jsoup` → Cheerio
- `com.google.gson.Gson` → `JSON.parse/stringify`

### IPC Communication

Communication between Dart and Node.js uses JSON-RPC over stdio:
- Request: `{ "id": "req-001", "method": "getMangaList", "params": {...} }`
- Response: `{ "id": "req-001", "result": {...} }`
- Error: `{ "id": "req-001", "error": {...} }`

## Performance Considerations

- Extension bundles are cached after first processing
- HTTP requests are batched when possible
- Images are cached using `cached_network_image`
- Long strip reading uses virtualized lists
- Database queries are optimized with indexes

## Security

- Extensions run in isolated Node.js processes
- HTTP requests are validated before execution
- User must explicitly trust extensions before loading
- Credentials stored in Windows Credential Manager
