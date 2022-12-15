import 'package:sollaris_web_flutter/exports.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({
    super.key,
    required this.title,
    required this.position,
  });

  final String title;
  final Position position;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 48,
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: position == Position.fisrt
              ? const Radius.circular(15)
              : Radius.zero,
          topRight: position == Position.last
              ? const Radius.circular(15)
              : Radius.zero,
        ),
        border: Border.all(color: SollarisColors.neutral200),
        color: SollarisColors.neutral100,
      ),
      child: Text(
        title.toUpperCase(),
        textAlign: TextAlign.center,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      ).mainBold(SollarisColors.neutral300),
    );
  }
}