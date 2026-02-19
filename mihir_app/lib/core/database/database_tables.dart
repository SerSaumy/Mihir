import 'package:drift/drift.dart';

// Manga table
class Mangas extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get url => text()();
  TextColumn get title => text()();
  TextColumn get artist => text().nullable()();
  TextColumn get author => text().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get genre => text().withDefault(const Constant('[]'))();
  TextColumn get thumbnailUrl => text().nullable()();
  IntColumn get status => integer().withDefault(const Constant(0))();
  BoolColumn get favorite => boolean().withDefault(const Constant(false))();
  TextColumn get source => text()();
  IntColumn get lastUpdate => integer().nullable()();
  IntColumn get dateAdded => integer().nullable()();
  IntColumn get viewerFlags => integer().withDefault(const Constant(0))();
  IntColumn get chapterFlags => integer().withDefault(const Constant(0))();
  IntColumn get coverLastModified => integer().withDefault(const Constant(0))();
  TextColumn get customTitle => text().nullable()();
  TextColumn get customArtist => text().nullable()();
  TextColumn get customAuthor => text().nullable()();
  TextColumn get customDescription => text().nullable()();
  TextColumn get customGenre => text().nullable()();
  IntColumn get customStatus => integer().nullable()();
  TextColumn get localCoverPath => text().nullable()();
  IntColumn get windowReadingMode => integer().nullable()();
}

// Chapter table
class Chapters extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get mangaId => integer()();
  TextColumn get url => text()();
  TextColumn get name => text()();
  TextColumn get scanlator => text().nullable()();
  BoolColumn get read => boolean().withDefault(const Constant(false))();
  BoolColumn get bookmark => boolean().withDefault(const Constant(false))();
  IntColumn get lastPageRead => integer().nullable()();
  IntColumn get dateFetch => integer().nullable()();
  IntColumn get dateUpload => integer().nullable()();
  RealColumn get chapterNumber => real().withDefault(const Constant(0.0))();
  IntColumn get sourceOrder => integer().withDefault(const Constant(0))();
  IntColumn get totalPageCount => integer().nullable()();
  TextColumn get downloadPath => text().nullable()();
}

// Page table
class Pages extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get chapterId => integer()();
  IntColumn get index => integer()();
  TextColumn get url => text().nullable()();
  TextColumn get imageUrl => text().nullable()();
  TextColumn get localPath => text().nullable()();
  IntColumn get status => integer().withDefault(const Constant(0))();
  IntColumn get width => integer().nullable()();
  IntColumn get height => integer().nullable()();
}

// Extension table
class Extensions extends Table {
  TextColumn get pkgName => text()();
  TextColumn get name => text()();
  TextColumn get versionName => text()();
  IntColumn get versionCode => integer()();
  TextColumn get lang => text()();
  TextColumn get description => text().nullable()();
  BoolColumn get isNsfw => boolean().withDefault(const Constant(false))();
  TextColumn get apkPath => text()();
  IntColumn get status => integer().withDefault(const Constant(0))();
  TextColumn get iconPath => text().nullable()();
}

// Source table
class Sources extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get lang => text()();
  TextColumn get baseUrl => text().nullable()();
  TextColumn get iconUrl => text().nullable()();
  TextColumn get extensionPkgName => text()();
}

// Category table
class Categories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get order => integer().withDefault(const Constant(0))();
  BoolColumn get isDefault => boolean().withDefault(const Constant(false))();
}

// Manga-Category junction table
class MangaCategories extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get mangaId => integer()();
  IntColumn get categoryId => integer()();
}

// Track table (for tracker integrations)
class Tracks extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get mangaId => integer()();
  IntColumn get trackerId => integer()();
  TextColumn get trackerUrl => text().nullable()();
  IntColumn get status => integer().nullable()();
  IntColumn get score => integer().nullable()();
  IntColumn get lastChapterRead => integer().nullable()();
  IntColumn get totalChapters => integer().nullable()();
  IntColumn get startedReadingDate => integer().nullable()();
  IntColumn get finishedReadingDate => integer().nullable()();
}

// History table
class History extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get mangaId => integer()();
  IntColumn get chapterId => integer()();
  IntColumn get lastPageRead => integer().nullable()();
  IntColumn get lastRead => integer()();
}

// Downloads table
class Downloads extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get chapterId => integer()();
  IntColumn get mangaId => integer()();
  IntColumn get status => integer().withDefault(const Constant(0))();
  IntColumn get progress => integer().withDefault(const Constant(0))();
  IntColumn get totalPages => integer().nullable()();
  IntColumn get downloadedPages => integer().withDefault(const Constant(0))();
  TextColumn get downloadPath => text().nullable()();
  IntColumn get queuedAt => integer()();
}
