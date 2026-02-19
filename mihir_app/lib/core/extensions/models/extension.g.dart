// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MihirExtensionImpl _$$MihirExtensionImplFromJson(Map<String, dynamic> json) =>
    _$MihirExtensionImpl(
      pkgName: json['pkgName'] as String,
      name: json['name'] as String,
      versionName: json['versionName'] as String,
      versionCode: (json['versionCode'] as num).toInt(),
      lang: json['lang'] as String,
      description: json['description'] as String?,
      isNsfw: json['isNsfw'] as bool? ?? false,
      apkPath: json['apkPath'] as String,
      status: $enumDecodeNullable(_$ExtensionStatusEnumMap, json['status']) ??
          ExtensionStatus.notInstalled,
      sources: (json['sources'] as List<dynamic>?)
              ?.map((e) => MihirSource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      iconPath: json['iconPath'] as String?,
    );

Map<String, dynamic> _$$MihirExtensionImplToJson(
        _$MihirExtensionImpl instance) =>
    <String, dynamic>{
      'pkgName': instance.pkgName,
      'name': instance.name,
      'versionName': instance.versionName,
      'versionCode': instance.versionCode,
      'lang': instance.lang,
      'description': instance.description,
      'isNsfw': instance.isNsfw,
      'apkPath': instance.apkPath,
      'status': _$ExtensionStatusEnumMap[instance.status]!,
      'sources': instance.sources,
      'iconPath': instance.iconPath,
    };

const _$ExtensionStatusEnumMap = {
  ExtensionStatus.loaded: 'loaded',
  ExtensionStatus.error: 'error',
  ExtensionStatus.incompatible: 'incompatible',
  ExtensionStatus.notInstalled: 'notInstalled',
};
