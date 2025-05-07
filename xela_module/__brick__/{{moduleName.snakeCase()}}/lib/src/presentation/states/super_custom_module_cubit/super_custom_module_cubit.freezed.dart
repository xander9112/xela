// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '{{moduleName.snakeCase()}}_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _${{moduleName.pascalCase()}}State {
  String? get error => throw _privateConstructorUsedError;
  FetchStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of {{moduleName.pascalCase()}}State
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  ${{moduleName.pascalCase()}}StateCopyWith<{{moduleName.pascalCase()}}State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class ${{moduleName.pascalCase()}}StateCopyWith<$Res> {
  factory ${{moduleName.pascalCase()}}StateCopyWith(
    {{moduleName.pascalCase()}}State value,
    $Res Function({{moduleName.pascalCase()}}State) then,
  ) = _${{moduleName.pascalCase()}}StateCopyWithImpl<$Res, {{moduleName.pascalCase()}}State>;
  @useResult
  $Res call({String? error, FetchStatus status});
}

/// @nodoc
class _${{moduleName.pascalCase()}}StateCopyWithImpl<
  $Res,
  $Val extends {{moduleName.pascalCase()}}State
>
    implements ${{moduleName.pascalCase()}}StateCopyWith<$Res> {
  _${{moduleName.pascalCase()}}StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of {{moduleName.pascalCase()}}State
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = freezed, Object? status = null}) {
    return _then(
      _value.copyWith(
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as FetchStatus,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$${{moduleName.pascalCase()}}StateImplCopyWith<$Res>
    implements ${{moduleName.pascalCase()}}StateCopyWith<$Res> {
  factory _$${{moduleName.pascalCase()}}StateImplCopyWith(
    _${{moduleName.pascalCase()}}StateImpl value,
    $Res Function(_${{moduleName.pascalCase()}}StateImpl) then,
  ) = __$${{moduleName.pascalCase()}}StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, FetchStatus status});
}

/// @nodoc
class __$${{moduleName.pascalCase()}}StateImplCopyWithImpl<$Res>
    extends
        _${{moduleName.pascalCase()}}StateCopyWithImpl<$Res, _${{moduleName.pascalCase()}}StateImpl>
    implements _$${{moduleName.pascalCase()}}StateImplCopyWith<$Res> {
  __$${{moduleName.pascalCase()}}StateImplCopyWithImpl(
    _${{moduleName.pascalCase()}}StateImpl _value,
    $Res Function(_${{moduleName.pascalCase()}}StateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of {{moduleName.pascalCase()}}State
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = freezed, Object? status = null}) {
    return _then(
      _${{moduleName.pascalCase()}}StateImpl(
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as FetchStatus,
      ),
    );
  }
}

/// @nodoc

class _${{moduleName.pascalCase()}}StateImpl extends _{{moduleName.pascalCase()}}State {
  const _${{moduleName.pascalCase()}}StateImpl({
    this.error,
    this.status = FetchStatus.pure,
  }) : super._();

  @override
  final String? error;
  @override
  @JsonKey()
  final FetchStatus status;

  @override
  String toString() {
    return '{{moduleName.pascalCase()}}State(error: $error, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _${{moduleName.pascalCase()}}StateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status);

  /// Create a copy of {{moduleName.pascalCase()}}State
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$${{moduleName.pascalCase()}}StateImplCopyWith<_${{moduleName.pascalCase()}}StateImpl>
  get copyWith =>
      __$${{moduleName.pascalCase()}}StateImplCopyWithImpl<_${{moduleName.pascalCase()}}StateImpl>(
        this,
        _$identity,
      );
}

abstract class _{{moduleName.pascalCase()}}State extends {{moduleName.pascalCase()}}State {
  const factory _{{moduleName.pascalCase()}}State({
    final String? error,
    final FetchStatus status,
  }) = _${{moduleName.pascalCase()}}StateImpl;
  const _{{moduleName.pascalCase()}}State._() : super._();

  @override
  String? get error;
  @override
  FetchStatus get status;

  /// Create a copy of {{moduleName.pascalCase()}}State
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$${{moduleName.pascalCase()}}StateImplCopyWith<_${{moduleName.pascalCase()}}StateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
