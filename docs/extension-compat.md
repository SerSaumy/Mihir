# Extension Compatibility Guide

## Overview

Mihir uses an innovative bridge system to run Mihon APK extensions on Windows. This document explains how it works and what limitations exist.

## How It Works

### Stage 1: APK Extraction
- APK files are ZIP archives
- We extract `classes.dex` (Dalvik bytecode)
- We extract resources (icons, etc.)
- We parse `AndroidManifest.xml` for metadata

### Stage 2: DEX → JAR Conversion
- Uses `dex2jar` tool to convert Dalvik bytecode to Java bytecode
- Requires Java 11+ to be installed

### Stage 3: JAR → Java Source
- Uses CFR decompiler to convert Java bytecode to readable Java source
- This step is necessary because we need source code to transpile

### Stage 4: Java → JavaScript Transpilation
- Custom transpiler converts Java source to JavaScript
- Android API calls are replaced with shim implementations
- Kotlin-specific features are handled (coroutines → async/await)

### Stage 5: Runtime Execution
- JavaScript bundle runs in Node.js process
- Android API shims provide compatibility layer
- HTTP requests are proxied back to Dart

## Supported Features

✅ All standard Mihon extension APIs:
- `getMangaList()` - Browse manga
- `getMangaDetails()` - Get manga info
- `getChapterList()` - Get chapters
- `getPageList()` - Get pages
- `getFilterList()` - Source filters
- `searchManga()` - Search functionality

✅ Android APIs commonly used:
- Base64 encoding/decoding
- HTML parsing (JSoup → Cheerio)
- HTTP requests (OkHttp → Axios via Dart)
- JSON parsing (Gson → JSON.parse)
- String utilities

## Limitations

⚠️ **Not Supported:**
- Extensions that use native Android libraries (JNI)
- Extensions that require Android-specific hardware features
- Extensions that use unsupported Android APIs
- Extensions with obfuscated code (may fail to decompile)

⚠️ **Partially Supported:**
- Some complex Kotlin coroutine patterns may not transpile perfectly
- Very large extensions may take longer to process
- Some edge cases in HTML parsing may differ slightly

## Troubleshooting

### Extension fails to install
- Check that Java 11+ is installed
- Check that Node.js 18+ is installed
- Check extension logs in `%AppData%\Mihir\logs\`

### Extension loads but methods fail
- Check that the extension uses supported APIs
- Try updating the extension
- Check bridge logs for specific error messages

### Extension works but is slow
- First run processes the extension (30-60 seconds)
- Subsequent runs use cached bundle (should be fast)
- HTTP requests add ~500ms overhead due to IPC

## Extension Repository

Mihir uses the same extension repository as Mihon:
- Index: `https://raw.githubusercontent.com/keiyoushi/extensions/repo/index.min.json`
- Extensions are downloaded from GitHub releases

## Writing Extensions

Extensions are written for Mihon/Android, not specifically for Mihir. However, following these guidelines will improve compatibility:

1. Use standard Mihon extension APIs
2. Avoid native Android libraries
3. Use OkHttp for HTTP (not raw sockets)
4. Use JSoup for HTML parsing
5. Avoid obfuscation if possible

## Reporting Issues

If an extension doesn't work:
1. Check if it works in Mihon (Android)
2. Check bridge logs
3. Report issue with extension name, version, and error logs
