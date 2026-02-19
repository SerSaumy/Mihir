import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum DownloadStatus {
  queued,
  downloading,
  paused,
  completed,
  error,
}

class DownloadItem {
  final int id;
  final String mangaTitle;
  final String chapterName;
  final DownloadStatus status;
  final int progress; // 0-100
  final double speed; // KB/s
  final int downloadedPages;
  final int totalPages;

  DownloadItem({
    required this.id,
    required this.mangaTitle,
    required this.chapterName,
    required this.status,
    this.progress = 0,
    this.speed = 0,
    this.downloadedPages = 0,
    this.totalPages = 0,
  });
}

// TODO: Replace with actual provider
final downloadsProvider = StateProvider<List<DownloadItem>>((ref) => [
  DownloadItem(
    id: 1,
    mangaTitle: 'Example Manga',
    chapterName: 'Chapter 1',
    status: DownloadStatus.downloading,
    progress: 45,
    speed: 125.5,
    downloadedPages: 9,
    totalPages: 20,
  ),
]);

class DownloadsScreen extends ConsumerWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloads = ref.watch(downloadsProvider);

    final activeDownloads = downloads.where((d) =>
        d.status == DownloadStatus.downloading || d.status == DownloadStatus.queued).toList();
    final completedDownloads = downloads.where((d) => d.status == DownloadStatus.completed).toList();
    final pausedDownloads = downloads.where((d) => d.status == DownloadStatus.paused).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Downloads'),
        actions: [
          if (activeDownloads.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.pause),
              tooltip: 'Pause All',
              onPressed: () {
                // TODO: Pause all downloads
              },
            ),
          if (pausedDownloads.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.play_arrow),
              tooltip: 'Resume All',
              onPressed: () {
                // TODO: Resume all downloads
              },
            ),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'clear_completed',
                child: Text('Clear Completed'),
              ),
              const PopupMenuItem(
                value: 'settings',
                child: Text('Download Settings'),
              ),
            ],
          ),
        ],
      ),
      body: downloads.isEmpty
          ? _buildEmptyState(context)
          : ListView(
              children: [
                if (activeDownloads.isNotEmpty) ...[
                  _buildSectionHeader('Active Downloads'),
                  ...activeDownloads.map((d) => _buildDownloadItem(context, ref, d)),
                ],
                if (pausedDownloads.isNotEmpty) ...[
                  _buildSectionHeader('Paused'),
                  ...pausedDownloads.map((d) => _buildDownloadItem(context, ref, d)),
                ],
                if (completedDownloads.isNotEmpty) ...[
                  _buildSectionHeader('Completed'),
                  ...completedDownloads.map((d) => _buildDownloadItem(context, ref, d)),
                ],
              ],
            ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.download, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          const Text(
            'No downloads',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 8),
          const Text(
            'Download chapters to read offline',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDownloadItem(BuildContext context, WidgetRef ref, DownloadItem download) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListTile(
        leading: const Icon(Icons.menu_book),
        title: Text(download.chapterName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(download.mangaTitle),
            const SizedBox(height: 8),
            if (download.status == DownloadStatus.downloading) ...[
              LinearProgressIndicator(
                value: download.progress / 100,
              ),
              const SizedBox(height: 4),
              Text(
                '${download.downloadedPages}/${download.totalPages} pages • ${download.speed.toStringAsFixed(1)} KB/s',
                style: const TextStyle(fontSize: 12),
              ),
            ] else if (download.status == DownloadStatus.completed) ...[
              const Text('Completed', style: TextStyle(color: Colors.green)),
            ] else if (download.status == DownloadStatus.paused) ...[
              const Text('Paused', style: TextStyle(color: Colors.orange)),
            ],
          ],
        ),
        trailing: PopupMenuButton(
          itemBuilder: (context) {
            if (download.status == DownloadStatus.downloading) {
              return [
                const PopupMenuItem(
                  value: 'pause',
                  child: Text('Pause'),
                ),
                const PopupMenuItem(
                  value: 'cancel',
                  child: Text('Cancel'),
                ),
              ];
            } else if (download.status == DownloadStatus.paused) {
              return [
                const PopupMenuItem(
                  value: 'resume',
                  child: Text('Resume'),
                ),
                const PopupMenuItem(
                  value: 'cancel',
                  child: Text('Cancel'),
                ),
              ];
            } else {
              return [
                const PopupMenuItem(
                  value: 'open',
                  child: Text('Open'),
                ),
                const PopupMenuItem(
                  value: 'delete',
                  child: Text('Delete'),
                ),
              ];
            }
          },
          onSelected: (value) {
            // TODO: Handle action
          },
        ),
      ),
    );
  }
}
