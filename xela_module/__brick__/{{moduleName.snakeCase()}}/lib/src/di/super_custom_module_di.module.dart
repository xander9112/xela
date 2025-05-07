//@GeneratedMicroModule;SuperCustomModulePackageModule;package:super_custom_module/src/di/super_custom_module_di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:dependencies/dependencies.dart' as _i340;
import 'package:injectable/injectable.dart' as _i526;
import 'package:super_custom_module/src/_src.dart' as _i876;
import 'package:super_custom_module/src/data/data_sources/remote/rest_super_custom_module_data_source.dart'
    as _i891;
import 'package:super_custom_module/src/data/repositories/super_custom_module_repository.dart'
    as _i649;
import 'package:super_custom_module/src/presentation/states/super_custom_module_cubit/super_custom_module_cubit.dart'
    as _i458;

class SuperCustomModulePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i876.SuperCustomModuleRepository>(
        () => _i649.SuperCustomModuleRepositoryImpl());
    gh.factory<_i458.SuperCustomModuleCubit>(() => _i458.SuperCustomModuleCubit(
        repository: gh<_i876.SuperCustomModuleRepository>()));
    gh.factory<_i891.RestSuperCustomModuleDataSource>(
        () => _i891.RestSuperCustomModuleDataSource(gh<_i340.Dio>()));
  }
}
