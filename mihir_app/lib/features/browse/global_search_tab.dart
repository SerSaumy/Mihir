import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final globalSearchQueryProvider = StateProvider<String>((ref) => '');
final globalSearchResultsProvider = FutureProvider.family<Map<String, List<dynamic>>, String>(
  (ref, query) async {
    if (query.isEmpty) return {};
    // TODO: Search across all sources
    return {};
  },
);

class GlobalSearchTab extends ConsumerWidget {
  const GlobalSearchTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(globalSearchQueryProvider);
    final resultsAsync = ref.watch(globalSearchResultsProvider(query));

    return Column(
      children: [
        // Search bar
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Search across all sources...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              ref.read(globalSearchQueryProvider.notifier).state = value;
            },
          ),
        ),
        // Results
        Expanded(
          child: resultsAsync.when(
            data: (results) {
              if (results.isEmpty && query.isNotEmpty) {
                return const Center(child: Text('No results found'));
              }

              return ListView.builder(
                itemCount: results.length,
                itemBuilder: (context, index) {
                  final sourceId = results.keys.elementAt(index);
                  final sourceResults = results[sourceId]!;
                  return ExpansionTile(
                    title: Text('Source: $sourceId'),
                    subtitle: Text('${sourceResults.length} results'),
                    children: sourceResults.map((result) {
                      return ListTile(
                        title: Text(result.toString()),
                        onTap: () {
                          // TODO: Navigate to manga detail
                        },
                      );
                    }).toList(),
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
        ),
      ],
    );
  }
}
