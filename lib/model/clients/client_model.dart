import 'package:json_annotation/json_annotation.dart';

part 'client_model.g.dart';

@JsonSerializable()
class ClientModel {
  ClientModel({
    this.id,
    this.nome,
    this.tipo,
    this.cpfCnpj,
    this.cep,
    this.endereco,
    this.numero,
    this.cidade,
    this.estado,
    this.email,
    this.complemento,
    this.senha,
    this.celular,
  });

  factory ClientModel.fromJson(Map<String, dynamic>? json) => ClientModel(
        id: json?['id'] as double?,
        nome: json?['nome'] as String?,
        tipo: json?['tipo'] as String?,
        cpfCnpj: json?['cpfCnpj'] as double?,
        cep: json?['cep'] as double?,
        endereco: json?['endereco'] as String?,
        numero: json?['numero'] as String?,
        cidade: json?['cidade'] as String?,
        estado: json?['estado'] as String?,
        email: json?['email'] as String?,
        complemento: json?['complemento'] as String?,
        senha: json?['senha'] as String?,
        celular: json?['celular'] as String?,
      );

  double? id;
  String? nome;
  String? tipo;
  double? cpfCnpj;
  double? cep;
  String? endereco;
  String? numero;
  String? cidade;
  String? estado;
  String? email;
  String? complemento;
  String? senha;
  String? celular;

  Map<String, dynamic> toJson() => _$ClientModelToJson(this);

  static const fromJsonFactory = _$ClientModelFromJson;
}
