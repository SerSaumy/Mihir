import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga.freezed.dart';
part 'manga.g.dart';

enum MangaStatus {
  unknown,
  ongoing,
  completed,
  licensed,
  publishingFinished,
  cancelled,
  onHiatus,
}

enum WindowReadingMode {
  defaultMode,
  rtlPaged,
  ltrPaged,
  verticalPaged,
  longStripVertical,
  longStripHorizontal,
  doublePageSpread,
}

@freezed
class Manga with _$Manga {
  const factory Manga({
    required int id,
    required String url,
    required String title,
    String? artist,
    String? author,
    String? description,
    @Default([]) List<String> genre,
    String? thumbnailUrl,
    @Default(MangaStatus.unknown) MangaStatus status,
    @Default(false) bool favorite,
    required String source,
    int? lastUpdate,
    int? dateAdded,
    @Default(0) int viewerFlags,
    @Default(0) int chapterFlags,
    @Default(0) int coverLastModified,
    String? customTitle,
    String? customArtist,
    String? customAuthor,
    String? customDescription,
    List<String>? customGenre,
    int? customStatus,
    // Desktop-specific additions
    String? localCoverPath,
    WindowReadingMode? windowReadingMode,
  }) = _Manga;

  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);
}
