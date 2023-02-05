import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/modules/export_module_models.dart';
import 'package:sollaris_web_flutter/network/export_network.dart';

class ModulesRepository {
  ModuleService get _moduleService => GetIt.I<ModuleService>();

  Future<List<ModuleModel>> getAllModules() async {
    try {
      final response = await _moduleService.getAllModules();
      return response.body!;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}
