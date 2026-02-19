import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/models/manga.dart';
import '../../core/models/chapter.dart';
import '../../core/providers/manga_provider.dart';
import '../../core/providers/chapter_provider.dart';
import '../../widgets/manga_cover.dart';

class MangaDetailScreen extends ConsumerWidget {
  final int mangaId;

  const MangaDetailScreen({super.key, required this.mangaId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mangaAsync = ref.watch(mangaProvider(mangaId));
    final chaptersAsync = ref.watch(chaptersByMangaProvider(mangaId));

    return Scaffold(
      appBar: AppBar(
        title: mangaAsync.when(
          data: (manga) => Text(manga?.title ?? 'Loading...'),
          loading: () => const Text('Loading...'),
          error: (_, __) => const Text('Error'),
        ),
      ),
      body: mangaAsync.when(
        data: (manga) {
          if (manga == null) {
            return const Center(child: Text('Manga not found'));
          }
          return _buildContent(context, ref, manga, chaptersAsync);
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    Manga manga,
    AsyncValue<List<Chapter>> chaptersAsync,
  ) {
    return Row(
      children: [
        // Left panel - Manga info
        Container(
          width: 400,
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Cover
                Center(
                  child: MangaCover(
                    manga: manga,
                    width: 200,
                    height: 300,
                    showTitle: false,
                  ),
                ),
                const SizedBox(height: 16),
                // Title
                Text(
                  manga.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                // Author/Artist
                if (manga.author != null)
                  Text('Author: ${manga.author}'),
                if (manga.artist != null)
                  Text('Artist: ${manga.artist}'),
                const SizedBox(height: 16),
                // Description
                if (manga.description != null) ...[
                  Text(
                    'Description',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(manga.description!),
                  const SizedBox(height: 16),
                ],
                // Genres
                if (manga.genre.isNotEmpty) ...[
                  Wrap(
                    spacing: 8,
                    children: manga.genre
                        .map((g) => Chip(label: Text(g)))
                        .toList(),
                  ),
                  const SizedBox(height: 16),
                ],
                // Actions
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // TODO: Continue reading
                        },
                        icon: const Icon(Icons.play_arrow),
                        label: const Text('Continue Reading'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // TODO: Add to library / Remove from library
                        },
                        icon: Icon(manga.favorite ? Icons.favorite : Icons.favorite_border),
                        label: Text(manga.favorite ? 'In Library' : 'Add to Library'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Right panel - Chapters
        Expanded(
          child: chaptersAsync.when(
            data: (chapters) => _buildChapterList(context, ref, chapters),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
        ),
      ],
    );
  }

  Widget _buildChapterList(
    BuildContext context,
    WidgetRef ref,
    List<Chapter> chapters,
  ) {
    if (chapters.isEmpty) {
      return const Center(child: Text('No chapters available'));
    }

    return Column(
      children: [
        // Chapter list header
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1,
              ),
            ),
          ),
          child: Row(
            children: [
              const Text(
                'Chapters',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: () {
                  // TODO: Download all
                },
                icon: const Icon(Icons.download),
                label: const Text('Download All'),
              ),
            ],
          ),
        ),
        // Chapter list
        Expanded(
          child: ListView.builder(
            itemCount: chapters.length,
            itemBuilder: (context, index) {
              final chapter = chapters[index];
              return ListTile(
                leading: chapter.read
                    ? const Icon(Icons.check_circle, color: Colors.green)
                    : const Icon(Icons.circle_outlined),
                title: Text(chapter.name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (chapter.scanlator != null)
                      Text('Scanlator: ${chapter.scanlator}'),
                    if (chapter.dateUpload != null)
                      Text('Uploaded: ${_formatDate(chapter.dateUpload!)}'),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (chapter.downloadPath != null)
                      const Icon(Icons.download, color: Colors.green),
                    IconButton(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {
                        _showChapterMenu(context, chapter);
                      },
                    ),
                  ],
                ),
                onTap: () {
                  // TODO: Navigate to reader
                  context.push('/reader/$mangaId/${chapter.id}');
                },
              );
            },
          ),
        ),
      ],
    );
  }

  void _showChapterMenu(BuildContext context, Chapter chapter) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text('Read'),
              onTap: () {
                Navigator.pop(context);
                context.push('/reader/$mangaId/${chapter.id}');
              },
            ),
            ListTile(
              leading: Icon(chapter.read ? Icons.visibility_off : Icons.visibility),
              title: Text(chapter.read ? 'Mark as Unread' : 'Mark as Read'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Toggle read status
              },
            ),
            ListTile(
              leading: const Icon(Icons.download),
              title: const Text('Download'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Download chapter
              },
            ),
            if (chapter.downloadPath != null)
              ListTile(
                leading: const Icon(Icons.delete),
                title: const Text('Delete Download'),
                onTap: () {
                  Navigator.pop(context);
                  // TODO: Delete download
                },
              ),
          ],
        ),
      ),
    );
  }

  String _formatDate(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }
}
