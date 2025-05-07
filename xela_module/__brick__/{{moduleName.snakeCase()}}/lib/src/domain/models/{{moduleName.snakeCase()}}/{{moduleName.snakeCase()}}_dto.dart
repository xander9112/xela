import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart' as intl;

part '{{moduleName.snakeCase()}}_dto.freezed.dart';
part '{{moduleName.snakeCase()}}_dto.g.dart';

@freezed
abstract class {{moduleName.pascalCase()}}DTO with _${{moduleName.pascalCase()}}DTO {
  const factory {{moduleName.pascalCase()}}DTO({
    String? title,
  }) = _{{moduleName.pascalCase()}}DTO;

  factory {{moduleName.pascalCase()}}DTO.fromJson(Object? json) =>
      _${{moduleName.pascalCase()}}DTOFromJson(json! as Map<String, dynamic>);

  const {{moduleName.pascalCase()}}DTO._();

  @override
  Map<String, dynamic> toJson();
}
