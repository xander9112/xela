import 'dart:io';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as p;
import './utils.dart';

void run(HookContext context) async {
  await _installPackage(context);
  await _runBuild(context);
}

List<String> _addPackageBrick() => [
      'add',
      'xela_feature',
      '--git-url',
      'https://github.com/xander9112/xela',
      '--git-path',
      'xela_feature'
    ];

Future<void> _installPackage(HookContext context) async {
  final name = context.vars['name'] as String;
  final isMultiple = context.vars['isMultiple'] as bool? ?? false;

  String installPath = p.join(name, 'lib');

  if (isMultiple) {
    installPath = p.join(name, 'lib', 'core');
  }

  // -o modules/my_settings/lib/core

  successMessage(context, 'Добавление пакета в проект');

  await Process.run('mason', _addPackageBrick()).onError(
    (error, stackTrace) {
      print('_addMasonBrick error: ${error.toString()}');

      errMessage(
          context, 'Ошибка добавления пакета в проект: ${error.toString()}');

      return ProcessResult(pid, exitCode, stdout, stderr);
    },
  );

  final List<String> commands = [
    'make',
    'xela_feature',
    '--name',
    name,
    '--useDI',
    'true',
    '--buildAfterInstall',
    'true',
    '-o',
    installPath,
    '--on-conflict',
    'overwrite',
  ];

  successMessage(
      context, 'Установка $name в $installPath: ${commands.join(' ')}');

  // await backupAndRestore(
  //   context,
  //   name: name,
  //   outputDir: outputDir,
  //   action: () => Process.run('mason', commands).onError(
  //     (error, stackTrace) {
  //       errMessage(context,
  //           'Ошибка установки $name в $installPath: ${error.toString()}');

  //       return ProcessResult(pid, exitCode, stdout, stderr);
  //     },
  //   ),
  // );

  Process.run('mason', commands).onError(
    (error, stackTrace) {
      errMessage(context,
          'Ошибка установки $name в $installPath: ${error.toString()}');

      return ProcessResult(pid, exitCode, stdout, stderr);
    },
  );
}

Future<void> _runBuild(HookContext context) async {
  final progress = context.logger.progress('Build');

  final List<String> commands = [
    'exec',
    '--scope',
    '${toSnakeCase(context.vars['name'].toString())}',
    '--',
    'dart',
    'run',
    'build_runner',
    'build',
    '-d',
  ];

  await Process.run('melos', commands).onError(
    (error, stackTrace) {
      errMessage(context, error.toString());

      return ProcessResult(pid, exitCode, stdout, stderr);
    },
  );

  progress.complete();
}

Future<void> backupAndRestore(
  HookContext context, {
  required String name,
  required Directory outputDir,
  required Future<ProcessResult> Function() action,
}) async {
  final originalFile = File(p.join(outputDir.path, name, 'lib', '$name.dart'));
  final backupFile = File('${originalFile.path}.backup');

  // 1. Проверим, существует ли файл
  if (!await originalFile.exists()) {
    throw Exception('Файл не найден: ${originalFile.path}');
  }

  // 2. Скопируем его во временный файл
  await originalFile.copy(backupFile.path);
  successMessage(context, 'Файл сохранён во временный: ${backupFile.path}');

  // 3. Здесь выполняется нужная процедура (например, перегенерация)
  final result = await action(); // выполняем твою команду

  if (result.exitCode != 0) {
    errMessage(context, 'Ошибка при выполнении действия: ${result.stderr}');
  } else {
    successMessage(context, '✅ Команда выполнена: ${result.stdout}');
  }

  // 4. Восстанавливаем оригинальное имя
  if (await originalFile.exists()) {
    await originalFile.delete();
  }
  await backupFile.rename(originalFile.path);
  successMessage(context, '🔄 Файл восстановлен в: ${originalFile.path}');
}
