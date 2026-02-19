import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/models/manga.dart';
import '../../core/models/chapter.dart';
import '../../widgets/manga_cover.dart';
import '../library/manga_detail_screen.dart';
import '../reader/reader_screen.dart';

class HistoryItem {
  final Manga manga;
  final Chapter chapter;
  final int lastPageRead;
  final int totalPages;
  final DateTime lastRead;

  HistoryItem({
    required this.manga,
    required this.chapter,
    required this.lastPageRead,
    required this.totalPages,
    required this.lastRead,
  });
}

// TODO: Replace with actual provider
final historyProvider = FutureProvider<List<HistoryItem>>((ref) async {
  return [];
});

class HistoryScreen extends ConsumerWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historyAsync = ref.watch(historyProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'clear',
                child: Text('Clear History'),
              ),
            ],
            onSelected: (value) {
              if (value == 'clear') {
                _showClearHistoryDialog(context);
              }
            },
          ),
        ],
      ),
      body: historyAsync.when(
        data: (history) {
          if (history.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.history, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  const Text(
                    'No reading history',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Start reading to see your history here',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          // Group by date
          final grouped = _groupByDate(history);

          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: grouped.length,
            itemBuilder: (context, index) {
              final entry = grouped[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      entry['date'] as String,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  ...(entry['items'] as List<HistoryItem>).map((item) => Card(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        child: ListTile(
                          leading: MangaCover(
                            manga: item.manga,
                            width: 60,
                            height: 80,
                            showTitle: false,
                          ),
                          title: Text(item.manga.title),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.chapter.name),
                              const SizedBox(height: 4),
                              Text(
                                'Page ${item.lastPageRead + 1} / ${item.totalPages}',
                                style: const TextStyle(fontSize: 12),
                              ),
                              Text(
                                _formatTime(item.lastRead),
                                style: const TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                          trailing: PopupMenuButton(
                            itemBuilder: (context) => [
                              const PopupMenuItem(
                                value: 'remove',
                                child: Text('Remove from History'),
                              ),
                              const PopupMenuItem(
                                value: 'remove_all',
                                child: Text('Remove All for This Manga'),
                              ),
                            ],
                            onSelected: (value) {
                              // TODO: Handle removal
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReaderScreen(
                                  mangaId: item.manga.id,
                                  chapterId: item.chapter.id,
                                ),
                              ),
                            );
                          },
                        ),
                      )),
                ],
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }

  List<Map<String, dynamic>> _groupByDate(List<HistoryItem> history) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final lastWeek = today.subtract(const Duration(days: 7));

    final grouped = <String, List<HistoryItem>>{};

    for (final item in history) {
      final itemDate = DateTime(
        item.lastRead.year,
        item.lastRead.month,
        item.lastRead.day,
      );

      String dateLabel;
      if (itemDate == today) {
        dateLabel = 'Today';
      } else if (itemDate == yesterday) {
        dateLabel = 'Yesterday';
      } else if (itemDate.isAfter(lastWeek)) {
        dateLabel = 'This Week';
      } else {
        dateLabel = '${item.lastRead.month}/${item.lastRead.day}/${item.lastRead.year}';
      }

      grouped.putIfAbsent(dateLabel, () => []).add(item);
    }

    return grouped.entries.map((e) => {
      'date': e.key,
      'items': e.value,
    }).toList();
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    final difference = now.difference(time);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inDays < 1) {
      return '${difference.inHours}h ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}d ago';
    } else {
      return '${time.month}/${time.day}/${time.year}';
    }
  }

  void _showClearHistoryDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear History'),
        content: const Text('Are you sure you want to clear all reading history?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              // TODO: Clear history
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('History cleared')),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Clear'),
          ),
        ],
      ),
    );
  }
}
