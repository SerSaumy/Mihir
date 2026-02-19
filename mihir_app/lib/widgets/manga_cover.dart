import 'package:flutter/material.dart';
import '../core/models/manga.dart';

class MangaCover extends StatelessWidget {
  final Manga manga;
  final double? width;
  final double? height;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool showTitle;
  final bool showUnreadBadge;
  final bool showDownloadBadge;

  const MangaCover({
    super.key,
    required this.manga,
    this.width,
    this.height,
    this.onTap,
    this.onLongPress,
    this.showTitle = false,
    this.showUnreadBadge = true,
    this.showDownloadBadge = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        width: width,
        height: height != null ? (showTitle ? height! + 40 : height!) : null,
        margin: const EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                children: [
                  // Cover image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: manga.thumbnailUrl != null
                        ? Image.network(
                            manga.thumbnailUrl!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                _buildPlaceholder(),
                          )
                        : _buildPlaceholder(),
                  ),
                  // Unread badge
                  if (showUnreadBadge)
                    Positioned(
                      top: 4,
                      right: 4,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          '0', // TODO: Get actual unread count
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  // Download badge
                  if (showDownloadBadge)
                    const Positioned(
                      bottom: 4,
                      right: 4,
                      child: Icon(
                        Icons.download,
                        color: Colors.green,
                        size: 16,
                      ),
                    ),
                ],
              ),
            ),
            // Title
            if (showTitle && manga.title.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  manga.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      color: Colors.grey[300],
      child: const Center(
        child: Icon(Icons.image, size: 48, color: Colors.grey),
      ),
    );
  }
}
