import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';

import '../../database/app_database.dart';
import '../../database/database_tables.dart';
import '../../http/http_client.dart';
import '../models/extension.dart';
import '../models/extension_repo_item.dart';
import 'extension_repository.dart';

/// Handles installing and listing extensions from the Mihon repository.
///
/// This is an MVP implementation that:
/// - Downloads the APK from the repo
/// - Stores basic metadata in the Drift `Extensions` table
/// - Registers sources in the `Sources` table
///
/// The full APK → JS bridge pipeline will build on top of this.
class ExtensionManager {
  ExtensionManager({
    required this.db,
    required AppHttpClient httpClient,
  })  : _http = httpClient,
        _repo = const ExtensionRepository();

  final AppDatabase db;
  final AppHttpClient _http;
  final ExtensionRepository _repo;

  /// Returns all installed extensions from the local database.
  Future<List<MihirExtension>> getInstalledExtensions() async {
    final rows = await db.select(db.extensions).get();
    return rows
        .map(
          (row) => MihirExtension(
            pkgName: row.pkgName,
            name: row.name,
            versionName: row.versionName,
            versionCode: row.versionCode,
            lang: row.lang,
            description: row.description,
            isNsfw: row.isNsfw,
            apkPath: row.apkPath,
            status: ExtensionStatus.loaded,
            sources: const [],
            iconPath: row.iconPath,
          ),
        )
        .toList();
  }

  /// Installs an extension from the remote repository index.
  ///
  /// - Downloads the APK into `%AppData%/Mihir/extensions/{pkg}/`
  /// - Inserts/updates the extension in the `Extensions` table
  /// - Inserts/updates the related sources in the `Sources` table
  Future<MihirExtension> installFromRepo(ExtensionRepoItem item) async {
    // Resolve download URL
    String downloadUrl;
    if (item.apk.startsWith('http://') || item.apk.startsWith('https://')) {
      // Repo provides a full URL
      downloadUrl = item.apk;
    } else {
      // Fallback to Keiyoushi-style GitHub repo layout
      downloadUrl = _repo.getDownloadUrl(item.apk);
    }

    // Determine install directory
    final appDocDir = await getApplicationDocumentsDirectory();
    final extRoot =
        Directory('${appDocDir.path}${Platform.pathSeparator}Mihir${Platform.pathSeparator}extensions${Platform.pathSeparator}${item.pkg}');
    if (!await extRoot.exists()) {
      await extRoot.create(recursive: true);
    }

    final apkFile = File(
      '${extRoot.path}${Platform.pathSeparator}${item.apk}',
    );

    // Download APK
    final response = await _http.dio.get<List<int>>(
      downloadUrl,
      options: Options(
        responseType: ResponseType.bytes,
      ),
    );

    await apkFile.writeAsBytes(response.data ?? <int>[]);

    // Upsert extension row
    final extCompanion = ExtensionsCompanion(
      pkgName: Value(item.pkg),
      name: Value(item.name),
      versionName: Value(item.version),
      versionCode: Value(item.versionCode),
      lang: Value(item.lang),
      description: const Value(null),
      isNsfw: Value(item.isNsfw),
      apkPath: Value(apkFile.path),
      status: const Value(0), // 0 = loaded
      iconPath: const Value(null),
    );

    // Drift doesn't have a simple upsert for non-autoincrement PK tables,
    // so we delete then insert.
    await (db.delete(db.extensions)
          ..where((tbl) => tbl.pkgName.equals(item.pkg)))
        .go();
    await db.into(db.extensions).insert(extCompanion);

    // Upsert sources
    for (final src in item.sources) {
      final sourceCompanion = SourcesCompanion(
        id: Value(src.id),
        name: Value(src.name),
        lang: Value(src.lang),
        baseUrl: Value(src.baseUrl),
        iconUrl: const Value(null),
        extensionPkgName: Value(item.pkg),
      );

      await (db.delete(db.sources)..where((tbl) => tbl.id.equals(src.id)))
          .go();
      await db.into(db.sources).insert(sourceCompanion);
    }

    return MihirExtension(
      pkgName: item.pkg,
      name: item.name,
      versionName: item.version,
      versionCode: item.versionCode,
      lang: item.lang,
      description: null,
      isNsfw: item.isNsfw,
      apkPath: apkFile.path,
      status: ExtensionStatus.loaded,
      sources: const [],
      iconPath: null,
    );
  }
}

