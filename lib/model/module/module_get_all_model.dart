import 'package:json_annotation/json_annotation.dart';

part 'module_get_all_model.g.dart';

@JsonSerializable()
class ModuleGetAllListModel {
  ModuleGetAllListModel({
    this.items,
  });

  factory ModuleGetAllListModel.fromJson(Map<String, dynamic>? json) =>
      ModuleGetAllListModel(
        items: json as List<ModuleGetAllModel>?,
      );

  List<ModuleGetAllModel>? items;

  Map<String, dynamic> toJson() => _$ModuleGetAllListModelToJson(this);

  static const fromJsonFactory = _$ModuleGetAllListModelFromJson;
}

@JsonSerializable()
class ModuleGetAllModel {
  ModuleGetAllModel({
    this.id,
    this.model,
    this.provider,
    this.power,
  });

  factory ModuleGetAllModel.fromJson(Map<String, dynamic>? json) =>
      ModuleGetAllModel(
        id: json?['id'] as double?,
        model: json?['id'] as String?,
        provider: json?['id'] as String?,
        power: json?['id'] as double?,
      );

  double? id;
  String? model;
  String? provider;
  double? power;

  Map<String, dynamic> toJson() => _$ModuleGetAllModelToJson(this);

  static const fromJsonFactory = _$ModuleGetAllModelFromJson;
}
