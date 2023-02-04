import 'package:sollaris_web_flutter/exports.dart';

class ModuleListPage extends StatelessWidget {
  const ModuleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ModuleListController>(builder: (controller) {
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
                _filterSection(controller),
                _contentSection(controller),
              ],
            ),
          ),
        ),
      );
    });
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

  Widget _filterSection(ModuleListController controller) {
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
          _filterFields(controller),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: _filterButtons(controller),
          )
        ],
      ),
    );
  }

  Widget _filterFields(ModuleListController controller) {
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
              textEditingController: controller.modelFilterNotifier,
              hint: '',
            ),
            mandatory: false,
          ),
          SollarisForm(
            width: 18.2.w,
            title: 'Fabricante',
            formWidget: SollarisDropdown(
              width: 18.2.w,
              height: 40,
              valueSelected: controller.providerFilterNotifier,
              values: const [
                'Nenhum',
                'Todos',
              ],
            ),
            mandatory: false,
          ),
          SollarisForm(
            width: 18.2.w,
            title: 'Potência',
            formWidget: SollarisDropdown(
              width: 18.2.w,
              height: 40,
              valueSelected: controller.powerFilterNotifier,
              values: const [
                '0 W',
                'Todas',
              ],
            ),
            mandatory: false,
          )
        ],
      ),
    );
  }

  Widget _filterButtons(ModuleListController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: SollarisButton(
            height: 40,
            label: 'LIMPAR',
            onPressed: () {
              controller.clearFilter();
            },
            buttonType: ButtonType.secondaryButton,
          ),
        ),
        SollarisButton(
          height: 40,
          label: 'APLICAR',
          onPressed: () {
            controller.applyFilter();
          },
          buttonType: ButtonType.primaryButton,
        ),
      ],
    );
  }

  Widget _contentSection(ModuleListController controller) {
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
