// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientModel _$ClientModelFromJson(Map<String, dynamic> json) => ClientModel(
      id: json['id'] as String?,
      cpf: (json['cpf'] as num?)?.toDouble(),
      nome: json['nome'] as String?,
      idade: (json['idade'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ClientModelToJson(ClientModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cpf': instance.cpf,
      'nome': instance.nome,
      'idade': instance.idade,
    };