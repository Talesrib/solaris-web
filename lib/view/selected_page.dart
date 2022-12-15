import 'package:sollaris_web_flutter/exports.dart';

class SelectedPage extends StatelessWidget {
  const SelectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigatorController>(
      init: NavigatorController(),
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
          case 'client_list_page':
            return const ClientListPage();
          case 'my_profile_page':
            return const MyProfilePage();
          default:
            return const OrderListPage();
        }
      },
    );
  }
}
