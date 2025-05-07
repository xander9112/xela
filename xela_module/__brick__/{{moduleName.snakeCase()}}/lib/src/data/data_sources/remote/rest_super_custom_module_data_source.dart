import 'package:dependencies/dependencies.dart';
import 'package:retrofit/retrofit.dart';
import 'package:{{moduleName.snakeCase()}}/src/_src.dart';

part 'rest_{{moduleName.snakeCase()}}_data_source.g.dart';

@Injectable()
@RestApi()
abstract class Rest{{moduleName.pascalCase()}}DataSource implements {{moduleName.pascalCase()}}DataSource {
  @factoryMethod
  factory Rest{{moduleName.pascalCase()}}DataSource(Dio dio) = _Rest{{moduleName.pascalCase()}}DataSource;
}
