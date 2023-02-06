// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      id: (json['id'] as num?)?.toDouble(),
      nomeCliente: json['nomeCliente'] as String?,
      dataSolicitacao: json['dataSolicitacao'] as String?,
      custoTotal: (json['custoTotal'] as num?)?.toDouble(),
      status: json['status'] as String?,
      orcamentoId: (json['orcamentoId'] as num?)?.toDouble(),
      tipoMedia: json['tipoMedia'] as String?,
      mediaConsumo: (json['mediaConsumo'] as num?)?.toDouble(),
      tipoFase: json['tipoFase'] as String?,
      taxaDeRetorno: (json['taxaDeRetorno'] as num?)?.toDouble(),
      economiaMensal: (json['economiaMensal'] as num?)?.toDouble(),
      economiaAnual: (json['economiaAnual'] as num?)?.toDouble(),
      potenciaInversor: (json['potenciaInversor'] as num?)?.toDouble(),
      qtdModulos: (json['qtdModulos'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nomeCliente': instance.nomeCliente,
      'dataSolicitacao': instance.dataSolicitacao,
      'custoTotal': instance.custoTotal,
      'status': instance.status,
      'orcamentoId': instance.orcamentoId,
      'tipoMedia': instance.tipoMedia,
      'mediaConsumo': instance.mediaConsumo,
      'tipoFase': instance.tipoFase,
      'economiaMensal': instance.economiaMensal,
      'economiaAnual': instance.economiaAnual,
      'potenciaInversor': instance.potenciaInversor,
      'qtdModulos': instance.qtdModulos,
      'taxaDeRetorno': instance.taxaDeRetorno,
    };
