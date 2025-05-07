import 'package:auto_route/auto_route.dart';
import 'package:super_custom_module/src/_src.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class SuperCustomModuleRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: SuperCustomModuleRoute.page,
      path: SuperCustomModuleRoutePath.initial,
    ),
  ];
}
