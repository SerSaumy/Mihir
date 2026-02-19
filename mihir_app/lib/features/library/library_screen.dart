import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/models/manga.dart';
import '../../core/providers/library_providers.dart';
import '../../core/providers/manga_provider.dart';
import '../../core/providers/category_provider.dart';
import '../../widgets/library_sidebar.dart';
import 'library_grid_view.dart';
import 'library_list_view.dart';
import 'library_search_bar.dart';
import 'library_filter_panel.dart';

class LibraryScreen extends ConsumerStatefulWidget {
  const LibraryScreen({super.key});

  @override
  ConsumerState<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends ConsumerState<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    final viewMode = ref.watch(libraryViewModeProvider);
    final selectedCategory = ref.watch(librarySelectedCategoryProvider);
    final searchQuery = ref.watch(librarySearchQueryProvider);
    final showFilters = ref.watch(libraryShowFiltersProvider);

    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          const LibrarySidebar(selectedIndex: 0),
          // Main content
          Expanded(
            child: Column(
              children: [
                // Toolbar
                _buildToolbar(context),
                // Category tabs
                _buildCategoryTabs(),
                // Search bar
                LibrarySearchBar(
                  onSearchChanged: (query) {
                    ref.read(librarySearchQueryProvider.notifier).state = query;
                  },
                ),
                // Content area
                Expanded(
                  child: Row(
                    children: [
                      // Library content
                      Expanded(
                        child: _buildLibraryContent(
                          viewMode: viewMode,
                          categoryId: selectedCategory,
                          searchQuery: searchQuery,
                        ),
                      ),
                      // Filter panel (slide in from right)
                      if (showFilters)
                        LibraryFilterPanel(
                          onClose: () {
                            ref.read(libraryShowFiltersProvider.notifier).state = false;
                          },
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToolbar(BuildContext context) {
    final viewMode = ref.watch(libraryViewModeProvider);
    final coverSize = ref.watch(libraryCoverSizeProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          // View mode toggle
          ToggleButtons(
            isSelected: [
              viewMode == LibraryViewMode.grid,
              viewMode == LibraryViewMode.list,
            ],
            onPressed: (index) {
              ref.read(libraryViewModeProvider.notifier).state =
                  index == 0 ? LibraryViewMode.grid : LibraryViewMode.list;
            },
            children: const [
              Icon(Icons.grid_view),
              Icon(Icons.list),
            ],
          ),
          const SizedBox(width: 16),
          // Cover size slider (grid mode only)
          if (viewMode == LibraryViewMode.grid) ...[
            const Text(
              'Cover size',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.photo_size_select_small, size: 16),
            SizedBox(
              width: 180,
              child: Slider(
                value: coverSize,
                min: 100,
                max: 250,
                divisions: 15,
                label: '${coverSize.toInt()}px',
                onChanged: (value) {
                  ref.read(libraryCoverSizeProvider.notifier).state = value;
                },
              ),
            ),
            const Icon(Icons.photo_size_select_large, size: 16),
            const SizedBox(width: 16),
          ],
          const Spacer(),
          // Filter button
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              ref.read(libraryShowFiltersProvider.notifier).state =
                  !ref.watch(libraryShowFiltersProvider);
            },
            tooltip: 'Filters',
          ),
          // Refresh button
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // TODO: Refresh library
              ref.invalidate(libraryMangaProvider);
            },
            tooltip: 'Refresh Library',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryTabs() {
    final categoriesAsync = ref.watch(categoriesProvider);
    final selectedCategory = ref.watch(librarySelectedCategoryProvider);

    return categoriesAsync.when(
      data: (categories) {
        final allCategories = [
          const _CategoryItem(id: null, name: 'All'),
          ...categories.map((c) => _CategoryItem(id: c.id, name: c.name)),
        ];

        return Container(
          height: 48,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1,
              ),
            ),
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: allCategories.length,
            itemBuilder: (context, index) {
              final category = allCategories[index];
              final isSelected = selectedCategory == category.id;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ChoiceChip(
                  label: Text(category.name),
                  selected: isSelected,
                  onSelected: (selected) {
                    ref.read(librarySelectedCategoryProvider.notifier).state =
                        selected ? category.id : null;
                  },
                ),
              );
            },
          ),
        );
      },
      loading: () => const SizedBox(height: 48),
      error: (error, stack) => const SizedBox(height: 48),
    );
  }

  Widget _buildLibraryContent({
    required LibraryViewMode viewMode,
    int? categoryId,
    required String searchQuery,
  }) {
    if (searchQuery.isNotEmpty) {
      final searchResults = ref.watch(mangaSearchProvider(searchQuery));
      return searchResults.when(
        data: (manga) => _buildContent(manga, viewMode),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
      );
    }

    final mangaAsync = ref.watch(mangaByCategoryProvider(categoryId));
    return mangaAsync.when(
      data: (manga) => _buildContent(manga, viewMode),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text('Error loading library: $error'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.invalidate(mangaByCategoryProvider(categoryId));
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(List<Manga> manga, LibraryViewMode viewMode) {
    if (manga.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.library_books_outlined,
              size: 64,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              'Your library is empty',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Browse extensions and add manga to get started',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[500],
                  ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => context.go('/browse'),
              icon: const Icon(Icons.explore),
              label: const Text('Browse Extensions'),
            ),
          ],
        ),
      );
    }

    return viewMode == LibraryViewMode.grid
        ? LibraryGridView(manga: manga)
        : LibraryListView(manga: manga);
  }
}

class _CategoryItem {
  final int? id;
  final String name;

  const _CategoryItem({required this.id, required this.name});
}
