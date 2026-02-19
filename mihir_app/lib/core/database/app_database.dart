import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'database_tables.dart';
import 'daos/manga_dao.dart';
import 'daos/chapter_dao.dart';
import 'daos/category_dao.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    Mangas,
    Chapters,
    Pages,
    Extensions,
    Sources,
    Categories,
    MangaCategories,
    Tracks,
    History,
    Downloads,
  ],
  daos: [
    MangaDao,
    ChapterDao,
    CategoryDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // Handle migrations here
      },
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'mihir', 'database.db'));
    return NativeDatabase(file);
  });
}
