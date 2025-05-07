import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  await _createProject(context);
}

Future<void> _createProject(HookContext context) async {
  final progress = context.logger.progress('Creating project');

// Параметры для создания нового Flutter проекта
  String org = context.vars['domain'];
  String projectName = context.vars['appName'];
  List platforms = context.vars['platforms'];
  String projectPath = '${Platform.pathSeparator}apps${Platform.pathSeparator}$projectName';

  context.vars['useAuth'] =
      (context.vars['features'] as List).contains('authentication');

  final commands = [
    'create',
    '--org',
    org,
    '--project-name',
    projectName,
    '--platforms',
    platforms.join(','),
    projectPath
  ];

  // Команда для создания проекта
  var result = await Process.run('flutter', commands).onError(
    (error, stackTrace) {
      context.logger.err(error.toString());
      return Process.run('flutter', commands,
        runInShell: Platform.isWindows,
      );
    },
  );

  File('$projectPath${Platform.pathSeparator}lib${Platform.pathSeparator}main.dart').deleteSync();
  File('$projectPath${Platform.pathSeparator}test${Platform.pathSeparator}widget_test.dart').deleteSync();
  File('$projectPath${Platform.pathSeparator}README.md').deleteSync();

  // Выводим результат выполнения команды
  if (result.exitCode == 0) {
    context.logger.info('Проект успешно создан!');
    context.logger.info('Standard out: ${result.stdout}');
  } else {
    context.logger.err('Ошибка при создании проекта.');
    context.logger.err('Standard error: ${result.stderr}');
  }

  progress.complete();
}
