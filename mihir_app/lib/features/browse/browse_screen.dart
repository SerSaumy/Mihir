import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'sources_tab.dart';
import 'extensions_tab.dart';
import 'global_search_tab.dart';
import '../../core/providers/preferences_provider.dart';
import '../../core/providers/extension_repository_provider.dart';

final browseTabProvider = StateProvider<int>((ref) => 0);

class BrowseScreen extends ConsumerWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTab = ref.watch(browseTabProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse'),
        actions: [
          if (selectedTab == 1)
            IconButton(
              icon: const Icon(Icons.add_link),
              tooltip: 'Add extension repo',
              onPressed: () async {
                final controller = TextEditingController();
                final result = await showDialog<String>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Add extension repository'),
                    content: TextField(
                      controller: controller,
                      autofocus: true,
                      decoration: const InputDecoration(
                        hintText:
                            'Paste index URL or tachiyomi://add-repo?url=...',
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(context, controller.text.trim()),
                        child: const Text('Add'),
                      ),
                    ],
                  ),
                );

                if (result == null || result.isEmpty) return;

                final uri = Uri.tryParse(result);
                String? indexUrl;
                if (uri != null &&
                    uri.scheme == 'tachiyomi' &&
                    uri.host == 'add-repo') {
                  // Extract the encoded index URL from the query
                  final encoded = uri.queryParameters['url'];
                  if (encoded != null && encoded.isNotEmpty) {
                    indexUrl = Uri.decodeComponent(encoded);
                  }
                } else {
                  indexUrl = result;
                }

                if (indexUrl == null || indexUrl.isEmpty) return;

                final prefs = ref.read(appPreferencesProvider);
                await prefs.addExtensionRepo(indexUrl);
                // Trigger refetch of available extensions
                ref.invalidate(availableExtensionsProvider);
              },
            ),
        ],
        bottom: TabBar(
          onTap: (index) {
            ref.read(browseTabProvider.notifier).state = index;
          },
          tabs: const [
            Tab(text: 'Sources'),
            Tab(text: 'Extensions'),
            Tab(text: 'Global Search'),
          ],
        ),
      ),
      body: IndexedStack(
        index: selectedTab,
        children: const [
          SourcesTab(),
          ExtensionsTab(),
          GlobalSearchTab(),
        ],
      ),
    );
  }
}
