import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/_src.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class {{name.pascalCase()}}Router extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: {{name.pascalCase()}}Route.page,
      path: {{name.pascalCase()}}RoutePath.initial,
    ),
  ];
}
