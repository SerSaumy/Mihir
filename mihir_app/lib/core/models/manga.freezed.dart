// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Manga _$MangaFromJson(Map<String, dynamic> json) {
  return _Manga.fromJson(json);
}

/// @nodoc
mixin _$Manga {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get artist => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String> get genre => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  MangaStatus get status => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  int? get lastUpdate => throw _privateConstructorUsedError;
  int? get dateAdded => throw _privateConstructorUsedError;
  int get viewerFlags => throw _privateConstructorUsedError;
  int get chapterFlags => throw _privateConstructorUsedError;
  int get coverLastModified => throw _privateConstructorUsedError;
  String? get customTitle => throw _privateConstructorUsedError;
  String? get customArtist => throw _privateConstructorUsedError;
  String? get customAuthor => throw _privateConstructorUsedError;
  String? get customDescription => throw _privateConstructorUsedError;
  List<String>? get customGenre => throw _privateConstructorUsedError;
  int? get customStatus =>
      throw _privateConstructorUsedError; // Desktop-specific additions
  String? get localCoverPath => throw _privateConstructorUsedError;
  WindowReadingMode? get windowReadingMode =>
      throw _privateConstructorUsedError;

  /// Serializes this Manga to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaCopyWith<Manga> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaCopyWith<$Res> {
  factory $MangaCopyWith(Manga value, $Res Function(Manga) then) =
      _$MangaCopyWithImpl<$Res, Manga>;
  @useResult
  $Res call(
      {int id,
      String url,
      String title,
      String? artist,
      String? author,
      String? description,
      List<String> genre,
      String? thumbnailUrl,
      MangaStatus status,
      bool favorite,
      String source,
      int? lastUpdate,
      int? dateAdded,
      int viewerFlags,
      int chapterFlags,
      int coverLastModified,
      String? customTitle,
      String? customArtist,
      String? customAuthor,
      String? customDescription,
      List<String>? customGenre,
      int? customStatus,
      String? localCoverPath,
      WindowReadingMode? windowReadingMode});
}

/// @nodoc
class _$MangaCopyWithImpl<$Res, $Val extends Manga>
    implements $MangaCopyWith<$Res> {
  _$MangaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? title = null,
    Object? artist = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? genre = null,
    Object? thumbnailUrl = freezed,
    Object? status = null,
    Object? favorite = null,
    Object? source = null,
    Object? lastUpdate = freezed,
    Object? dateAdded = freezed,
    Object? viewerFlags = null,
    Object? chapterFlags = null,
    Object? coverLastModified = null,
    Object? customTitle = freezed,
    Object? customArtist = freezed,
    Object? customAuthor = freezed,
    Object? customDescription = freezed,
    Object? customGenre = freezed,
    Object? customStatus = freezed,
    Object? localCoverPath = freezed,
    Object? windowReadingMode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as int?,
      viewerFlags: null == viewerFlags
          ? _value.viewerFlags
          : viewerFlags // ignore: cast_nullable_to_non_nullable
              as int,
      chapterFlags: null == chapterFlags
          ? _value.chapterFlags
          : chapterFlags // ignore: cast_nullable_to_non_nullable
              as int,
      coverLastModified: null == coverLastModified
          ? _value.coverLastModified
          : coverLastModified // ignore: cast_nullable_to_non_nullable
              as int,
      customTitle: freezed == customTitle
          ? _value.customTitle
          : customTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      customArtist: freezed == customArtist
          ? _value.customArtist
          : customArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      customAuthor: freezed == customAuthor
          ? _value.customAuthor
          : customAuthor // ignore: cast_nullable_to_non_nullable
              as String?,
      customDescription: freezed == customDescription
          ? _value.customDescription
          : customDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      customGenre: freezed == customGenre
          ? _value.customGenre
          : customGenre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customStatus: freezed == customStatus
          ? _value.customStatus
          : customStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      localCoverPath: freezed == localCoverPath
          ? _value.localCoverPath
          : localCoverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      windowReadingMode: freezed == windowReadingMode
          ? _value.windowReadingMode
          : windowReadingMode // ignore: cast_nullable_to_non_nullable
              as WindowReadingMode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaImplCopyWith<$Res> implements $MangaCopyWith<$Res> {
  factory _$$MangaImplCopyWith(
          _$MangaImpl value, $Res Function(_$MangaImpl) then) =
      __$$MangaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String url,
      String title,
      String? artist,
      String? author,
      String? description,
      List<String> genre,
      String? thumbnailUrl,
      MangaStatus status,
      bool favorite,
      String source,
      int? lastUpdate,
      int? dateAdded,
      int viewerFlags,
      int chapterFlags,
      int coverLastModified,
      String? customTitle,
      String? customArtist,
      String? customAuthor,
      String? customDescription,
      List<String>? customGenre,
      int? customStatus,
      String? localCoverPath,
      WindowReadingMode? windowReadingMode});
}

