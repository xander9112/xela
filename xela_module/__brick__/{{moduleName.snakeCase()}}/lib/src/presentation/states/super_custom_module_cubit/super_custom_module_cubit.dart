import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:super_custom_module/src/_src.dart';

part 'super_custom_module_cubit.freezed.dart';
part 'super_custom_module_state.dart';

@injectable
class SuperCustomModuleCubit extends BaseCubit<SuperCustomModuleState> {
  SuperCustomModuleCubit({required SuperCustomModuleRepository repository})
    : _repository = repository,

      super(const SuperCustomModuleState());

  final SuperCustomModuleRepository _repository;

  @override
  Future<void> init() async {}
}
