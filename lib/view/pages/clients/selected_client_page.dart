import 'package:sollaris_web_flutter/controller/clients/selected_client_controller.dart';
import 'package:sollaris_web_flutter/exports.dart';

class SelectedClientPage extends StatelessWidget {
  const SelectedClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectedClientController>(builder: (controller) {
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

  Widget _titleSection(SelectedClientController controller) {
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
          Text('CLIENTE ${controller.clientName.toUpperCase()}')
              .title(SollarisColors.neutral300),
          const SollarisBackButton(
            route: 'client_list_page',
          ),
        ],
      ),
    );
  }

  Widget _contentSection(SelectedClientController controller) {
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
          _typeForm(controller),
          _dataForm(controller),
          _addressForm(controller),
          _accessForm(controller),
          _registerOrderButton(controller),
        ],
      ),
    );
  }

  Widget _typeForm(SelectedClientController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SollarisForm(
          width: 28.w,
          title: 'Tipo de pessoa',
          formWidget: SollarisDropdown(
            width: 28.w,
            height: 40,
            valueSelected: controller.personTypeNotifier,
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

  Widget _dataForm(SelectedClientController controller) {
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
                textEditingController: controller.nameNotifier,
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
                textEditingController: controller.documentNotifier,
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

  Widget _addressForm(SelectedClientController controller) {
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
                  textEditingController: controller.cepNotifier,
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
                  textEditingController: controller.addressNotifier,
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
                  textEditingController: controller.numberNotifier,
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
                  textEditingController: controller.complementNotifier,
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
                  valueSelected: controller.stateNotifier,
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
                  valueSelected: controller.cityNotifier,
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

  Widget _accessForm(SelectedClientController controller) {
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
                textEditingController: controller.emailNotifier,
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
                textEditingController: controller.cellphoneNotifier,
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
                textEditingController: controller.passwordNotifier,
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
                textEditingController: controller.confirmPasswordNotifier,
                hint: '',
              ),
              mandatory: false,
            ),
          ],
        ),
      ],
    );
  }

  Widget _registerOrderButton(SelectedClientController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 36),
          child: SollarisButton(
            height: 40,
            label: 'EDITAR CLIENTE',
            onPressed: () {
              controller.putClient();

              Get.find<NavigatorController>().setRoute('client_list_page');
            },
            buttonType: ButtonType.primaryButton,
          ),
        ),
      ],
    );
  }
}
