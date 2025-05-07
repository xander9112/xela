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
    '${toSnakeCase(context.vars['moduleName'].toString())}', // ошибка в toLowerCase
    ' -- "dart run build_runner build -d"'
  ];

  context.logger.info(commands.join(' '));

  await Process.run('melos', commands);

  progress.complete();
}

String toCamelCase(String input) {
  final words = input
      .toLowerCase()
      .split(RegExp(r'[^a-zA-Z0-9]+'))
      .where((w) => w.isNotEmpty)
      .toList();

  if (words.isEmpty) return '';

  return words.first + words.skip(1).map((w) => _capitalize(w)).join();
}

String toPascalCase(String input) {
  final words = input
      .toLowerCase()
      .split(RegExp(r'[^a-zA-Z0-9]+'))
      .where((w) => w.isNotEmpty)
      .toList();

  return words.map((w) => _capitalize(w)).join();
}

String _capitalize(String word) {
  if (word.isEmpty) return '';
  return word[0].toUpperCase() + word.substring(1);
}

String toSnakeCase(String input) {
  final regex = RegExp(r'(?<=[a-z])[A-Z]');
  return input
      .replaceAllMapped(regex, (match) => '_${match.group(0)}')
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9_]+'), '_')
      .replaceAll(RegExp(r'_+'), '_') // чтобы не было двойных __
      .replaceAll(RegExp(r'^_+|_+$'), ''); // убрать _ в начале и конце
}
