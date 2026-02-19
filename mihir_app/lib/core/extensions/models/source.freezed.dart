// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MihirSource _$MihirSourceFromJson(Map<String, dynamic> json) {
  return _MihirSource.fromJson(json);
}

/// @nodoc
mixin _$MihirSource {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;
  String get extensionPkgName => throw _privateConstructorUsedError;

  /// Serializes this MihirSource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MihirSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MihirSourceCopyWith<MihirSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MihirSourceCopyWith<$Res> {
  factory $MihirSourceCopyWith(
          MihirSource value, $Res Function(MihirSource) then) =
      _$MihirSourceCopyWithImpl<$Res, MihirSource>;
  @useResult
  $Res call(
      {String id,
      String name,
      String lang,
      String? baseUrl,
      String? iconUrl,
      String extensionPkgName});
}

/// @nodoc
class _$MihirSourceCopyWithImpl<$Res, $Val extends MihirSource>
    implements $MihirSourceCopyWith<$Res> {
  _$MihirSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MihirSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lang = null,
    Object? baseUrl = freezed,
    Object? iconUrl = freezed,
    Object? extensionPkgName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      extensionPkgName: null == extensionPkgName
          ? _value.extensionPkgName
          : extensionPkgName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MihirSourceImplCopyWith<$Res>
    implements $MihirSourceCopyWith<$Res> {
  factory _$$MihirSourceImplCopyWith(
          _$MihirSourceImpl value, $Res Function(_$MihirSourceImpl) then) =
      __$$MihirSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String lang,
      String? baseUrl,
      String? iconUrl,
      String extensionPkgName});
}

/// @nodoc
class __$$MihirSourceImplCopyWithImpl<$Res>
    extends _$MihirSourceCopyWithImpl<$Res, _$MihirSourceImpl>
    implements _$$MihirSourceImplCopyWith<$Res> {
  __$$MihirSourceImplCopyWithImpl(
      _$MihirSourceImpl _value, $Res Function(_$MihirSourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of MihirSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lang = null,
    Object? baseUrl = freezed,
    Object? iconUrl = freezed,
    Object? extensionPkgName = null,
  }) {
    return _then(_$MihirSourceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      extensionPkgName: null == extensionPkgName
          ? _value.extensionPkgName
          : extensionPkgName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MihirSourceImpl implements _MihirSource {
  const _$MihirSourceImpl(
      {required this.id,
      required this.name,
      required this.lang,
      this.baseUrl,
      this.iconUrl,
      required this.extensionPkgName});

  factory _$MihirSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$MihirSourceImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String lang;
  @override
  final String? baseUrl;
  @override
  final String? iconUrl;
  @override
  final String extensionPkgName;

  @override
  String toString() {
    return 'MihirSource(id: $id, name: $name, lang: $lang, baseUrl: $baseUrl, iconUrl: $iconUrl, extensionPkgName: $extensionPkgName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MihirSourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.extensionPkgName, extensionPkgName) ||
                other.extensionPkgName == extensionPkgName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, lang, baseUrl, iconUrl, extensionPkgName);

  /// Create a copy of MihirSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MihirSourceImplCopyWith<_$MihirSourceImpl> get copyWith =>
      __$$MihirSourceImplCopyWithImpl<_$MihirSourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MihirSourceImplToJson(
      this,
    );
  }
}

abstract class _MihirSource implements MihirSource {
  const factory _MihirSource(
      {required final String id,
      required final String name,
      required final String lang,
      final String? baseUrl,
      final String? iconUrl,
      required final String extensionPkgName}) = _$MihirSourceImpl;

  factory _MihirSource.fromJson(Map<String, dynamic> json) =
      _$MihirSourceImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get lang;
  @override
  String? get baseUrl;
  @override
  String? get iconUrl;
  @override
  String get extensionPkgName;

  /// Create a copy of MihirSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MihirSourceImplCopyWith<_$MihirSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
