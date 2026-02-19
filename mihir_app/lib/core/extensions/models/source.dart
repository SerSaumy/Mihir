import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.freezed.dart';
part 'source.g.dart';

@freezed
class MihirSource with _$MihirSource {
  const factory MihirSource({
    required String id,
    required String name,
    required String lang,
    String? baseUrl,
    String? iconUrl,
    required String extensionPkgName,
  }) = _MihirSource;

  factory MihirSource.fromJson(Map<String, dynamic> json) =>
      _$MihirSourceFromJson(json);
}
