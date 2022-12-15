import 'package:sollaris_web_flutter/exports.dart';

class SollarisMenuItem extends StatelessWidget {
  const SollarisMenuItem({
    super.key,
    required this.iconData,
    required this.title,
    required this.route,
    required this.navigatorController,
  });

  final IconData iconData;
  final String title;
  final String route;
  final NavigatorController navigatorController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      margin: const EdgeInsets.only(left: 32, top: 8),
      child: TextButton(
        onPressed: () => navigatorController.setRoute(route),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Icon(
                iconData,
                size: 24,
                color: SollarisColors.neutral300,
              ),
            ),
            Text(title).main(SollarisColors.neutral300),
          ],
        ),
      ),
    );
  }
}
