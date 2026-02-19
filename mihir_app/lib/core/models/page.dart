import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';
part 'page.g.dart';

enum PageStatus {
  queued,
  loading,
  ready,
  error,
}

@freezed
class Page with _$Page {
  const factory Page({
    required int index,
    String? url,
    String? imageUrl,
    String? localPath,
    @Default(PageStatus.queued) PageStatus status,
    int? width,
    int? height,
  }) = _Page;

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
}
