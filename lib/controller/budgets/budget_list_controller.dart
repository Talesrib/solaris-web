import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/budgets/budget_model.dart';
import 'package:sollaris_web_flutter/repository/budgets/budgets_repository.dart';

class BudgetListController extends GetxController {

  final _repository = BudgetRepository();

  final modelFilterNotifier = TextEditingController();
  final providerFilterNotifier = ValueNotifier('Todos');
  final powerFilterNotifier = ValueNotifier('Todas');

  List<String> providerList = <String>[];
  List<String> powerList = <String>[];

  List<BudgetModel> budgetList = <BudgetModel>[];

  Future<void> loadBudgets() async {
    final response = await _repository.getAllBudgets();
    budgetList = List.from(response);

    update();
  }

  void clearFilter() {
    modelFilterNotifier.text = '';
    providerFilterNotifier.value = 'Todos';
    powerFilterNotifier.value = 'Todas';
  }

  void applyFilter() {}
}
