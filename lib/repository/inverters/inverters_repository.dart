import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/inverters/inverter_model.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';
import 'package:sollaris_web_flutter/network/inverters/network_service.dart';

class InvertersRepository {
  InverterService get _invertersService => GetIt.I<InverterService>();

  Future<List<InverterModel>> getAllInverters() async {
    try {
      final response = await _invertersService.getAllInverters();
      return response.body!;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}
