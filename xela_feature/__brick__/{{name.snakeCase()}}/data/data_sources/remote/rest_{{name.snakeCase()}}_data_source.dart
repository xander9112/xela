import 'package:dependencies/dependencies.dart';
import 'package:retrofit/retrofit.dart';
import 'package:{{package.snakeCase()}}/src/_src.dart';

part '../../../../{{name.snakeCase()}}/data/data_sources/remote/rest_{{name.snakeCase()}}_data_source.g.dart';

@Injectable()
@RestApi()
abstract class Rest{{name.pascalCase()}}DataSource implements {{name.pascalCase()}}DataSource {
  @factoryMethod
  factory Rest{{moduleName.pascalCase()}}DataSource(Dio dio) = _Rest{{moduleName.pascalCase()}}DataSource;
}
