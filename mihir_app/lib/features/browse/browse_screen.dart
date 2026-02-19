import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'sources_tab.dart';
import 'extensions_tab.dart';
import 'global_search_tab.dart';

final browseTabProvider = StateProvider<int>((ref) => 0);

class BrowseScreen extends ConsumerWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTab = ref.watch(browseTabProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse'),
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
