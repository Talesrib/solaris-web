// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientModel _$ClientModelFromJson(Map<String, dynamic> json) => ClientModel(
      id: (json['id'] as num?)?.toDouble(),
      nome: json['nome'] as String?,
      tipo: json['tipo'] as String?,
      cpfCnpj: (json['cpfCnpj'] as num?)?.toDouble(),
      cep: (json['cep'] as num?)?.toDouble(),
      endereco: json['endereco'] as String?,
      numero: json['numero'] as String?,
      cidade: json['cidade'] as String?,
      estado: json['estado'] as String?,
      email: json['email'] as String?,
      complemento: json['complemento'] as String?,
      senha: json['senha'] as String?,
      celular: json['celular'] as String?,
    );

Map<String, dynamic> _$ClientModelToJson(ClientModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'tipo': instance.tipo,
      'cpfCnpj': instance.cpfCnpj,
      'cep': instance.cep,
      'endereco': instance.endereco,
      'numero': instance.numero,
      'cidade': instance.cidade,
      'estado': instance.estado,
      'email': instance.email,
      'complemento': instance.complemento,
      'senha': instance.senha,
      'celular': instance.celular,
    };
