import 'package:sollaris_web_flutter/controller/budgets/budget_list_controller.dart';
import 'package:sollaris_web_flutter/controller/budgets/budget_post_controller.dart';
import 'package:sollaris_web_flutter/controller/budgets/selected_budget_controller.dart';
import 'package:sollaris_web_flutter/controller/clients/client_list_controller.dart';
import 'package:sollaris_web_flutter/controller/clients/client_post_controller.dart';
import 'package:sollaris_web_flutter/controller/clients/selected_client_controller.dart';
import 'package:sollaris_web_flutter/controller/orders/order_list_controller.dart';
import 'package:sollaris_web_flutter/controller/orders/order_post_controller.dart';
import 'package:sollaris_web_flutter/controller/orders/selected_order_controller.dart';
import 'package:sollaris_web_flutter/exports.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NavigatorController>(NavigatorController());

    Get.put<ModuleListController>(ModuleListController());

    Get.put<ClientListController>(ClientListController());
    Get.put<ClientPostController>(ClientPostController());
    Get.put<SelectedClientController>(SelectedClientController());

    Get.put<BudgetListController>(BudgetListController());
    Get.put<BudgetPostController>(BudgetPostController());
    Get.put<SelectedBudgetController>(SelectedBudgetController());

    Get.put<OrderListController>(OrderListController());
    Get.put<OrderPostController>(OrderPostController());
    Get.put<SelectedOrderController>(SelectedOrderController());
  }
}
