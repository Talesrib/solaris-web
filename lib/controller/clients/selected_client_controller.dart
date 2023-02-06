import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/clients/client_model.dart';
import 'package:sollaris_web_flutter/repository/clients/clients_repository.dart';

class SelectedClientController extends GetxController {
  final _repository = ClientRepository();

  var clientName = '';
  var clientId = 0.0;

  // Field Notifiers

  final personTypeNotifier = ValueNotifier('Pessoa física');

  final nameNotifier = TextEditingController();
  final documentNotifier = TextEditingController();

  final cepNotifier = TextEditingController();
  final addressNotifier = TextEditingController();
  final numberNotifier = TextEditingController();
  final complementNotifier = TextEditingController();
  final stateNotifier = ValueNotifier('Todos');
  final cityNotifier = ValueNotifier('Todas');

  final emailNotifier = TextEditingController();
  final cellphoneNotifier = TextEditingController();
  final passwordNotifier = TextEditingController();
  final confirmPasswordNotifier = TextEditingController();

  // Load Model

  void loadModel(ClientModel model) {
    clientName = model.nome.toString();
    clientId = model.id!;

    personTypeNotifier.value = model.tipo.toString();

    nameNotifier.text = model.nome.toString();
    documentNotifier.text = model.cpfCnpj.toString();

    cepNotifier.text = model.cep.toString();
    addressNotifier.text = model.endereco.toString();
    numberNotifier.text = model.numero.toString();
    complementNotifier.text = model.complemento.toString();
    stateNotifier.value = model.estado.toString();
    cityNotifier.value = model.cidade.toString();

    emailNotifier.text = model.email.toString();
    cellphoneNotifier.text = model.celular.toString();
    passwordNotifier.text = model.senha.toString();
    confirmPasswordNotifier.text = model.senha.toString();

    update();
  }

  // Post Method

  Future<void> putClient() async {
    final body = ClientModel(
      id: clientId,
      nome: nameNotifier.text,
      tipo: personTypeNotifier.value,
      cpfCnpj: double.tryParse(documentNotifier.text),
      cep: double.tryParse(cepNotifier.text),
      endereco: addressNotifier.text,
      numero: numberNotifier.text,
      cidade: cityNotifier.value,
      estado: stateNotifier.value,
      email: emailNotifier.text,
      complemento: complementNotifier.text,
      senha: passwordNotifier.text,
      celular: cellphoneNotifier.text,
    );

    await _repository.putClient(body.toJson(), clientId);

    update();
  }
}
