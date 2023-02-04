import 'package:chopper/chopper.dart';
import 'package:sollaris_web_flutter/model/module/export_module_models.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';

part 'network_service.chopper.dart';

@ChopperApi(baseUrl: 'localhost:7070/api')
abstract class ModuleService extends ChopperService {
  static ModuleService create({
    required Iterable<dynamic> interceptors,
    required String baseUrl,
  }) {
    final client = ChopperClient(
      baseUrl: Uri.tryParse(baseUrl),
      interceptors: interceptors,
      services: [_$ModuleService()],
      converter: JsonToTypeConverter(),
    );
    return _$ModuleService(client);
  }

  @Get(path: '/modulos')
  Future<Response<ModuleGetAllListModel>> getAllIntegrator();
}
