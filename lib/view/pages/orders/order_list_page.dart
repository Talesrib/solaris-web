import 'package:sollaris_web_flutter/exports.dart';

class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

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
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 36,
      ),
      decoration: const BoxDecoration(
          color: SollarisColors.neutral0,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: const Text('PEDIDOS').title(SollarisColors.neutral300),
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
            width: 18.2.w,
            title: 'Cliente',
            formWidget: SolarisTextInput(
              width: 18.2.w,
              height: 40,
              textEditingController: TextEditingController(),
              hint: '',
            ),
            mandatory: false,
          ),
          SollarisForm(
            width: 18.2.w,
            title: 'Status',
            formWidget: SollarisDropdown(
              width: 18.2.w,
              height: 40,
              valueSelected: ValueNotifier('Todos'),
              values: const [
                'Todos',
                'Em análise',
                'Finalizado',
                'Cancelado',
              ],
            ),
            mandatory: false,
          ),
          SollarisForm(
            width: 18.2.w,
            title: 'Ordenar',
            formWidget: SollarisDropdown(
              width: 18.2.w,
              height: 40,
              valueSelected: ValueNotifier('Por data'),
              values: const [
                'Por cliente',
                'Por data',
                'Por valor total',
              ],
            ),
            mandatory: false,
          )
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
        position: Position.middle,
      ),
      TableHeader(
        title: 'Status',
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
              Get.find<NavigatorController>().setRoute('selected_order_page');
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
        const TableItem(
          content: StatusIndicator(
            status: Status.finalizado,
          ),
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
        const TableItem(
          content: StatusIndicator(
            status: Status.finalizado,
          ),
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
        const TableItem(
          content: StatusIndicator(
            status: Status.emAnalise,
          ),
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
        const TableItem(
          content: StatusIndicator(
            status: Status.emAnalise,
          ),
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
          position: Position.middle,
        ),
        const TableItem(
          content: StatusIndicator(
            status: Status.cancelado,
          ),
          position: Position.last,
        ),
      ],
    ];
  }
}
