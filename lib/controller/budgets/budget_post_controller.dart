import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/budgets/budget_model.dart';
import 'package:sollaris_web_flutter/repository/budgets/budgets_repository.dart';
import 'package:sollaris_web_flutter/repository/clients/clients_repository.dart';

class BudgetPostController extends GetxController {
  final _repository = BudgetRepository();
  final _clientRepository = ClientRepository();

  // Field Notifiers

  final clientNotifier = ValueNotifier('');

  final meanTypeNotifier = ValueNotifier('Mensal');
  final meanNotifier = TextEditingController();
  final phaseTypeNotifier = ValueNotifier('Monofásica');

  // Table items

  final moduleQuantityItem = ValueNotifier('');
  final inverterPowerItem = ValueNotifier('');
  final returnRateItem = ValueNotifier('');
  final savingsMontlyItem = ValueNotifier('');
  final savingsAnualItem = ValueNotifier('');
  var totalCost = 0.0;

  // Calculate Budget Method

  void calculateBudget() {

    if (phaseTypeNotifier.value == 'Monofásica') {
      moduleQuantityItem.value = '3';
      returnRateItem.value = '15%';
      inverterPowerItem.value = '450 kWh';
      totalCost = 2300;
    } else if (phaseTypeNotifier.value == 'Bifásica') {
      moduleQuantityItem.value = '6';
      returnRateItem.value = '30%';
      inverterPowerItem.value = '500 kWh';
      totalCost = 4400;
    } else {
      moduleQuantityItem.value = '9';
      returnRateItem.value = '45%';
      inverterPowerItem.value = '550 kWh';
      totalCost = 6700;
    }

    if (meanTypeNotifier.value == 'Anual') {
      final montlyMean = double.tryParse(meanNotifier.text)! / 12;
      final montlyCost = montlyMean - (totalCost / 12);

      savingsMontlyItem.value = 'R\$ ${montlyCost.toStringAsFixed(2)}';
      savingsAnualItem.value = 'R\$ ${(montlyCost * 12).toStringAsFixed(2)}';
    } else {
      final montlyMean = double.tryParse(meanNotifier.text);
      final montlyCost = montlyMean! - (totalCost / 12);

      savingsMontlyItem.value = 'R\$ ${montlyCost.toStringAsFixed(2)}';
      savingsAnualItem.value = 'R\$ ${(montlyCost * 12).toStringAsFixed(2)}';
    }

    update();
  }

  // Post Budget Method

  Future<void> postBudget() async {
    final body = BudgetModel(
      id: 0,
      tipoMedia: meanTypeNotifier.value,
      mediaConsumo: double.tryParse(meanNotifier.text),
      tipoFase: phaseTypeNotifier.value,
      economiaMensal: double.tryParse(savingsMontlyItem.value.replaceAll('R\$ ', '')),
      economiaAnual: double.tryParse(savingsAnualItem.value.replaceAll('R\$ ', '')),
      potenciaInversor: double.tryParse(inverterPowerItem.value.replaceAll(' kWh', '')),
      qtdModulos: double.tryParse(moduleQuantityItem.value),
      custo: totalCost,
      taxaDeRetorno: double.tryParse(returnRateItem.value.replaceAll('%', '')),
      dataSolicitacao: '2023-02-05',
      nomeCliente: clientNotifier.value,
      pedidoGerado: false,
    );

    await _repository.postBudget(body.toJson());

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
