import '../models/extension_repo_item.dart';

/// Helper for building download URLs for Keiyoushi-style repos.
class ExtensionRepository {
  const ExtensionRepository();

  static const String _repoBaseUrl =
      'https://github.com/keiyoushi/extensions/releases/download/repo';

  String getDownloadUrl(String apkFileName) =>
      '$_repoBaseUrl/$apkFileName';
}
