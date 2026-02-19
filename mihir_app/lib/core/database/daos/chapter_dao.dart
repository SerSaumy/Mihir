import 'package:drift/drift.dart';
import '../app_database.dart';
import '../database_tables.dart';
import '../../models/chapter.dart';

part 'chapter_dao.g.dart';

@DriftAccessor(tables: [Chapters])
class ChapterDao extends DatabaseAccessor<AppDatabase> with _$ChapterDaoMixin {
  ChapterDao(AppDatabase db) : super(db);

  // Get chapters for a manga
  Future<List<Chapter>> getChaptersByMangaId(int mangaId) async {
    final results = await (select(chapters)
          ..where((c) => c.mangaId.equals(mangaId))
          ..orderBy([(c) => OrderingTerm.desc(c.chapterNumber)]))
        .get();
    return results.map((row) => _chapterFromRow(row)).toList();
  }

  // Get chapter by ID
  Future<Chapter?> getChapterById(int id) async {
    final row = await (select(chapters)..where((c) => c.id.equals(id))).getSingleOrNull();
    return row != null ? _chapterFromRow(row) : null;
  }

  // Get chapter by URL
  Future<Chapter?> getChapterByUrl(String url) async {
    final row = await (select(chapters)..where((c) => c.url.equals(url))).getSingleOrNull();
    return row != null ? _chapterFromRow(row) : null;
  }

  // Insert or update chapter
  Future<int> insertChapter(Chapter chapter) async {
    return await into(chapters).insertOnConflictUpdate(_chapterToRow(chapter));
  }

  // Insert multiple chapters
  Future<void> insertChapters(List<Chapter> chapters) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(
        this.chapters,
        chapters.map(_chapterToRow).toList(),
      );
    });
  }

  // Update chapter
  Future<bool> updateChapter(Chapter chapter) async {
    return await update(chapters).replace(_chapterToRow(chapter));
  }

  // Mark chapter as read
  Future<void> markAsRead(int chapterId, {int? lastPageRead}) async {
    await (update(chapters)..where((c) => c.id.equals(chapterId))).write(
      ChaptersCompanion(
        read: const Value(true),
        lastPageRead: Value(lastPageRead),
      ),
    );
  }

  // Mark chapter as unread
  Future<void> markAsUnread(int chapterId) async {
    await (update(chapters)..where((c) => c.id.equals(chapterId)))
        .write(const ChaptersCompanion(read: Value(false), lastPageRead: Value.absent()));
  }

  // Mark multiple chapters as read
  Future<void> markMultipleAsRead(List<int> chapterIds) async {
    await (update(chapters)..where((c) => c.id.isIn(chapterIds)))
        .write(const ChaptersCompanion(read: Value(true)));
  }

  // Mark multiple chapters as unread
  Future<void> markMultipleAsUnread(List<int> chapterIds) async {
    await (update(chapters)..where((c) => c.id.isIn(chapterIds)))
        .write(const ChaptersCompanion(read: Value(false)));
  }

  // Delete chapter
  Future<bool> deleteChapter(int id) async {
    return await (delete(chapters)..where((c) => c.id.equals(id))).go() > 0;
  }

  // Get next unread chapter
  Future<Chapter?> getNextUnreadChapter(int mangaId) async {
    final row = await (select(chapters)
          ..where((c) => c.mangaId.equals(mangaId) & c.read.equals(false))
          ..orderBy([(c) => OrderingTerm.asc(c.chapterNumber)])
          ..limit(1))
        .getSingleOrNull();
    return row != null ? _chapterFromRow(row) : null;
  }

  // Get last read chapter
  Future<Chapter?> getLastReadChapter(int mangaId) async {
    final row = await (select(chapters)
          ..where((c) => c.mangaId.equals(mangaId) & c.read.equals(true))
          ..orderBy([(c) => OrderingTerm.desc(c.lastPageRead)])
          ..limit(1))
        .getSingleOrNull();
    return row != null ? _chapterFromRow(row) : null;
  }

  Chapter _chapterFromRow(DbChapter row) {
    return Chapter(
      id: row.id,
      mangaId: row.mangaId,
      url: row.url,
      name: row.name,
      scanlator: row.scanlator,
      read: row.read,
      bookmark: row.bookmark,
      lastPageRead: row.lastPageRead,
      dateFetch: row.dateFetch,
      dateUpload: row.dateUpload,
      chapterNumber: row.chapterNumber,
      sourceOrder: row.sourceOrder,
      totalPageCount: row.totalPageCount,
      downloadPath: row.downloadPath,
    );
  }

  ChaptersCompanion _chapterToRow(Chapter chapter) {
    return ChaptersCompanion(
      id: Value(chapter.id),
      mangaId: Value(chapter.mangaId),
      url: Value(chapter.url),
      name: Value(chapter.name),
      scanlator: Value(chapter.scanlator),
      read: Value(chapter.read),
      bookmark: Value(chapter.bookmark),
      lastPageRead: Value(chapter.lastPageRead),
      dateFetch: Value(chapter.dateFetch),
      dateUpload: Value(chapter.dateUpload),
      chapterNumber: Value(chapter.chapterNumber),
      sourceOrder: Value(chapter.sourceOrder),
      totalPageCount: Value(chapter.totalPageCount),
      downloadPath: Value(chapter.downloadPath),
    );
  }
}
