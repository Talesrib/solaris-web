import 'package:sollaris_web_flutter/exports.dart';

class NewOrderPage extends StatelessWidget {
  const NewOrderPage({super.key});

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
          const Text('NOVO PEDIDO').title(SollarisColors.neutral300),
          const SollarisBackButton(
            route: 'selected_budget_page',
          ),
        ],
      ),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _clientForm(),
          _generateBudgetForms(),
          _budgetTable(),
          _registerBudgetButton(),
        ],
      ),
    );
  }

  Widget _clientForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SollarisForm(
          width: 28.w,
          title: 'Cliente',
          formWidget: SollarisDropdown(
            width: 28.w,
            height: 40,
            valueSelected: ValueNotifier(''),
            values: const [],
            mutable: false,
          ),
          mandatory: false,
        ),
      ],
    );
  }

  Widget _generateBudgetForms() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 24, bottom: 12),
          child: Divider(
            color: SollarisColors.neutral200,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SollarisForm(
              width: 18.2.w,
              title: 'Tipo da média de consumo',
              formWidget: SollarisDropdown(
                width: 18.2.w,
                height: 40,
                valueSelected: ValueNotifier(''),
                values: const [],
                mutable: false,
              ),
              mandatory: false,
            ),
            SollarisForm(
              width: 18.2.w,
              title: 'Média de consumo',
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
              title: 'Tipo de fase',
              formWidget: SollarisDropdown(
                width: 18.2.w,
                height: 40,
                valueSelected: ValueNotifier(''),
                values: const [],
                mutable: false,
              ),
              mandatory: false,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 24, bottom: 12),
          child: Divider(
            color: SollarisColors.neutral200,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SollarisForm(
              width: 28.w,
              title: 'Nº do orçamento',
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
              title: 'Data do orçamento',
              formWidget: SolarisTextInput(
                width: 28.w,
                height: 40,
                textEditingController: TextEditingController(),
                hint: '',
              ),
              mandatory: false,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 24, bottom: 12),
          child: Divider(
            color: SollarisColors.neutral200,
          ),
        ),
      ],
    );
  }

  Widget _budgetTable() {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: const Text('Dados do orçamento')
                .mainBold(SollarisColors.neutral300),
          ),
          SollarisTable(
            tableWidth: 84.5.w,
            headerItems: _tableHeader(),
            tableItems: _tableItems(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 36),
            child: Row(
              children: [
                SollarisButton(
                  height: 40,
                  label: 'GRÁFICO DE GERAÇÃO',
                  onPressed: () {},
                  buttonType: ButtonType.secondaryButton,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _tableHeader() {
    return const [
      TableHeader(
        title: 'Quantidade de módulos',
        position: Position.fisrt,
      ),
      TableHeader(
        title: 'Potência do inversor',
        position: Position.middle,
      ),
      TableHeader(
        title: 'Taxa de retorno',
        position: Position.middle,
      ),
      TableHeader(
        title: 'Economia (mensal)',
        position: Position.middle,
      ),
      TableHeader(
        title: 'Economia (anual)',
        position: Position.last,
      ),
    ];
  }

  List<List<Widget>> _tableItems() {
    return [
      [
        TableItem(
          content: const Text('12').main(SollarisColors.neutral300),
          position: Position.fisrt,
        ),
        TableItem(
          content: const Text('120 kWh').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('40%').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('R\$ 1.200,00').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('R\$ 24.400,00').main(SollarisColors.neutral300),
          position: Position.last,
        ),
      ],
    ];
  }

  Widget _registerBudgetButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 36),
          child: SollarisButton(
            height: 40,
            label: 'GERAR PEDIDO',
            onPressed: () {
              Get.find<NavigatorController>().setRoute('order_list_page');
            },
            buttonType: ButtonType.primaryButton,
          ),
        ),
      ],
    );
  }
}
