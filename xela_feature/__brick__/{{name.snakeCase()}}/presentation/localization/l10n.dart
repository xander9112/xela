import 'package:intl/intl.dart';

class {{name.pascalCase()}}I18n {
  static String get title => Intl.message(
    '{{name.pascalCase()}}',
    desc: '{{name.pascalCase()}} description',
    name: '{{name.pascalCase()}}I18n_title',
  );
}
