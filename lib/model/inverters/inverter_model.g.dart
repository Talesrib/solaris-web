// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inverter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InverterModel _$InverterModelFromJson(Map<String, dynamic> json) =>
    InverterModel(
      id: (json['id'] as num?)?.toDouble(),
      modelo: json['modelo'] as String?,
      fabricante: json['fabricante'] as String?,
      potencia: (json['potencia'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$InverterModelToJson(InverterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'modelo': instance.modelo,
      'fabricante': instance.fabricante,
      'potencia': instance.potencia,
    };