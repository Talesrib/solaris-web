// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModuleModel _$ModuleModelFromJson(Map<String, dynamic> json) => ModuleModel(
      id: (json['id'] as num?)?.toDouble(),
      modelo: json['modelo'] as String?,
      fabricante: json['fabricante'] as String?,
      potencia: (json['potencia'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ModuleModelToJson(ModuleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'modelo': instance.modelo,
      'fabricante': instance.fabricante,
      'potencia': instance.potencia,
    };
