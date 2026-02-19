import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/models/manga.dart';
import '../../core/models/chapter.dart';
import '../../widgets/manga_cover.dart';
import '../library/manga_detail_screen.dart';

class UpdateItem {
  final Manga manga;
  final List<Chapter> newChapters;

  UpdateItem({required this.manga, required this.newChapters});
}

// TODO: Replace with actual provider
final updatesProvider = FutureProvider<List<UpdateItem>>((ref) async {
  return [];
});

class UpdatesScreen extends ConsumerWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updatesAsync = ref.watch(updatesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Updates'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Update Library',
            onPressed: () {
              ref.invalidate(updatesProvider);
              // TODO: Trigger library update
            },
          ),
        ],
      ),
      body: updatesAsync.when(
        data: (updates) {
          if (updates.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.update, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  const Text(
                    'No updates',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'All your manga are up to date',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      ref.invalidate(updatesProvider);
                      // TODO: Trigger update
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Check for Updates'),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: updates.length,
            itemBuilder: (context, index) {
              final update = updates[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: MangaCover(
                    manga: update.manga,
                    width: 60,
                    height: 80,
                    showTitle: false,
                  ),
                  title: Text(update.manga.title),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${update.newChapters.length} new chapter(s)'),
                      const SizedBox(height: 4),
                      ...update.newChapters.take(3).map((chapter) => Text(
                            '• ${chapter.name}',
                            style: const TextStyle(fontSize: 12),
                          )),
                      if (update.newChapters.length > 3)
                        Text(
                          '... and ${update.newChapters.length - 3} more',
                          style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                        ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.download),
                        tooltip: 'Download',
                        onPressed: () {
                          // TODO: Download new chapters
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.check),
                        tooltip: 'Mark as Read',
                        onPressed: () {
                          // TODO: Mark chapters as read
                        },
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MangaDetailScreen(mangaId: update.manga.id),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
