// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  int get id => throw _privateConstructorUsedError;
  int get mangaId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get scanlator => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  bool get bookmark => throw _privateConstructorUsedError;
  int? get lastPageRead => throw _privateConstructorUsedError;
  int? get dateFetch => throw _privateConstructorUsedError;
  int? get dateUpload => throw _privateConstructorUsedError;
  double get chapterNumber => throw _privateConstructorUsedError;
  int get sourceOrder => throw _privateConstructorUsedError;
  int? get totalPageCount => throw _privateConstructorUsedError;
  String? get downloadPath => throw _privateConstructorUsedError;

  /// Serializes this Chapter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res, Chapter>;
  @useResult
  $Res call(
      {int id,
      int mangaId,
      String url,
      String name,
      String? scanlator,
      bool read,
      bool bookmark,
      int? lastPageRead,
      int? dateFetch,
      int? dateUpload,
      double chapterNumber,
      int sourceOrder,
      int? totalPageCount,
      String? downloadPath});
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res, $Val extends Chapter>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mangaId = null,
    Object? url = null,
    Object? name = null,
    Object? scanlator = freezed,
    Object? read = null,
    Object? bookmark = null,
    Object? lastPageRead = freezed,
    Object? dateFetch = freezed,
    Object? dateUpload = freezed,
    Object? chapterNumber = null,
    Object? sourceOrder = null,
    Object? totalPageCount = freezed,
    Object? downloadPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mangaId: null == mangaId
          ? _value.mangaId
          : mangaId // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scanlator: freezed == scanlator
          ? _value.scanlator
          : scanlator // ignore: cast_nullable_to_non_nullable
              as String?,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      bookmark: null == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPageRead: freezed == lastPageRead
          ? _value.lastPageRead
          : lastPageRead // ignore: cast_nullable_to_non_nullable
              as int?,
      dateFetch: freezed == dateFetch
          ? _value.dateFetch
          : dateFetch // ignore: cast_nullable_to_non_nullable
              as int?,
      dateUpload: freezed == dateUpload
          ? _value.dateUpload
          : dateUpload // ignore: cast_nullable_to_non_nullable
              as int?,
      chapterNumber: null == chapterNumber
          ? _value.chapterNumber
          : chapterNumber // ignore: cast_nullable_to_non_nullable
              as double,
      sourceOrder: null == sourceOrder
          ? _value.sourceOrder
          : sourceOrder // ignore: cast_nullable_to_non_nullable
              as int,
      totalPageCount: freezed == totalPageCount
          ? _value.totalPageCount
          : totalPageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadPath: freezed == downloadPath
          ? _value.downloadPath
          : downloadPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterImplCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$ChapterImplCopyWith(
          _$ChapterImpl value, $Res Function(_$ChapterImpl) then) =
      __$$ChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int mangaId,
      String url,
      String name,
      String? scanlator,
      bool read,
      bool bookmark,
      int? lastPageRead,
      int? dateFetch,
      int? dateUpload,
      double chapterNumber,
      int sourceOrder,
      int? totalPageCount,
      String? downloadPath});
}

