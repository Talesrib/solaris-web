// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_get_all_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModuleGetAllListModel _$ModuleGetAllListModelFromJson(
        Map<String, dynamic> json) =>
    ModuleGetAllListModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ModuleGetAllModel.fromJson(e as Map<String, dynamic>?))
          .toList(),
    );

Map<String, dynamic> _$ModuleGetAllListModelToJson(
        ModuleGetAllListModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

ModuleGetAllModel _$ModuleGetAllModelFromJson(Map<String, dynamic> json) =>
    ModuleGetAllModel(
      id: (json['id'] as num?)?.toDouble(),
      model: json['model'] as String?,
      provider: json['provider'] as String?,
      power: (json['power'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ModuleGetAllModelToJson(ModuleGetAllModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'model': instance.model,
      'provider': instance.provider,
      'power': instance.power,
    };