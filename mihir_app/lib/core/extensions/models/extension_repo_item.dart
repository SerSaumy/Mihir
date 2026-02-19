/// Represents an extension from the repository index.
class ExtensionRepoItem {
  const ExtensionRepoItem({
    required this.name,
    required this.pkg,
    required this.apk,
    required this.lang,
    required this.versionCode,
    required this.version,
    required this.isNsfw,
    required this.sources,
  });

  final String name;
  final String pkg;
  final String apk;
  final String lang;
  final int versionCode;
  final String version;
  final bool isNsfw;
  final List<ExtensionRepoSource> sources;

  factory ExtensionRepoItem.fromJson(Map<String, dynamic> json) {
    final sourcesList = json['sources'] as List<dynamic>? ?? [];
    return ExtensionRepoItem(
      name: json['name'] as String? ?? '',
      pkg: json['pkg'] as String? ?? '',
      apk: json['apk'] as String? ?? '',
      lang: json['lang'] as String? ?? 'all',
      versionCode: (json['code'] is int) ? json['code'] as int : 0,
      version: json['version'] as String? ?? '0',
      isNsfw: (json['nsfw'] is int) ? (json['nsfw'] as int) == 1 : false,
      sources: sourcesList
          .map((e) => ExtensionRepoSource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class ExtensionRepoSource {
  const ExtensionRepoSource({
    required this.name,
    required this.lang,
    required this.id,
    this.baseUrl,
  });

  final String name;
  final String lang;
  final String id;
  final String? baseUrl;

  factory ExtensionRepoSource.fromJson(Map<String, dynamic> json) {
    return ExtensionRepoSource(
      name: json['name'] as String? ?? '',
      lang: json['lang'] as String? ?? 'all',
      id: json['id']?.toString() ?? '',
      baseUrl: json['baseUrl'] as String?,
    );
  }
}
