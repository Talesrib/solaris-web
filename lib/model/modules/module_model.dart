import 'package:json_annotation/json_annotation.dart';

part 'module_model.g.dart';

@JsonSerializable()
class ModuleModel {
  ModuleModel({
    this.id,
    this.modelo,
    this.fabricante,
    this.potencia,
  });

  factory ModuleModel.fromJson(Map<String, dynamic>? json) =>
      ModuleModel(
        id: json?['id'] as double?,
        modelo: json?['modelo'] as String?,
        fabricante: json?['fabricante'] as String?,
        potencia: json?['potencia'] as double?,
      );

  double? id;
  String? modelo;
  String? fabricante;
  double? potencia;

  Map<String, dynamic> toJson() => _$ModuleModelToJson(this);

  static const fromJsonFactory = _$ModuleModelFromJson;
}
