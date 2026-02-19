// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaImpl _$$MangaImplFromJson(Map<String, dynamic> json) => _$MangaImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      title: json['title'] as String,
      artist: json['artist'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      genre:
          (json['genre'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      thumbnailUrl: json['thumbnailUrl'] as String?,
      status: $enumDecodeNullable(_$MangaStatusEnumMap, json['status']) ??
          MangaStatus.unknown,
      favorite: json['favorite'] as bool? ?? false,
      source: json['source'] as String,
      lastUpdate: (json['lastUpdate'] as num?)?.toInt(),
      dateAdded: (json['dateAdded'] as num?)?.toInt(),
      viewerFlags: (json['viewerFlags'] as num?)?.toInt() ?? 0,
      chapterFlags: (json['chapterFlags'] as num?)?.toInt() ?? 0,
      coverLastModified: (json['coverLastModified'] as num?)?.toInt() ?? 0,
      customTitle: json['customTitle'] as String?,
      customArtist: json['customArtist'] as String?,
      customAuthor: json['customAuthor'] as String?,
      customDescription: json['customDescription'] as String?,
      customGenre: (json['customGenre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      customStatus: (json['customStatus'] as num?)?.toInt(),
      localCoverPath: json['localCoverPath'] as String?,
      windowReadingMode: $enumDecodeNullable(
          _$WindowReadingModeEnumMap, json['windowReadingMode']),
    );

Map<String, dynamic> _$$MangaImplToJson(_$MangaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'artist': instance.artist,
      'author': instance.author,
      'description': instance.description,
      'genre': instance.genre,
      'thumbnailUrl': instance.thumbnailUrl,
      'status': _$MangaStatusEnumMap[instance.status]!,
      'favorite': instance.favorite,
      'source': instance.source,
      'lastUpdate': instance.lastUpdate,
      'dateAdded': instance.dateAdded,
      'viewerFlags': instance.viewerFlags,
      'chapterFlags': instance.chapterFlags,
      'coverLastModified': instance.coverLastModified,
      'customTitle': instance.customTitle,
      'customArtist': instance.customArtist,
      'customAuthor': instance.customAuthor,
      'customDescription': instance.customDescription,
      'customGenre': instance.customGenre,
      'customStatus': instance.customStatus,
      'localCoverPath': instance.localCoverPath,
      'windowReadingMode':
          _$WindowReadingModeEnumMap[instance.windowReadingMode],
    };

const _$MangaStatusEnumMap = {
  MangaStatus.unknown: 'unknown',
  MangaStatus.ongoing: 'ongoing',
  MangaStatus.completed: 'completed',
  MangaStatus.licensed: 'licensed',
  MangaStatus.publishingFinished: 'publishingFinished',
  MangaStatus.cancelled: 'cancelled',
  MangaStatus.onHiatus: 'onHiatus',
};

const _$WindowReadingModeEnumMap = {
  WindowReadingMode.defaultMode: 'defaultMode',
  WindowReadingMode.rtlPaged: 'rtlPaged',
  WindowReadingMode.ltrPaged: 'ltrPaged',
  WindowReadingMode.verticalPaged: 'verticalPaged',
  WindowReadingMode.longStripVertical: 'longStripVertical',
  WindowReadingMode.longStripHorizontal: 'longStripHorizontal',
  WindowReadingMode.doublePageSpread: 'doublePageSpread',
};
