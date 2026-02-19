import 'package:drift/drift.dart';
import '../app_database.dart';
import '../database_tables.dart';
import '../../models/manga.dart';

part 'manga_dao.g.dart';

@DriftAccessor(tables: [Mangas, Chapters, MangaCategories, Categories])
class MangaDao extends DatabaseAccessor<AppDatabase> with _$MangaDaoMixin {
  MangaDao(AppDatabase db) : super(db);

  // Get all manga in library
  Future<List<Manga>> getAllManga({int? categoryId}) async {
    if (categoryId != null) {
      final query = select(mangas).join([
        innerJoin(mangaCategories, mangaCategories.mangaId.equalsExp(mangas.id)),
      ])
        ..where(mangas.favorite.equals(true) & mangaCategories.categoryId.equals(categoryId));
      final results = await query.get();
      return results.map((row) => _mangaFromRow(row.readTable(mangas))).toList();
    }
    final results = await (select(mangas)..where((m) => m.favorite.equals(true))).get();
    return results.map((row) => _mangaFromRow(row)).toList();
  }

  // Get manga by ID
  Future<Manga?> getMangaById(int id) async {
    final row = await (select(mangas)..where((m) => m.id.equals(id))).getSingleOrNull();
    return row != null ? _mangaFromRow(row) : null;
  }

  // Get manga by URL and source
  Future<Manga?> getMangaByUrl(String url, String source) async {
    final row = await (select(mangas)
          ..where((m) => m.url.equals(url) & m.source.equals(source)))
        .getSingleOrNull();
    return row != null ? _mangaFromRow(row) : null;
  }

  // Insert or update manga
  Future<int> insertManga(Manga manga) async {
    return await into(mangas).insertOnConflictUpdate(_mangaToRow(manga));
  }

  // Update manga
  Future<bool> updateManga(Manga manga) async {
    return await update(mangas).replace(_mangaToRow(manga));
  }

  // Delete manga
  Future<bool> deleteManga(int id) async {
    return await (delete(mangas)..where((m) => m.id.equals(id))).go() > 0;
  }

  // Add manga to library
  Future<void> addToLibrary(int mangaId) async {
    await (update(mangas)..where((m) => m.id.equals(mangaId)))
        .write(MangasCompanion(favorite: const Value(true), dateAdded: Value(DateTime.now().millisecondsSinceEpoch)));
  }

  // Remove manga from library
  Future<void> removeFromLibrary(int mangaId) async {
    await (update(mangas)..where((m) => m.id.equals(mangaId)))
        .write(const MangasCompanion(favorite: Value(false)));
  }

  // Search manga
  Future<List<Manga>> searchManga(String query) async {
    if (query.isEmpty) return getAllManga();
    final searchPattern = '%$query%';
    final results = await (select(mangas)
          ..where((m) =>
              m.title.like(searchPattern) & m.favorite.equals(true)))
        .get();
    return results.map((row) => _mangaFromRow(row)).toList();
  }

  // Get unread count for manga
  Future<int> getUnreadCount(int mangaId) async {
    final chapters = await db.chapterDao.getChaptersByMangaId(mangaId);
    return chapters.where((c) => !c.read).length;
  }

  // Helper: Convert table row to Manga model
  Manga _mangaFromRow(DbManga row) {
    return Manga(
      id: row.id,
      url: row.url,
      title: row.title,
      artist: row.artist,
      author: row.author,
      description: row.description,
      genre: _parseGenreList(row.genre),
      thumbnailUrl: row.thumbnailUrl,
      status: MangaStatus.values[row.status],
      favorite: row.favorite,
      source: row.source,
      lastUpdate: row.lastUpdate,
      dateAdded: row.dateAdded,
      viewerFlags: row.viewerFlags,
      chapterFlags: row.chapterFlags,
      coverLastModified: row.coverLastModified,
      customTitle: row.customTitle,
      customArtist: row.customArtist,
      customAuthor: row.customAuthor,
      customDescription: row.customDescription,
      customGenre: row.customGenre != null ? _parseGenreList(row.customGenre!) : null,
      customStatus: row.customStatus,
      localCoverPath: row.localCoverPath,
      windowReadingMode: row.windowReadingMode != null
          ? WindowReadingMode.values[row.windowReadingMode!]
          : null,
    );
  }

  // Helper: Convert Manga model to table row
  MangasCompanion _mangaToRow(Manga manga) {
    return MangasCompanion(
      id: Value(manga.id),
      url: Value(manga.url),
      title: Value(manga.title),
      artist: Value(manga.artist),
      author: Value(manga.author),
      description: Value(manga.description),
      genre: Value(_encodeGenreList(manga.genre)),
      thumbnailUrl: Value(manga.thumbnailUrl),
      status: Value(manga.status.index),
      favorite: Value(manga.favorite),
      source: Value(manga.source),
      lastUpdate: Value(manga.lastUpdate),
      dateAdded: Value(manga.dateAdded),
      viewerFlags: Value(manga.viewerFlags),
      chapterFlags: Value(manga.chapterFlags),
      coverLastModified: Value(manga.coverLastModified),
      customTitle: Value(manga.customTitle),
      customArtist: Value(manga.customArtist),
      customAuthor: Value(manga.customAuthor),
      customDescription: Value(manga.customDescription),
      customGenre: Value(manga.customGenre != null ? _encodeGenreList(manga.customGenre!) : null),
      customStatus: Value(manga.customStatus),
      localCoverPath: Value(manga.localCoverPath),
      windowReadingMode: Value(manga.windowReadingMode?.index),
    );
  }

  List<String> _parseGenreList(String json) {
    // Simple JSON array parsing - in production use jsonDecode
    if (json == '[]' || json.isEmpty) return [];
    try {
      return json
          .replaceAll('[', '')
          .replaceAll(']', '')
          .replaceAll('"', '')
          .split(',')
          .map((e) => e.trim())
          .where((e) => e.isNotEmpty)
          .toList();
    } catch (e) {
      return [];
    }
  }

  String _encodeGenreList(List<String> genres) {
    return '["${genres.join('","')}"]';
  }
}
