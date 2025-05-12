import 'package:mason/mason.dart';

void warnMessage(HookContext context, String msg) {
  context.logger.warn('⚠️ $msg');
}

void errMessage(HookContext context, String msg) {
  context.logger.err('❌ $msg');
}

void successMessage(HookContext context, String msg) {
  context.logger.success('✅ $msg');
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
