import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/orders/order_model.dart';

class SelectedOrderController extends GetxController {
  var selectedModel = OrderModel();

  // Field Notifiers

  final clientNotifier = ValueNotifier('');
  final statusNotifier = ValueNotifier('');

  final meanTypeNotifier = ValueNotifier('Mensal');
  final meanNotifier = TextEditingController();
  final phaseTypeNotifier = ValueNotifier('Monofásica');

  final budgetIdNotifier = TextEditingController();
  final budgetDateNotifier = TextEditingController();

  // Table items

  final moduleQuantityItem = ValueNotifier('');
  final inverterPowerItem = ValueNotifier('');
  final returnRateItem = ValueNotifier('');
  final savingsMontlyItem = ValueNotifier('');
  final savingsAnualItem = ValueNotifier('');
  var totalCost = 0.0;

  // Load Budget Method

  void loadModel(OrderModel model) {
    selectedModel = model;

    clientNotifier.value = model.nomeCliente.toString();
    statusNotifier.value = model.status.toString();

    meanTypeNotifier.value = model.tipoMedia.toString();
    meanNotifier.text = model.mediaConsumo.toString();
    phaseTypeNotifier.value = model.tipoFase.toString();

    budgetIdNotifier.text = model.orcamentoId.toString();
    budgetDateNotifier.text = model.dataSolicitacao.toString();

    moduleQuantityItem.value = model.qtdModulos.toString();
    inverterPowerItem.value = model.potenciaInversor.toString();
    returnRateItem.value = model.taxaDeRetorno.toString();
    savingsMontlyItem.value = model.economiaMensal!.toStringAsFixed(2);
    savingsAnualItem.value = model.economiaAnual!.toStringAsFixed(2);
    totalCost = model.custoTotal!;

    update();
  }
}
