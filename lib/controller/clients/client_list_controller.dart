import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/clients/client_model.dart';
import 'package:sollaris_web_flutter/repository/clients/clients_repository.dart';

class ClientListController extends GetxController {
  ClientListController() {
    loadClients();
  }

  final _repository = ClientRepository();

  final modelFilterNotifier = TextEditingController();
  final providerFilterNotifier = ValueNotifier('Todos');
  final powerFilterNotifier = ValueNotifier('Todas');

  List<String> providerList = <String>[];
  List<String> powerList = <String>[];

  List<ClientModel> clientList = <ClientModel>[];

  Future<void> loadClients() async {
    final response = await _repository.getAllClients();
    clientList = List.from(response);

    update();
  }

  void clearFilter() {
    modelFilterNotifier.text = '';
    providerFilterNotifier.value = 'Todos';
    powerFilterNotifier.value = 'Todas';
  }

  void applyFilter() {}
}
