import 'package:sollaris_web_flutter/exports.dart';

class SollarisLateralMenu extends StatelessWidget {
  const SollarisLateralMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigatorController>(
      init: NavigatorController(),
      builder: (navigatorController) {
        return Material(
          elevation: 40,
          child: Container(
            width: 24.w,
            height: 100.h,
            color: SollarisColors.neutral0,
            padding: const EdgeInsets.only(top: 36, left: 36, right: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _logo(),
                _products(navigatorController),
                _system(navigatorController),
                _profile(navigatorController),
              ],
            ),
          ),
        );
      }
    );
  }

  Widget _logo() {
    return Center(
      child: Container(
        width: 10.w,
        margin: const EdgeInsets.only(bottom: 48),
        child: Image.asset('assets/logo.png')
      ),
    );
  }

  Widget _products(NavigatorController navigatorController) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SollarisMenuTitle(title: 'Produtos'),
          SollarisMenuItem(
            iconData: Icons.view_module,
            title: 'Módulos',
            navigatorController: navigatorController,
            route: 'module_list_page',
          ),
          SollarisMenuItem(
            iconData: Icons.inbox,
            title: 'Inversores',
            navigatorController: navigatorController,
            route: 'inverter_list_page',
          ),
        ],
      ),
    );
  }

  Widget _system(NavigatorController navigatorController) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SollarisMenuTitle(title: 'Sistema'),
          SollarisMenuItem(
            iconData: Icons.event_note_outlined,
            title: 'Orçamentos',
            navigatorController: navigatorController,
            route: 'budget_list_page',
          ),
          SollarisMenuItem(
            iconData: Icons.shopping_cart,
            title: 'Pedidos',
            navigatorController: navigatorController,
            route: 'order_list_page',
          ),
          SollarisMenuItem(
            iconData: Icons.people,
            title: 'Clientes',
            navigatorController: navigatorController,
            route: 'client_list_page',
          ),
        ],
      ),
    );
  }

  Widget _profile(NavigatorController navigatorController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SollarisMenuTitle(title: 'Perfil'),
        SollarisMenuItem(
          iconData: Icons.account_box,
          title: 'Meu perfil',
            navigatorController: navigatorController,
            route: 'my_profile_page',
        ),
        SollarisMenuItem(
          iconData: Icons.exit_to_app,
          title: 'Sair',
            navigatorController: navigatorController,
            route: 'order_list_page',
        ),
      ],
    );
  }
}
