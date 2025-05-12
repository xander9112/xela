import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_dto.freezed.dart';
part '{{name.snakeCase()}}_dto.g.dart';

@freezed
abstract class {{name.pascalCase()}}DTO with _${{name.pascalCase()}}DTO {
  const factory {{name.pascalCase()}}DTO({String? title}) = _{{name.pascalCase()}}DTO;

  factory {{name.pascalCase()}}DTO.fromJson(Object? json) =>
      _${{name.pascalCase()}}DTOFromJson(json! as Map<String, dynamic>);

  const {{name.pascalCase()}}DTO._();

  @override
  Map<String, dynamic> toJson();
}
