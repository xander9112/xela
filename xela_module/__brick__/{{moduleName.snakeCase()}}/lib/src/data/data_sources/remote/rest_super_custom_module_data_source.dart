import 'package:dependencies/dependencies.dart';
import 'package:retrofit/retrofit.dart';
import 'package:super_custom_module/src/_src.dart';

part 'rest_super_custom_module_data_source.g.dart';

@Injectable()
@RestApi()
abstract class RestSuperCustomModuleDataSource implements SuperCustomModuleDataSource {
  @factoryMethod
  factory RestSuperCustomModuleDataSource(Dio dio) = _RestSuperCustomModuleDataSource;
}
