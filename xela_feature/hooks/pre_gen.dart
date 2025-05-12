import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final String package = context.vars['package'];
  final String name = context.vars['name'];

  final outputDir = Directory(
    Platform.environment['MASON_OUTPUT_DIRECTORY'] ?? Directory.current.path,
  );

// Название пакета: push_notifications
// Путь генерации: /Users/xander9112/dev/mobile/new_xela/modules/push_notifications/lib

  if (outputDir.path.split(Platform.pathSeparator).last == 'lib') {
    context.vars['package_path'] =
        '${package}/${toSnakeCase(name)}';
  } else {
    context.logger.info('Название пакета: ${package}');
    context.logger.info('Путь генерации: ${outputDir.path}');
  }
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
