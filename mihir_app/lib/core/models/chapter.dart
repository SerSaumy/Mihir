import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    required int id,
    required int mangaId,
    required String url,
    required String name,
    String? scanlator,
    @Default(false) bool read,
    @Default(false) bool bookmark,
    int? lastPageRead,
    int? dateFetch,
    int? dateUpload,
    @Default(0.0) double chapterNumber,
    @Default(0) int sourceOrder,
    int? totalPageCount,
    String? downloadPath,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) => _$ChapterFromJson(json);
}
