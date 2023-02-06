import 'package:sollaris_web_flutter/controller/budgets/selected_budget_controller.dart';
import 'package:sollaris_web_flutter/controller/orders/order_post_controller.dart';
import 'package:sollaris_web_flutter/exports.dart';

class SelectedBudgetPage extends StatefulWidget {
  const SelectedBudgetPage({super.key});

  @override
  State<SelectedBudgetPage> createState() => _SelectedBudgetPageState();
}

class _SelectedBudgetPageState extends State<SelectedBudgetPage> {
  @override
  void initState() {
    Get.find<SelectedBudgetController>().loadClients();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectedBudgetController>(builder: (controller) {
      return Container(
        width: 76.w,
        height: 100.h,
        color: SollarisColors.neutral100,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(70),
            child: Column(
              children: [
                _titleSection(controller),
                _contentSection(controller),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _titleSection(SelectedBudgetController controller) {
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('ORÇAMENTO #${controller.budgetId.toString()}')
              .title(SollarisColors.neutral300),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: SollarisBackButton(
              route: 'budget_list_page',
            ),
          ),
        ],
      ),
    );
  }

  Widget _contentSection(SelectedBudgetController controller) {
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
          _clientForm(controller),
          _generateBudgetForms(controller),
          _budgetTable(controller),
          _registerBudgetButton(controller),
        ],
      ),
    );
  }

  Widget _clientForm(SelectedBudgetController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SollarisForm(
          width: 28.w,
          title: 'Cliente',
          formWidget: SollarisDropdown(
            width: 28.w,
            height: 40,
            valueSelected: controller.clientNotifier,
            values: controller.clientList,
          ),
          mandatory: false,
        ),
      ],
    );
  }

  Widget _generateBudgetForms(SelectedBudgetController controller) {
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
                valueSelected: controller.meanTypeNotifier,
                values: const [
                  'Anual',
                  'Mensal',
                ],
              ),
              mandatory: false,
            ),
            SollarisForm(
              width: 18.2.w,
              title: 'Média de consumo',
              formWidget: SolarisTextInput(
                width: 18.2.w,
                height: 40,
                textEditingController: controller.meanNotifier,
                hint: '',
              ),
              mandatory: false,
            ),
            SollarisForm(
              width: 18.2.w,
              title: 'Tipo de fase',
              formWidget: SollarisDropdown(
                width: 28.w,
                height: 40,
                valueSelected: controller.phaseTypeNotifier,
                values: const [
                  'Monofásica',
                  'Bifásica',
                  'Trifásica',
                ],
              ),
              mandatory: false,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SollarisButton(
                height: 40,
                label: 'CALCULAR',
                onPressed: () {
                  controller.calculateBudget();
                },
                buttonType: ButtonType.primaryButton,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _budgetTable(SelectedBudgetController controller) {
    return Padding(
      padding: const EdgeInsets.only(top: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SollarisTable(
            tableWidth: 84.5.w,
            headerItems: _tableHeader(),
            tableItems: _tableItems(controller),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              ),
              const Spacer(),
              Row(
                children: [
                  const Text('Custo total do projeto: ')
                      .mainBold(SollarisColors.neutral300),
                  Text('R\$ ${controller.totalCost.toString()}')
                      .main(SollarisColors.error100)
                ],
              )
            ],
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

  List<List<Widget>> _tableItems(SelectedBudgetController controller) {
    return [
      [
        TableItem(
          content: Text(controller.moduleQuantityItem.value)
              .main(SollarisColors.neutral300),
          position: Position.fisrt,
        ),
        TableItem(
          content: Text(controller.inverterPowerItem.value)
              .main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: Text(controller.returnRateItem.value)
              .main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: Text(controller.savingsMontlyItem.value)
              .main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: Text(controller.savingsAnualItem.value)
              .main(SollarisColors.neutral300),
          position: Position.last,
        ),
      ],
    ];
  }

  Widget _registerBudgetButton(SelectedBudgetController controller) {
    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SollarisButton(
            height: 40,
            label: 'GERAR PEDIDO',
            onPressed: () {
              Get.find<OrderPostController>().loadModel(controller.selectedModel);

              Get.find<NavigatorController>().setRoute('new_order_page');
            },
            buttonType: ButtonType.primaryButton,
            iconData: Icons.add,
            iconColor: SollarisColors.neutral0,
            iconSize: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: SollarisButton(
              height: 40,
              label: 'EDITAR ORÇAMENTO',
              onPressed: () {
                controller.putBudget();

                Get.find<NavigatorController>().setRoute('budget_list_page');
              },
              buttonType: ButtonType.primaryButton,
            ),
          ),
        ],
      ),
    );
  }
}
