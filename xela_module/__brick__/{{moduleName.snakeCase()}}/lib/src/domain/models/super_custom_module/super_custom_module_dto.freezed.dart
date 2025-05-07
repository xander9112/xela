// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'super_custom_module_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SuperCustomModuleDTO _$SuperCustomModuleDTOFromJson(Map<String, dynamic> json) {
  return _SuperCustomModuleDTO.fromJson(json);
}

/// @nodoc
mixin _$SuperCustomModuleDTO {
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this SuperCustomModuleDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperCustomModuleDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperCustomModuleDTOCopyWith<SuperCustomModuleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperCustomModuleDTOCopyWith<$Res> {
  factory $SuperCustomModuleDTOCopyWith(
    SuperCustomModuleDTO value,
    $Res Function(SuperCustomModuleDTO) then,
  ) = _$SuperCustomModuleDTOCopyWithImpl<$Res, SuperCustomModuleDTO>;
  @useResult
  $Res call({String? title});
}

/// @nodoc
class _$SuperCustomModuleDTOCopyWithImpl<
  $Res,
  $Val extends SuperCustomModuleDTO
>
    implements $SuperCustomModuleDTOCopyWith<$Res> {
  _$SuperCustomModuleDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperCustomModuleDTO
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
abstract class _$$SuperCustomModuleDTOImplCopyWith<$Res>
    implements $SuperCustomModuleDTOCopyWith<$Res> {
  factory _$$SuperCustomModuleDTOImplCopyWith(
    _$SuperCustomModuleDTOImpl value,
    $Res Function(_$SuperCustomModuleDTOImpl) then,
  ) = __$$SuperCustomModuleDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title});
}

/// @nodoc
class __$$SuperCustomModuleDTOImplCopyWithImpl<$Res>
    extends _$SuperCustomModuleDTOCopyWithImpl<$Res, _$SuperCustomModuleDTOImpl>
    implements _$$SuperCustomModuleDTOImplCopyWith<$Res> {
  __$$SuperCustomModuleDTOImplCopyWithImpl(
    _$SuperCustomModuleDTOImpl _value,
    $Res Function(_$SuperCustomModuleDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SuperCustomModuleDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = freezed}) {
    return _then(
      _$SuperCustomModuleDTOImpl(
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
class _$SuperCustomModuleDTOImpl extends _SuperCustomModuleDTO {
  const _$SuperCustomModuleDTOImpl({this.title}) : super._();

  factory _$SuperCustomModuleDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperCustomModuleDTOImplFromJson(json);

  @override
  final String? title;

  @override
  String toString() {
    return 'SuperCustomModuleDTO(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperCustomModuleDTOImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of SuperCustomModuleDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperCustomModuleDTOImplCopyWith<_$SuperCustomModuleDTOImpl>
  get copyWith =>
      __$$SuperCustomModuleDTOImplCopyWithImpl<_$SuperCustomModuleDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperCustomModuleDTOImplToJson(this);
  }
}

abstract class _SuperCustomModuleDTO extends SuperCustomModuleDTO {
  const factory _SuperCustomModuleDTO({final String? title}) =
      _$SuperCustomModuleDTOImpl;
  const _SuperCustomModuleDTO._() : super._();

  factory _SuperCustomModuleDTO.fromJson(Map<String, dynamic> json) =
      _$SuperCustomModuleDTOImpl.fromJson;

  @override
  String? get title;

  /// Create a copy of SuperCustomModuleDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperCustomModuleDTOImplCopyWith<_$SuperCustomModuleDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
