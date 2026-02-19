// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageImpl _$$PageImplFromJson(Map<String, dynamic> json) => _$PageImpl(
      index: (json['index'] as num).toInt(),
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      localPath: json['localPath'] as String?,
      status: $enumDecodeNullable(_$PageStatusEnumMap, json['status']) ??
          PageStatus.queued,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PageImplToJson(_$PageImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
      'localPath': instance.localPath,
      'status': _$PageStatusEnumMap[instance.status]!,
      'width': instance.width,
      'height': instance.height,
    };

const _$PageStatusEnumMap = {
  PageStatus.queued: 'queued',
  PageStatus.loading: 'loading',
  PageStatus.ready: 'ready',
  PageStatus.error: 'error',
};
