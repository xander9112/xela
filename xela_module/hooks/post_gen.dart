import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  await _runBuild(context);
}

Future<void> _runBuild(HookContext context) async {
  final progress = context.logger.progress('Build');

  final List<String> commands = [
    'exec',
    '--scope',
    '${context.vars['moduleName'].toString().toLowerCase()}', // ошибка в toLowerCase
    ' -- "dart run build_runner build -d"'
  ];

  context.logger.info(commands.join(' '));

  await Process.run('melos', commands);

  progress.complete();
}