/// @nodoc
class __$$ChapterImplCopyWithImpl<$Res>
    extends _$ChapterCopyWithImpl<$Res, _$ChapterImpl>
    implements _$$ChapterImplCopyWith<$Res> {
  __$$ChapterImplCopyWithImpl(
      _$ChapterImpl _value, $Res Function(_$ChapterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mangaId = null,
    Object? url = null,
    Object? name = null,
    Object? scanlator = freezed,
    Object? read = null,
    Object? bookmark = null,
    Object? lastPageRead = freezed,
    Object? dateFetch = freezed,
    Object? dateUpload = freezed,
    Object? chapterNumber = null,
    Object? sourceOrder = null,
    Object? totalPageCount = freezed,
    Object? downloadPath = freezed,
  }) {
    return _then(_$ChapterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mangaId: null == mangaId
          ? _value.mangaId
          : mangaId // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scanlator: freezed == scanlator
          ? _value.scanlator
          : scanlator // ignore: cast_nullable_to_non_nullable
              as String?,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      bookmark: null == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPageRead: freezed == lastPageRead
          ? _value.lastPageRead
          : lastPageRead // ignore: cast_nullable_to_non_nullable
              as int?,
      dateFetch: freezed == dateFetch
          ? _value.dateFetch
          : dateFetch // ignore: cast_nullable_to_non_nullable
              as int?,
      dateUpload: freezed == dateUpload
          ? _value.dateUpload
          : dateUpload // ignore: cast_nullable_to_non_nullable
              as int?,
      chapterNumber: null == chapterNumber
          ? _value.chapterNumber
          : chapterNumber // ignore: cast_nullable_to_non_nullable
              as double,
      sourceOrder: null == sourceOrder
          ? _value.sourceOrder
          : sourceOrder // ignore: cast_nullable_to_non_nullable
              as int,
      totalPageCount: freezed == totalPageCount
          ? _value.totalPageCount
          : totalPageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadPath: freezed == downloadPath
          ? _value.downloadPath
          : downloadPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterImpl implements _Chapter {
  const _$ChapterImpl(
      {required this.id,
      required this.mangaId,
      required this.url,
      required this.name,
      this.scanlator,
      this.read = false,
      this.bookmark = false,
      this.lastPageRead,
      this.dateFetch,
      this.dateUpload,
      this.chapterNumber = 0.0,
      this.sourceOrder = 0,
      this.totalPageCount,
      this.downloadPath});

  factory _$ChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterImplFromJson(json);

  @override
  final int id;
  @override
  final int mangaId;
  @override
  final String url;
  @override
  final String name;
  @override
  final String? scanlator;
  @override
  @JsonKey()
  final bool read;
  @override
  @JsonKey()
  final bool bookmark;
  @override
  final int? lastPageRead;
  @override
  final int? dateFetch;
  @override
  final int? dateUpload;
  @override
  @JsonKey()
  final double chapterNumber;
  @override
  @JsonKey()
  final int sourceOrder;
  @override
  final int? totalPageCount;
  @override
  final String? downloadPath;

  @override
  String toString() {
    return 'Chapter(id: $id, mangaId: $mangaId, url: $url, name: $name, scanlator: $scanlator, read: $read, bookmark: $bookmark, lastPageRead: $lastPageRead, dateFetch: $dateFetch, dateUpload: $dateUpload, chapterNumber: $chapterNumber, sourceOrder: $sourceOrder, totalPageCount: $totalPageCount, downloadPath: $downloadPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mangaId, mangaId) || other.mangaId == mangaId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scanlator, scanlator) ||
                other.scanlator == scanlator) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.bookmark, bookmark) ||
                other.bookmark == bookmark) &&
            (identical(other.lastPageRead, lastPageRead) ||
                other.lastPageRead == lastPageRead) &&
            (identical(other.dateFetch, dateFetch) ||
                other.dateFetch == dateFetch) &&
            (identical(other.dateUpload, dateUpload) ||
                other.dateUpload == dateUpload) &&
            (identical(other.chapterNumber, chapterNumber) ||
                other.chapterNumber == chapterNumber) &&
            (identical(other.sourceOrder, sourceOrder) ||
                other.sourceOrder == sourceOrder) &&
            (identical(other.totalPageCount, totalPageCount) ||
                other.totalPageCount == totalPageCount) &&
            (identical(other.downloadPath, downloadPath) ||
                other.downloadPath == downloadPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mangaId,
      url,
      name,
      scanlator,
      read,
      bookmark,
      lastPageRead,
      dateFetch,
      dateUpload,
      chapterNumber,
      sourceOrder,
      totalPageCount,
      downloadPath);

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      __$$ChapterImplCopyWithImpl<_$ChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterImplToJson(
      this,
    );
  }
}

abstract class _Chapter implements Chapter {
  const factory _Chapter(
      {required final int id,
      required final int mangaId,
      required final String url,
      required final String name,
      final String? scanlator,
      final bool read,
      final bool bookmark,
      final int? lastPageRead,
      final int? dateFetch,
      final int? dateUpload,
      final double chapterNumber,
      final int sourceOrder,
      final int? totalPageCount,
      final String? downloadPath}) = _$ChapterImpl;

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$ChapterImpl.fromJson;

  @override
  int get id;
  @override
  int get mangaId;
  @override
  String get url;
  @override
  String get name;
  @override
  String? get scanlator;
  @override
  bool get read;
  @override
  bool get bookmark;
  @override
  int? get lastPageRead;
  @override
  int? get dateFetch;
  @override
  int? get dateUpload;
  @override
  double get chapterNumber;
  @override
  int get sourceOrder;
  @override
  int? get totalPageCount;
  @override
  String? get downloadPath;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
