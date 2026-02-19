import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/manga.dart';
import '../providers/database_provider.dart';

// Provider for all library manga
final libraryMangaProvider = FutureProvider<List<Manga>>((ref) async {
  final db = ref.watch(databaseProvider);
  return await db.mangaDao.getAllManga();
});

// Provider for manga by category
final mangaByCategoryProvider = FutureProvider.family<List<Manga>, int?>((ref, categoryId) async {
  final db = ref.watch(databaseProvider);
  return await db.mangaDao.getAllManga(categoryId: categoryId);
});

// Provider for single manga
final mangaProvider = FutureProvider.family<Manga?, int>((ref, mangaId) async {
  final db = ref.watch(databaseProvider);
  return await db.mangaDao.getMangaById(mangaId);
});

// Provider for search results
final mangaSearchProvider = FutureProvider.family<List<Manga>, String>((ref, query) async {
  if (query.isEmpty) return [];
  final db = ref.watch(databaseProvider);
  return await db.mangaDao.searchManga(query);
});
