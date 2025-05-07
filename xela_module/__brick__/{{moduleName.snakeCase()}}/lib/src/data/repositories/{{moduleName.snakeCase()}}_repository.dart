import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:{{moduleName.snakeCase()}}/src/_src.dart';

@Injectable(as: {{moduleName.pascalCase()}}Repository)
class {{moduleName.pascalCase()}}RepositoryImpl implements {{moduleName.pascalCase()}}Repository {
  {{moduleName.pascalCase()}}RepositoryImpl({required SharedStorage sharedStorage})
    : _sharedStorage = sharedStorage;
}
