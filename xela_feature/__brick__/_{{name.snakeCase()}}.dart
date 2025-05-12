export 'data/_data.dart';
{{#isMultiple}}
export 'di/{{name.snakeCase()}}_di.dart';
{{/isMultiple}}
export 'domain/_domain.dart';
export 'presentation/_presentation.dart';
