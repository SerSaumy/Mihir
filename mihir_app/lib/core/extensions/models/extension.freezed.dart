// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extension.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MihirExtension _$MihirExtensionFromJson(Map<String, dynamic> json) {
  return _MihirExtension.fromJson(json);
}

/// @nodoc
mixin _$MihirExtension {
  String get pkgName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get versionName => throw _privateConstructorUsedError;
  int get versionCode => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isNsfw => throw _privateConstructorUsedError;
  String get apkPath => throw _privateConstructorUsedError;
  ExtensionStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'sources')
  List<MihirSource> get sources => throw _privateConstructorUsedError;
  String? get iconPath => throw _privateConstructorUsedError;

  /// Serializes this MihirExtension to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MihirExtension
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MihirExtensionCopyWith<MihirExtension> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MihirExtensionCopyWith<$Res> {
  factory $MihirExtensionCopyWith(
          MihirExtension value, $Res Function(MihirExtension) then) =
      _$MihirExtensionCopyWithImpl<$Res, MihirExtension>;
  @useResult
  $Res call(
      {String pkgName,
      String name,
      String versionName,
      int versionCode,
      String lang,
      String? description,
      bool isNsfw,
      String apkPath,
      ExtensionStatus status,
      @JsonKey(name: 'sources') List<MihirSource> sources,
      String? iconPath});
}

/// @nodoc
class _$MihirExtensionCopyWithImpl<$Res, $Val extends MihirExtension>
    implements $MihirExtensionCopyWith<$Res> {
  _$MihirExtensionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MihirExtension
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pkgName = null,
    Object? name = null,
    Object? versionName = null,
    Object? versionCode = null,
    Object? lang = null,
    Object? description = freezed,
    Object? isNsfw = null,
    Object? apkPath = null,
    Object? status = null,
    Object? sources = null,
    Object? iconPath = freezed,
  }) {
    return _then(_value.copyWith(
      pkgName: null == pkgName
          ? _value.pkgName
          : pkgName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versionName: null == versionName
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as int,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isNsfw: null == isNsfw
          ? _value.isNsfw
          : isNsfw // ignore: cast_nullable_to_non_nullable
              as bool,
      apkPath: null == apkPath
          ? _value.apkPath
          : apkPath // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExtensionStatus,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<MihirSource>,
      iconPath: freezed == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MihirExtensionImplCopyWith<$Res>
    implements $MihirExtensionCopyWith<$Res> {
  factory _$$MihirExtensionImplCopyWith(_$MihirExtensionImpl value,
          $Res Function(_$MihirExtensionImpl) then) =
      __$$MihirExtensionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pkgName,
      String name,
      String versionName,
      int versionCode,
      String lang,
      String? description,
      bool isNsfw,
      String apkPath,
      ExtensionStatus status,
      @JsonKey(name: 'sources') List<MihirSource> sources,
      String? iconPath});
}

/// @nodoc
class __$$MihirExtensionImplCopyWithImpl<$Res>
    extends _$MihirExtensionCopyWithImpl<$Res, _$MihirExtensionImpl>
    implements _$$MihirExtensionImplCopyWith<$Res> {
  __$$MihirExtensionImplCopyWithImpl(
      _$MihirExtensionImpl _value, $Res Function(_$MihirExtensionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MihirExtension
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pkgName = null,
    Object? name = null,
    Object? versionName = null,
    Object? versionCode = null,
    Object? lang = null,
    Object? description = freezed,
    Object? isNsfw = null,
    Object? apkPath = null,
    Object? status = null,
    Object? sources = null,
    Object? iconPath = freezed,
  }) {
    return _then(_$MihirExtensionImpl(
      pkgName: null == pkgName
          ? _value.pkgName
          : pkgName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versionName: null == versionName
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as int,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isNsfw: null == isNsfw
          ? _value.isNsfw
          : isNsfw // ignore: cast_nullable_to_non_nullable
              as bool,
      apkPath: null == apkPath
          ? _value.apkPath
          : apkPath // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExtensionStatus,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<MihirSource>,
      iconPath: freezed == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MihirExtensionImpl implements _MihirExtension {
  const _$MihirExtensionImpl(
      {required this.pkgName,
      required this.name,
      required this.versionName,
      required this.versionCode,
      required this.lang,
      this.description,
      this.isNsfw = false,
      required this.apkPath,
      this.status = ExtensionStatus.notInstalled,
      @JsonKey(name: 'sources') final List<MihirSource> sources = const [],
      this.iconPath})
      : _sources = sources;

  factory _$MihirExtensionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MihirExtensionImplFromJson(json);

  @override
  final String pkgName;
  @override
  final String name;
  @override
  final String versionName;
  @override
  final int versionCode;
  @override
  final String lang;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool isNsfw;
  @override
  final String apkPath;
  @override
  @JsonKey()
  final ExtensionStatus status;
  final List<MihirSource> _sources;
  @override
  @JsonKey(name: 'sources')
  List<MihirSource> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  final String? iconPath;

  @override
  String toString() {
    return 'MihirExtension(pkgName: $pkgName, name: $name, versionName: $versionName, versionCode: $versionCode, lang: $lang, description: $description, isNsfw: $isNsfw, apkPath: $apkPath, status: $status, sources: $sources, iconPath: $iconPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MihirExtensionImpl &&
            (identical(other.pkgName, pkgName) || other.pkgName == pkgName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.versionName, versionName) ||
                other.versionName == versionName) &&
            (identical(other.versionCode, versionCode) ||
                other.versionCode == versionCode) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isNsfw, isNsfw) || other.isNsfw == isNsfw) &&
            (identical(other.apkPath, apkPath) || other.apkPath == apkPath) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pkgName,
      name,
      versionName,
      versionCode,
      lang,
      description,
      isNsfw,
      apkPath,
      status,
      const DeepCollectionEquality().hash(_sources),
      iconPath);

  /// Create a copy of MihirExtension
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MihirExtensionImplCopyWith<_$MihirExtensionImpl> get copyWith =>
      __$$MihirExtensionImplCopyWithImpl<_$MihirExtensionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MihirExtensionImplToJson(
      this,
    );
  }
}

abstract class _MihirExtension implements MihirExtension {
  const factory _MihirExtension(
      {required final String pkgName,
      required final String name,
      required final String versionName,
      required final int versionCode,
      required final String lang,
      final String? description,
      final bool isNsfw,
      required final String apkPath,
      final ExtensionStatus status,
      @JsonKey(name: 'sources') final List<MihirSource> sources,
      final String? iconPath}) = _$MihirExtensionImpl;

  factory _MihirExtension.fromJson(Map<String, dynamic> json) =
      _$MihirExtensionImpl.fromJson;

  @override
  String get pkgName;
  @override
  String get name;
  @override
  String get versionName;
  @override
  int get versionCode;
  @override
  String get lang;
  @override
  String? get description;
  @override
  bool get isNsfw;
  @override
  String get apkPath;
  @override
  ExtensionStatus get status;
  @override
  @JsonKey(name: 'sources')
  List<MihirSource> get sources;
  @override
  String? get iconPath;

  /// Create a copy of MihirExtension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MihirExtensionImplCopyWith<_$MihirExtensionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
