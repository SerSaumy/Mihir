import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/extensions/models/source.dart';
import 'source_browse_screen.dart';

// TODO: Replace with actual provider
final sourcesProvider = FutureProvider<List<MihirSource>>((ref) async {
  return [];
});

class SourcesTab extends ConsumerWidget {
  const SourcesTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sourcesAsync = ref.watch(sourcesProvider);

    return sourcesAsync.when(
      data: (sources) {
        if (sources.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.extension, size: 64, color: Colors.grey),
                const SizedBox(height: 16),
                const Text(
                  'No sources available',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Install extensions to add sources',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () {
                    // Switch to extensions tab
                  },
                  icon: const Icon(Icons.extension),
                  label: const Text('Browse Extensions'),
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: sources.length,
          itemBuilder: (context, index) {
            final source = sources[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                leading: source.iconUrl != null
                    ? Image.network(source.iconUrl!)
                    : const Icon(Icons.extension),
                title: Text(source.name),
                subtitle: Text('Language: ${source.lang}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SourceBrowseScreen(sourceId: source.id),
                          ),
                        );
                      },
                      child: const Text('Browse'),
                    ),
                    TextButton(
                      onPressed: () {
                        // TODO: Show latest
                      },
                      child: const Text('Latest'),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
