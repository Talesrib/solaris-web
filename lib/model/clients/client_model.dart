import 'package:json_annotation/json_annotation.dart';

part 'client_model.g.dart';

@JsonSerializable()
class ClientModel {
  ClientModel({
    this.id,
    this.cpf,
    this.nome,
    this.idade,
  });

  factory ClientModel.fromJson(Map<String, dynamic>? json) =>
      ClientModel(
        id: json?['id'] as String?,
        cpf: json?['cpf'] as double?,
        nome: json?['nome'] as String?,
        idade: json?['idade'] as double?,
      );

  String? id;
  double? cpf;
  String? nome;
  double? idade;

  Map<String, dynamic> toJson() => _$ClientModelToJson(this);

  static const fromJsonFactory = _$ClientModelFromJson;
}
