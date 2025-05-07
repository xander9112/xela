import 'package:intl/intl.dart';

class SuperCustomModuleI18n {
  static String get title => Intl.message(
    'SuperCustomModule',
    desc: 'SuperCustomModule description',
    name: 'SuperCustomModuleI18n_title',
  );
}
