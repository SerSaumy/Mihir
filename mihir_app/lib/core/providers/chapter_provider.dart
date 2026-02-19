import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/chapter.dart';
import '../database/app_database.dart';
import '../providers/database_provider.dart';

// Provider for chapters by manga
final chaptersByMangaProvider = FutureProvider.family<List<Chapter>, int>((ref, mangaId) async {
  final db = ref.watch(databaseProvider);
  return await db.chapterDao.getChaptersByMangaId(mangaId);
});

// Provider for single chapter
final chapterProvider = FutureProvider.family<Chapter?, int>((ref, chapterId) async {
  final db = ref.watch(databaseProvider);
  return await db.chapterDao.getChapterById(chapterId);
});

// Provider for next unread chapter
final nextUnreadChapterProvider = FutureProvider.family<Chapter?, int>((ref, mangaId) async {
  final db = ref.watch(databaseProvider);
  return await db.chapterDao.getNextUnreadChapter(mangaId);
});
