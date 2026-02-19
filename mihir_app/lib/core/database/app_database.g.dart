// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MangasTable extends Mangas with TableInfo<$MangasTable, DbManga> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MangasTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _artistMeta = const VerificationMeta('artist');
  @override
  late final GeneratedColumn<String> artist = GeneratedColumn<String>(
      'artist', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _genreMeta = const VerificationMeta('genre');
  @override
  late final GeneratedColumn<String> genre = GeneratedColumn<String>(
      'genre', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('[]'));
  static const VerificationMeta _thumbnailUrlMeta =
      const VerificationMeta('thumbnailUrl');
  @override
  late final GeneratedColumn<String> thumbnailUrl = GeneratedColumn<String>(
      'thumbnail_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _favoriteMeta =
      const VerificationMeta('favorite');
  @override
  late final GeneratedColumn<bool> favorite = GeneratedColumn<bool>(
      'favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("favorite" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdateMeta =
      const VerificationMeta('lastUpdate');
  @override
  late final GeneratedColumn<int> lastUpdate = GeneratedColumn<int>(
      'last_update', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _dateAddedMeta =
      const VerificationMeta('dateAdded');
  @override
  late final GeneratedColumn<int> dateAdded = GeneratedColumn<int>(
      'date_added', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _viewerFlagsMeta =
      const VerificationMeta('viewerFlags');
  @override
  late final GeneratedColumn<int> viewerFlags = GeneratedColumn<int>(
      'viewer_flags', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _chapterFlagsMeta =
      const VerificationMeta('chapterFlags');
  @override
  late final GeneratedColumn<int> chapterFlags = GeneratedColumn<int>(
      'chapter_flags', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _coverLastModifiedMeta =
      const VerificationMeta('coverLastModified');
  @override
  late final GeneratedColumn<int> coverLastModified = GeneratedColumn<int>(
      'cover_last_modified', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _customTitleMeta =
      const VerificationMeta('customTitle');
  @override
  late final GeneratedColumn<String> customTitle = GeneratedColumn<String>(
      'custom_title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customArtistMeta =
      const VerificationMeta('customArtist');
  @override
  late final GeneratedColumn<String> customArtist = GeneratedColumn<String>(
      'custom_artist', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customAuthorMeta =
      const VerificationMeta('customAuthor');
  @override
  late final GeneratedColumn<String> customAuthor = GeneratedColumn<String>(
      'custom_author', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customDescriptionMeta =
      const VerificationMeta('customDescription');
  @override
  late final GeneratedColumn<String> customDescription =
      GeneratedColumn<String>('custom_description', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customGenreMeta =
      const VerificationMeta('customGenre');
  @override
  late final GeneratedColumn<String> customGenre = GeneratedColumn<String>(
      'custom_genre', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customStatusMeta =
      const VerificationMeta('customStatus');
  @override
  late final GeneratedColumn<int> customStatus = GeneratedColumn<int>(
      'custom_status', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _localCoverPathMeta =
      const VerificationMeta('localCoverPath');
  @override
  late final GeneratedColumn<String> localCoverPath = GeneratedColumn<String>(
      'local_cover_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _windowReadingModeMeta =
      const VerificationMeta('windowReadingMode');
  @override
  late final GeneratedColumn<int> windowReadingMode = GeneratedColumn<int>(
      'window_reading_mode', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        url,
        title,
        artist,
        author,
        description,
        genre,
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
        customGenre,
        customStatus,
        localCoverPath,
        windowReadingMode
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mangas';
  @override
  VerificationContext validateIntegrity(Insertable<DbManga> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('artist')) {
      context.handle(_artistMeta,
          artist.isAcceptableOrUnknown(data['artist']!, _artistMeta));
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('genre')) {
      context.handle(
          _genreMeta, genre.isAcceptableOrUnknown(data['genre']!, _genreMeta));
    }
    if (data.containsKey('thumbnail_url')) {
      context.handle(
          _thumbnailUrlMeta,
          thumbnailUrl.isAcceptableOrUnknown(
              data['thumbnail_url']!, _thumbnailUrlMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta));
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('last_update')) {
      context.handle(
          _lastUpdateMeta,
          lastUpdate.isAcceptableOrUnknown(
              data['last_update']!, _lastUpdateMeta));
    }
    if (data.containsKey('date_added')) {
      context.handle(_dateAddedMeta,
          dateAdded.isAcceptableOrUnknown(data['date_added']!, _dateAddedMeta));
    }
    if (data.containsKey('viewer_flags')) {
      context.handle(
          _viewerFlagsMeta,
          viewerFlags.isAcceptableOrUnknown(
              data['viewer_flags']!, _viewerFlagsMeta));
    }
    if (data.containsKey('chapter_flags')) {
      context.handle(
          _chapterFlagsMeta,
          chapterFlags.isAcceptableOrUnknown(
              data['chapter_flags']!, _chapterFlagsMeta));
    }
    if (data.containsKey('cover_last_modified')) {
      context.handle(
          _coverLastModifiedMeta,
          coverLastModified.isAcceptableOrUnknown(
              data['cover_last_modified']!, _coverLastModifiedMeta));
    }
    if (data.containsKey('custom_title')) {
      context.handle(
          _customTitleMeta,
          customTitle.isAcceptableOrUnknown(
              data['custom_title']!, _customTitleMeta));
    }
    if (data.containsKey('custom_artist')) {
      context.handle(
          _customArtistMeta,
          customArtist.isAcceptableOrUnknown(
              data['custom_artist']!, _customArtistMeta));
    }
    if (data.containsKey('custom_author')) {
      context.handle(
          _customAuthorMeta,
          customAuthor.isAcceptableOrUnknown(
              data['custom_author']!, _customAuthorMeta));
    }
    if (data.containsKey('custom_description')) {
      context.handle(
          _customDescriptionMeta,
          customDescription.isAcceptableOrUnknown(
              data['custom_description']!, _customDescriptionMeta));
    }
    if (data.containsKey('custom_genre')) {
      context.handle(
          _customGenreMeta,
          customGenre.isAcceptableOrUnknown(
              data['custom_genre']!, _customGenreMeta));
    }
    if (data.containsKey('custom_status')) {
      context.handle(
          _customStatusMeta,
          customStatus.isAcceptableOrUnknown(
              data['custom_status']!, _customStatusMeta));
    }
    if (data.containsKey('local_cover_path')) {
      context.handle(
          _localCoverPathMeta,
          localCoverPath.isAcceptableOrUnknown(
              data['local_cover_path']!, _localCoverPathMeta));
    }
    if (data.containsKey('window_reading_mode')) {
      context.handle(
          _windowReadingModeMeta,
          windowReadingMode.isAcceptableOrUnknown(
              data['window_reading_mode']!, _windowReadingModeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbManga map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbManga(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      artist: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}artist']),
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      genre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genre'])!,
      thumbnailUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}thumbnail_url']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      favorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}favorite'])!,
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      lastUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_update']),
      dateAdded: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date_added']),
      viewerFlags: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}viewer_flags'])!,
      chapterFlags: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_flags'])!,
      coverLastModified: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}cover_last_modified'])!,
      customTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}custom_title']),
      customArtist: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}custom_artist']),
      customAuthor: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}custom_author']),
      customDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}custom_description']),
      customGenre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}custom_genre']),
      customStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}custom_status']),
      localCoverPath: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}local_cover_path']),
      windowReadingMode: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}window_reading_mode']),
    );
  }

  @override
  $MangasTable createAlias(String alias) {
    return $MangasTable(attachedDatabase, alias);
  }
}

class DbManga extends DataClass implements Insertable<DbManga> {
  final int id;
  final String url;
  final String title;
  final String? artist;
  final String? author;
  final String? description;
  final String genre;
  final String? thumbnailUrl;
  final int status;
  final bool favorite;
  final String source;
  final int? lastUpdate;
  final int? dateAdded;
  final int viewerFlags;
  final int chapterFlags;
  final int coverLastModified;
  final String? customTitle;
  final String? customArtist;
  final String? customAuthor;
  final String? customDescription;
  final String? customGenre;
  final int? customStatus;
  final String? localCoverPath;
  final int? windowReadingMode;
  const DbManga(
      {required this.id,
      required this.url,
      required this.title,
      this.artist,
      this.author,
      this.description,
      required this.genre,
      this.thumbnailUrl,
      required this.status,
      required this.favorite,
      required this.source,
      this.lastUpdate,
      this.dateAdded,
      required this.viewerFlags,
      required this.chapterFlags,
      required this.coverLastModified,
      this.customTitle,
      this.customArtist,
      this.customAuthor,
      this.customDescription,
      this.customGenre,
      this.customStatus,
      this.localCoverPath,
      this.windowReadingMode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['url'] = Variable<String>(url);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || artist != null) {
      map['artist'] = Variable<String>(artist);
    }
    if (!nullToAbsent || author != null) {
      map['author'] = Variable<String>(author);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['genre'] = Variable<String>(genre);
    if (!nullToAbsent || thumbnailUrl != null) {
      map['thumbnail_url'] = Variable<String>(thumbnailUrl);
    }
    map['status'] = Variable<int>(status);
    map['favorite'] = Variable<bool>(favorite);
    map['source'] = Variable<String>(source);
    if (!nullToAbsent || lastUpdate != null) {
      map['last_update'] = Variable<int>(lastUpdate);
    }
    if (!nullToAbsent || dateAdded != null) {
      map['date_added'] = Variable<int>(dateAdded);
    }
    map['viewer_flags'] = Variable<int>(viewerFlags);
    map['chapter_flags'] = Variable<int>(chapterFlags);
    map['cover_last_modified'] = Variable<int>(coverLastModified);
    if (!nullToAbsent || customTitle != null) {
      map['custom_title'] = Variable<String>(customTitle);
    }
    if (!nullToAbsent || customArtist != null) {
      map['custom_artist'] = Variable<String>(customArtist);
    }
    if (!nullToAbsent || customAuthor != null) {
      map['custom_author'] = Variable<String>(customAuthor);
    }
    if (!nullToAbsent || customDescription != null) {
      map['custom_description'] = Variable<String>(customDescription);
    }
    if (!nullToAbsent || customGenre != null) {
      map['custom_genre'] = Variable<String>(customGenre);
    }
    if (!nullToAbsent || customStatus != null) {
      map['custom_status'] = Variable<int>(customStatus);
    }
    if (!nullToAbsent || localCoverPath != null) {
      map['local_cover_path'] = Variable<String>(localCoverPath);
    }
    if (!nullToAbsent || windowReadingMode != null) {
      map['window_reading_mode'] = Variable<int>(windowReadingMode);
    }
    return map;
  }

  MangasCompanion toCompanion(bool nullToAbsent) {
    return MangasCompanion(
      id: Value(id),
      url: Value(url),
      title: Value(title),
      artist:
          artist == null && nullToAbsent ? const Value.absent() : Value(artist),
      author:
          author == null && nullToAbsent ? const Value.absent() : Value(author),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      genre: Value(genre),
      thumbnailUrl: thumbnailUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(thumbnailUrl),
      status: Value(status),
      favorite: Value(favorite),
      source: Value(source),
      lastUpdate: lastUpdate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdate),
      dateAdded: dateAdded == null && nullToAbsent
          ? const Value.absent()
          : Value(dateAdded),
      viewerFlags: Value(viewerFlags),
      chapterFlags: Value(chapterFlags),
      coverLastModified: Value(coverLastModified),
      customTitle: customTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(customTitle),
      customArtist: customArtist == null && nullToAbsent
          ? const Value.absent()
          : Value(customArtist),
      customAuthor: customAuthor == null && nullToAbsent
          ? const Value.absent()
          : Value(customAuthor),
      customDescription: customDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(customDescription),
      customGenre: customGenre == null && nullToAbsent
          ? const Value.absent()
          : Value(customGenre),
      customStatus: customStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(customStatus),
      localCoverPath: localCoverPath == null && nullToAbsent
          ? const Value.absent()
          : Value(localCoverPath),
      windowReadingMode: windowReadingMode == null && nullToAbsent
          ? const Value.absent()
          : Value(windowReadingMode),
    );
  }

  factory DbManga.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbManga(
      id: serializer.fromJson<int>(json['id']),
      url: serializer.fromJson<String>(json['url']),
      title: serializer.fromJson<String>(json['title']),
      artist: serializer.fromJson<String?>(json['artist']),
      author: serializer.fromJson<String?>(json['author']),
      description: serializer.fromJson<String?>(json['description']),
      genre: serializer.fromJson<String>(json['genre']),
      thumbnailUrl: serializer.fromJson<String?>(json['thumbnailUrl']),
      status: serializer.fromJson<int>(json['status']),
      favorite: serializer.fromJson<bool>(json['favorite']),
      source: serializer.fromJson<String>(json['source']),
      lastUpdate: serializer.fromJson<int?>(json['lastUpdate']),
      dateAdded: serializer.fromJson<int?>(json['dateAdded']),
      viewerFlags: serializer.fromJson<int>(json['viewerFlags']),
      chapterFlags: serializer.fromJson<int>(json['chapterFlags']),
      coverLastModified: serializer.fromJson<int>(json['coverLastModified']),
      customTitle: serializer.fromJson<String?>(json['customTitle']),
      customArtist: serializer.fromJson<String?>(json['customArtist']),
      customAuthor: serializer.fromJson<String?>(json['customAuthor']),
      customDescription:
          serializer.fromJson<String?>(json['customDescription']),
      customGenre: serializer.fromJson<String?>(json['customGenre']),
      customStatus: serializer.fromJson<int?>(json['customStatus']),
      localCoverPath: serializer.fromJson<String?>(json['localCoverPath']),
      windowReadingMode: serializer.fromJson<int?>(json['windowReadingMode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'url': serializer.toJson<String>(url),
      'title': serializer.toJson<String>(title),
      'artist': serializer.toJson<String?>(artist),
      'author': serializer.toJson<String?>(author),
      'description': serializer.toJson<String?>(description),
      'genre': serializer.toJson<String>(genre),
      'thumbnailUrl': serializer.toJson<String?>(thumbnailUrl),
      'status': serializer.toJson<int>(status),
      'favorite': serializer.toJson<bool>(favorite),
      'source': serializer.toJson<String>(source),
      'lastUpdate': serializer.toJson<int?>(lastUpdate),
      'dateAdded': serializer.toJson<int?>(dateAdded),
      'viewerFlags': serializer.toJson<int>(viewerFlags),
      'chapterFlags': serializer.toJson<int>(chapterFlags),
      'coverLastModified': serializer.toJson<int>(coverLastModified),
      'customTitle': serializer.toJson<String?>(customTitle),
      'customArtist': serializer.toJson<String?>(customArtist),
      'customAuthor': serializer.toJson<String?>(customAuthor),
      'customDescription': serializer.toJson<String?>(customDescription),
      'customGenre': serializer.toJson<String?>(customGenre),
      'customStatus': serializer.toJson<int?>(customStatus),
      'localCoverPath': serializer.toJson<String?>(localCoverPath),
      'windowReadingMode': serializer.toJson<int?>(windowReadingMode),
    };
  }

  DbManga copyWith(
          {int? id,
          String? url,
          String? title,
          Value<String?> artist = const Value.absent(),
          Value<String?> author = const Value.absent(),
          Value<String?> description = const Value.absent(),
          String? genre,
          Value<String?> thumbnailUrl = const Value.absent(),
          int? status,
          bool? favorite,
          String? source,
          Value<int?> lastUpdate = const Value.absent(),
          Value<int?> dateAdded = const Value.absent(),
          int? viewerFlags,
          int? chapterFlags,
          int? coverLastModified,
          Value<String?> customTitle = const Value.absent(),
          Value<String?> customArtist = const Value.absent(),
          Value<String?> customAuthor = const Value.absent(),
          Value<String?> customDescription = const Value.absent(),
          Value<String?> customGenre = const Value.absent(),
          Value<int?> customStatus = const Value.absent(),
          Value<String?> localCoverPath = const Value.absent(),
          Value<int?> windowReadingMode = const Value.absent()}) =>
      DbManga(
        id: id ?? this.id,
        url: url ?? this.url,
        title: title ?? this.title,
        artist: artist.present ? artist.value : this.artist,
        author: author.present ? author.value : this.author,
        description: description.present ? description.value : this.description,
        genre: genre ?? this.genre,
        thumbnailUrl:
            thumbnailUrl.present ? thumbnailUrl.value : this.thumbnailUrl,
        status: status ?? this.status,
        favorite: favorite ?? this.favorite,
        source: source ?? this.source,
        lastUpdate: lastUpdate.present ? lastUpdate.value : this.lastUpdate,
        dateAdded: dateAdded.present ? dateAdded.value : this.dateAdded,
        viewerFlags: viewerFlags ?? this.viewerFlags,
        chapterFlags: chapterFlags ?? this.chapterFlags,
        coverLastModified: coverLastModified ?? this.coverLastModified,
        customTitle: customTitle.present ? customTitle.value : this.customTitle,
        customArtist:
            customArtist.present ? customArtist.value : this.customArtist,
        customAuthor:
            customAuthor.present ? customAuthor.value : this.customAuthor,
        customDescription: customDescription.present
            ? customDescription.value
            : this.customDescription,
        customGenre: customGenre.present ? customGenre.value : this.customGenre,
        customStatus:
            customStatus.present ? customStatus.value : this.customStatus,
        localCoverPath:
            localCoverPath.present ? localCoverPath.value : this.localCoverPath,
        windowReadingMode: windowReadingMode.present
            ? windowReadingMode.value
            : this.windowReadingMode,
      );
  DbManga copyWithCompanion(MangasCompanion data) {
    return DbManga(
      id: data.id.present ? data.id.value : this.id,
      url: data.url.present ? data.url.value : this.url,
      title: data.title.present ? data.title.value : this.title,
      artist: data.artist.present ? data.artist.value : this.artist,
      author: data.author.present ? data.author.value : this.author,
      description:
          data.description.present ? data.description.value : this.description,
      genre: data.genre.present ? data.genre.value : this.genre,
      thumbnailUrl: data.thumbnailUrl.present
          ? data.thumbnailUrl.value
          : this.thumbnailUrl,
      status: data.status.present ? data.status.value : this.status,
      favorite: data.favorite.present ? data.favorite.value : this.favorite,
      source: data.source.present ? data.source.value : this.source,
      lastUpdate:
          data.lastUpdate.present ? data.lastUpdate.value : this.lastUpdate,
      dateAdded: data.dateAdded.present ? data.dateAdded.value : this.dateAdded,
      viewerFlags:
          data.viewerFlags.present ? data.viewerFlags.value : this.viewerFlags,
      chapterFlags: data.chapterFlags.present
          ? data.chapterFlags.value
          : this.chapterFlags,
      coverLastModified: data.coverLastModified.present
          ? data.coverLastModified.value
          : this.coverLastModified,
      customTitle:
          data.customTitle.present ? data.customTitle.value : this.customTitle,
      customArtist: data.customArtist.present
          ? data.customArtist.value
          : this.customArtist,
      customAuthor: data.customAuthor.present
          ? data.customAuthor.value
          : this.customAuthor,
      customDescription: data.customDescription.present
          ? data.customDescription.value
          : this.customDescription,
      customGenre:
          data.customGenre.present ? data.customGenre.value : this.customGenre,
      customStatus: data.customStatus.present
          ? data.customStatus.value
          : this.customStatus,
      localCoverPath: data.localCoverPath.present
          ? data.localCoverPath.value
          : this.localCoverPath,
      windowReadingMode: data.windowReadingMode.present
          ? data.windowReadingMode.value
          : this.windowReadingMode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbManga(')
          ..write('id: $id, ')
          ..write('url: $url, ')
          ..write('title: $title, ')
          ..write('artist: $artist, ')
          ..write('author: $author, ')
          ..write('description: $description, ')
          ..write('genre: $genre, ')
          ..write('thumbnailUrl: $thumbnailUrl, ')
          ..write('status: $status, ')
          ..write('favorite: $favorite, ')
          ..write('source: $source, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('viewerFlags: $viewerFlags, ')
          ..write('chapterFlags: $chapterFlags, ')
          ..write('coverLastModified: $coverLastModified, ')
          ..write('customTitle: $customTitle, ')
          ..write('customArtist: $customArtist, ')
          ..write('customAuthor: $customAuthor, ')
          ..write('customDescription: $customDescription, ')
          ..write('customGenre: $customGenre, ')
          ..write('customStatus: $customStatus, ')
          ..write('localCoverPath: $localCoverPath, ')
          ..write('windowReadingMode: $windowReadingMode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        url,
        title,
        artist,
        author,
        description,
        genre,
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
        customGenre,
        customStatus,
        localCoverPath,
        windowReadingMode
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbManga &&
          other.id == this.id &&
          other.url == this.url &&
          other.title == this.title &&
          other.artist == this.artist &&
          other.author == this.author &&
          other.description == this.description &&
          other.genre == this.genre &&
          other.thumbnailUrl == this.thumbnailUrl &&
          other.status == this.status &&
          other.favorite == this.favorite &&
          other.source == this.source &&
          other.lastUpdate == this.lastUpdate &&
          other.dateAdded == this.dateAdded &&
          other.viewerFlags == this.viewerFlags &&
          other.chapterFlags == this.chapterFlags &&
          other.coverLastModified == this.coverLastModified &&
          other.customTitle == this.customTitle &&
          other.customArtist == this.customArtist &&
          other.customAuthor == this.customAuthor &&
          other.customDescription == this.customDescription &&
          other.customGenre == this.customGenre &&
          other.customStatus == this.customStatus &&
          other.localCoverPath == this.localCoverPath &&
          other.windowReadingMode == this.windowReadingMode);
}

class MangasCompanion extends UpdateCompanion<DbManga> {
  final Value<int> id;
  final Value<String> url;
  final Value<String> title;
  final Value<String?> artist;
  final Value<String?> author;
  final Value<String?> description;
  final Value<String> genre;
  final Value<String?> thumbnailUrl;
  final Value<int> status;
  final Value<bool> favorite;
  final Value<String> source;
  final Value<int?> lastUpdate;
  final Value<int?> dateAdded;
  final Value<int> viewerFlags;
  final Value<int> chapterFlags;
  final Value<int> coverLastModified;
  final Value<String?> customTitle;
  final Value<String?> customArtist;
  final Value<String?> customAuthor;
  final Value<String?> customDescription;
  final Value<String?> customGenre;
  final Value<int?> customStatus;
  final Value<String?> localCoverPath;
  final Value<int?> windowReadingMode;
  const MangasCompanion({
    this.id = const Value.absent(),
    this.url = const Value.absent(),
    this.title = const Value.absent(),
    this.artist = const Value.absent(),
    this.author = const Value.absent(),
    this.description = const Value.absent(),
    this.genre = const Value.absent(),
    this.thumbnailUrl = const Value.absent(),
    this.status = const Value.absent(),
    this.favorite = const Value.absent(),
    this.source = const Value.absent(),
    this.lastUpdate = const Value.absent(),
    this.dateAdded = const Value.absent(),
    this.viewerFlags = const Value.absent(),
    this.chapterFlags = const Value.absent(),
    this.coverLastModified = const Value.absent(),
    this.customTitle = const Value.absent(),
    this.customArtist = const Value.absent(),
    this.customAuthor = const Value.absent(),
    this.customDescription = const Value.absent(),
    this.customGenre = const Value.absent(),
    this.customStatus = const Value.absent(),
    this.localCoverPath = const Value.absent(),
    this.windowReadingMode = const Value.absent(),
  });
  MangasCompanion.insert({
    this.id = const Value.absent(),
    required String url,
    required String title,
    this.artist = const Value.absent(),
    this.author = const Value.absent(),
    this.description = const Value.absent(),
    this.genre = const Value.absent(),
    this.thumbnailUrl = const Value.absent(),
    this.status = const Value.absent(),
    this.favorite = const Value.absent(),
    required String source,
    this.lastUpdate = const Value.absent(),
    this.dateAdded = const Value.absent(),
    this.viewerFlags = const Value.absent(),
    this.chapterFlags = const Value.absent(),
    this.coverLastModified = const Value.absent(),
    this.customTitle = const Value.absent(),
    this.customArtist = const Value.absent(),
    this.customAuthor = const Value.absent(),
    this.customDescription = const Value.absent(),
    this.customGenre = const Value.absent(),
    this.customStatus = const Value.absent(),
    this.localCoverPath = const Value.absent(),
    this.windowReadingMode = const Value.absent(),
  })  : url = Value(url),
        title = Value(title),
        source = Value(source);
  static Insertable<DbManga> custom({
    Expression<int>? id,
    Expression<String>? url,
    Expression<String>? title,
    Expression<String>? artist,
    Expression<String>? author,
    Expression<String>? description,
    Expression<String>? genre,
    Expression<String>? thumbnailUrl,
    Expression<int>? status,
    Expression<bool>? favorite,
    Expression<String>? source,
    Expression<int>? lastUpdate,
    Expression<int>? dateAdded,
    Expression<int>? viewerFlags,
    Expression<int>? chapterFlags,
    Expression<int>? coverLastModified,
    Expression<String>? customTitle,
    Expression<String>? customArtist,
    Expression<String>? customAuthor,
    Expression<String>? customDescription,
    Expression<String>? customGenre,
    Expression<int>? customStatus,
    Expression<String>? localCoverPath,
    Expression<int>? windowReadingMode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (url != null) 'url': url,
      if (title != null) 'title': title,
      if (artist != null) 'artist': artist,
      if (author != null) 'author': author,
      if (description != null) 'description': description,
      if (genre != null) 'genre': genre,
      if (thumbnailUrl != null) 'thumbnail_url': thumbnailUrl,
      if (status != null) 'status': status,
      if (favorite != null) 'favorite': favorite,
      if (source != null) 'source': source,
      if (lastUpdate != null) 'last_update': lastUpdate,
      if (dateAdded != null) 'date_added': dateAdded,
      if (viewerFlags != null) 'viewer_flags': viewerFlags,
      if (chapterFlags != null) 'chapter_flags': chapterFlags,
      if (coverLastModified != null) 'cover_last_modified': coverLastModified,
      if (customTitle != null) 'custom_title': customTitle,
      if (customArtist != null) 'custom_artist': customArtist,
      if (customAuthor != null) 'custom_author': customAuthor,
      if (customDescription != null) 'custom_description': customDescription,
      if (customGenre != null) 'custom_genre': customGenre,
      if (customStatus != null) 'custom_status': customStatus,
      if (localCoverPath != null) 'local_cover_path': localCoverPath,
      if (windowReadingMode != null) 'window_reading_mode': windowReadingMode,
    });
  }

  MangasCompanion copyWith(
      {Value<int>? id,
      Value<String>? url,
      Value<String>? title,
      Value<String?>? artist,
      Value<String?>? author,
      Value<String?>? description,
      Value<String>? genre,
      Value<String?>? thumbnailUrl,
      Value<int>? status,
      Value<bool>? favorite,
      Value<String>? source,
      Value<int?>? lastUpdate,
      Value<int?>? dateAdded,
      Value<int>? viewerFlags,
      Value<int>? chapterFlags,
      Value<int>? coverLastModified,
      Value<String?>? customTitle,
      Value<String?>? customArtist,
      Value<String?>? customAuthor,
      Value<String?>? customDescription,
      Value<String?>? customGenre,
      Value<int?>? customStatus,
      Value<String?>? localCoverPath,
      Value<int?>? windowReadingMode}) {
    return MangasCompanion(
      id: id ?? this.id,
      url: url ?? this.url,
      title: title ?? this.title,
      artist: artist ?? this.artist,
      author: author ?? this.author,
      description: description ?? this.description,
      genre: genre ?? this.genre,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      status: status ?? this.status,
      favorite: favorite ?? this.favorite,
      source: source ?? this.source,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      dateAdded: dateAdded ?? this.dateAdded,
      viewerFlags: viewerFlags ?? this.viewerFlags,
      chapterFlags: chapterFlags ?? this.chapterFlags,
      coverLastModified: coverLastModified ?? this.coverLastModified,
      customTitle: customTitle ?? this.customTitle,
      customArtist: customArtist ?? this.customArtist,
      customAuthor: customAuthor ?? this.customAuthor,
      customDescription: customDescription ?? this.customDescription,
      customGenre: customGenre ?? this.customGenre,
      customStatus: customStatus ?? this.customStatus,
      localCoverPath: localCoverPath ?? this.localCoverPath,
      windowReadingMode: windowReadingMode ?? this.windowReadingMode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (artist.present) {
      map['artist'] = Variable<String>(artist.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (genre.present) {
      map['genre'] = Variable<String>(genre.value);
    }
    if (thumbnailUrl.present) {
      map['thumbnail_url'] = Variable<String>(thumbnailUrl.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<bool>(favorite.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (lastUpdate.present) {
      map['last_update'] = Variable<int>(lastUpdate.value);
    }
    if (dateAdded.present) {
      map['date_added'] = Variable<int>(dateAdded.value);
    }
    if (viewerFlags.present) {
      map['viewer_flags'] = Variable<int>(viewerFlags.value);
    }
    if (chapterFlags.present) {
      map['chapter_flags'] = Variable<int>(chapterFlags.value);
    }
    if (coverLastModified.present) {
      map['cover_last_modified'] = Variable<int>(coverLastModified.value);
    }
    if (customTitle.present) {
      map['custom_title'] = Variable<String>(customTitle.value);
    }
    if (customArtist.present) {
      map['custom_artist'] = Variable<String>(customArtist.value);
    }
    if (customAuthor.present) {
      map['custom_author'] = Variable<String>(customAuthor.value);
    }
    if (customDescription.present) {
      map['custom_description'] = Variable<String>(customDescription.value);
    }
    if (customGenre.present) {
      map['custom_genre'] = Variable<String>(customGenre.value);
    }
    if (customStatus.present) {
      map['custom_status'] = Variable<int>(customStatus.value);
    }
    if (localCoverPath.present) {
      map['local_cover_path'] = Variable<String>(localCoverPath.value);
    }
    if (windowReadingMode.present) {
      map['window_reading_mode'] = Variable<int>(windowReadingMode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MangasCompanion(')
          ..write('id: $id, ')
          ..write('url: $url, ')
          ..write('title: $title, ')
          ..write('artist: $artist, ')
          ..write('author: $author, ')
          ..write('description: $description, ')
          ..write('genre: $genre, ')
          ..write('thumbnailUrl: $thumbnailUrl, ')
          ..write('status: $status, ')
          ..write('favorite: $favorite, ')
          ..write('source: $source, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('viewerFlags: $viewerFlags, ')
          ..write('chapterFlags: $chapterFlags, ')
          ..write('coverLastModified: $coverLastModified, ')
          ..write('customTitle: $customTitle, ')
          ..write('customArtist: $customArtist, ')
          ..write('customAuthor: $customAuthor, ')
          ..write('customDescription: $customDescription, ')
          ..write('customGenre: $customGenre, ')
          ..write('customStatus: $customStatus, ')
          ..write('localCoverPath: $localCoverPath, ')
          ..write('windowReadingMode: $windowReadingMode')
          ..write(')'))
        .toString();
  }
}

class $ChaptersTable extends Chapters
    with TableInfo<$ChaptersTable, DbChapter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChaptersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _mangaIdMeta =
      const VerificationMeta('mangaId');
  @override
  late final GeneratedColumn<int> mangaId = GeneratedColumn<int>(
      'manga_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _scanlatorMeta =
      const VerificationMeta('scanlator');
  @override
  late final GeneratedColumn<String> scanlator = GeneratedColumn<String>(
      'scanlator', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _readMeta = const VerificationMeta('read');
  @override
  late final GeneratedColumn<bool> read = GeneratedColumn<bool>(
      'read', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("read" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _bookmarkMeta =
      const VerificationMeta('bookmark');
  @override
  late final GeneratedColumn<bool> bookmark = GeneratedColumn<bool>(
      'bookmark', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("bookmark" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _lastPageReadMeta =
      const VerificationMeta('lastPageRead');
  @override
  late final GeneratedColumn<int> lastPageRead = GeneratedColumn<int>(
      'last_page_read', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _dateFetchMeta =
      const VerificationMeta('dateFetch');
  @override
  late final GeneratedColumn<int> dateFetch = GeneratedColumn<int>(
      'date_fetch', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _dateUploadMeta =
      const VerificationMeta('dateUpload');
  @override
  late final GeneratedColumn<int> dateUpload = GeneratedColumn<int>(
      'date_upload', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _chapterNumberMeta =
      const VerificationMeta('chapterNumber');
  @override
  late final GeneratedColumn<double> chapterNumber = GeneratedColumn<double>(
      'chapter_number', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _sourceOrderMeta =
      const VerificationMeta('sourceOrder');
  @override
  late final GeneratedColumn<int> sourceOrder = GeneratedColumn<int>(
      'source_order', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _totalPageCountMeta =
      const VerificationMeta('totalPageCount');
  @override
  late final GeneratedColumn<int> totalPageCount = GeneratedColumn<int>(
      'total_page_count', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _downloadPathMeta =
      const VerificationMeta('downloadPath');
  @override
  late final GeneratedColumn<String> downloadPath = GeneratedColumn<String>(
      'download_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
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
        downloadPath
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'chapters';
  @override
  VerificationContext validateIntegrity(Insertable<DbChapter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('manga_id')) {
      context.handle(_mangaIdMeta,
          mangaId.isAcceptableOrUnknown(data['manga_id']!, _mangaIdMeta));
    } else if (isInserting) {
      context.missing(_mangaIdMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('scanlator')) {
      context.handle(_scanlatorMeta,
          scanlator.isAcceptableOrUnknown(data['scanlator']!, _scanlatorMeta));
    }
    if (data.containsKey('read')) {
      context.handle(
          _readMeta, read.isAcceptableOrUnknown(data['read']!, _readMeta));
    }
    if (data.containsKey('bookmark')) {
      context.handle(_bookmarkMeta,
          bookmark.isAcceptableOrUnknown(data['bookmark']!, _bookmarkMeta));
    }
    if (data.containsKey('last_page_read')) {
      context.handle(
          _lastPageReadMeta,
          lastPageRead.isAcceptableOrUnknown(
              data['last_page_read']!, _lastPageReadMeta));
    }
    if (data.containsKey('date_fetch')) {
      context.handle(_dateFetchMeta,
          dateFetch.isAcceptableOrUnknown(data['date_fetch']!, _dateFetchMeta));
    }
    if (data.containsKey('date_upload')) {
      context.handle(
          _dateUploadMeta,
          dateUpload.isAcceptableOrUnknown(
              data['date_upload']!, _dateUploadMeta));
    }
    if (data.containsKey('chapter_number')) {
      context.handle(
          _chapterNumberMeta,
          chapterNumber.isAcceptableOrUnknown(
              data['chapter_number']!, _chapterNumberMeta));
    }
    if (data.containsKey('source_order')) {
      context.handle(
          _sourceOrderMeta,
          sourceOrder.isAcceptableOrUnknown(
              data['source_order']!, _sourceOrderMeta));
    }
    if (data.containsKey('total_page_count')) {
      context.handle(
          _totalPageCountMeta,
          totalPageCount.isAcceptableOrUnknown(
              data['total_page_count']!, _totalPageCountMeta));
    }
    if (data.containsKey('download_path')) {
      context.handle(
          _downloadPathMeta,
          downloadPath.isAcceptableOrUnknown(
              data['download_path']!, _downloadPathMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbChapter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbChapter(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      mangaId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}manga_id'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      scanlator: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scanlator']),
      read: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}read'])!,
      bookmark: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}bookmark'])!,
      lastPageRead: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_page_read']),
      dateFetch: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date_fetch']),
      dateUpload: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date_upload']),
      chapterNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}chapter_number'])!,
      sourceOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}source_order'])!,
      totalPageCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_page_count']),
      downloadPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}download_path']),
    );
  }

  @override
  $ChaptersTable createAlias(String alias) {
    return $ChaptersTable(attachedDatabase, alias);
  }
}

class DbChapter extends DataClass implements Insertable<DbChapter> {
  final int id;
  final int mangaId;
  final String url;
  final String name;
  final String? scanlator;
  final bool read;
  final bool bookmark;
  final int? lastPageRead;
  final int? dateFetch;
  final int? dateUpload;
  final double chapterNumber;
  final int sourceOrder;
  final int? totalPageCount;
  final String? downloadPath;
  const DbChapter(
      {required this.id,
      required this.mangaId,
      required this.url,
      required this.name,
      this.scanlator,
      required this.read,
      required this.bookmark,
      this.lastPageRead,
      this.dateFetch,
      this.dateUpload,
      required this.chapterNumber,
      required this.sourceOrder,
      this.totalPageCount,
      this.downloadPath});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['manga_id'] = Variable<int>(mangaId);
    map['url'] = Variable<String>(url);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || scanlator != null) {
      map['scanlator'] = Variable<String>(scanlator);
    }
    map['read'] = Variable<bool>(read);
    map['bookmark'] = Variable<bool>(bookmark);
    if (!nullToAbsent || lastPageRead != null) {
      map['last_page_read'] = Variable<int>(lastPageRead);
    }
    if (!nullToAbsent || dateFetch != null) {
      map['date_fetch'] = Variable<int>(dateFetch);
    }
    if (!nullToAbsent || dateUpload != null) {
      map['date_upload'] = Variable<int>(dateUpload);
    }
    map['chapter_number'] = Variable<double>(chapterNumber);
    map['source_order'] = Variable<int>(sourceOrder);
    if (!nullToAbsent || totalPageCount != null) {
      map['total_page_count'] = Variable<int>(totalPageCount);
    }
    if (!nullToAbsent || downloadPath != null) {
      map['download_path'] = Variable<String>(downloadPath);
    }
    return map;
  }

  ChaptersCompanion toCompanion(bool nullToAbsent) {
    return ChaptersCompanion(
      id: Value(id),
      mangaId: Value(mangaId),
      url: Value(url),
      name: Value(name),
      scanlator: scanlator == null && nullToAbsent
          ? const Value.absent()
          : Value(scanlator),
      read: Value(read),
      bookmark: Value(bookmark),
      lastPageRead: lastPageRead == null && nullToAbsent
          ? const Value.absent()
          : Value(lastPageRead),
      dateFetch: dateFetch == null && nullToAbsent
          ? const Value.absent()
          : Value(dateFetch),
      dateUpload: dateUpload == null && nullToAbsent
          ? const Value.absent()
          : Value(dateUpload),
      chapterNumber: Value(chapterNumber),
      sourceOrder: Value(sourceOrder),
      totalPageCount: totalPageCount == null && nullToAbsent
          ? const Value.absent()
          : Value(totalPageCount),
      downloadPath: downloadPath == null && nullToAbsent
          ? const Value.absent()
          : Value(downloadPath),
    );
  }

  factory DbChapter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbChapter(
      id: serializer.fromJson<int>(json['id']),
      mangaId: serializer.fromJson<int>(json['mangaId']),
      url: serializer.fromJson<String>(json['url']),
      name: serializer.fromJson<String>(json['name']),
      scanlator: serializer.fromJson<String?>(json['scanlator']),
      read: serializer.fromJson<bool>(json['read']),
      bookmark: serializer.fromJson<bool>(json['bookmark']),
      lastPageRead: serializer.fromJson<int?>(json['lastPageRead']),
      dateFetch: serializer.fromJson<int?>(json['dateFetch']),
      dateUpload: serializer.fromJson<int?>(json['dateUpload']),
      chapterNumber: serializer.fromJson<double>(json['chapterNumber']),
      sourceOrder: serializer.fromJson<int>(json['sourceOrder']),
      totalPageCount: serializer.fromJson<int?>(json['totalPageCount']),
      downloadPath: serializer.fromJson<String?>(json['downloadPath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'mangaId': serializer.toJson<int>(mangaId),
      'url': serializer.toJson<String>(url),
      'name': serializer.toJson<String>(name),
      'scanlator': serializer.toJson<String?>(scanlator),
      'read': serializer.toJson<bool>(read),
      'bookmark': serializer.toJson<bool>(bookmark),
      'lastPageRead': serializer.toJson<int?>(lastPageRead),
      'dateFetch': serializer.toJson<int?>(dateFetch),
      'dateUpload': serializer.toJson<int?>(dateUpload),
      'chapterNumber': serializer.toJson<double>(chapterNumber),
      'sourceOrder': serializer.toJson<int>(sourceOrder),
      'totalPageCount': serializer.toJson<int?>(totalPageCount),
      'downloadPath': serializer.toJson<String?>(downloadPath),
    };
  }

  DbChapter copyWith(
          {int? id,
          int? mangaId,
          String? url,
          String? name,
          Value<String?> scanlator = const Value.absent(),
          bool? read,
          bool? bookmark,
          Value<int?> lastPageRead = const Value.absent(),
          Value<int?> dateFetch = const Value.absent(),
          Value<int?> dateUpload = const Value.absent(),
          double? chapterNumber,
          int? sourceOrder,
          Value<int?> totalPageCount = const Value.absent(),
          Value<String?> downloadPath = const Value.absent()}) =>
      DbChapter(
        id: id ?? this.id,
        mangaId: mangaId ?? this.mangaId,
        url: url ?? this.url,
        name: name ?? this.name,
        scanlator: scanlator.present ? scanlator.value : this.scanlator,
        read: read ?? this.read,
        bookmark: bookmark ?? this.bookmark,
        lastPageRead:
            lastPageRead.present ? lastPageRead.value : this.lastPageRead,
        dateFetch: dateFetch.present ? dateFetch.value : this.dateFetch,
        dateUpload: dateUpload.present ? dateUpload.value : this.dateUpload,
        chapterNumber: chapterNumber ?? this.chapterNumber,
        sourceOrder: sourceOrder ?? this.sourceOrder,
        totalPageCount:
            totalPageCount.present ? totalPageCount.value : this.totalPageCount,
        downloadPath:
            downloadPath.present ? downloadPath.value : this.downloadPath,
      );
  DbChapter copyWithCompanion(ChaptersCompanion data) {
    return DbChapter(
      id: data.id.present ? data.id.value : this.id,
      mangaId: data.mangaId.present ? data.mangaId.value : this.mangaId,
      url: data.url.present ? data.url.value : this.url,
      name: data.name.present ? data.name.value : this.name,
      scanlator: data.scanlator.present ? data.scanlator.value : this.scanlator,
      read: data.read.present ? data.read.value : this.read,
      bookmark: data.bookmark.present ? data.bookmark.value : this.bookmark,
      lastPageRead: data.lastPageRead.present
          ? data.lastPageRead.value
          : this.lastPageRead,
      dateFetch: data.dateFetch.present ? data.dateFetch.value : this.dateFetch,
      dateUpload:
          data.dateUpload.present ? data.dateUpload.value : this.dateUpload,
      chapterNumber: data.chapterNumber.present
          ? data.chapterNumber.value
          : this.chapterNumber,
      sourceOrder:
          data.sourceOrder.present ? data.sourceOrder.value : this.sourceOrder,
      totalPageCount: data.totalPageCount.present
          ? data.totalPageCount.value
          : this.totalPageCount,
      downloadPath: data.downloadPath.present
          ? data.downloadPath.value
          : this.downloadPath,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbChapter(')
          ..write('id: $id, ')
          ..write('mangaId: $mangaId, ')
          ..write('url: $url, ')
          ..write('name: $name, ')
          ..write('scanlator: $scanlator, ')
          ..write('read: $read, ')
          ..write('bookmark: $bookmark, ')
          ..write('lastPageRead: $lastPageRead, ')
          ..write('dateFetch: $dateFetch, ')
          ..write('dateUpload: $dateUpload, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('sourceOrder: $sourceOrder, ')
          ..write('totalPageCount: $totalPageCount, ')
          ..write('downloadPath: $downloadPath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
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
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbChapter &&
          other.id == this.id &&
          other.mangaId == this.mangaId &&
          other.url == this.url &&
          other.name == this.name &&
          other.scanlator == this.scanlator &&
          other.read == this.read &&
          other.bookmark == this.bookmark &&
          other.lastPageRead == this.lastPageRead &&
          other.dateFetch == this.dateFetch &&
          other.dateUpload == this.dateUpload &&
          other.chapterNumber == this.chapterNumber &&
          other.sourceOrder == this.sourceOrder &&
          other.totalPageCount == this.totalPageCount &&
          other.downloadPath == this.downloadPath);
}

class ChaptersCompanion extends UpdateCompanion<DbChapter> {
  final Value<int> id;
  final Value<int> mangaId;
  final Value<String> url;
  final Value<String> name;
  final Value<String?> scanlator;
  final Value<bool> read;
  final Value<bool> bookmark;
  final Value<int?> lastPageRead;
  final Value<int?> dateFetch;
  final Value<int?> dateUpload;
  final Value<double> chapterNumber;
  final Value<int> sourceOrder;
  final Value<int?> totalPageCount;
  final Value<String?> downloadPath;
  const ChaptersCompanion({
    this.id = const Value.absent(),
    this.mangaId = const Value.absent(),
    this.url = const Value.absent(),
    this.name = const Value.absent(),
    this.scanlator = const Value.absent(),
    this.read = const Value.absent(),
    this.bookmark = const Value.absent(),
    this.lastPageRead = const Value.absent(),
    this.dateFetch = const Value.absent(),
    this.dateUpload = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.sourceOrder = const Value.absent(),
    this.totalPageCount = const Value.absent(),
    this.downloadPath = const Value.absent(),
  });
  ChaptersCompanion.insert({
    this.id = const Value.absent(),
    required int mangaId,
    required String url,
    required String name,
    this.scanlator = const Value.absent(),
    this.read = const Value.absent(),
    this.bookmark = const Value.absent(),
    this.lastPageRead = const Value.absent(),
    this.dateFetch = const Value.absent(),
    this.dateUpload = const Value.absent(),
    this.chapterNumber = const Value.absent(),
    this.sourceOrder = const Value.absent(),
    this.totalPageCount = const Value.absent(),
    this.downloadPath = const Value.absent(),
  })  : mangaId = Value(mangaId),
        url = Value(url),
        name = Value(name);
  static Insertable<DbChapter> custom({
    Expression<int>? id,
    Expression<int>? mangaId,
    Expression<String>? url,
    Expression<String>? name,
    Expression<String>? scanlator,
    Expression<bool>? read,
    Expression<bool>? bookmark,
    Expression<int>? lastPageRead,
    Expression<int>? dateFetch,
    Expression<int>? dateUpload,
    Expression<double>? chapterNumber,
    Expression<int>? sourceOrder,
    Expression<int>? totalPageCount,
    Expression<String>? downloadPath,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (mangaId != null) 'manga_id': mangaId,
      if (url != null) 'url': url,
      if (name != null) 'name': name,
      if (scanlator != null) 'scanlator': scanlator,
      if (read != null) 'read': read,
      if (bookmark != null) 'bookmark': bookmark,
      if (lastPageRead != null) 'last_page_read': lastPageRead,
      if (dateFetch != null) 'date_fetch': dateFetch,
      if (dateUpload != null) 'date_upload': dateUpload,
      if (chapterNumber != null) 'chapter_number': chapterNumber,
      if (sourceOrder != null) 'source_order': sourceOrder,
      if (totalPageCount != null) 'total_page_count': totalPageCount,
      if (downloadPath != null) 'download_path': downloadPath,
    });
  }

  ChaptersCompanion copyWith(
      {Value<int>? id,
      Value<int>? mangaId,
      Value<String>? url,
      Value<String>? name,
      Value<String?>? scanlator,
      Value<bool>? read,
      Value<bool>? bookmark,
      Value<int?>? lastPageRead,
      Value<int?>? dateFetch,
      Value<int?>? dateUpload,
      Value<double>? chapterNumber,
      Value<int>? sourceOrder,
      Value<int?>? totalPageCount,
      Value<String?>? downloadPath}) {
    return ChaptersCompanion(
      id: id ?? this.id,
      mangaId: mangaId ?? this.mangaId,
      url: url ?? this.url,
      name: name ?? this.name,
      scanlator: scanlator ?? this.scanlator,
      read: read ?? this.read,
      bookmark: bookmark ?? this.bookmark,
      lastPageRead: lastPageRead ?? this.lastPageRead,
      dateFetch: dateFetch ?? this.dateFetch,
      dateUpload: dateUpload ?? this.dateUpload,
      chapterNumber: chapterNumber ?? this.chapterNumber,
      sourceOrder: sourceOrder ?? this.sourceOrder,
      totalPageCount: totalPageCount ?? this.totalPageCount,
      downloadPath: downloadPath ?? this.downloadPath,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (mangaId.present) {
      map['manga_id'] = Variable<int>(mangaId.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (scanlator.present) {
      map['scanlator'] = Variable<String>(scanlator.value);
    }
    if (read.present) {
      map['read'] = Variable<bool>(read.value);
    }
    if (bookmark.present) {
      map['bookmark'] = Variable<bool>(bookmark.value);
    }
    if (lastPageRead.present) {
      map['last_page_read'] = Variable<int>(lastPageRead.value);
    }
    if (dateFetch.present) {
      map['date_fetch'] = Variable<int>(dateFetch.value);
    }
    if (dateUpload.present) {
      map['date_upload'] = Variable<int>(dateUpload.value);
    }
    if (chapterNumber.present) {
      map['chapter_number'] = Variable<double>(chapterNumber.value);
    }
    if (sourceOrder.present) {
      map['source_order'] = Variable<int>(sourceOrder.value);
    }
    if (totalPageCount.present) {
      map['total_page_count'] = Variable<int>(totalPageCount.value);
    }
    if (downloadPath.present) {
      map['download_path'] = Variable<String>(downloadPath.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChaptersCompanion(')
          ..write('id: $id, ')
          ..write('mangaId: $mangaId, ')
          ..write('url: $url, ')
          ..write('name: $name, ')
          ..write('scanlator: $scanlator, ')
          ..write('read: $read, ')
          ..write('bookmark: $bookmark, ')
          ..write('lastPageRead: $lastPageRead, ')
          ..write('dateFetch: $dateFetch, ')
          ..write('dateUpload: $dateUpload, ')
          ..write('chapterNumber: $chapterNumber, ')
          ..write('sourceOrder: $sourceOrder, ')
          ..write('totalPageCount: $totalPageCount, ')
          ..write('downloadPath: $downloadPath')
          ..write(')'))
        .toString();
  }
}

class $PagesTable extends Pages with TableInfo<$PagesTable, DbPage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _indexMeta = const VerificationMeta('index');
  @override
  late final GeneratedColumn<int> index = GeneratedColumn<int>(
      'index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _localPathMeta =
      const VerificationMeta('localPath');
  @override
  late final GeneratedColumn<String> localPath = GeneratedColumn<String>(
      'local_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<int> width = GeneratedColumn<int>(
      'width', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
      'height', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, chapterId, index, url, imageUrl, localPath, status, width, height];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pages';
  @override
  VerificationContext validateIntegrity(Insertable<DbPage> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('index')) {
      context.handle(
          _indexMeta, index.isAcceptableOrUnknown(data['index']!, _indexMeta));
    } else if (isInserting) {
      context.missing(_indexMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    if (data.containsKey('local_path')) {
      context.handle(_localPathMeta,
          localPath.isAcceptableOrUnknown(data['local_path']!, _localPathMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbPage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbPage(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      index: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}index'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url']),
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      localPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_path']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}width']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}height']),
    );
  }

  @override
  $PagesTable createAlias(String alias) {
    return $PagesTable(attachedDatabase, alias);
  }
}

class DbPage extends DataClass implements Insertable<DbPage> {
  final int id;
  final int chapterId;
  final int index;
  final String? url;
  final String? imageUrl;
  final String? localPath;
  final int status;
  final int? width;
  final int? height;
  const DbPage(
      {required this.id,
      required this.chapterId,
      required this.index,
      this.url,
      this.imageUrl,
      this.localPath,
      required this.status,
      this.width,
      this.height});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['chapter_id'] = Variable<int>(chapterId);
    map['index'] = Variable<int>(index);
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || localPath != null) {
      map['local_path'] = Variable<String>(localPath);
    }
    map['status'] = Variable<int>(status);
    if (!nullToAbsent || width != null) {
      map['width'] = Variable<int>(width);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int>(height);
    }
    return map;
  }

  PagesCompanion toCompanion(bool nullToAbsent) {
    return PagesCompanion(
      id: Value(id),
      chapterId: Value(chapterId),
      index: Value(index),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      localPath: localPath == null && nullToAbsent
          ? const Value.absent()
          : Value(localPath),
      status: Value(status),
      width:
          width == null && nullToAbsent ? const Value.absent() : Value(width),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
    );
  }

  factory DbPage.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbPage(
      id: serializer.fromJson<int>(json['id']),
      chapterId: serializer.fromJson<int>(json['chapterId']),
      index: serializer.fromJson<int>(json['index']),
      url: serializer.fromJson<String?>(json['url']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      localPath: serializer.fromJson<String?>(json['localPath']),
      status: serializer.fromJson<int>(json['status']),
      width: serializer.fromJson<int?>(json['width']),
      height: serializer.fromJson<int?>(json['height']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'chapterId': serializer.toJson<int>(chapterId),
      'index': serializer.toJson<int>(index),
      'url': serializer.toJson<String?>(url),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'localPath': serializer.toJson<String?>(localPath),
      'status': serializer.toJson<int>(status),
      'width': serializer.toJson<int?>(width),
      'height': serializer.toJson<int?>(height),
    };
  }

  DbPage copyWith(
          {int? id,
          int? chapterId,
          int? index,
          Value<String?> url = const Value.absent(),
          Value<String?> imageUrl = const Value.absent(),
          Value<String?> localPath = const Value.absent(),
          int? status,
          Value<int?> width = const Value.absent(),
          Value<int?> height = const Value.absent()}) =>
      DbPage(
        id: id ?? this.id,
        chapterId: chapterId ?? this.chapterId,
        index: index ?? this.index,
        url: url.present ? url.value : this.url,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        localPath: localPath.present ? localPath.value : this.localPath,
        status: status ?? this.status,
        width: width.present ? width.value : this.width,
        height: height.present ? height.value : this.height,
      );
  DbPage copyWithCompanion(PagesCompanion data) {
    return DbPage(
      id: data.id.present ? data.id.value : this.id,
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      index: data.index.present ? data.index.value : this.index,
      url: data.url.present ? data.url.value : this.url,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      localPath: data.localPath.present ? data.localPath.value : this.localPath,
      status: data.status.present ? data.status.value : this.status,
      width: data.width.present ? data.width.value : this.width,
      height: data.height.present ? data.height.value : this.height,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbPage(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('index: $index, ')
          ..write('url: $url, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('localPath: $localPath, ')
          ..write('status: $status, ')
          ..write('width: $width, ')
          ..write('height: $height')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, chapterId, index, url, imageUrl, localPath, status, width, height);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbPage &&
          other.id == this.id &&
          other.chapterId == this.chapterId &&
          other.index == this.index &&
          other.url == this.url &&
          other.imageUrl == this.imageUrl &&
          other.localPath == this.localPath &&
          other.status == this.status &&
          other.width == this.width &&
          other.height == this.height);
}

class PagesCompanion extends UpdateCompanion<DbPage> {
  final Value<int> id;
  final Value<int> chapterId;
  final Value<int> index;
  final Value<String?> url;
  final Value<String?> imageUrl;
  final Value<String?> localPath;
  final Value<int> status;
  final Value<int?> width;
  final Value<int?> height;
  const PagesCompanion({
    this.id = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.index = const Value.absent(),
    this.url = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.localPath = const Value.absent(),
    this.status = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
  });
  PagesCompanion.insert({
    this.id = const Value.absent(),
    required int chapterId,
    required int index,
    this.url = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.localPath = const Value.absent(),
    this.status = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
  })  : chapterId = Value(chapterId),
        index = Value(index);
  static Insertable<DbPage> custom({
    Expression<int>? id,
    Expression<int>? chapterId,
    Expression<int>? index,
    Expression<String>? url,
    Expression<String>? imageUrl,
    Expression<String>? localPath,
    Expression<int>? status,
    Expression<int>? width,
    Expression<int>? height,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (chapterId != null) 'chapter_id': chapterId,
      if (index != null) 'index': index,
      if (url != null) 'url': url,
      if (imageUrl != null) 'image_url': imageUrl,
      if (localPath != null) 'local_path': localPath,
      if (status != null) 'status': status,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
    });
  }

  PagesCompanion copyWith(
      {Value<int>? id,
      Value<int>? chapterId,
      Value<int>? index,
      Value<String?>? url,
      Value<String?>? imageUrl,
      Value<String?>? localPath,
      Value<int>? status,
      Value<int?>? width,
      Value<int?>? height}) {
    return PagesCompanion(
      id: id ?? this.id,
      chapterId: chapterId ?? this.chapterId,
      index: index ?? this.index,
      url: url ?? this.url,
      imageUrl: imageUrl ?? this.imageUrl,
      localPath: localPath ?? this.localPath,
      status: status ?? this.status,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (index.present) {
      map['index'] = Variable<int>(index.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (localPath.present) {
      map['local_path'] = Variable<String>(localPath.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (width.present) {
      map['width'] = Variable<int>(width.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PagesCompanion(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('index: $index, ')
          ..write('url: $url, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('localPath: $localPath, ')
          ..write('status: $status, ')
          ..write('width: $width, ')
          ..write('height: $height')
          ..write(')'))
        .toString();
  }
}

class $ExtensionsTable extends Extensions
    with TableInfo<$ExtensionsTable, DbExtension> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExtensionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pkgNameMeta =
      const VerificationMeta('pkgName');
  @override
  late final GeneratedColumn<String> pkgName = GeneratedColumn<String>(
      'pkg_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _versionNameMeta =
      const VerificationMeta('versionName');
  @override
  late final GeneratedColumn<String> versionName = GeneratedColumn<String>(
      'version_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _versionCodeMeta =
      const VerificationMeta('versionCode');
  @override
  late final GeneratedColumn<int> versionCode = GeneratedColumn<int>(
      'version_code', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _langMeta = const VerificationMeta('lang');
  @override
  late final GeneratedColumn<String> lang = GeneratedColumn<String>(
      'lang', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isNsfwMeta = const VerificationMeta('isNsfw');
  @override
  late final GeneratedColumn<bool> isNsfw = GeneratedColumn<bool>(
      'is_nsfw', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_nsfw" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _apkPathMeta =
      const VerificationMeta('apkPath');
  @override
  late final GeneratedColumn<String> apkPath = GeneratedColumn<String>(
      'apk_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _iconPathMeta =
      const VerificationMeta('iconPath');
  @override
  late final GeneratedColumn<String> iconPath = GeneratedColumn<String>(
      'icon_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        pkgName,
        name,
        versionName,
        versionCode,
        lang,
        description,
        isNsfw,
        apkPath,
        status,
        iconPath
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'extensions';
  @override
  VerificationContext validateIntegrity(Insertable<DbExtension> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pkg_name')) {
      context.handle(_pkgNameMeta,
          pkgName.isAcceptableOrUnknown(data['pkg_name']!, _pkgNameMeta));
    } else if (isInserting) {
      context.missing(_pkgNameMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('version_name')) {
      context.handle(
          _versionNameMeta,
          versionName.isAcceptableOrUnknown(
              data['version_name']!, _versionNameMeta));
    } else if (isInserting) {
      context.missing(_versionNameMeta);
    }
    if (data.containsKey('version_code')) {
      context.handle(
          _versionCodeMeta,
          versionCode.isAcceptableOrUnknown(
              data['version_code']!, _versionCodeMeta));
    } else if (isInserting) {
      context.missing(_versionCodeMeta);
    }
    if (data.containsKey('lang')) {
      context.handle(
          _langMeta, lang.isAcceptableOrUnknown(data['lang']!, _langMeta));
    } else if (isInserting) {
      context.missing(_langMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('is_nsfw')) {
      context.handle(_isNsfwMeta,
          isNsfw.isAcceptableOrUnknown(data['is_nsfw']!, _isNsfwMeta));
    }
    if (data.containsKey('apk_path')) {
      context.handle(_apkPathMeta,
          apkPath.isAcceptableOrUnknown(data['apk_path']!, _apkPathMeta));
    } else if (isInserting) {
      context.missing(_apkPathMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('icon_path')) {
      context.handle(_iconPathMeta,
          iconPath.isAcceptableOrUnknown(data['icon_path']!, _iconPathMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  DbExtension map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbExtension(
      pkgName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pkg_name'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      versionName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}version_name'])!,
      versionCode: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}version_code'])!,
      lang: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lang'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      isNsfw: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_nsfw'])!,
      apkPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}apk_path'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      iconPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}icon_path']),
    );
  }

  @override
  $ExtensionsTable createAlias(String alias) {
    return $ExtensionsTable(attachedDatabase, alias);
  }
}

class DbExtension extends DataClass implements Insertable<DbExtension> {
  final String pkgName;
  final String name;
  final String versionName;
  final int versionCode;
  final String lang;
  final String? description;
  final bool isNsfw;
  final String apkPath;
  final int status;
  final String? iconPath;
  const DbExtension(
      {required this.pkgName,
      required this.name,
      required this.versionName,
      required this.versionCode,
      required this.lang,
      this.description,
      required this.isNsfw,
      required this.apkPath,
      required this.status,
      this.iconPath});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pkg_name'] = Variable<String>(pkgName);
    map['name'] = Variable<String>(name);
    map['version_name'] = Variable<String>(versionName);
    map['version_code'] = Variable<int>(versionCode);
    map['lang'] = Variable<String>(lang);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['is_nsfw'] = Variable<bool>(isNsfw);
    map['apk_path'] = Variable<String>(apkPath);
    map['status'] = Variable<int>(status);
    if (!nullToAbsent || iconPath != null) {
      map['icon_path'] = Variable<String>(iconPath);
    }
    return map;
  }

  ExtensionsCompanion toCompanion(bool nullToAbsent) {
    return ExtensionsCompanion(
      pkgName: Value(pkgName),
      name: Value(name),
      versionName: Value(versionName),
      versionCode: Value(versionCode),
      lang: Value(lang),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isNsfw: Value(isNsfw),
      apkPath: Value(apkPath),
      status: Value(status),
      iconPath: iconPath == null && nullToAbsent
          ? const Value.absent()
          : Value(iconPath),
    );
  }

  factory DbExtension.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbExtension(
      pkgName: serializer.fromJson<String>(json['pkgName']),
      name: serializer.fromJson<String>(json['name']),
      versionName: serializer.fromJson<String>(json['versionName']),
      versionCode: serializer.fromJson<int>(json['versionCode']),
      lang: serializer.fromJson<String>(json['lang']),
      description: serializer.fromJson<String?>(json['description']),
      isNsfw: serializer.fromJson<bool>(json['isNsfw']),
      apkPath: serializer.fromJson<String>(json['apkPath']),
      status: serializer.fromJson<int>(json['status']),
      iconPath: serializer.fromJson<String?>(json['iconPath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pkgName': serializer.toJson<String>(pkgName),
      'name': serializer.toJson<String>(name),
      'versionName': serializer.toJson<String>(versionName),
      'versionCode': serializer.toJson<int>(versionCode),
      'lang': serializer.toJson<String>(lang),
      'description': serializer.toJson<String?>(description),
      'isNsfw': serializer.toJson<bool>(isNsfw),
      'apkPath': serializer.toJson<String>(apkPath),
      'status': serializer.toJson<int>(status),
      'iconPath': serializer.toJson<String?>(iconPath),
    };
  }

  DbExtension copyWith(
          {String? pkgName,
          String? name,
          String? versionName,
          int? versionCode,
          String? lang,
          Value<String?> description = const Value.absent(),
          bool? isNsfw,
          String? apkPath,
          int? status,
          Value<String?> iconPath = const Value.absent()}) =>
      DbExtension(
        pkgName: pkgName ?? this.pkgName,
        name: name ?? this.name,
        versionName: versionName ?? this.versionName,
        versionCode: versionCode ?? this.versionCode,
        lang: lang ?? this.lang,
        description: description.present ? description.value : this.description,
        isNsfw: isNsfw ?? this.isNsfw,
        apkPath: apkPath ?? this.apkPath,
        status: status ?? this.status,
        iconPath: iconPath.present ? iconPath.value : this.iconPath,
      );
  DbExtension copyWithCompanion(ExtensionsCompanion data) {
    return DbExtension(
      pkgName: data.pkgName.present ? data.pkgName.value : this.pkgName,
      name: data.name.present ? data.name.value : this.name,
      versionName:
          data.versionName.present ? data.versionName.value : this.versionName,
      versionCode:
          data.versionCode.present ? data.versionCode.value : this.versionCode,
      lang: data.lang.present ? data.lang.value : this.lang,
      description:
          data.description.present ? data.description.value : this.description,
      isNsfw: data.isNsfw.present ? data.isNsfw.value : this.isNsfw,
      apkPath: data.apkPath.present ? data.apkPath.value : this.apkPath,
      status: data.status.present ? data.status.value : this.status,
      iconPath: data.iconPath.present ? data.iconPath.value : this.iconPath,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbExtension(')
          ..write('pkgName: $pkgName, ')
          ..write('name: $name, ')
          ..write('versionName: $versionName, ')
          ..write('versionCode: $versionCode, ')
          ..write('lang: $lang, ')
          ..write('description: $description, ')
          ..write('isNsfw: $isNsfw, ')
          ..write('apkPath: $apkPath, ')
          ..write('status: $status, ')
          ..write('iconPath: $iconPath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pkgName, name, versionName, versionCode, lang,
      description, isNsfw, apkPath, status, iconPath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbExtension &&
          other.pkgName == this.pkgName &&
          other.name == this.name &&
          other.versionName == this.versionName &&
          other.versionCode == this.versionCode &&
          other.lang == this.lang &&
          other.description == this.description &&
          other.isNsfw == this.isNsfw &&
          other.apkPath == this.apkPath &&
          other.status == this.status &&
          other.iconPath == this.iconPath);
}

class ExtensionsCompanion extends UpdateCompanion<DbExtension> {
  final Value<String> pkgName;
  final Value<String> name;
  final Value<String> versionName;
  final Value<int> versionCode;
  final Value<String> lang;
  final Value<String?> description;
  final Value<bool> isNsfw;
  final Value<String> apkPath;
  final Value<int> status;
  final Value<String?> iconPath;
  final Value<int> rowid;
  const ExtensionsCompanion({
    this.pkgName = const Value.absent(),
    this.name = const Value.absent(),
    this.versionName = const Value.absent(),
    this.versionCode = const Value.absent(),
    this.lang = const Value.absent(),
    this.description = const Value.absent(),
    this.isNsfw = const Value.absent(),
    this.apkPath = const Value.absent(),
    this.status = const Value.absent(),
    this.iconPath = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExtensionsCompanion.insert({
    required String pkgName,
    required String name,
    required String versionName,
    required int versionCode,
    required String lang,
    this.description = const Value.absent(),
    this.isNsfw = const Value.absent(),
    required String apkPath,
    this.status = const Value.absent(),
    this.iconPath = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : pkgName = Value(pkgName),
        name = Value(name),
        versionName = Value(versionName),
        versionCode = Value(versionCode),
        lang = Value(lang),
        apkPath = Value(apkPath);
  static Insertable<DbExtension> custom({
    Expression<String>? pkgName,
    Expression<String>? name,
    Expression<String>? versionName,
    Expression<int>? versionCode,
    Expression<String>? lang,
    Expression<String>? description,
    Expression<bool>? isNsfw,
    Expression<String>? apkPath,
    Expression<int>? status,
    Expression<String>? iconPath,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pkgName != null) 'pkg_name': pkgName,
      if (name != null) 'name': name,
      if (versionName != null) 'version_name': versionName,
      if (versionCode != null) 'version_code': versionCode,
      if (lang != null) 'lang': lang,
      if (description != null) 'description': description,
      if (isNsfw != null) 'is_nsfw': isNsfw,
      if (apkPath != null) 'apk_path': apkPath,
      if (status != null) 'status': status,
      if (iconPath != null) 'icon_path': iconPath,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExtensionsCompanion copyWith(
      {Value<String>? pkgName,
      Value<String>? name,
      Value<String>? versionName,
      Value<int>? versionCode,
      Value<String>? lang,
      Value<String?>? description,
      Value<bool>? isNsfw,
      Value<String>? apkPath,
      Value<int>? status,
      Value<String?>? iconPath,
      Value<int>? rowid}) {
    return ExtensionsCompanion(
      pkgName: pkgName ?? this.pkgName,
      name: name ?? this.name,
      versionName: versionName ?? this.versionName,
      versionCode: versionCode ?? this.versionCode,
      lang: lang ?? this.lang,
      description: description ?? this.description,
      isNsfw: isNsfw ?? this.isNsfw,
      apkPath: apkPath ?? this.apkPath,
      status: status ?? this.status,
      iconPath: iconPath ?? this.iconPath,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pkgName.present) {
      map['pkg_name'] = Variable<String>(pkgName.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (versionName.present) {
      map['version_name'] = Variable<String>(versionName.value);
    }
    if (versionCode.present) {
      map['version_code'] = Variable<int>(versionCode.value);
    }
    if (lang.present) {
      map['lang'] = Variable<String>(lang.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isNsfw.present) {
      map['is_nsfw'] = Variable<bool>(isNsfw.value);
    }
    if (apkPath.present) {
      map['apk_path'] = Variable<String>(apkPath.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (iconPath.present) {
      map['icon_path'] = Variable<String>(iconPath.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExtensionsCompanion(')
          ..write('pkgName: $pkgName, ')
          ..write('name: $name, ')
          ..write('versionName: $versionName, ')
          ..write('versionCode: $versionCode, ')
          ..write('lang: $lang, ')
          ..write('description: $description, ')
          ..write('isNsfw: $isNsfw, ')
          ..write('apkPath: $apkPath, ')
          ..write('status: $status, ')
          ..write('iconPath: $iconPath, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SourcesTable extends Sources with TableInfo<$SourcesTable, DbSource> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SourcesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _langMeta = const VerificationMeta('lang');
  @override
  late final GeneratedColumn<String> lang = GeneratedColumn<String>(
      'lang', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _baseUrlMeta =
      const VerificationMeta('baseUrl');
  @override
  late final GeneratedColumn<String> baseUrl = GeneratedColumn<String>(
      'base_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _iconUrlMeta =
      const VerificationMeta('iconUrl');
  @override
  late final GeneratedColumn<String> iconUrl = GeneratedColumn<String>(
      'icon_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _extensionPkgNameMeta =
      const VerificationMeta('extensionPkgName');
  @override
  late final GeneratedColumn<String> extensionPkgName = GeneratedColumn<String>(
      'extension_pkg_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, lang, baseUrl, iconUrl, extensionPkgName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sources';
  @override
  VerificationContext validateIntegrity(Insertable<DbSource> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('lang')) {
      context.handle(
          _langMeta, lang.isAcceptableOrUnknown(data['lang']!, _langMeta));
    } else if (isInserting) {
      context.missing(_langMeta);
    }
    if (data.containsKey('base_url')) {
      context.handle(_baseUrlMeta,
          baseUrl.isAcceptableOrUnknown(data['base_url']!, _baseUrlMeta));
    }
    if (data.containsKey('icon_url')) {
      context.handle(_iconUrlMeta,
          iconUrl.isAcceptableOrUnknown(data['icon_url']!, _iconUrlMeta));
    }
    if (data.containsKey('extension_pkg_name')) {
      context.handle(
          _extensionPkgNameMeta,
          extensionPkgName.isAcceptableOrUnknown(
              data['extension_pkg_name']!, _extensionPkgNameMeta));
    } else if (isInserting) {
      context.missing(_extensionPkgNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  DbSource map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbSource(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      lang: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lang'])!,
      baseUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}base_url']),
      iconUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}icon_url']),
      extensionPkgName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}extension_pkg_name'])!,
    );
  }

  @override
  $SourcesTable createAlias(String alias) {
    return $SourcesTable(attachedDatabase, alias);
  }
}

class DbSource extends DataClass implements Insertable<DbSource> {
  final String id;
  final String name;
  final String lang;
  final String? baseUrl;
  final String? iconUrl;
  final String extensionPkgName;
  const DbSource(
      {required this.id,
      required this.name,
      required this.lang,
      this.baseUrl,
      this.iconUrl,
      required this.extensionPkgName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['lang'] = Variable<String>(lang);
    if (!nullToAbsent || baseUrl != null) {
      map['base_url'] = Variable<String>(baseUrl);
    }
    if (!nullToAbsent || iconUrl != null) {
      map['icon_url'] = Variable<String>(iconUrl);
    }
    map['extension_pkg_name'] = Variable<String>(extensionPkgName);
    return map;
  }

  SourcesCompanion toCompanion(bool nullToAbsent) {
    return SourcesCompanion(
      id: Value(id),
      name: Value(name),
      lang: Value(lang),
      baseUrl: baseUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(baseUrl),
      iconUrl: iconUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(iconUrl),
      extensionPkgName: Value(extensionPkgName),
    );
  }

  factory DbSource.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbSource(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      lang: serializer.fromJson<String>(json['lang']),
      baseUrl: serializer.fromJson<String?>(json['baseUrl']),
      iconUrl: serializer.fromJson<String?>(json['iconUrl']),
      extensionPkgName: serializer.fromJson<String>(json['extensionPkgName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'lang': serializer.toJson<String>(lang),
      'baseUrl': serializer.toJson<String?>(baseUrl),
      'iconUrl': serializer.toJson<String?>(iconUrl),
      'extensionPkgName': serializer.toJson<String>(extensionPkgName),
    };
  }

  DbSource copyWith(
          {String? id,
          String? name,
          String? lang,
          Value<String?> baseUrl = const Value.absent(),
          Value<String?> iconUrl = const Value.absent(),
          String? extensionPkgName}) =>
      DbSource(
        id: id ?? this.id,
        name: name ?? this.name,
        lang: lang ?? this.lang,
        baseUrl: baseUrl.present ? baseUrl.value : this.baseUrl,
        iconUrl: iconUrl.present ? iconUrl.value : this.iconUrl,
        extensionPkgName: extensionPkgName ?? this.extensionPkgName,
      );
  DbSource copyWithCompanion(SourcesCompanion data) {
    return DbSource(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      lang: data.lang.present ? data.lang.value : this.lang,
      baseUrl: data.baseUrl.present ? data.baseUrl.value : this.baseUrl,
      iconUrl: data.iconUrl.present ? data.iconUrl.value : this.iconUrl,
      extensionPkgName: data.extensionPkgName.present
          ? data.extensionPkgName.value
          : this.extensionPkgName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbSource(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lang: $lang, ')
          ..write('baseUrl: $baseUrl, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('extensionPkgName: $extensionPkgName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, lang, baseUrl, iconUrl, extensionPkgName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbSource &&
          other.id == this.id &&
          other.name == this.name &&
          other.lang == this.lang &&
          other.baseUrl == this.baseUrl &&
          other.iconUrl == this.iconUrl &&
          other.extensionPkgName == this.extensionPkgName);
}

class SourcesCompanion extends UpdateCompanion<DbSource> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> lang;
  final Value<String?> baseUrl;
  final Value<String?> iconUrl;
  final Value<String> extensionPkgName;
  final Value<int> rowid;
  const SourcesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.lang = const Value.absent(),
    this.baseUrl = const Value.absent(),
    this.iconUrl = const Value.absent(),
    this.extensionPkgName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SourcesCompanion.insert({
    required String id,
    required String name,
    required String lang,
    this.baseUrl = const Value.absent(),
    this.iconUrl = const Value.absent(),
    required String extensionPkgName,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        lang = Value(lang),
        extensionPkgName = Value(extensionPkgName);
  static Insertable<DbSource> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? lang,
    Expression<String>? baseUrl,
    Expression<String>? iconUrl,
    Expression<String>? extensionPkgName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (lang != null) 'lang': lang,
      if (baseUrl != null) 'base_url': baseUrl,
      if (iconUrl != null) 'icon_url': iconUrl,
      if (extensionPkgName != null) 'extension_pkg_name': extensionPkgName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SourcesCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? lang,
      Value<String?>? baseUrl,
      Value<String?>? iconUrl,
      Value<String>? extensionPkgName,
      Value<int>? rowid}) {
    return SourcesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      lang: lang ?? this.lang,
      baseUrl: baseUrl ?? this.baseUrl,
      iconUrl: iconUrl ?? this.iconUrl,
      extensionPkgName: extensionPkgName ?? this.extensionPkgName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (lang.present) {
      map['lang'] = Variable<String>(lang.value);
    }
    if (baseUrl.present) {
      map['base_url'] = Variable<String>(baseUrl.value);
    }
    if (iconUrl.present) {
      map['icon_url'] = Variable<String>(iconUrl.value);
    }
    if (extensionPkgName.present) {
      map['extension_pkg_name'] = Variable<String>(extensionPkgName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SourcesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lang: $lang, ')
          ..write('baseUrl: $baseUrl, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('extensionPkgName: $extensionPkgName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, DbCategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
      'order', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _isDefaultMeta =
      const VerificationMeta('isDefault');
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
      'is_default', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_default" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [id, name, order, isDefault];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<DbCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('order')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order']!, _orderMeta));
    }
    if (data.containsKey('is_default')) {
      context.handle(_isDefaultMeta,
          isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbCategory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      order: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order'])!,
      isDefault: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_default'])!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class DbCategory extends DataClass implements Insertable<DbCategory> {
  final int id;
  final String name;
  final int order;
  final bool isDefault;
  const DbCategory(
      {required this.id,
      required this.name,
      required this.order,
      required this.isDefault});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['order'] = Variable<int>(order);
    map['is_default'] = Variable<bool>(isDefault);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      name: Value(name),
      order: Value(order),
      isDefault: Value(isDefault),
    );
  }

  factory DbCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbCategory(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      order: serializer.fromJson<int>(json['order']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'order': serializer.toJson<int>(order),
      'isDefault': serializer.toJson<bool>(isDefault),
    };
  }

  DbCategory copyWith({int? id, String? name, int? order, bool? isDefault}) =>
      DbCategory(
        id: id ?? this.id,
        name: name ?? this.name,
        order: order ?? this.order,
        isDefault: isDefault ?? this.isDefault,
      );
  DbCategory copyWithCompanion(CategoriesCompanion data) {
    return DbCategory(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      order: data.order.present ? data.order.value : this.order,
      isDefault: data.isDefault.present ? data.isDefault.value : this.isDefault,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbCategory(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('order: $order, ')
          ..write('isDefault: $isDefault')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, order, isDefault);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbCategory &&
          other.id == this.id &&
          other.name == this.name &&
          other.order == this.order &&
          other.isDefault == this.isDefault);
}

class CategoriesCompanion extends UpdateCompanion<DbCategory> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> order;
  final Value<bool> isDefault;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.order = const Value.absent(),
    this.isDefault = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.order = const Value.absent(),
    this.isDefault = const Value.absent(),
  }) : name = Value(name);
  static Insertable<DbCategory> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? order,
    Expression<bool>? isDefault,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (order != null) 'order': order,
      if (isDefault != null) 'is_default': isDefault,
    });
  }

  CategoriesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? order,
      Value<bool>? isDefault}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      order: order ?? this.order,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('order: $order, ')
          ..write('isDefault: $isDefault')
          ..write(')'))
        .toString();
  }
}

class $MangaCategoriesTable extends MangaCategories
    with TableInfo<$MangaCategoriesTable, DbMangaCategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MangaCategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _mangaIdMeta =
      const VerificationMeta('mangaId');
  @override
  late final GeneratedColumn<int> mangaId = GeneratedColumn<int>(
      'manga_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, mangaId, categoryId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'manga_categories';
  @override
  VerificationContext validateIntegrity(Insertable<DbMangaCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('manga_id')) {
      context.handle(_mangaIdMeta,
          mangaId.isAcceptableOrUnknown(data['manga_id']!, _mangaIdMeta));
    } else if (isInserting) {
      context.missing(_mangaIdMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbMangaCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbMangaCategory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      mangaId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}manga_id'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
    );
  }

  @override
  $MangaCategoriesTable createAlias(String alias) {
    return $MangaCategoriesTable(attachedDatabase, alias);
  }
}

class DbMangaCategory extends DataClass implements Insertable<DbMangaCategory> {
  final int id;
  final int mangaId;
  final int categoryId;
  const DbMangaCategory(
      {required this.id, required this.mangaId, required this.categoryId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['manga_id'] = Variable<int>(mangaId);
    map['category_id'] = Variable<int>(categoryId);
    return map;
  }

  MangaCategoriesCompanion toCompanion(bool nullToAbsent) {
    return MangaCategoriesCompanion(
      id: Value(id),
      mangaId: Value(mangaId),
      categoryId: Value(categoryId),
    );
  }

  factory DbMangaCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbMangaCategory(
      id: serializer.fromJson<int>(json['id']),
      mangaId: serializer.fromJson<int>(json['mangaId']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'mangaId': serializer.toJson<int>(mangaId),
      'categoryId': serializer.toJson<int>(categoryId),
    };
  }

  DbMangaCategory copyWith({int? id, int? mangaId, int? categoryId}) =>
      DbMangaCategory(
        id: id ?? this.id,
        mangaId: mangaId ?? this.mangaId,
        categoryId: categoryId ?? this.categoryId,
      );
  DbMangaCategory copyWithCompanion(MangaCategoriesCompanion data) {
    return DbMangaCategory(
      id: data.id.present ? data.id.value : this.id,
      mangaId: data.mangaId.present ? data.mangaId.value : this.mangaId,
      categoryId:
          data.categoryId.present ? data.categoryId.value : this.categoryId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbMangaCategory(')
          ..write('id: $id, ')
          ..write('mangaId: $mangaId, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, mangaId, categoryId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbMangaCategory &&
          other.id == this.id &&
          other.mangaId == this.mangaId &&
          other.categoryId == this.categoryId);
}

class MangaCategoriesCompanion extends UpdateCompanion<DbMangaCategory> {
  final Value<int> id;
  final Value<int> mangaId;
  final Value<int> categoryId;
  const MangaCategoriesCompanion({
    this.id = const Value.absent(),
    this.mangaId = const Value.absent(),
    this.categoryId = const Value.absent(),
  });
  MangaCategoriesCompanion.insert({
    this.id = const Value.absent(),
    required int mangaId,
    required int categoryId,
  })  : mangaId = Value(mangaId),
        categoryId = Value(categoryId);
  static Insertable<DbMangaCategory> custom({
    Expression<int>? id,
    Expression<int>? mangaId,
    Expression<int>? categoryId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (mangaId != null) 'manga_id': mangaId,
      if (categoryId != null) 'category_id': categoryId,
    });
  }

  MangaCategoriesCompanion copyWith(
      {Value<int>? id, Value<int>? mangaId, Value<int>? categoryId}) {
    return MangaCategoriesCompanion(
      id: id ?? this.id,
      mangaId: mangaId ?? this.mangaId,
      categoryId: categoryId ?? this.categoryId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (mangaId.present) {
      map['manga_id'] = Variable<int>(mangaId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MangaCategoriesCompanion(')
          ..write('id: $id, ')
          ..write('mangaId: $mangaId, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }
}

class $TracksTable extends Tracks with TableInfo<$TracksTable, DbTrack> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TracksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _mangaIdMeta =
      const VerificationMeta('mangaId');
  @override
  late final GeneratedColumn<int> mangaId = GeneratedColumn<int>(
      'manga_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _trackerIdMeta =
      const VerificationMeta('trackerId');
  @override
  late final GeneratedColumn<int> trackerId = GeneratedColumn<int>(
      'tracker_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _trackerUrlMeta =
      const VerificationMeta('trackerUrl');
  @override
  late final GeneratedColumn<String> trackerUrl = GeneratedColumn<String>(
      'tracker_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<int> score = GeneratedColumn<int>(
      'score', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _lastChapterReadMeta =
      const VerificationMeta('lastChapterRead');
  @override
  late final GeneratedColumn<int> lastChapterRead = GeneratedColumn<int>(
      'last_chapter_read', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalChaptersMeta =
      const VerificationMeta('totalChapters');
  @override
  late final GeneratedColumn<int> totalChapters = GeneratedColumn<int>(
      'total_chapters', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _startedReadingDateMeta =
      const VerificationMeta('startedReadingDate');
  @override
  late final GeneratedColumn<int> startedReadingDate = GeneratedColumn<int>(
      'started_reading_date', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _finishedReadingDateMeta =
      const VerificationMeta('finishedReadingDate');
  @override
  late final GeneratedColumn<int> finishedReadingDate = GeneratedColumn<int>(
      'finished_reading_date', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        mangaId,
        trackerId,
        trackerUrl,
        status,
        score,
        lastChapterRead,
        totalChapters,
        startedReadingDate,
        finishedReadingDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tracks';
  @override
  VerificationContext validateIntegrity(Insertable<DbTrack> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('manga_id')) {
      context.handle(_mangaIdMeta,
          mangaId.isAcceptableOrUnknown(data['manga_id']!, _mangaIdMeta));
    } else if (isInserting) {
      context.missing(_mangaIdMeta);
    }
    if (data.containsKey('tracker_id')) {
      context.handle(_trackerIdMeta,
          trackerId.isAcceptableOrUnknown(data['tracker_id']!, _trackerIdMeta));
    } else if (isInserting) {
      context.missing(_trackerIdMeta);
    }
    if (data.containsKey('tracker_url')) {
      context.handle(
          _trackerUrlMeta,
          trackerUrl.isAcceptableOrUnknown(
              data['tracker_url']!, _trackerUrlMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('score')) {
      context.handle(
          _scoreMeta, score.isAcceptableOrUnknown(data['score']!, _scoreMeta));
    }
    if (data.containsKey('last_chapter_read')) {
      context.handle(
          _lastChapterReadMeta,
          lastChapterRead.isAcceptableOrUnknown(
              data['last_chapter_read']!, _lastChapterReadMeta));
    }
    if (data.containsKey('total_chapters')) {
      context.handle(
          _totalChaptersMeta,
          totalChapters.isAcceptableOrUnknown(
              data['total_chapters']!, _totalChaptersMeta));
    }
    if (data.containsKey('started_reading_date')) {
      context.handle(
          _startedReadingDateMeta,
          startedReadingDate.isAcceptableOrUnknown(
              data['started_reading_date']!, _startedReadingDateMeta));
    }
    if (data.containsKey('finished_reading_date')) {
      context.handle(
          _finishedReadingDateMeta,
          finishedReadingDate.isAcceptableOrUnknown(
              data['finished_reading_date']!, _finishedReadingDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbTrack map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbTrack(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      mangaId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}manga_id'])!,
      trackerId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tracker_id'])!,
      trackerUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tracker_url']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status']),
      score: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}score']),
      lastChapterRead: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_chapter_read']),
      totalChapters: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_chapters']),
      startedReadingDate: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}started_reading_date']),
      finishedReadingDate: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}finished_reading_date']),
    );
  }

  @override
  $TracksTable createAlias(String alias) {
    return $TracksTable(attachedDatabase, alias);
  }
}

class DbTrack extends DataClass implements Insertable<DbTrack> {
  final int id;
  final int mangaId;
  final int trackerId;
  final String? trackerUrl;
  final int? status;
  final int? score;
  final int? lastChapterRead;
  final int? totalChapters;
  final int? startedReadingDate;
  final int? finishedReadingDate;
  const DbTrack(
      {required this.id,
      required this.mangaId,
      required this.trackerId,
      this.trackerUrl,
      this.status,
      this.score,
      this.lastChapterRead,
      this.totalChapters,
      this.startedReadingDate,
      this.finishedReadingDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['manga_id'] = Variable<int>(mangaId);
    map['tracker_id'] = Variable<int>(trackerId);
    if (!nullToAbsent || trackerUrl != null) {
      map['tracker_url'] = Variable<String>(trackerUrl);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<int>(status);
    }
    if (!nullToAbsent || score != null) {
      map['score'] = Variable<int>(score);
    }
    if (!nullToAbsent || lastChapterRead != null) {
      map['last_chapter_read'] = Variable<int>(lastChapterRead);
    }
    if (!nullToAbsent || totalChapters != null) {
      map['total_chapters'] = Variable<int>(totalChapters);
    }
    if (!nullToAbsent || startedReadingDate != null) {
      map['started_reading_date'] = Variable<int>(startedReadingDate);
    }
    if (!nullToAbsent || finishedReadingDate != null) {
      map['finished_reading_date'] = Variable<int>(finishedReadingDate);
    }
    return map;
  }

  TracksCompanion toCompanion(bool nullToAbsent) {
    return TracksCompanion(
      id: Value(id),
      mangaId: Value(mangaId),
      trackerId: Value(trackerId),
      trackerUrl: trackerUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(trackerUrl),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      score:
          score == null && nullToAbsent ? const Value.absent() : Value(score),
      lastChapterRead: lastChapterRead == null && nullToAbsent
          ? const Value.absent()
          : Value(lastChapterRead),
      totalChapters: totalChapters == null && nullToAbsent
          ? const Value.absent()
          : Value(totalChapters),
      startedReadingDate: startedReadingDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startedReadingDate),
      finishedReadingDate: finishedReadingDate == null && nullToAbsent
          ? const Value.absent()
          : Value(finishedReadingDate),
    );
  }

  factory DbTrack.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbTrack(
      id: serializer.fromJson<int>(json['id']),
      mangaId: serializer.fromJson<int>(json['mangaId']),
      trackerId: serializer.fromJson<int>(json['trackerId']),
      trackerUrl: serializer.fromJson<String?>(json['trackerUrl']),
      status: serializer.fromJson<int?>(json['status']),
      score: serializer.fromJson<int?>(json['score']),
      lastChapterRead: serializer.fromJson<int?>(json['lastChapterRead']),
      totalChapters: serializer.fromJson<int?>(json['totalChapters']),
      startedReadingDate: serializer.fromJson<int?>(json['startedReadingDate']),
      finishedReadingDate:
          serializer.fromJson<int?>(json['finishedReadingDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'mangaId': serializer.toJson<int>(mangaId),
      'trackerId': serializer.toJson<int>(trackerId),
      'trackerUrl': serializer.toJson<String?>(trackerUrl),
      'status': serializer.toJson<int?>(status),
      'score': serializer.toJson<int?>(score),
      'lastChapterRead': serializer.toJson<int?>(lastChapterRead),
      'totalChapters': serializer.toJson<int?>(totalChapters),
      'startedReadingDate': serializer.toJson<int?>(startedReadingDate),
      'finishedReadingDate': serializer.toJson<int?>(finishedReadingDate),
    };
  }

  DbTrack copyWith(
          {int? id,
          int? mangaId,
          int? trackerId,
          Value<String?> trackerUrl = const Value.absent(),
          Value<int?> status = const Value.absent(),
          Value<int?> score = const Value.absent(),
          Value<int?> lastChapterRead = const Value.absent(),
          Value<int?> totalChapters = const Value.absent(),
          Value<int?> startedReadingDate = const Value.absent(),
          Value<int?> finishedReadingDate = const Value.absent()}) =>
      DbTrack(
        id: id ?? this.id,
        mangaId: mangaId ?? this.mangaId,
        trackerId: trackerId ?? this.trackerId,
        trackerUrl: trackerUrl.present ? trackerUrl.value : this.trackerUrl,
        status: status.present ? status.value : this.status,
        score: score.present ? score.value : this.score,
        lastChapterRead: lastChapterRead.present
            ? lastChapterRead.value
            : this.lastChapterRead,
        totalChapters:
            totalChapters.present ? totalChapters.value : this.totalChapters,
        startedReadingDate: startedReadingDate.present
            ? startedReadingDate.value
            : this.startedReadingDate,
        finishedReadingDate: finishedReadingDate.present
            ? finishedReadingDate.value
            : this.finishedReadingDate,
      );
  DbTrack copyWithCompanion(TracksCompanion data) {
    return DbTrack(
      id: data.id.present ? data.id.value : this.id,
      mangaId: data.mangaId.present ? data.mangaId.value : this.mangaId,
      trackerId: data.trackerId.present ? data.trackerId.value : this.trackerId,
      trackerUrl:
          data.trackerUrl.present ? data.trackerUrl.value : this.trackerUrl,
      status: data.status.present ? data.status.value : this.status,
      score: data.score.present ? data.score.value : this.score,
      lastChapterRead: data.lastChapterRead.present
          ? data.lastChapterRead.value
          : this.lastChapterRead,
      totalChapters: data.totalChapters.present
          ? data.totalChapters.value
          : this.totalChapters,
      startedReadingDate: data.startedReadingDate.present
          ? data.startedReadingDate.value
          : this.startedReadingDate,
      finishedReadingDate: data.finishedReadingDate.present
          ? data.finishedReadingDate.value
          : this.finishedReadingDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbTrack(')
          ..write('id: $id, ')
          ..write('mangaId: $mangaId, ')
          ..write('trackerId: $trackerId, ')
          ..write('trackerUrl: $trackerUrl, ')
          ..write('status: $status, ')
          ..write('score: $score, ')
          ..write('lastChapterRead: $lastChapterRead, ')
          ..write('totalChapters: $totalChapters, ')
          ..write('startedReadingDate: $startedReadingDate, ')
          ..write('finishedReadingDate: $finishedReadingDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      mangaId,
      trackerId,
      trackerUrl,
      status,
      score,
      lastChapterRead,
      totalChapters,
      startedReadingDate,
      finishedReadingDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbTrack &&
          other.id == this.id &&
          other.mangaId == this.mangaId &&
          other.trackerId == this.trackerId &&
          other.trackerUrl == this.trackerUrl &&
          other.status == this.status &&
          other.score == this.score &&
          other.lastChapterRead == this.lastChapterRead &&
          other.totalChapters == this.totalChapters &&
          other.startedReadingDate == this.startedReadingDate &&
          other.finishedReadingDate == this.finishedReadingDate);
}

class TracksCompanion extends UpdateCompanion<DbTrack> {
  final Value<int> id;
  final Value<int> mangaId;
  final Value<int> trackerId;
  final Value<String?> trackerUrl;
  final Value<int?> status;
  final Value<int?> score;
  final Value<int?> lastChapterRead;
  final Value<int?> totalChapters;
  final Value<int?> startedReadingDate;
  final Value<int?> finishedReadingDate;
  const TracksCompanion({
    this.id = const Value.absent(),
    this.mangaId = const Value.absent(),
    this.trackerId = const Value.absent(),
    this.trackerUrl = const Value.absent(),
    this.status = const Value.absent(),
    this.score = const Value.absent(),
    this.lastChapterRead = const Value.absent(),
    this.totalChapters = const Value.absent(),
    this.startedReadingDate = const Value.absent(),
    this.finishedReadingDate = const Value.absent(),
  });
  TracksCompanion.insert({
    this.id = const Value.absent(),
    required int mangaId,
    required int trackerId,
    this.trackerUrl = const Value.absent(),
    this.status = const Value.absent(),
    this.score = const Value.absent(),
    this.lastChapterRead = const Value.absent(),
    this.totalChapters = const Value.absent(),
    this.startedReadingDate = const Value.absent(),
    this.finishedReadingDate = const Value.absent(),
  })  : mangaId = Value(mangaId),
        trackerId = Value(trackerId);
  static Insertable<DbTrack> custom({
    Expression<int>? id,
    Expression<int>? mangaId,
    Expression<int>? trackerId,
    Expression<String>? trackerUrl,
    Expression<int>? status,
    Expression<int>? score,
    Expression<int>? lastChapterRead,
    Expression<int>? totalChapters,
    Expression<int>? startedReadingDate,
    Expression<int>? finishedReadingDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (mangaId != null) 'manga_id': mangaId,
      if (trackerId != null) 'tracker_id': trackerId,
      if (trackerUrl != null) 'tracker_url': trackerUrl,
      if (status != null) 'status': status,
      if (score != null) 'score': score,
      if (lastChapterRead != null) 'last_chapter_read': lastChapterRead,
      if (totalChapters != null) 'total_chapters': totalChapters,
      if (startedReadingDate != null)
        'started_reading_date': startedReadingDate,
      if (finishedReadingDate != null)
        'finished_reading_date': finishedReadingDate,
    });
  }

  TracksCompanion copyWith(
      {Value<int>? id,
      Value<int>? mangaId,
      Value<int>? trackerId,
      Value<String?>? trackerUrl,
      Value<int?>? status,
      Value<int?>? score,
      Value<int?>? lastChapterRead,
      Value<int?>? totalChapters,
      Value<int?>? startedReadingDate,
      Value<int?>? finishedReadingDate}) {
    return TracksCompanion(
      id: id ?? this.id,
      mangaId: mangaId ?? this.mangaId,
      trackerId: trackerId ?? this.trackerId,
      trackerUrl: trackerUrl ?? this.trackerUrl,
      status: status ?? this.status,
      score: score ?? this.score,
      lastChapterRead: lastChapterRead ?? this.lastChapterRead,
      totalChapters: totalChapters ?? this.totalChapters,
      startedReadingDate: startedReadingDate ?? this.startedReadingDate,
      finishedReadingDate: finishedReadingDate ?? this.finishedReadingDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (mangaId.present) {
      map['manga_id'] = Variable<int>(mangaId.value);
    }
    if (trackerId.present) {
      map['tracker_id'] = Variable<int>(trackerId.value);
    }
    if (trackerUrl.present) {
      map['tracker_url'] = Variable<String>(trackerUrl.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (score.present) {
      map['score'] = Variable<int>(score.value);
    }
    if (lastChapterRead.present) {
      map['last_chapter_read'] = Variable<int>(lastChapterRead.value);
    }
    if (totalChapters.present) {
      map['total_chapters'] = Variable<int>(totalChapters.value);
    }
    if (startedReadingDate.present) {
      map['started_reading_date'] = Variable<int>(startedReadingDate.value);
    }
    if (finishedReadingDate.present) {
      map['finished_reading_date'] = Variable<int>(finishedReadingDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TracksCompanion(')
          ..write('id: $id, ')
          ..write('mangaId: $mangaId, ')
          ..write('trackerId: $trackerId, ')
          ..write('trackerUrl: $trackerUrl, ')
          ..write('status: $status, ')
          ..write('score: $score, ')
          ..write('lastChapterRead: $lastChapterRead, ')
          ..write('totalChapters: $totalChapters, ')
          ..write('startedReadingDate: $startedReadingDate, ')
          ..write('finishedReadingDate: $finishedReadingDate')
          ..write(')'))
        .toString();
  }
}

class $HistoryTable extends History with TableInfo<$HistoryTable, DbHistory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HistoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _mangaIdMeta =
      const VerificationMeta('mangaId');
  @override
  late final GeneratedColumn<int> mangaId = GeneratedColumn<int>(
      'manga_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _lastPageReadMeta =
      const VerificationMeta('lastPageRead');
  @override
  late final GeneratedColumn<int> lastPageRead = GeneratedColumn<int>(
      'last_page_read', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _lastReadMeta =
      const VerificationMeta('lastRead');
  @override
  late final GeneratedColumn<int> lastRead = GeneratedColumn<int>(
      'last_read', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, mangaId, chapterId, lastPageRead, lastRead];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'history';
  @override
  VerificationContext validateIntegrity(Insertable<DbHistory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('manga_id')) {
      context.handle(_mangaIdMeta,
          mangaId.isAcceptableOrUnknown(data['manga_id']!, _mangaIdMeta));
    } else if (isInserting) {
      context.missing(_mangaIdMeta);
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('last_page_read')) {
      context.handle(
          _lastPageReadMeta,
          lastPageRead.isAcceptableOrUnknown(
              data['last_page_read']!, _lastPageReadMeta));
    }
    if (data.containsKey('last_read')) {
      context.handle(_lastReadMeta,
          lastRead.isAcceptableOrUnknown(data['last_read']!, _lastReadMeta));
    } else if (isInserting) {
      context.missing(_lastReadMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbHistory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbHistory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      mangaId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}manga_id'])!,
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      lastPageRead: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_page_read']),
      lastRead: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_read'])!,
    );
  }

  @override
  $HistoryTable createAlias(String alias) {
    return $HistoryTable(attachedDatabase, alias);
  }
}

class DbHistory extends DataClass implements Insertable<DbHistory> {
  final int id;
  final int mangaId;
  final int chapterId;
  final int? lastPageRead;
  final int lastRead;
  const DbHistory(
      {required this.id,
      required this.mangaId,
      required this.chapterId,
      this.lastPageRead,
      required this.lastRead});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['manga_id'] = Variable<int>(mangaId);
    map['chapter_id'] = Variable<int>(chapterId);
    if (!nullToAbsent || lastPageRead != null) {
      map['last_page_read'] = Variable<int>(lastPageRead);
    }
    map['last_read'] = Variable<int>(lastRead);
    return map;
  }

  HistoryCompanion toCompanion(bool nullToAbsent) {
    return HistoryCompanion(
      id: Value(id),
      mangaId: Value(mangaId),
      chapterId: Value(chapterId),
      lastPageRead: lastPageRead == null && nullToAbsent
          ? const Value.absent()
          : Value(lastPageRead),
      lastRead: Value(lastRead),
    );
  }

  factory DbHistory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbHistory(
      id: serializer.fromJson<int>(json['id']),
      mangaId: serializer.fromJson<int>(json['mangaId']),
      chapterId: serializer.fromJson<int>(json['chapterId']),
      lastPageRead: serializer.fromJson<int?>(json['lastPageRead']),
      lastRead: serializer.fromJson<int>(json['lastRead']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'mangaId': serializer.toJson<int>(mangaId),
      'chapterId': serializer.toJson<int>(chapterId),
      'lastPageRead': serializer.toJson<int?>(lastPageRead),
      'lastRead': serializer.toJson<int>(lastRead),
    };
  }

  DbHistory copyWith(
          {int? id,
          int? mangaId,
          int? chapterId,
          Value<int?> lastPageRead = const Value.absent(),
          int? lastRead}) =>
      DbHistory(
        id: id ?? this.id,
        mangaId: mangaId ?? this.mangaId,
        chapterId: chapterId ?? this.chapterId,
        lastPageRead:
            lastPageRead.present ? lastPageRead.value : this.lastPageRead,
        lastRead: lastRead ?? this.lastRead,
      );
  DbHistory copyWithCompanion(HistoryCompanion data) {
    return DbHistory(
      id: data.id.present ? data.id.value : this.id,
      mangaId: data.mangaId.present ? data.mangaId.value : this.mangaId,
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      lastPageRead: data.lastPageRead.present
          ? data.lastPageRead.value
          : this.lastPageRead,
      lastRead: data.lastRead.present ? data.lastRead.value : this.lastRead,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbHistory(')
          ..write('id: $id, ')
          ..write('mangaId: $mangaId, ')
          ..write('chapterId: $chapterId, ')
          ..write('lastPageRead: $lastPageRead, ')
          ..write('lastRead: $lastRead')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, mangaId, chapterId, lastPageRead, lastRead);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbHistory &&
          other.id == this.id &&
          other.mangaId == this.mangaId &&
          other.chapterId == this.chapterId &&
          other.lastPageRead == this.lastPageRead &&
          other.lastRead == this.lastRead);
}

class HistoryCompanion extends UpdateCompanion<DbHistory> {
  final Value<int> id;
  final Value<int> mangaId;
  final Value<int> chapterId;
  final Value<int?> lastPageRead;
  final Value<int> lastRead;
  const HistoryCompanion({
    this.id = const Value.absent(),
    this.mangaId = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.lastPageRead = const Value.absent(),
    this.lastRead = const Value.absent(),
  });
  HistoryCompanion.insert({
    this.id = const Value.absent(),
    required int mangaId,
    required int chapterId,
    this.lastPageRead = const Value.absent(),
    required int lastRead,
  })  : mangaId = Value(mangaId),
        chapterId = Value(chapterId),
        lastRead = Value(lastRead);
  static Insertable<DbHistory> custom({
    Expression<int>? id,
    Expression<int>? mangaId,
    Expression<int>? chapterId,
    Expression<int>? lastPageRead,
    Expression<int>? lastRead,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (mangaId != null) 'manga_id': mangaId,
      if (chapterId != null) 'chapter_id': chapterId,
      if (lastPageRead != null) 'last_page_read': lastPageRead,
      if (lastRead != null) 'last_read': lastRead,
    });
  }

  HistoryCompanion copyWith(
      {Value<int>? id,
      Value<int>? mangaId,
      Value<int>? chapterId,
      Value<int?>? lastPageRead,
      Value<int>? lastRead}) {
    return HistoryCompanion(
      id: id ?? this.id,
      mangaId: mangaId ?? this.mangaId,
      chapterId: chapterId ?? this.chapterId,
      lastPageRead: lastPageRead ?? this.lastPageRead,
      lastRead: lastRead ?? this.lastRead,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (mangaId.present) {
      map['manga_id'] = Variable<int>(mangaId.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (lastPageRead.present) {
      map['last_page_read'] = Variable<int>(lastPageRead.value);
    }
    if (lastRead.present) {
      map['last_read'] = Variable<int>(lastRead.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HistoryCompanion(')
          ..write('id: $id, ')
          ..write('mangaId: $mangaId, ')
          ..write('chapterId: $chapterId, ')
          ..write('lastPageRead: $lastPageRead, ')
          ..write('lastRead: $lastRead')
          ..write(')'))
        .toString();
  }
}

class $DownloadsTable extends Downloads
    with TableInfo<$DownloadsTable, DbDownload> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DownloadsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _mangaIdMeta =
      const VerificationMeta('mangaId');
  @override
  late final GeneratedColumn<int> mangaId = GeneratedColumn<int>(
      'manga_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _progressMeta =
      const VerificationMeta('progress');
  @override
  late final GeneratedColumn<int> progress = GeneratedColumn<int>(
      'progress', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _totalPagesMeta =
      const VerificationMeta('totalPages');
  @override
  late final GeneratedColumn<int> totalPages = GeneratedColumn<int>(
      'total_pages', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _downloadedPagesMeta =
      const VerificationMeta('downloadedPages');
  @override
  late final GeneratedColumn<int> downloadedPages = GeneratedColumn<int>(
      'downloaded_pages', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _downloadPathMeta =
      const VerificationMeta('downloadPath');
  @override
  late final GeneratedColumn<String> downloadPath = GeneratedColumn<String>(
      'download_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _queuedAtMeta =
      const VerificationMeta('queuedAt');
  @override
  late final GeneratedColumn<int> queuedAt = GeneratedColumn<int>(
      'queued_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        chapterId,
        mangaId,
        status,
        progress,
        totalPages,
        downloadedPages,
        downloadPath,
        queuedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'downloads';
  @override
  VerificationContext validateIntegrity(Insertable<DbDownload> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('manga_id')) {
      context.handle(_mangaIdMeta,
          mangaId.isAcceptableOrUnknown(data['manga_id']!, _mangaIdMeta));
    } else if (isInserting) {
      context.missing(_mangaIdMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('progress')) {
      context.handle(_progressMeta,
          progress.isAcceptableOrUnknown(data['progress']!, _progressMeta));
    }
    if (data.containsKey('total_pages')) {
      context.handle(
          _totalPagesMeta,
          totalPages.isAcceptableOrUnknown(
              data['total_pages']!, _totalPagesMeta));
    }
    if (data.containsKey('downloaded_pages')) {
      context.handle(
          _downloadedPagesMeta,
          downloadedPages.isAcceptableOrUnknown(
              data['downloaded_pages']!, _downloadedPagesMeta));
    }
    if (data.containsKey('download_path')) {
      context.handle(
          _downloadPathMeta,
          downloadPath.isAcceptableOrUnknown(
              data['download_path']!, _downloadPathMeta));
    }
    if (data.containsKey('queued_at')) {
      context.handle(_queuedAtMeta,
          queuedAt.isAcceptableOrUnknown(data['queued_at']!, _queuedAtMeta));
    } else if (isInserting) {
      context.missing(_queuedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbDownload map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbDownload(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      mangaId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}manga_id'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      progress: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}progress'])!,
      totalPages: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_pages']),
      downloadedPages: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}downloaded_pages'])!,
      downloadPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}download_path']),
      queuedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}queued_at'])!,
    );
  }

  @override
  $DownloadsTable createAlias(String alias) {
    return $DownloadsTable(attachedDatabase, alias);
  }
}

class DbDownload extends DataClass implements Insertable<DbDownload> {
  final int id;
  final int chapterId;
  final int mangaId;
  final int status;
  final int progress;
  final int? totalPages;
  final int downloadedPages;
  final String? downloadPath;
  final int queuedAt;
  const DbDownload(
      {required this.id,
      required this.chapterId,
      required this.mangaId,
      required this.status,
      required this.progress,
      this.totalPages,
      required this.downloadedPages,
      this.downloadPath,
      required this.queuedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['chapter_id'] = Variable<int>(chapterId);
    map['manga_id'] = Variable<int>(mangaId);
    map['status'] = Variable<int>(status);
    map['progress'] = Variable<int>(progress);
    if (!nullToAbsent || totalPages != null) {
      map['total_pages'] = Variable<int>(totalPages);
    }
    map['downloaded_pages'] = Variable<int>(downloadedPages);
    if (!nullToAbsent || downloadPath != null) {
      map['download_path'] = Variable<String>(downloadPath);
    }
    map['queued_at'] = Variable<int>(queuedAt);
    return map;
  }

  DownloadsCompanion toCompanion(bool nullToAbsent) {
    return DownloadsCompanion(
      id: Value(id),
      chapterId: Value(chapterId),
      mangaId: Value(mangaId),
      status: Value(status),
      progress: Value(progress),
      totalPages: totalPages == null && nullToAbsent
          ? const Value.absent()
          : Value(totalPages),
      downloadedPages: Value(downloadedPages),
      downloadPath: downloadPath == null && nullToAbsent
          ? const Value.absent()
          : Value(downloadPath),
      queuedAt: Value(queuedAt),
    );
  }

  factory DbDownload.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbDownload(
      id: serializer.fromJson<int>(json['id']),
      chapterId: serializer.fromJson<int>(json['chapterId']),
      mangaId: serializer.fromJson<int>(json['mangaId']),
      status: serializer.fromJson<int>(json['status']),
      progress: serializer.fromJson<int>(json['progress']),
      totalPages: serializer.fromJson<int?>(json['totalPages']),
      downloadedPages: serializer.fromJson<int>(json['downloadedPages']),
      downloadPath: serializer.fromJson<String?>(json['downloadPath']),
      queuedAt: serializer.fromJson<int>(json['queuedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'chapterId': serializer.toJson<int>(chapterId),
      'mangaId': serializer.toJson<int>(mangaId),
      'status': serializer.toJson<int>(status),
      'progress': serializer.toJson<int>(progress),
      'totalPages': serializer.toJson<int?>(totalPages),
      'downloadedPages': serializer.toJson<int>(downloadedPages),
      'downloadPath': serializer.toJson<String?>(downloadPath),
      'queuedAt': serializer.toJson<int>(queuedAt),
    };
  }

  DbDownload copyWith(
          {int? id,
          int? chapterId,
          int? mangaId,
          int? status,
          int? progress,
          Value<int?> totalPages = const Value.absent(),
          int? downloadedPages,
          Value<String?> downloadPath = const Value.absent(),
          int? queuedAt}) =>
      DbDownload(
        id: id ?? this.id,
        chapterId: chapterId ?? this.chapterId,
        mangaId: mangaId ?? this.mangaId,
        status: status ?? this.status,
        progress: progress ?? this.progress,
        totalPages: totalPages.present ? totalPages.value : this.totalPages,
        downloadedPages: downloadedPages ?? this.downloadedPages,
        downloadPath:
            downloadPath.present ? downloadPath.value : this.downloadPath,
        queuedAt: queuedAt ?? this.queuedAt,
      );
  DbDownload copyWithCompanion(DownloadsCompanion data) {
    return DbDownload(
      id: data.id.present ? data.id.value : this.id,
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      mangaId: data.mangaId.present ? data.mangaId.value : this.mangaId,
      status: data.status.present ? data.status.value : this.status,
      progress: data.progress.present ? data.progress.value : this.progress,
      totalPages:
          data.totalPages.present ? data.totalPages.value : this.totalPages,
      downloadedPages: data.downloadedPages.present
          ? data.downloadedPages.value
          : this.downloadedPages,
      downloadPath: data.downloadPath.present
          ? data.downloadPath.value
          : this.downloadPath,
      queuedAt: data.queuedAt.present ? data.queuedAt.value : this.queuedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbDownload(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('mangaId: $mangaId, ')
          ..write('status: $status, ')
          ..write('progress: $progress, ')
          ..write('totalPages: $totalPages, ')
          ..write('downloadedPages: $downloadedPages, ')
          ..write('downloadPath: $downloadPath, ')
          ..write('queuedAt: $queuedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, chapterId, mangaId, status, progress,
      totalPages, downloadedPages, downloadPath, queuedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbDownload &&
          other.id == this.id &&
          other.chapterId == this.chapterId &&
          other.mangaId == this.mangaId &&
          other.status == this.status &&
          other.progress == this.progress &&
          other.totalPages == this.totalPages &&
          other.downloadedPages == this.downloadedPages &&
          other.downloadPath == this.downloadPath &&
          other.queuedAt == this.queuedAt);
}

class DownloadsCompanion extends UpdateCompanion<DbDownload> {
  final Value<int> id;
  final Value<int> chapterId;
  final Value<int> mangaId;
  final Value<int> status;
  final Value<int> progress;
  final Value<int?> totalPages;
  final Value<int> downloadedPages;
  final Value<String?> downloadPath;
  final Value<int> queuedAt;
  const DownloadsCompanion({
    this.id = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.mangaId = const Value.absent(),
    this.status = const Value.absent(),
    this.progress = const Value.absent(),
    this.totalPages = const Value.absent(),
    this.downloadedPages = const Value.absent(),
    this.downloadPath = const Value.absent(),
    this.queuedAt = const Value.absent(),
  });
  DownloadsCompanion.insert({
    this.id = const Value.absent(),
    required int chapterId,
    required int mangaId,
    this.status = const Value.absent(),
    this.progress = const Value.absent(),
    this.totalPages = const Value.absent(),
    this.downloadedPages = const Value.absent(),
    this.downloadPath = const Value.absent(),
    required int queuedAt,
  })  : chapterId = Value(chapterId),
        mangaId = Value(mangaId),
        queuedAt = Value(queuedAt);
  static Insertable<DbDownload> custom({
    Expression<int>? id,
    Expression<int>? chapterId,
    Expression<int>? mangaId,
    Expression<int>? status,
    Expression<int>? progress,
    Expression<int>? totalPages,
    Expression<int>? downloadedPages,
    Expression<String>? downloadPath,
    Expression<int>? queuedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (chapterId != null) 'chapter_id': chapterId,
      if (mangaId != null) 'manga_id': mangaId,
      if (status != null) 'status': status,
      if (progress != null) 'progress': progress,
      if (totalPages != null) 'total_pages': totalPages,
      if (downloadedPages != null) 'downloaded_pages': downloadedPages,
      if (downloadPath != null) 'download_path': downloadPath,
      if (queuedAt != null) 'queued_at': queuedAt,
    });
  }

  DownloadsCompanion copyWith(
      {Value<int>? id,
      Value<int>? chapterId,
      Value<int>? mangaId,
      Value<int>? status,
      Value<int>? progress,
      Value<int?>? totalPages,
      Value<int>? downloadedPages,
      Value<String?>? downloadPath,
      Value<int>? queuedAt}) {
    return DownloadsCompanion(
      id: id ?? this.id,
      chapterId: chapterId ?? this.chapterId,
      mangaId: mangaId ?? this.mangaId,
      status: status ?? this.status,
      progress: progress ?? this.progress,
      totalPages: totalPages ?? this.totalPages,
      downloadedPages: downloadedPages ?? this.downloadedPages,
      downloadPath: downloadPath ?? this.downloadPath,
      queuedAt: queuedAt ?? this.queuedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (mangaId.present) {
      map['manga_id'] = Variable<int>(mangaId.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (progress.present) {
      map['progress'] = Variable<int>(progress.value);
    }
    if (totalPages.present) {
      map['total_pages'] = Variable<int>(totalPages.value);
    }
    if (downloadedPages.present) {
      map['downloaded_pages'] = Variable<int>(downloadedPages.value);
    }
    if (downloadPath.present) {
      map['download_path'] = Variable<String>(downloadPath.value);
    }
    if (queuedAt.present) {
      map['queued_at'] = Variable<int>(queuedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DownloadsCompanion(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('mangaId: $mangaId, ')
          ..write('status: $status, ')
          ..write('progress: $progress, ')
          ..write('totalPages: $totalPages, ')
          ..write('downloadedPages: $downloadedPages, ')
          ..write('downloadPath: $downloadPath, ')
          ..write('queuedAt: $queuedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MangasTable mangas = $MangasTable(this);
  late final $ChaptersTable chapters = $ChaptersTable(this);
  late final $PagesTable pages = $PagesTable(this);
  late final $ExtensionsTable extensions = $ExtensionsTable(this);
  late final $SourcesTable sources = $SourcesTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $MangaCategoriesTable mangaCategories =
      $MangaCategoriesTable(this);
  late final $TracksTable tracks = $TracksTable(this);
  late final $HistoryTable history = $HistoryTable(this);
  late final $DownloadsTable downloads = $DownloadsTable(this);
  late final MangaDao mangaDao = MangaDao(this as AppDatabase);
  late final ChapterDao chapterDao = ChapterDao(this as AppDatabase);
  late final CategoryDao categoryDao = CategoryDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        mangas,
        chapters,
        pages,
        extensions,
        sources,
        categories,
        mangaCategories,
        tracks,
        history,
        downloads
      ];
}

typedef $$MangasTableCreateCompanionBuilder = MangasCompanion Function({
  Value<int> id,
  required String url,
  required String title,
  Value<String?> artist,
  Value<String?> author,
  Value<String?> description,
  Value<String> genre,
  Value<String?> thumbnailUrl,
  Value<int> status,
  Value<bool> favorite,
  required String source,
  Value<int?> lastUpdate,
  Value<int?> dateAdded,
  Value<int> viewerFlags,
  Value<int> chapterFlags,
  Value<int> coverLastModified,
  Value<String?> customTitle,
  Value<String?> customArtist,
  Value<String?> customAuthor,
  Value<String?> customDescription,
  Value<String?> customGenre,
  Value<int?> customStatus,
  Value<String?> localCoverPath,
  Value<int?> windowReadingMode,
});
typedef $$MangasTableUpdateCompanionBuilder = MangasCompanion Function({
  Value<int> id,
  Value<String> url,
  Value<String> title,
  Value<String?> artist,
  Value<String?> author,
  Value<String?> description,
  Value<String> genre,
  Value<String?> thumbnailUrl,
  Value<int> status,
  Value<bool> favorite,
  Value<String> source,
  Value<int?> lastUpdate,
  Value<int?> dateAdded,
  Value<int> viewerFlags,
  Value<int> chapterFlags,
  Value<int> coverLastModified,
  Value<String?> customTitle,
  Value<String?> customArtist,
  Value<String?> customAuthor,
  Value<String?> customDescription,
  Value<String?> customGenre,
  Value<int?> customStatus,
  Value<String?> localCoverPath,
  Value<int?> windowReadingMode,
});

class $$MangasTableFilterComposer
    extends Composer<_$AppDatabase, $MangasTable> {
  $$MangasTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get artist => $composableBuilder(
      column: $table.artist, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get genre => $composableBuilder(
      column: $table.genre, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get thumbnailUrl => $composableBuilder(
      column: $table.thumbnailUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get favorite => $composableBuilder(
      column: $table.favorite, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get dateAdded => $composableBuilder(
      column: $table.dateAdded, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get viewerFlags => $composableBuilder(
      column: $table.viewerFlags, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get chapterFlags => $composableBuilder(
      column: $table.chapterFlags, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get coverLastModified => $composableBuilder(
      column: $table.coverLastModified,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customTitle => $composableBuilder(
      column: $table.customTitle, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customArtist => $composableBuilder(
      column: $table.customArtist, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customAuthor => $composableBuilder(
      column: $table.customAuthor, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customDescription => $composableBuilder(
      column: $table.customDescription,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customGenre => $composableBuilder(
      column: $table.customGenre, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get customStatus => $composableBuilder(
      column: $table.customStatus, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get localCoverPath => $composableBuilder(
      column: $table.localCoverPath,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get windowReadingMode => $composableBuilder(
      column: $table.windowReadingMode,
      builder: (column) => ColumnFilters(column));
}

class $$MangasTableOrderingComposer
    extends Composer<_$AppDatabase, $MangasTable> {
  $$MangasTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get artist => $composableBuilder(
      column: $table.artist, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get genre => $composableBuilder(
      column: $table.genre, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get thumbnailUrl => $composableBuilder(
      column: $table.thumbnailUrl,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get favorite => $composableBuilder(
      column: $table.favorite, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dateAdded => $composableBuilder(
      column: $table.dateAdded, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get viewerFlags => $composableBuilder(
      column: $table.viewerFlags, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get chapterFlags => $composableBuilder(
      column: $table.chapterFlags,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get coverLastModified => $composableBuilder(
      column: $table.coverLastModified,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customTitle => $composableBuilder(
      column: $table.customTitle, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customArtist => $composableBuilder(
      column: $table.customArtist,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customAuthor => $composableBuilder(
      column: $table.customAuthor,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customDescription => $composableBuilder(
      column: $table.customDescription,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customGenre => $composableBuilder(
      column: $table.customGenre, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get customStatus => $composableBuilder(
      column: $table.customStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get localCoverPath => $composableBuilder(
      column: $table.localCoverPath,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get windowReadingMode => $composableBuilder(
      column: $table.windowReadingMode,
      builder: (column) => ColumnOrderings(column));
}

class $$MangasTableAnnotationComposer
    extends Composer<_$AppDatabase, $MangasTable> {
  $$MangasTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get artist =>
      $composableBuilder(column: $table.artist, builder: (column) => column);

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get genre =>
      $composableBuilder(column: $table.genre, builder: (column) => column);

  GeneratedColumn<String> get thumbnailUrl => $composableBuilder(
      column: $table.thumbnailUrl, builder: (column) => column);

  GeneratedColumn<int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<bool> get favorite =>
      $composableBuilder(column: $table.favorite, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<int> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => column);

  GeneratedColumn<int> get dateAdded =>
      $composableBuilder(column: $table.dateAdded, builder: (column) => column);

  GeneratedColumn<int> get viewerFlags => $composableBuilder(
      column: $table.viewerFlags, builder: (column) => column);

  GeneratedColumn<int> get chapterFlags => $composableBuilder(
      column: $table.chapterFlags, builder: (column) => column);

  GeneratedColumn<int> get coverLastModified => $composableBuilder(
      column: $table.coverLastModified, builder: (column) => column);

  GeneratedColumn<String> get customTitle => $composableBuilder(
      column: $table.customTitle, builder: (column) => column);

  GeneratedColumn<String> get customArtist => $composableBuilder(
      column: $table.customArtist, builder: (column) => column);

  GeneratedColumn<String> get customAuthor => $composableBuilder(
      column: $table.customAuthor, builder: (column) => column);

  GeneratedColumn<String> get customDescription => $composableBuilder(
      column: $table.customDescription, builder: (column) => column);

  GeneratedColumn<String> get customGenre => $composableBuilder(
      column: $table.customGenre, builder: (column) => column);

  GeneratedColumn<int> get customStatus => $composableBuilder(
      column: $table.customStatus, builder: (column) => column);

  GeneratedColumn<String> get localCoverPath => $composableBuilder(
      column: $table.localCoverPath, builder: (column) => column);

  GeneratedColumn<int> get windowReadingMode => $composableBuilder(
      column: $table.windowReadingMode, builder: (column) => column);
}

class $$MangasTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MangasTable,
    DbManga,
    $$MangasTableFilterComposer,
    $$MangasTableOrderingComposer,
    $$MangasTableAnnotationComposer,
    $$MangasTableCreateCompanionBuilder,
    $$MangasTableUpdateCompanionBuilder,
    (DbManga, BaseReferences<_$AppDatabase, $MangasTable, DbManga>),
    DbManga,
    PrefetchHooks Function()> {
  $$MangasTableTableManager(_$AppDatabase db, $MangasTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MangasTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MangasTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MangasTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> url = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> artist = const Value.absent(),
            Value<String?> author = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String> genre = const Value.absent(),
            Value<String?> thumbnailUrl = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<bool> favorite = const Value.absent(),
            Value<String> source = const Value.absent(),
            Value<int?> lastUpdate = const Value.absent(),
            Value<int?> dateAdded = const Value.absent(),
            Value<int> viewerFlags = const Value.absent(),
            Value<int> chapterFlags = const Value.absent(),
            Value<int> coverLastModified = const Value.absent(),
            Value<String?> customTitle = const Value.absent(),
            Value<String?> customArtist = const Value.absent(),
            Value<String?> customAuthor = const Value.absent(),
            Value<String?> customDescription = const Value.absent(),
            Value<String?> customGenre = const Value.absent(),
            Value<int?> customStatus = const Value.absent(),
            Value<String?> localCoverPath = const Value.absent(),
            Value<int?> windowReadingMode = const Value.absent(),
          }) =>
              MangasCompanion(
            id: id,
            url: url,
            title: title,
            artist: artist,
            author: author,
            description: description,
            genre: genre,
            thumbnailUrl: thumbnailUrl,
            status: status,
            favorite: favorite,
            source: source,
            lastUpdate: lastUpdate,
            dateAdded: dateAdded,
            viewerFlags: viewerFlags,
            chapterFlags: chapterFlags,
            coverLastModified: coverLastModified,
            customTitle: customTitle,
            customArtist: customArtist,
            customAuthor: customAuthor,
            customDescription: customDescription,
            customGenre: customGenre,
            customStatus: customStatus,
            localCoverPath: localCoverPath,
            windowReadingMode: windowReadingMode,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String url,
            required String title,
            Value<String?> artist = const Value.absent(),
            Value<String?> author = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String> genre = const Value.absent(),
            Value<String?> thumbnailUrl = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<bool> favorite = const Value.absent(),
            required String source,
            Value<int?> lastUpdate = const Value.absent(),
            Value<int?> dateAdded = const Value.absent(),
            Value<int> viewerFlags = const Value.absent(),
            Value<int> chapterFlags = const Value.absent(),
            Value<int> coverLastModified = const Value.absent(),
            Value<String?> customTitle = const Value.absent(),
            Value<String?> customArtist = const Value.absent(),
            Value<String?> customAuthor = const Value.absent(),
            Value<String?> customDescription = const Value.absent(),
            Value<String?> customGenre = const Value.absent(),
            Value<int?> customStatus = const Value.absent(),
            Value<String?> localCoverPath = const Value.absent(),
            Value<int?> windowReadingMode = const Value.absent(),
          }) =>
              MangasCompanion.insert(
            id: id,
            url: url,
            title: title,
            artist: artist,
            author: author,
            description: description,
            genre: genre,
            thumbnailUrl: thumbnailUrl,
            status: status,
            favorite: favorite,
            source: source,
            lastUpdate: lastUpdate,
            dateAdded: dateAdded,
            viewerFlags: viewerFlags,
            chapterFlags: chapterFlags,
            coverLastModified: coverLastModified,
            customTitle: customTitle,
            customArtist: customArtist,
            customAuthor: customAuthor,
            customDescription: customDescription,
            customGenre: customGenre,
            customStatus: customStatus,
            localCoverPath: localCoverPath,
            windowReadingMode: windowReadingMode,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MangasTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MangasTable,
    DbManga,
    $$MangasTableFilterComposer,
    $$MangasTableOrderingComposer,
    $$MangasTableAnnotationComposer,
    $$MangasTableCreateCompanionBuilder,
    $$MangasTableUpdateCompanionBuilder,
    (DbManga, BaseReferences<_$AppDatabase, $MangasTable, DbManga>),
    DbManga,
    PrefetchHooks Function()>;
typedef $$ChaptersTableCreateCompanionBuilder = ChaptersCompanion Function({
  Value<int> id,
  required int mangaId,
  required String url,
  required String name,
  Value<String?> scanlator,
  Value<bool> read,
  Value<bool> bookmark,
  Value<int?> lastPageRead,
  Value<int?> dateFetch,
  Value<int?> dateUpload,
  Value<double> chapterNumber,
  Value<int> sourceOrder,
  Value<int?> totalPageCount,
  Value<String?> downloadPath,
});
typedef $$ChaptersTableUpdateCompanionBuilder = ChaptersCompanion Function({
  Value<int> id,
  Value<int> mangaId,
  Value<String> url,
  Value<String> name,
  Value<String?> scanlator,
  Value<bool> read,
  Value<bool> bookmark,
  Value<int?> lastPageRead,
  Value<int?> dateFetch,
  Value<int?> dateUpload,
  Value<double> chapterNumber,
  Value<int> sourceOrder,
  Value<int?> totalPageCount,
  Value<String?> downloadPath,
});

class $$ChaptersTableFilterComposer
    extends Composer<_$AppDatabase, $ChaptersTable> {
  $$ChaptersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get mangaId => $composableBuilder(
      column: $table.mangaId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get scanlator => $composableBuilder(
      column: $table.scanlator, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get read => $composableBuilder(
      column: $table.read, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get bookmark => $composableBuilder(
      column: $table.bookmark, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastPageRead => $composableBuilder(
      column: $table.lastPageRead, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get dateFetch => $composableBuilder(
      column: $table.dateFetch, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get dateUpload => $composableBuilder(
      column: $table.dateUpload, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get chapterNumber => $composableBuilder(
      column: $table.chapterNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sourceOrder => $composableBuilder(
      column: $table.sourceOrder, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalPageCount => $composableBuilder(
      column: $table.totalPageCount,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get downloadPath => $composableBuilder(
      column: $table.downloadPath, builder: (column) => ColumnFilters(column));
}

class $$ChaptersTableOrderingComposer
    extends Composer<_$AppDatabase, $ChaptersTable> {
  $$ChaptersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get mangaId => $composableBuilder(
      column: $table.mangaId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get scanlator => $composableBuilder(
      column: $table.scanlator, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get read => $composableBuilder(
      column: $table.read, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get bookmark => $composableBuilder(
      column: $table.bookmark, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastPageRead => $composableBuilder(
      column: $table.lastPageRead,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dateFetch => $composableBuilder(
      column: $table.dateFetch, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dateUpload => $composableBuilder(
      column: $table.dateUpload, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get chapterNumber => $composableBuilder(
      column: $table.chapterNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sourceOrder => $composableBuilder(
      column: $table.sourceOrder, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalPageCount => $composableBuilder(
      column: $table.totalPageCount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get downloadPath => $composableBuilder(
      column: $table.downloadPath,
      builder: (column) => ColumnOrderings(column));
}

class $$ChaptersTableAnnotationComposer
    extends Composer<_$AppDatabase, $ChaptersTable> {
  $$ChaptersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get mangaId =>
      $composableBuilder(column: $table.mangaId, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get scanlator =>
      $composableBuilder(column: $table.scanlator, builder: (column) => column);

  GeneratedColumn<bool> get read =>
      $composableBuilder(column: $table.read, builder: (column) => column);

  GeneratedColumn<bool> get bookmark =>
      $composableBuilder(column: $table.bookmark, builder: (column) => column);

  GeneratedColumn<int> get lastPageRead => $composableBuilder(
      column: $table.lastPageRead, builder: (column) => column);

  GeneratedColumn<int> get dateFetch =>
      $composableBuilder(column: $table.dateFetch, builder: (column) => column);

  GeneratedColumn<int> get dateUpload => $composableBuilder(
      column: $table.dateUpload, builder: (column) => column);

  GeneratedColumn<double> get chapterNumber => $composableBuilder(
      column: $table.chapterNumber, builder: (column) => column);

  GeneratedColumn<int> get sourceOrder => $composableBuilder(
      column: $table.sourceOrder, builder: (column) => column);

  GeneratedColumn<int> get totalPageCount => $composableBuilder(
      column: $table.totalPageCount, builder: (column) => column);

  GeneratedColumn<String> get downloadPath => $composableBuilder(
      column: $table.downloadPath, builder: (column) => column);
}

class $$ChaptersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ChaptersTable,
    DbChapter,
    $$ChaptersTableFilterComposer,
    $$ChaptersTableOrderingComposer,
    $$ChaptersTableAnnotationComposer,
    $$ChaptersTableCreateCompanionBuilder,
    $$ChaptersTableUpdateCompanionBuilder,
    (DbChapter, BaseReferences<_$AppDatabase, $ChaptersTable, DbChapter>),
    DbChapter,
    PrefetchHooks Function()> {
  $$ChaptersTableTableManager(_$AppDatabase db, $ChaptersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ChaptersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ChaptersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ChaptersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> mangaId = const Value.absent(),
            Value<String> url = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> scanlator = const Value.absent(),
            Value<bool> read = const Value.absent(),
            Value<bool> bookmark = const Value.absent(),
            Value<int?> lastPageRead = const Value.absent(),
            Value<int?> dateFetch = const Value.absent(),
            Value<int?> dateUpload = const Value.absent(),
            Value<double> chapterNumber = const Value.absent(),
            Value<int> sourceOrder = const Value.absent(),
            Value<int?> totalPageCount = const Value.absent(),
            Value<String?> downloadPath = const Value.absent(),
          }) =>
              ChaptersCompanion(
            id: id,
            mangaId: mangaId,
            url: url,
            name: name,
            scanlator: scanlator,
            read: read,
            bookmark: bookmark,
            lastPageRead: lastPageRead,
            dateFetch: dateFetch,
            dateUpload: dateUpload,
            chapterNumber: chapterNumber,
            sourceOrder: sourceOrder,
            totalPageCount: totalPageCount,
            downloadPath: downloadPath,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int mangaId,
            required String url,
            required String name,
            Value<String?> scanlator = const Value.absent(),
            Value<bool> read = const Value.absent(),
            Value<bool> bookmark = const Value.absent(),
            Value<int?> lastPageRead = const Value.absent(),
            Value<int?> dateFetch = const Value.absent(),
            Value<int?> dateUpload = const Value.absent(),
            Value<double> chapterNumber = const Value.absent(),
            Value<int> sourceOrder = const Value.absent(),
            Value<int?> totalPageCount = const Value.absent(),
            Value<String?> downloadPath = const Value.absent(),
          }) =>
              ChaptersCompanion.insert(
            id: id,
            mangaId: mangaId,
            url: url,
            name: name,
            scanlator: scanlator,
            read: read,
            bookmark: bookmark,
            lastPageRead: lastPageRead,
            dateFetch: dateFetch,
            dateUpload: dateUpload,
            chapterNumber: chapterNumber,
            sourceOrder: sourceOrder,
            totalPageCount: totalPageCount,
            downloadPath: downloadPath,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ChaptersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ChaptersTable,
    DbChapter,
    $$ChaptersTableFilterComposer,
    $$ChaptersTableOrderingComposer,
    $$ChaptersTableAnnotationComposer,
    $$ChaptersTableCreateCompanionBuilder,
    $$ChaptersTableUpdateCompanionBuilder,
    (DbChapter, BaseReferences<_$AppDatabase, $ChaptersTable, DbChapter>),
    DbChapter,
    PrefetchHooks Function()>;
typedef $$PagesTableCreateCompanionBuilder = PagesCompanion Function({
  Value<int> id,
  required int chapterId,
  required int index,
  Value<String?> url,
  Value<String?> imageUrl,
  Value<String?> localPath,
  Value<int> status,
  Value<int?> width,
  Value<int?> height,
});
typedef $$PagesTableUpdateCompanionBuilder = PagesCompanion Function({
  Value<int> id,
  Value<int> chapterId,
  Value<int> index,
  Value<String?> url,
  Value<String?> imageUrl,
  Value<String?> localPath,
  Value<int> status,
  Value<int?> width,
  Value<int?> height,
});

class $$PagesTableFilterComposer extends Composer<_$AppDatabase, $PagesTable> {
  $$PagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get chapterId => $composableBuilder(
      column: $table.chapterId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get index => $composableBuilder(
      column: $table.index, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get localPath => $composableBuilder(
      column: $table.localPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));
}

class $$PagesTableOrderingComposer
    extends Composer<_$AppDatabase, $PagesTable> {
  $$PagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get chapterId => $composableBuilder(
      column: $table.chapterId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get index => $composableBuilder(
      column: $table.index, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get localPath => $composableBuilder(
      column: $table.localPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));
}

class $$PagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PagesTable> {
  $$PagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get chapterId =>
      $composableBuilder(column: $table.chapterId, builder: (column) => column);

  GeneratedColumn<int> get index =>
      $composableBuilder(column: $table.index, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get localPath =>
      $composableBuilder(column: $table.localPath, builder: (column) => column);

  GeneratedColumn<int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);
}

class $$PagesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PagesTable,
    DbPage,
    $$PagesTableFilterComposer,
    $$PagesTableOrderingComposer,
    $$PagesTableAnnotationComposer,
    $$PagesTableCreateCompanionBuilder,
    $$PagesTableUpdateCompanionBuilder,
    (DbPage, BaseReferences<_$AppDatabase, $PagesTable, DbPage>),
    DbPage,
    PrefetchHooks Function()> {
  $$PagesTableTableManager(_$AppDatabase db, $PagesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> chapterId = const Value.absent(),
            Value<int> index = const Value.absent(),
            Value<String?> url = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<String?> localPath = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<int?> width = const Value.absent(),
            Value<int?> height = const Value.absent(),
          }) =>
              PagesCompanion(
            id: id,
            chapterId: chapterId,
            index: index,
            url: url,
            imageUrl: imageUrl,
            localPath: localPath,
            status: status,
            width: width,
            height: height,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int chapterId,
            required int index,
            Value<String?> url = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<String?> localPath = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<int?> width = const Value.absent(),
            Value<int?> height = const Value.absent(),
          }) =>
              PagesCompanion.insert(
            id: id,
            chapterId: chapterId,
            index: index,
            url: url,
            imageUrl: imageUrl,
            localPath: localPath,
            status: status,
            width: width,
            height: height,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PagesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PagesTable,
    DbPage,
    $$PagesTableFilterComposer,
    $$PagesTableOrderingComposer,
    $$PagesTableAnnotationComposer,
    $$PagesTableCreateCompanionBuilder,
    $$PagesTableUpdateCompanionBuilder,
    (DbPage, BaseReferences<_$AppDatabase, $PagesTable, DbPage>),
    DbPage,
    PrefetchHooks Function()>;
typedef $$ExtensionsTableCreateCompanionBuilder = ExtensionsCompanion Function({
  required String pkgName,
  required String name,
  required String versionName,
  required int versionCode,
  required String lang,
  Value<String?> description,
  Value<bool> isNsfw,
  required String apkPath,
  Value<int> status,
  Value<String?> iconPath,
  Value<int> rowid,
});
typedef $$ExtensionsTableUpdateCompanionBuilder = ExtensionsCompanion Function({
  Value<String> pkgName,
  Value<String> name,
  Value<String> versionName,
  Value<int> versionCode,
  Value<String> lang,
  Value<String?> description,
  Value<bool> isNsfw,
  Value<String> apkPath,
  Value<int> status,
  Value<String?> iconPath,
  Value<int> rowid,
});

class $$ExtensionsTableFilterComposer
    extends Composer<_$AppDatabase, $ExtensionsTable> {
  $$ExtensionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get pkgName => $composableBuilder(
      column: $table.pkgName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get versionName => $composableBuilder(
      column: $table.versionName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get versionCode => $composableBuilder(
      column: $table.versionCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lang => $composableBuilder(
      column: $table.lang, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isNsfw => $composableBuilder(
      column: $table.isNsfw, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get apkPath => $composableBuilder(
      column: $table.apkPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get iconPath => $composableBuilder(
      column: $table.iconPath, builder: (column) => ColumnFilters(column));
}

class $$ExtensionsTableOrderingComposer
    extends Composer<_$AppDatabase, $ExtensionsTable> {
  $$ExtensionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get pkgName => $composableBuilder(
      column: $table.pkgName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get versionName => $composableBuilder(
      column: $table.versionName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get versionCode => $composableBuilder(
      column: $table.versionCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lang => $composableBuilder(
      column: $table.lang, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isNsfw => $composableBuilder(
      column: $table.isNsfw, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get apkPath => $composableBuilder(
      column: $table.apkPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get iconPath => $composableBuilder(
      column: $table.iconPath, builder: (column) => ColumnOrderings(column));
}

class $$ExtensionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExtensionsTable> {
  $$ExtensionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get pkgName =>
      $composableBuilder(column: $table.pkgName, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get versionName => $composableBuilder(
      column: $table.versionName, builder: (column) => column);

  GeneratedColumn<int> get versionCode => $composableBuilder(
      column: $table.versionCode, builder: (column) => column);

  GeneratedColumn<String> get lang =>
      $composableBuilder(column: $table.lang, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<bool> get isNsfw =>
      $composableBuilder(column: $table.isNsfw, builder: (column) => column);

  GeneratedColumn<String> get apkPath =>
      $composableBuilder(column: $table.apkPath, builder: (column) => column);

  GeneratedColumn<int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get iconPath =>
      $composableBuilder(column: $table.iconPath, builder: (column) => column);
}

class $$ExtensionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ExtensionsTable,
    DbExtension,
    $$ExtensionsTableFilterComposer,
    $$ExtensionsTableOrderingComposer,
    $$ExtensionsTableAnnotationComposer,
    $$ExtensionsTableCreateCompanionBuilder,
    $$ExtensionsTableUpdateCompanionBuilder,
    (DbExtension, BaseReferences<_$AppDatabase, $ExtensionsTable, DbExtension>),
    DbExtension,
    PrefetchHooks Function()> {
  $$ExtensionsTableTableManager(_$AppDatabase db, $ExtensionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExtensionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExtensionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExtensionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> pkgName = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> versionName = const Value.absent(),
            Value<int> versionCode = const Value.absent(),
            Value<String> lang = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<bool> isNsfw = const Value.absent(),
            Value<String> apkPath = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<String?> iconPath = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ExtensionsCompanion(
            pkgName: pkgName,
            name: name,
            versionName: versionName,
            versionCode: versionCode,
            lang: lang,
            description: description,
            isNsfw: isNsfw,
            apkPath: apkPath,
            status: status,
            iconPath: iconPath,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String pkgName,
            required String name,
            required String versionName,
            required int versionCode,
            required String lang,
            Value<String?> description = const Value.absent(),
            Value<bool> isNsfw = const Value.absent(),
            required String apkPath,
            Value<int> status = const Value.absent(),
            Value<String?> iconPath = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ExtensionsCompanion.insert(
            pkgName: pkgName,
            name: name,
            versionName: versionName,
            versionCode: versionCode,
            lang: lang,
            description: description,
            isNsfw: isNsfw,
            apkPath: apkPath,
            status: status,
            iconPath: iconPath,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ExtensionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ExtensionsTable,
    DbExtension,
    $$ExtensionsTableFilterComposer,
    $$ExtensionsTableOrderingComposer,
    $$ExtensionsTableAnnotationComposer,
    $$ExtensionsTableCreateCompanionBuilder,
    $$ExtensionsTableUpdateCompanionBuilder,
    (DbExtension, BaseReferences<_$AppDatabase, $ExtensionsTable, DbExtension>),
    DbExtension,
    PrefetchHooks Function()>;
typedef $$SourcesTableCreateCompanionBuilder = SourcesCompanion Function({
  required String id,
  required String name,
  required String lang,
  Value<String?> baseUrl,
  Value<String?> iconUrl,
  required String extensionPkgName,
  Value<int> rowid,
});
typedef $$SourcesTableUpdateCompanionBuilder = SourcesCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> lang,
  Value<String?> baseUrl,
  Value<String?> iconUrl,
  Value<String> extensionPkgName,
  Value<int> rowid,
});

class $$SourcesTableFilterComposer
    extends Composer<_$AppDatabase, $SourcesTable> {
  $$SourcesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lang => $composableBuilder(
      column: $table.lang, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get baseUrl => $composableBuilder(
      column: $table.baseUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get iconUrl => $composableBuilder(
      column: $table.iconUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get extensionPkgName => $composableBuilder(
      column: $table.extensionPkgName,
      builder: (column) => ColumnFilters(column));
}

class $$SourcesTableOrderingComposer
    extends Composer<_$AppDatabase, $SourcesTable> {
  $$SourcesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lang => $composableBuilder(
      column: $table.lang, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get baseUrl => $composableBuilder(
      column: $table.baseUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get iconUrl => $composableBuilder(
      column: $table.iconUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get extensionPkgName => $composableBuilder(
      column: $table.extensionPkgName,
      builder: (column) => ColumnOrderings(column));
}

class $$SourcesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SourcesTable> {
  $$SourcesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get lang =>
      $composableBuilder(column: $table.lang, builder: (column) => column);

  GeneratedColumn<String> get baseUrl =>
      $composableBuilder(column: $table.baseUrl, builder: (column) => column);

  GeneratedColumn<String> get iconUrl =>
      $composableBuilder(column: $table.iconUrl, builder: (column) => column);

  GeneratedColumn<String> get extensionPkgName => $composableBuilder(
      column: $table.extensionPkgName, builder: (column) => column);
}

class $$SourcesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SourcesTable,
    DbSource,
    $$SourcesTableFilterComposer,
    $$SourcesTableOrderingComposer,
    $$SourcesTableAnnotationComposer,
    $$SourcesTableCreateCompanionBuilder,
    $$SourcesTableUpdateCompanionBuilder,
    (DbSource, BaseReferences<_$AppDatabase, $SourcesTable, DbSource>),
    DbSource,
    PrefetchHooks Function()> {
  $$SourcesTableTableManager(_$AppDatabase db, $SourcesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SourcesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SourcesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SourcesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> lang = const Value.absent(),
            Value<String?> baseUrl = const Value.absent(),
            Value<String?> iconUrl = const Value.absent(),
            Value<String> extensionPkgName = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SourcesCompanion(
            id: id,
            name: name,
            lang: lang,
            baseUrl: baseUrl,
            iconUrl: iconUrl,
            extensionPkgName: extensionPkgName,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required String lang,
            Value<String?> baseUrl = const Value.absent(),
            Value<String?> iconUrl = const Value.absent(),
            required String extensionPkgName,
            Value<int> rowid = const Value.absent(),
          }) =>
              SourcesCompanion.insert(
            id: id,
            name: name,
            lang: lang,
            baseUrl: baseUrl,
            iconUrl: iconUrl,
            extensionPkgName: extensionPkgName,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SourcesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SourcesTable,
    DbSource,
    $$SourcesTableFilterComposer,
    $$SourcesTableOrderingComposer,
    $$SourcesTableAnnotationComposer,
    $$SourcesTableCreateCompanionBuilder,
    $$SourcesTableUpdateCompanionBuilder,
    (DbSource, BaseReferences<_$AppDatabase, $SourcesTable, DbSource>),
    DbSource,
    PrefetchHooks Function()>;
typedef $$CategoriesTableCreateCompanionBuilder = CategoriesCompanion Function({
  Value<int> id,
  required String name,
  Value<int> order,
  Value<bool> isDefault,
});
typedef $$CategoriesTableUpdateCompanionBuilder = CategoriesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<int> order,
  Value<bool> isDefault,
});

class $$CategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get order => $composableBuilder(
      column: $table.order, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDefault => $composableBuilder(
      column: $table.isDefault, builder: (column) => ColumnFilters(column));
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get order => $composableBuilder(
      column: $table.order, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDefault => $composableBuilder(
      column: $table.isDefault, builder: (column) => ColumnOrderings(column));
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get order =>
      $composableBuilder(column: $table.order, builder: (column) => column);

  GeneratedColumn<bool> get isDefault =>
      $composableBuilder(column: $table.isDefault, builder: (column) => column);
}

class $$CategoriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CategoriesTable,
    DbCategory,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (DbCategory, BaseReferences<_$AppDatabase, $CategoriesTable, DbCategory>),
    DbCategory,
    PrefetchHooks Function()> {
  $$CategoriesTableTableManager(_$AppDatabase db, $CategoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> order = const Value.absent(),
            Value<bool> isDefault = const Value.absent(),
          }) =>
              CategoriesCompanion(
            id: id,
            name: name,
            order: order,
            isDefault: isDefault,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<int> order = const Value.absent(),
            Value<bool> isDefault = const Value.absent(),
          }) =>
              CategoriesCompanion.insert(
            id: id,
            name: name,
            order: order,
            isDefault: isDefault,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CategoriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CategoriesTable,
    DbCategory,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (DbCategory, BaseReferences<_$AppDatabase, $CategoriesTable, DbCategory>),
    DbCategory,
    PrefetchHooks Function()>;
typedef $$MangaCategoriesTableCreateCompanionBuilder = MangaCategoriesCompanion
    Function({
  Value<int> id,
  required int mangaId,
  required int categoryId,
});
typedef $$MangaCategoriesTableUpdateCompanionBuilder = MangaCategoriesCompanion
    Function({
  Value<int> id,
  Value<int> mangaId,
  Value<int> categoryId,
});

class $$MangaCategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $MangaCategoriesTable> {
  $$MangaCategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get mangaId => $composableBuilder(
      column: $table.mangaId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnFilters(column));
}

class $$MangaCategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $MangaCategoriesTable> {
  $$MangaCategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get mangaId => $composableBuilder(
      column: $table.mangaId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnOrderings(column));
}

class $$MangaCategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $MangaCategoriesTable> {
  $$MangaCategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get mangaId =>
      $composableBuilder(column: $table.mangaId, builder: (column) => column);

  GeneratedColumn<int> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => column);
}

class $$MangaCategoriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MangaCategoriesTable,
    DbMangaCategory,
    $$MangaCategoriesTableFilterComposer,
    $$MangaCategoriesTableOrderingComposer,
    $$MangaCategoriesTableAnnotationComposer,
    $$MangaCategoriesTableCreateCompanionBuilder,
    $$MangaCategoriesTableUpdateCompanionBuilder,
    (
      DbMangaCategory,
      BaseReferences<_$AppDatabase, $MangaCategoriesTable, DbMangaCategory>
    ),
    DbMangaCategory,
    PrefetchHooks Function()> {
  $$MangaCategoriesTableTableManager(
      _$AppDatabase db, $MangaCategoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MangaCategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MangaCategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MangaCategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> mangaId = const Value.absent(),
            Value<int> categoryId = const Value.absent(),
          }) =>
              MangaCategoriesCompanion(
            id: id,
            mangaId: mangaId,
            categoryId: categoryId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int mangaId,
            required int categoryId,
          }) =>
              MangaCategoriesCompanion.insert(
            id: id,
            mangaId: mangaId,
            categoryId: categoryId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MangaCategoriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MangaCategoriesTable,
    DbMangaCategory,
    $$MangaCategoriesTableFilterComposer,
    $$MangaCategoriesTableOrderingComposer,
    $$MangaCategoriesTableAnnotationComposer,
    $$MangaCategoriesTableCreateCompanionBuilder,
    $$MangaCategoriesTableUpdateCompanionBuilder,
    (
      DbMangaCategory,
      BaseReferences<_$AppDatabase, $MangaCategoriesTable, DbMangaCategory>
    ),
    DbMangaCategory,
    PrefetchHooks Function()>;
typedef $$TracksTableCreateCompanionBuilder = TracksCompanion Function({
  Value<int> id,
  required int mangaId,
  required int trackerId,
  Value<String?> trackerUrl,
  Value<int?> status,
  Value<int?> score,
  Value<int?> lastChapterRead,
  Value<int?> totalChapters,
  Value<int?> startedReadingDate,
  Value<int?> finishedReadingDate,
});
typedef $$TracksTableUpdateCompanionBuilder = TracksCompanion Function({
  Value<int> id,
  Value<int> mangaId,
  Value<int> trackerId,
  Value<String?> trackerUrl,
  Value<int?> status,
  Value<int?> score,
  Value<int?> lastChapterRead,
  Value<int?> totalChapters,
  Value<int?> startedReadingDate,
  Value<int?> finishedReadingDate,
});

class $$TracksTableFilterComposer
    extends Composer<_$AppDatabase, $TracksTable> {
  $$TracksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get mangaId => $composableBuilder(
      column: $table.mangaId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get trackerId => $composableBuilder(
      column: $table.trackerId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get trackerUrl => $composableBuilder(
      column: $table.trackerUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get score => $composableBuilder(
      column: $table.score, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastChapterRead => $composableBuilder(
      column: $table.lastChapterRead,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalChapters => $composableBuilder(
      column: $table.totalChapters, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get startedReadingDate => $composableBuilder(
      column: $table.startedReadingDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get finishedReadingDate => $composableBuilder(
      column: $table.finishedReadingDate,
      builder: (column) => ColumnFilters(column));
}

class $$TracksTableOrderingComposer
    extends Composer<_$AppDatabase, $TracksTable> {
  $$TracksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get mangaId => $composableBuilder(
      column: $table.mangaId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get trackerId => $composableBuilder(
      column: $table.trackerId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get trackerUrl => $composableBuilder(
      column: $table.trackerUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get score => $composableBuilder(
      column: $table.score, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastChapterRead => $composableBuilder(
      column: $table.lastChapterRead,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalChapters => $composableBuilder(
      column: $table.totalChapters,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get startedReadingDate => $composableBuilder(
      column: $table.startedReadingDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get finishedReadingDate => $composableBuilder(
      column: $table.finishedReadingDate,
      builder: (column) => ColumnOrderings(column));
}

class $$TracksTableAnnotationComposer
    extends Composer<_$AppDatabase, $TracksTable> {
  $$TracksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get mangaId =>
      $composableBuilder(column: $table.mangaId, builder: (column) => column);

  GeneratedColumn<int> get trackerId =>
      $composableBuilder(column: $table.trackerId, builder: (column) => column);

  GeneratedColumn<String> get trackerUrl => $composableBuilder(
      column: $table.trackerUrl, builder: (column) => column);

  GeneratedColumn<int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get score =>
      $composableBuilder(column: $table.score, builder: (column) => column);

  GeneratedColumn<int> get lastChapterRead => $composableBuilder(
      column: $table.lastChapterRead, builder: (column) => column);

  GeneratedColumn<int> get totalChapters => $composableBuilder(
      column: $table.totalChapters, builder: (column) => column);

  GeneratedColumn<int> get startedReadingDate => $composableBuilder(
      column: $table.startedReadingDate, builder: (column) => column);

  GeneratedColumn<int> get finishedReadingDate => $composableBuilder(
      column: $table.finishedReadingDate, builder: (column) => column);
}

class $$TracksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TracksTable,
    DbTrack,
    $$TracksTableFilterComposer,
    $$TracksTableOrderingComposer,
    $$TracksTableAnnotationComposer,
    $$TracksTableCreateCompanionBuilder,
    $$TracksTableUpdateCompanionBuilder,
    (DbTrack, BaseReferences<_$AppDatabase, $TracksTable, DbTrack>),
    DbTrack,
    PrefetchHooks Function()> {
  $$TracksTableTableManager(_$AppDatabase db, $TracksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TracksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TracksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TracksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> mangaId = const Value.absent(),
            Value<int> trackerId = const Value.absent(),
            Value<String?> trackerUrl = const Value.absent(),
            Value<int?> status = const Value.absent(),
            Value<int?> score = const Value.absent(),
            Value<int?> lastChapterRead = const Value.absent(),
            Value<int?> totalChapters = const Value.absent(),
            Value<int?> startedReadingDate = const Value.absent(),
            Value<int?> finishedReadingDate = const Value.absent(),
          }) =>
              TracksCompanion(
            id: id,
            mangaId: mangaId,
            trackerId: trackerId,
            trackerUrl: trackerUrl,
            status: status,
            score: score,
            lastChapterRead: lastChapterRead,
            totalChapters: totalChapters,
            startedReadingDate: startedReadingDate,
            finishedReadingDate: finishedReadingDate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int mangaId,
            required int trackerId,
            Value<String?> trackerUrl = const Value.absent(),
            Value<int?> status = const Value.absent(),
            Value<int?> score = const Value.absent(),
            Value<int?> lastChapterRead = const Value.absent(),
            Value<int?> totalChapters = const Value.absent(),
            Value<int?> startedReadingDate = const Value.absent(),
            Value<int?> finishedReadingDate = const Value.absent(),
          }) =>
              TracksCompanion.insert(
            id: id,
            mangaId: mangaId,
            trackerId: trackerId,
            trackerUrl: trackerUrl,
            status: status,
            score: score,
            lastChapterRead: lastChapterRead,
            totalChapters: totalChapters,
            startedReadingDate: startedReadingDate,
            finishedReadingDate: finishedReadingDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TracksTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TracksTable,
    DbTrack,
    $$TracksTableFilterComposer,
    $$TracksTableOrderingComposer,
    $$TracksTableAnnotationComposer,
    $$TracksTableCreateCompanionBuilder,
    $$TracksTableUpdateCompanionBuilder,
    (DbTrack, BaseReferences<_$AppDatabase, $TracksTable, DbTrack>),
    DbTrack,
    PrefetchHooks Function()>;
typedef $$HistoryTableCreateCompanionBuilder = HistoryCompanion Function({
  Value<int> id,
  required int mangaId,
  required int chapterId,
  Value<int?> lastPageRead,
  required int lastRead,
});
typedef $$HistoryTableUpdateCompanionBuilder = HistoryCompanion Function({
  Value<int> id,
  Value<int> mangaId,
  Value<int> chapterId,
  Value<int?> lastPageRead,
  Value<int> lastRead,
});

class $$HistoryTableFilterComposer
    extends Composer<_$AppDatabase, $HistoryTable> {
  $$HistoryTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get mangaId => $composableBuilder(
      column: $table.mangaId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get chapterId => $composableBuilder(
      column: $table.chapterId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastPageRead => $composableBuilder(
      column: $table.lastPageRead, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastRead => $composableBuilder(
      column: $table.lastRead, builder: (column) => ColumnFilters(column));
}

class $$HistoryTableOrderingComposer
    extends Composer<_$AppDatabase, $HistoryTable> {
  $$HistoryTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get mangaId => $composableBuilder(
      column: $table.mangaId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get chapterId => $composableBuilder(
      column: $table.chapterId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastPageRead => $composableBuilder(
      column: $table.lastPageRead,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastRead => $composableBuilder(
      column: $table.lastRead, builder: (column) => ColumnOrderings(column));
}

class $$HistoryTableAnnotationComposer
    extends Composer<_$AppDatabase, $HistoryTable> {
  $$HistoryTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get mangaId =>
      $composableBuilder(column: $table.mangaId, builder: (column) => column);

  GeneratedColumn<int> get chapterId =>
      $composableBuilder(column: $table.chapterId, builder: (column) => column);

  GeneratedColumn<int> get lastPageRead => $composableBuilder(
      column: $table.lastPageRead, builder: (column) => column);

  GeneratedColumn<int> get lastRead =>
      $composableBuilder(column: $table.lastRead, builder: (column) => column);
}

class $$HistoryTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HistoryTable,
    DbHistory,
    $$HistoryTableFilterComposer,
    $$HistoryTableOrderingComposer,
    $$HistoryTableAnnotationComposer,
    $$HistoryTableCreateCompanionBuilder,
    $$HistoryTableUpdateCompanionBuilder,
    (DbHistory, BaseReferences<_$AppDatabase, $HistoryTable, DbHistory>),
    DbHistory,
    PrefetchHooks Function()> {
  $$HistoryTableTableManager(_$AppDatabase db, $HistoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HistoryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HistoryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HistoryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> mangaId = const Value.absent(),
            Value<int> chapterId = const Value.absent(),
            Value<int?> lastPageRead = const Value.absent(),
            Value<int> lastRead = const Value.absent(),
          }) =>
              HistoryCompanion(
            id: id,
            mangaId: mangaId,
            chapterId: chapterId,
            lastPageRead: lastPageRead,
            lastRead: lastRead,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int mangaId,
            required int chapterId,
            Value<int?> lastPageRead = const Value.absent(),
            required int lastRead,
          }) =>
              HistoryCompanion.insert(
            id: id,
            mangaId: mangaId,
            chapterId: chapterId,
            lastPageRead: lastPageRead,
            lastRead: lastRead,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$HistoryTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $HistoryTable,
    DbHistory,
    $$HistoryTableFilterComposer,
    $$HistoryTableOrderingComposer,
    $$HistoryTableAnnotationComposer,
    $$HistoryTableCreateCompanionBuilder,
    $$HistoryTableUpdateCompanionBuilder,
    (DbHistory, BaseReferences<_$AppDatabase, $HistoryTable, DbHistory>),
    DbHistory,
    PrefetchHooks Function()>;
typedef $$DownloadsTableCreateCompanionBuilder = DownloadsCompanion Function({
  Value<int> id,
  required int chapterId,
  required int mangaId,
  Value<int> status,
  Value<int> progress,
  Value<int?> totalPages,
  Value<int> downloadedPages,
  Value<String?> downloadPath,
  required int queuedAt,
});
typedef $$DownloadsTableUpdateCompanionBuilder = DownloadsCompanion Function({
  Value<int> id,
  Value<int> chapterId,
  Value<int> mangaId,
  Value<int> status,
  Value<int> progress,
  Value<int?> totalPages,
  Value<int> downloadedPages,
  Value<String?> downloadPath,
  Value<int> queuedAt,
});

class $$DownloadsTableFilterComposer
    extends Composer<_$AppDatabase, $DownloadsTable> {
  $$DownloadsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get chapterId => $composableBuilder(
      column: $table.chapterId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get mangaId => $composableBuilder(
      column: $table.mangaId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get progress => $composableBuilder(
      column: $table.progress, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalPages => $composableBuilder(
      column: $table.totalPages, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get downloadedPages => $composableBuilder(
      column: $table.downloadedPages,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get downloadPath => $composableBuilder(
      column: $table.downloadPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get queuedAt => $composableBuilder(
      column: $table.queuedAt, builder: (column) => ColumnFilters(column));
}

class $$DownloadsTableOrderingComposer
    extends Composer<_$AppDatabase, $DownloadsTable> {
  $$DownloadsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get chapterId => $composableBuilder(
      column: $table.chapterId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get mangaId => $composableBuilder(
      column: $table.mangaId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get progress => $composableBuilder(
      column: $table.progress, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalPages => $composableBuilder(
      column: $table.totalPages, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get downloadedPages => $composableBuilder(
      column: $table.downloadedPages,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get downloadPath => $composableBuilder(
      column: $table.downloadPath,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get queuedAt => $composableBuilder(
      column: $table.queuedAt, builder: (column) => ColumnOrderings(column));
}

class $$DownloadsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DownloadsTable> {
  $$DownloadsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get chapterId =>
      $composableBuilder(column: $table.chapterId, builder: (column) => column);

  GeneratedColumn<int> get mangaId =>
      $composableBuilder(column: $table.mangaId, builder: (column) => column);

  GeneratedColumn<int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get progress =>
      $composableBuilder(column: $table.progress, builder: (column) => column);

  GeneratedColumn<int> get totalPages => $composableBuilder(
      column: $table.totalPages, builder: (column) => column);

  GeneratedColumn<int> get downloadedPages => $composableBuilder(
      column: $table.downloadedPages, builder: (column) => column);

  GeneratedColumn<String> get downloadPath => $composableBuilder(
      column: $table.downloadPath, builder: (column) => column);

  GeneratedColumn<int> get queuedAt =>
      $composableBuilder(column: $table.queuedAt, builder: (column) => column);
}

class $$DownloadsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DownloadsTable,
    DbDownload,
    $$DownloadsTableFilterComposer,
    $$DownloadsTableOrderingComposer,
    $$DownloadsTableAnnotationComposer,
    $$DownloadsTableCreateCompanionBuilder,
    $$DownloadsTableUpdateCompanionBuilder,
    (DbDownload, BaseReferences<_$AppDatabase, $DownloadsTable, DbDownload>),
    DbDownload,
    PrefetchHooks Function()> {
  $$DownloadsTableTableManager(_$AppDatabase db, $DownloadsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DownloadsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DownloadsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DownloadsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> chapterId = const Value.absent(),
            Value<int> mangaId = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<int> progress = const Value.absent(),
            Value<int?> totalPages = const Value.absent(),
            Value<int> downloadedPages = const Value.absent(),
            Value<String?> downloadPath = const Value.absent(),
            Value<int> queuedAt = const Value.absent(),
          }) =>
              DownloadsCompanion(
            id: id,
            chapterId: chapterId,
            mangaId: mangaId,
            status: status,
            progress: progress,
            totalPages: totalPages,
            downloadedPages: downloadedPages,
            downloadPath: downloadPath,
            queuedAt: queuedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int chapterId,
            required int mangaId,
            Value<int> status = const Value.absent(),
            Value<int> progress = const Value.absent(),
            Value<int?> totalPages = const Value.absent(),
            Value<int> downloadedPages = const Value.absent(),
            Value<String?> downloadPath = const Value.absent(),
            required int queuedAt,
          }) =>
              DownloadsCompanion.insert(
            id: id,
            chapterId: chapterId,
            mangaId: mangaId,
            status: status,
            progress: progress,
            totalPages: totalPages,
            downloadedPages: downloadedPages,
            downloadPath: downloadPath,
            queuedAt: queuedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DownloadsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DownloadsTable,
    DbDownload,
    $$DownloadsTableFilterComposer,
    $$DownloadsTableOrderingComposer,
    $$DownloadsTableAnnotationComposer,
    $$DownloadsTableCreateCompanionBuilder,
    $$DownloadsTableUpdateCompanionBuilder,
    (DbDownload, BaseReferences<_$AppDatabase, $DownloadsTable, DbDownload>),
    DbDownload,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MangasTableTableManager get mangas =>
      $$MangasTableTableManager(_db, _db.mangas);
  $$ChaptersTableTableManager get chapters =>
      $$ChaptersTableTableManager(_db, _db.chapters);
  $$PagesTableTableManager get pages =>
      $$PagesTableTableManager(_db, _db.pages);
  $$ExtensionsTableTableManager get extensions =>
      $$ExtensionsTableTableManager(_db, _db.extensions);
  $$SourcesTableTableManager get sources =>
      $$SourcesTableTableManager(_db, _db.sources);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$MangaCategoriesTableTableManager get mangaCategories =>
      $$MangaCategoriesTableTableManager(_db, _db.mangaCategories);
  $$TracksTableTableManager get tracks =>
      $$TracksTableTableManager(_db, _db.tracks);
  $$HistoryTableTableManager get history =>
      $$HistoryTableTableManager(_db, _db.history);
  $$DownloadsTableTableManager get downloads =>
      $$DownloadsTableTableManager(_db, _db.downloads);
}
