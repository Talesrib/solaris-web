import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/clients/client_model.dart';
import 'package:sollaris_web_flutter/network/clients/network_service.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';
import 'package:sollaris_web_flutter/view/components/display_toast.dart';

class ClientRepository {
  ClientService get _clientService => GetIt.I<ClientService>();

  Future<List<ClientModel>> getAllClients() async {
    try {
      final response = await _clientService.getAllClients();
      return response.body!;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  Future<void> postClient(Map<String, dynamic> body) async {
    try {
      await _clientService.postClient(body);

      displayToast('Cliente cadastrado com sucesso', success: true);
    } catch (e) {
      debugPrint(e.toString());

      displayToast('Erro ao cadastrar cliente', success: false);
    }
  }

    Future<void> putClient(Map<String, dynamic> body, double id) async {
    try {
      await _clientService.putClient(body, id);

      displayToast('Cliente editado com sucesso', success: true);
    } catch (e) {
      debugPrint(e.toString());

      displayToast('Erro ao editar cliente', success: false);
    }
  }
}
