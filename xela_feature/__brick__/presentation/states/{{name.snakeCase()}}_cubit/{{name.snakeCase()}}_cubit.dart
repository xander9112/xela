import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{{package_path}}}/_{{name}}.dart';

part '{{name.snakeCase()}}_cubit.freezed.dart';
part '{{name.snakeCase()}}_state.dart';

@injectable
class {{name.pascalCase()}}Cubit extends BaseCubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit({required {{name.pascalCase()}}Repository repository})
    : _repository = repository,

      super(const {{name.pascalCase()}}State());

  final {{name.pascalCase()}}Repository _repository;

  @override
  Future<void> init() async {}
}
