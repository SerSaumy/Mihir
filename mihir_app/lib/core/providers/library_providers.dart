import 'package:flutter_riverpod/flutter_riverpod.dart';

enum LibraryViewMode { grid, list }

final libraryViewModeProvider =
    StateProvider<LibraryViewMode>((ref) => LibraryViewMode.grid);
final librarySelectedCategoryProvider = StateProvider<int?>((ref) => null);
final librarySearchQueryProvider = StateProvider<String>((ref) => '');
final libraryShowFiltersProvider = StateProvider<bool>((ref) => false);
final libraryCoverSizeProvider = StateProvider<double>((ref) => 150.0);
final libraryShowTitleProvider = StateProvider<bool>((ref) => true);
