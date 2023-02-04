import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/view/pages/orders/selected_order_page.dart';

class SelectedPage extends StatelessWidget {
  const SelectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigatorController>(
      builder: (navigatorController) {
        switch (navigatorController.getRoute()) {
          case 'module_list_page':
            return const ModuleListPage();
          case 'inverter_list_page':
            return const InverterListPage();
          case 'budget_list_page':
            return const BudgetListPage();
          case 'new_budget_page':
            return const NewBudgetPage();
          case 'selected_budget_page':
            return const SelectedBudgetPage();
          case 'order_list_page':
            return const OrderListPage();
          case 'new_order_page':
            return const NewOrderPage();
          case 'selected_order_page':
            return const SelectedOrderPage();
          case 'client_list_page':
            return const ClientListPage();
          case 'new_client_page':
            return const NewClientPage();
          case 'selected_client_page':
            return const SelectedClientPage();
          case 'my_profile_page':
            return const MyProfilePage();
          default:
            return const OrderListPage();
        }
      },
    );
  }
}
