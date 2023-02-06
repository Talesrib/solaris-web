import 'package:json_annotation/json_annotation.dart';

part 'inverter_model.g.dart';

@JsonSerializable()
class InverterModel {
  InverterModel({
    this.id,
    this.modelo,
    this.fabricante,
    this.potencia,
  });

  factory InverterModel.fromJson(Map<String, dynamic>? json) =>
      InverterModel(
        id: json?['id'] as double?,
        modelo: json?['modelo'] as String?,
        fabricante: json?['fabricante'] as String?,
        potencia: json?['potencia'] as double?,
      );

  double? id;
  String? modelo;
  String? fabricante;
  double? potencia;

  Map<String, dynamic> toJson() => _$InverterModelToJson(this);

  static const fromJsonFactory = _$InverterModelFromJson;
}
