// ignore_for_file: avoid_print

import 'dart:io';

import 'package:path/path.dart' as p;

void main() async {
  final file = File('pubspec.yaml');

  if (!file.existsSync()) {
    print('pubspec.yaml не найден');
    exit(1);
  }

  final lines = await file.readAsLines();
  final updatedLines = <String>[];

  final versionRegExp = RegExp(r'version:\s*(\d+\.\d+\.\d+)\+(\d+)');

  String appVersion = '';

  for (final line in lines) {
    final match = versionRegExp.firstMatch(line);
    if (match != null) {
      final version = match.group(1)!;
      final buildNumber = int.parse(match.group(2)!);
      final newBuildNumber = buildNumber + 1;
      final newLine = 'version: $version+$newBuildNumber';

      appVersion = '$version+$newBuildNumber';
      updatedLines.add(newLine);
      print('✅ Обновлено: $newLine');
    } else {
      updatedLines.add(line);
    }
  }

  await file.writeAsString(updatedLines.join('\n'));

  await _build('prod');
  await _build('dev');

  await _rename(appVersion);
}

Future<void> _build(String type) async {
  print('Начало сборки $type');

  final process = await Process.start(
    'flutter',
    [
      'build',
      'apk',
      '--release',
      '--flavor=$type',
    ],
    runInShell: true,
  );

  // Читаем stdout
  process.stdout.transform(const SystemEncoding().decoder).listen((data) {
    stdout.write(data); // Показываем в терминале
  });

  // Читаем stderr
  process.stderr.transform(const SystemEncoding().decoder).listen((data) {
    stderr.write(data); // Показываем в терминале
  });

  final exitCode = await process.exitCode;
  if (exitCode == 0) {
    print('\n✅ Сборка $type завершена успешно.');
  } else {
    print('\n❌ Сборка $type завершилась с ошибкой. Код: $exitCode');
  }
}

Future<void> _rename(String appVersion) async {
  final apkFolderPath =
      p.join(Directory.current.path, 'build', 'app', 'outputs', 'flutter-apk');

  final prodBuildPath = p.join(apkFolderPath, 'app-prod-release.apk');
  final devBuildPath = p.join(apkFolderPath, 'app-dev-release.apk');

  await File(prodBuildPath)
      .rename(p.join(apkFolderPath, 'app_prod_release_$appVersion.apk'));

  await File(devBuildPath)
      .rename(p.join(apkFolderPath, 'app_dev_release_$appVersion.apk'));

  print('✅ Файлы успешно переименованы!');
}
