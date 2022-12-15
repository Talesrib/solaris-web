import 'package:sollaris_web_flutter/exports.dart';

class SollarisMenuTitle extends StatelessWidget {
  const SollarisMenuTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Text(title).title(SollarisColors.neutral300),
    );
  }
}
