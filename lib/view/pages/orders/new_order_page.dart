import 'package:sollaris_web_flutter/controller/orders/order_post_controller.dart';
import 'package:sollaris_web_flutter/exports.dart';

class NewOrderPage extends StatelessWidget {
  const NewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderPostController>(builder: (controller) {
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

  Widget _contentSection(OrderPostController controller) {
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

  Widget _clientForm(OrderPostController controller) {
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
            values: [controller.clientNotifier.value],
            mutable: false,
          ),
          mandatory: false,
        ),
      ],
    );
  }

  Widget _generateBudgetForms(OrderPostController controller) {
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
                mutable: false,
              ),
              mandatory: false,
            ),
            SollarisForm(
              width: 18.2.w,
              title: 'Média de consumo',
              formWidget: SolarisTextInput(
                enabled: false,
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
                width: 18.2.w,
                height: 40,
                valueSelected: controller.phaseTypeNotifier,
                values: const [
                  'Monofásica',
                  'Bifásica',
                  'Trifásica',
                ],
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
                enabled: false,
                width: 28.w,
                height: 40,
                textEditingController: controller.budgetIdNotifier,
                hint: '',
              ),
              mandatory: false,
            ),
            SollarisForm(
              width: 28.w,
              title: 'Data do orçamento',
              formWidget: SolarisTextInput(
                enabled: false,
                width: 28.w,
                height: 40,
                textEditingController: controller.budgetDateNotifier,
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

  Widget _budgetTable(OrderPostController controller) {
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
            tableItems: _tableItems(controller),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Row(
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
              ))
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

  List<List<Widget>> _tableItems(OrderPostController controller) {
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

  Widget _registerBudgetButton(OrderPostController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 36),
          child: SollarisButton(
            height: 40,
            label: 'GERAR PEDIDO',
            onPressed: () {
              controller.postOrder();

              Get.find<NavigatorController>().setRoute('order_list_page');
            },
            buttonType: ButtonType.primaryButton,
          ),
        ),
      ],
    );
  }
}
