import 'package:flutter/material.dart';
import '../../core/models/manga.dart';
import '../../widgets/manga_cover.dart';
import 'manga_detail_screen.dart';

class LibraryListView extends StatelessWidget {
  final List<Manga> manga;

  const LibraryListView({super.key, required this.manga});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: manga.length,
      itemBuilder: (context, index) {
        final item = manga[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: ListTile(
            leading: MangaCover(
              manga: item,
              width: 60,
              height: 80,
              showTitle: false,
            ),
            title: Text(item.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (item.author != null) Text('Author: ${item.author}'),
                if (item.artist != null) Text('Artist: ${item.artist}'),
                Text('Source: ${item.source}'),
              ],
            ),
            trailing: const Icon(Icons.chevron_right),
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
          ),
        );
      },
    );
  }

  void _showContextMenu(BuildContext context, Manga manga) {
    // Same as grid view
  }
}
