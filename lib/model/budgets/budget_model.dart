import 'package:json_annotation/json_annotation.dart';

part 'budget_model.g.dart';

@JsonSerializable()
class BudgetModel {
  BudgetModel({
    this.id,
    this.tipoMedia,
    this.mediaConsumo,
    this.tipoFase,
    this.economiaMensal,
    this.economiaAnual,
    this.potenciaInversor,
    this.qtdModulos,
    this.custo,
    this.taxaDeRetorno,
    this.dataSolicitacao,
    this.nomeCliente,
    this.pedidoGerado,
  });

  factory BudgetModel.fromJson(Map<String, dynamic>? json) => BudgetModel(
        id: json?['id'] as double?,
        tipoMedia: json?['tipoMedia'] as String?,
        mediaConsumo: json?['mediaConsumo'] as double?,
        tipoFase: json?['tipoFase'] as String?,
        economiaMensal: json?['economiaMensal'] as double?,
        economiaAnual: json?['economiaAnual'] as double?,
        potenciaInversor: json?['potenciaInversor'] as double?,
        qtdModulos: json?['qtdModulos'] as double?,
        custo: json?['custo'] as double?,
        taxaDeRetorno: json?['taxaDeRetorno'] as double?,
        dataSolicitacao: json?['dataSolicitacao'] as String?,
        nomeCliente: json?['nomeCliente'] as String?,
        pedidoGerado: json?['pedidoGerado'] as bool?,
      );

  double? id;
  String? tipoMedia;
  double? mediaConsumo;
  String? tipoFase;
  double? economiaMensal;
  double? economiaAnual;
  double? potenciaInversor;
  double? qtdModulos;
  double? custo;
  double? taxaDeRetorno;
  String? dataSolicitacao;
  String? nomeCliente;
  bool? pedidoGerado;

  Map<String, dynamic> toJson() => _$BudgetModelToJson(this);

  static const fromJsonFactory = _$BudgetModelFromJson;
}
