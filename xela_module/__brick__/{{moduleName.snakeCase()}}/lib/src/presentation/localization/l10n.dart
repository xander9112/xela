import 'package:intl/intl.dart';

class {{moduleName.pascalCase()}}I18n {
  static String get title => Intl.message(
    '{{moduleName.pascalCase()}}',
    desc: '{{moduleName.pascalCase()}} description',
    name: '{{moduleName.pascalCase()}}I18n_title',
  );
}
