import 'package:dependencies/dependencies.dart';
import 'package:{{{package_path}}}/_{{name}}.dart';

@Injectable(as: {{name.pascalCase()}}Repository)
class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {}
