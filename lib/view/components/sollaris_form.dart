import 'package:sollaris_web_flutter/exports.dart';

class SollarisForm extends StatelessWidget {
  const SollarisForm({
    super.key,
    required this.width,
    required this.title,
    required this.formWidget,
    required this.mandatory,
  });

  final double width;
  final String title;
  final Widget formWidget;
  final bool mandatory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Row(
            children: [
              mandatory
                  ? Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: const Text('*').mainBold(SollarisColors.error100),
                    )
                  : const SizedBox(),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
              ).mainBold(SollarisColors.neutral300),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: formWidget,
          ),
        ],
      ),
    );
  }
}
