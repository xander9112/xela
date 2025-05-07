part of '{{name.snakeCase()}}_cubit.dart';

@freezed
abstract class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State({
    String? error,
    @Default(FetchStatus.pure) FetchStatus status,
  }) = _{{name.pascalCase()}}State;

  const {{name.pascalCase()}}State._();
}
