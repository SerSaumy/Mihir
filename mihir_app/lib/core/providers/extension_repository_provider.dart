import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../extensions/models/extension_repo_item.dart';
import 'http_provider.dart';
import 'preferences_provider.dart';

/// Fetches extensions from all configured extension repositories.
final availableExtensionsProvider =
    FutureProvider<List<ExtensionRepoItem>>((ref) async {
  final http = ref.watch(httpClientProvider);
  final prefs = ref.watch(appPreferencesProvider);
  final repoUrls = prefs.getExtensionRepos();

  final results = <ExtensionRepoItem>[];

  for (final url in repoUrls.toSet()) {
    final response = await http.dio.get(url);
    if (response.statusCode != 200) {
      continue;
    }

    final List<dynamic> data = response.data is String
        ? jsonDecode(response.data as String) as List<dynamic>
        : response.data as List<dynamic>;

    results.addAll(
      data
          .map(
            (e) => ExtensionRepoItem.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  return results;
});
