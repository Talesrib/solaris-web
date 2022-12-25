import 'package:sollaris_web_flutter/exports.dart';

class NewClientPage extends StatelessWidget {
  const NewClientPage({super.key});

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
          const Text('NOVO CLIENTE').title(SollarisColors.neutral300),
          const SollarisBackButton(
            route: 'client_list_page',
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
          _typeForm(),
          _dataForm(),
          _addressForm(),
          _accessForm(),
          _registerOrderButton(),
        ],
      ),
    );
  }

  Widget _typeForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SollarisForm(
          width: 28.w,
          title: 'Tipo de pessoa',
          formWidget: SollarisDropdown(
            width: 28.w,
            height: 40,
            valueSelected: ValueNotifier('Pessoa física'),
            values: const [
              'Pessoa física',
              'Pessoa jurídica',
            ],
          ),
          mandatory: false,
        ),
      ],
    );
  }

  Widget _dataForm() {
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
              width: 28.w,
              title: 'Nome completo',
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
              title: 'CPF',
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

  Widget _addressForm() {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SollarisForm(
                width: 18.2.w,
                title: 'CEP',
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
                title: 'Endereço',
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
                title: 'Número',
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
          const Padding(
            padding: EdgeInsets.only(top: 24),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SollarisForm(
                width: 18.2.w,
                title: 'Complemento',
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
                title: 'Estado',
                formWidget: SollarisDropdown(
                  width: 18.2.w,
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
                width: 18.2.w,
                title: 'Cidade',
                formWidget: SollarisDropdown(
                  width: 18.2.w,
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
        ],
      ),
    );
  }

  Widget _accessForm() {
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
              width: 28.w,
              title: 'E-mail',
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
              title: 'Celular',
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
          padding: EdgeInsets.only(top: 24),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SollarisForm(
              width: 28.w,
              title: 'Senha',
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
              title: 'Confirmar senha',
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
      ],
    );
  }

  Widget _registerOrderButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 36),
          child: SollarisButton(
            height: 40,
            label: 'CADASTRAR CLIENTE',
            onPressed: () {
              Get.find<NavigatorController>().setRoute('client_list_page');
            },
            buttonType: ButtonType.primaryButton,
          ),
        ),
      ],
    );
  }
}
