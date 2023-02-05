import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/clients/client_model.dart';
import 'package:sollaris_web_flutter/repository/clients/clients_repository.dart';

class ClientPostController extends GetxController {
  final _repository = ClientRepository();

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

  final emailotifier = TextEditingController();
  final cellphoneNotifier = TextEditingController();
  final passwordNotifier = TextEditingController();
  final confirmPasswordNotifier = TextEditingController();

  // Post Method

  Future<void> postClient() async {
    final body = ClientModel(
      id: '',
      nome: nameNotifier.text,
      cpf: double.tryParse(documentNotifier.text),
      idade: 25,
    );

    await _repository.postClient(body.toJson());

    update();
  }
}
