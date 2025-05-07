import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:{{moduleName.snakeCase()}}/src/_src.dart';

@InjectableInit.microPackage()
dynamic initMicroPackage() {}

@module
abstract class {{moduleName.pascalCase()}}DiModule {
  @lazySingleton
  @preResolve
  Future<{{moduleName.pascalCase()}}Cubit> {{moduleName.snakeCase()}}Cubit(
    GetBiometricSupportModel getBiometricSupportModel,
    SetBiometrySettingUseCase setBiometrySettingUseCase,
    SetLocalAuthUseCase setLocalAuthUseCase,
    GetLocalAuthUseCase getLocalAuthUseCase,
    {{moduleName.pascalCase()}}Repository repository,
  ) async {
    final _appInfo = await AppInfo.getAppInfo();
    final _deviceInfo = await AppInfo.getDeviceInfo();
    return {{moduleName.pascalCase()}}Cubit(
      appInfo: _appInfo,
      deviceInfo: _deviceInfo,
      getBiometricSupportModel: getBiometricSupportModel,
      setBiometrySettingUseCase: setBiometrySettingUseCase,
      setLocalAuthUseCase: setLocalAuthUseCase,
      getLocalAuthUseCase: getLocalAuthUseCase,
      repository: repository,
    );
  }
}
