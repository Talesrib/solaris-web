// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BudgetModel _$BudgetModelFromJson(Map<String, dynamic> json) => BudgetModel(
      id: (json['id'] as num?)?.toDouble(),
      tipoMedia: json['tipoMedia'] as String?,
      mediaConsumo: (json['mediaConsumo'] as num?)?.toDouble(),
      tipoFase: json['tipoFase'] as String?,
      economiaMensal: (json['economiaMensal'] as num?)?.toDouble(),
      economiaAnual: (json['economiaAnual'] as num?)?.toDouble(),
      potenciaInversor: (json['potenciaInversor'] as num?)?.toDouble(),
      qtdModulos: (json['qtdModulos'] as num?)?.toDouble(),
      custo: (json['custo'] as num?)?.toDouble(),
      taxaDeRetorno: (json['taxaDeRetorno'] as num?)?.toDouble(),
      dataSolicitacao: json['dataSolicitacao'] as String?,
      nomeCliente: json['nomeCliente'] as String?,
      pedidoGerado: json['pedidoGerado'] as bool?,
    );

Map<String, dynamic> _$BudgetModelToJson(BudgetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tipoMedia': instance.tipoMedia,
      'mediaConsumo': instance.mediaConsumo,
      'tipoFase': instance.tipoFase,
      'economiaMensal': instance.economiaMensal,
      'economiaAnual': instance.economiaAnual,
      'potenciaInversor': instance.potenciaInversor,
      'qtdModulos': instance.qtdModulos,
      'custo': instance.custo,
      'taxaDeRetorno': instance.taxaDeRetorno,
      'dataSolicitacao': instance.dataSolicitacao,
      'nomeCliente': instance.nomeCliente,
      'pedidoGerado': instance.pedidoGerado,
    };
