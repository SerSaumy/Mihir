import 'package:freezed_annotation/freezed_annotation.dart';
import 'source.dart';

part 'extension.freezed.dart';
part 'extension.g.dart';

enum ExtensionStatus {
  loaded,
  error,
  incompatible,
  notInstalled,
}

@freezed
class MihirExtension with _$MihirExtension {
  const factory MihirExtension({
    required String pkgName,
    required String name,
    required String versionName,
    required int versionCode,
    required String lang,
    String? description,
    @Default(false) bool isNsfw,
    required String apkPath,
    @Default(ExtensionStatus.notInstalled) ExtensionStatus status,
    @Default([]) @JsonKey(name: 'sources') List<MihirSource> sources,
    String? iconPath,
  }) = _MihirExtension;

  factory MihirExtension.fromJson(Map<String, dynamic> json) =>
      _$MihirExtensionFromJson(json);
}
