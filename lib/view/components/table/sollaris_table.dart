import 'package:sollaris_web_flutter/exports.dart';

class SollarisTable extends StatelessWidget {
  const SollarisTable({
    super.key,
    required this.headerItems,
    required this.tableItems,
    required this.tableWidth,
  });

  final List<Widget> headerItems;
  final List<List<Widget>> tableItems;
  final double tableWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tableWidth,
      padding: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: SollarisColors.neutral200),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Table(
          columnWidths: _generateTableColumns(),
          children: _generateTableRows(),
        ),
      ),
    );
  }

  Map<int, TableColumnWidth> _generateTableColumns() {
    final res = <int, TableColumnWidth>{};
    for (var i = 0; i < headerItems.length; i++) {
      res.addAll({i: const IntrinsicColumnWidth()});
    }
    return res;
  }

  List<TableRow> _generateTableRows() {
    final res = <TableRow>[
      TableRow(
        decoration: const BoxDecoration(
          color: SollarisColors.neutral0,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        children: headerItems,
      ),
    ];

    for (var i = 0; i < tableItems.length; i++) {
      res.add(
        TableRow(
          decoration: BoxDecoration(
            borderRadius: i == tableItems.length - 1
                ? const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )
                : BorderRadius.zero,
            color: SollarisColors.neutral0,
          ),
          children: tableItems[i],
        ),
      );
    }

    return res;
  }
}

enum Position {
  fisrt,
  middle,
  last;
}
