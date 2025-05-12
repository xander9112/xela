import 'package:dependencies/dependencies.dart';
import 'package:retrofit/retrofit.dart';
import 'package:{{{package_path}}}/_{{name}}.dart';

part 'rest_{{name.snakeCase()}}_data_source.g.dart';

@Injectable()
@RestApi()
abstract class Rest{{name.pascalCase()}}DataSource implements {{name.pascalCase()}}DataSource {
  @factoryMethod
  factory Rest{{name.pascalCase()}}DataSource(Dio dio) = _Rest{{name.pascalCase()}}DataSource;
}
