import 'package:sollaris_web_flutter/exports.dart';

class TableItem extends StatelessWidget {
  const TableItem({
    super.key,
    required this.content,
    required this.position,
  });

  final Widget content;
  final Position position;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: position == Position.fisrt
                ? const Radius.circular(15)
                : Radius.zero,
            bottomRight: position == Position.last
                ? const Radius.circular(15)
                : Radius.zero,
          ),
          border: Border.all(color: SollarisColors.neutral200),
          color: SollarisColors.neutral0,
        ),
        height: 48,
        child: content,
      ),
    );
  }
}

class StatusIndicator extends StatelessWidget {
  const StatusIndicator({
    super.key,
    required this.status,
  });

  final Status status;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: status == Status.finalizado
            ? SollarisColors.success100
            : status == Status.cancelado
                ? SollarisColors.error100
                : SollarisColors.neutral200,
      ),
      child: Text(
        status == Status.finalizado
            ? 'FINALIZADO'
            : status == Status.cancelado
                ? 'CANCELADO'
                : 'EM ANÁLISE',
      ).status(SollarisColors.neutral0),
    );
  }
}

enum Status {
  finalizado,
  emAnalise,
  cancelado;
}