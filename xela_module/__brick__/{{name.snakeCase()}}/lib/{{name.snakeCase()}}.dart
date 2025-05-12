{{#isMultiple}}
export 'core/di/{{name.snakeCase()}}_di.module.dart';
export 'core/presentation/routes/_routes.dart';
{{/isMultiple}}
{{^isMultiple}}
export 'di/{{name.snakeCase()}}_di.module.dart';
export 'presentation/routes/_routes.dart';
{{/isMultiple}}
