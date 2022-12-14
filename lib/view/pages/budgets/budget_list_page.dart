import 'package:sollaris_web_flutter/exports.dart';

class BudgetListPage extends StatelessWidget {
  const BudgetListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76.w,
      height: 100.h,
      color: SollarisColors.neutral100,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(70),
          child: Column(
            children: [
              _titleSection(),
              _filterSection(),
              _contentSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _titleSection() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(
        left: 36,
        right: 11,
        top: 14,
        bottom: 14,
      ),
      decoration: const BoxDecoration(
          color: SollarisColors.neutral0,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('ORÇAMENTOS').title(SollarisColors.neutral300),
          SollarisButton(
            height: 40,
            label: 'NOVO',
            onPressed: () {
              Get.find<NavigatorController>().setRoute('new_budget_page');
            },
            buttonType: ButtonType.primaryButton,
            iconData: Icons.add,
            iconColor: SollarisColors.neutral0,
            iconSize: 20,
          )
        ],
      ),
    );
  }

  Widget _filterSection() {
    return Container(
      margin: const EdgeInsets.only(top: 48),
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 36,
      ),
      decoration: const BoxDecoration(
        color: SollarisColors.neutral0,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          _filterFields(),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: _filterButtons(),
          )
        ],
      ),
    );
  }

  Widget _filterFields() {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SollarisForm(
            width: 28.w,
            title: 'Cliente',
            formWidget: SolarisTextInput(
              width: 28.w,
              height: 40,
              textEditingController: TextEditingController(),
              hint: '',
            ),
            mandatory: false,
          ),
          SollarisForm(
            width: 28.w,
            title: 'Ordenar',
            formWidget: SollarisDropdown(
              width: 28.w,
              height: 40,
              valueSelected: ValueNotifier('Por data'),
              values: const [
                'Por cliente',
                'Por data',
                'Por valor total',
              ],
            ),
            mandatory: false,
          ),
        ],
      ),
    );
  }

  Widget _filterButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: SollarisButton(
            height: 40,
            label: 'LIMPAR',
            onPressed: () {},
            buttonType: ButtonType.secondaryButton,
          ),
        ),
        SollarisButton(
          height: 40,
          label: 'APLICAR',
          onPressed: () {},
          buttonType: ButtonType.primaryButton,
        ),
      ],
    );
  }

  Widget _contentSection() {
    return Container(
      margin: const EdgeInsets.only(top: 48),
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 36,
      ),
      decoration: const BoxDecoration(
        color: SollarisColors.neutral0,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: SollarisTable(
        tableWidth: 84.5.w,
        headerItems: _tableHeader(),
        tableItems: _tableItems(),
      ),
    );
  }

  List<Widget> _tableHeader() {
    return const [
      TableHeader(
        title: 'ID',
        position: Position.fisrt,
      ),
      TableHeader(
        title: 'Cliente',
        position: Position.middle,
      ),
      TableHeader(
        title: 'Data',
        position: Position.middle,
      ),
      TableHeader(
        title: 'Total',
        position: Position.last,
      ),
    ];
  }

  List<List<Widget>> _tableItems() {
    return [
      [
        TableItem(
          content: TextButton(
            child: const Text('#12345').main(SollarisColors.link100),
            onPressed: () {
              Get.find<NavigatorController>().setRoute('selected_budget_page');
            },
          ),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('Cliente exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('12/12/2022 - 12:12').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('R\$ 1.234,00').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
      ],
      [
        TableItem(
          content: const Text('#12345').main(SollarisColors.link100),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('Cliente exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('12/12/2022 - 12:12').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('R\$ 1.234,00').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
      ],
      [
        TableItem(
          content: const Text('#12345').main(SollarisColors.link100),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('Cliente exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('12/12/2022 - 12:12').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('R\$ 1.234,00').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
      ],
      [
        TableItem(
          content: const Text('#12345').main(SollarisColors.link100),
          position: Position.fisrt,
        ),
        TableItem(
          content:
              const Text('Cliente exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('12/12/2022 - 12:12').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('R\$ 1.234,00').main(SollarisColors.neutral300),
          position: Position.last,
        ),
      ],
    ];
  }
}
