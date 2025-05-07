part of '{{moduleName.snakeCase()}}_cubit.dart';

@freezed
abstract class {{moduleName.pascalCase()}}State with _${{moduleName.pascalCase()}}State {
  const factory {{moduleName.pascalCase()}}State({
    String? error,
    @Default(FetchStatus.pure) FetchStatus status,
  }) = _{{moduleName.pascalCase()}}State;

  const {{moduleName.pascalCase()}}State._();
}
