import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/modules/export_module_models.dart';

class ModuleListPage extends StatefulWidget {
  const ModuleListPage({super.key});

  @override
  State<ModuleListPage> createState() => _ModuleListPageState();
}

class _ModuleListPageState extends State<ModuleListPage> {

  @override
  void initState() {
    Get.find<ModuleListController>().loadModules();

    super.initState();
  }

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
            controller.loadModules();
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
        tableItems: _tableItems(controller.moduleList),
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

  List<List<Widget>> _tableItems(List<ModuleModel> list) {
    final items = <List<Widget>>[];

    for (var count = 0; count < list.length; count++) {
      final model = list[count];

      items.add([
        TableItem(
          content: Text(model.id.toString()).main(SollarisColors.neutral300),
          position: count == list.length - 1 ? Position.fisrt : Position.middle,
        ),
        TableItem(
          content:
              Text(model.modelo.toString()).main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              Text(model.fabricante.toString()).main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: Text('${model.potencia} W').main(SollarisColors.neutral300),
          position: count == list.length - 1 ? Position.last : Position.middle,
        ),
      ]);
    }

    return items;
  }
}
