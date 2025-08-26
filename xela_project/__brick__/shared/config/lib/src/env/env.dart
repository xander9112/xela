import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(
  path: '.env',
  obfuscate: true,
  useConstantCase: true,
  name: 'EnvProd',
)
abstract class EnvProd {
  @EnviedField(varName: 'API_URL')
  static final String apiUrl = _EnvProd.apiUrl;

  @EnviedField(varName: 'TITLE')
  static final String title = _EnvProd.title;

  @EnviedField(varName: 'BLOCK_SECONDS')
  static final int blockSeconds = _EnvProd.blockSeconds;

  @EnviedField(varName: 'SECURE_KEY')
  static final String secureKey = _EnvProd.secureKey;

  @EnviedField(varName: 'CONNECTION_TIMEOUT')
  static final int connectionTimeout = _EnvProd.connectionTimeout;

  @EnviedField(varName: 'SEND_TIMEOUT')
  static final int sendTimeout = _EnvProd.sendTimeout;

  @EnviedField(varName: 'RECEIVE_TIMEOUT')
  static final int receiveTimeout = _EnvProd.receiveTimeout;
}

@Envied(
  path: '.env.development',
  obfuscate: true,
  useConstantCase: true,
  name: 'EnvDev',
)
abstract class EnvDev {
  @EnviedField(varName: 'API_URL')
  static final String apiUrl = _EnvDev.apiUrl;

  @EnviedField(varName: 'TITLE')
  static final String title = _EnvDev.title;

  @EnviedField(varName: 'BLOCK_SECONDS')
  static final int blockSeconds = _EnvDev.blockSeconds;

  @EnviedField(varName: 'SECURE_KEY')
  static final String secureKey = _EnvDev.secureKey;

  @EnviedField(varName: 'CONNECTION_TIMEOUT')
  static final int connectionTimeout = _EnvDev.connectionTimeout;

  @EnviedField(varName: 'SEND_TIMEOUT')
  static final int sendTimeout = _EnvDev.sendTimeout;

  @EnviedField(varName: 'RECEIVE_TIMEOUT')
  static final int receiveTimeout = _EnvDev.receiveTimeout;
}

@Envied(
  path: '.env.staging',
  obfuscate: true,
  useConstantCase: true,
  name: 'EnvStg',
)
abstract class EnvStg {
  @EnviedField(varName: 'API_URL')
  static final String apiUrl = _EnvStg.apiUrl;

  @EnviedField(varName: 'TITLE')
  static final String title = _EnvStg.title;

  @EnviedField(varName: 'BLOCK_SECONDS')
  static final int blockSeconds = _EnvStg.blockSeconds;

  @EnviedField(varName: 'SECURE_KEY')
  static final String secureKey = _EnvStg.secureKey;

  @EnviedField(varName: 'CONNECTION_TIMEOUT')
  static final int connectionTimeout = _EnvStg.connectionTimeout;

  @EnviedField(varName: 'SEND_TIMEOUT')
  static final int sendTimeout = _EnvStg.sendTimeout;

  @EnviedField(varName: 'RECEIVE_TIMEOUT')
  static final int receiveTimeout = _EnvStg.receiveTimeout;
}
