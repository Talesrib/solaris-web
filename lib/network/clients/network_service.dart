import 'package:chopper/chopper.dart';
import 'package:sollaris_web_flutter/model/clients/client_model.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';

part 'network_service.chopper.dart';

@ChopperApi(baseUrl: '')
abstract class ClientService extends ChopperService {
  static ClientService create({
    required Iterable<dynamic> interceptors,
    required String baseUrl,
  }) {
    final client = ChopperClient(
      baseUrl: Uri.tryParse(baseUrl),
      interceptors: interceptors,
      services: [_$ClientService()],
      converter: JsonToTypeConverter(),
    );
    return _$ClientService(client);
  }

  @Get(path: '/clientes')
  Future<Response<List<ClientModel>>> getAllClients();

  @Post(path: '/cliente/')
  Future<Response<ClientModel>> postClient(
    @Body() Map<String, dynamic> clientPostBody,
  );
}
