import 'package:config/config.dart';
import 'package:config/src/env/env.dart';

/// This class is used to map the generated env from
/// envied generator based on the app flavor.
class Env {
  const Env._();

  static String apiUrl = switch (Flavor.status) {
    FlavorStatus.development => EnvDev.apiUrl,
    FlavorStatus.staging => EnvStg.apiUrl,
    FlavorStatus.production => EnvProd.apiUrl,
  };

  static String title = switch (Flavor.status) {
    FlavorStatus.development => EnvDev.title,
    FlavorStatus.staging => EnvStg.title,
    FlavorStatus.production => EnvProd.title,
  };

  static Duration blockSeconds = switch (Flavor.status) {
    FlavorStatus.development => Duration(seconds: EnvDev.blockSeconds),
    FlavorStatus.staging => Duration(seconds: EnvStg.blockSeconds),
    FlavorStatus.production => Duration(seconds: EnvProd.blockSeconds),
  };

  static int pinCodeLength = switch (Flavor.status) {
    FlavorStatus.development => 4,
    FlavorStatus.staging => 4,
    FlavorStatus.production => 4,
  };

  static String secureKey = switch (Flavor.status) {
    FlavorStatus.development => EnvDev.secureKey,
    FlavorStatus.staging => EnvStg.secureKey,
    FlavorStatus.production => EnvProd.secureKey,
  };

  static int connectionTimeout = switch (Flavor.status) {
    FlavorStatus.development => EnvDev.connectionTimeout,
    FlavorStatus.staging => EnvStg.connectionTimeout,
    FlavorStatus.production => EnvProd.connectionTimeout,
  };

  static int sendTimeout = switch (Flavor.status) {
    FlavorStatus.development => EnvDev.sendTimeout,
    FlavorStatus.staging => EnvStg.sendTimeout,
    FlavorStatus.production => EnvProd.sendTimeout,
  };

  static int receiveTimeout = switch (Flavor.status) {
    FlavorStatus.development => EnvDev.receiveTimeout,
    FlavorStatus.staging => EnvStg.receiveTimeout,
    FlavorStatus.production => EnvProd.receiveTimeout,
  };
}
