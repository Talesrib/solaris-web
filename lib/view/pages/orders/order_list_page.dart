import 'package:sollaris_web_flutter/controller/orders/order_list_controller.dart';
import 'package:sollaris_web_flutter/controller/orders/selected_order_controller.dart';
import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/orders/order_model.dart';

class OrderListPage extends StatefulWidget {
  const OrderListPage({super.key});

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  @override
  void initState() {
    Get.find<OrderListController>().loadOrders();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderListController>(builder: (controller) {
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

  Widget _contentSection(OrderListController controller) {
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
        tableItems: _tableItems(controller.orderList),
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

  List<List<Widget>> _tableItems(List<OrderModel> list) {
    final items = <List<Widget>>[];

    for (var count = 0; count < list.length; count++) {
      final model = list[count];

      items.add([
        TableItem(
          content: TextButton(
              onPressed: () {
                Get.find<NavigatorController>().setRoute('selected_order_page');
                Get.find<SelectedOrderController>().loadModel(model);
              },
              child: Text(model.id.toString()).main(SollarisColors.link100)),
          position: count == list.length - 1 ? Position.fisrt : Position.middle,
        ),
        TableItem(
          content: Text(model.nomeCliente.toString())
              .main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: Text(model.dataSolicitacao.toString())
              .main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: Text('R\$ ${model.custoTotal.toString()}')
              .main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: model.status.toString() == 'Cancelado'
                  ? SollarisColors.error100
                  : model.status.toString() == 'Confirmado'
                      ? SollarisColors.success100
                      : SollarisColors.neutral200,
            ),
            child: Text(model.status.toString().toUpperCase())
                .main(SollarisColors.neutral0),
          ),
          position: count == list.length - 1 ? Position.last : Position.middle,
        ),
      ]);
    }

    return items;
  }
}
