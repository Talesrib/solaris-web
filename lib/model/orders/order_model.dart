import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@JsonSerializable()
class OrderModel {
  OrderModel({
    this.id,
    this.nomeCliente,
    this.dataSolicitacao,
    this.custoTotal,
    this.status,
    this.orcamentoId,
    this.tipoMedia,
    this.mediaConsumo,
    this.tipoFase,
    this.taxaDeRetorno,
    this.economiaMensal,
    this.economiaAnual,
    this.potenciaInversor,
    this.qtdModulos,
  });

  factory OrderModel.fromJson(Map<String, dynamic>? json) => OrderModel(
        id: json?['id'] as double?,
        nomeCliente: json?['nomeCliente'] as String?,
        dataSolicitacao: json?['dataSolicitacao'] as String?,
        custoTotal: json?['custoTotal'] as double?,
        status: json?['status'] as String?,
        orcamentoId: json?['orcamentoId'] as double?,
        tipoMedia: json?['tipoMedia'] as String?,
        mediaConsumo: json?['mediaConsumo'] as double?,
        tipoFase: json?['tipoFase'] as String?,
        economiaMensal: json?['economiaMensal'] as double?,
        economiaAnual: json?['economiaAnual'] as double?,
        potenciaInversor: json?['potenciaInversor'] as double?,
        qtdModulos: json?['qtdModulos'] as double?,
        taxaDeRetorno: json?['taxaDeRetorno'] as double?,
      );

  double? id;
  String? nomeCliente;
  String? dataSolicitacao;
  double? custoTotal;
  String? status;
  double? orcamentoId;
  String? tipoMedia;
  double? mediaConsumo;
  String? tipoFase;
  double? economiaMensal;
  double? economiaAnual;
  double? potenciaInversor;
  double? qtdModulos;
  double? taxaDeRetorno;

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);

  static const fromJsonFactory = _$OrderModelFromJson;
}
