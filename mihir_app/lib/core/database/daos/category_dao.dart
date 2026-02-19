import 'package:drift/drift.dart';
import '../app_database.dart';
import '../database_tables.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [Categories, MangaCategories])
class CategoryDao extends DatabaseAccessor<AppDatabase> with _$CategoryDaoMixin {
  CategoryDao(AppDatabase db) : super(db);

  // Get all categories
  Future<List<CategoriesData>> getAllCategories() async {
    final results = await (select(categories)
          ..orderBy([(c) => OrderingTerm.asc(c.order)]))
        .get();
    return results;
  }

  // Get category by ID
  Future<CategoriesData?> getCategoryById(int id) async {
    return await (select(categories)..where((c) => c.id.equals(id))).getSingleOrNull();
  }

  // Create category
  Future<int> createCategory(String name) async {
    final maxOrder = await _getMaxOrder();
    return await into(categories).insert(
      CategoriesCompanion(
        name: Value(name),
        order: Value(maxOrder + 1),
        isDefault: const Value(false),
      ),
    );
  }

  // Delete category
  Future<bool> deleteCategory(int id) async {
    // Remove all manga from this category
    await (delete(mangaCategories)..where((mc) => mc.categoryId.equals(id))).go();
    // Delete category
    return await (delete(categories)..where((c) => c.id.equals(id))).go() > 0;
  }

  // Rename category
  Future<bool> renameCategory(int id, String newName) async {
    return await (update(categories)..where((c) => c.id.equals(id)))
        .write(CategoriesCompanion(name: Value(newName))) >
        0;
  }

  // Reorder categories
  Future<void> reorderCategories(List<int> categoryIds) async {
    await batch((batch) {
      for (int i = 0; i < categoryIds.length; i++) {
        batch.update(
          categories,
          CategoriesCompanion(id: Value(categoryIds[i]), order: Value(i)),
        );
      }
    });
  }

  // Add manga to category
  Future<void> addMangaToCategory(int mangaId, int categoryId) async {
    await into(mangaCategories).insert(
      MangaCategoriesCompanion(
        mangaId: Value(mangaId),
        categoryId: Value(categoryId),
      ),
    );
  }

  // Remove manga from category
  Future<void> removeMangaFromCategory(int mangaId, int categoryId) async {
    await (delete(mangaCategories)
          ..where((mc) =>
              mc.mangaId.equals(mangaId) & mc.categoryId.equals(categoryId)))
        .go();
  }

  // Get manga in category
  Future<List<int>> getMangaInCategory(int categoryId) async {
    final results = await (select(mangaCategories)
          ..where((mc) => mc.categoryId.equals(categoryId)))
        .get();
    return results.map((row) => row.mangaId).toList();
  }

  // Get categories for manga
  Future<List<CategoriesData>> getCategoriesForManga(int mangaId) async {
    final query = select(categories).join([
      innerJoin(
        mangaCategories,
        mangaCategories.categoryId.equalsExp(categories.id),
      ),
    ])
      ..where(mangaCategories.mangaId.equals(mangaId));

    final results = await query.get();
    return results.map((row) => row.readTable(categories)).toList();
  }

  Future<int> _getMaxOrder() async {
    final result = await (selectOnly(categories)
          ..addColumns([categories.order.max()]))
        .getSingle();
    return result.read(categories.order.max()) ?? 0;
  }
}
