import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/models/chapter.dart';
import '../../core/models/page.dart';
import '../../core/providers/chapter_provider.dart';

final readerPageProvider = StateProvider<int>((ref) => 0);
final readerZoomProvider = StateProvider<double>((ref) => 1.0);
final readerShowToolbarProvider = StateProvider<bool>((ref) => true);

enum ReadingMode {
  rtlPaged,
  ltrPaged,
  verticalPaged,
  longStripVertical,
  longStripHorizontal,
  doublePageSpread,
}

final readerModeProvider = StateProvider<ReadingMode>((ref) => ReadingMode.rtlPaged);

class ReaderScreen extends ConsumerStatefulWidget {
  final int mangaId;
  final int chapterId;

  const ReaderScreen({
    super.key,
    required this.mangaId,
    required this.chapterId,
  });

  @override
  ConsumerState<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends ConsumerState<ReaderScreen> {
  final PageController _pageController = PageController();
  bool _toolbarVisible = true;

  @override
  void initState() {
    super.initState();
    _setupKeyboardShortcuts();
  }

  void _setupKeyboardShortcuts() {
    // Keyboard shortcuts will be handled in build method
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chapterAsync = ref.watch(chapterProvider(widget.chapterId));
    final readingMode = ref.watch(readerModeProvider);
    final currentPage = ref.watch(readerPageProvider);
    final zoom = ref.watch(readerZoomProvider);
    final showToolbar = ref.watch(readerShowToolbarProvider);

    return KeyboardListener(
      focusNode: FocusNode(),
      onKeyEvent: (event) {
        if (event is KeyDownEvent) {
          _handleKeyPress(event.logicalKey);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // Reader content
            chapterAsync.when(
              data: (chapter) {
                if (chapter == null) {
                  return const Center(child: Text('Chapter not found'));
                }
                return _buildReaderContent(context, chapter, readingMode, currentPage, zoom);
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
            // Toolbar (auto-hiding)
            if (showToolbar) _buildToolbar(context, chapterAsync),
            // Page scrubber (bottom)
            _buildPageScrubber(context, currentPage),
          ],
        ),
      ),
    );
  }

  Widget _buildReaderContent(
    BuildContext context,
    Chapter chapter,
    ReadingMode mode,
    int currentPage,
    double zoom,
  ) {
    // Mock pages for now - in real implementation, fetch from extension
    final pages = List.generate(20, (i) => i);

    switch (mode) {
      case ReadingMode.longStripVertical:
        return _buildLongStripVertical(pages, zoom);
      case ReadingMode.longStripHorizontal:
        return _buildLongStripHorizontal(pages, zoom);
      case ReadingMode.doublePageSpread:
        return _buildDoublePageSpread(pages, zoom);
      default:
        return _buildPagedView(pages, mode, zoom);
    }
  }

  Widget _buildPagedView(List<int> pages, ReadingMode mode, double zoom) {
    return PageView.builder(
      controller: _pageController,
      reverse: mode == ReadingMode.rtlPaged,
      itemCount: pages.length,
      onPageChanged: (index) {
        ref.read(readerPageProvider.notifier).state = index;
      },
      itemBuilder: (context, index) {
        return _buildPage(pages[index], zoom);
      },
    );
  }

  Widget _buildLongStripVertical(List<int> pages, double zoom) {
    return ListView.builder(
      itemCount: pages.length,
      itemBuilder: (context, index) {
        return _buildPage(pages[index], zoom);
      },
    );
  }

  Widget _buildLongStripHorizontal(List<int> pages, double zoom) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: pages.length,
      itemBuilder: (context, index) {
        return _buildPage(pages[index], zoom);
      },
    );
  }

