import 'package:auto_route/auto_route.dart';
import 'package:{{moduleName.snakeCase()}}/src/_src.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class {{moduleName.pascalCase()}}Router extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: {{moduleName.pascalCase()}}Route.page,
      path: {{moduleName.pascalCase()}}RoutePath.initial,
    ),
  ];
}
