import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../extensions/loader/extension_repository.dart';
import '../extensions/models/extension_repo_item.dart';
import 'http_provider.dart';

final extensionRepositoryProvider = Provider<ExtensionRepository>((ref) {
  return ExtensionRepository(ref.watch(httpClientProvider));
});

final availableExtensionsProvider =
    FutureProvider<List<ExtensionRepoItem>>((ref) async {
  final repo = ref.watch(extensionRepositoryProvider);
  return repo.fetchExtensions();
});
