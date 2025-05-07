part of 'super_custom_module_cubit.dart';

@freezed
abstract class SuperCustomModuleState with _$SuperCustomModuleState {
  const factory SuperCustomModuleState({
    String? error,
    @Default(FetchStatus.pure) FetchStatus status,
  }) = _SuperCustomModuleState;

  const SuperCustomModuleState._();
}
