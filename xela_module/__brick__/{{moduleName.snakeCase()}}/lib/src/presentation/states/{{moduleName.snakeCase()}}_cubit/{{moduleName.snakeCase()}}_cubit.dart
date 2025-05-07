import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{moduleName.snakeCase()}}/src/_src.dart';

part '{{moduleName.snakeCase()}}_cubit.freezed.dart';
part '{{moduleName.snakeCase()}}_state.dart';

@injectable
class {{moduleName.pascalCase()}}Cubit extends BaseCubit<{{moduleName.pascalCase()}}State> {
  {{moduleName.pascalCase()}}Cubit({required {{moduleName.pascalCase()}}Repository repository})
    : _repository = repository,

      super(const {{moduleName.pascalCase()}}State());

  final {{moduleName.pascalCase()}}Repository _repository;

  @override
  Future<void> init() async {}
}
