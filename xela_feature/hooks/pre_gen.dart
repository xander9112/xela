import 'dart:io';

import 'package:mason/mason.dart';
import 'utils.dart';

void run(HookContext context) async {
  final outputDir = Directory.current;
  final packageName = getPackageName(context);

  final packagePathList = outputDir.path.split('$packageName/lib')
    ..removeAt(0);

  context.vars['package_path'] = '$packageName${packagePathList.last}';
}
