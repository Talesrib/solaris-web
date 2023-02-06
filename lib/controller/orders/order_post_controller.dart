import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/budgets/budget_model.dart';
import 'package:sollaris_web_flutter/model/orders/order_model.dart';
import 'package:sollaris_web_flutter/repository/clients/clients_repository.dart';
import 'package:sollaris_web_flutter/repository/orders/orders_repository.dart';

class OrderPostController extends GetxController {
  final _repository = OrderRepository();
  final _clientRepository = ClientRepository();

  // Field Notifiers

  final clientNotifier = ValueNotifier('');

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

  void loadModel(BudgetModel model) {
    clientNotifier.value = model.nomeCliente.toString();

    meanTypeNotifier.value = model.tipoMedia.toString();
    meanNotifier.text = model.mediaConsumo.toString();
    phaseTypeNotifier.value = model.tipoFase.toString();

    budgetIdNotifier.text = model.id.toString();
    budgetDateNotifier.text = model.dataSolicitacao.toString();

    moduleQuantityItem.value = model.qtdModulos.toString();
    inverterPowerItem.value = model.potenciaInversor.toString();
    returnRateItem.value = model.taxaDeRetorno.toString();
    savingsMontlyItem.value = model.economiaMensal!.toStringAsFixed(2);
    savingsAnualItem.value = model.economiaAnual!.toStringAsFixed(2);
    totalCost = model.custo!;

    update();
  }

  // Post Order Method

  Future<void> postOrder() async {
    final body = OrderModel(
      id: 0,
      tipoMedia: meanTypeNotifier.value,
      mediaConsumo: double.tryParse(meanNotifier.text),
      tipoFase: phaseTypeNotifier.value,
      economiaMensal:
          double.tryParse(savingsMontlyItem.value.replaceAll('R\$ ', '')),
      economiaAnual:
          double.tryParse(savingsAnualItem.value.replaceAll('R\$ ', '')),
      potenciaInversor:
          double.tryParse(inverterPowerItem.value.replaceAll(' kWh', '')),
      qtdModulos: double.tryParse(moduleQuantityItem.value),
      custoTotal: totalCost,
      taxaDeRetorno: double.tryParse(returnRateItem.value.replaceAll('%', '')),
      dataSolicitacao: '2023-02-05',
      nomeCliente: clientNotifier.value,
      orcamentoId: double.tryParse(budgetIdNotifier.text),
      status: 'Em análise',
    );

    await _repository.postOrder(body.toJson());

    update();
  }

  // Load Clients Method

  List<String> clientList = <String>[];

  Future<void> loadClients() async {
    clientList.clear();

    final response = await _clientRepository.getAllClients();

    if (response.isNotEmpty) {
      clientNotifier.value = response[0].nome!;

      for (final client in response) {
        clientList.add(client.nome!);
      }
    }

    update();
  }
}
