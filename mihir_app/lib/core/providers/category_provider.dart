import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../database/app_database.dart';
import '../providers/database_provider.dart';

// Provider for all categories
final categoriesProvider = FutureProvider<List<DbCategory>>((ref) async {
  final db = ref.watch(databaseProvider);
  return await db.categoryDao.getAllCategories();
});
