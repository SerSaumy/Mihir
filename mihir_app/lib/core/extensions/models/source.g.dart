// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MihirSourceImpl _$$MihirSourceImplFromJson(Map<String, dynamic> json) =>
    _$MihirSourceImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      lang: json['lang'] as String,
      baseUrl: json['baseUrl'] as String?,
      iconUrl: json['iconUrl'] as String?,
      extensionPkgName: json['extensionPkgName'] as String,
    );

Map<String, dynamic> _$$MihirSourceImplToJson(_$MihirSourceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lang': instance.lang,
      'baseUrl': instance.baseUrl,
      'iconUrl': instance.iconUrl,
      'extensionPkgName': instance.extensionPkgName,
    };
