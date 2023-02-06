import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/view/components/dialog.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76.w,
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
      height: 71,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 24),
      decoration: const BoxDecoration(
          color: SollarisColors.neutral0,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: const Text('MEU PERFIL').title(SollarisColors.neutral300),
    );
  }

  Widget _contentSection() {
    return Container(
      width: 100.w,
      margin: const EdgeInsets.only(top: 48),
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 36,
      ),
      decoration: const BoxDecoration(
          color: SollarisColors.neutral0,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          _photo(),
          _typeForm(),
          _dataForm(),
          _accessForm(),
          _editProfileButton(),
        ],
      ),
    );
  }

  Widget _photo() {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 150,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: SollarisColors.neutral200,
      ),
      child: const Icon(
        Icons.person,
        color: SollarisColors.neutral300,
        size: 72,
      ),
    );
  }

  Widget _typeForm() {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
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
      ),
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
                textEditingController:
                    TextEditingController(text: 'Igor Arthur'),
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
                textEditingController:
                    TextEditingController(text: '111.111.111-11'),
                hint: '',
              ),
              mandatory: false,
            ),
          ],
        ),
      ],
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
                textEditingController:
                    TextEditingController(text: 'igor@exemplo.com'),
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
                textEditingController:
                    TextEditingController(text: '(83)9 1111-1111'),
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
                textEditingController: TextEditingController(text: '*********'),
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
                textEditingController: TextEditingController(text: '*********'),
                hint: '',
              ),
              mandatory: false,
            ),
          ],
        ),
      ],
    );
  }

  Widget _editProfileButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 36),
          child: SollarisButton(
            height: 40,
            label: 'EDITAR PERFIL',
            onPressed: () async {
              await dialog(
                context,
                () {},
                'Você tem certeza que deseja\neditar o perfil?',
              );
            },
            buttonType: ButtonType.primaryButton,
          ),
        ),
      ],
    );
  }
}
