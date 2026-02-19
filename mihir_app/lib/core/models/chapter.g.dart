// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      id: (json['id'] as num).toInt(),
      mangaId: (json['mangaId'] as num).toInt(),
      url: json['url'] as String,
      name: json['name'] as String,
      scanlator: json['scanlator'] as String?,
      read: json['read'] as bool? ?? false,
      bookmark: json['bookmark'] as bool? ?? false,
      lastPageRead: (json['lastPageRead'] as num?)?.toInt(),
      dateFetch: (json['dateFetch'] as num?)?.toInt(),
      dateUpload: (json['dateUpload'] as num?)?.toInt(),
      chapterNumber: (json['chapterNumber'] as num?)?.toDouble() ?? 0.0,
      sourceOrder: (json['sourceOrder'] as num?)?.toInt() ?? 0,
      totalPageCount: (json['totalPageCount'] as num?)?.toInt(),
      downloadPath: json['downloadPath'] as String?,
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mangaId': instance.mangaId,
      'url': instance.url,
      'name': instance.name,
      'scanlator': instance.scanlator,
      'read': instance.read,
      'bookmark': instance.bookmark,
      'lastPageRead': instance.lastPageRead,
      'dateFetch': instance.dateFetch,
      'dateUpload': instance.dateUpload,
      'chapterNumber': instance.chapterNumber,
      'sourceOrder': instance.sourceOrder,
      'totalPageCount': instance.totalPageCount,
      'downloadPath': instance.downloadPath,
    };