  Widget _buildDoublePageSpread(List<int> pages, double zoom) {
    return PageView.builder(
      controller: _pageController,
      itemCount: (pages.length / 2).ceil(),
      onPageChanged: (index) {
        ref.read(readerPageProvider.notifier).state = index * 2;
      },
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(child: _buildPage(pages[index * 2], zoom)),
            if (index * 2 + 1 < pages.length)
              Expanded(child: _buildPage(pages[index * 2 + 1], zoom)),
          ],
        );
      },
    );
  }

  Widget _buildPage(int pageIndex, double zoom) {
    return Center(
      child: Transform.scale(
        scale: zoom,
        child: Container(
          margin: const EdgeInsets.all(8),
          color: Colors.white,
          child: Center(
            child: Text(
              'Page ${pageIndex + 1}',
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildToolbar(BuildContext context, AsyncValue<Chapter?> chapterAsync) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.black87,
        child: SafeArea(
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
              Expanded(
                child: chapterAsync.when(
                  data: (chapter) => Text(
                    chapter?.name ?? '',
                    style: const TextStyle(color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                  loading: () => const SizedBox(),
                  error: (_, __) => const SizedBox(),
                ),
              ),
              Text(
                '${ref.read(readerPageProvider) + 1} / 20', // TODO: Get actual page count
                style: const TextStyle(color: Colors.white),
              ),
              IconButton(
                icon: const Icon(Icons.chevron_left, color: Colors.white),
                onPressed: () => _previousPage(),
              ),
              IconButton(
                icon: const Icon(Icons.chevron_right, color: Colors.white),
                onPressed: () => _nextPage(),
              ),
              PopupMenuButton<ReadingMode>(
                icon: const Icon(Icons.more_vert, color: Colors.white),
                onSelected: (mode) {
                  ref.read(readerModeProvider.notifier).state = mode;
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: ReadingMode.rtlPaged,
                    child: Text('Right-to-Left'),
                  ),
                  const PopupMenuItem(
                    value: ReadingMode.ltrPaged,
                    child: Text('Left-to-Right'),
                  ),
                  const PopupMenuItem(
                    value: ReadingMode.verticalPaged,
                    child: Text('Vertical Paged'),
                  ),
                  const PopupMenuItem(
                    value: ReadingMode.longStripVertical,
                    child: Text('Long Strip Vertical'),
                  ),
                  const PopupMenuItem(
                    value: ReadingMode.longStripHorizontal,
                    child: Text('Long Strip Horizontal'),
                  ),
                  const PopupMenuItem(
                    value: ReadingMode.doublePageSpread,
                    child: Text('Double Page'),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.fullscreen, color: Colors.white),
                onPressed: () {
                  // TODO: Toggle fullscreen
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageScrubber(BuildContext context, int currentPage) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.black87,
        child: SafeArea(
          child: Row(
            children: [
              Text(
                '1',
                style: const TextStyle(color: Colors.white),
              ),
              Expanded(
                child: Slider(
                  value: currentPage.toDouble(),
                  min: 0,
                  max: 19, // TODO: Get actual page count
                  divisions: 19,
                  onChanged: (value) {
                    ref.read(readerPageProvider.notifier).state = value.toInt();
                    _pageController.jumpToPage(value.toInt());
                  },
                ),
              ),
              Text(
                '20',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleKeyPress(LogicalKeyboardKey key) {
    if (key == LogicalKeyboardKey.arrowLeft ||
        key == LogicalKeyboardKey.keyA ||
        key == LogicalKeyboardKey.keyH) {
      _previousPage();
    } else if (key == LogicalKeyboardKey.arrowRight ||
        key == LogicalKeyboardKey.keyD ||
        key == LogicalKeyboardKey.keyL) {
      _nextPage();
    } else if (key == LogicalKeyboardKey.escape) {
      Navigator.pop(context);
    } else if (key == LogicalKeyboardKey.keyF) {
      // TODO: Toggle fullscreen
    } else if (key == LogicalKeyboardKey.keyM) {
      // TODO: Show reading mode menu
    }
  }

  void _previousPage() {
    final current = ref.read(readerPageProvider);
    if (current > 0) {
      ref.read(readerPageProvider.notifier).state = current - 1;
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _nextPage() {
    final current = ref.read(readerPageProvider);
    if (current < 19) { // TODO: Get actual page count
      ref.read(readerPageProvider.notifier).state = current + 1;
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
