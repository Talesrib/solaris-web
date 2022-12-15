import 'package:sollaris_web_flutter/exports.dart';

class NewBudgetPage extends StatelessWidget {
  const NewBudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76.w,
      height: 100.h,
      color: SollarisColors.neutral100,
      padding: const EdgeInsets.all(70),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _titleSection(),
            _contentSection(),
          ],
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
      child: const Text('NOVO ORÇAMENTO').title(SollarisColors.neutral300),
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
          title: 'Ordenar',
          formWidget: SolarisTextInput(
            width: 28.w,
            height: 40,
            textEditingController: TextEditingController(),
            hint: '',
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
              title: 'Ordenar',
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
              title: 'Ordenar',
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
              title: 'Ordenar',
              formWidget: SolarisTextInput(
                width: 18.2.w,
                height: 40,
                textEditingController: TextEditingController(),
                hint: '',
              ),
              mandatory: false,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: SollarisButton(
            width: 150,
            height: 40,
            label: 'CALCULAR',
            onPressed: () {},
            buttonType: ButtonType.primaryButton,
          ),
        ),
      ],
    );
  }

  Widget _budgetTable() {
    return Padding(
      padding: const EdgeInsets.only(top: 75),
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
          content:
              const Text('120 kWh').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('40%').main(SollarisColors.neutral300),
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
}
