import 'package:chopper/chopper.dart';
import 'package:sollaris_web_flutter/model/inverters/inverter_model.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';

part 'network_service.chopper.dart';

@ChopperApi(baseUrl: '')
abstract class InverterService extends ChopperService {
  static InverterService create({
    required Iterable<dynamic> interceptors,
    required String baseUrl,
  }) {
    final client = ChopperClient(
      baseUrl: Uri.tryParse(baseUrl),
      interceptors: interceptors,
      services: [_$InverterService()],
      converter: JsonToTypeConverter(),
    );
    return _$InverterService(client);
  }

  @Get(path: '/inversores')
  Future<Response<List<InverterModel>>> getAllInverters();
}