/// @nodoc
class __$$MangaImplCopyWithImpl<$Res>
    extends _$MangaCopyWithImpl<$Res, _$MangaImpl>
    implements _$$MangaImplCopyWith<$Res> {
  __$$MangaImplCopyWithImpl(
      _$MangaImpl _value, $Res Function(_$MangaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? title = null,
    Object? artist = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? genre = null,
    Object? thumbnailUrl = freezed,
    Object? status = null,
    Object? favorite = null,
    Object? source = null,
    Object? lastUpdate = freezed,
    Object? dateAdded = freezed,
    Object? viewerFlags = null,
    Object? chapterFlags = null,
    Object? coverLastModified = null,
    Object? customTitle = freezed,
    Object? customArtist = freezed,
    Object? customAuthor = freezed,
    Object? customDescription = freezed,
    Object? customGenre = freezed,
    Object? customStatus = freezed,
    Object? localCoverPath = freezed,
    Object? windowReadingMode = freezed,
  }) {
    return _then(_$MangaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: null == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as int?,
      viewerFlags: null == viewerFlags
          ? _value.viewerFlags
          : viewerFlags // ignore: cast_nullable_to_non_nullable
              as int,
      chapterFlags: null == chapterFlags
          ? _value.chapterFlags
          : chapterFlags // ignore: cast_nullable_to_non_nullable
              as int,
      coverLastModified: null == coverLastModified
          ? _value.coverLastModified
          : coverLastModified // ignore: cast_nullable_to_non_nullable
              as int,
      customTitle: freezed == customTitle
          ? _value.customTitle
          : customTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      customArtist: freezed == customArtist
          ? _value.customArtist
          : customArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      customAuthor: freezed == customAuthor
          ? _value.customAuthor
          : customAuthor // ignore: cast_nullable_to_non_nullable
              as String?,
      customDescription: freezed == customDescription
          ? _value.customDescription
          : customDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      customGenre: freezed == customGenre
          ? _value._customGenre
          : customGenre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customStatus: freezed == customStatus
          ? _value.customStatus
          : customStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      localCoverPath: freezed == localCoverPath
          ? _value.localCoverPath
          : localCoverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      windowReadingMode: freezed == windowReadingMode
          ? _value.windowReadingMode
          : windowReadingMode // ignore: cast_nullable_to_non_nullable
              as WindowReadingMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaImpl implements _Manga {
  const _$MangaImpl(
      {required this.id,
      required this.url,
      required this.title,
      this.artist,
      this.author,
      this.description,
      final List<String> genre = const [],
      this.thumbnailUrl,
      this.status = MangaStatus.unknown,
      this.favorite = false,
      required this.source,
      this.lastUpdate,
      this.dateAdded,
      this.viewerFlags = 0,
      this.chapterFlags = 0,
      this.coverLastModified = 0,
      this.customTitle,
      this.customArtist,
      this.customAuthor,
      this.customDescription,
      final List<String>? customGenre,
      this.customStatus,
      this.localCoverPath,
      this.windowReadingMode})
      : _genre = genre,
        _customGenre = customGenre;

  factory _$MangaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaImplFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final String title;
  @override
  final String? artist;
  @override
  final String? author;
  @override
  final String? description;
  final List<String> _genre;
  @override
  @JsonKey()
  List<String> get genre {
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genre);
  }

  @override
  final String? thumbnailUrl;
  @override
  @JsonKey()
  final MangaStatus status;
  @override
  @JsonKey()
  final bool favorite;
  @override
  final String source;
  @override
  final int? lastUpdate;
  @override
  final int? dateAdded;
  @override
  @JsonKey()
  final int viewerFlags;
  @override
  @JsonKey()
  final int chapterFlags;
  @override
  @JsonKey()
  final int coverLastModified;
  @override
  final String? customTitle;
  @override
  final String? customArtist;
  @override
  final String? customAuthor;
  @override
  final String? customDescription;
  final List<String>? _customGenre;
  @override
  List<String>? get customGenre {
    final value = _customGenre;
    if (value == null) return null;
    if (_customGenre is EqualUnmodifiableListView) return _customGenre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? customStatus;
// Desktop-specific additions
  @override
  final String? localCoverPath;
  @override
  final WindowReadingMode? windowReadingMode;

  @override
  String toString() {
    return 'Manga(id: $id, url: $url, title: $title, artist: $artist, author: $author, description: $description, genre: $genre, thumbnailUrl: $thumbnailUrl, status: $status, favorite: $favorite, source: $source, lastUpdate: $lastUpdate, dateAdded: $dateAdded, viewerFlags: $viewerFlags, chapterFlags: $chapterFlags, coverLastModified: $coverLastModified, customTitle: $customTitle, customArtist: $customArtist, customAuthor: $customAuthor, customDescription: $customDescription, customGenre: $customGenre, customStatus: $customStatus, localCoverPath: $localCoverPath, windowReadingMode: $windowReadingMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._genre, _genre) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.viewerFlags, viewerFlags) ||
                other.viewerFlags == viewerFlags) &&
            (identical(other.chapterFlags, chapterFlags) ||
                other.chapterFlags == chapterFlags) &&
            (identical(other.coverLastModified, coverLastModified) ||
                other.coverLastModified == coverLastModified) &&
            (identical(other.customTitle, customTitle) ||
                other.customTitle == customTitle) &&
            (identical(other.customArtist, customArtist) ||
                other.customArtist == customArtist) &&
            (identical(other.customAuthor, customAuthor) ||
                other.customAuthor == customAuthor) &&
            (identical(other.customDescription, customDescription) ||
                other.customDescription == customDescription) &&
            const DeepCollectionEquality()
                .equals(other._customGenre, _customGenre) &&
            (identical(other.customStatus, customStatus) ||
                other.customStatus == customStatus) &&
            (identical(other.localCoverPath, localCoverPath) ||
                other.localCoverPath == localCoverPath) &&
            (identical(other.windowReadingMode, windowReadingMode) ||
                other.windowReadingMode == windowReadingMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        url,
        title,
        artist,
        author,
        description,
        const DeepCollectionEquality().hash(_genre),
        thumbnailUrl,
        status,
        favorite,
        source,
        lastUpdate,
        dateAdded,
        viewerFlags,
        chapterFlags,
        coverLastModified,
        customTitle,
        customArtist,
        customAuthor,
        customDescription,
        const DeepCollectionEquality().hash(_customGenre),
        customStatus,
        localCoverPath,
        windowReadingMode
      ]);

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaImplCopyWith<_$MangaImpl> get copyWith =>
      __$$MangaImplCopyWithImpl<_$MangaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaImplToJson(
      this,
    );
  }
}

abstract class _Manga implements Manga {
  const factory _Manga(
      {required final int id,
      required final String url,
      required final String title,
      final String? artist,
      final String? author,
      final String? description,
      final List<String> genre,
      final String? thumbnailUrl,
      final MangaStatus status,
      final bool favorite,
      required final String source,
      final int? lastUpdate,
      final int? dateAdded,
      final int viewerFlags,
      final int chapterFlags,
      final int coverLastModified,
      final String? customTitle,
      final String? customArtist,
      final String? customAuthor,
      final String? customDescription,
      final List<String>? customGenre,
      final int? customStatus,
      final String? localCoverPath,
      final WindowReadingMode? windowReadingMode}) = _$MangaImpl;

  factory _Manga.fromJson(Map<String, dynamic> json) = _$MangaImpl.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  String get title;
  @override
  String? get artist;
  @override
  String? get author;
  @override
  String? get description;
  @override
  List<String> get genre;
  @override
  String? get thumbnailUrl;
  @override
  MangaStatus get status;
  @override
  bool get favorite;
  @override
  String get source;
  @override
  int? get lastUpdate;
  @override
  int? get dateAdded;
  @override
  int get viewerFlags;
  @override
  int get chapterFlags;
  @override
  int get coverLastModified;
  @override
  String? get customTitle;
  @override
  String? get customArtist;
  @override
  String? get customAuthor;
  @override
  String? get customDescription;
  @override
  List<String>? get customGenre;
  @override
  int? get customStatus; // Desktop-specific additions
  @override
  String? get localCoverPath;
  @override
  WindowReadingMode? get windowReadingMode;

  /// Create a copy of Manga
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaImplCopyWith<_$MangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
