import 'package:sollaris_web_flutter/exports.dart';

class ModuleListPage extends StatelessWidget {
  const ModuleListPage({super.key});

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
            _filterSection(),
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
      child: const Text('MÓDULOS').title(SollarisColors.neutral300),
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
            title: 'Modelo',
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
            title: 'Fabricante',
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
            title: 'Potência',
            formWidget: SolarisTextInput(
              width: 18.2.w,
              height: 40,
              textEditingController: TextEditingController(),
              hint: '',
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
            width: 150,
            height: 40,
            label: 'LIMPAR',
            onPressed: () {},
            buttonType: ButtonType.secondaryButton,
          ),
        ),
        SollarisButton(
          width: 150,
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
        title: 'Modelo',
        position: Position.middle,
      ),
      TableHeader(
        title: 'Fabricante',
        position: Position.middle,
      ),
      TableHeader(
        title: 'Potência',
        position: Position.last,
      ),
    ];
  }

  List<List<Widget>> _tableItems() {
    return [
      [
        TableItem(
          content: const Text('#12345').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('Modelo exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('Fabricante exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('12345 W').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
      ],
      [
        TableItem(
          content: const Text('#12345').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('Modelo exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('Fabricante exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('12345 W').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
      ],
      [
        TableItem(
          content: const Text('#12345').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('Modelo exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('Fabricante exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('12345 W').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
      ],
      [
        TableItem(
          content: const Text('#12345').main(SollarisColors.neutral300),
          position: Position.fisrt,
        ),
        TableItem(
          content: const Text('Modelo exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              const Text('Fabricante exemplo').main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: const Text('12345 W').main(SollarisColors.neutral300),
          position: Position.last,
        ),
      ]
    ];
  }
}
