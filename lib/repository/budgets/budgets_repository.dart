import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/budgets/budget_model.dart';
import 'package:sollaris_web_flutter/network/budgets/network_service.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';

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
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> putBudget(Map<String, dynamic> body, double id) async {
    try {
      await _clientService.putBudget(body, id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
