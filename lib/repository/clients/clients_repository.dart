import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/clients/client_model.dart';
import 'package:sollaris_web_flutter/network/clients/network_service.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';

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
    } catch (e) {
      debugPrint(e.toString());
    }
  }

    Future<void> putClient(Map<String, dynamic> body, double id) async {
    try {
      await _clientService.putClient(body, id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
