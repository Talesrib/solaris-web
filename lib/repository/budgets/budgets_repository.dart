import 'package:fluttertoast/fluttertoast.dart';
import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/budgets/budget_model.dart';
import 'package:sollaris_web_flutter/network/budgets/network_service.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';
import 'package:sollaris_web_flutter/view/components/display_toast.dart';

class BudgetRepository {
  BudgetService get _clientService => GetIt.I<BudgetService>();

  Future<List<BudgetModel>> getAllBudgets() async {
    try {
      final response = await _clientService.getAllBudgets();

      return response.body!;
    } catch (e) {
      debugPrint(e.toString());

      return [];
    }
  }

  Future<void> postBudget(Map<String, dynamic> body) async {
    try {
      await _clientService.postBudget(body);

      displayToast('Orçamento criado com sucesso', success: true);

    } catch (e) {
      debugPrint(e.toString());

      displayToast('Erro ao criar orçamento', success: false);
    }
  }

  Future<void> putBudget(Map<String, dynamic> body, double id) async {
    try {
      await _clientService.putBudget(body, id);

      displayToast('Orçamento editado com sucesso', success: true);
    } catch (e) {
      debugPrint(e.toString());

      displayToast('Erro ao editar orçamento', success: false);
    }
  }
}
