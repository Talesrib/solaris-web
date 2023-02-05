import 'package:sollaris_web_flutter/controller/clients/client_list_controller.dart';
import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/clients/client_model.dart';

class ClientListPage extends StatefulWidget {
  const ClientListPage({super.key});

  @override
  State<ClientListPage> createState() => _ClientListPageState();
}

class _ClientListPageState extends State<ClientListPage> {
  @override
  void initState() {
    Get.find<ClientListController>().loadClients();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientListController>(
        init: ClientListController(),
        builder: (controller) {
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
          const Text('CLIENTES').title(SollarisColors.neutral300),
          SollarisButton(
            height: 40,
            label: 'NOVO',
            onPressed: () {
              Get.find<NavigatorController>().setRoute('new_client_page');
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

  Widget _filterSection(ClientListController controller) {
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
            width: 14.w,
            title: 'Nome',
            formWidget: SolarisTextInput(
              width: 14.w,
              height: 40,
              textEditingController: TextEditingController(),
              hint: '',
            ),
            mandatory: false,
          ),
          SollarisForm(
            width: 14.w,
            title: 'Tipo',
            formWidget: SollarisDropdown(
              width: 14.w,
              height: 40,
              valueSelected: ValueNotifier('Todos'),
              values: const [
                'Todos',
                'Pessoa física',
                'Pessoa jurídica',
              ],
            ),
            mandatory: false,
          ),
          SollarisForm(
            width: 14.w,
            title: 'Estado',
            formWidget: SollarisDropdown(
              width: 14.w,
              height: 40,
              valueSelected: ValueNotifier('Todos'),
              values: const [
                'Todos',
                'AC',
                'AL',
                'AP',
                'AM',
                'BA',
                'CE',
                'DF',
                'ES',
                'GO',
                'MA',
                'MT',
                'MS',
                'MG',
                'PA',
                'PB',
                'PR',
                'PE',
                'PI',
                'RJ',
                'RN',
                'RS',
                'RO',
                'RR',
                'SC',
                'SP',
                'SE',
                'TO',
              ],
            ),
            mandatory: false,
          ),
          SollarisForm(
            width: 14.w,
            title: 'Cidade',
            formWidget: SollarisDropdown(
              width: 14.w,
              height: 40,
              valueSelected: ValueNotifier('Todas'),
              values: const [
                'Todas',
                'Capital',
                'Outra',
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

  Widget _contentSection(ClientListController controller) {
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
        tableItems: _tableItems(controller.clientList),
      ),
    );
  }

  List<Widget> _tableHeader() {
    return const [
      TableHeader(
        title: 'Nome',
        position: Position.fisrt,
      ),
      TableHeader(
        title: 'Tipo',
        position: Position.middle,
      ),
      TableHeader(
        title: 'Cidade',
        position: Position.middle,
      ),
      TableHeader(
        title: 'Estado',
        position: Position.last,
      ),
    ];
  }

  List<List<Widget>> _tableItems(List<ClientModel> list) {
    final items = <List<Widget>>[];

    for (var count = 0; count < list.length; count++) {
      final model = list[count];

      items.add([
        TableItem(
          content: Text(model.nome.toString()).main(SollarisColors.neutral300),
          position: count == list.length - 1 ? Position.fisrt : Position.middle,
        ),
        TableItem(
          content: Text(model.tipo.toString()).main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              Text(model.cidade.toString()).main(SollarisColors.neutral300),
          position: Position.middle,
        ),
        TableItem(
          content:
              Text(model.estado.toString()).main(SollarisColors.neutral300),
          position: count == list.length - 1 ? Position.last : Position.middle,
        ),
      ]);
    }

    return items;
  }
}
