// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '{{moduleName.snakeCase()}}_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

{{moduleName.pascalCase()}}DTO _${{moduleName.pascalCase()}}DTOFromJson(Map<String, dynamic> json) {
  return _{{moduleName.pascalCase()}}DTO.fromJson(json);
}

/// @nodoc
mixin _${{moduleName.pascalCase()}}DTO {
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this {{moduleName.pascalCase()}}DTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of {{moduleName.pascalCase()}}DTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  ${{moduleName.pascalCase()}}DTOCopyWith<{{moduleName.pascalCase()}}DTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class ${{moduleName.pascalCase()}}DTOCopyWith<$Res> {
  factory ${{moduleName.pascalCase()}}DTOCopyWith(
    {{moduleName.pascalCase()}}DTO value,
    $Res Function({{moduleName.pascalCase()}}DTO) then,
  ) = _${{moduleName.pascalCase()}}DTOCopyWithImpl<$Res, {{moduleName.pascalCase()}}DTO>;
  @useResult
  $Res call({String? title});
}

/// @nodoc
class _${{moduleName.pascalCase()}}DTOCopyWithImpl<
  $Res,
  $Val extends {{moduleName.pascalCase()}}DTO
>
    implements ${{moduleName.pascalCase()}}DTOCopyWith<$Res> {
  _${{moduleName.pascalCase()}}DTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of {{moduleName.pascalCase()}}DTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = freezed}) {
    return _then(
      _value.copyWith(
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$${{moduleName.pascalCase()}}DTOImplCopyWith<$Res>
    implements ${{moduleName.pascalCase()}}DTOCopyWith<$Res> {
  factory _$${{moduleName.pascalCase()}}DTOImplCopyWith(
    _${{moduleName.pascalCase()}}DTOImpl value,
    $Res Function(_${{moduleName.pascalCase()}}DTOImpl) then,
  ) = __$${{moduleName.pascalCase()}}DTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title});
}

/// @nodoc
class __$${{moduleName.pascalCase()}}DTOImplCopyWithImpl<$Res>
    extends _${{moduleName.pascalCase()}}DTOCopyWithImpl<$Res, _${{moduleName.pascalCase()}}DTOImpl>
    implements _$${{moduleName.pascalCase()}}DTOImplCopyWith<$Res> {
  __$${{moduleName.pascalCase()}}DTOImplCopyWithImpl(
    _${{moduleName.pascalCase()}}DTOImpl _value,
    $Res Function(_${{moduleName.pascalCase()}}DTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of {{moduleName.pascalCase()}}DTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = freezed}) {
    return _then(
      _${{moduleName.pascalCase()}}DTOImpl(
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _${{moduleName.pascalCase()}}DTOImpl extends _{{moduleName.pascalCase()}}DTO {
  const _${{moduleName.pascalCase()}}DTOImpl({this.title}) : super._();

  factory _${{moduleName.pascalCase()}}DTOImpl.fromJson(Map<String, dynamic> json) =>
      _$${{moduleName.pascalCase()}}DTOImplFromJson(json);

  @override
  final String? title;

  @override
  String toString() {
    return '{{moduleName.pascalCase()}}DTO(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _${{moduleName.pascalCase()}}DTOImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of {{moduleName.pascalCase()}}DTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$${{moduleName.pascalCase()}}DTOImplCopyWith<_${{moduleName.pascalCase()}}DTOImpl>
  get copyWith =>
      __$${{moduleName.pascalCase()}}DTOImplCopyWithImpl<_${{moduleName.pascalCase()}}DTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$${{moduleName.pascalCase()}}DTOImplToJson(this);
  }
}

abstract class _{{moduleName.pascalCase()}}DTO extends {{moduleName.pascalCase()}}DTO {
  const factory _{{moduleName.pascalCase()}}DTO({final String? title}) =
      _${{moduleName.pascalCase()}}DTOImpl;
  const _{{moduleName.pascalCase()}}DTO._() : super._();

  factory _{{moduleName.pascalCase()}}DTO.fromJson(Map<String, dynamic> json) =
      _${{moduleName.pascalCase()}}DTOImpl.fromJson;

  @override
  String? get title;

  /// Create a copy of {{moduleName.pascalCase()}}DTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$${{moduleName.pascalCase()}}DTOImplCopyWith<_${{moduleName.pascalCase()}}DTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
