import 'package:freezed_annotation/freezed_annotation.dart';

part 'super_custom_module_dto.freezed.dart';
part 'super_custom_module_dto.g.dart';

@freezed
abstract class SuperCustomModuleDTO with _$SuperCustomModuleDTO {
  const factory SuperCustomModuleDTO({String? title}) = _SuperCustomModuleDTO;

  factory SuperCustomModuleDTO.fromJson(Object? json) =>
      _$SuperCustomModuleDTOFromJson(json! as Map<String, dynamic>);

  const SuperCustomModuleDTO._();

  @override
  Map<String, dynamic> toJson();
}
