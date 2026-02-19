import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/models/manga.dart';
import '../../widgets/manga_cover.dart';
import '../../core/providers/library_providers.dart';
import 'manga_detail_screen.dart';

class LibraryGridView extends ConsumerWidget {
  final List<Manga> manga;

  const LibraryGridView({super.key, required this.manga});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coverSize = ref.watch(libraryCoverSizeProvider);
    final showTitle = ref.watch(libraryShowTitleProvider);

    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: coverSize + 20,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 0.7,
      ),
      itemCount: manga.length,
      itemBuilder: (context, index) {
        final item = manga[index];
        return MangaCover(
          manga: item,
          width: coverSize,
          height: coverSize,
          showTitle: showTitle,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MangaDetailScreen(mangaId: item.id),
              ),
            );
          },
          onLongPress: () {
            _showContextMenu(context, item);
          },
        );
      },
    );
  }

  void _showContextMenu(BuildContext context, Manga manga) {
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
                // TODO: Navigate to reader
              },
            ),
            ListTile(
              leading: const Icon(Icons.check_circle_outline),
              title: const Text('Mark as Read'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Mark as read
              },
            ),
            ListTile(
              leading: const Icon(Icons.download),
              title: const Text('Download'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Download
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete_outline),
              title: const Text('Remove from Library'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Remove from library
              },
            ),
          ],
        ),
      ),
    );
  }
}
