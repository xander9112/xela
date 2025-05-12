import 'dart:io';

import 'package:mason/mason.dart';
import 'package:path/path.dart' as p;

import 'utils.dart';

void run(HookContext context) async {
  final buildAfterInstall = context.vars['buildAfterInstall'] as bool;
  final useDI = context.vars['useDI'] as bool;

  if (buildAfterInstall) {
    await _runBuild(context);
  }

  if (!useDI) {
    final directory = Directory(p.join(Directory.current.path, 'di'));

    if (directory.existsSync()) {
      directory.deleteSync(recursive: true);
    } else {
      warnMessage(context, 'Папка di не найдена.');
    }
  }
}

Future<void> _runBuild(HookContext context) async {
  final progress = context.logger.progress('Build');

  final package = getPackageName(context);

  final List<String> commands = [
    'exec',
    '--scope',
    '${package}',
    '--',
    'dart',
    'run',
    'build_runner',
    'build',
    '-d',
  ];

  successMessage(context, commands.join(' '));

  await Process.run('melos', commands);

  progress.complete();
}
