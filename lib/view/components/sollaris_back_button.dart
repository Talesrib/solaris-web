import 'package:sollaris_web_flutter/exports.dart';

class SollarisBackButton extends StatelessWidget {
  const SollarisBackButton({
    super.key,
    required this.route,
  });

  final String route;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.find<NavigatorController>().setRoute(route);
      },
      child: SizedBox(
        width: 120,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: SollarisColors.error100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: const Text('Voltar').main(SollarisColors.error100),
            ),
          ],
        ),
      ),
    );
  }
}
