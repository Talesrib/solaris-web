// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ClientService extends ClientService {
  _$ClientService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ClientService;

  @override
  Future<Response<List<ClientModel>>> getAllClients() {
    final Uri $url = Uri.parse('/clientes');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ClientModel>, ClientModel>($request);
  }

  @override
  Future<Response<ClientModel>> postClient(
      Map<String, dynamic> clientPostBody) {
    final Uri $url = Uri.parse('/cliente/');
    final $body = clientPostBody;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ClientModel, ClientModel>($request);
  }

  @override
  Future<Response<ClientModel>> putClient(
    Map<String, dynamic> clientPostBody,
    double id,
  ) {
    final Uri $url = Uri.parse('/cliente/${id}');
    final $body = clientPostBody;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ClientModel, ClientModel>($request);
  }
}
