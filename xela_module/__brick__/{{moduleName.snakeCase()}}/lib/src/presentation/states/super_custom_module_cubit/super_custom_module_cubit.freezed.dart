// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'super_custom_module_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SuperCustomModuleState {
  String? get error => throw _privateConstructorUsedError;
  FetchStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of SuperCustomModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperCustomModuleStateCopyWith<SuperCustomModuleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperCustomModuleStateCopyWith<$Res> {
  factory $SuperCustomModuleStateCopyWith(
    SuperCustomModuleState value,
    $Res Function(SuperCustomModuleState) then,
  ) = _$SuperCustomModuleStateCopyWithImpl<$Res, SuperCustomModuleState>;
  @useResult
  $Res call({String? error, FetchStatus status});
}

/// @nodoc
class _$SuperCustomModuleStateCopyWithImpl<
  $Res,
  $Val extends SuperCustomModuleState
>
    implements $SuperCustomModuleStateCopyWith<$Res> {
  _$SuperCustomModuleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperCustomModuleState
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
abstract class _$$SuperCustomModuleStateImplCopyWith<$Res>
    implements $SuperCustomModuleStateCopyWith<$Res> {
  factory _$$SuperCustomModuleStateImplCopyWith(
    _$SuperCustomModuleStateImpl value,
    $Res Function(_$SuperCustomModuleStateImpl) then,
  ) = __$$SuperCustomModuleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, FetchStatus status});
}

/// @nodoc
class __$$SuperCustomModuleStateImplCopyWithImpl<$Res>
    extends
        _$SuperCustomModuleStateCopyWithImpl<$Res, _$SuperCustomModuleStateImpl>
    implements _$$SuperCustomModuleStateImplCopyWith<$Res> {
  __$$SuperCustomModuleStateImplCopyWithImpl(
    _$SuperCustomModuleStateImpl _value,
    $Res Function(_$SuperCustomModuleStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SuperCustomModuleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = freezed, Object? status = null}) {
    return _then(
      _$SuperCustomModuleStateImpl(
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

class _$SuperCustomModuleStateImpl extends _SuperCustomModuleState {
  const _$SuperCustomModuleStateImpl({
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
    return 'SuperCustomModuleState(error: $error, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperCustomModuleStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status);

  /// Create a copy of SuperCustomModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperCustomModuleStateImplCopyWith<_$SuperCustomModuleStateImpl>
  get copyWith =>
      __$$SuperCustomModuleStateImplCopyWithImpl<_$SuperCustomModuleStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SuperCustomModuleState extends SuperCustomModuleState {
  const factory _SuperCustomModuleState({
    final String? error,
    final FetchStatus status,
  }) = _$SuperCustomModuleStateImpl;
  const _SuperCustomModuleState._() : super._();

  @override
  String? get error;
  @override
  FetchStatus get status;

  /// Create a copy of SuperCustomModuleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperCustomModuleStateImplCopyWith<_$SuperCustomModuleStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
