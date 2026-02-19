import 'dart:convert';
import '../models/extension_repo_item.dart';
import '../../http/http_client.dart';

const _repoIndexUrl =
    'https://raw.githubusercontent.com/keiyoushi/extensions/repo/index.min.json';
const _repoBaseUrl =
    'https://github.com/keiyoushi/extensions/releases/download/repo';

/// Fetches and parses the Mihon extension repository index.
class ExtensionRepository {
  ExtensionRepository(this._http);

  final AppHttpClient _http;

  Future<List<ExtensionRepoItem>> fetchExtensions() async {
    final response = await _http.dio.get(_repoIndexUrl);
    if (response.statusCode != 200) {
      throw Exception('Failed to fetch extension index: ${response.statusCode}');
    }

    final List<dynamic> data = response.data is String
        ? jsonDecode(response.data as String) as List<dynamic>
        : response.data as List<dynamic>;

    return data.map((e) => ExtensionRepoItem.fromJson(e as Map<String, dynamic>)).toList();
  }

  String getDownloadUrl(String apkFileName) =>
      '$_repoBaseUrl/$apkFileName';
}
