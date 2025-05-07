//@GeneratedMicroModule;{{moduleName.pascalCase()}}PackageModule;package:{{moduleName.snakeCase()}}/src/di/{{moduleName.snakeCase()}}_di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:dependencies/dependencies.dart' as _i340;
import 'package:injectable/injectable.dart' as _i526;
import 'package:{{moduleName.snakeCase()}}/src/_src.dart' as _i876;
import 'package:{{moduleName.snakeCase()}}/src/data/data_sources/remote/rest_{{moduleName.snakeCase()}}_data_source.dart'
    as _i891;
import 'package:{{moduleName.snakeCase()}}/src/data/repositories/{{moduleName.snakeCase()}}_repository.dart'
    as _i649;
import 'package:{{moduleName.snakeCase()}}/src/presentation/states/{{moduleName.snakeCase()}}_cubit/{{moduleName.snakeCase()}}_cubit.dart'
    as _i458;

class {{moduleName.pascalCase()}}PackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i876.{{moduleName.pascalCase()}}Repository>(
        () => _i649.{{moduleName.pascalCase()}}RepositoryImpl());
    gh.factory<_i458.{{moduleName.pascalCase()}}Cubit>(() => _i458.{{moduleName.pascalCase()}}Cubit(
        repository: gh<_i876.{{moduleName.pascalCase()}}Repository>()));
    gh.factory<_i891.Rest{{moduleName.pascalCase()}}DataSource>(
        () => _i891.Rest{{moduleName.pascalCase()}}DataSource(gh<_i340.Dio>()));
  }
}
