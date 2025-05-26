part of 'local_auth_cubit.dart';

@freezed
sealed class LocalAuthState with _$LocalAuthState {
  const factory LocalAuthState.initial() = LocalAuthInitialState;

  const factory LocalAuthState.success() = LocalAuthSuccessState;

  const factory LocalAuthState.resetPinCode() = LocalAuthResetPinState;

  const factory LocalAuthState.createPin({
    String? error,
    @Default(false) bool confirm,
    @Default(4) int length,
    @Default(FetchStatus.pure) FetchStatus status,
  }) = LocalAuthCreatePin;

  const factory LocalAuthState.enterPin({
    required BiometricSupportModel biometricSupportModel,
    String? error,
    @Default(4) int length,
    @Default(0) int errorCount,
    @Default(FetchStatus.pure) FetchStatus status,
  }) = LocalAuthEnterPin;

  factory LocalAuthState.fromJson(Object? json) =>
      _$LocalAuthStateFromJson(json! as Map<String, dynamic>);

  const LocalAuthState._();

  @override
  Map<String, dynamic> toJson();
}
